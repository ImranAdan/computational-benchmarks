# Kernel Pipe Throughput Benchmark

This benchmark measures the throughput of inter-process communication (IPC) using standard OS kernel pipes.

## Theoretical Background

### Historical Context

The Unix pipe was invented by **Doug McIlroy** at Bell Labs in 1973. McIlroy had been advocating for a mechanism to connect programs since 1964, famously writing:

> "We should have some ways of coupling programs like garden hose—screw in another segment when it becomes necessary to massage data in another way."

**Ken Thompson** implemented pipes overnight, adding the `|` operator to the shell. This simple mechanism became foundational to the Unix philosophy: "Write programs that do one thing and do it well. Write programs to work together."

The command `cat file.txt | grep "pattern" | wc -l` uses two pipes, connecting three processes in a pipeline—a paradigm still central to modern software development.

### The pipe() System Call

The `pipe()` system call creates an anonymous pipe—a unidirectional data channel existing only in kernel memory:

```c
int fd[2];
pipe(fd);
// fd[0] = read end (input)
// fd[1] = write end (output)
```

```
┌────────────────────────────────────────────────────────────────────┐
│                        PIPE CREATION                               │
├────────────────────────────────────────────────────────────────────┤
│                                                                    │
│   Process calls pipe(fd)                                           │
│           │                                                        │
│           ▼                                                        │
│   ┌───────────────────────────────────────────────────────┐        │
│   │                    KERNEL                              │        │
│   │  ┌─────────────────────────────────────────────────┐  │        │
│   │  │              Pipe Buffer (64 KB)                │  │        │
│   │  │  ┌─────────────────────────────────────────────┐│  │        │
│   │  │  │                                             ││  │        │
│   │  │  │  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ ││  │        │
│   │  │  │                                             ││  │        │
│   │  │  └─────────────────────────────────────────────┘│  │        │
│   │  │       ▲                              │          │  │        │
│   │  │       │                              ▼          │  │        │
│   │  │   write_ptr                      read_ptr       │  │        │
│   │  └─────────────────────────────────────────────────┘  │        │
│   │       ▲                                    │          │        │
│   │       │                                    │          │        │
│   └───────┼────────────────────────────────────┼──────────┘        │
│           │                                    │                   │
│       fd[1]                                fd[0]                   │
│    (write end)                           (read end)                │
│                                                                    │
└────────────────────────────────────────────────────────────────────┘
```

### The Kernel Pipe Buffer

The pipe buffer is a **circular buffer** (ring buffer) maintained in kernel memory:

| OS | Default Pipe Buffer Size |
|----|-------------------------|
| Linux | 64 KB (16 pages) |
| macOS | 16 KB |
| FreeBSD | 64 KB |
| Windows (named pipe) | 64 KB |

On Linux, the size can be modified via `fcntl(fd, F_SETPIPE_SZ, size)` up to `/proc/sys/fs/pipe-max-size` (typically 1 MB).

```
           Circular Buffer Implementation

    write_ptr                   read_ptr
        │                           │
        ▼                           ▼
    ┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┐
    │ A │ B │ C │ D │ E │   │   │   │   │ X │ Y │ Z │
    └───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┘
      0   1   2   3   4   5   6   7   8   9  10  11

    Data in buffer: [X, Y, Z, A, B, C, D, E]
    Available space: positions 5-8
    Wraps around from end to beginning
```

### Blocking Semantics and PIPE_BUF

Pipe I/O has specific blocking behavior:

| Operation | Condition | Behavior |
|-----------|-----------|----------|
| `write()` | Buffer full | Process sleeps until space available |
| `write()` | Buffer has space | Returns immediately after copying |
| `read()` | Buffer empty | Process sleeps until data available |
| `read()` | Buffer has data | Returns available data (may be partial) |

**PIPE_BUF Atomicity**: Writes of `PIPE_BUF` bytes or fewer (512 bytes to 4 KB depending on OS) are guaranteed atomic—they won't interleave with other writers. Larger writes may interleave.

### The fork() + pipe() Pattern

The canonical pattern for IPC via pipes:

