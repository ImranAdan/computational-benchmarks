# N-Body Simulation: Rust vs C/C++ Vectorization Benchmark

A benchmark comparing the performance of C, C++, and Rust implementations of an N-body gravitational simulation. This project demonstrates the significant performance gap caused by **auto-vectorization differences** between compilers.

## Key Finding

**Rust is ~7.5x slower than C/C++ for this workload** due to LLVM failing to auto-vectorize the Rust code, while successfully vectorizing the equivalent C/C++ code.

| Language | Time (ms) | Relative | Checksum | SIMD Instructions |
|----------|-----------|----------|----------|-------------------|
| C        | 2,662     | 1.0x     | 6673.544927 | Yes (`fmul v*.2d`, `fadd v*.2d`) |
| C++      | 2,669     | 1.0x     | 6673.544927 | Yes (`fmul v*.2d`, `fadd v*.2d`) |
| Rust     | 20,089    | 7.5x     | 6673.544927 | **No** (scalar only) |

*Tested on Apple Silicon (ARM64/aarch64) with Docker*

## The Problem

The C compiler auto-vectorizes the inner loop, generating ARM NEON SIMD instructions that process **2 double-precision floats per instruction**:

```asm
; C assembly - SIMD vectorized (2 doubles at once)
fmul    v0.2d, v0.2d, v7.2d
fadd    v0.2d, v2.2d, v0.2d
```

Rust generates only scalar instructions, processing **1 double at a time**:

```asm
; Rust assembly - scalar only
fmul    d0, d0, d7
fadd    d0, d2, d0
```

## Root Cause Analysis

### Why C/C++ Vectorizes

1. **`restrict` keyword** - Tells the compiler arrays don't overlap (alias)
2. **Simple loop structure** - LLVM recognizes the vectorizable pattern
3. **Direct array access** - No function call overhead

### Why Rust Doesn't Vectorize

1. **No `restrict` equivalent** - Rust's borrow checker guarantees safety but LLVM doesn't trust it for vectorization
2. **Aliasing uncertainty** - LLVM can't prove the mutable slices don't overlap
3. **Reduction pattern** - The `fx += dx * s` accumulation is harder to vectorize
4. **Conditional in loop** - `if i != j` creates control flow that complicates vectorization

## What We Tried (And Failed)

### Attempt 1: Clean Idiomatic Rust
- Used `for` loops instead of `while`
- Standard slice indexing
- Result: **Still no vectorization** (~20 seconds)

### Attempt 2: Unsafe with `get_unchecked`
- Eliminated bounds checking
- Used raw pointer access
- Result: **Still no vectorization** (~28 seconds)

### Attempt 3: Explicit SIMD with `portable_simd`
- Nightly Rust with `#![feature(portable_simd)]`
- Manual `f64x2` vector operations
- Result: **Incorrect results and slower** (~100+ seconds)
- Problem: Per-iteration mask creation for `i != j` was catastrophically slow

### Attempt 4: ARM NEON Intrinsics (`std::arch::aarch64`)
- Direct hardware intrinsics (`vld1q_f64`, `vmulq_f64`, etc.)
- Result: **Incorrect results** (wrong checksum)
- Problem: Handling the `i != j` conditional with SIMD is complex

## Project Structure

```
.
├── bench.c           # C implementation (reference - fastest)
├── bench.cpp         # C++ implementation (matches C)
├── bench.rs          # Rust implementation (7.5x slower)
├── Dockerfile.c      # Docker build for C
├── Dockerfile.cpp    # Docker build for C++
├── Dockerfile.rust   # Docker build for Rust
├── run_bench.sh      # Benchmark runner script
├── asm/              # Generated assembly files
│   ├── bench-c.asm
│   ├── bench-cpp.asm
│   └── bench-rust.asm
└── README.md
```

## Running the Benchmark

### Prerequisites
- Docker Desktop

### Run All Benchmarks
```bash
./run_bench.sh
```

### Run Individual Languages
```bash
# Build and run C
docker build -f Dockerfile.c -t bench-c . && docker run --rm bench-c

# Build and run C++
docker build -f Dockerfile.cpp -t bench-cpp . && docker run --rm bench-cpp

# Build and run Rust
docker build -f Dockerfile.rust -t bench-rust . && docker run --rm bench-rust
```

## The Algorithm

This is a classic **N-body gravitational simulation**:

- **N = 1,500 particles**
- **400 simulation steps** (plus 5 warmup steps)
- **O(n²) complexity** - every particle interacts with every other particle

```
For each timestep:
    For each particle i:
        For each particle j (where j != i):
            Calculate gravitational force from j on i
            Accumulate force
        Update velocity of i
    For each particle i:
        Update position based on velocity
```

## Compiler Flags

### C (Clang)
```
-O3 -flto -mcpu=native -fuse-ld=lld -fno-fast-math -ffp-contract=off
```

### C++ (Clang++)
```
-O3 -flto -mcpu=native -fuse-ld=lld -fno-fast-math -ffp-contract=off
```

### Rust (rustc)
```
-C opt-level=3 -C lto=fat -C codegen-units=1 -C target-cpu=native
-C target-feature=+neon,-fma -C llvm-args=-ffp-contract=off
```

Note: `-fno-fast-math` and `-ffp-contract=off` ensure consistent floating-point behavior across all implementations for fair comparison.

## Conclusions

1. **Auto-vectorization is not portable across languages** - The same LLVM backend produces vectorized code for C but not for Rust.

2. **Rust's safety guarantees have a cost** - The borrow checker prevents certain aliasing optimizations that C's `restrict` enables.

3. **Explicit SIMD in Rust is difficult** - Hand-written SIMD code for this pattern is complex due to the conditional `i != j` check and reduction accumulation.

4. **For peak numerical performance, C/C++ still wins** - At least for this type of tight computational kernel without using specialized Rust libraries.

## Potential Solutions (Not Implemented)

- **Use specialized libraries**: `nalgebra`, `ndarray` with BLAS backend, `rayon` for parallelization
- **Restructure the algorithm**: Tiled/blocked computation for better cache behavior
- **Accept the tradeoff**: 7.5x slower may be acceptable for the safety and ergonomics Rust provides

## License

MIT
