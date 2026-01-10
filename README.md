# Computational Benchmarks Lab
> A standardized suite comparing C, C++, Rust, and Java (OpenJDK 21).

## Project Overview
This repository contains a suite of six benchmarks designed to evaluate the performance of modern high-level runtimes against systems languages. The project enforces a "Golden Standard" of methodology to ensure that comparisons are fair and that results are reproducible across different architectures.

**Audit Status:** PASSED (2026-01-10). Verified on ARM64 hardware with bit-perfect checksum matching.

---

## Results Summary (ARM64)
*Measured on Apple Silicon | 12-Core | Docker (Linux VM)*

| Benchmark | C (Clang 14) | C++ (Clang++) | Rust (1.75) | Java (JVM 21) | Winner |
| :--- | :--- | :--- | :--- | :--- | :--- |
| [Mandelbrot](./mandelbrot/) | 11.12 MPix/s | 12.63 MPix/s | 16.33 MPix/s | 13.17 MPix/s | Rust |
| [N-Body Simulation](./nbody-simulation/) | 585 ms | 601 ms | 664 ms | 965 ms | C++ |
| [SHA-256 Cryptography](./sha256-cryptography/) | 2.15 MH/s | 2.47 MH/s | 4.08 MH/s | 3.04 MH/s | Rust |
| [3D Vertex Transform](./3d-vertex-transform/) | 777 M/s | 527 M/s | 425 M/s | 158 M/s | C |
| [Lock-Free Queue](./lock-free-queue/) | 19.6M ops/s | 10.1M ops/s | 5.6M ops/s | 3.6M ops/s | C++ |
| [Kernel Pipe Throughput](./kernel-pipe-throughput/) | 3.12 GB/s | 3.07 GB/s | 3.27 GB/s | 0.99 GB/s | C |

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