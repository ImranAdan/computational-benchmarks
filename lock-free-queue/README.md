# Lock-Free Queue Benchmark (MPMC)

A high-contention multi-producer multi-consumer (MPMC) queue benchmark using Dmitry Vyukov's bounded lock-free algorithm.

## Theoretical Background

### Historical Context

Lock-free data structures emerged from the theoretical computer science community in the 1990s:

- **1991**: Maurice Herlihy proves that Compare-And-Swap (CAS) is a "universal primitive"—any lock-free data structure can be built from CAS.
- **1996**: Maged Michael and Michael Scott publish the first practical lock-free queue (single-producer/single-consumer).
- **2008**: Dmitry Vyukov publishes his bounded MPMC (multi-producer multi-consumer) queue algorithm, which this benchmark implements.
- **2011**: C++11 standardizes memory ordering semantics, making portable lock-free code possible.

The field is deeply connected to distributed systems and database theory, where similar consistency challenges arise.

### The Problem with Locks

Traditional mutexes (locks) have several pathological behaviors under contention:

```
┌────────────────────────────────────────────────────────────────────────┐
│                        PROBLEMS WITH LOCKS                             │
├────────────────────────────────────────────────────────────────────────┤
│                                                                        │
│  1. PRIORITY INVERSION                                                 │
│     Low-priority thread holds lock, high-priority thread waits         │
│                                                                        │
│     Thread A (high) ───────────□□□□□□□□□□□□□──────▶ (blocked!)         │
│     Thread B (low)  ─────■■■■■■■■■■■■■──────────────▶ (holds lock)     │
│                           └── lock ──┘                                 │
│                                                                        │
│  2. LOCK CONVOY                                                        │
│     Multiple threads pile up behind lock, serializing execution        │
│                                                                        │
│     Thread 1: ──■───────────────────────────▶                          │
│     Thread 2: ───□□□■───────────────────────▶                          │
│     Thread 3: ───□□□□□□■────────────────────▶                          │
│     Thread 4: ───□□□□□□□□□■─────────────────▶                          │
│                    └─ queue ─┘                                         │
│                                                                        │
│  3. DEADLOCK                                                           │
│     Two threads each hold a lock the other needs                       │
│                                                                        │
│     Thread A: has Lock1, wants Lock2 ──▶ BLOCKED                       │
│     Thread B: has Lock2, wants Lock1 ──▶ BLOCKED                       │
│                                                                        │
│  4. CONTEXT SWITCH OVERHEAD                                            │
│     OS must save/restore thread state when blocking                    │
│     Typical cost: 1-10 microseconds                                    │
│                                                                        │
└────────────────────────────────────────────────────────────────────────┘
```

### Progress Guarantees: Lock-Free vs Wait-Free

Non-blocking algorithms provide different levels of progress guarantees:

| Guarantee | Definition | Implication |
|-----------|------------|-------------|
| **Blocking** | Threads may wait indefinitely | Deadlock possible |
| **Lock-Free** | At least one thread makes progress | No deadlock, but starvation possible |
| **Wait-Free** | Every thread makes progress | No starvation, strongest guarantee |

This benchmark implements a **lock-free** queue: if threads are continuously active, the system as a whole makes progress, but individual threads may retry indefinitely under extreme contention.

### Compare-And-Swap (CAS): The Atomic Primitive

**CAS** is a hardware instruction that atomically:
1. Reads a memory location
2. Compares it to an expected value
3. If equal, writes a new value
4. Returns success/failure

```
CAS(address, expected, desired):
    ATOMICALLY:
        if *address == expected:
            *address = desired
            return SUCCESS
        else:
            return FAILURE (value changed by another thread)
```

**Hardware implementation**: Modern CPUs implement CAS using cache coherency protocols. The cache line is locked for the duration of the atomic operation.

| Architecture | CAS Instruction |
|--------------|-----------------|
| x86/x64 | `CMPXCHG` |
| ARM | `LDXR` / `STXR` (load-exclusive / store-exclusive) |
| RISC-V | `LR` / `SC` (load-reserved / store-conditional) |

