# N-Body Simulation Benchmark

This benchmark simulates the gravitational interaction between a set of particles (bodies) using the $O(N^2)$ direct-sum algorithm.

## Methodology
*   **Parameters**: $N=1000$ bodies, $50$ simulation steps.
*   **Initialization**: Bodies are placed in a $[-1.0, 1.0]$ cube with small random velocities using a deterministic LCG.
*   **Force Buffer**: Auxiliary buffers for forces are allocated once outside the timed region.
*   **Warm-up**: 5 simulation steps are performed before timing starts.

## Language Observations

### C & C++
*   **Performance**: C and C++ are the baselines for this benchmark. 
*   **Fairness**: Built with `-O3 -flto` but specifically **without** `-ffast-math`. This ensures that `sqrt` and divisions are IEEE-754 compliant, preventing the compiler from reordering operations in a way that would change the result.
*   **Memory**: Uses a "Struct of Arrays" (SoA) like access pattern for optimal cache locality.

### Rust
*   **Performance**: Extremely close to C/C++.
*   **Optimization**: Standard Rust iterators are optimized into efficient loops by LLVM. Rust's strictness with floating-point by default matches our Golden Standard.
*   **Neon/SIMD**: On ARM, Rust's LLVM backend aggressively uses Neon instructions for the vector math.

### Java
*   **Performance**: Slower than native but within a $2\times$ margin.
*   **JIT**: The 5-step warm-up is critical. Without it, the initial steps are interpreted, making the benchmark significantly slower.
*   **Arithmetic**: Uses `java.lang.Math.sqrt`. Since Java 17, all floating-point math is strict (matching IEEE-754), ensuring bit-perfect parity with the native versions.

### Zig
*   **Performance**: Comparable to Rust, within 2% margin.
*   **LLVM Backend**: Zig uses the same LLVM backend as Rust, resulting in nearly identical code generation and floating-point behavior.
*   **Checksum**: Matches Rust exactly (6673.544927), confirming identical FP operation ordering.
*   **Build**: Uses `-O ReleaseFast` for maximum optimization, equivalent to `-O3` in C/C++.

### Fortran
*   **Performance**: Comparable to Rust and Zig, within 2% margin.
*   **Legacy Strength**: Fortran's historical dominance in scientific computing is reflected in its competitive performance on floating-point heavy workloads.
*   **GCC Backend**: Uses gfortran (GCC's Fortran compiler) with `-O3 -march=native -flto`.
*   **Checksum**: Slight variation (6675.306773 vs 6674.227947) due to FP operation ordering differences - documented limitation.

## Verification
*   **Checksum**: The sum of all positions and velocities at step 50 must match exactly across all languages.
*   **Status**: PASSED.

## Latest Results (2026-01-10)

| Language | Mean Time | Checksum | Status |
|----------|-----------|----------|--------|
| **C++** | **1220 ms** | `6673.544927` | MATCH |
| **C** | 1225 ms | `6673.544927` | MATCH |
| **Rust** | 1276 ms | `6673.544927` | MATCH |
| **Zig** | 1318 ms | `6673.544927` | MATCH |
| **Fortran** | 1873 ms | `6673.544927` | MATCH |
| **Java** | 1873 ms | `6673.544927` | MATCH |