```
1. Parent creates pipe: pipe(fd)
2. Parent forks: fork()
3. Child inherits both file descriptors
4. Each process closes the end it doesn't use
5. Parent writes, child reads (or vice versa)

┌─────────────────────────────────────────────────────────────────────┐
│                    FORK + PIPE PATTERN                              │
├─────────────────────────────────────────────────────────────────────┤
│                                                                     │
│  BEFORE FORK:                                                       │
│  ┌──────────────┐                                                   │
│  │    Parent    │──── fd[0], fd[1] ────▶ Pipe                       │
│  └──────────────┘                                                   │
│                                                                     │
│  AFTER FORK:                                                        │
│  ┌──────────────┐      fd[1]       ┌──────────────────┐             │
│  │    Parent    │────────●────────▶│   Kernel Pipe    │             │
│  │  (Producer)  │        │ write   │      Buffer      │             │
│  │  close(fd[0])│        │         └────────●─────────┘             │
│  └──────────────┘        │                  │ read                  │
│                          │                  │                       │
│                          │         ┌────────▼─────────┐             │
│                          │         │      Child       │             │
│                          │         │    (Consumer)    │             │
│                          │         │   close(fd[1])   │             │
│                          │         └──────────────────┘             │
│                          │                                          │
│                          └── File descriptors are INHERITED         │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

### Context Switch and System Call Overhead

Each `read()` and `write()` incurs significant overhead:

```
┌─────────────────────────────────────────────────────────────────────┐
│                    SYSTEM CALL PATH                                 │
├─────────────────────────────────────────────────────────────────────┤
│                                                                     │
│   USER SPACE                        KERNEL SPACE                    │
│                                                                     │
│   ┌─────────────┐                  ┌─────────────────────┐          │
│   │ Application │                  │ System Call Handler │          │
│   │             │                  │                     │          │
│   │  write(fd,  │ ─── syscall ───▶ │ 1. Validate args    │          │
│   │    buf, n)  │     instruction  │ 2. Copy from user   │          │
│   │             │                  │ 3. Append to buffer │          │
│   │             │ ◀── return ───── │ 4. Wake readers     │          │
│   └─────────────┘                  └─────────────────────┘          │
│                                                                     │
│   Cost breakdown:                                                   │
│   • Mode switch (user → kernel): ~100-1000 cycles                   │
│   • TLB flush (if needed): ~100-500 cycles                          │
│   • Data copy: ~1 cycle per byte                                    │
│   • Scheduler check: ~100 cycles                                    │
│   • Mode switch (kernel → user): ~100-1000 cycles                   │
│                                                                     │
│   Total overhead per syscall: ~1-5 microseconds                     │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

### The Copy Overhead Problem

Traditional pipes require **two copies** of the data:

```
Writer Process          Kernel              Reader Process
     │                    │                      │
     │  1. write()        │                      │
     │  ─────────────────▶│                      │
     │  [copy user→kernel]│                      │
     │                    │                      │
     │                    │  2. read()           │
     │                    │◀─────────────────────│
     │                    │  [copy kernel→user]  │
     │                    │                      │
     ▼                    ▼                      ▼

Total: 2 copies for each byte transferred
At 10 GB: 20 GB of memory bandwidth consumed
```

### Buffer Size Selection: Why 64 KB?

The benchmark uses 64 KB buffers for optimal throughput:

| Buffer Size | Syscalls for 10 GB | Syscall Overhead | Throughput |
|-------------|-------------------|------------------|------------|
| 512 B | 20,971,520 | Very high | Poor |
| 4 KB | 2,621,440 | High | Moderate |
| **64 KB** | **163,840** | **Low** | **Optimal** |
| 1 MB | 10,240 | Very low | Diminishing returns |

64 KB balances:
- Large enough to amortize syscall overhead
- Small enough to fit in L2 cache
- Matches common pipe buffer sizes
- Page-aligned (16 × 4 KB pages)

### XOR Checksum: Lightweight Verification

The benchmark uses XOR checksum for data integrity:

```
checksum = 0
for each byte b in data:
    checksum = checksum XOR b
```

Properties:
- **O(1) space**: Single byte accumulator
- **O(n) time**: Linear scan
- **Commutative**: Order doesn't matter
- **Weak**: Cannot detect even number of bit flips in same position

