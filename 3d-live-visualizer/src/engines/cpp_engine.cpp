#include <cmath>
#include <vector>

extern "C" {
    void transform_cpp(const float* vertices, float* output, int count, float angle) {
        float cos_a = std::cos(angle);
        float sin_a = std::sin(angle);

        // Using a standard loop to mirror the C version for a fair comparison
        for (int i = 0; i < count; i++) {
            float px = vertices[i * 3 + 0];
            float py = vertices[i * 3 + 1];
            float pz = vertices[i * 3 + 2];

            float x1 = px * cos_a + pz * sin_a;
            float z1 = -px * sin_a + pz * cos_a;

            float y2 = py * cos_a - z1 * sin_a;
            float z2 = py * sin_a + z1 * cos_a;

            output[i * 3 + 0] = x1;
            output[i * 3 + 1] = y2;
            output[i * 3 + 2] = z2;
        }
    }
}