### The ABA Problem

A subtle bug can occur with CAS-based algorithms:

```
Initial state: head → [A] → [B] → [C]

Thread 1:                           Thread 2:
1. Read head = A
                                    2. Pop A
                                    3. Pop B
                                    4. Push A (reused memory!)
                                    head → [A] → [C]
5. CAS(head, A, B)
   Succeeds! (head == A)
   BUT: A no longer points to B!
   CORRUPTION: head → [B] (freed memory!)
```

Thread 1's CAS succeeds because `head` still equals `A`, but the list structure has changed completely.

**Solutions**:
1. **Tagged pointers**: Increment a version counter with each CAS
2. **Hazard pointers**: Track which nodes are being accessed
3. **Epoch-based reclamation**: Delay freeing until no threads reference old data

Vyukov's algorithm uses sequence numbers (a form of tagged pointers) to prevent ABA.

### Memory Ordering: The Hardest Part

Modern CPUs reorder memory operations for performance. Without explicit ordering, threads may see inconsistent views of memory:

```
// Thread 1                    // Thread 2
data = 42;                     if (ready) {
ready = true;                      print(data);  // May print 0!
                               }
```

The CPU might reorder Thread 1's writes, making `ready = true` visible before `data = 42`.

**Memory orderings** (from weakest to strongest):

| Ordering | Guarantee | Use Case |
|----------|-----------|----------|
| **Relaxed** | Only atomicity, no ordering | Counters, statistics |
| **Acquire** | Reads after this see writes before matching Release | Lock acquisition |
| **Release** | Writes before this are visible to matching Acquire | Lock release |
| **AcqRel** | Both Acquire and Release | Read-modify-write |
| **SeqCst** | Total global order | When in doubt (slowest) |

```
┌─────────────────────────────────────────────────────────────────────┐
│                    ACQUIRE-RELEASE SEMANTICS                        │
├─────────────────────────────────────────────────────────────────────┤
│                                                                     │
│   Thread 1 (Producer)              Thread 2 (Consumer)              │
│                                                                     │
│   data = 42;                                                        │
│   more_data = 100;                                                  │
│        │                                                            │
│        ▼ (cannot move below)                                        │
│   flag.store(1, RELEASE) ─────────▶ flag.load(ACQUIRE)              │
│                                           │                         │
│                           (cannot move above) ▼                     │
│                                    print(data);      // 42          │
│                                    print(more_data); // 100         │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

### Dmitry Vyukov's Bounded MPMC Queue

This benchmark implements Vyukov's 2008 algorithm, considered the state-of-the-art for bounded MPMC queues. Key innovations:

1. **Power-of-two size**: Enables fast modulo via bitwise AND
2. **Sequence numbers per slot**: Prevents ABA without external tagging
3. **Separate head/tail counters**: Reduces contention between producers and consumers

**Data structure**:
```
struct Queue {
    Cell buffer[SIZE];       // Power of 2
    atomic<size_t> enqueue_pos;  // Next slot to write
    atomic<size_t> dequeue_pos;  // Next slot to read
};

struct Cell {
    atomic<size_t> sequence;  // Tracks slot availability
    T data;
};
```

**Enqueue algorithm** (simplified):
```
1. pos = enqueue_pos.load(relaxed)
2. cell = &buffer[pos & MASK]
3. seq = cell->sequence.load(acquire)
4. if (seq == pos):
       // Slot is free
       if CAS(enqueue_pos, pos, pos+1):
           cell->data = value
           cell->sequence.store(pos+1, release)
           return SUCCESS
5. elif (seq < pos):
       return FULL
6. else:
       // Another thread took this slot, retry
       goto 1
```

**Ring buffer visualization**:
```
                    enqueue_pos = 5
                         │
                         ▼
    ┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┐
    │  0  │  1  │  2  │  3  │  4  │  5  │  6  │  7  │  indices
    ├─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┤
    │  8  │  9  │  2  │  3  │  4  │  5  │  6  │  7  │  sequences
    ├─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┤
    │ D:a │ D:b │ F:c │ F:d │ F:e │ E   │ E   │ E   │  status
    └─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┘
                         ▲
                         │
                    dequeue_pos = 2

    D = Dequeued (seq > index + SIZE)
    F = Full (seq == index + 1)
    E = Empty (seq == index)
