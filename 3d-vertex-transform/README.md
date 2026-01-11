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

### Zig
*   **Performance**: Slower than C/C++ but faster than Java.
*   **Math**: Uses built-in `@sin`/`@cos` functions. The performance gap vs C suggests that LLVM's auto-vectorization for Zig's math builtins is less aggressive than Clang's handling of `libm` calls in C.
*   **Layout**: Uses standard Array-of-Structures (AoS) layout (`[]Point3D`).

### Fortran
*   **Performance**: Slower than C/C++.
*   **Layout**: Uses a derived type (`type(Point3D)`), which is equivalent to AoS.
*   **Math**: Uses standard Fortran intrinsics (`sin`, `cos`). Similar to Zig, it appears less aggressively vectorized for this specific trigonometric workload compared to C.

## Verification
*   **Checksum**: The sum of all projected X/Y coordinates must match exactly.
*   **Status**: PASSED.

## Latest Results (2026-01-10)

| Language | Mean Time | Throughput |
|----------|-----------|------------|
| **C** | **37.3 ms** | **670 M/s** |
| **C++** | 39.1 ms | 642 M/s |
| **Zig** | 51.1 ms | 506 M/s |
| **Rust** | 60.9 ms | 411 M/s |
| **Fortran** | 75.5 ms | 332 M/s |
| **Java** | 269 ms | 95 M/s |
