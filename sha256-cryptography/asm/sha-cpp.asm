
/bench/bench:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000010b40 <_start>:
   10b40:	d503201f 	nop
   10b44:	d280001d 	mov	x29, #0x0                   	// #0
   10b48:	d280001e 	mov	x30, #0x0                   	// #0
   10b4c:	aa0003e5 	mov	x5, x0
   10b50:	f94003e1 	ldr	x1, [sp]
   10b54:	910023e2 	add	x2, sp, #0x8
   10b58:	910003e6 	mov	x6, sp
   10b5c:	d503201f 	nop
   10b60:	10000980 	adr	x0, 10c90 <main>
   10b64:	d2800003 	mov	x3, #0x0                   	// #0
   10b68:	d2800004 	mov	x4, #0x0                   	// #0
   10b6c:	9400021d 	bl	113e0 <__libc_start_main@plt>
   10b70:	94000218 	bl	113d0 <abort@plt>

0000000000010b74 <call_weak_fn>:
   10b74:	b0000080 	adrp	x0, 21000 <memset@plt+0xfba0>
   10b78:	f9433000 	ldr	x0, [x0, #1632]
   10b7c:	b4000040 	cbz	x0, 10b84 <call_weak_fn+0x10>
   10b80:	1400021c 	b	113f0 <__gmon_start__@plt>
   10b84:	d65f03c0 	ret
	...

0000000000010b90 <deregister_tm_clones>:
   10b90:	d503201f 	nop
   10b94:	10105820 	adr	x0, 31698 <__TMC_END__>
   10b98:	d503201f 	nop
   10b9c:	101057e1 	adr	x1, 31698 <__TMC_END__>
   10ba0:	eb00003f 	cmp	x1, x0
   10ba4:	540000c0 	b.eq	10bbc <deregister_tm_clones+0x2c>  // b.none
   10ba8:	b0000081 	adrp	x1, 21000 <memset@plt+0xfba0>
   10bac:	f9433421 	ldr	x1, [x1, #1640]
   10bb0:	b4000061 	cbz	x1, 10bbc <deregister_tm_clones+0x2c>
   10bb4:	aa0103f0 	mov	x16, x1
   10bb8:	d61f0200 	br	x16
   10bbc:	d65f03c0 	ret

0000000000010bc0 <register_tm_clones>:
   10bc0:	d503201f 	nop
   10bc4:	101056a0 	adr	x0, 31698 <__TMC_END__>
   10bc8:	d503201f 	nop
   10bcc:	10105661 	adr	x1, 31698 <__TMC_END__>
   10bd0:	cb000021 	sub	x1, x1, x0
   10bd4:	d37ffc22 	lsr	x2, x1, #63
   10bd8:	8b810c41 	add	x1, x2, x1, asr #3
   10bdc:	9341fc21 	asr	x1, x1, #1
   10be0:	b40000c1 	cbz	x1, 10bf8 <register_tm_clones+0x38>
   10be4:	b0000082 	adrp	x2, 21000 <memset@plt+0xfba0>
   10be8:	f9433842 	ldr	x2, [x2, #1648]
   10bec:	b4000062 	cbz	x2, 10bf8 <register_tm_clones+0x38>
   10bf0:	aa0203f0 	mov	x16, x2
   10bf4:	d61f0200 	br	x16
   10bf8:	d65f03c0 	ret
   10bfc:	d503201f 	nop

0000000000010c00 <__do_global_dtors_aux>:
   10c00:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   10c04:	910003fd 	mov	x29, sp
   10c08:	f9000bf3 	str	x19, [sp, #16]
   10c0c:	b0000113 	adrp	x19, 31000 <_DYNAMIC+0xfb78>
   10c10:	395c0260 	ldrb	w0, [x19, #1792]
   10c14:	35000140 	cbnz	w0, 10c3c <__do_global_dtors_aux+0x3c>
   10c18:	b0000080 	adrp	x0, 21000 <memset@plt+0xfba0>
   10c1c:	f9433c00 	ldr	x0, [x0, #1656]
   10c20:	b4000080 	cbz	x0, 10c30 <__do_global_dtors_aux+0x30>
   10c24:	b0000100 	adrp	x0, 31000 <_DYNAMIC+0xfb78>
   10c28:	f9434800 	ldr	x0, [x0, #1680]
   10c2c:	940001f5 	bl	11400 <__cxa_finalize@plt>
   10c30:	97ffffd8 	bl	10b90 <deregister_tm_clones>
   10c34:	52800020 	mov	w0, #0x1                   	// #1
   10c38:	391c0260 	strb	w0, [x19, #1792]
   10c3c:	f9400bf3 	ldr	x19, [sp, #16]
   10c40:	a8c27bfd 	ldp	x29, x30, [sp], #32
   10c44:	d65f03c0 	ret
   10c48:	d503201f 	nop
   10c4c:	d503201f 	nop

0000000000010c50 <frame_dummy>:
   10c50:	17ffffdc 	b	10bc0 <register_tm_clones>

0000000000010c54 <_GLOBAL__sub_I_bench.cpp>:
   10c54:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   10c58:	f9000bf3 	str	x19, [sp, #16]
   10c5c:	910003fd 	mov	x29, sp
   10c60:	d503201f 	nop
   10c64:	301054f3 	adr	x19, 31701 <_ZStL8__ioinit>
   10c68:	aa1303e0 	mov	x0, x19
   10c6c:	940001e9 	bl	11410 <_ZNSt8ios_base4InitC1Ev@plt>
   10c70:	b0000080 	adrp	x0, 21000 <memset@plt+0xfba0>
   10c74:	aa1303e1 	mov	x1, x19
   10c78:	d503201f 	nop
   10c7c:	101050a2 	adr	x2, 31690 <__dso_handle>
   10c80:	f9434000 	ldr	x0, [x0, #1664]
   10c84:	f9400bf3 	ldr	x19, [sp, #16]
   10c88:	a8c27bfd 	ldp	x29, x30, [sp], #32
   10c8c:	140001e5 	b	11420 <__cxa_atexit@plt>

0000000000010c90 <main>:
   10c90:	d104c3ff 	sub	sp, sp, #0x130
   10c94:	a90d7bfd 	stp	x29, x30, [sp, #208]
   10c98:	910343fd 	add	x29, sp, #0xd0
   10c9c:	a90e6ffc 	stp	x28, x27, [sp, #224]
   10ca0:	a90f67fa 	stp	x26, x25, [sp, #240]
   10ca4:	a9105ff8 	stp	x24, x23, [sp, #256]
   10ca8:	a91157f6 	stp	x22, x21, [sp, #272]
   10cac:	a9124ff4 	stp	x20, x19, [sp, #288]
   10cb0:	940001e0 	bl	11430 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
   10cb4:	90ffff88 	adrp	x8, 0 <__abi_tag-0x2c4>
   10cb8:	90ffff89 	adrp	x9, 0 <__abi_tag-0x2c4>
   10cbc:	52884818 	mov	w24, #0x4240                	// #16960
   10cc0:	90ffff9a 	adrp	x26, 0 <__abi_tag-0x2c4>
   10cc4:	aa0003f3 	mov	x19, x0
   10cc8:	2a1f03f4 	mov	w20, wzr
   10ccc:	3dc20d00 	ldr	q0, [x8, #2096]
   10cd0:	910143f5 	add	x21, sp, #0x50
   10cd4:	52801016 	mov	w22, #0x80                  	// #128
   10cd8:	528006d7 	mov	w23, #0x36                  	// #54
   10cdc:	72a001f8 	movk	w24, #0xf, lsl #16
   10ce0:	528007d9 	mov	w25, #0x3e                  	// #62
   10ce4:	3d800fe0 	str	q0, [sp, #48]
   10ce8:	3dc21120 	ldr	q0, [x9, #2112]
   10cec:	91220f5a 	add	x26, x26, #0x883
   10cf0:	3d800be0 	str	q0, [sp, #32]
   10cf4:	14000022 	b	10d7c <main+0xec>
   10cf8:	910143e0 	add	x0, sp, #0x50
   10cfc:	910143e1 	add	x1, sp, #0x50
   10d00:	94000120 	bl	11180 <_Z16sha256_transformP10SHA256_CTXPKh>
   10d04:	6f00e400 	movi	v0.2d, #0x0
   10d08:	f90043ff 	str	xzr, [sp, #128]
   10d0c:	ad0303e0 	stp	q0, q0, [sp, #96]
   10d10:	3d8017e0 	str	q0, [sp, #80]
   10d14:	b94093e8 	ldr	w8, [sp, #144]
   10d18:	910143e0 	add	x0, sp, #0x50
   10d1c:	f9404fe9 	ldr	x9, [sp, #152]
   10d20:	910143e1 	add	x1, sp, #0x50
   10d24:	531d7108 	lsl	w8, w8, #3
   10d28:	8b080128 	add	x8, x9, x8
   10d2c:	d348fd09 	lsr	x9, x8, #8
   10d30:	d350fd0a 	lsr	x10, x8, #16
   10d34:	d358fd0b 	lsr	x11, x8, #24
   10d38:	f9004fe8 	str	x8, [sp, #152]
   10d3c:	39023be9 	strb	w9, [sp, #142]
   10d40:	d360fd09 	lsr	x9, x8, #32
   10d44:	390237ea 	strb	w10, [sp, #141]
   10d48:	d368fd0a 	lsr	x10, x8, #40
   10d4c:	39023fe8 	strb	w8, [sp, #143]
   10d50:	39022fe9 	strb	w9, [sp, #139]
   10d54:	d370fd09 	lsr	x9, x8, #48
   10d58:	d378fd08 	lsr	x8, x8, #56
   10d5c:	390233eb 	strb	w11, [sp, #140]
   10d60:	39022bea 	strb	w10, [sp, #138]
   10d64:	390227e9 	strb	w9, [sp, #137]
   10d68:	390223e8 	strb	w8, [sp, #136]
   10d6c:	94000105 	bl	11180 <_Z16sha256_transformP10SHA256_CTXPKh>
   10d70:	11000694 	add	w20, w20, #0x1
   10d74:	6b18029f 	cmp	w20, w24
   10d78:	54000ea0 	b.eq	10f4c <main+0x2bc>  // b.none
   10d7c:	2a1f03e8 	mov	w8, wzr
   10d80:	aa1f03fb 	mov	x27, xzr
   10d84:	ad4107e0 	ldp	q0, q1, [sp, #32]
   10d88:	b90093ff 	str	wzr, [sp, #144]
   10d8c:	f9004fff 	str	xzr, [sp, #152]
   10d90:	ad0503e1 	stp	q1, q0, [sp, #160]
   10d94:	14000004 	b	10da4 <main+0x114>
   10d98:	1100077b 	add	w27, w27, #0x1
   10d9c:	7100cf7f 	cmp	w27, #0x33
   10da0:	54000222 	b.cs	10de4 <main+0x154>  // b.hs, b.nlast
   10da4:	387b6b49 	ldrb	w9, [x26, x27]
   10da8:	38284aa9 	strb	w9, [x21, w8, uxtw]
   10dac:	b94093e8 	ldr	w8, [sp, #144]
   10db0:	11000508 	add	w8, w8, #0x1
   10db4:	7101011f 	cmp	w8, #0x40
   10db8:	b90093e8 	str	w8, [sp, #144]
   10dbc:	54fffee1 	b.ne	10d98 <main+0x108>  // b.any
   10dc0:	910143e0 	add	x0, sp, #0x50
   10dc4:	910143e1 	add	x1, sp, #0x50
   10dc8:	940000ee 	bl	11180 <_Z16sha256_transformP10SHA256_CTXPKh>
   10dcc:	f9404fe9 	ldr	x9, [sp, #152]
   10dd0:	2a1f03e8 	mov	w8, wzr
   10dd4:	b90093ff 	str	wzr, [sp, #144]
   10dd8:	91080129 	add	x9, x9, #0x200
   10ddc:	f9004fe9 	str	x9, [sp, #152]
   10de0:	17ffffee 	b	10d98 <main+0x108>
   10de4:	38284abf 	strb	wzr, [x21, w8, uxtw]
   10de8:	53107e88 	lsr	w8, w20, #16
   10dec:	b94093e9 	ldr	w9, [sp, #144]
   10df0:	53087e8a 	lsr	w10, w20, #8
   10df4:	390133ff 	strb	wzr, [sp, #76]
   10df8:	390137e8 	strb	w8, [sp, #77]
   10dfc:	11000528 	add	w8, w9, #0x1
   10e00:	39013bea 	strb	w10, [sp, #78]
   10e04:	7101011f 	cmp	w8, #0x40
   10e08:	39013ff4 	strb	w20, [sp, #79]
   10e0c:	b90093e8 	str	w8, [sp, #144]
   10e10:	54000121 	b.ne	10e34 <main+0x1a4>  // b.any
   10e14:	910143e0 	add	x0, sp, #0x50
   10e18:	910143e1 	add	x1, sp, #0x50
   10e1c:	940000d9 	bl	11180 <_Z16sha256_transformP10SHA256_CTXPKh>
   10e20:	f9404fe9 	ldr	x9, [sp, #152]
   10e24:	2a1f03e8 	mov	w8, wzr
   10e28:	b90093ff 	str	wzr, [sp, #144]
   10e2c:	91080129 	add	x9, x9, #0x200
   10e30:	f9004fe9 	str	x9, [sp, #152]
   10e34:	394137e9 	ldrb	w9, [sp, #77]
   10e38:	38284aa9 	strb	w9, [x21, w8, uxtw]
   10e3c:	b94093e8 	ldr	w8, [sp, #144]
   10e40:	11000508 	add	w8, w8, #0x1
   10e44:	7101011f 	cmp	w8, #0x40
   10e48:	b90093e8 	str	w8, [sp, #144]
   10e4c:	54000121 	b.ne	10e70 <main+0x1e0>  // b.any
   10e50:	910143e0 	add	x0, sp, #0x50
   10e54:	910143e1 	add	x1, sp, #0x50
   10e58:	940000ca 	bl	11180 <_Z16sha256_transformP10SHA256_CTXPKh>
   10e5c:	f9404fe9 	ldr	x9, [sp, #152]
   10e60:	2a1f03e8 	mov	w8, wzr
   10e64:	b90093ff 	str	wzr, [sp, #144]
   10e68:	91080129 	add	x9, x9, #0x200
   10e6c:	f9004fe9 	str	x9, [sp, #152]
   10e70:	39413be9 	ldrb	w9, [sp, #78]
   10e74:	38284aa9 	strb	w9, [x21, w8, uxtw]
   10e78:	b94093e8 	ldr	w8, [sp, #144]
   10e7c:	11000508 	add	w8, w8, #0x1
   10e80:	7101011f 	cmp	w8, #0x40
   10e84:	b90093e8 	str	w8, [sp, #144]
   10e88:	54000121 	b.ne	10eac <main+0x21c>  // b.any
   10e8c:	910143e0 	add	x0, sp, #0x50
   10e90:	910143e1 	add	x1, sp, #0x50
   10e94:	940000bb 	bl	11180 <_Z16sha256_transformP10SHA256_CTXPKh>
   10e98:	f9404fe9 	ldr	x9, [sp, #152]
   10e9c:	2a1f03e8 	mov	w8, wzr
   10ea0:	b90093ff 	str	wzr, [sp, #144]
   10ea4:	91080129 	add	x9, x9, #0x200
   10ea8:	f9004fe9 	str	x9, [sp, #152]
   10eac:	39413fe9 	ldrb	w9, [sp, #79]
   10eb0:	38284aa9 	strb	w9, [x21, w8, uxtw]
   10eb4:	b94093e8 	ldr	w8, [sp, #144]
   10eb8:	11000508 	add	w8, w8, #0x1
   10ebc:	7101011f 	cmp	w8, #0x40
   10ec0:	b90093e8 	str	w8, [sp, #144]
   10ec4:	54000241 	b.ne	10f0c <main+0x27c>  // b.any
   10ec8:	910143e0 	add	x0, sp, #0x50
   10ecc:	910143e1 	add	x1, sp, #0x50
   10ed0:	940000ac 	bl	11180 <_Z16sha256_transformP10SHA256_CTXPKh>
   10ed4:	f9404fea 	ldr	x10, [sp, #152]
   10ed8:	2a1f03e9 	mov	w9, wzr
   10edc:	aa1f03e8 	mov	x8, xzr
   10ee0:	b90093ff 	str	wzr, [sp, #144]
   10ee4:	390143f6 	strb	w22, [sp, #80]
   10ee8:	9108014a 	add	x10, x10, #0x200
   10eec:	f9004fea 	str	x10, [sp, #152]
   10ef0:	8b150108 	add	x8, x8, x21
   10ef4:	4b0902e9 	sub	w9, w23, w9
   10ef8:	91000500 	add	x0, x8, #0x1
   10efc:	91000522 	add	x2, x9, #0x1
   10f00:	2a1f03e1 	mov	w1, wzr
   10f04:	94000157 	bl	11460 <memset@plt>
   10f08:	17ffff83 	b	10d14 <main+0x84>
   10f0c:	1100050a 	add	w10, w8, #0x1
   10f10:	7100dd1f 	cmp	w8, #0x37
   10f14:	38286ab6 	strb	w22, [x21, x8]
   10f18:	540000a8 	b.hi	10f2c <main+0x29c>  // b.pmore
   10f1c:	2a0803e9 	mov	w9, w8
   10f20:	7100dd5f 	cmp	w10, #0x37
   10f24:	54ffef88 	b.hi	10d14 <main+0x84>  // b.pmore
   10f28:	17fffff2 	b	10ef0 <main+0x260>
   10f2c:	7100fd5f 	cmp	w10, #0x3f
   10f30:	54ffee48 	b.hi	10cf8 <main+0x68>  // b.pmore
   10f34:	4b080328 	sub	w8, w25, w8
   10f38:	8b2a42a0 	add	x0, x21, w10, uxtw
   10f3c:	91000502 	add	x2, x8, #0x1
   10f40:	2a1f03e1 	mov	w1, wzr
   10f44:	94000147 	bl	11460 <memset@plt>
   10f48:	17ffff6c 	b	10cf8 <main+0x68>
   10f4c:	29555ff8 	ldp	w24, w23, [sp, #168]
   10f50:	295657f6 	ldp	w22, w21, [sp, #176]
   10f54:	295723f4 	ldp	w20, w8, [sp, #184]
   10f58:	295467fc 	ldp	w28, w25, [sp, #160]
   10f5c:	53187f0a 	lsr	w10, w24, #24
   10f60:	53187ee9 	lsr	w9, w23, #24
   10f64:	b90033e8 	str	w8, [sp, #48]
   10f68:	53187d08 	lsr	w8, w8, #24
   10f6c:	2901a7ea 	stp	w10, w9, [sp, #12]
   10f70:	53187eca 	lsr	w10, w22, #24
   10f74:	53187ea9 	lsr	w9, w21, #24
   10f78:	53187f9a 	lsr	w26, w28, #24
   10f7c:	53187f3b 	lsr	w27, w25, #24
   10f80:	2902a7ea 	stp	w10, w9, [sp, #20]
   10f84:	53187e89 	lsr	w9, w20, #24
   10f88:	2903a3e9 	stp	w9, w8, [sp, #28]
   10f8c:	94000129 	bl	11430 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
   10f90:	cb130008 	sub	x8, x0, x19
   10f94:	d2d09009 	mov	x9, #0x848000000000        	// #145685290680320
   10f98:	f2e825c9 	movk	x9, #0x412e, lsl #48
   10f9c:	90ffff80 	adrp	x0, 0 <__abi_tag-0x2c4>
   10fa0:	91215400 	add	x0, x0, #0x855
   10fa4:	9e620100 	scvtf	d0, x8
   10fa8:	d2c80008 	mov	x8, #0x400000000000        	// #70368744177664
   10fac:	9e670121 	fmov	d1, x9
   10fb0:	f2e811e8 	movk	x8, #0x408f, lsl #48
   10fb4:	1e611800 	fdiv	d0, d0, d1
   10fb8:	9e670102 	fmov	d2, x8
   10fbc:	1e621802 	fdiv	d2, d0, d2
   10fc0:	1e621821 	fdiv	d1, d1, d2
   10fc4:	9400011f 	bl	11440 <printf@plt>
   10fc8:	90ffff93 	adrp	x19, 0 <__abi_tag-0x2c4>
   10fcc:	2a1a03e1 	mov	w1, w26
   10fd0:	91214273 	add	x19, x19, #0x850
   10fd4:	aa1303e0 	mov	x0, x19
   10fd8:	9400011a 	bl	11440 <printf@plt>
   10fdc:	53105f81 	ubfx	w1, w28, #16, #8
   10fe0:	aa1303e0 	mov	x0, x19
   10fe4:	94000117 	bl	11440 <printf@plt>
   10fe8:	53083f81 	ubfx	w1, w28, #8, #8
   10fec:	aa1303e0 	mov	x0, x19
   10ff0:	94000114 	bl	11440 <printf@plt>
   10ff4:	12001f81 	and	w1, w28, #0xff
   10ff8:	aa1303e0 	mov	x0, x19
   10ffc:	94000111 	bl	11440 <printf@plt>
   11000:	aa1303e0 	mov	x0, x19
   11004:	2a1b03e1 	mov	w1, w27
   11008:	9400010e 	bl	11440 <printf@plt>
   1100c:	53105f21 	ubfx	w1, w25, #16, #8
   11010:	aa1303e0 	mov	x0, x19
   11014:	9400010b 	bl	11440 <printf@plt>
   11018:	53083f21 	ubfx	w1, w25, #8, #8
   1101c:	aa1303e0 	mov	x0, x19
   11020:	94000108 	bl	11440 <printf@plt>
   11024:	12001f21 	and	w1, w25, #0xff
   11028:	aa1303e0 	mov	x0, x19
   1102c:	94000105 	bl	11440 <printf@plt>
   11030:	aa1303e0 	mov	x0, x19
   11034:	b9400fe1 	ldr	w1, [sp, #12]
   11038:	94000102 	bl	11440 <printf@plt>
   1103c:	53105f01 	ubfx	w1, w24, #16, #8
   11040:	aa1303e0 	mov	x0, x19
   11044:	940000ff 	bl	11440 <printf@plt>
   11048:	53083f01 	ubfx	w1, w24, #8, #8
   1104c:	aa1303e0 	mov	x0, x19
   11050:	940000fc 	bl	11440 <printf@plt>
   11054:	12001f01 	and	w1, w24, #0xff
   11058:	aa1303e0 	mov	x0, x19
   1105c:	940000f9 	bl	11440 <printf@plt>
   11060:	aa1303e0 	mov	x0, x19
   11064:	b94013e1 	ldr	w1, [sp, #16]
   11068:	940000f6 	bl	11440 <printf@plt>
   1106c:	53105ee1 	ubfx	w1, w23, #16, #8
   11070:	aa1303e0 	mov	x0, x19
   11074:	940000f3 	bl	11440 <printf@plt>
   11078:	53083ee1 	ubfx	w1, w23, #8, #8
   1107c:	aa1303e0 	mov	x0, x19
   11080:	940000f0 	bl	11440 <printf@plt>
   11084:	12001ee1 	and	w1, w23, #0xff
   11088:	aa1303e0 	mov	x0, x19
   1108c:	940000ed 	bl	11440 <printf@plt>
   11090:	aa1303e0 	mov	x0, x19
   11094:	b94017e1 	ldr	w1, [sp, #20]
   11098:	940000ea 	bl	11440 <printf@plt>
   1109c:	53105ec1 	ubfx	w1, w22, #16, #8
   110a0:	aa1303e0 	mov	x0, x19
   110a4:	940000e7 	bl	11440 <printf@plt>
   110a8:	53083ec1 	ubfx	w1, w22, #8, #8
   110ac:	aa1303e0 	mov	x0, x19
   110b0:	940000e4 	bl	11440 <printf@plt>
   110b4:	12001ec1 	and	w1, w22, #0xff
   110b8:	aa1303e0 	mov	x0, x19
   110bc:	940000e1 	bl	11440 <printf@plt>
   110c0:	aa1303e0 	mov	x0, x19
   110c4:	b9401be1 	ldr	w1, [sp, #24]
   110c8:	940000de 	bl	11440 <printf@plt>
   110cc:	53105ea1 	ubfx	w1, w21, #16, #8
   110d0:	aa1303e0 	mov	x0, x19
   110d4:	940000db 	bl	11440 <printf@plt>
   110d8:	53083ea1 	ubfx	w1, w21, #8, #8
   110dc:	aa1303e0 	mov	x0, x19
   110e0:	940000d8 	bl	11440 <printf@plt>
   110e4:	12001ea1 	and	w1, w21, #0xff
   110e8:	aa1303e0 	mov	x0, x19
   110ec:	940000d5 	bl	11440 <printf@plt>
   110f0:	aa1303e0 	mov	x0, x19
   110f4:	b9401fe1 	ldr	w1, [sp, #28]
   110f8:	940000d2 	bl	11440 <printf@plt>
   110fc:	53105e81 	ubfx	w1, w20, #16, #8
   11100:	aa1303e0 	mov	x0, x19
   11104:	940000cf 	bl	11440 <printf@plt>
   11108:	53083e81 	ubfx	w1, w20, #8, #8
   1110c:	aa1303e0 	mov	x0, x19
   11110:	940000cc 	bl	11440 <printf@plt>
   11114:	12001e81 	and	w1, w20, #0xff
   11118:	aa1303e0 	mov	x0, x19
   1111c:	940000c9 	bl	11440 <printf@plt>
   11120:	aa1303e0 	mov	x0, x19
   11124:	b94023e1 	ldr	w1, [sp, #32]
   11128:	940000c6 	bl	11440 <printf@plt>
   1112c:	b94033f4 	ldr	w20, [sp, #48]
   11130:	aa1303e0 	mov	x0, x19
   11134:	53105e81 	ubfx	w1, w20, #16, #8
   11138:	940000c2 	bl	11440 <printf@plt>
   1113c:	53083e81 	ubfx	w1, w20, #8, #8
   11140:	aa1303e0 	mov	x0, x19
   11144:	940000bf 	bl	11440 <printf@plt>
   11148:	12001e81 	and	w1, w20, #0xff
   1114c:	aa1303e0 	mov	x0, x19
   11150:	940000bc 	bl	11440 <printf@plt>
   11154:	52800140 	mov	w0, #0xa                   	// #10
   11158:	940000be 	bl	11450 <putchar@plt>
   1115c:	a9524ff4 	ldp	x20, x19, [sp, #288]
   11160:	2a1f03e0 	mov	w0, wzr
   11164:	a95157f6 	ldp	x22, x21, [sp, #272]
   11168:	a9505ff8 	ldp	x24, x23, [sp, #256]
   1116c:	a94f67fa 	ldp	x26, x25, [sp, #240]
   11170:	a94e6ffc 	ldp	x28, x27, [sp, #224]
   11174:	a94d7bfd 	ldp	x29, x30, [sp, #208]
   11178:	9104c3ff 	add	sp, sp, #0x130
   1117c:	d65f03c0 	ret

0000000000011180 <_Z16sha256_transformP10SHA256_CTXPKh>:
   11180:	d10503ff 	sub	sp, sp, #0x140
   11184:	f90083fd 	str	x29, [sp, #256]
   11188:	a9115ff8 	stp	x24, x23, [sp, #272]
   1118c:	a91257f6 	stp	x22, x21, [sp, #288]
   11190:	a9134ff4 	stp	x20, x19, [sp, #304]
   11194:	910003e8 	mov	x8, sp
   11198:	aa1f03e9 	mov	x9, xzr
   1119c:	9100910a 	add	x10, x8, #0x24
   111a0:	29402c28 	ldp	w8, w11, [x1]
   111a4:	2941342c 	ldp	w12, w13, [x1, #8]
   111a8:	2944402f 	ldp	w15, w16, [x1, #32]
   111ac:	5ac00908 	rev	w8, w8
   111b0:	5ac0096b 	rev	w11, w11
   111b4:	5ac0098c 	rev	w12, w12
   111b8:	5ac009ad 	rev	w13, w13
   111bc:	29002fe8 	stp	w8, w11, [sp]
   111c0:	2942382b 	ldp	w11, w14, [x1, #16]
   111c4:	290137ec 	stp	w12, w13, [sp, #8]
   111c8:	2943342c 	ldp	w12, w13, [x1, #24]
   111cc:	5ac0096b 	rev	w11, w11
   111d0:	5ac009ce 	rev	w14, w14
   111d4:	5ac0098c 	rev	w12, w12
   111d8:	5ac009ad 	rev	w13, w13
   111dc:	29023beb 	stp	w11, w14, [sp, #16]
   111e0:	5ac009eb 	rev	w11, w15
   111e4:	5ac00a0e 	rev	w14, w16
   111e8:	290337ec 	stp	w12, w13, [sp, #24]
   111ec:	2945342c 	ldp	w12, w13, [x1, #40]
   111f0:	29043beb 	stp	w11, w14, [sp, #32]
   111f4:	2946382b 	ldp	w11, w14, [x1, #48]
   111f8:	2947402f 	ldp	w15, w16, [x1, #56]
   111fc:	5ac0098c 	rev	w12, w12
   11200:	5ac009ad 	rev	w13, w13
   11204:	5ac0096b 	rev	w11, w11
   11208:	5ac009ce 	rev	w14, w14
   1120c:	290537ec 	stp	w12, w13, [sp, #40]
   11210:	5ac009ec 	rev	w12, w15
   11214:	5ac00a0d 	rev	w13, w16
   11218:	29063beb 	stp	w11, w14, [sp, #48]
   1121c:	2a0803eb 	mov	w11, w8
   11220:	290737ec 	stp	w12, w13, [sp, #56]
   11224:	8b09014c 	add	x12, x10, x9
   11228:	91001129 	add	x9, x9, #0x4
   1122c:	f103013f 	cmp	x9, #0xc0
   11230:	b940158d 	ldr	w13, [x12, #20]
   11234:	b85e018e 	ldur	w14, [x12, #-32]
   11238:	b9400190 	ldr	w16, [x12]
   1123c:	138d45af 	ror	w15, w13, #17
   11240:	138e1dd1 	ror	w17, w14, #7
   11244:	4acd4def 	eor	w15, w15, w13, ror #19
   11248:	4a4d29ed 	eor	w13, w15, w13, lsr #10
   1124c:	4ace4a2f 	eor	w15, w17, w14, ror #18
   11250:	0b1001ad 	add	w13, w13, w16
   11254:	0b0b01ab 	add	w11, w13, w11
   11258:	4a4e0ded 	eor	w13, w15, w14, lsr #3
   1125c:	0b0d016d 	add	w13, w11, w13
   11260:	2a0e03eb 	mov	w11, w14
   11264:	b9001d8d 	str	w13, [x12, #28]
   11268:	54fffde1 	b.ne	11224 <_Z16sha256_transformP10SHA256_CTXPKh+0xa4>  // b.any
   1126c:	910003ee 	mov	x14, sp
   11270:	f0ffff66 	adrp	x6, 0 <__abi_tag-0x2c4>
   11274:	294a2809 	ldp	w9, w10, [x0, #80]
   11278:	294c300b 	ldp	w11, w12, [x0, #96]
   1127c:	910011d2 	add	x18, x14, #0x4
   11280:	aa1f03ed 	mov	x13, xzr
   11284:	294d380f 	ldp	w15, w14, [x0, #104]
   11288:	294b0403 	ldp	w3, w1, [x0, #88]
   1128c:	2a0903f3 	mov	w19, w9
   11290:	2a0a03e4 	mov	w4, w10
   11294:	2a0c03f1 	mov	w17, w12
   11298:	2a0b03e2 	mov	w2, w11
   1129c:	2a0e03f4 	mov	w20, w14
   112a0:	2a0f03f0 	mov	w16, w15
   112a4:	2a0103f5 	mov	w21, w1
   112a8:	2a0303e5 	mov	w5, w3
   112ac:	9122e0c6 	add	x6, x6, #0x8b8
   112b0:	13821856 	ror	w22, w2, #6
   112b4:	2a0403e7 	mov	w7, w4
   112b8:	2a1303e4 	mov	w4, w19
   112bc:	0a020233 	and	w19, w17, w2
   112c0:	b86d68d8 	ldr	w24, [x6, x13]
   112c4:	0a220217 	bic	w23, w16, w2
   112c8:	4ac22ed6 	eor	w22, w22, w2, ror #11
   112cc:	f103f1bf 	cmp	x13, #0xfc
   112d0:	4ac266d6 	eor	w22, w22, w2, ror #25
   112d4:	0b1302d3 	add	w19, w22, w19
   112d8:	13840896 	ror	w22, w4, #2
   112dc:	0b140273 	add	w19, w19, w20
   112e0:	4a0500f4 	eor	w20, w7, w5
   112e4:	0b170273 	add	w19, w19, w23
   112e8:	0a0500f7 	and	w23, w7, w5
   112ec:	0a140094 	and	w20, w4, w20
   112f0:	4ac436d6 	eor	w22, w22, w4, ror #13
   112f4:	0b180273 	add	w19, w19, w24
   112f8:	4ac45ad6 	eor	w22, w22, w4, ror #22
   112fc:	4a170294 	eor	w20, w20, w23
   11300:	0b080268 	add	w8, w19, w8
   11304:	0b1402d3 	add	w19, w22, w20
   11308:	0b150115 	add	w21, w8, w21
   1130c:	0b080273 	add	w19, w19, w8
   11310:	54000140 	b.eq	11338 <_Z16sha256_transformP10SHA256_CTXPKh+0x1b8>  // b.none
   11314:	b86d6a48 	ldr	w8, [x18, x13]
   11318:	910011ad 	add	x13, x13, #0x4
   1131c:	2a1003f4 	mov	w20, w16
   11320:	2a1103f0 	mov	w16, w17
   11324:	2a0203f1 	mov	w17, w2
   11328:	2a1503e2 	mov	w2, w21
   1132c:	2a0503f5 	mov	w21, w5
   11330:	2a0703e5 	mov	w5, w7
   11334:	17ffffdf 	b	112b0 <_Z16sha256_transformP10SHA256_CTXPKh+0x130>
   11338:	0b090268 	add	w8, w19, w9
   1133c:	0b0a0089 	add	w9, w4, w10
   11340:	0b0300ea 	add	w10, w7, w3
   11344:	0b0100ad 	add	w13, w5, w1
   11348:	a9534ff4 	ldp	x20, x19, [sp, #304]
   1134c:	290a2408 	stp	w8, w9, [x0, #80]
   11350:	0b0b02a8 	add	w8, w21, w11
   11354:	a95257f6 	ldp	x22, x21, [sp, #288]
   11358:	0b0c0049 	add	w9, w2, w12
   1135c:	290b340a 	stp	w10, w13, [x0, #88]
   11360:	a9515ff8 	ldp	x24, x23, [sp, #272]
   11364:	0b0f022a 	add	w10, w17, w15
   11368:	0b0e020b 	add	w11, w16, w14
   1136c:	f94083fd 	ldr	x29, [sp, #256]
   11370:	290c2408 	stp	w8, w9, [x0, #96]
   11374:	290d2c0a 	stp	w10, w11, [x0, #104]
   11378:	910503ff 	add	sp, sp, #0x140
   1137c:	d65f03c0 	ret

Disassembly of section .init:

0000000000011380 <_init>:
   11380:	d503201f 	nop
   11384:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   11388:	910003fd 	mov	x29, sp
   1138c:	97fffdfa 	bl	10b74 <call_weak_fn>
   11390:	a8c17bfd 	ldp	x29, x30, [sp], #16
   11394:	d65f03c0 	ret

Disassembly of section .fini:

0000000000011398 <_fini>:
   11398:	d503201f 	nop
   1139c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   113a0:	910003fd 	mov	x29, sp
   113a4:	a8c17bfd 	ldp	x29, x30, [sp], #16
   113a8:	d65f03c0 	ret

Disassembly of section .plt:

00000000000113b0 <abort@plt-0x20>:
   113b0:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
   113b4:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfb78>
   113b8:	f9435611 	ldr	x17, [x16, #1704]
   113bc:	911aa210 	add	x16, x16, #0x6a8
   113c0:	d61f0220 	br	x17
   113c4:	d503201f 	nop
   113c8:	d503201f 	nop
   113cc:	d503201f 	nop

00000000000113d0 <abort@plt>:
   113d0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfb78>
   113d4:	f9435a11 	ldr	x17, [x16, #1712]
   113d8:	911ac210 	add	x16, x16, #0x6b0
   113dc:	d61f0220 	br	x17

00000000000113e0 <__libc_start_main@plt>:
   113e0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfb78>
   113e4:	f9435e11 	ldr	x17, [x16, #1720]
   113e8:	911ae210 	add	x16, x16, #0x6b8
   113ec:	d61f0220 	br	x17

00000000000113f0 <__gmon_start__@plt>:
   113f0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfb78>
   113f4:	f9436211 	ldr	x17, [x16, #1728]
   113f8:	911b0210 	add	x16, x16, #0x6c0
   113fc:	d61f0220 	br	x17

0000000000011400 <__cxa_finalize@plt>:
   11400:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfb78>
   11404:	f9436611 	ldr	x17, [x16, #1736]
   11408:	911b2210 	add	x16, x16, #0x6c8
   1140c:	d61f0220 	br	x17

0000000000011410 <_ZNSt8ios_base4InitC1Ev@plt>:
   11410:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfb78>
   11414:	f9436a11 	ldr	x17, [x16, #1744]
   11418:	911b4210 	add	x16, x16, #0x6d0
   1141c:	d61f0220 	br	x17

0000000000011420 <__cxa_atexit@plt>:
   11420:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfb78>
   11424:	f9436e11 	ldr	x17, [x16, #1752]
   11428:	911b6210 	add	x16, x16, #0x6d8
   1142c:	d61f0220 	br	x17

0000000000011430 <_ZNSt6chrono3_V212system_clock3nowEv@plt>:
   11430:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfb78>
   11434:	f9437211 	ldr	x17, [x16, #1760]
   11438:	911b8210 	add	x16, x16, #0x6e0
   1143c:	d61f0220 	br	x17

0000000000011440 <printf@plt>:
   11440:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfb78>
   11444:	f9437611 	ldr	x17, [x16, #1768]
   11448:	911ba210 	add	x16, x16, #0x6e8
   1144c:	d61f0220 	br	x17

0000000000011450 <putchar@plt>:
   11450:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfb78>
   11454:	f9437a11 	ldr	x17, [x16, #1776]
   11458:	911bc210 	add	x16, x16, #0x6f0
   1145c:	d61f0220 	br	x17

0000000000011460 <memset@plt>:
   11460:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfb78>
   11464:	f9437e11 	ldr	x17, [x16, #1784]
   11468:	911be210 	add	x16, x16, #0x6f8
   1146c:	d61f0220 	br	x17
