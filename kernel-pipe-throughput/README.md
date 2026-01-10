# Kernel Pipe Throughput Benchmark

This benchmark measures the throughput of inter-process communication (IPC) using standard OS kernel pipes.

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

## Verification
*   **Checksum**: The child's XOR checksum must match the parent's data pattern.
*   **Status**: PASSED.