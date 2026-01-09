#define _POSIX_C_SOURCE 200809L

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

static inline uint64_t lcg_next(uint64_t *state) {
    *state = (*state * 6364136223846793005ULL) + 1ULL;
    return *state;
}

static inline double lcg_double(uint64_t *state) {
    uint64_t v = lcg_next(state);
    // Map to [-1.0, 1.0]
    return ((v >> 11) * (1.0 / 9007199254740992.0)) * 2.0 - 1.0;
}

static double now_ms(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (double)ts.tv_sec * 1000.0 + (double)ts.tv_nsec / 1.0e6;
}

int main(void) {
    const int n = 1500;
    const int steps_warmup = 5;
    const int steps = 400;
    const double dt = 0.01;
    const double softening = 1e-9;

    double *restrict x = (double *)malloc(sizeof(double) * n);
    double *restrict y = (double *)malloc(sizeof(double) * n);
    double *restrict z = (double *)malloc(sizeof(double) * n);
    double *restrict vx = (double *)malloc(sizeof(double) * n);
    double *restrict vy = (double *)malloc(sizeof(double) * n);
    double *restrict vz = (double *)malloc(sizeof(double) * n);
    double *restrict m = (double *)malloc(sizeof(double) * n);

    if (!x || !y || !z || !vx || !vy || !vz || !m) {
        fprintf(stderr, "allocation failed\n");
        return 1;
    }

    uint64_t seed = 1;
    for (int i = 0; i < n; i++) {
        x[i] = lcg_double(&seed);
        y[i] = lcg_double(&seed);
        z[i] = lcg_double(&seed);
        vx[i] = lcg_double(&seed) * 0.1;
        vy[i] = lcg_double(&seed) * 0.1;
        vz[i] = lcg_double(&seed) * 0.1;
        m[i] = fabs(lcg_double(&seed)) + 0.5;
    }

    for (int step = 0; step < steps_warmup; step++) {
        for (int i = 0; i < n; i++) {
            double fx = 0.0, fy = 0.0, fz = 0.0;
            for (int j = 0; j < n; j++) {
                if (i == j) continue;
                double dx = x[j] - x[i];
                double dy = y[j] - y[i];
                double dz = z[j] - z[i];
                double dist2 = dx * dx + dy * dy + dz * dz + softening;
                double inv = 1.0 / sqrt(dist2);
                double inv3 = inv * inv * inv;
                double s = m[j] * inv3;
                fx += dx * s;
                fy += dy * s;
                fz += dz * s;
            }
            vx[i] += dt * fx;
            vy[i] += dt * fy;
            vz[i] += dt * fz;
        }
        for (int i = 0; i < n; i++) {
            x[i] += dt * vx[i];
            y[i] += dt * vy[i];
            z[i] += dt * vz[i];
        }
    }

    double start_ms = now_ms();
    for (int step = 0; step < steps; step++) {
        for (int i = 0; i < n; i++) {
            double fx = 0.0, fy = 0.0, fz = 0.0;
            for (int j = 0; j < n; j++) {
                if (i == j) continue;
                double dx = x[j] - x[i];
                double dy = y[j] - y[i];
                double dz = z[j] - z[i];
                double dist2 = dx * dx + dy * dy + dz * dz + softening;
                double inv = 1.0 / sqrt(dist2);
                double inv3 = inv * inv * inv;
                double s = m[j] * inv3;
                fx += dx * s;
                fy += dy * s;
                fz += dz * s;
            }
            vx[i] += dt * fx;
            vy[i] += dt * fy;
            vz[i] += dt * fz;
        }
        for (int i = 0; i < n; i++) {
            x[i] += dt * vx[i];
            y[i] += dt * vy[i];
            z[i] += dt * vz[i];
        }
    }
    double end_ms = now_ms();

    double checksum = 0.0;
    for (int i = 0; i < n; i++) {
        checksum += x[i] + y[i] + z[i] + vx[i] + vy[i] + vz[i];
    }

    printf("elapsed_ms=%.3f checksum=%.6f\n", end_ms - start_ms, checksum);

    free(x);
    free(y);
    free(z);
    free(vx);
    free(vy);
    free(vz);
    free(m);

    return 0;
}
