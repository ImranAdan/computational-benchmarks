const std = @import("std");

const N: usize = 1500;
const STEPS_WARMUP: usize = 5;
const STEPS: usize = 400;
const DT: f64 = 0.01;
const SOFTENING: f64 = 1e-9;

fn lcgNext(state: *u64) u64 {
    state.* = state.* *% 6364136223846793005 +% 1;
    return state.*;
}

fn lcgDouble(state: *u64) f64 {
    const v = lcgNext(state);
    return @as(f64, @floatFromInt(v >> 11)) * (1.0 / 9007199254740992.0) * 2.0 - 1.0;
}

fn runSteps(
    count: usize,
    x: []f64,
    y: []f64,
    z: []f64,
    vx: []f64,
    vy: []f64,
    vz: []f64,
    m: []const f64,
    fx_buf: []f64,
    fy_buf: []f64,
    fz_buf: []f64,
) void {
    for (0..count) |_| {
        // Zero out force buffers
        @memset(fx_buf, 0.0);
        @memset(fy_buf, 0.0);
        @memset(fz_buf, 0.0);

        for (0..N) |i| {
            const xi = x[i];
            const yi = y[i];
            const zi = z[i];
            var fxi = fx_buf[i];
            var fyi = fy_buf[i];
            var fzi = fz_buf[i];
            const mi = m[i];

            for ((i + 1)..N) |j| {
                const dx = x[j] - xi;
                const dy = y[j] - yi;
                const dz = z[j] - zi;
                const dist2 = dx * dx + dy * dy + dz * dz + SOFTENING;
                const inv = 1.0 / @sqrt(dist2);
                const inv3 = inv * inv * inv;

                const s_i = m[j] * inv3;
                const s_j = mi * inv3;

                fxi += dx * s_i;
                fyi += dy * s_i;
                fzi += dz * s_i;

                fx_buf[j] -= dx * s_j;
                fy_buf[j] -= dy * s_j;
                fz_buf[j] -= dz * s_j;
            }
            fx_buf[i] = fxi;
            fy_buf[i] = fyi;
            fz_buf[i] = fzi;
        }

        // Update velocities
        for (0..N) |i| {
            vx[i] += DT * fx_buf[i];
            vy[i] += DT * fy_buf[i];
            vz[i] += DT * fz_buf[i];
        }

        // Update positions
        for (0..N) |i| {
            x[i] += DT * vx[i];
            y[i] += DT * vy[i];
            z[i] += DT * vz[i];
        }
    }
}

pub fn main() !void {
    const allocator = std.heap.page_allocator;

    // Allocate arrays
    const x = try allocator.alloc(f64, N);
    defer allocator.free(x);
    const y = try allocator.alloc(f64, N);
    defer allocator.free(y);
    const z = try allocator.alloc(f64, N);
    defer allocator.free(z);
    const vx = try allocator.alloc(f64, N);
    defer allocator.free(vx);
    const vy = try allocator.alloc(f64, N);
    defer allocator.free(vy);
    const vz = try allocator.alloc(f64, N);
    defer allocator.free(vz);
    const m = try allocator.alloc(f64, N);
    defer allocator.free(m);
    const fx_buf = try allocator.alloc(f64, N);
    defer allocator.free(fx_buf);
    const fy_buf = try allocator.alloc(f64, N);
    defer allocator.free(fy_buf);
    const fz_buf = try allocator.alloc(f64, N);
    defer allocator.free(fz_buf);

    // Initialize with LCG
    var seed: u64 = 1;
    for (0..N) |i| {
        x[i] = lcgDouble(&seed);
        y[i] = lcgDouble(&seed);
        z[i] = lcgDouble(&seed);
        vx[i] = lcgDouble(&seed) * 0.1;
        vy[i] = lcgDouble(&seed) * 0.1;
        vz[i] = lcgDouble(&seed) * 0.1;
        m[i] = @abs(lcgDouble(&seed)) + 0.5;
    }

    // Warm-up
    runSteps(STEPS_WARMUP, x, y, z, vx, vy, vz, m, fx_buf, fy_buf, fz_buf);

    // Timed run
    var timer = try std.time.Timer.start();
    runSteps(STEPS, x, y, z, vx, vy, vz, m, fx_buf, fy_buf, fz_buf);
    const elapsed_ns = timer.read();
    const elapsed_ms: f64 = @as(f64, @floatFromInt(elapsed_ns)) / 1_000_000.0;

    // Compute checksum
    var checksum: f64 = 0.0;
    for (0..N) |i| {
        checksum += x[i] + y[i] + z[i] + vx[i] + vy[i] + vz[i];
    }

    const stdout = std.io.getStdOut().writer();
    try stdout.print("elapsed_ms={d:.3} checksum={d:.6}\n", .{ elapsed_ms, checksum });
}
