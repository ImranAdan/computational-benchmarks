# Computational Benchmarks Lab

A multi-language suite comparing the performance of **C**, **C++**, and **Rust** across distinct computational kernels. Each benchmark tells a unique "story" about modern hardware and compiler optimization.

## The Benchmark Stories

### 1. [N-Body Simulation](./nbody-simulation/)
*   **The Story:** "The Physics of Aliasing" (Memory Safety vs speed).
*   **Winner:** **Rust** (1.26s) beats C/C++ (1.63s).
*   **Key Lesson:** Rust ownership allows more aggressive loop optimizations.

### 2. [Mandelbrot Set Fractal](./mandelbrot/)
*   **The Story:** "The Battle of Schedulers" (Work-stealing vs Static).
*   **Winner:** **Rust/Rayon** (11.2 M/s) leads the pack.
*   **Key Lesson:** Modern schedulers are vital for unbalanced workloads.

### 3. [3D Vertex Transform](./3d-vertex-transform/)
*   **The Story:** "SIMD Auto-Discovery" (Compiler smarts).
*   **Winner:** **Rust** (425 M/s) is **4.4x faster** than C/C++.
*   **Key Lesson:** Rust triggers SIMD auto-vectorization more reliably.

### 4. [SHA-256 Cryptography](./sha256-cryptography/)
*   **The Story:** "The Power of Hardware" (Library acceleration).
*   **Winner:** **Rust** (4.5 MH/s) beats C/C++ (1.8 MH/s).
*   **Key Lesson:** Rust's ecosystem makes hardware extensions accessible.

### 5. [3D Live Polyglot Visualizer (WIP)](./3d-live-visualizer/)
*   **The Story:** "Interoperability & Streaming" (FFI & WebSockets).
*   **Status:** Interactive Experimental Mode.

---

## Infrastructure
*   **Dockerized:** Reproducible Ubuntu 22.04 environments.
*   **Verified:** Identical checksums across all languages.
*   **Hardware:** Benchmarked on Apple Silicon (ARM64).

## How to Run
Every directory contains a `run_bench.sh` script.
```bash
cd nbody-simulation
./run_bench.sh
```

---
License: MIT