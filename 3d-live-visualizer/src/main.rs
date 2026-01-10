use std::sync::Arc;
use std::sync::atomic::{AtomicU8, AtomicU32, Ordering};
use tokio::time::{Instant, Duration};
use warp::Filter;
use futures_util::{StreamExt, SinkExt};
use tokio::sync::{broadcast, RwLock};
use serde::Deserialize;

// FFI Declarations
extern "C" {
    fn transform_c(vertices: *const f32, output: *mut f32, count: i32, angle: f32);
    fn transform_cpp(vertices: *const f32, output: *mut f32, count: i32, angle: f32);
}

#[derive(Deserialize)]
struct ControlMsg {
    r#type: String,
    value: u32,
}

fn generate_torus(num_vertices: usize) -> Vec<f32> {
    let mut raw_vertices = Vec::with_capacity(num_vertices * 3);
    for i in 0..num_vertices {
        let u = (i as f32 / num_vertices as f32) * std::f32::consts::PI * 2.0;
        let v = (i as f32 * 0.1) * std::f32::consts::PI * 2.0;
        let r1 = 2.0;
        let r2 = 0.5;
        raw_vertices.push((r1 + r2 * v.cos()) * u.cos());
        raw_vertices.push((r1 + r2 * v.cos()) * u.sin());
        raw_vertices.push(r2 * v.sin());
    }
    raw_vertices
}

#[tokio::main]
async fn main() {
    let max_vertices = 1_000_000;
    let initial_vertices = 50_000;
    let vertices = Arc::new(RwLock::new(generate_torus(initial_vertices)));
    let active_engine = Arc::new(AtomicU8::new(0)); 
    let target_fps = Arc::new(AtomicU32::new(60));
    let vertex_count = Arc::new(AtomicU32::new(initial_vertices as u32));

    let (tx, _rx) = broadcast::channel::<Vec<u8>>(4); // Smaller buffer for tighter backpressure
    let tx_clone = Arc::new(tx);

    let tx_task = tx_clone.clone();
    let engine_task = active_engine.clone();
    let vertices_task = vertices.clone();
    let fps_task = target_fps.clone();
    let count_task = vertex_count.clone();
    
    tokio::spawn(async move {
        let mut angle: f32 = 0.0;
        // Pre-allocate output buffer to max size to avoid reallocations
        let mut output_buffer = vec![0.0f32; max_vertices * 3];
        
        loop {
            let current_count = count_task.load(Ordering::Relaxed) as usize;
            let current_engine = engine_task.load(Ordering::Relaxed);
            let current_fps = fps_task.load(Ordering::Relaxed);
            
            let v_lock = vertices_task.read().await;
            let math_start = Instant::now();
            
            match current_engine {
                0 => { // Rust
                    let cos_a = angle.cos();
                    let sin_a = angle.sin();
                    for i in 0..current_count {
                        let px = v_lock[i * 3 + 0];
                        let py = v_lock[i * 3 + 1];
                        let pz = v_lock[i * 3 + 2];
                        output_buffer[i * 3 + 0] = px * cos_a + pz * sin_a;
                        output_buffer[i * 3 + 1] = py * cos_a - (-px * sin_a + pz * cos_a) * sin_a;
                        output_buffer[i * 3 + 2] = py * sin_a + (-px * sin_a + pz * cos_a) * cos_a;
                    }
                }
                1 => unsafe { transform_c(v_lock.as_ptr(), output_buffer.as_mut_ptr(), current_count as i32, angle); }
                2 => unsafe { transform_cpp(v_lock.as_ptr(), output_buffer.as_mut_ptr(), current_count as i32, angle); }
                _ => {}
            }
            let math_elapsed_us = math_start.elapsed().as_micros() as f32;
            drop(v_lock);

            if tx_task.receiver_count() > 0 {
                let mut packet = Vec::with_capacity(4 + current_count * 3 * 4);
                packet.extend_from_slice(&math_elapsed_us.to_ne_bytes());
                unsafe {
                    let vertex_bytes = std::slice::from_raw_parts(output_buffer.as_ptr() as *const u8, current_count * 3 * 4);
                    packet.extend_from_slice(vertex_bytes);
                }
                // If channel is full, this will fail - providing natural backpressure
                let _ = tx_task.send(packet);
            }

            angle += 0.02;
            
            if current_fps > 0 {
                let frame_micros = 1_000_000 / current_fps as u64;
                let loop_elapsed = math_start.elapsed();
                if loop_elapsed < Duration::from_micros(frame_micros) {
                    tokio::time::sleep(Duration::from_micros(frame_micros) - loop_elapsed).await;
                }
            } else {
                // Hard cap at ~200 FPS to prevent browser death
                tokio::time::sleep(Duration::from_millis(5)).await;
            }
        }
    });

    let state = Arc::new((active_engine, target_fps, vertex_count, vertices));
    let state_filter = warp::any().map(move || state.clone());
    let tx_ws = tx_clone.clone();

    let ws_route = warp::path("ws")
        .and(warp::ws())
        .and(state_filter)
        .map(move |ws: warp::ws::Ws, state: Arc<(Arc<AtomicU8>, Arc<AtomicU32>, Arc<AtomicU32>, Arc<RwLock<Vec<f32>>>)>| {
            let tx = tx_ws.clone();
            ws.on_upgrade(move |socket| async move {
                let (mut ws_tx, mut ws_rx) = socket.split();
                let mut rx = tx.subscribe();
                let state_inner = state.clone();
                
                tokio::spawn(async move {
                    while let Some(Ok(msg)) = ws_rx.next().await {
                        if let Ok(text) = msg.to_str() {
                            if let Ok(cmd) = serde_json::from_str::<ControlMsg>(text) {
                                match cmd.r#type.as_str() {
                                    "engine" => state_inner.0.store(cmd.value as u8, Ordering::Relaxed),
                                    "fps" => state_inner.1.store(cmd.value, Ordering::Relaxed),
                                    "vertices" => {
                                        state_inner.2.store(cmd.value, Ordering::Relaxed);
                                        let mut v_lock = state_inner.3.write().await;
                                        *v_lock = generate_torus(cmd.value as usize);
                                    },
                                    _ => {}
                                }
                            }
                        }
                    }
                });

                while let Ok(data) = rx.recv().await {
                    if ws_tx.send(warp::ws::Message::binary(data)).await.is_err() { break; }
                }
            })
        });

    let routes = ws_route.or(warp::get().and(warp::path::end()).and(warp::fs::file("static/index.html")))
                         .or(warp::path("static").and(warp::fs::dir("static")));

    println!("3D LIVE POLYGLOT SESSION STARTED");
    warp::serve(routes).run(([0, 0, 0, 0], 8080)).await;
}