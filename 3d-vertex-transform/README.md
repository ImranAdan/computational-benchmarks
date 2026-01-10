# 3D Vertex Transform Benchmark

## The Story: "SIMD Auto-Discovery"
A linear algebra benchmark that rotates and projects a mesh of 250,000 vertices across 100 frames. This tells the story of **Auto-Vectorization**—the compiler's ability to automatically use modern CPU instructions (like ARM NEON) to do multiple calculations at once.

### The Operation
Every vertex undergoes:
1.  Rotation around the Y-axis.
2.  Rotation around the X-axis.
3.  Perspective Projection (Division and Scaling).

## The Results (M1/ARM64)
| Language | Throughput | Relative | SIMD Status |
|----------|------------|----------|-------------|
| **Rust** | **425 M/s**| **1.0x** | **Auto-Vectorized** |
| C++      | 96 M/s     | 0.22x    | Scalar Only |
| C        | 95 M/s     | 0.22x    | Scalar Only |

## Fairness Audit
*   **Code Parity:** The rotation and projection function is identical line-for-line in C, C++, and Rust.
*   **Compiler Settings:** All use `-O3` and `-mcpu=native`.
*   **The Surprise:** Despite using the same LLVM backend, `rustc` successfully triggers SIMD vectorization for this loop, while `clang` (for C/C++) fails to do so. This highlights that Rust's higher-level semantic guarantees (like slice bounds and non-aliasing) provide the compiler with enough confidence to optimize more aggressively.

---
[← Back to Main README](../README.md)
