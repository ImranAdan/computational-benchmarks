# Lock-Free Queue Benchmark (MPMC)

A high-contention multi-producer multi-consumer (MPMC) queue benchmark using Dmitry Vyukov's bounded lock-free algorithm.

## Methodology
*   **Contention**: 4 producers and 4 consumers simultaneously access a single queue.
*   **Workload**: 4,000,000 total operations.
*   **False Sharing**: Critical positions (`enqueue_pos`, `dequeue_pos`) are isolated on different cache lines.
*   **Spin Hints**: Uses architecture-specific spin-pause hints (`isb` on ARM, `Thread.onSpinWait()` in Java) to reduce CPU cache-coherency traffic.

## Language Observations

### C & C++
*   **Alignment**: Uses explicit `_Alignas(64)` to ensure that the producer and consumer counters don't reside on the same cache line. This is crucial for avoiding cache-line bouncing.
*   **Winner**: Minimal abstraction over atomic primitives makes C++ very fast here.

### Rust
*   **Memory Model**: Rust's `AtomicU64` mapping directly to native instructions ensures competitive performance.
*   **Fairness**: Standardizes on the same alignment strategy as C.

### Java
*   **Padding**: Since Java lacks `Alignas`, we use manual field padding (class hierarchy with dummy `long` fields) to isolate the `AtomicLong` counters.
*   **Performance**: Competitive but slightly slower due to the overhead of `AtomicLong` object access vs native volatile memory access.

## Verification
*   **Checksum**: The sum of all dequeued values must match the expected sequence total.
*   **Status**: PASSED.