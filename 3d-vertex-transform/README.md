# 3D Vertex Transform Benchmark

This benchmark simulates a "live" 3D graphics pipeline stage, transforming 250,000 vertices per frame for 100 frames.

## Methodology
*   **Workload**: 25,000,000 total vertex transformations.
*   **Operations**: Rotation matrix multiplication followed by perspective projection (division).
*   **Warm-up**: 10 frames are processed before timing starts.
*   **Allocation**: All `Point3D` structures are allocated and initialized before the timed loop.

## Language Observations

### C & C++
*   **Winner**: C remains the king of raw math loops.
*   **Memory Layout**: Uses a dense array of structs. The compiler can easily vectorize these loops using SIMD (Neon on ARM).

### Rust
*   **Performance**: Very close to C. Rust's strict ownership and aliasing rules allow the compiler to assume that input and output arrays don't overlap, enabling aggressive optimizations.

### Java
*   **Object Overhead**: The largest performance gap is observed here. Even though the vertex array is allocated beforehand, the overhead of accessing individual `Point3D` objects (pointer chasing) compared to raw memory pointers in C is significant.
*   **No SIMD**: While modern JVMs have "Auto-Vectorization," it is often less consistent than native compilers for complex 3D math.

## Verification
*   **Checksum**: The sum of all projected X/Y coordinates must match exactly.
*   **Status**: PASSED.
