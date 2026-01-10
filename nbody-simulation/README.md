# N-Body Simulation Benchmark

## The Story: "The Physics of Aliasing"
This benchmark simulates gravitational interactions between 1,500 particles over 400 time-steps. It tells the story of how a language's memory safety rules directly impact its mathematical execution speed.

### The Algorithm
We use the **Symmetric $O(N^2/2)$ algorithm**. By applying Newton's Third Law ($F_{ij} = -F_{ji}$), we calculate the force between two particles only once and apply it to both. This halves the number of expensive `sqrt` and `div` operations.

## The Results (M1/ARM64)
| Language | Time (ms) | Relative | Checksum |
|----------|-----------|----------|----------|
| **Rust** | **1,260** | **1.0x** | 6673.544927 |
| C++      | 1,626     | 1.29x    | 6673.544927 |
| C        | 1,630     | 1.29x    | 6673.544927 |

## Fairness Audit
*   **Algorithm Parity:** Identical $N^2/2$ logic across all three.
*   **Memory Handling:** C uses `restrict` pointers to match Rust's "no-aliasing" guarantees.
*   **Compiler:** All implementations use the LLVM backend (`clang` and `rustc`).
*   **Why Rust wins:** Despite the code being identical, Rust's ownership model allows LLVM to be more aggressive with register allocation and loop unrolling than it can be with C's pointer-based approach, even with `restrict`.

---
[← Back to Main README](../README.md)
