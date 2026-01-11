# Mandelbrot Set Benchmark

This benchmark renders a $4000 \times 4000$ image of the Mandelbrot set set fractal ($max\_iter=1000$). 

## Theoretical Background

### Historical Context

The Mandelbrot set was discovered by **Benoit B. Mandelbrot** in 1980 while working at IBM's Thomas J. Watson Research Center. Mandelbrot was investigating the work of French mathematicians **Gaston Julia** and **Pierre Fatou**, who in 1918 had studied the iteration of rational functions in the complex plane without the benefit of computer visualization.

Julia and Fatou proved remarkable theorems about these iterations, but could only sketch the resulting sets by hand. When Mandelbrot used IBM's computers to visualize these iterations, he discovered an object of breathtaking complexity—a set whose boundary contains infinite detail at every scale. He named these irregular, self-similar shapes "fractals" (from the Latin *fractus*, meaning broken).

The Mandelbrot set is often called "the most complex object in mathematics" because its boundary has infinite length, yet it is defined by one of the simplest possible formulas.

### Complex Numbers: A Primer

To understand the Mandelbrot set, we must first understand complex numbers. A **complex number** extends the real number line into a two-dimensional plane:

$$z = a + bi$$

where:
- $a$ is the **real part** (horizontal axis)
- $b$ is the **imaginary part** (vertical axis)
- $i$ is the **imaginary unit**, defined by $i^2 = -1$

```
        Imaginary (Im)
              │
           2i ┤         • z = 1 + 2i
              │        ╱
           1i ┤       ╱
              │      ╱
    ──────────┼─────●─────────── Real (Re)
          -2  │  0  1  2
              │
          -1i ┤
              │
          -2i ┤
```

The **magnitude** (or modulus) of a complex number is its distance from the origin:

$$|z| = |a + bi| = \sqrt{a^2 + b^2}$$

Complex multiplication follows the rule $(a + bi)(c + di) = (ac - bd) + (ad + bc)i$.

For squaring: $(a + bi)^2 = a^2 - b^2 + 2abi$

### The Mandelbrot Iteration

The Mandelbrot set is defined by the behavior of a simple iteration. For each point $c$ in the complex plane, we compute the sequence:

$$z_0 = 0$$
$$z_{n+1} = z_n^2 + c$$

**Step-by-step example** for $c = 0.25 + 0i$:

| n | $z_n$ | $z_n^2$ | $z_{n+1} = z_n^2 + c$ | $\|z_n\|$ |
|---|-------|---------|----------------------|----------|
| 0 | 0 | 0 | 0.25 | 0 |
| 1 | 0.25 | 0.0625 | 0.3125 | 0.25 |
| 2 | 0.3125 | 0.0977 | 0.3477 | 0.3125 |
| 3 | 0.3477 | 0.1209 | 0.3709 | 0.3477 |
| ... | ... | ... | ... | ... |
| ∞ | 0.5 | 0.25 | 0.5 | 0.5 |

This sequence converges to 0.5, so $c = 0.25$ is **in** the Mandelbrot set.

**Counterexample** for $c = 1 + 0i$:

| n | $z_n$ | $\|z_n\|$ |
|---|-------|----------|
| 0 | 0 | 0 |
| 1 | 1 | 1 |
| 2 | 2 | 2 |
| 3 | 5 | 5 |
| 4 | 26 | 26 |
| 5 | 677 | 677 |

This sequence escapes to infinity, so $c = 1$ is **outside** the Mandelbrot set.

### Why the Escape Radius is 2

**Theorem**: If $|z_n| > 2$ at any iteration, the sequence will diverge to infinity.

**Proof**: Suppose $|z_n| > 2$ and $|c| \leq 2$ (the viewing window). Then:

$$|z_{n+1}| = |z_n^2 + c| \geq |z_n|^2 - |c| > |z_n|^2 - 2$$

Since $|z_n| > 2$, we have $|z_n|^2 > 2|z_n|$, so:

$$|z_{n+1}| > |z_n|^2 - 2 > 2|z_n| - 2 = 2(|z_n| - 1) > |z_n|$$

Thus the magnitude grows without bound. QED.

This is why we use $|z| > 2$ as the **bailout condition**—once exceeded, we know the point escapes.

### The Anatomy of the Mandelbrot Set

```
        Im(c)
          │
       1.5├─────────────────────────────────────┐
          │                                     │
          │         ╭─────╮                     │
       1.0├        ╱  •    ╲     Antenna        │
          │       │    •    │    (filaments)    │
          │      ╱    Main   ╲        │         │
       0.5├     │   Cardioid  │───────┼─────    │
          │     │      •      │       │         │
          ├─────●──────●──────●───────●─────────┤ Re(c)
          │     │      •      │   bulbs         │
      -0.5├     │             │                 │
          │      ╲           ╱                  │
          │       │         │                   │
      -1.0├        ╲       ╱                    │
          │         ╰─────╯                     │
      -1.5├─────────────────────────────────────┘
          │
        -2.0    -1.5    -1.0    -0.5     0      0.5     1.0
```

The Mandelbrot set has several notable features:

1. **Main Cardioid**: The large heart-shaped region contains all $c$ values where the iteration converges to a single fixed point. Its boundary is given by $c = \frac{e^{i\theta}}{2} - \frac{e^{2i\theta}}{4}$.

2. **Period-2 Bulb**: The large circular bulb to the left of the cardioid contains $c$ values where the orbit oscillates between two values.

3. **Infinite Bulbs**: Smaller bulbs attach at precise points, each representing higher-period cycles (3, 4, 5, ...).

4. **The Antenna**: The thin filament extending to $c = -2$ on the real axis.

