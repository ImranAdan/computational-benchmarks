# 3D Vertex Transform Benchmark

This benchmark simulates a "live" 3D graphics pipeline stage, transforming 250,000 vertices per frame for 100 frames.

## Theoretical Background

### Historical Context

The mathematics of 3D vertex transformation predates computers. **Leonhard Euler** (1707–1783) developed rotation matrices and discovered the "gimbal lock" problem. **August Ferdinand Möbius** introduced homogeneous coordinates in 1827.

The application to computer graphics began in the 1960s:
- **1963**: Ivan Sutherland's "Sketchpad" at MIT—the first interactive graphics system
- **1968**: Sutherland invents the first VR headset ("Sword of Damocles")
- **1974**: Ed Catmull develops the first 3D rendering pipeline at Utah
- **1999**: NVIDIA GeForce 256—first consumer GPU with hardware T&L (Transform & Lighting)

Today, GPUs perform billions of vertex transformations per second, but understanding the CPU implementation reveals the mathematical foundations.

### The Graphics Pipeline: Coordinate Spaces

A vertex travels through several coordinate spaces before reaching your screen:

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│   MODEL     │────▶│    WORLD    │────▶│    VIEW     │
│   SPACE     │     │    SPACE    │     │   (Camera)  │
└─────────────┘     └─────────────┘     └─────────────┘
  Local coords        Global coords      Camera-relative
  (0,0,0)=center     (where in world)    (0,0,0)=camera

       │                                      │
       │              Model Matrix            │
       ▼                                      ▼
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│    CLIP     │────▶│     NDC     │────▶│   SCREEN    │
│   SPACE     │     │ (-1 to +1)  │     │   SPACE     │
└─────────────┘     └─────────────┘     └─────────────┘
  After projection    Normalized          Pixel coords
  (homogeneous)       Device Coords       (0,0)=top-left
```

This benchmark implements the View Transform (rotation) and Perspective Projection stages.

### Homogeneous Coordinates: The Fourth Dimension

In standard 3D coordinates, we cannot represent perspective projection or translation as matrix multiplication. **Homogeneous coordinates** add a fourth component $w$:

$$\vec{v} = \begin{pmatrix} x \\ y \\ z \end{pmatrix} \Rightarrow \vec{v}_h = \begin{pmatrix} x \\ y \\ z \\ 1 \end{pmatrix}$$

To convert back: $(x_h, y_h, z_h, w) \rightarrow (x_h/w, \; y_h/w, \; z_h/w)$

This elegant trick enables:
1. **Translation**: Impossible with 3×3 matrices, trivial with 4×4
2. **Perspective**: Division by $z$ becomes division by $w$ after projection
3. **Composition**: Multiple transforms can be combined into a single 4×4 matrix

### Rotation Matrices: Derivation from Trigonometry

Rotation around an axis is defined by how sine and cosine mix the two perpendicular axes:

**Rotation around X-axis (pitch)**:
```
Y                    Y'
│   P(y,z)            │   P'(y',z')
│  ╱                  │  ╱
│ ╱                   │ ╱
│╱  θ                 │╱
└─────── Z     →      └─────── Z'
```

$$R_x(\theta) = \begin{pmatrix} 1 & 0 & 0 \\ 0 & \cos\theta & -\sin\theta \\ 0 & \sin\theta & \cos\theta \end{pmatrix}$$

**Rotation around Y-axis (yaw)**:
$$R_y(\theta) = \begin{pmatrix} \cos\theta & 0 & \sin\theta \\ 0 & 1 & 0 \\ -\sin\theta & 0 & \cos\theta \end{pmatrix}$$

**Rotation around Z-axis (roll)**:
$$R_z(\theta) = \begin{pmatrix} \cos\theta & -\sin\theta & 0 \\ \sin\theta & \cos\theta & 0 \\ 0 & 0 & 1 \end{pmatrix}$$

**Derivation for $R_z$**: A point $(x, y)$ at angle $\alpha$ and radius $r$ is:
$$x = r\cos\alpha, \quad y = r\sin\alpha$$

After rotating by $\theta$:
$$x' = r\cos(\alpha + \theta) = r\cos\alpha\cos\theta - r\sin\alpha\sin\theta = x\cos\theta - y\sin\theta$$
$$y' = r\sin(\alpha + \theta) = r\sin\alpha\cos\theta + r\cos\alpha\sin\theta = y\cos\theta + x\sin\theta$$

This is exactly what the matrix computes.

### Euler Angles and Gimbal Lock

**Euler angles** represent any 3D rotation as three sequential rotations around fixed axes (e.g., Z-Y-X order). However, they suffer from **gimbal lock**:

```
                    GIMBAL LOCK

Normal state:                    Locked state (Y = 90°):
    ┌─────┐                          ┌─────┐
   ╱│     │╲   3 degrees           ╱│     │╲   Only 2 degrees
  ╱ │  X  │ ╲  of freedom         ╱ │  X  │ ╲  of freedom!
 ╱  │     │  ╲                   ╱  │ =Z  │  ╲
