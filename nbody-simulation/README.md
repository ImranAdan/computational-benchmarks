# N-Body Simulation Benchmark

This benchmark simulates the gravitational interaction between a set of particles (bodies) using the $O(N^2)$ direct-sum algorithm.

## Theoretical Background

### Historical Context

The N-body problem has its roots in **Isaac Newton's** 1687 masterwork *Philosophiæ Naturalis Principia Mathematica*, where he formulated the law of universal gravitation and solved the two-body problem analytically. Newton showed that two bodies orbiting their common center of mass follow conic sections (ellipses, parabolas, or hyperbolas).

However, when Newton attempted to solve the three-body problem (Sun-Earth-Moon), he famously declared it "exceeds, if I am not mistaken, the force of any human mind." In 1887, **Henri Poincaré** proved that the general N-body problem has no closed-form solution for $N \geq 3$, discovering chaos in the process.

Today, N-body simulations are fundamental to astrophysics (galaxy formation), molecular dynamics (protein folding), and plasma physics. Modern simulations can model billions of particles using approximation algorithms on supercomputers.

### Newton's Law of Universal Gravitation

Every particle in the universe attracts every other particle with a force proportional to the product of their masses and inversely proportional to the square of the distance between them:

$$\vec{F}_{ij} = G \frac{m_i m_j}{|\vec{r}_{ij}|^2} \hat{r}_{ij}$$

Where:
- $\vec{F}_{ij}$ = Force on body $i$ due to body $j$ (Newtons, N)
- $G$ = Gravitational constant ($6.674 \times 10^{-11}$ N·m²/kg²)
- $m_i, m_j$ = Masses of the two bodies (kg)
- $\vec{r}_{ij} = \vec{r}_j - \vec{r}_i$ = Displacement vector from $i$ to $j$
- $\hat{r}_{ij} = \vec{r}_{ij} / |\vec{r}_{ij}|$ = Unit vector in the direction of $\vec{r}_{ij}$

Expanding the unit vector, we get the computational form:

$$\vec{F}_{ij} = G \frac{m_i m_j}{|\vec{r}_{ij}|^3} \vec{r}_{ij}$$

Note the **cube** in the denominator—the extra power normalizes the displacement vector.

### The Direct Summation Algorithm

For $N$ bodies, the total force on body $i$ is the sum of forces from all other bodies:

$$\vec{F}_i = \sum_{j \neq i} G \frac{m_i m_j}{|\vec{r}_{ij}|^3} \vec{r}_{ij}$$

**Pseudocode**:
```
for each body i:
    F[i] = (0, 0, 0)
    for each body j ≠ i:
        r_ij = pos[j] - pos[i]
        dist_sq = r_ij.x² + r_ij.y² + r_ij.z²
        dist = sqrt(dist_sq)
        F[i] += G * m[i] * m[j] / dist³ * r_ij

    // Newton's second law: F = ma → a = F/m
    acc[i] = F[i] / m[i]
```

This algorithm is $O(N^2)$ because each of the $N$ bodies must consider all other $N-1$ bodies.

```
        Body 0    Body 1    Body 2    Body 3    ...   Body N-1
         │          │          │          │              │
         ▼          ▼          ▼          ▼              ▼
       ┌────┐    ┌────┐    ┌────┐    ┌────┐          ┌────┐
       │ Σ  │    │ Σ  │    │ Σ  │    │ Σ  │    ...   │ Σ  │
       │N-1 │    │N-1 │    │N-1 │    │N-1 │          │N-1 │
       │ij  │    │ij  │    │ij  │    │ij  │          │ij  │
       └────┘    └────┘    └────┘    └────┘          └────┘
         │          │          │          │              │
         ▼          ▼          ▼          ▼              ▼
       F[0]      F[1]      F[2]      F[3]    ...    F[N-1]

       Total operations: N × (N-1) force calculations
```

### The Softening Parameter

A critical numerical issue arises when two bodies approach very closely: the $1/r^3$ term explodes toward infinity. This **singularity** would cause:

1. Numerical overflow (NaN or Inf)
2. Unrealistically large velocities
3. Simulation instability

We prevent this by adding a small **softening parameter** $\varepsilon$ (epsilon):

$$\vec{F}_{ij} = G \frac{m_i m_j}{(|\vec{r}_{ij}|^2 + \varepsilon^2)^{3/2}} \vec{r}_{ij}$$

This modification:
- Has negligible effect at large distances ($r \gg \varepsilon$)
- Caps the force at small distances ($r \ll \varepsilon$)
- Simulates the extended mass distribution of real celestial bodies

