# SHA-256 Cryptography Benchmark

This benchmark measures the throughput of SHA-256 hashing by processing one million unique messages.

## Theoretical Background

### Historical Context

The Secure Hash Algorithm (SHA) family was designed by the **National Security Agency (NSA)** and published by NIST (National Institute of Standards and Technology):

| Year | Algorithm | Status | Notes |
|------|-----------|--------|-------|
| 1993 | SHA-0 | Withdrawn | Unpublished flaw found |
| 1995 | SHA-1 | Deprecated | Collision found in 2017 |
| 2001 | **SHA-2** (SHA-256, SHA-512) | Current Standard | Still secure |
| 2015 | SHA-3 (Keccak) | Alternative | Different construction |

SHA-256, part of the SHA-2 family, was published in 2001 as FIPS 180-2. Despite being over 20 years old, no practical attacks have been found against SHA-256—it remains the backbone of Bitcoin, TLS certificates, and countless security systems.

### Cryptographic Hash Function Properties

A cryptographic hash function $H: \{0,1\}^* \rightarrow \{0,1\}^n$ must satisfy three security properties:

```
┌────────────────────────────────────────────────────────────────────────┐
│                   CRYPTOGRAPHIC HASH PROPERTIES                         │
├────────────────────────────────────────────────────────────────────────┤
│                                                                         │
│  1. PREIMAGE RESISTANCE (One-Way)                                       │
│     Given h = H(m), finding any m is computationally infeasible         │
│                                                                         │
│     h ──────────X──────── m    (Cannot reverse the hash)                │
│                                                                         │
│  2. SECOND PREIMAGE RESISTANCE                                          │
│     Given m₁, finding m₂ ≠ m₁ where H(m₁) = H(m₂) is infeasible         │
│                                                                         │
│     m₁ ─────┬───── h                                                    │
│             │                  (Cannot find another input               │
│     m₂ ──X──┘                   with the same hash)                     │
│                                                                         │
│  3. COLLISION RESISTANCE                                                │
│     Finding any m₁ ≠ m₂ where H(m₁) = H(m₂) is infeasible               │
│                                                                         │
│     m₁ ─────┬───── h           (Cannot find ANY two inputs              │
│             │                   with the same hash)                     │
│     m₂ ──X──┘                                                           │
│                                                                         │
└────────────────────────────────────────────────────────────────────────┘
```

### Why 256 Bits? The Birthday Paradox

The **birthday attack** exploits probability theory to find collisions faster than brute force. For an $n$-bit hash, a collision can be found with $\approx 2^{n/2}$ attempts.

For SHA-256:
- Brute-force preimage attack: $2^{256}$ attempts (infeasible forever)
- Birthday collision attack: $2^{128}$ attempts (still requires millions of years)

By comparison, SHA-1's 160 bits provides only $2^{80}$ collision resistance, which is now vulnerable to well-funded attackers (Google's SHAttered attack: $2^{63.1}$ computations).

### The Merkle-Damgård Construction

SHA-256 is built on the Merkle-Damgård paradigm (1979), which converts a fixed-size compression function into a hash function for arbitrary-length inputs:

```
Message: "Hello, World!"

Step 1: Pad to 512-bit blocks
┌─────────────────────────────────────────────────────────────────────┐
│ H  e  l  l  o  ,     W  o  r  l  d  ! │1│0...0│ 64-bit length │
│                448 bits                   │     │      104       │
└─────────────────────────────────────────────────────────────────────┘
                              512 bits (one block)

Step 2: Chain compression functions
┌────────┐     ┌────────┐     ┌────────┐           ┌────────┐
│ Block₁ │     │ Block₂ │     │ Block₃ │           │ Blockₙ │
└───┬────┘     └───┬────┘     └───┬────┘           └───┬────┘
    │              │              │                     │
    ▼              ▼              ▼                     ▼
┌───────┐      ┌───────┐      ┌───────┐            ┌───────┐
│  IV   │─────▶│   f   │─────▶│   f   │─── ··· ───▶│   f   │─────▶ Hash
│256-bit│      │       │      │       │            │       │      256-bit
└───────┘      └───────┘      └───────┘            └───────┘
                  H₁             H₂                   Hₙ
```

The compression function $f$ takes a 256-bit state and a 512-bit message block, producing a new 256-bit state.

### Message Padding: Bit-Level Detail

SHA-256 requires the message length to be a multiple of 512 bits. Padding is always applied, even if the message is already a multiple of 512 bits:

