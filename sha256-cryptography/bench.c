#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#include "sha256.h"

static inline double now_ms(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (double)ts.tv_sec * 1000.0 + (double)ts.tv_nsec / 1.0e6;
}

int main() {
    const int num_hashes = 1000000;
    const uint8_t *base_message = (const uint8_t *)"Computational Benchmarks - Language Performance Lab";
    size_t base_len = strlen((const char *)base_message);
    
    double start = now_ms();
    uint8_t final_hash[32];

    for (uint32_t nonce = 0; nonce < num_hashes; nonce++) {
        SHA256_CTX ctx;
        sha256_init(&ctx);
        sha256_update(&ctx, base_message, base_len);
        
        uint8_t nonce_bytes[4];
        nonce_bytes[0] = (nonce >> 24) & 0xFF;
        nonce_bytes[1] = (nonce >> 16) & 0xFF;
        nonce_bytes[2] = (nonce >> 8) & 0xFF;
        nonce_bytes[3] = nonce & 0xFF;
        
        sha256_update(&ctx, nonce_bytes, 4);
        sha256_final(&ctx, final_hash);
    }

    double elapsed_ms = now_ms() - start;
    double hashes_per_sec = (double)num_hashes / (elapsed_ms / 1000.0);

    printf("elapsed_ms=%.3f hashes_per_sec=%.0f checksum=", elapsed_ms, hashes_per_sec);
    for (int i = 0; i < 32; i++) printf("%02x", final_hash[i]);
    printf("\n");

    return 0;
}
