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

## Verification
*   **Checksum**: The sum of all positions and velocities at step 50 must match exactly across all languages.
*   **Status**: PASSED.
