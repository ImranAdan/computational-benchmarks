# SHA-256 Cryptography Benchmark

## The Story: "The Power of Hardware"
A bit-crunching benchmark performing 1,000,000 SHA-256 iterations. It tells the story of **Hardware Acceleration**—how modern languages leverage specialized CPU instructions (ARMv8 Cryptography Extensions) rather than just raw code loops.

## The Results (M1/ARM64)
| Language | Hash Rate | Relative | Strategy |
|----------|------------|----------|----------|
| **Rust** | **4.55 MH/s**| **1.0x** | **Hardware Extensions** |
| C++      | 1.85 MH/s    | 0.40x    | Software Loops |
| C        | 1.85 MH/s    | 0.40x    | Software Loops |

## Fairness Audit
*   **Library Bias:** Rust uses the `sha2` crate, which contains hand-tuned assembly and hardware intrinsics. The C/C++ version uses a custom, clean-room implementation.
*   **Why this is "Fair":** This benchmark reflects the real-world experience of a developer. In Rust, you get hardware-accelerated SHA-256 out of the box with `cargo add`. In C, setting up hardware-accelerated SHA often requires complex manual linking of libraries like OpenSSL or Intel IPP.
*   **Conclusion:** Rust's package ecosystem makes high-performance, hardware-specific optimizations accessible to everyone, not just low-level assembly experts.

---
[← Back to Main README](../README.md)
