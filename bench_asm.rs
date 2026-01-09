use std::time::Instant;
use std::arch::asm;

#[inline(always)]
fn lcg_next(state: &mut u64) -> u64 {
    *state = state.wrapping_mul(6364136223846793005).wrapping_add(1);
    *state
}

#[inline(always)]
fn lcg_double(state: &mut u64) -> f64 {
    let v = lcg_next(state);
    (((v >> 11) as f64) * (1.0 / 9007199254740992.0)) * 2.0 - 1.0
}

#[cfg(target_arch = "aarch64")]
unsafe fn calc_step_asm(
    n: usize,
    xi: f64,
    yi: f64,
    zi: f64,
    x: *const f64,
    y: *const f64,
    z: *const f64,
    m: *const f64,
    softening: f64,
    fx: &mut f64,
    fy: &mut f64,
    fz: &mut f64,
) {
    asm!(
        // Broadcast inputs
        "dup v0.2d, v0.d[0]", // xi
        "dup v1.2d, v1.d[0]", // yi
        "dup v2.2d, v2.d[0]", // zi
        "dup v3.2d, v3.d[0]", // softening
        
        // Initialize accumulators to 0
        "movi v4.2d, #0",
        "movi v5.2d, #0",
        "movi v6.2d, #0",
        
        // Load constant 1.0
        "fmov v7.2d, #1.0",
        
        // Loop counter (n is passed in x0)
        // We process 2 elements per loop, so divide n by 2
        "lsr x9, x0, #1", // x9 = n / 2
        
        "1:", // Loop label
            // Load x[j], y[j], z[j], m[j] (2 doubles each)
            "ldr q16, [x1], #16", // load 2 doubles from x and increment ptr
            "ldr q17, [x2], #16", // load 2 doubles from y
            "ldr q18, [x3], #16", // load 2 doubles from z
            "ldr q19, [x4], #16", // load 2 doubles from m
            
            // Calculate dx, dy, dz
            "fsub v16.2d, v16.2d, v0.2d", // dx = xj - xi
            "fsub v17.2d, v17.2d, v1.2d", // dy = yj - yi
            "fsub v18.2d, v18.2d, v2.2d", // dz = zj - zi
            
            // Calculate dist2 = dx*dx + dy*dy + dz*dz + softening
            "fmul v20.2d, v16.2d, v16.2d", // dx*dx
            "fmla v20.2d, v17.2d, v17.2d", // + dy*dy
            "fmla v20.2d, v18.2d, v18.2d", // + dz*dz
            "fadd v20.2d, v20.2d, v3.2d",  // + softening
            
            // inv = 1.0 / sqrt(dist2)
            "fsqrt v20.2d, v20.2d",
            "fdiv v20.2d, v7.2d, v20.2d",
            
            // inv3 = inv * inv * inv
            "fmul v21.2d, v20.2d, v20.2d", // inv^2
            "fmul v21.2d, v21.2d, v20.2d", // inv^3
            
            // s = m[j] * inv3
            "fmul v21.2d, v19.2d, v21.2d",
            
            // fx += dx * s
            "fmla v4.2d, v16.2d, v21.2d",
            // fy += dy * s
            "fmla v5.2d, v17.2d, v21.2d",
            // fz += dz * s
            "fmla v6.2d, v18.2d, v21.2d",
            
            // Loop control
            "subs x9, x9, #1",
            "b.ne 1b",
            
        // Horizontal add of accumulators
        "faddp d4, v4.2d",
        "faddp d5, v5.2d",
        "faddp d6, v6.2d",
        
        // Add to existing fx, fy, fz (load, add, store)
        "ldr d16, [x5]",
        "fadd d16, d16, d4",
        "str d16, [x5]",
        
        "ldr d16, [x6]",
        "fadd d16, d16, d5",
        "str d16, [x6]",
        
        "ldr d16, [x7]",
        "fadd d16, d16, d6",
        "str d16, [x7]",
        
        in("x0") n,
        inout("v0") xi => _,
        inout("v1") yi => _,
        inout("v2") zi => _,
        in("x1") x,
        in("x2") y,
        in("x3") z,
        in("x4") m,
        inout("v3") softening => _,
        in("x5") fx,
        in("x6") fy,
        in("x7") fz,
        out("x9") _,
        out("v4") _, out("v5") _, out("v6") _, out("v7") _,
        out("v16") _, out("v17") _, out("v18") _, out("v19") _,
        out("v20") _, out("v21") _,
    );
}

#[inline(always)]
fn run_steps(
    count: usize,
    n: usize,
    dt: f64,
    softening: f64,
    x: &mut [f64],
    y: &mut [f64],
    z: &mut [f64],
    vx: &mut [f64],
    vy: &mut [f64],
    vz: &mut [f64],
    m: &[f64],
) {
    for _ in 0..count {
        for i in 0..n {
            let mut fx = 0.0f64;
            let mut fy = 0.0f64;
            let mut fz = 0.0f64;
            let xi = x[i];
            let yi = y[i];
            let zi = z[i];

            #[cfg(target_arch = "aarch64")]
            unsafe {
                calc_step_asm(n, xi, yi, zi, x.as_ptr(), y.as_ptr(), z.as_ptr(), m.as_ptr(), softening, &mut fx, &mut fy, &mut fz);
            }

            #[cfg(not(target_arch = "aarch64"))]
            for j in 0..n {
                let dx = x[j] - xi;
                let dy = y[j] - yi;
                let dz = z[j] - zi;
                let dist2 = dx * dx + dy * dy + dz * dz + softening;
                let inv = 1.0 / dist2.sqrt();
                let inv3 = inv * inv * inv;
                let s = m[j] * inv3;
                fx += dx * s;
                fy += dy * s;
                fz += dz * s;
            }
            vx[i] += dt * fx;
            vy[i] += dt * fy;
            vz[i] += dt * fz;
        }

        for i in 0..n {
            x[i] += dt * vx[i];
            y[i] += dt * vy[i];
            z[i] += dt * vz[i];
        }
    }
}

fn main() {
    let n: usize = 1500;
    let steps_warmup: usize = 5;
    let steps: usize = 400;
    let dt: f64 = 0.01;
    let softening: f64 = 1e-9;

    let mut x = vec![0.0f64; n];
    let mut y = vec![0.0f64; n];
    let mut z = vec![0.0f64; n];
    let mut vx = vec![0.0f64; n];
    let mut vy = vec![0.0f64; n];
    let mut vz = vec![0.0f64; n];
    let mut m = vec![0.0f64; n];

    let mut seed: u64 = 1;
    for i in 0..n {
        x[i] = lcg_double(&mut seed);
        y[i] = lcg_double(&mut seed);
        z[i] = lcg_double(&mut seed);
        vx[i] = lcg_double(&mut seed) * 0.1;
        vy[i] = lcg_double(&mut seed) * 0.1;
        vz[i] = lcg_double(&mut seed) * 0.1;
        m[i] = lcg_double(&mut seed).abs() + 0.5;
    }

    run_steps(
        steps_warmup, n, dt, softening, &mut x, &mut y, &mut z, &mut vx, &mut vy, &mut vz, &m,
    );

    let start = Instant::now();
    run_steps(steps, n, dt, softening, &mut x, &mut y, &mut z, &mut vx, &mut vy, &mut vz, &m);
    let elapsed_ms = start.elapsed().as_secs_f64() * 1000.0;

    let mut checksum = 0.0;
    for i in 0..n {
        checksum += x[i] + y[i] + z[i] + vx[i] + vy[i] + vz[i];
    }

    println!("elapsed_ms={:.3} checksum={:.6}", elapsed_ms, checksum);
}