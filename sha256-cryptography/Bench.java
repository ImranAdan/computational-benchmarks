import java.nio.charset.StandardCharsets;

class SHA256 {
    private static final int[] K = {
        0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
        0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
        0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
        0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
        0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
        0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
        0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
        0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2
    };

    private int[] state = new int[8];
    private byte[] data = new byte[64];
    private int datalen;
    private long bitlen;

    public SHA256() {
        state[0] = 0x6a09e667;
        state[1] = 0xbb67ae85;
        state[2] = 0x3c6ef372;
        state[3] = 0xa54ff53a;
        state[4] = 0x510e527f;
        state[5] = 0x9b05688c;
        state[6] = 0x1f83d9ab;
        state[7] = 0x5be0cd19;
        datalen = 0;
        bitlen = 0;
    }

    private int rotr(int x, int n) {
        return (x >>> n) | (x << (32 - n));
    }

    private void transform() {
        int[] m = new int[64];
        for (int i = 0, j = 0; i < 16; i++, j += 4) {
            m[i] = ((data[j] & 0xff) << 24) | ((data[j + 1] & 0xff) << 16) | ((data[j + 2] & 0xff) << 8) | (data[j + 3] & 0xff);
        }
        for (int i = 16; i < 64; i++) {
            int s0 = rotr(m[i - 15], 7) ^ rotr(m[i - 15], 18) ^ (m[i - 15] >>> 3);
            int s1 = rotr(m[i - 2], 17) ^ rotr(m[i - 2], 19) ^ (m[i - 2] >>> 10);
            m[i] = s1 + m[i - 7] + s0 + m[i - 16];
        }

        int a = state[0], b = state[1], c = state[2], d = state[3], e = state[4], f = state[5], g = state[6], h = state[7];

        for (int i = 0; i < 64; i++) {
            int s1 = rotr(e, 6) ^ rotr(e, 11) ^ rotr(e, 25);
            int ch = (e & f) ^ (~e & g);
            int t1 = h + s1 + ch + K[i] + m[i];
            int s0 = rotr(a, 2) ^ rotr(a, 13) ^ rotr(a, 22);
            int maj = (a & b) ^ (a & c) ^ (b & c);
            int t2 = s0 + maj;
            h = g;
            g = f;
            f = e;
            e = d + t1;
            d = c;
            c = b;
            b = a;
            a = t1 + t2;
        }

        state[0] += a;
        state[1] += b;
        state[2] += c;
        state[3] += d;
        state[4] += e;
        state[5] += f;
        state[6] += g;
        state[7] += h;
    }

    public void update(byte[] b, int len) {
        for (int i = 0; i < len; i++) {
            data[datalen++] = b[i];
            if (datalen == 64) {
                transform();
                bitlen += 512;
                datalen = 0;
            }
        }
    }

    public byte[] finalizeHash() {
        int i = datalen;
        if (datalen < 56) {
            data[i++] = (byte) 0x80;
            while (i < 56) data[i++] = 0x00;
        } else {
            data[i++] = (byte) 0x80;
            while (i < 64) data[i++] = 0x00;
            transform();
            for (i = 0; i < 56; i++) data[i] = 0x00;
        }

        bitlen += datalen * 8;
        data[63] = (byte) (bitlen & 0xff);
        data[62] = (byte) ((bitlen >>> 8) & 0xff);
        data[61] = (byte) ((bitlen >>> 16) & 0xff);
        data[60] = (byte) ((bitlen >>> 24) & 0xff);
        data[59] = (byte) ((bitlen >>> 32) & 0xff);
        data[58] = (byte) ((bitlen >>> 40) & 0xff);
        data[57] = (byte) ((bitlen >>> 48) & 0xff);
        data[56] = (byte) ((bitlen >>> 56) & 0xff);
        transform();

        byte[] hash = new byte[32];
        for (i = 0; i < 8; i++) {
            hash[i * 4] = (byte) ((state[i] >>> 24) & 0xff);
            hash[i * 4 + 1] = (byte) ((state[i] >>> 16) & 0xff);
            hash[i * 4 + 2] = (byte) ((state[i] >>> 8) & 0xff);
            hash[i * 4 + 3] = (byte) (state[i] & 0xff);
        }
        return hash;
    }
}

public class Bench {
    public static void main(String[] args) {
        final int numHashes = 1000000;
        final byte[] baseMessage = "Computational Benchmarks - Language Performance Lab".getBytes(StandardCharsets.UTF_8);
        
        long start = System.currentTimeMillis();
        byte[] finalHash = null;

        for (int nonce = 0; nonce < numHashes; nonce++) {
            SHA256 ctx = new SHA256();
            ctx.update(baseMessage, baseMessage.length);
            
            byte[] nonceBytes = new byte[4];
            nonceBytes[0] = (byte)((nonce >> 24) & 0xFF);
            nonceBytes[1] = (byte)((nonce >> 16) & 0xFF);
            nonceBytes[2] = (byte)((nonce >> 8) & 0xFF);
            nonceBytes[3] = (byte)(nonce & 0xFF);
            
            ctx.update(nonceBytes, 4);
            finalHash = ctx.finalizeHash();
        }

        long end = System.currentTimeMillis();
        double elapsedMs = (double)(end - start);
        double hashesPerSec = (double) numHashes / (elapsedMs / 1000.0);

        System.out.printf("elapsed_ms=%.3f hashes_per_sec=%.0f checksum=", elapsedMs, hashesPerSec);
        for (byte b : finalHash) System.out.printf("%02x", b);
        System.out.println();
    }
}
