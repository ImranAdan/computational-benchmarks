# SHA-256 Cryptography Benchmark

This benchmark measures the throughput of SHA-256 hashing by processing one million unique messages.

## Methodology
*   **Workload**: 1,000,000 hashes.
*   **Message**: Each hash consists of a base string appended with a 4-byte nonce.
*   **Implementation**: A "clean-room" implementation of SHA-256 is used in all languages rather than linking to OS-specific crypto libraries (like OpenSSL). This ensures we measure the language's own integer-heavy arithmetic performance.

## Language Observations

### C & C++
*   **Implementation**: Standard implementation using bitwise rotations and additions.
*   **Optimization**: Built with LTO. The compiler is very efficient at optimizing the bit-shifting logic into native CPU rotation instructions.

### Rust
*   **Performance**: Rust's integer handling and bit-level operations are highly optimized. Rust often takes the lead here due to its zero-cost abstractions over fixed-size integers and efficient register allocation.

### Java
*   **Competitive**: Java performs remarkably well in bitwise-heavy workloads. The JIT (C2 compiler) is excellent at identifying the repetitive nature of the SHA-256 block transformation and generating tight machine code.

## Verification
*   **Checksum**: The final hash of the 1,000,000th nonce must match the baseline (`0c8b1d...`).
*   **Status**: PASSED.

## Latest Results (2026-01-10)

| Language | Mean Time | Throughput | Checksum |
|----------|-----------|------------|----------|
| **Zig** | **402 ms** | **2.48 MH/s** | MATCH |
| **Rust** | 411 ms | 2.43 MH/s | MATCH |
| **Fortran** | 416 ms | 2.41 MH/s | MATCH |
| **Java** | 477 ms | 2.10 MH/s | MATCH |
| **C** | 543 ms | 1.84 MH/s | MATCH |
| **C++** | 537 ms | 1.86 MH/s | MATCH |
