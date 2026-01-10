import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.stream.IntStream;

public class Bench {
    static int mandelbrot(double cRe, double cIm, int maxIter) {
        double zRe = 0.0;
        double zIm = 0.0;
        for (int i = 0; i < maxIter; i++) {
            double zRe2 = zRe * zRe;
            double zIm2 = zIm * zIm;
            if (zRe2 + zIm2 > 4.0) return i;
            double newZIm = 2.0 * zRe * zIm + cIm;
            zRe = zRe2 - zIm2 + cRe;
            zIm = newZIm;
        }
        return maxIter;
    }

    public static void main(String[] args) {
        final int width = 4000;
        final int height = 4000;
        final int maxIter = 1000;
        final double xMin = -2.0, xMax = 1.0;
        final double yMin = -1.5, yMax = 1.5;

        int[] pixels = new int[width * height];

        // Warm-up (10% of rows)
        IntStream.range(0, height / 10).parallel().forEach(y -> {
            double cIm = yMin + ((double) y / height) * (yMax - yMin);
            for (int x = 0; x < width; x++) {
                double cRe = xMin + ((double) x / width) * (xMax - xMin);
                mandelbrot(cRe, cIm, maxIter);
            }
        });

        long start = System.nanoTime();

        IntStream.range(0, height).parallel().forEach(y -> {
            double cIm = yMin + ((double) y / height) * (yMax - yMin);
            for (int x = 0; x < width; x++) {
                double cRe = xMin + ((double) x / width) * (xMax - xMin);
                pixels[y * width + x] = mandelbrot(cRe, cIm, maxIter);
            }
        });

        long end = System.nanoTime();
        double elapsedMs = (end - start) / 1_000_000.0;

        try (BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream("mandelbrot.ppm"))) {
            out.write(String.format("P3\n%d %d\n255\n", width, height).getBytes(StandardCharsets.UTF_8));
            for (int i = 0; i < width * height; i++) {
                int p = pixels[i];
                if (p == maxIter) {
                    out.write("0 0 0 ".getBytes(StandardCharsets.UTF_8));
                } else {
                    int color = p % 256;
                    out.write(String.format("%d %d 255 ", color, color).getBytes(StandardCharsets.UTF_8));
                }
                if (i % 16 == 0) out.write("\n".getBytes(StandardCharsets.UTF_8));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        System.out.printf("elapsed_ms=%.3f mpixels_per_sec=%.3f\n", elapsedMs, (double) (width * height) / (elapsedMs * 1000.0));
    }
}
