# Computational Benchmarks Lab (Audited & Standardized)

A multi-language suite comparing **C**, **C++**, and **Rust**. This project has been rigorously audited and standardized to ensure a scientifically honest comparison by eliminating hidden compiler advantages, legacy library biases, and environment noise.

> **Audit Status (2026-01-10):** PASSED. All identified fairness gaps have been closed. All benchmarks re-run on ARM-based hardware with bit-perfect checksum matching and steady-state verification.

## Rigorous Methodology

To ensure total fairness, the following methodologies were applied across all benchmarks:

1.  **Floating-Point Strictness**: Added `-fno-fast-math` to all C/C++ builds to match Rust's IEEE 754 strictness, ensuring compilers don't take "unsafe" shortcuts.
2.  **LTO & Code Generation**: Standardized Rust builds with `lto = "fat"`, `codegen-units = 1`, and `target-cpu = native` to match aggressive C/C++ `-flto` and `-mcpu=native` optimizations.
3.  **Steady-State Measurement**: Implemented **warm-up phases** for all compute-intensive benchmarks (Mandelbrot, 3D Vertex, N-Body) to ensure CPUs reach peak clock frequency before timing.
4.  **Allocation Neutrality**: Memory allocations and buffer initializations are moved outside the timed regions to measure core logic performance only.
5.  **False Sharing Prevention**: Critical concurrent structures (like the Lock-Free Queue) use explicit 64-byte alignment (`_Alignas(64)` / `#[repr(align(64))]`) to prevent cache-line contention.
6.  **Architecture-Aware Contention**: Implemented portable spin-loop hints (`isb` on ARM, `pause` on x86) to ensure fair thread scheduling during busy-waits.
7.  **Containerized Reproducibility**: All languages use the same base image (**Ubuntu 22.04**) and toolchain versions pinned for consistency.

## Results Summary (ARM-based System)

| Benchmark | C | C++ | Rust | Winner |
|-----------|---|-----|------|--------|
| **Mandelbrot** | 2.90 MPix/s | 2.85 MPix/s | **3.83 MPix/s** | Rust |
| **N-Body** | 1527 ms | **1503 ms** | 1882 ms | C++ |
| **SHA-256** | 1.35 MH/s | 1.52 MH/s | **1.98 MH/s** | Rust |
| **3D Vertex** | **378 M/s** | 340 M/s | 306 M/s | C |
| **Lock-Free Queue** | **30.4M ops/s** | 25.9M ops/s | 15.7M ops/s | C |
| **Kernel Pipe** | **3.03 GB/s** | 2.64 GB/s | 2.07 GB/s | C |

## The Benchmark Stories

### 1. [N-Body Simulation](./nbody-simulation/)
*   **Winner:** **C++** edges out C by a narrow margin.
*   **Methodology:** Force buffers allocated once before timing; 5 warm-up steps included.
*   **Lesson:** Standard C++ containers and loops match raw C when optimized with the same strictness.

### 2. [Mandelbrot Set Fractal](./mandelbrot/)
*   **Winner:** **Rust** (3.83 MPix/s).
*   **Methodology:** 10% image warm-up; standard `-O3` vs Rayon.
*   **Lesson:** Rayon's work-stealing scheduler is exceptionally efficient on ARM's many-core architecture.

### 3. [3D Vertex Transform](./3d-vertex-transform/)
*   **Winner:** **C** (378 M/s).
*   **Methodology:** 10-frame warm-up; standardized Pi literal; strict IEEE math.
*   **Lesson:** C remains the king of raw, predictable loop-heavy SIMD-friendly math.

### 4. [SHA-256 Cryptography](./sha256-cryptography/)
*   **Winner:** **Rust** (1.98 MH/s).
*   **Methodology:** Audited algorithm flow; bit-perfect checksum matching (0c8b1d...).
*   **Lesson:** Rust's integer handling and bitwise operations provide a significant advantage in cryptographic workloads.

### 5. [Lock-Free Queue (MPMC)](./lock-free-queue/)
*   **Winner:** **C** (30.4M ops/s).
*   **Methodology:** 64-byte alignment; portable `PAUSE` (`isb` on ARM).
*   **Lesson:** Minimal abstractions and manual memory layout are unbeatable for high-contention atomic operations.

### 6. [Kernel Pipe Throughput](./kernel-pipe-throughput/)
*   **Winner:** **C** (3.03 GB/s).
*   **Methodology:** Standardized buffer patterns (sequential 0-255).
*   **Lesson:** Low-level syscall management in C provides the highest throughput for inter-process communication.

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