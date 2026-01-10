# Computational Benchmarks

A collection of cross-language performance benchmarks for various computational kernels and algorithms.

## Current Benchmarks

### 1. [N-Body Simulation](./nbody-simulation/)
A gravitational N-body simulation comparing C, C++, and Rust.
*   **Key Finding:** Rust (Scalar) outperforms C/C++ by ~23% with identical algorithms.
*   **Advanced Implementations:** Includes manual AArch64 Assembly and Symmetric $O(N^2/2)$ optimizations.

### 2. [Mandelbrot Set](./mandelbrot/)
A multi-threaded fractal generator testing raw arithmetic throughput and parallel scaling.
*   **Key Finding:** Rust (using Rayon) is ~18% faster than C (using OpenMP) and ~2.8x faster than C++ (using std::thread).
*   **Story:** Demonstrates how modern work-stealing schedulers (Rayon) handle non-uniform computational workloads more efficiently than static partitioning.

## Project Goal
To provide a fair, containerized environment for assessing the execution efficiency of different programming languages across diverse computational tasks.

## Getting Started
Each benchmark is self-contained within its own directory and includes a `run_bench.sh` script that utilizes Docker for reproducible results.

---
License: MIT
