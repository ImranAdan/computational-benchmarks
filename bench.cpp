#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <time.h>

static inline uint64_t lcg_next(uint64_t *state) {
    *state = (*state * 6364136223846793005ULL) + 1ULL;
    return *state;
}

static inline double lcg_double(uint64_t *state) {
    uint64_t v = lcg_next(state);
    return ((v >> 11) * (1.0 / 9007199254740992.0)) * 2.0 - 1.0;
}

static double now_ms(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (double)ts.tv_sec * 1000.0 + (double)ts.tv_nsec / 1.0e6;
}

int main() {
    const int n = 1500;
    const int steps_warmup = 5;
    const int steps = 400;
    const double dt = 0.01;
    const double softening = 1e-9;

    double *__restrict__ x = (double *)std::malloc(sizeof(double) * n);
    double *__restrict__ y = (double *)std::malloc(sizeof(double) * n);
    double *__restrict__ z = (double *)std::malloc(sizeof(double) * n);
    double *__restrict__ vx = (double *)std::malloc(sizeof(double) * n);
    double *__restrict__ vy = (double *)std::malloc(sizeof(double) * n);
    double *__restrict__ vz = (double *)std::malloc(sizeof(double) * n);
    double *__restrict__ m = (double *)std::malloc(sizeof(double) * n);

    if (!x || !y || !z || !vx || !vy || !vz || !m) {
        std::fprintf(stderr, "allocation failed\n");
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
        m[i] = std::fabs(lcg_double(&seed)) + 0.5;
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
                double inv = 1.0 / std::sqrt(dist2);
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
                double inv = 1.0 / std::sqrt(dist2);
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

    std::printf("elapsed_ms=%.3f checksum=%.6f\n", end_ms - start_ms, checksum);

    std::free(x);
    std::free(y);
    std::free(z);
    std::free(vx);
    std::free(vy);
    std::free(vz);
    std::free(m);

    return 0;
}