│   └──┬──┘   │                 │   └──┬──┘   │  X and Z
│  ╱   │   ╲  │                 │  ╱   │   ╲  │  now rotate
│ ╱  Y │    ╲ │                 │ ╱  Y │    ╲ │  the same axis!
│╱─────┼─────╲│                 │╱─────┼─────╲│
└──────┴──────┘                 └──────┴──────┘
```

When the Y rotation reaches 90°, the X and Z axes align, and we lose a degree of freedom. Quaternions solve this problem but are beyond this benchmark's scope.

### Perspective Projection: Why Distant Objects Appear Smaller

Human vision perceives depth because light rays converge at the eye. In graphics, we simulate this with **perspective division**:

```
                    Frustum (view volume)

        Near Plane                    Far Plane
            │                             │
            │    ╱─────────────────────╲  │
            │   ╱                       ╲ │
            │  ╱                         ╲│
  Eye ●────────●──────────────────────────●
            │  ╲                         ╱│
            │   ╲                       ╱ │
            │    ╲─────────────────────╱  │
            │                             │
         z_near                        z_far
```

The perspective projection formula:

$$x_{screen} = \frac{x_{view} \cdot f}{z_{view}}$$

Where $f$ is the **focal length** (derived from field-of-view angle):

$$f = \frac{1}{\tan(FOV/2)}$$

For our benchmark:
$$x_{screen} = \frac{x_{view} \cdot scale}{z_{view} + distance}$$

The `+ distance` shifts the projection center, preventing division by zero for vertices at $z = 0$.

### Fibonacci Sphere: Evenly Distributed Test Points

To generate a uniform distribution of points on a sphere (avoiding clustering at poles), we use the **Fibonacci lattice**:

```
        ●           Golden angle = 2π(1 - 1/φ) ≈ 137.5°
       ╱│╲          where φ = (1 + √5)/2 ≈ 1.618
      ╱ │ ╲
     ●──┼──●        Each point is offset from the previous
    ╱│  │  │╲       by the golden angle around the vertical axis,
   ● │  ●  │ ●      and evenly spaced vertically.
    ╲│     │╱
     ●─────●        Result: nearly uniform coverage with no
      ╲   ╱         clustering at poles.
       ╲ ╱
        ●
```

The algorithm:

```
for i in 0..N:
    y = 1 - (2 * i / (N - 1))      // Range: -1 to +1
    radius = sqrt(1 - y²)
    theta = golden_ratio * i       // Golden angle spiral
    x = cos(theta) * radius
    z = sin(theta) * radius
```

This creates a visually uniform distribution, unlike latitude/longitude grids which cluster at poles.

### Trigonometric Functions: Computational Cost

The rotation matrix requires computing $\sin(\theta)$ and $\cos(\theta)$. These are the most expensive operations in the transform:

| Operation | Approximate Cycles (Modern CPU) |
|-----------|--------------------------------|
| Add/Sub | 1 |
| Multiply | 3-5 |
| Division | 10-20 |
| `sin/cos` | 50-100 |

**Optimization techniques**:
1. **Lookup tables**: Precompute sin/cos for discrete angles
2. **CORDIC**: Hardware algorithm using only shifts and adds
3. **Polynomial approximation**: Taylor series or Chebyshev
4. **Simultaneous sincos**: Many CPUs can compute both in one instruction

In this benchmark, we compute sin/cos once per frame (not per vertex), amortizing the cost.

### SIMD Vectorization Potential

The transform loop is ideal for SIMD (Single Instruction, Multiple Data):

```
                     SCALAR                              SIMD (4-wide)

For each vertex:                          For 4 vertices simultaneously:
┌────────────────────────┐               ┌────────────────────────────────────┐
│ x' = x×cosθ - z×sinθ   │               │ x'₀₁₂₃ = x₀₁₂₃×cosθ - z₀₁₂₃×sinθ   │
│ y' = y                 │       →       │ y'₀₁₂₃ = y₀₁₂₃                     │
│ z' = x×sinθ + z×cosθ   │               │ z'₀₁₂₃ = x₀₁₂₃×sinθ + z₀₁₂₃×cosθ   │
└────────────────────────┘               └────────────────────────────────────┘
     4 iterations                                   1 iteration
```

Modern CPUs support:
- **SSE/AVX** (x86): 4 floats or 4 doubles per instruction
- **NEON** (ARM): 4 floats per instruction
- **SVE** (ARM v8.2+): Variable-length vectors up to 2048 bits

Compilers can auto-vectorize this loop if:
1. Data is contiguous in memory (arrays, not linked lists)
2. No aliasing between input and output
3. No loop-carried dependencies

### Complexity Analysis

For $N$ vertices and $F$ frames:

| Metric | Value |
|--------|-------|
| Matrix operations per vertex | 9 muls + 6 adds |
| Projection per vertex | 2 divs + 2 adds |
| Trig per frame | 2 (sin, cos) |
| Total FLOPs | $F \times (2 + N \times 19) \approx 19NF$ |

Our benchmark: $100 \times 250{,}000 \times 19 = 475$ million FLOPs.

### Real-World Applications

1. **Video Games**: Every frame transforms millions of vertices for characters, environments, and effects.

2. **CAD/CAM**: Engineering software transforms complex 3D models for viewing and manufacturing simulation.

3. **Virtual/Augmented Reality**: Head tracking requires real-time coordinate transforms at 90+ FPS.

4. **Scientific Visualization**: Molecular dynamics, weather simulations, and medical imaging.

5. **Film Production**: CGI rendering (Pixar, ILM) applies these transforms billions of times per frame.

6. **Robotics**: Forward and inverse kinematics use similar rotation mathematics.

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