For benchmarking, XOR is ideal—it verifies data was transferred without adding computational overhead that would skew timing results.

### Zero-Copy Alternatives

Modern kernels offer zero-copy mechanisms that avoid the double-copy overhead:

| Mechanism | Description | Use Case |
|-----------|-------------|----------|
| `splice()` | Move data between pipes without user-space copy | Pipe-to-pipe, pipe-to-socket |
| `sendfile()` | Send file directly to socket | Web servers, file transfer |
| `vmsplice()` | Map user pages into pipe | Avoid kernel copy |
| `io_uring` | Async I/O with shared buffers | High-performance servers |

```
Traditional pipe:
  User → Kernel → User  (2 copies)

splice() between pipes:
  Kernel → Kernel  (0 user-space copies)

sendfile() for network:
  Kernel → NIC DMA  (0 CPU copies)
```

This benchmark intentionally uses traditional `read()`/`write()` to measure the baseline IPC overhead.

### Complexity Analysis

| Metric | Value |
|--------|-------|
| Data transferred | 10 GB |
| Buffer size | 64 KB |
| Number of writes | 163,840 |
| Syscall overhead | ~1-5 μs each |
| Theoretical minimum | ~160-820 ms overhead |
| Memory bandwidth used | 20 GB (2 copies) |

### Real-World Applications

1. **Shell Pipelines**: `cat file | grep pattern | sort | uniq` chains processes via pipes

2. **Build Systems**: Compilers often pipe preprocessor output to the compiler proper

3. **Containerization**: Docker uses pipes for stdin/stdout between host and container

4. **Logging**: Applications pipe logs to `syslog` or log aggregators

5. **Streaming Media**: Video transcoders pipe between demux → decode → encode → mux

6. **Databases**: PostgreSQL uses pipes for `COPY FROM PROGRAM` and parallel query workers

## Methodology
*   **Workload**: 10 GB of data is streamed from a parent process to a child process.
*   **Buffer Size**: 64 KB buffers are used for all `read/write` calls.
*   **Data Pattern**: A sequential byte pattern (0-255) is used to ensure no compression advantages.
*   **Verification**: The child process calculates an XOR checksum of all received bytes.

## Language Observations

### C & C++
*   **Winner**: Highest throughput achieved via direct POSIX `fork()` and `pipe()` syscalls.
*   **Low Overhead**: Minimal context switching and buffer copying between user-space and kernel-space.

### Rust
*   **Safe IPC**: Uses `std::process` which is an abstraction over POSIX `pipe/spawn`. 
*   **Performance**: Very close to C, proving that Rust's standard library abstractions have negligible overhead for I/O-bound tasks.

### Java
*   **IPC Abstraction**: Java uses `ProcessBuilder`, which is several layers removed from raw POSIX pipes.
*   **Throughput Gap**: The overhead of Java's `OutputStream` and `InputStream` (including additional internal buffering and synchronization) results in significantly lower throughput compared to native implementations.

### Zig
*   **Performance**: Faster than Java but trails C/C++ and Rust.
*   **Implementation**: Uses `std.os.pipe` and `fork`.
*   **Overhead**: While Zig provides low-level control, its standard library I/O wrappers may introduce slight overhead compared to raw syscalls in C, or the buffer management in the loop differs slightly in instruction cache efficiency.

### Fortran
*   **Status**: **N/A (Out of Scope)**
*   **Reasoning**: Fortran's standard library does not provide interfaces for POSIX-style process creation (`fork`) or inter-process pipes. Implementing this would require extensive `ISO_C_BINDING` wrappers to call C functions, effectively creating a C benchmark written in Fortran syntax, which defeats the purpose of testing the language's native capabilities.

## Verification
*   **Checksum**: The child's XOR checksum must match the parent's data pattern.
*   **Status**: PASSED.

## Latest Results (2026-01-10)

| Language | Mean Time | Bandwidth |
|----------|-----------|-----------|
| **C++** | **4641 ms** | **2.16 GB/s** |
| **Rust** | 4734 ms | 2.12 GB/s |
| **C** | 4787 ms | 2.10 GB/s |
| **Zig** | 6117 ms | 1.65 GB/s |
| **Java** | 18720 ms | 0.53 GB/s |