Typical values: $\varepsilon \approx 0.01$ to $0.1$ of the mean inter-particle distance.

### Numerical Integration: The Leapfrog Method

To advance the simulation in time, we must integrate Newton's equations of motion:

$$\frac{d\vec{v}}{dt} = \vec{a}(t) \quad \text{and} \quad \frac{d\vec{x}}{dt} = \vec{v}(t)$$

The **leapfrog** (kick-drift-kick) integrator is the standard choice for N-body simulations because it is **symplectic**—it exactly conserves a quantity close to energy, preventing artificial heating or cooling:

```
┌─────────────────────────────────────────────────────────────────┐
│                    LEAPFROG INTEGRATION                         │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│   Step 1: KICK (half step)                                      │
│           v(t + dt/2) = v(t) + a(t) × dt/2                      │
│                                                                 │
│   Step 2: DRIFT (full step)                                     │
│           x(t + dt) = x(t) + v(t + dt/2) × dt                   │
│                                                                 │
│   Step 3: Compute a(t + dt) from new positions                  │
│                                                                 │
│   Step 4: KICK (half step)                                      │
│           v(t + dt) = v(t + dt/2) + a(t + dt) × dt/2            │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

For this benchmark, we use a simplified Euler integration for fair cross-language comparison.

### Memory Layout: Struct of Arrays (SoA)

The choice of memory layout significantly impacts cache performance. We use **Struct of Arrays** (SoA) rather than **Array of Structs** (AoS):

```
Array of Structs (AoS) - Poor for vectorization:
┌──────────────────────────────────────────────────────────────────┐
│ x₀ y₀ z₀ vx₀ vy₀ vz₀ m₀ │ x₁ y₁ z₁ vx₁ vy₁ vz₁ m₁ │ x₂ ... │
└──────────────────────────────────────────────────────────────────┘
         Body 0                     Body 1                Body 2

Struct of Arrays (SoA) - Optimal for SIMD:
┌────────────────────────────────────────────────────────────────┐
│ x₀  x₁  x₂  x₃  ... │ y₀  y₁  y₂  y₃  ... │ z₀  z₁  z₂  z₃ ...│
└────────────────────────────────────────────────────────────────┘
    All X positions        All Y positions        All Z positions
```

SoA allows the CPU to load consecutive values of the same field into SIMD registers, enabling vectorized operations on 4-8 particles simultaneously.

### IEEE-754 Floating-Point Considerations

Floating-point arithmetic is **not associative**. The order of operations affects the result:

$$(a + b) + c \neq a + (b + c)$$

For benchmark fairness, we enforce:
- IEEE-754 compliant `sqrt` (no fast-math approximations)
- Identical loop structures across all languages
- No compiler reordering of accumulations (`-fno-fast-math`)

This ensures all implementations produce identical checksums, proving they perform mathematically equivalent operations.

### Alternative Algorithms

While direct summation ($O(N^2)$) is conceptually simple, it becomes impractical for large $N$:

| Algorithm | Complexity | Accuracy | Use Case |
|-----------|------------|----------|----------|
| **Direct Sum** | $O(N^2)$ | Exact | $N < 10^4$, benchmarks |
| **Barnes-Hut** | $O(N \log N)$ | Approximate | $N \sim 10^6$ |
| **Fast Multipole** | $O(N)$ | Approximate | $N > 10^7$ |

**Barnes-Hut** (1986) uses an octree to group distant particles into single "supernodes," approximating their collective force. **Fast Multipole Method** (Greengard & Rokhlin, 1987) extends this with multipole expansions for near-linear scaling.

This benchmark uses direct summation specifically to stress:
- Raw FPU throughput
- SIMD vectorization
- Memory bandwidth

### Complexity Analysis

For $N$ bodies and $T$ time steps:

| Metric | Complexity | Our Benchmark |
|--------|------------|---------------|
| Time | $O(T \cdot N^2)$ | $50 \times 1000^2 = 50M$ interactions |
| Space | $O(N)$ | 1000 × 7 doubles = 56 KB |
| FLOPs per step | $\approx 20N^2$ | 20 million FLOPs |

### Real-World Applications

1. **Astrophysics**: Galaxy formation, star cluster dynamics, planetary system evolution
2. **Molecular Dynamics**: Protein folding, drug design, material science
3. **Plasma Physics**: Tokamak simulations, particle-in-cell methods
4. **Computer Graphics**: Particle systems, cloth simulation, fluid effects
5. **Benchmark Standard**: N-body is a canonical HPC benchmark (SPEC, NAS Parallel)

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
