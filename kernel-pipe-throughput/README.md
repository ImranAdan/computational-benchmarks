# Kernel Pipe Throughput Benchmark

## The Story: "The High-Speed Pipe"
This benchmark measures the efficiency of the "Border Crossing" between User-space and the Kernel. We push **10 Gigabytes** of raw data through a Unix Pipe to see how much overhead the language adds to raw system calls (`read` and `write`).

### The Challenge
Every time a program calls `read()` or `write()`, the CPU performs a **Context Switch**. This benchmark tests:
1.  How fast the language can prepare memory buffers.
2.  The overhead of the language's FFI (Foreign Function Interface) when calling into `libc`.
3.  The speed of a simple XOR checksum used to verify data integrity during the transfer.

## The Results (M1/ARM64)
| Language | Throughput | Relative | Status |
|----------|------------|----------|--------|
| **C++**  | **1.52 GB/s**| **1.0x** | **Winner** |
| C        | 1.15 GB/s    | 0.75x    | Second |
| Rust     | 1.07 GB/s    | 0.70x    | Third |

## Lead Analyst's Fairness Audit
*   **The Surprise:** This is the first benchmark where **C++ takes a definitive lead**. 
*   **Analysis:** 
    *   **Vectorized Checksum:** Modern C++ compilers (Clang++) are exceptionally good at vectorizing the `XOR` operation used in our checksum. It likely used SIMD instructions to XOR 16 bytes at a time.
    *   **The "Safety Tax":** Rust's `vec![0u8; BUFFER_SIZE]` perform mandatory memory zeroing before use. While safer, this adds a small initialization cost to every buffer cycle that C and C++ avoid by using uninitialized or pre-filled memory.
    *   **Bounds Checking:** The Rust XOR loop (`buffer[i]`) may have retained some bounds-checking logic that the C++ loop didn't have, slowing down the processing of the 10GB stream.

## Conclusion
For raw data piping and "at-the-border" kernel interactions, C++'s lack of mandatory safety checks and its aggressive loop vectorization give it the edge in this high-throughput scenario.

---
[← Back to Main README](../README.md)
