const std = @import("std");
const posix = std.posix;

const TOTAL_BYTES: u64 = 10 * 1024 * 1024 * 1024; // 10 GB
const BUFFER_SIZE: usize = 64 * 1024; // 64 KB

pub fn main() !void {
    const pipe_result = try posix.pipe();
    const read_fd = pipe_result[0];
    const write_fd = pipe_result[1];

    const pid = try posix.fork();

    if (pid == 0) {
        // Child: Reader
        posix.close(write_fd);

        var buffer: [BUFFER_SIZE]u8 = undefined;
        var total_received: u64 = 0;
        var checksum: u8 = 0;

        while (total_received < TOTAL_BYTES) {
            const n = posix.read(read_fd, &buffer) catch |err| {
                if (err == error.WouldBlock) continue;
                break;
            };
            if (n == 0) break;

            for (buffer[0..n]) |byte| {
                checksum ^= byte;
            }
            total_received += n;
        }

        const stdout = std.io.getStdOut().writer();
        try stdout.print("CHECK:{x:0>2}\n", .{checksum});

        posix.close(read_fd);
        posix.exit(0);
    } else {
        // Parent: Writer
        posix.close(read_fd);

        var buffer: [BUFFER_SIZE]u8 = undefined;
        // Fill buffer with sequential pattern
        for (0..BUFFER_SIZE) |i| {
            buffer[i] = @truncate(i);
        }

        var timer = try std.time.Timer.start();
        var total_sent: u64 = 0;

        while (total_sent < TOTAL_BYTES) {
            const n = posix.write(write_fd, &buffer) catch |err| {
                if (err == error.WouldBlock) continue;
                break;
            };
            total_sent += n;
        }

        const elapsed_ns = timer.read();
        const elapsed_ms: f64 = @as(f64, @floatFromInt(elapsed_ns)) / 1_000_000.0;
        const throughput_gb_sec = (@as(f64, @floatFromInt(TOTAL_BYTES)) / 1024.0 / 1024.0 / 1024.0) / (elapsed_ms / 1000.0);

        posix.close(write_fd);
        _ = posix.waitpid(pid, 0);

        const stdout = std.io.getStdOut().writer();
        try stdout.print("elapsed_ms={d:.3} throughput_gb_sec={d:.3}\n", .{ elapsed_ms, throughput_gb_sec });
    }
}
