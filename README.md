# Computational Benchmarks

A collection of cross-language performance benchmarks for various computational kernels and algorithms.

## Current Benchmarks

### 1. [N-Body Simulation](./nbody-simulation/)
A gravitational N-body simulation comparing C, C++, and Rust.
*   **Key Finding:** Rust (Scalar) outperforms C/C++ by ~23% with identical algorithms.
*   **Advanced Implementations:** Includes manual AArch64 Assembly and Symmetric $O(N^2/2)$ optimizations.

## Project Goal
To provide a fair, containerized environment for assessing the execution efficiency of different programming languages across diverse computational tasks.

## Getting Started
Each benchmark is self-contained within its own directory and includes a `run_bench.sh` script that utilizes Docker for reproducible results.

---
License: MIT
