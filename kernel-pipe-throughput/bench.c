#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>
#include <sys/wait.h>
#include <stdint.h>

#define TOTAL_BYTES (10ULL * 1024 * 1024 * 1024) // 10 GB
#define BUFFER_SIZE (64 * 1024)                  // 64 KB

static inline double now_ms(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (double)ts.tv_sec * 1000.0 + (double)ts.tv_nsec / 1.0e6;
}

int main() {
    int pipe_fds[2];
    if (pipe(pipe_fds) == -1) {
        perror("pipe");
        return 1;
    }

    pid_t pid = fork();
    if (pid == -1) {
        perror("fork");
        return 1;
    }

    if (pid == 0) { // Child: Reader
        close(pipe_fds[1]);
        uint8_t *buffer = malloc(BUFFER_SIZE);
        uint64_t total_received = 0;
        uint8_t checksum = 0;

        while (total_received < TOTAL_BYTES) {
            ssize_t n = read(pipe_fds[0], buffer, BUFFER_SIZE);
            if (n <= 0) break;
            for (ssize_t i = 0; i < n; i++) checksum ^= buffer[i];
            total_received += n;
        }
        
        printf("CHECK:%02x\n", checksum);
        free(buffer);
        close(pipe_fds[0]);
        exit(0);
    } else { // Parent: Writer
        close(pipe_fds[0]);
        uint8_t *buffer = malloc(BUFFER_SIZE);
        // Fill buffer with some data
        for (int i = 0; i < BUFFER_SIZE; i++) buffer[i] = (uint8_t)i;

        double start = now_ms();
        uint64_t total_sent = 0;

        while (total_sent < TOTAL_BYTES) {
            ssize_t n = write(pipe_fds[1], buffer, BUFFER_SIZE);
            if (n <= 0) break;
            total_sent += n;
        }

        double elapsed_ms = now_ms() - start;
        printf("elapsed_ms=%.3f throughput_gb_sec=%.3f\n", 
               elapsed_ms, (TOTAL_BYTES / 1024.0 / 1024.0 / 1024.0) / (elapsed_ms / 1000.0));

        close(pipe_fds[1]);
        wait(NULL);
        free(buffer);
    }

    return 0;
}