```
Original message bits: M₁M₂M₃...Mₗ (length L bits)

Padded message:
┌──────────────────┬───┬─────────────────────────┬────────────────────┐
│ Original Message │ 1 │ k zeros                 │ L as 64-bit int    │
│    (L bits)      │   │                         │ (big-endian)       │
└──────────────────┴───┴─────────────────────────┴────────────────────┘

Where k is the minimum number such that (L + 1 + k + 64) ≡ 0 (mod 512)
```

**Example**: For a 55-byte message (440 bits):
- Add 1 bit: 441 bits
- Add 7 zeros: 448 bits
- Add 64-bit length: 512 bits total (exactly one block)

### Initial Hash Values: The Square Roots

SHA-256's initial 256-bit state is derived from the fractional parts of the **square roots of the first 8 primes**:

```
h₀ = 0x6a09e667  ← frac(√2)  × 2³² = 0.6749... × 2³²
h₁ = 0xbb67ae85  ← frac(√3)  × 2³²
h₂ = 0x3c6ef372  ← frac(√5)  × 2³²
h₃ = 0xa54ff53a  ← frac(√7)  × 2³²
h₄ = 0x510e527f  ← frac(√11) × 2³²
h₅ = 0x9b05688c  ← frac(√13) × 2³²
h₆ = 0x1f83d9ab  ← frac(√17) × 2³²
h₇ = 0x5be0cd19  ← frac(√19) × 2³²
```

This "nothing up my sleeve" approach proves the constants weren't chosen to create a backdoor.

### Round Constants: The Cube Roots

The 64 round constants $K_0$ through $K_{63}$ are derived from the fractional parts of the **cube roots of the first 64 primes**:

```
K[ 0] = 0x428a2f98  ← frac(∛2)  × 2³²
K[ 1] = 0x71374491  ← frac(∛3)  × 2³²
K[ 2] = 0xb5c0fbcf  ← frac(∛5)  × 2³²
...
K[63] = 0xc67178f2  ← frac(∛311) × 2³²
```

### Message Schedule Expansion

Each 512-bit block contains 16 words (32 bits each). These are expanded to 64 words for the 64 compression rounds:

For $i = 0$ to $15$:
$$W_i = M_i \quad \text{(copy from message block)}$$

For $i = 16$ to $63$:
$$W_i = \sigma_1(W_{i-2}) + W_{i-7} + \sigma_0(W_{i-15}) + W_{i-16}$$

Where the **small sigma functions** are:

$$\sigma_0(x) = ROTR^7(x) \oplus ROTR^{18}(x) \oplus SHR^3(x)$$
$$\sigma_1(x) = ROTR^{17}(x) \oplus ROTR^{19}(x) \oplus SHR^{10}(x)$$

- $ROTR^n(x)$ = right rotate by $n$ bits
- $SHR^n(x)$ = right shift by $n$ bits
- $\oplus$ = XOR

### The Compression Function: 64 Rounds

Each round mixes the message schedule word $W_i$ with the 8 working variables $(a, b, c, d, e, f, g, h)$:

```
Round i:
┌─────────────────────────────────────────────────────────────────────┐
│                                                                     │
│   T₁ = h + Σ₁(e) + Ch(e,f,g) + Kᵢ + Wᵢ                              │
│   T₂ = Σ₀(a) + Maj(a,b,c)                                           │
│                                                                     │
│   h ← g                                                             │
│   g ← f                                                             │
│   f ← e                                                             │
│   e ← d + T₁                                                        │
│   d ← c                                                             │
│   c ← b                                                             │
│   b ← a                                                             │
│   a ← T₁ + T₂                                                       │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

**The Big Sigma Functions** (mixing):
$$\Sigma_0(a) = ROTR^2(a) \oplus ROTR^{13}(a) \oplus ROTR^{22}(a)$$
$$\Sigma_1(e) = ROTR^6(e) \oplus ROTR^{11}(e) \oplus ROTR^{25}(e)$$

**The Choice Function** (conditional selection):
$$Ch(e, f, g) = (e \land f) \oplus (\lnot e \land g)$$
"If $e$ then $f$ else $g$" — each bit of $e$ chooses between $f$ or $g$.

**The Majority Function** (voting):
$$Maj(a, b, c) = (a \land b) \oplus (a \land c) \oplus (b \land c)$$
Each output bit is the majority vote of the corresponding input bits.

### The Avalanche Effect

A fundamental property of cryptographic hashes is that changing a single input bit changes approximately 50% of output bits. This is the **strict avalanche criterion**:

```
SHA-256("Hello, World!")  = dffd6021bb2bd5b0...
SHA-256("Hello, World?")  = ad19e657c1df66fa...
                            ^^^^^^^^^^^^^^^^
                            ~50% of bits differ (128 of 256)
