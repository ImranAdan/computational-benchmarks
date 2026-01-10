const std = @import("std");

const K = [64]u32{
    0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
    0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
    0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
    0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
    0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
    0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
    0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
    0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2,
};

const Sha256Ctx = struct {
    data: [64]u8,
    datalen: u32,
    bitlen: u64,
    state: [8]u32,

    fn init() Sha256Ctx {
        return .{
            .data = undefined,
            .datalen = 0,
            .bitlen = 0,
            .state = .{
                0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a,
                0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19,
            },
        };
    }

    fn transform(self: *Sha256Ctx, data: []const u8) void {
        var m: [64]u32 = undefined;

        var i: usize = 0;
        var j: usize = 0;
        while (i < 16) : ({
            i += 1;
            j += 4;
        }) {
            m[i] = (@as(u32, data[j]) << 24) | (@as(u32, data[j + 1]) << 16) |
                (@as(u32, data[j + 2]) << 8) | @as(u32, data[j + 3]);
        }
        while (i < 64) : (i += 1) {
            m[i] = sig1(m[i - 2]) +% m[i - 7] +% sig0(m[i - 15]) +% m[i - 16];
        }

        var a = self.state[0];
        var b = self.state[1];
        var c = self.state[2];
        var d = self.state[3];
        var e = self.state[4];
        var f = self.state[5];
        var g = self.state[6];
        var h = self.state[7];

        for (0..64) |idx| {
            const t1 = h +% ep1(e) +% ch(e, f, g) +% K[idx] +% m[idx];
            const t2 = ep0(a) +% maj(a, b, c);
            h = g;
            g = f;
            f = e;
            e = d +% t1;
            d = c;
            c = b;
            b = a;
            a = t1 +% t2;
        }

        self.state[0] +%= a;
        self.state[1] +%= b;
        self.state[2] +%= c;
        self.state[3] +%= d;
        self.state[4] +%= e;
        self.state[5] +%= f;
        self.state[6] +%= g;
        self.state[7] +%= h;
    }

    fn update(self: *Sha256Ctx, data: []const u8) void {
        for (data) |byte| {
            self.data[self.datalen] = byte;
            self.datalen += 1;
            if (self.datalen == 64) {
                self.transform(&self.data);
                self.bitlen += 512;
                self.datalen = 0;
            }
        }
    }

    fn final(self: *Sha256Ctx, hash: *[32]u8) void {
        var i = self.datalen;

        if (self.datalen < 56) {
            self.data[i] = 0x80;
            i += 1;
            while (i < 56) : (i += 1) {
                self.data[i] = 0x00;
            }
        } else {
            self.data[i] = 0x80;
            i += 1;
            while (i < 64) : (i += 1) {
                self.data[i] = 0x00;
            }
            self.transform(&self.data);
            @memset(self.data[0..56], 0);
        }

        self.bitlen += self.datalen * 8;
        self.data[63] = @truncate(self.bitlen);
        self.data[62] = @truncate(self.bitlen >> 8);
        self.data[61] = @truncate(self.bitlen >> 16);
        self.data[60] = @truncate(self.bitlen >> 24);
        self.data[59] = @truncate(self.bitlen >> 32);
        self.data[58] = @truncate(self.bitlen >> 40);
        self.data[57] = @truncate(self.bitlen >> 48);
        self.data[56] = @truncate(self.bitlen >> 56);
        self.transform(&self.data);

        for (0..8) |idx| {
            hash[idx * 4] = @truncate(self.state[idx] >> 24);
            hash[idx * 4 + 1] = @truncate(self.state[idx] >> 16);
            hash[idx * 4 + 2] = @truncate(self.state[idx] >> 8);
            hash[idx * 4 + 3] = @truncate(self.state[idx]);
        }
    }
};

fn rotr(x: u32, comptime n: comptime_int) u32 {
    const shift: u5 = n;
    const inv_shift: u5 = 32 - n;
    return (x >> shift) | (x << inv_shift);
}

fn ch(x: u32, y: u32, z: u32) u32 {
    return (x & y) ^ (~x & z);
}

fn maj(x: u32, y: u32, z: u32) u32 {
    return (x & y) ^ (x & z) ^ (y & z);
}

fn ep0(x: u32) u32 {
    return rotr(x, 2) ^ rotr(x, 13) ^ rotr(x, 22);
}

fn ep1(x: u32) u32 {
    return rotr(x, 6) ^ rotr(x, 11) ^ rotr(x, 25);
}

fn sig0(x: u32) u32 {
    return rotr(x, 7) ^ rotr(x, 18) ^ (x >> 3);
}

fn sig1(x: u32) u32 {
    return rotr(x, 17) ^ rotr(x, 19) ^ (x >> 10);
}

pub fn main() !void {
    const num_hashes: u32 = 1000000;
    const base_message = "Computational Benchmarks - Language Performance Lab";

    var timer = try std.time.Timer.start();
    var final_hash: [32]u8 = undefined;

    var nonce: u32 = 0;
    while (nonce < num_hashes) : (nonce += 1) {
        var ctx = Sha256Ctx.init();
        ctx.update(base_message);

        const nonce_bytes = [4]u8{
            @truncate(nonce >> 24),
            @truncate(nonce >> 16),
            @truncate(nonce >> 8),
            @truncate(nonce),
        };
        ctx.update(&nonce_bytes);
        ctx.final(&final_hash);
    }

    const elapsed_ns = timer.read();
    const elapsed_ms: f64 = @as(f64, @floatFromInt(elapsed_ns)) / 1_000_000.0;
    const hashes_per_sec = @as(f64, @floatFromInt(num_hashes)) / (elapsed_ms / 1000.0);

    const stdout = std.io.getStdOut().writer();
    try stdout.print("elapsed_ms={d:.3} hashes_per_sec={d:.0} checksum=", .{ elapsed_ms, hashes_per_sec });
    for (final_hash) |byte| {
        try stdout.print("{x:0>2}", .{byte});
    }
    try stdout.writeAll("\n");
}
