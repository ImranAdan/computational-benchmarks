const std = @import("std");
const Thread = std.Thread;
const Atomic = std.atomic.Value;

const WIDTH: usize = 4000;
const HEIGHT: usize = 4000;
const MAX_ITER: u32 = 1000;

const X_MIN: f64 = -2.0;
const X_MAX: f64 = 1.0;
const Y_MIN: f64 = -1.5;
const Y_MAX: f64 = 1.5;

fn mandelbrot(c_re: f64, c_im: f64) u32 {
    var z_re: f64 = 0.0;
    var z_im: f64 = 0.0;

    for (0..MAX_ITER) |i| {
        const z_re2 = z_re * z_re;
        const z_im2 = z_im * z_im;
        if (z_re2 + z_im2 > 4.0) return @intCast(i);
        const new_z_im = 2.0 * z_re * z_im + c_im;
        z_re = z_re2 - z_im2 + c_re;
        z_im = new_z_im;
    }
    return MAX_ITER;
}

const Context = struct {
    pixels: []u32,
    next_row: *Atomic(usize),
};

fn worker(ctx: Context) void {
    while (true) {
        const y = ctx.next_row.fetchAdd(1, .monotonic);
        if (y >= HEIGHT) break;

        const c_im = Y_MIN + (@as(f64, @floatFromInt(y)) / @as(f64, HEIGHT)) * (Y_MAX - Y_MIN);
        var x: usize = 0;
        while (x < WIDTH) : (x += 1) {
            const c_re = X_MIN + (@as(f64, @floatFromInt(x)) / @as(f64, WIDTH)) * (X_MAX - X_MIN);
            ctx.pixels[y * WIDTH + x] = mandelbrot(c_re, c_im);
        }
    }
}

pub fn main() !void {
    const allocator = std.heap.page_allocator;
    const cpu_count = try Thread.getCpuCount();

    const pixels = try allocator.alloc(u32, WIDTH * HEIGHT);
    defer allocator.free(pixels);

    // Warm-up
    const warmup_rows = HEIGHT / 10;
    var wy: usize = 0;
    while (wy < warmup_rows) : (wy += 1) {
        const c_im = Y_MIN + (@as(f64, @floatFromInt(wy)) / @as(f64, HEIGHT)) * (Y_MAX - Y_MIN);
        var wx: usize = 0;
        while (wx < WIDTH) : (wx += 1) {
            const c_re = X_MIN + (@as(f64, @floatFromInt(wx)) / @as(f64, WIDTH)) * (X_MAX - X_MIN);
            _ = mandelbrot(c_re, c_im);
        }
    }

    var timer = try std.time.Timer.start();

    var next_row = Atomic(usize).init(0);
    var threads = try allocator.alloc(Thread, cpu_count);
    defer allocator.free(threads);

    for (0..cpu_count) |i| {
        threads[i] = try Thread.spawn(.{}, worker, .{Context{
            .pixels = pixels,
            .next_row = &next_row,
        }});
    }

    for (threads) |thread| {
        thread.join();
    }

    const elapsed_ns = timer.read();
    const elapsed_ms: f64 = @as(f64, @floatFromInt(elapsed_ns)) / 1_000_000.0;
    const mpixels_per_sec = @as(f64, @floatFromInt(WIDTH * HEIGHT)) / (elapsed_ms * 1000.0);

    // Write PPM file
    const file = try std.fs.cwd().createFile("mandelbrot.ppm", .{});
    defer file.close();
    var writer = file.writer();

    try writer.print("P3\n{d} {d}\n255\n", .{ WIDTH, HEIGHT });
    for (0..WIDTH * HEIGHT) |i| {
        const p = pixels[i];
        if (p == MAX_ITER) {
            try writer.writeAll("0 0 0 ");
        } else {
            const color: u8 = @truncate(p);
            try writer.print("{d} {d} 255 ", .{ color, color });
        }
        if (i % 16 == 0) try writer.writeAll("\n");
    }

    const stdout = std.io.getStdOut().writer();
    try stdout.print("elapsed_ms={d:.3} mpixels_per_sec={d:.3}\n", .{ elapsed_ms, mpixels_per_sec });
}
