use sha2::{Sha256, Digest};
use std::time::Instant;

fn main() {
    let num_hashes = 1_000_000;
    let base_message = b"Computational Benchmarks - Language Performance Lab";
    
    let start = Instant::now();
    let mut final_hash = [0u8; 32];

    for nonce in 0..num_hashes as u32 {
        let mut hasher = Sha256::new();
        hasher.update(base_message);
        hasher.update(&nonce.to_be_bytes());
        let result = hasher.finalize();
        if nonce == num_hashes - 1 {
            final_hash.copy_from_slice(&result);
        }
    }

    let elapsed = start.elapsed();
    let elapsed_ms = elapsed.as_secs_f64() * 1000.0;
    let hashes_per_sec = (num_hashes as f64) / (elapsed.as_secs_f64());

    println!("elapsed_ms={:.3} hashes_per_sec={:.0} checksum={}", 
             elapsed_ms, hashes_per_sec, hex::encode(final_hash));
}
