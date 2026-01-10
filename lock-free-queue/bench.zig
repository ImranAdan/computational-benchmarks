const std = @import("std");
const Thread = std.Thread;

const QUEUE_SIZE: usize = 65536;
const QUEUE_MASK: usize = QUEUE_SIZE - 1;

const NUM_PRODUCERS: usize = 4;
const NUM_CONSUMERS: usize = 4;
const OPS_PER_PRODUCER: usize = 1000000;

const Cell = struct {
    sequence: std.atomic.Value(u64),
    data: u64,
};

const Queue = struct {
    buffer: [QUEUE_SIZE]Cell,
    enqueue_pos: std.atomic.Value(u64) align(64),
    _pad1: [56]u8,
    dequeue_pos: std.atomic.Value(u64) align(64),
    _pad2: [56]u8,

    fn init(self: *Queue) void {
        for (0..QUEUE_SIZE) |i| {
            self.buffer[i].sequence.store(@intCast(i), .release);
            self.buffer[i].data = 0;
        }
        self.enqueue_pos.store(0, .release);
        self.dequeue_pos.store(0, .release);
    }

    fn enqueue(self: *Queue, data: u64) bool {
        var pos = self.enqueue_pos.load(.monotonic);

        while (true) {
            const cell = &self.buffer[pos & QUEUE_MASK];
            const seq = cell.sequence.load(.acquire);
            const diff = @as(i64, @bitCast(seq)) - @as(i64, @bitCast(pos));

            if (diff == 0) {
                if (self.enqueue_pos.cmpxchgWeak(pos, pos + 1, .monotonic, .monotonic)) |_| {
                    pos = self.enqueue_pos.load(.monotonic);
                } else {
                    cell.data = data;
                    cell.sequence.store(pos + 1, .release);
                    return true;
                }
            } else if (diff < 0) {
                return false; // Queue full
            } else {
                pos = self.enqueue_pos.load(.monotonic);
            }
            std.atomic.spinLoopHint();
        }
    }

    fn dequeue(self: *Queue, data: *u64) bool {
        var pos = self.dequeue_pos.load(.monotonic);

        while (true) {
            const cell = &self.buffer[pos & QUEUE_MASK];
            const seq = cell.sequence.load(.acquire);
            const diff = @as(i64, @bitCast(seq)) - @as(i64, @bitCast(pos + 1));

            if (diff == 0) {
                if (self.dequeue_pos.cmpxchgWeak(pos, pos + 1, .monotonic, .monotonic)) |_| {
                    pos = self.dequeue_pos.load(.monotonic);
                } else {
                    data.* = cell.data;
                    cell.sequence.store(pos + QUEUE_SIZE, .release);
                    return true;
                }
            } else if (diff < 0) {
                return false; // Queue empty
            } else {
                pos = self.dequeue_pos.load(.monotonic);
            }
            std.atomic.spinLoopHint();
        }
    }
};

var g_queue: Queue = undefined;
var g_total_consumed: std.atomic.Value(u64) = std.atomic.Value(u64).init(0);

fn producerThread(id: usize) void {
    const base = id * OPS_PER_PRODUCER;
    for (0..OPS_PER_PRODUCER) |i| {
        const value = base + i + 1;
        while (!g_queue.enqueue(value)) {
            std.Thread.yield() catch {};
        }
    }
}

fn consumerThread(sum_out: *u64, ops_out: *u64) void {
    var sum: u64 = 0;
    var ops: u64 = 0;
    const expected_total = NUM_PRODUCERS * OPS_PER_PRODUCER;

    while (g_total_consumed.load(.monotonic) < expected_total) {
        var value: u64 = undefined;
        if (g_queue.dequeue(&value)) {
            sum += value;
            ops += 1;
            _ = g_total_consumed.fetchAdd(1, .monotonic);
        } else {
            std.Thread.yield() catch {};
        }
    }

    sum_out.* = sum;
    ops_out.* = ops;
}

pub fn main() !void {
    g_queue.init();

    var producer_threads: [NUM_PRODUCERS]Thread = undefined;
    var consumer_threads: [NUM_CONSUMERS]Thread = undefined;
    var consumer_sums: [NUM_CONSUMERS]u64 = undefined;
    var consumer_ops: [NUM_CONSUMERS]u64 = undefined;

    var timer = try std.time.Timer.start();

    // Start producers
    for (0..NUM_PRODUCERS) |i| {
        producer_threads[i] = try Thread.spawn(.{}, producerThread, .{i});
    }

    // Start consumers
    for (0..NUM_CONSUMERS) |i| {
        consumer_threads[i] = try Thread.spawn(.{}, consumerThread, .{ &consumer_sums[i], &consumer_ops[i] });
    }

    // Wait for producers
    for (0..NUM_PRODUCERS) |i| {
        producer_threads[i].join();
    }

    // Wait for consumers
    for (0..NUM_CONSUMERS) |i| {
        consumer_threads[i].join();
    }

    const elapsed_ns = timer.read();
    const elapsed_ms: f64 = @as(f64, @floatFromInt(elapsed_ns)) / 1_000_000.0;

    var total_sum: u64 = 0;
    var total_ops: u64 = 0;
    for (0..NUM_CONSUMERS) |i| {
        total_sum += consumer_sums[i];
        total_ops += consumer_ops[i];
    }

    // Calculate expected sum
    var expected_sum: u64 = 0;
    for (0..NUM_PRODUCERS) |i| {
        const base = i * OPS_PER_PRODUCER;
        expected_sum += OPS_PER_PRODUCER * base + OPS_PER_PRODUCER * (OPS_PER_PRODUCER + 1) / 2;
    }

    const ops_per_sec = @as(f64, @floatFromInt(total_ops)) / (elapsed_ms / 1000.0);

    const stdout = std.io.getStdOut().writer();
    try stdout.print("elapsed_ms={d:.3} ops_per_sec={d:.0} produced={d} consumed={d} checksum={d} expected={d}\n", .{
        elapsed_ms,
        ops_per_sec,
        NUM_PRODUCERS * OPS_PER_PRODUCER,
        total_ops,
        total_sum,
        expected_sum,
    });
}
