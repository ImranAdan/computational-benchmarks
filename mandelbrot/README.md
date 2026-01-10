# Mandelbrot Set Benchmark

This benchmark renders a $4000 \times 4000$ image of the Mandelbrot set set fractal ($max\_iter=1000$). 

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

## Verification
*   **Visual**: A `.ppm` image is generated and compared.
*   **Checksum**: Pixel-sum verification ensured.
