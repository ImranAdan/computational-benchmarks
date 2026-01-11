# SHA-256 Cryptography Benchmark

This benchmark measures the throughput of SHA-256 hashing by processing one million unique messages.

## Theoretical Background
SHA-256 (Secure Hash Algorithm 256-bit) is a cryptographic hash function that belongs to the SHA-2 family. It is built upon the Merkle-Damgård construction, where the input message is padded and split into 512-bit blocks.

The core of the algorithm involves a "compression function" that mixes the current message block with the internal state using bitwise operations (ROT, XOR, AND) and modular addition.
1.  **Padding**: The message is padded with a `1` bit, followed by zeros, and finally the 64-bit length of the message.
2.  **Scheduling**: The 512-bit block is expanded into a 64-word message schedule.
3.  **Compression**: The schedule is mixed into the 8-word state vector over 64 rounds.

This benchmark tests a language's ability to handle unsigned 32-bit integers, bitwise rotations, and strict memory aliasing rules efficiently.

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

### Zig
*   **Winner**: Zig demonstrates superior throughput for this bitwise-heavy workload.
*   **Implementation**: A manual "clean-room" implementation (no `std.crypto`) using a `Sha256Ctx` struct.
*   **Optimization**: The Zig compiler (LLVM backend) with `ReleaseFast` effectively optimizes the manual bitwise rotation and addition chains, slightly outperforming the C/C++ Clang builds.

### Fortran
*   **Performance**: surprisingly competitive, matching Rust and Zig.
*   **Implementation**: A manual implementation of the SHA-256 algorithm.
*   **Bitwise Operations**: Modern Fortran (2008+) provides efficient intrinsic bitwise functions (`ieor`, `iand`, `ishft`, `ibits`) which map directly to hardware instructions.

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
