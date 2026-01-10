#include <math.h>

void transform_c(const float* vertices, float* output, int count, float angle) {
    float cos_a = cosf(angle);
    float sin_a = sinf(angle);

    for (int i = 0; i < count; i++) {
        float px = vertices[i * 3 + 0];
        float py = vertices[i * 3 + 1];
        float pz = vertices[i * 3 + 2];

        // Rotate around Y
        float x1 = px * cos_a + pz * sin_a;
        float z1 = -px * sin_a + pz * cos_a;

        // Rotate around X
        float y2 = py * cos_a - z1 * sin_a;
        float z2 = py * sin_a + z1 * cos_a;

        output[i * 3 + 0] = x1;
        output[i * 3 + 1] = y2;
        output[i * 3 + 2] = z2;
    }
}
