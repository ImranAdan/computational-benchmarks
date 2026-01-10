# Computational Benchmarks Lab (Audited & Standardized)

A multi-language suite comparing **C**, **C++**, **Rust**, and **Java (OpenJDK 21)**. This project has been rigorously audited and standardized to ensure a scientifically honest comparison by eliminating hidden compiler advantages, legacy library biases, and environment noise.

> **Audit Status (2026-01-10):** PASSED. All identified fairness gaps have been closed. All benchmarks re-run on ARM-based hardware with bit-perfect checksum matching and steady-state verification.

## Rigorous Methodology

To ensure total fairness, the following methodologies were applied across all benchmarks:

1.  **Floating-Point Strictness**: Added `-fno-fast-math` to all C/C++ builds to match Rust's IEEE 754 strictness, ensuring compilers don't take "unsafe" shortcuts.
2.  **LTO & Code Generation**: Standardized Rust builds with `lto = "fat"`, `codegen-units = 1`, and `target-cpu = native` to match aggressive C/C++ `-flto` and `-mcpu=native` optimizations.
3.  **JVM Optimization**: Java benchmarks use **OpenJDK 21 (Temurin)** with `-Xmx2g` and integrated warm-up phases to allow the JIT (Just-In-Time) compiler to reach peak optimization (C2 level) before timing starts.
4.  **Steady-State Measurement**: Implemented **warm-up phases** for all compute-intensive benchmarks (Mandelbrot, 3D Vertex, N-Body) to ensure CPUs reach peak clock frequency and JIT stabilization.
5.  **Allocation Neutrality**: Memory allocations and buffer initializations are moved outside the timed regions to measure core logic performance only.
6.  **False Sharing Prevention**: Critical concurrent structures (like the Lock-Free Queue) use explicit 64-byte alignment or algorithmic isolation to prevent cache-line contention.
7.  **Containerized Reproducibility**: All languages use standardized base images (**Ubuntu 22.04** for native, **Eclipse Temurin 21** for Java) with toolchain versions pinned.

## Results Summary (ARM-based System)

| Benchmark | C | C++ | Rust | Java (JVM 21) | Winner |
|-----------|---|-----|------|---------------|--------|
| **Mandelbrot** | 3.27 MPix/s | 3.10 MPix/s | **5.72 MPix/s** | 4.98 MPix/s | Rust |
| **N-Body** | 1594 ms | **1521 ms** | 1885 ms | 2709 ms | C++ |
| **SHA-256** | 2.13 MH/s | 1.77 MH/s | **2.63 MH/s** | 1.88 MH/s | Rust |
| **3D Vertex** | **1063 M/s** | 587 M/s | 387 M/s | 74 M/s | C |
| **Lock-Free Queue** | 36.9M ops/s | **56.1M ops/s** | 28.0M ops/s | 6.5M ops/s | C++ |
| **Kernel Pipe** | **3.30 GB/s** | 3.09 GB/s | 3.29 GB/s | 0.73 GB/s | C |

## The Benchmark Stories

### 1. [N-Body Simulation](./nbody-simulation/)
*   **Winner:** **C++** edges out C by a narrow margin.
*   **Methodology:** Force buffers allocated once before timing; 5 warm-up steps included.
*   **Java Insight:** Java's `Math.sqrt` and array access are efficient, but the lack of struct-of-arrays (SoA) optimization via SIMD in the JIT puts it behind native LTO builds.

### 2. [Mandelbrot Set Fractal](./mandelbrot/)
*   **Winner:** **Rust** (5.72 MPix/s).
*   **Methodology:** 10% image warm-up; Rayon (Rust) vs OpenMP (C/C++) vs Parallel Streams (Java).
*   **Java Insight:** Java's `IntStream.parallel()` performed remarkably well, significantly outperforming the C/C++ OpenMP implementations on this hardware.

### 3. [3D Vertex Transform](./3d-vertex-transform/)
*   **Winner:** **C** (1063 M/s).
*   **Methodology:** 10-frame warm-up; standardized Pi literal; strict IEEE math.
*   **Java Insight:** The high overhead of object-oriented access (`Point3D` objects) vs raw pointers/arrays in native languages is most visible here.

### 4. [SHA-256 Cryptography](./sha256-cryptography/)
*   **Winner:** **Rust** (2.63 MH/s).
*   **Methodology:** Bit-perfect checksum matching (`0c8b1d...`); manual block transformation.
*   **Java Insight:** Java is highly competitive here, proving the JVM's ability to optimize tight bitwise arithmetic loops.

### 5. [Lock-Free Queue (MPMC)](./lock-free-queue/)
*   **Winner:** **C++** (56.1M ops/s).
*   **Methodology:** Dmitry Vyukov's MPMC algorithm; 64-byte alignment; portable `PAUSE`.
*   **Java Insight:** `AtomicLongArray` provides the necessary memory barriers, but object headers and garbage collection pressure in high-contention loops limit peak throughput.

### 6. [Kernel Pipe Throughput](./kernel-pipe-throughput/)
*   **Winner:** **C** (3.30 GB/s).
*   **Methodology:** Standardized buffer patterns; `fork()` vs `ProcessBuilder`.
*   **Java Insight:** Java's abstraction over OS pipes and the overhead of `ProcessBuilder` IPC significantly limit raw throughput compared to low-level POSIX `read/write`.

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