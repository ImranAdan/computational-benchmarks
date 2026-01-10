const std = @import("std");
const math = std.math;

const Point3D = struct { x: f64, y: f64, z: f64 };
const Point2D = struct { x: f64, y: f64 };

fn rotateAndProject(p: Point3D, angle: f64) Point2D {
    const cos_a = @cos(angle);
    const sin_a = @sin(angle);

    const x1 = p.x * cos_a + p.z * sin_a;
    const z1 = -p.x * sin_a + p.z * cos_a;

    const y2 = p.y * cos_a - z1 * sin_a;
    const z2 = p.y * sin_a + z1 * cos_a;

    const viewer_distance: f64 = 5.0;
    const scale: f64 = 1000.0;
    const factor = scale / (z2 + viewer_distance);

    return .{ .x = x1 * factor, .y = y2 * factor };
}

pub fn main() !void {
    const num_vertices: usize = 250000;
    const num_frames: usize = 100;

    const allocator = std.heap.page_allocator;
    const vertices = try allocator.alloc(Point3D, num_vertices);
    defer allocator.free(vertices);

    const pi: f64 = 3.14159265358979323846;
    const sqrt5 = @sqrt(5.0);

    // Initialize vertices on a sphere (Fibonacci lattice)
    for (0..num_vertices) |i| {
        const fi: f64 = @floatFromInt(i);
        const phi = fi * pi * (3.0 - sqrt5);
        const y = 1.0 - (fi / @as(f64, @floatFromInt(num_vertices - 1))) * 2.0;
        const radius = @sqrt(1.0 - y * y);
        vertices[i] = .{
            .x = radius * @cos(phi),
            .y = y,
            .z = radius * @sin(phi),
        };
    }

    const stdout = std.io.getStdOut().writer();
    try stdout.writeAll("Starting Live 3D Calculation Session...\n");

    // Warm-up
    for (0..10) |frame| {
        const angle: f64 = @as(f64, @floatFromInt(frame)) * 0.01;
        for (0..num_vertices) |i| {
            _ = rotateAndProject(vertices[i], angle);
        }
    }

    var timer = try std.time.Timer.start();
    var checksum: f64 = 0.0;

    for (0..num_frames) |frame| {
        const angle: f64 = @as(f64, @floatFromInt(frame)) * 0.01;
        for (0..num_vertices) |i| {
            const p2d = rotateAndProject(vertices[i], angle);
            checksum += p2d.x + p2d.y;
        }

        if (frame % 20 == 0) {
            const p2d = rotateAndProject(vertices[0], angle);
            try stdout.print("[LIVE FRAME {d:3}] Tracking Vertex 0: x={d:.2}, y={d:.2}\n", .{ frame, p2d.x, p2d.y });
        }
    }

    const elapsed_ns = timer.read();
    const elapsed_ms: f64 = @as(f64, @floatFromInt(elapsed_ns)) / 1_000_000.0;
    const total_vertices: f64 = @floatFromInt(num_vertices * num_frames);
    const vertices_per_sec = total_vertices / (elapsed_ms / 1000.0);

    try stdout.writeAll("------------------------------------------------\n");
    try stdout.print("elapsed_ms={d:.3} vertices_per_sec={d:.0} checksum={d:.6}\n", .{ elapsed_ms, vertices_per_sec, checksum });
}
