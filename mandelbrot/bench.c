#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <stdint.h>
#include <omp.h>

static inline double now_ms(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (double)ts.tv_sec * 1000.0 + (double)ts.tv_nsec / 1.0e6;
}

uint32_t mandelbrot(double c_re, double c_im, uint32_t max_iter) {
    double z_re = 0.0;
    double z_im = 0.0;
    for (uint32_t i = 0; i < max_iter; i++) {
        double z_re2 = z_re * z_re;
        double z_im2 = z_im * z_im;
        if (z_re2 + z_im2 > 4.0) return i;
        double new_z_im = 2.0 * z_re * z_im + c_im;
        z_re = z_re2 - z_im2 + c_re;
        z_im = new_z_im;
    }
    return max_iter;
}

int main() {
    const int width = 4000;
    const int height = 4000;
    const uint32_t max_iter = 1000;
    
    const double x_min = -2.0, x_max = 1.0;
    const double y_min = -1.5, y_max = 1.5;

    uint32_t *pixels = malloc(width * height * sizeof(uint32_t));

    double start = now_ms();

    #pragma omp parallel for schedule(dynamic, 1)
    for (int y = 0; y < height; y++) {
        double c_im = y_min + ((double)y / height) * (y_max - y_min);
        for (int x = 0; x < width; x++) {
            double c_re = x_min + ((double)x / width) * (x_max - x_min);
            pixels[y * width + x] = mandelbrot(c_re, c_im, max_iter);
        }
    }

    double elapsed_ms = now_ms() - start;

    FILE *f = fopen("mandelbrot.ppm", "w");
    fprintf(f, "P3\n%d %d\n255\n", width, height);
    for (int i = 0; i < width * height; i++) {
        uint32_t p = pixels[i];
        if (p == max_iter) {
            fprintf(f, "0 0 0 ");
        } else {
            uint8_t color = (uint8_t)(p % 256);
            fprintf(f, "%d %d 255 ", color, color);
        }
        if (i % 16 == 0) fprintf(f, "\n");
    }
    fclose(f);

    printf("elapsed_ms=%.3f mpixels_per_sec=%.3f\n", elapsed_ms, (double)(width * height) / (elapsed_ms * 1000.0));
    free(pixels);
    return 0;
}