5. **Self-Similarity**: Zooming into the boundary reveals miniature copies of the entire set—a hallmark of fractals.

### The Escape-Time Coloring Algorithm

Points inside the set are colored black (they never escape). Points outside are colored based on **how quickly they escape**:

```
iteration_count = 0
while |z| ≤ 2 and iteration_count < MAX_ITER:
    z = z² + c
    iteration_count += 1

if iteration_count == MAX_ITER:
    color = BLACK  // In the set
else:
    color = palette[iteration_count % palette_size]
```

This creates the characteristic banding patterns around the set, where each color band represents points that escaped at the same iteration count.

### Computational Characteristics

The Mandelbrot computation has distinctive performance properties:

1. **Floating-Point Intensive**: Each iteration requires:
   - 3 multiplications (for $z^2$)
   - 2 additions (for $+ c$)
   - 2 multiplications + 1 addition (for $|z|^2$)

2. **Branch-Heavy**: The bailout check (`|z| > 2`) executes every iteration, creating unpredictable branches that can stall CPU pipelines.

3. **Variable Workload**: Points deep inside the set require all 1000 iterations, while points far outside escape in 1-2 iterations. This creates a 1000:1 workload imbalance.

4. **Embarrassingly Parallel**: Each pixel's computation is completely independent. No synchronization or communication is needed between threads, making this an ideal benchmark for parallel efficiency.

```
┌─────────────────────────────────────────────────────┐
│ Thread 0  │ Thread 1  │ Thread 2  │ Thread 3  │ ... │
├───────────┼───────────┼───────────┼───────────┼─────┤
│ Row 0     │ Row 1     │ Row 2     │ Row 3     │     │
│ Row 4     │ Row 5     │ Row 6     │ Row 7     │     │  (Dynamic
│ Row 8     │ (waiting) │ Row 9     │ Row 10    │     │  Scheduling)
│ Row 11    │ Row 12    │ (done)    │ Row 13    │     │
└───────────┴───────────┴───────────┴───────────┴─────┘
```

### Complexity Analysis

- **Time Complexity**: $O(W \times H \times I)$ where $W$ = width, $H$ = height, $I$ = max iterations
- **Space Complexity**: $O(W \times H)$ for the pixel buffer
- **Parallel Speedup**: Near-linear with core count, limited only by work distribution

For our benchmark: $4000 \times 4000 \times 1000 = 16 \times 10^{12}$ potential iterations (though most pixels escape early).

### Real-World Applications

1. **Benchmark Standard**: The Mandelbrot set is a classic benchmark for floating-point performance because it stresses FPU throughput, branch prediction, and parallel scalability.

2. **Chaos Theory Visualization**: The Mandelbrot set is the "parameter space" for Julia sets—each point $c$ in the Mandelbrot set corresponds to a connected Julia set.

3. **Fractal Art**: Artists use deep zooms and creative coloring to produce stunning visualizations.

4. **GPU Computing**: The embarrassingly parallel nature makes Mandelbrot rendering a standard GPU demo.

5. **Numerical Precision Testing**: Deep zooms require arbitrary-precision arithmetic, testing numerical libraries.

## Methodology
*   **Parallelism**: This is a multi-core benchmark. It uses all available CPU threads.
*   **Warm-up**: 10% of the image (rows) is rendered before timing to stabilize CPU frequency and JIT.
*   **Work-Stealing**: Uses dynamic scheduling to ensure that harder-to-calculate regions of the fractal don't stall threads.

## Language Observations

### C & C++
*   **Parallelism**: Uses **OpenMP** (`#pragma omp parallel for schedule(dynamic, 1)`).
*   **Fairness**: Uses standard math without shortcuts. Dynamic scheduling is used to prevent the " fractal edge" problem where some threads finish much faster than others.

### Rust
*   **Winner**: Usually the fastest in this category.
*   **Parallelism**: Uses the **Rayon** library for work-stealing. Rayon's scheduler is exceptionally efficient on modern many-core ARM CPUs, often outperforming OpenMP's default implementation.

### Java
*   **Surprise Performance**: Java's `IntStream.range().parallel()` is very competitive here.
*   **Parallel Streams**: The JVM's ForkJoinPool manages the workload efficiently. On some ARM architectures, Java beats the C/C++ OpenMP implementations due to more modern load-balancing in its stream library.

### Zig
*   **Implementation**: Uses manual thread management via `std.Thread` and an atomic counter for row distribution.
*   **Warm-up**: Explicitly runs a 10% warm-up phase to match the methodology of other languages.
*   **Performance**: Highly competitive, effectively matching C/C++ performance profiles with `ReleaseFast`.

### Fortran
*   **Winner**: Fortran takes the lead in this specific benchmark on ARM.
*   **Parallelism**: Uses OpenMP directives (`!$omp parallel do schedule(dynamic, 1)`), ensuring an identical scheduling strategy to the C baseline.
*   **Math**: The GCC Fortran backend (`gfortran`) generates exceptionally efficient code for the core complex number arithmetic loop.

## Verification
*   **Visual**: A `.ppm` image is generated and compared.
*   **Checksum**: Pixel-sum verification ensured.

## Latest Results (2026-01-10)

| Language | Mean Time | Throughput | Checksum |
|----------|-----------|------------|----------|
| **Fortran** | **1251 ms** | **12.87 MPix/s** | Unique |
| **Zig** | 1762 ms | 9.79 MPix/s | Matches Java |
| **C** | 1783 ms | 9.24 MPix/s | Matches C++ |
| **Rust** | 2007 ms | 8.54 MPix/s | Unique |
| **C++** | 1975 ms | 8.17 MPix/s | Matches C |
| **Java** | 2179 ms | 7.36 MPix/s | Matches Zig |
