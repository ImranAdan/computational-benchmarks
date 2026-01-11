# Kernel Pipe Throughput Benchmark

This benchmark measures the throughput of inter-process communication (IPC) using standard OS kernel pipes.

## Theoretical Background
Inter-Process Communication (IPC) is the mechanism that allows different processes to manage shared data. A "pipe" is one of the oldest and most fundamental IPC mechanisms in Unix-like operating systems.

A pipe creates a unidirectional data channel that acts as a FIFO (First-In, First-Out) buffer managed by the operating system kernel.
1.  **Producer**: Writes data into the pipe. If the buffer is full, the writing process blocks (sleeps) until space is available.
2.  **Consumer**: Reads data from the pipe. If the buffer is empty, the reading process blocks until data is available.

This benchmark measures the overhead of context switching (switching the CPU between processes) and the efficiency of the OS syscall interface (`write` and `read`). It is a test of the language runtime's overhead on top of raw system calls.

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