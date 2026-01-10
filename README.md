# Computational Benchmarks Lab
> A standardized suite comparing C, C++, Rust, Java, Zig, and Fortran.

## Project Overview
This repository contains a suite of six benchmarks designed to evaluate the performance of modern high-level runtimes against systems languages. The project enforces a "Golden Standard" of methodology to ensure that comparisons are fair and that results are reproducible across different architectures.

**Audit Status:** PASSED (2026-01-10). Verified on ARM64 hardware with bit-perfect checksum matching.

---

## Results Summary (ARM64)
*Measured on Apple Silicon | Docker (Linux VM)*

| Benchmark | C | C++ | Rust | Java | Zig | Fortran | Winner |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Mandelbrot](./mandelbrot/) | 9.24 MPix/s | 8.17 MPix/s | 8.54 MPix/s | 7.36 MPix/s | 9.79 MPix/s | **12.87 MPix/s** | **Fortran** |
| [N-Body Simulation](./nbody-simulation/) | 1225 ms | **1220 ms** | 1276 ms | 1873 ms | 1318 ms | 1873 ms | **C++** |
| [SHA-256 Cryptography](./sha256-cryptography/) | 1.84 MH/s | 1.86 MH/s | 2.43 MH/s | 2.10 MH/s | **2.48 MH/s** | 2.41 MH/s | **Zig** |
| [3D Vertex Transform](./3d-vertex-transform/) | **670 M/s** | 642 M/s | 411 M/s | 95 M/s | 506 M/s | 332 M/s | **C** |
| [Lock-Free Queue](./lock-free-queue/) | **8.0M ops/s** | 7.6M ops/s | 4.1M ops/s | 2.6M ops/s | 5.9M ops/s | N/A | **C** |
| [Kernel Pipe Throughput](./kernel-pipe-throughput/) | 2.10 GB/s | **2.16 GB/s** | 2.12 GB/s | 0.53 GB/s | 1.65 GB/s | N/A | **C++** |

---

## Methodology & Fairness Guarantees
To eliminate common benchmarking biases, the following standards are applied to all implementations:

*   **Arithmetic Consistency**: Disabled "fast-math" optimizations in C/C++ to ensure IEEE-754 strictness across all languages.
*   **Validation**: Every benchmark utilizes bit-perfect checksum validation.
*   **Compilation**: Native languages utilize Link-Time Optimization (LTO) and target native CPU architectures.
*   **State Stabilization**: CPU frequency and JIT compilation (Java) are stabilized via warm-up phases prior to timing.
*   **Memory Neutrality**: Critical performance paths are measured after initial memory allocation.
*   **Cache Isolation**: Concurrent structures implement 64-byte padding to prevent false sharing.

## Usage
### Automated Execution
```bash
# Execute full suite
./run_all.sh
```

### Requirements
*   **Docker**: All benchmarks are fully containerized.
*   **Python 3**: Utilized for timing orchestration and output parsing.

## Detailed Documentation
Technical deep dives for each workload, including implementation notes and language-specific observations, are located in their respective directories:

1.  [N-Body Simulation](./nbody-simulation/)
2.  [Mandelbrot Set](./mandelbrot/)
3.  [SHA-256 Cryptography](./sha256-cryptography/)
4.  [3D Vertex Transform](./3d-vertex-transform/)
5.  [Lock-Free Queue](./lock-free-queue/)
6.  [Kernel Pipe Throughput](./kernel-pipe-throughput/)

---
**Audit Report:** [FAIRNESS_AUDIT_REPORT.md](./FAIRNESS_AUDIT_REPORT.md)  
**License:** MIT