# Polyglot Performance Lab: The Computational Crucible
> A scientifically audited, bit-perfect CPU benchmark suite comparing **C, C++, Rust, and Java (OpenJDK 21)**.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Docker Image](https://img.shields.io/badge/Docker-Ready-blue?logo=docker)](https://www.docker.com/)
[![Java Version](https://img.shields.io/badge/Java-21-orange?logo=openjdk)](https://openjdk.org/projects/jdk/21/)
[![Audit Status](https://img.shields.io/badge/Fairness--Audit-PASSED-success?style=flat-square)](./FAIRNESS_AUDIT_REPORT.md)

## 🔬 What is this?

The **Polyglot Performance Lab** is a rigorous environment designed to answer: *How do modern high-level runtimes truly compare against systems languages when the playing field is perfectly level?*

We eliminate benchmarking bias by enforcing a **"Golden Standard"** of methodology, ensuring performance differences stem from language and runtime characteristics, not unoptimized code or environmental noise.

## ⚖️ Why trust these numbers? (Fairness Guarantees)

*   **Strict Arithmetic**: We disable "fast-math" shortcuts in C/C++ to match the IEEE-754 strictness of Rust and Java.
*   **Bit-Perfect Validation**: Every benchmark must produce a matching checksum. If the output isn't identical to the last decimal, the result is discarded.
*   **Optimization Parity**: Native builds use aggressive LTO (Link-Time Optimization) and `target-cpu=native`.
*   **Warm-up Equilibrium**: CPU frequency and JIT (for Java) are stabilized via warm-up phases before timing starts.
*   **Allocation Neutrality**: Timing starts *after* initial memory allocation to focus on core logical throughput.
*   **False-Sharing Prevention**: Critical concurrent structures use 64-byte padding to prevent cache-line contention.

---

## 📊 Results Baseline (ARM64)

*Measured on: Apple Silicon | 12-Core | ARMv8-A | Docker (Linux VM)*

| Benchmark | C (Clang 14) | C++ (Clang++) | Rust (1.75) | Java (JVM 21) | Winner |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **[Mandelbrot](./mandelbrot/)** | 11.12 MPix/s | 12.63 MPix/s | **16.33 MPix/s** | 13.17 MPix/s | 🦀 **Rust** |
| **[N-Body](./nbody-simulation/)** | 585 ms | **601 ms** | 664 ms | 965 ms | 🏎️ **C++** |
| **[SHA-256](./sha256-cryptography/)** | 2.15 MH/s | 2.47 MH/s | **4.08 MH/s** | 3.04 MH/s | 🦀 **Rust** |
| **[3D Vertex](./3d-vertex-transform/)** | **777 M/s** | 527 M/s | 425 M/s | 158 M/s | 💾 **C** |
| **[Lock-Free Queue](./lock-free-queue/)** | 19.6M ops/s | **10.1M ops/s** | 5.6M ops/s | 3.6M ops/s | 🏎️ **C++** |
| **[Kernel Pipe](./kernel-pipe-throughput/)** | **3.12 GB/s** | 3.07 GB/s | 3.27 GB/s | 0.99 GB/s | 💾 **C** |

> **Note:** Each result above links to a **detailed deep-dive** explaining the implementation, language-specific observations, and technical hurdles.

---

## 🚀 Quick Start (Docker)

Reproduce the entire suite with one command:

```bash
# Run the full automated suite
./run_all.sh
```

### Requirements
*   **Docker**: All language environments are fully containerized.
*   **Python 3**: Used for precise timing and result parsing.

---

## 📝 Roadmap & Contributing

We are actively seeking contributors to help expand the lab:

- [ ] **New Contenders**: Add Go, Zig, and .NET 8.
- [ ] **Statistical Analysis**: Implement multi-run variance and standard deviation reporting.
- [ ] **Architecture Expansion**: Formal results for x86_64 (Zen 4 / Raptor Lake).
- [ ] **GPU Shootout**: CUDA vs. Vulkan Compute vs. Metal.

👉 **[View the Fairness Audit Report](./FAIRNESS_AUDIT_REPORT.md)** | **[Contributing Guidelines](CONTRIBUTING.md)**

---
**Project Lead**: Imran Adan  
**License**: MIT
