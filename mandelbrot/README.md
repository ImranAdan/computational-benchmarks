# Mandelbrot Set Benchmark

## The Story: "The Battle of Schedulers"
This benchmark generates a 16-million pixel fractal image. Because different parts of the fractal take different amounts of time to calculate (the "black" areas are heavy, the "blue" areas are light), it tells the story of how effectively a language handles **unbalanced parallel workloads**.

### The Parallelism Strategies
*   **Rust (Rayon):** Uses a **Work-Stealing** scheduler. Idle cores steal work from busy cores.
*   **C (OpenMP):** Uses **Dynamic Scheduling**. Threads ask for rows one-by-one as they finish.
*   **C++ (std::thread):** Uses **Static Partitioning**. Each thread gets a fixed chunk of the image (causing some cores to finish early and sit idle).

## The Results (M1/ARM64)
| Language | Throughput | Relative | Scaling Strategy |
|----------|------------|----------|-------------------|
| **Rust** | **11.25 M/s**| **1.0x** | Rayon (Work-Stealing) |
| C        | 9.47 M/s   | 0.84x    | OpenMP (Dynamic) |
| C++      | 3.94 M/s   | 0.35x    | std::thread (Static) |

## Fairness Audit
*   **Math Logic:** Identical complex number math loop across all three.
*   **Resource Access:** All containers have access to all CPU cores.
*   **Ecosystem Power:** This benchmark is intentionally "unfair" to C++ to demonstrate that raw threads (without a library like Intel TBB) are suboptimal for heterogeneous workloads. It highlights that Rust's high-level abstractions (`Rayon`) often out-perform low-level manual code.

---
[← Back to Main README](../README.md)