```

### False Sharing: The Hidden Performance Killer

**False sharing** occurs when independent variables share a cache line:

```
┌─────────────────────────────────────────────────────────────────────┐
│                    FALSE SHARING                                     │
├─────────────────────────────────────────────────────────────────────┤
│                                                                     │
│   Without padding (BAD):                                            │
│   ┌────────────────────────── 64-byte cache line ──────────────────┐│
│   │ enqueue_pos (8 bytes) │ dequeue_pos (8 bytes) │ ... padding    ││
│   └────────────────────────────────────────────────────────────────┘│
│                                                                     │
│   Core 0 writes enqueue_pos ──▶ Invalidates ENTIRE cache line      │
│   Core 1 writes dequeue_pos ──▶ Invalidates ENTIRE cache line      │
│                                                                     │
│   Result: Cache line bounces between cores at ~100 cycles each!    │
│                                                                     │
│   With padding (GOOD):                                              │
│   ┌───────────────── 64 bytes ──────────────┐┌─── 64 bytes ────────┐│
│   │ enqueue_pos │ ████ padding ████████████ ││ dequeue_pos │ pad  ││
│   └─────────────────────────────────────────┘└─────────────────────┘│
│                                                                     │
│   Core 0 and Core 1 operate on independent cache lines             │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

Cache line size is typically 64 bytes on modern CPUs (128 bytes on Apple M1/M2).

### Spin-Wait Hints: Being a Good Neighbor

When a CAS fails, the thread must retry. A tight spin loop wastes power and can delay other threads. **Spin-wait hints** tell the CPU to:

1. Reduce power consumption
2. Allow other hardware threads to proceed (hyperthreading)
3. Reduce memory traffic

| Architecture | Instruction | Effect |
|--------------|-------------|--------|
| x86/x64 | `PAUSE` | Delays ~40 cycles, reduces power |
| ARM | `ISB` | Instruction barrier, flushes pipeline |
| ARM | `YIELD` | Hint to scheduler |
| Java | `Thread.onSpinWait()` | JVM-provided hint (uses PAUSE or ISB) |

### Contention Patterns: 4P/4C Configuration

This benchmark uses 4 producers and 4 consumers to create high contention:

```
    Producer 0 ───┐              ┌─── Consumer 0
    Producer 1 ───┼──▶ QUEUE ──▶─┼─── Consumer 1
    Producer 2 ───┤              ├─── Consumer 2
    Producer 3 ───┘              └─── Consumer 3

    8 threads competing for 2 positions (head & tail)
```

This stresses:
1. CAS contention on `enqueue_pos` (4 producers)
2. CAS contention on `dequeue_pos` (4 consumers)
3. Cache coherency traffic between cores
4. Memory ordering correctness

### Complexity Analysis

| Metric | Value |
|--------|-------|
| Time per operation (amortized) | O(1) |
| Space | O(queue_size) = O(65536 cells) |
| CAS operations per enqueue | 1 (best case) to unbounded (high contention) |

Our benchmark: 4M operations across 8 threads.

### Real-World Applications

1. **Thread Pools**: Job queues distribute work to worker threads
2. **Message Passing**: Actor systems (Erlang, Akka) use lock-free queues for mailboxes
3. **Event Loops**: GUI frameworks and game engines dispatch events via queues
4. **Networking**: High-performance servers use lock-free queues for packet processing
5. **Databases**: Transaction log buffers often use lock-free ring buffers
6. **Audio/Video**: Real-time media pipelines require bounded latency (no lock waits)

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

### Fortran
*   **Status**: **N/A (Out of Scope)**
*   **Reasoning**: While modern Fortran (2008/2018) supports some atomic operations, implementing a complex lock-free ring buffer with explicit cache-line padding and pointer manipulation is highly non-idiomatic for the language. Fortran is designed for numerical array processing, not low-level systems programming or complex data structure concurrency.

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