```

This property makes it impossible to work backwards from a hash—there's no gradient to follow.

### Computational Characteristics

SHA-256's design favors 32-bit processors:

| Operation | Count per Round | Total (64 rounds) |
|-----------|-----------------|-------------------|
| 32-bit Addition | 8 | 512 |
| ROTR (rotate right) | 6 | 384 |
| XOR | 6 | 384 |
| AND | 4 | 256 |
| NOT | 1 | 64 |

Modern CPUs have dedicated rotation instructions (`ROR` on x86, `ROR` on ARM), making these operations single-cycle.

### Complexity Analysis

For an $n$-byte message:

| Metric | Complexity |
|--------|------------|
| Time | $O(n)$ — linear in message length |
| Space | $O(1)$ — only 8 words of state |
| Rounds | $64 \times \lceil n/64 \rceil$ |

Our benchmark: 1 million × (51 bytes + 4 bytes nonce) = ~55 million blocks.

### Real-World Applications

1. **Bitcoin Mining**: Miners compute SHA-256(SHA-256(block header)) trillions of times to find a hash starting with zeros.

2. **TLS/SSL Certificates**: SHA-256 verifies that certificates haven't been tampered with.

3. **Digital Signatures**: The message is hashed before signing (RSA, ECDSA).

4. **Password Hashing**: Used with salts and key derivation functions (PBKDF2, bcrypt uses Blowfish, Argon2 is newer).

5. **Data Integrity**: Git commit IDs, software checksums, blockchain transactions.

6. **Merkle Trees**: Efficient verification of large datasets (used in Bitcoin, BitTorrent).

## Methodology
*   **Workload**: 1,000,000 hashes.
*   **Message**: Each hash consists of a base string appended with a 4-byte nonce.
*   **Implementation**: A "clean-room" implementation of SHA-256 is used in all languages rather than linking to OS-specific crypto libraries (like OpenSSL). This ensures we measure the language's own integer-heavy arithmetic performance.

## Language Observations

### C & C++
*   **Implementation**: Standard implementation using bitwise rotations and additions.
*   **Optimization**: Built with LTO. The compiler is very efficient at optimizing the bit-shifting logic into native CPU rotation instructions.

### Rust
*   **Performance**: Rust's integer handling and bit-level operations are highly optimized. Rust often takes the lead here due to its zero-cost abstractions over fixed-size integers and efficient register allocation.

### Java
*   **Competitive**: Java performs remarkably well in bitwise-heavy workloads. The JIT (C2 compiler) is excellent at identifying the repetitive nature of the SHA-256 block transformation and generating tight machine code.

### Zig
*   **Winner**: Zig demonstrates superior throughput for this bitwise-heavy workload.
*   **Implementation**: A manual "clean-room" implementation (no `std.crypto`) using a `Sha256Ctx` struct.
*   **Optimization**: The Zig compiler (LLVM backend) with `ReleaseFast` effectively optimizes the manual bitwise rotation and addition chains, slightly outperforming the C/C++ Clang builds.

### Fortran
*   **Performance**: surprisingly competitive, matching Rust and Zig.
*   **Implementation**: A manual implementation of the SHA-256 algorithm.
*   **Bitwise Operations**: Modern Fortran (2008+) provides efficient intrinsic bitwise functions (`ieor`, `iand`, `ishft`, `ibits`) which map directly to hardware instructions.

## Verification
*   **Checksum**: The final hash of the 1,000,000th nonce must match the baseline (`0c8b1d...`).
*   **Status**: PASSED.

## Latest Results (2026-01-10)

| Language | Mean Time | Throughput | Checksum |
|----------|-----------|------------|----------|
| **Zig** | **402 ms** | **2.48 MH/s** | MATCH |
| **Rust** | 411 ms | 2.43 MH/s | MATCH |
| **Fortran** | 416 ms | 2.41 MH/s | MATCH |
| **Java** | 477 ms | 2.10 MH/s | MATCH |
| **C** | 543 ms | 1.84 MH/s | MATCH |
| **C++** | 537 ms | 1.86 MH/s | MATCH |
