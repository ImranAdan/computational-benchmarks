# Computational Benchmarks Lab

A multi-language suite comparison of **C**, **C++**, **Rust**, and **Java (OpenJDK 21)**. This project implements a "Golden Standard" for fairness, ensuring that performance differences stem from language and runtime characteristics rather than hidden compiler shortcuts or environmental noise.

> **Audit Status (2026-01-10):** PASSED. Verified on ARM-based hardware with bit-perfect checksum matching and steady-state JIT verification.

## Results Summary (ARM-based System)

| Benchmark | C | C++ | Rust | Java (JVM 21) | Winner |
|-----------|---|-----|------|---------------|--------|
| **[Mandelbrot](./mandelbrot/)** | 11.12 MPix/s | 12.63 MPix/s | **16.33 MPix/s** | 13.17 MPix/s | Rust |
| **[N-Body](./nbody-simulation/)** | 585 ms | **601 ms** | 664 ms | 965 ms | C++ |
| **[SHA-256](./sha256-cryptography/)** | 2.15 MH/s | 2.47 MH/s | **4.08 MH/s** | 3.04 MH/s | Rust |
| **[3D Vertex](./3d-vertex-transform/)** | **777 M/s** | 527 M/s | 425 M/s | 158 M/s | C |
| **[Lock-Free Queue](./lock-free-queue/)** | 19.6M ops/s | **10.1M ops/s** | 5.6M ops/s | 3.6M ops/s | C++ |
| **[Kernel Pipe](./kernel-pipe-throughput/)** | **3.12 GB/s** | 3.07 GB/s | 3.27 GB/s | 0.99 GB/s | C |

*Note: Results may vary by CPU architecture and core count. See individual folders for deep dives.*

## The "Golden Standard" for Fairness

To ensure a scientifically honest comparison, we enforce:
1.  **Arithmetic Strictness**: No "fast-math" shortcuts; strict IEEE-754 compliance across all languages.
2.  **Optimization Parity**: Standardized LTO (Link Time Optimization) and CPU-native targeting.
3.  **Steady-State Timing**: CPU frequency stabilization and JIT warm-up phases included in all tests.
4.  **Zero-Noise Allocation**: All critical memory allocations occur outside the timed regions.
5.  **False Sharing Prevention**: Explicit 64-byte alignment/padding for concurrent structures.

## Quick Start
```bash
# Run all benchmarks sequentially
./run_all.sh

# Run a specific benchmark
cd mandelbrot && ./run_bench.sh
```

---
License: MIT

---

## Infrastructure
*   **Dockerized:** Reproducible across all environments.
*   **Audited:** Build flags and algorithms synchronized.
*   **Verified:** Bit-perfect parity across all outputs.

## How to Run
```bash
# Run any benchmark using the included script
./run_bench.sh
```

---
License: MIT