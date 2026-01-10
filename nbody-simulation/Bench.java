import java.util.Random;

class LCG {
    private long state;

    public LCG(long seed) {
        this.state = seed;
    }

    public long nextU64() {
        state = (state * 6364136223846793005L + 1L);
        return state;
    }

    public double nextDouble() {
        long v = nextU64();
        // Map to [-1.0, 1.0] using the same logic as C/Rust
        // We use (v >>> 11) to get 53 bits of precision, same as a double's mantissa
        return ((v >>> 11) * (1.0 / 9007199254740992.0)) * 2.0 - 1.0;
    }
}

public class Bench {
    static void runSteps(int n, int count, double dt, double softening,
                        double[] x, double[] y, double[] z,
                        double[] vx, double[] vy, double[] vz,
                        double[] m,
                        double[] fxBuf, double[] fyBuf, double[] fzBuf) {
        
        for (int step = 0; step < count; step++) {
            // Zero out force buffers
            for (int i = 0; i < n; i++) {
                fxBuf[i] = 0.0;
                fyBuf[i] = 0.0;
                fzBuf[i] = 0.0;
            }

            for (int i = 0; i < n; i++) {
                double xi = x[i];
                double yi = y[i];
                double zi = z[i];
                double fxi = fxBuf[i];
                double fyi = fyBuf[i];
                double fzi = fzBuf[i];
                double mi = m[i];

                for (int j = i + 1; j < n; j++) {
                    double dx = x[j] - xi;
                    double dy = y[j] - yi;
                    double dz = z[j] - zi;
                    double dist2 = dx * dx + dy * dy + dz * dz + softening;
                    double inv = 1.0 / Math.sqrt(dist2);
                    double inv3 = inv * inv * inv;
                    
                    double s_i = m[j] * inv3;
                    double s_j = mi * inv3;

                    fxi += dx * s_i;
                    fyi += dy * s_i;
                    fzi += dz * s_i;

                    fxBuf[j] -= dx * s_j;
                    fyBuf[j] -= dy * s_j;
                    fzBuf[j] -= dz * s_j;
                }
                fxBuf[i] = fxi;
                fyBuf[i] = fyi;
                fzBuf[i] = fzi;
            }

            for (int i = 0; i < n; i++) {
                vx[i] += dt * fxBuf[i];
                vy[i] += dt * fyBuf[i];
                vz[i] += dt * fzBuf[i];
            }

            for (int i = 0; i < n; i++) {
                x[i] += dt * vx[i];
                y[i] += dt * vy[i];
                z[i] += dt * vz[i];
            }
        }
    }

    public static void main(String[] args) {
        final int n = 1500;
        final int stepsWarmup = 5;
        final int steps = 400;
        final double dt = 0.01;
        final double softening = 1e-9;

        double[] x = new double[n];
        double[] y = new double[n];
        double[] z = new double[n];
        double[] vx = new double[n];
        double[] vy = new double[n];
        double[] vz = new double[n];
        double[] m = new double[n];
        
        double[] fxBuf = new double[n];
        double[] fyBuf = new double[n];
        double[] fzBuf = new double[n];

        LCG lcg = new LCG(1);
        for (int i = 0; i < n; i++) {
            x[i] = lcg.nextDouble();
            y[i] = lcg.nextDouble();
            z[i] = lcg.nextDouble();
            vx[i] = lcg.nextDouble() * 0.1;
            vy[i] = lcg.nextDouble() * 0.1;
            vz[i] = lcg.nextDouble() * 0.1;
            m[i] = Math.abs(lcg.nextDouble()) + 0.5;
        }

        // Warm-up
        runSteps(n, stepsWarmup, dt, softening, x, y, z, vx, vy, vz, m, fxBuf, fyBuf, fzBuf);

        long startMs = System.currentTimeMillis();
        runSteps(n, steps, dt, softening, x, y, z, vx, vy, vz, m, fxBuf, fyBuf, fzBuf);
        long endMs = System.currentTimeMillis();

        double checksum = 0.0;
        for (int i = 0; i < n; i++) {
            checksum += x[i] + y[i] + z[i] + vx[i] + vy[i] + vz[i];
        }

        System.out.printf("elapsed_ms=%.3f checksum=%.6f\n", (double)(endMs - startMs), checksum);
    }
}
