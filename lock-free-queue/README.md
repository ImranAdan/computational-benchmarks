# Lock-Free Queue Benchmark (MPMC)

A high-contention multi-producer multi-consumer (MPMC) queue benchmark using Dmitry Vyukov's bounded lock-free algorithm.

## Theoretical Background
In multi-threaded programming, passing data between threads safely typically requires a `Mutex` (lock) to prevent race conditions. However, locks can cause performance bottlenecks due to thread sleeping and waking (context switches).

**Lock-Free** programming uses atomic hardware instructions (like CAS or atomic increments) to manage shared data without ever putting a thread to sleep.
*   **Bounded MPMC Queue**: A fixed-size ring buffer where multiple producers and multiple consumers operate simultaneously.
*   **The Challenge**: The main difficulty is avoiding "false sharing"—where independent atomic counters (like `head` and `tail`) sit on the same CPU cache line. If one core writes to `head`, the cache line is invalidated for the core trying to read `tail`, causing massive slowdowns ("cache line bouncing").

This benchmark tests the language's memory model (atomics) and its ability to control memory layout (padding/alignment) to prevent cache thrashing.

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

### Zig
*   **Atomic Primitives**: Uses `std.atomic.Value` for thread-safe counters.
*   **Padding**: Manual padding struct wrappers are used to ensure 64-byte alignment, matching the C/Rust strategy.
*   **Performance**: Falls between C++ and Java. It manages contention better than Java but trails the raw pointer efficiency of C.

## Verification
*   **Checksum**: The sum of all dequeued values must match the expected sequence total.
*   **Status**: PASSED.

## Latest Results (2026-01-10)

| Language | Mean Time | Throughput | Status |
|----------|-----------|------------|--------|
| **C** | **509 ms** | **7.99 M/s** | OK |
| **C++** | 533 ms | 7.59 M/s | OK |
| **Zig** | 688 ms | 5.85 M/s | OK |
| **Rust** | 995 ms | 4.07 M/s | OK |
| **Java** | 1518 ms | 2.64 M/s | OK |