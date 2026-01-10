
/bench/bench:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000010940 <_start>:
   10940:	d503201f 	nop
   10944:	d280001d 	mov	x29, #0x0                   	// #0
   10948:	d280001e 	mov	x30, #0x0                   	// #0
   1094c:	aa0003e5 	mov	x5, x0
   10950:	f94003e1 	ldr	x1, [sp]
   10954:	910023e2 	add	x2, sp, #0x8
   10958:	910003e6 	mov	x6, sp
   1095c:	d503201f 	nop
   10960:	10002d40 	adr	x0, 10f08 <main>
   10964:	d2800003 	mov	x3, #0x0                   	// #0
   10968:	d2800004 	mov	x4, #0x0                   	// #0
   1096c:	9400027d 	bl	11360 <__libc_start_main@plt>
   10970:	94000278 	bl	11350 <abort@plt>

0000000000010974 <call_weak_fn>:
   10974:	b0000080 	adrp	x0, 21000 <memset@plt+0xfc20>
   10978:	f942dc00 	ldr	x0, [x0, #1464]
   1097c:	b4000040 	cbz	x0, 10984 <call_weak_fn+0x10>
   10980:	1400027c 	b	11370 <__gmon_start__@plt>
   10984:	d65f03c0 	ret
	...

0000000000010990 <deregister_tm_clones>:
   10990:	d503201f 	nop
   10994:	101062e0 	adr	x0, 315f0 <__TMC_END__>
   10998:	d503201f 	nop
   1099c:	101062a1 	adr	x1, 315f0 <__TMC_END__>
   109a0:	eb00003f 	cmp	x1, x0
   109a4:	540000c0 	b.eq	109bc <deregister_tm_clones+0x2c>  // b.none
   109a8:	b0000081 	adrp	x1, 21000 <memset@plt+0xfc20>
   109ac:	f942e021 	ldr	x1, [x1, #1472]
   109b0:	b4000061 	cbz	x1, 109bc <deregister_tm_clones+0x2c>
   109b4:	aa0103f0 	mov	x16, x1
   109b8:	d61f0200 	br	x16
   109bc:	d65f03c0 	ret

00000000000109c0 <register_tm_clones>:
   109c0:	d503201f 	nop
   109c4:	10106160 	adr	x0, 315f0 <__TMC_END__>
   109c8:	d503201f 	nop
   109cc:	10106121 	adr	x1, 315f0 <__TMC_END__>
   109d0:	cb000021 	sub	x1, x1, x0
   109d4:	d37ffc22 	lsr	x2, x1, #63
   109d8:	8b810c41 	add	x1, x2, x1, asr #3
   109dc:	9341fc21 	asr	x1, x1, #1
   109e0:	b40000c1 	cbz	x1, 109f8 <register_tm_clones+0x38>
   109e4:	b0000082 	adrp	x2, 21000 <memset@plt+0xfc20>
   109e8:	f942e442 	ldr	x2, [x2, #1480]
   109ec:	b4000062 	cbz	x2, 109f8 <register_tm_clones+0x38>
   109f0:	aa0203f0 	mov	x16, x2
   109f4:	d61f0200 	br	x16
   109f8:	d65f03c0 	ret
   109fc:	d503201f 	nop

0000000000010a00 <__do_global_dtors_aux>:
   10a00:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   10a04:	910003fd 	mov	x29, sp
   10a08:	f9000bf3 	str	x19, [sp, #16]
   10a0c:	b0000113 	adrp	x19, 31000 <_DYNAMIC+0xfc00>
   10a10:	39596260 	ldrb	w0, [x19, #1624]
   10a14:	35000140 	cbnz	w0, 10a3c <__do_global_dtors_aux+0x3c>
   10a18:	b0000080 	adrp	x0, 21000 <memset@plt+0xfc20>
   10a1c:	f942e800 	ldr	x0, [x0, #1488]
   10a20:	b4000080 	cbz	x0, 10a30 <__do_global_dtors_aux+0x30>
   10a24:	b0000100 	adrp	x0, 31000 <_DYNAMIC+0xfc00>
   10a28:	f942f400 	ldr	x0, [x0, #1512]
   10a2c:	94000255 	bl	11380 <__cxa_finalize@plt>
   10a30:	97ffffd8 	bl	10990 <deregister_tm_clones>
   10a34:	52800020 	mov	w0, #0x1                   	// #1
   10a38:	39196260 	strb	w0, [x19, #1624]
   10a3c:	f9400bf3 	ldr	x19, [sp, #16]
   10a40:	a8c27bfd 	ldp	x29, x30, [sp], #32
   10a44:	d65f03c0 	ret
   10a48:	d503201f 	nop
   10a4c:	d503201f 	nop

0000000000010a50 <frame_dummy>:
   10a50:	17ffffdc 	b	109c0 <register_tm_clones>

0000000000010a54 <run_steps>:
   10a54:	d102c3ff 	sub	sp, sp, #0xb0
   10a58:	fd0013ec 	str	d12, [sp, #32]
   10a5c:	6d032beb 	stp	d11, d10, [sp, #48]
   10a60:	6d0423e9 	stp	d9, d8, [sp, #64]
   10a64:	a9057bfd 	stp	x29, x30, [sp, #80]
   10a68:	910143fd 	add	x29, sp, #0x50
   10a6c:	a9066ffc 	stp	x28, x27, [sp, #96]
   10a70:	a90767fa 	stp	x26, x25, [sp, #112]
   10a74:	a9085ff8 	stp	x24, x23, [sp, #128]
   10a78:	a90957f6 	stp	x22, x21, [sp, #144]
   10a7c:	a90a4ff4 	stp	x20, x19, [sp, #160]
   10a80:	90ffff88 	adrp	x8, 0 <__abi_tag-0x2c4>
   10a84:	aa0703f3 	mov	x19, x7
   10a88:	a946efbc 	ldp	x28, x27, [x29, #104]
   10a8c:	6f03f607 	fmov	v7.2d, #1.000000000000000000e+00
   10a90:	aa0603f4 	mov	x20, x6
   10a94:	fd43b108 	ldr	d8, [x8, #1888]
   10a98:	d29ad2a8 	mov	x8, #0xd695                	// #54933
   10a9c:	f2bd04c8 	movk	x8, #0xe826, lsl #16
   10aa0:	aa0503f5 	mov	x21, x5
   10aa4:	f2c5c168 	movk	x8, #0x2e0b, lsl #32
   10aa8:	aa0403f6 	mov	x22, x4
   10aac:	f2e7c228 	movk	x8, #0x3e11, lsl #48
   10ab0:	aa0303f7 	mov	x23, x3
   10ab4:	aa0203f8 	mov	x24, x2
   10ab8:	aa0103f9 	mov	x25, x1
   10abc:	2a1f03e9 	mov	w9, wzr
   10ac0:	f94033ba 	ldr	x26, [x29, #96]
   10ac4:	1e6e1009 	fmov	d9, #1.000000000000000000e+00
   10ac8:	4e080d10 	dup	v16.2d, x8
   10acc:	b9002be0 	str	w0, [sp, #40]
   10ad0:	ad001ff0 	stp	q16, q7, [sp]
   10ad4:	aa1a03e0 	mov	x0, x26
   10ad8:	2a1f03e1 	mov	w1, wzr
   10adc:	5285dc02 	mov	w2, #0x2ee0                	// #12000
   10ae0:	b81dc3a9 	stur	w9, [x29, #-36]
   10ae4:	9400023f 	bl	113e0 <memset@plt>
   10ae8:	aa1c03e0 	mov	x0, x28
   10aec:	2a1f03e1 	mov	w1, wzr
   10af0:	5285dc02 	mov	w2, #0x2ee0                	// #12000
   10af4:	9400023b 	bl	113e0 <memset@plt>
   10af8:	aa1b03e0 	mov	x0, x27
   10afc:	2a1f03e1 	mov	w1, wzr
   10b00:	5285dc02 	mov	w2, #0x2ee0                	// #12000
   10b04:	94000237 	bl	113e0 <memset@plt>
   10b08:	2f00e400 	movi	d0, #0x0
   10b0c:	2f00e401 	movi	d1, #0x0
   10b10:	2f00e402 	movi	d2, #0x0
   10b14:	aa1f03e8 	mov	x8, xzr
   10b18:	52800309 	mov	w9, #0x18                  	// #24
   10b1c:	5280bb6a 	mov	w10, #0x5db                 	// #1499
   10b20:	5280002b 	mov	w11, #0x1                   	// #1
   10b24:	d37df10c 	lsl	x12, x8, #3
   10b28:	f117691f 	cmp	x8, #0x5da
   10b2c:	54001428 	b.hi	10db0 <run_steps+0x35c>  // b.pmore
   10b30:	fc6c6b23 	ldr	d3, [x25, x12]
   10b34:	f117611f 	cmp	x8, #0x5d8
   10b38:	fc6c6b04 	ldr	d4, [x24, x12]
   10b3c:	fc6c6ae5 	ldr	d5, [x23, x12]
   10b40:	fc6c6a66 	ldr	d6, [x19, x12]
   10b44:	54000063 	b.cc	10b50 <run_steps+0xfc>  // b.lo, b.ul, b.last
   10b48:	aa0b03ee 	mov	x14, x11
   10b4c:	14000065 	b	10ce0 <run_steps+0x28c>
   10b50:	ad402fec 	ldp	q12, q11, [sp]
   10b54:	5280bb6d 	mov	w13, #0x5db                 	// #1499
   10b58:	927ef54f 	and	x15, x10, #0xfffffffffffffffc
   10b5c:	cb0801ae 	sub	x14, x13, x8
   10b60:	aa0903f0 	mov	x16, x9
   10b64:	927ef5cd 	and	x13, x14, #0xfffffffffffffffc
   10b68:	4e080467 	dup	v7.2d, v3.d[0]
   10b6c:	4e080490 	dup	v16.2d, v4.d[0]
   10b70:	4e0804b1 	dup	v17.2d, v5.d[0]
   10b74:	8b100331 	add	x17, x25, x16
   10b78:	8b100312 	add	x18, x24, x16
   10b7c:	8b1002e0 	add	x0, x23, x16
   10b80:	f10011ef 	subs	x15, x15, #0x4
   10b84:	3cdf0232 	ldur	q18, [x17, #-16]
   10b88:	3cdf0253 	ldur	q19, [x18, #-16]
   10b8c:	ad7fe415 	ldp	q21, q25, [x0, #-16]
   10b90:	4ee7d654 	fsub	v20.2d, v18.2d, v7.2d
   10b94:	8b100360 	add	x0, x27, x16
   10b98:	4ef0d673 	fsub	v19.2d, v19.2d, v16.2d
   10b9c:	4ef1d6b2 	fsub	v18.2d, v21.2d, v17.2d
   10ba0:	6e74de95 	fmul	v21.2d, v20.2d, v20.2d
   10ba4:	6e73de76 	fmul	v22.2d, v19.2d, v19.2d
   10ba8:	6e72de57 	fmul	v23.2d, v18.2d, v18.2d
   10bac:	4e76d6b5 	fadd	v21.2d, v21.2d, v22.2d
   10bb0:	3dc00236 	ldr	q22, [x17]
   10bb4:	8b100271 	add	x17, x19, x16
   10bb8:	4e77d6b5 	fadd	v21.2d, v21.2d, v23.2d
   10bbc:	3dc00257 	ldr	q23, [x18]
   10bc0:	8b100352 	add	x18, x26, x16
   10bc4:	4e6cd6b8 	fadd	v24.2d, v21.2d, v12.2d
   10bc8:	4ee7d6d5 	fsub	v21.2d, v22.2d, v7.2d
   10bcc:	4ef0d6f6 	fsub	v22.2d, v23.2d, v16.2d
   10bd0:	4ef1d737 	fsub	v23.2d, v25.2d, v17.2d
   10bd4:	6ee1fb18 	fsqrt	v24.2d, v24.2d
   10bd8:	6e75deb9 	fmul	v25.2d, v21.2d, v21.2d
   10bdc:	6e76deda 	fmul	v26.2d, v22.2d, v22.2d
   10be0:	6e77defb 	fmul	v27.2d, v23.2d, v23.2d
   10be4:	ad7ff65c 	ldp	q28, q29, [x18, #-16]
   10be8:	4e7ad739 	fadd	v25.2d, v25.2d, v26.2d
   10bec:	4e7bd739 	fadd	v25.2d, v25.2d, v27.2d
   10bf0:	4e6cd739 	fadd	v25.2d, v25.2d, v12.2d
   10bf4:	6ee1fb39 	fsqrt	v25.2d, v25.2d
   10bf8:	6e78fd78 	fdiv	v24.2d, v11.2d, v24.2d
   10bfc:	6e79fd79 	fdiv	v25.2d, v11.2d, v25.2d
   10c00:	6e78df1a 	fmul	v26.2d, v24.2d, v24.2d
   10c04:	6e7adf18 	fmul	v24.2d, v24.2d, v26.2d
   10c08:	6e79df3b 	fmul	v27.2d, v25.2d, v25.2d
   10c0c:	6e7bdf39 	fmul	v25.2d, v25.2d, v27.2d
   10c10:	ad7fee3a 	ldp	q26, q27, [x17, #-16]
   10c14:	8b100391 	add	x17, x28, x16
   10c18:	91008210 	add	x16, x16, #0x20
   10c1c:	6e78df5a 	fmul	v26.2d, v26.2d, v24.2d
   10c20:	4fc69318 	fmul	v24.2d, v24.2d, v6.d[0]
   10c24:	6e79df7b 	fmul	v27.2d, v27.2d, v25.2d
   10c28:	4fc69339 	fmul	v25.2d, v25.2d, v6.d[0]
   10c2c:	6e7ade9e 	fmul	v30.2d, v20.2d, v26.2d
   10c30:	6e7ade6a 	fmul	v10.2d, v19.2d, v26.2d
   10c34:	6e7bdebf 	fmul	v31.2d, v21.2d, v27.2d
   10c38:	6e7ade5a 	fmul	v26.2d, v18.2d, v26.2d
   10c3c:	6e79deb5 	fmul	v21.2d, v21.2d, v25.2d
   10c40:	6e78de94 	fmul	v20.2d, v20.2d, v24.2d
   10c44:	1e7e2842 	fadd	d2, d2, d30
   10c48:	1e6a2821 	fadd	d1, d1, d10
   10c4c:	1e7a2800 	fadd	d0, d0, d26
   10c50:	4ef5d7b5 	fsub	v21.2d, v29.2d, v21.2d
   10c54:	5e1807dd 	mov	d29, v30.d[1]
   10c58:	5e18055e 	mov	d30, v10.d[1]
   10c5c:	5e18075a 	mov	d26, v26.d[1]
   10c60:	6e78de73 	fmul	v19.2d, v19.2d, v24.2d
   10c64:	6e78de52 	fmul	v18.2d, v18.2d, v24.2d
   10c68:	6e7bded8 	fmul	v24.2d, v22.2d, v27.2d
   10c6c:	6e7bdefb 	fmul	v27.2d, v23.2d, v27.2d
   10c70:	6e79ded6 	fmul	v22.2d, v22.2d, v25.2d
   10c74:	6e79def7 	fmul	v23.2d, v23.2d, v25.2d
   10c78:	4ef4d794 	fsub	v20.2d, v28.2d, v20.2d
   10c7c:	ad7ff239 	ldp	q25, q28, [x17, #-16]
   10c80:	1e7d2842 	fadd	d2, d2, d29
   10c84:	1e7e2821 	fadd	d1, d1, d30
   10c88:	1e7a2800 	fadd	d0, d0, d26
   10c8c:	5e18071a 	mov	d26, v24.d[1]
   10c90:	ad3fd654 	stp	q20, q21, [x18, #-16]
   10c94:	5e1807f5 	mov	d21, v31.d[1]
   10c98:	4ef3d733 	fsub	v19.2d, v25.2d, v19.2d
   10c9c:	1e7f2842 	fadd	d2, d2, d31
   10ca0:	ad7fd019 	ldp	q25, q20, [x0, #-16]
   10ca4:	4ef6d796 	fsub	v22.2d, v28.2d, v22.2d
   10ca8:	5e18077c 	mov	d28, v27.d[1]
   10cac:	1e782821 	fadd	d1, d1, d24
   10cb0:	1e7b2800 	fadd	d0, d0, d27
   10cb4:	1e752842 	fadd	d2, d2, d21
   10cb8:	4ef2d732 	fsub	v18.2d, v25.2d, v18.2d
   10cbc:	ad3fda33 	stp	q19, q22, [x17, #-16]
   10cc0:	4ef7d694 	fsub	v20.2d, v20.2d, v23.2d
   10cc4:	1e7a2821 	fadd	d1, d1, d26
   10cc8:	1e7c2800 	fadd	d0, d0, d28
   10ccc:	ad3fd012 	stp	q18, q20, [x0, #-16]
   10cd0:	54fff521 	b.ne	10b74 <run_steps+0x120>  // b.any
   10cd4:	eb0d01df 	cmp	x14, x13
   10cd8:	540006c0 	b.eq	10db0 <run_steps+0x35c>  // b.none
   10cdc:	8b0d016e 	add	x14, x11, x13
   10ce0:	d37df1c2 	lsl	x2, x14, #3
   10ce4:	5280bb8f 	mov	w15, #0x5dc                 	// #1500
   10ce8:	aa1f03ed 	mov	x13, xzr
   10cec:	cb0e01ee 	sub	x14, x15, x14
   10cf0:	8b02036f 	add	x15, x27, x2
   10cf4:	8b020390 	add	x16, x28, x2
   10cf8:	8b020351 	add	x17, x26, x2
   10cfc:	8b020272 	add	x18, x19, x2
   10d00:	8b0202e0 	add	x0, x23, x2
   10d04:	8b020301 	add	x1, x24, x2
   10d08:	8b020322 	add	x2, x25, x2
   10d0c:	d37df1a3 	lsl	x3, x13, #3
   10d10:	910005ad 	add	x13, x13, #0x1
   10d14:	eb0d01df 	cmp	x14, x13
   10d18:	fc636847 	ldr	d7, [x2, x3]
   10d1c:	fc636830 	ldr	d16, [x1, x3]
   10d20:	fc636811 	ldr	d17, [x0, x3]
   10d24:	fc636a15 	ldr	d21, [x16, x3]
   10d28:	1e6338e7 	fsub	d7, d7, d3
   10d2c:	1e643a10 	fsub	d16, d16, d4
   10d30:	1e653a31 	fsub	d17, d17, d5
   10d34:	1e6708f2 	fmul	d18, d7, d7
   10d38:	1e700a13 	fmul	d19, d16, d16
   10d3c:	1e710a34 	fmul	d20, d17, d17
   10d40:	1e732a52 	fadd	d18, d18, d19
   10d44:	1e742a52 	fadd	d18, d18, d20
   10d48:	fc636a54 	ldr	d20, [x18, x3]
   10d4c:	1e682a52 	fadd	d18, d18, d8
   10d50:	1e61c252 	fsqrt	d18, d18
   10d54:	1e721932 	fdiv	d18, d9, d18
   10d58:	1e720a53 	fmul	d19, d18, d18
   10d5c:	1e730a52 	fmul	d18, d18, d19
   10d60:	1e720a93 	fmul	d19, d20, d18
   10d64:	1e7208d2 	fmul	d18, d6, d18
   10d68:	fc636a34 	ldr	d20, [x17, x3]
   10d6c:	1e7308f6 	fmul	d22, d7, d19
   10d70:	1e730a17 	fmul	d23, d16, d19
   10d74:	1e730a33 	fmul	d19, d17, d19
   10d78:	1e7208e7 	fmul	d7, d7, d18
   10d7c:	1e720a10 	fmul	d16, d16, d18
   10d80:	1e720a31 	fmul	d17, d17, d18
   10d84:	fc6369f2 	ldr	d18, [x15, x3]
   10d88:	1e762842 	fadd	d2, d2, d22
   10d8c:	1e772821 	fadd	d1, d1, d23
   10d90:	1e732800 	fadd	d0, d0, d19
   10d94:	1e673a87 	fsub	d7, d20, d7
   10d98:	1e703ab0 	fsub	d16, d21, d16
   10d9c:	1e713a51 	fsub	d17, d18, d17
   10da0:	fc236a27 	str	d7, [x17, x3]
   10da4:	fc236a10 	str	d16, [x16, x3]
   10da8:	fc2369f1 	str	d17, [x15, x3]
   10dac:	54fffb01 	b.ne	10d0c <run_steps+0x2b8>  // b.any
   10db0:	91000508 	add	x8, x8, #0x1
   10db4:	fc2c6b42 	str	d2, [x26, x12]
   10db8:	f117711f 	cmp	x8, #0x5dc
   10dbc:	fc2c6b81 	str	d1, [x28, x12]
   10dc0:	fc2c6b60 	str	d0, [x27, x12]
   10dc4:	54000180 	b.eq	10df4 <run_steps+0x3a0>  // b.none
   10dc8:	d37df10c 	lsl	x12, x8, #3
   10dcc:	9100056b 	add	x11, x11, #0x1
   10dd0:	d100054a 	sub	x10, x10, #0x1
   10dd4:	91002129 	add	x9, x9, #0x8
   10dd8:	fc6c6b42 	ldr	d2, [x26, x12]
   10ddc:	fc6c6b81 	ldr	d1, [x28, x12]
   10de0:	fc6c6b60 	ldr	d0, [x27, x12]
   10de4:	d37df10c 	lsl	x12, x8, #3
   10de8:	f117691f 	cmp	x8, #0x5da
   10dec:	54ffea29 	b.ls	10b30 <run_steps+0xdc>  // b.plast
   10df0:	17fffff0 	b	10db0 <run_steps+0x35c>
   10df4:	d2828f6c 	mov	x12, #0x147b                	// #5243
   10df8:	9285dbe8 	mov	x8, #0xffffffffffffd120    	// #-12000
   10dfc:	f2a8f5cc 	movk	x12, #0x47ae, lsl #16
   10e00:	f2cf5c2c 	movk	x12, #0x7ae1, lsl #32
   10e04:	f2e7f08c 	movk	x12, #0x3f84, lsl #48
   10e08:	8b080349 	add	x9, x26, x8
   10e0c:	8b08038a 	add	x10, x28, x8
   10e10:	8b0802cb 	add	x11, x22, x8
   10e14:	4e080d80 	dup	v0.2d, x12
   10e18:	3dcbb921 	ldr	q1, [x9, #12000]
   10e1c:	8b080369 	add	x9, x27, x8
   10e20:	3dcbb942 	ldr	q2, [x10, #12000]
   10e24:	8b0802aa 	add	x10, x21, x8
   10e28:	3dcbb963 	ldr	q3, [x11, #12000]
   10e2c:	3dcbb924 	ldr	q4, [x9, #12000]
   10e30:	8b080289 	add	x9, x20, x8
   10e34:	6e60dc21 	fmul	v1.2d, v1.2d, v0.2d
   10e38:	3dcbb945 	ldr	q5, [x10, #12000]
   10e3c:	6e60dc42 	fmul	v2.2d, v2.2d, v0.2d
   10e40:	b1004108 	adds	x8, x8, #0x10
   10e44:	6e60dc84 	fmul	v4.2d, v4.2d, v0.2d
   10e48:	3dcbb926 	ldr	q6, [x9, #12000]
   10e4c:	4e61d461 	fadd	v1.2d, v3.2d, v1.2d
   10e50:	4e62d4a2 	fadd	v2.2d, v5.2d, v2.2d
   10e54:	4e64d4c3 	fadd	v3.2d, v6.2d, v4.2d
   10e58:	3d8bb961 	str	q1, [x11, #12000]
   10e5c:	3d8bb942 	str	q2, [x10, #12000]
   10e60:	3d8bb923 	str	q3, [x9, #12000]
   10e64:	54fffd21 	b.ne	10e08 <run_steps+0x3b4>  // b.any
   10e68:	9285dbe8 	mov	x8, #0xffffffffffffd120    	// #-12000
   10e6c:	8b0802c9 	add	x9, x22, x8
   10e70:	8b0802aa 	add	x10, x21, x8
   10e74:	8b08032b 	add	x11, x25, x8
   10e78:	3dcbb921 	ldr	q1, [x9, #12000]
   10e7c:	8b080289 	add	x9, x20, x8
   10e80:	3dcbb942 	ldr	q2, [x10, #12000]
   10e84:	8b08030a 	add	x10, x24, x8
   10e88:	3dcbb963 	ldr	q3, [x11, #12000]
   10e8c:	3dcbb924 	ldr	q4, [x9, #12000]
   10e90:	8b0802e9 	add	x9, x23, x8
   10e94:	6e60dc21 	fmul	v1.2d, v1.2d, v0.2d
   10e98:	3dcbb945 	ldr	q5, [x10, #12000]
   10e9c:	6e60dc42 	fmul	v2.2d, v2.2d, v0.2d
   10ea0:	b1004108 	adds	x8, x8, #0x10
   10ea4:	6e60dc84 	fmul	v4.2d, v4.2d, v0.2d
   10ea8:	3dcbb926 	ldr	q6, [x9, #12000]
   10eac:	4e61d461 	fadd	v1.2d, v3.2d, v1.2d
   10eb0:	4e62d4a2 	fadd	v2.2d, v5.2d, v2.2d
   10eb4:	4e64d4c3 	fadd	v3.2d, v6.2d, v4.2d
   10eb8:	3d8bb961 	str	q1, [x11, #12000]
   10ebc:	3d8bb942 	str	q2, [x10, #12000]
   10ec0:	3d8bb923 	str	q3, [x9, #12000]
   10ec4:	54fffd41 	b.ne	10e6c <run_steps+0x418>  // b.any
   10ec8:	b85dc3a9 	ldur	w9, [x29, #-36]
   10ecc:	b9402be8 	ldr	w8, [sp, #40]
   10ed0:	11000529 	add	w9, w9, #0x1
   10ed4:	6b08013f 	cmp	w9, w8
   10ed8:	54ffdfe1 	b.ne	10ad4 <run_steps+0x80>  // b.any
   10edc:	a94a4ff4 	ldp	x20, x19, [sp, #160]
   10ee0:	a94957f6 	ldp	x22, x21, [sp, #144]
   10ee4:	a9485ff8 	ldp	x24, x23, [sp, #128]
   10ee8:	a94767fa 	ldp	x26, x25, [sp, #112]
   10eec:	a9466ffc 	ldp	x28, x27, [sp, #96]
   10ef0:	a9457bfd 	ldp	x29, x30, [sp, #80]
   10ef4:	6d4423e9 	ldp	d9, d8, [sp, #64]
   10ef8:	6d432beb 	ldp	d11, d10, [sp, #48]
   10efc:	fd4013ec 	ldr	d12, [sp, #32]
   10f00:	9102c3ff 	add	sp, sp, #0xb0
   10f04:	d65f03c0 	ret

0000000000010f08 <main>:
   10f08:	d10283ff 	sub	sp, sp, #0xa0
   10f0c:	fd001be8 	str	d8, [sp, #48]
   10f10:	a9047bfd 	stp	x29, x30, [sp, #64]
   10f14:	910103fd 	add	x29, sp, #0x40
   10f18:	a9056ffc 	stp	x28, x27, [sp, #80]
   10f1c:	a90667fa 	stp	x26, x25, [sp, #96]
   10f20:	a9075ff8 	stp	x24, x23, [sp, #112]
   10f24:	a90857f6 	stp	x22, x21, [sp, #128]
   10f28:	a9094ff4 	stp	x20, x19, [sp, #144]
   10f2c:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10f30:	94000118 	bl	11390 <malloc@plt>
   10f34:	aa0003f3 	mov	x19, x0
   10f38:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10f3c:	94000115 	bl	11390 <malloc@plt>
   10f40:	aa0003f4 	mov	x20, x0
   10f44:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10f48:	94000112 	bl	11390 <malloc@plt>
   10f4c:	aa0003f5 	mov	x21, x0
   10f50:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10f54:	9400010f 	bl	11390 <malloc@plt>
   10f58:	aa0003f6 	mov	x22, x0
   10f5c:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10f60:	9400010c 	bl	11390 <malloc@plt>
   10f64:	aa0003f7 	mov	x23, x0
   10f68:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10f6c:	94000109 	bl	11390 <malloc@plt>
   10f70:	aa0003f8 	mov	x24, x0
   10f74:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10f78:	94000106 	bl	11390 <malloc@plt>
   10f7c:	aa0003f9 	mov	x25, x0
   10f80:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10f84:	94000103 	bl	11390 <malloc@plt>
   10f88:	aa0003fa 	mov	x26, x0
   10f8c:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10f90:	94000100 	bl	11390 <malloc@plt>
   10f94:	aa0003fb 	mov	x27, x0
   10f98:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10f9c:	940000fd 	bl	11390 <malloc@plt>
   10fa0:	b40019b3 	cbz	x19, 112d4 <main+0x3cc>
   10fa4:	b4001994 	cbz	x20, 112d4 <main+0x3cc>
   10fa8:	b4001975 	cbz	x21, 112d4 <main+0x3cc>
   10fac:	b4001956 	cbz	x22, 112d4 <main+0x3cc>
   10fb0:	b4001937 	cbz	x23, 112d4 <main+0x3cc>
   10fb4:	b4001918 	cbz	x24, 112d4 <main+0x3cc>
   10fb8:	b40018f9 	cbz	x25, 112d4 <main+0x3cc>
   10fbc:	b40018da 	cbz	x26, 112d4 <main+0x3cc>
   10fc0:	b40018bb 	cbz	x27, 112d4 <main+0x3cc>
   10fc4:	aa0003fc 	mov	x28, x0
   10fc8:	b4001860 	cbz	x0, 112d4 <main+0x3cc>
   10fcc:	d28fe5a9 	mov	x9, #0x7f2d                	// #32557
   10fd0:	90ffff8d 	adrp	x13, 0 <__abi_tag-0x2c4>
   10fd4:	f2a992a9 	movk	x9, #0x4c95, lsl #16
   10fd8:	aa1f03e8 	mov	x8, xzr
   10fdc:	f2de85a9 	movk	x9, #0xf42d, lsl #32
   10fe0:	5280002c 	mov	w12, #0x1                   	// #1
   10fe4:	f2eb0a29 	movk	x9, #0x5851, lsl #48
   10fe8:	b24003ea 	orr	x10, xzr, #0x1
   10fec:	d2e7940b 	mov	x11, #0x3ca0000000000000    	// #4368491638549381120
   10ff0:	1e7e1000 	fmov	d0, #-1.000000000000000000e+00
   10ff4:	fd43b5a1 	ldr	d1, [x13, #1896]
   10ff8:	1e6c1002 	fmov	d2, #5.000000000000000000e-01
   10ffc:	9b09298c 	madd	x12, x12, x9, x10
   11000:	9e670166 	fmov	d6, x11
   11004:	d34bfd8d 	lsr	x13, x12, #11
   11008:	9b09298e 	madd	x14, x12, x9, x10
   1100c:	9e6301a3 	ucvtf	d3, x13
   11010:	9b0929cd 	madd	x13, x14, x9, x10
   11014:	d34bfdce 	lsr	x14, x14, #11
   11018:	9b0929ac 	madd	x12, x13, x9, x10
   1101c:	d34bfdad 	lsr	x13, x13, #11
   11020:	9e6301d0 	ucvtf	d16, x14
   11024:	1e660863 	fmul	d3, d3, d6
   11028:	d34bfd8f 	lsr	x15, x12, #11
   1102c:	9b092990 	madd	x16, x12, x9, x10
   11030:	9e6301b2 	ucvtf	d18, x13
   11034:	d37df10d 	lsl	x13, x8, #3
   11038:	91000508 	add	x8, x8, #0x1
   1103c:	9e6301e4 	ucvtf	d4, x15
   11040:	1e660a10 	fmul	d16, d16, d6
   11044:	9b092a0f 	madd	x15, x16, x9, x10
   11048:	d34bfe10 	lsr	x16, x16, #11
   1104c:	1e632863 	fadd	d3, d3, d3
   11050:	f117711f 	cmp	x8, #0x5dc
   11054:	9b0929ec 	madd	x12, x15, x9, x10
   11058:	d34bfdef 	lsr	x15, x15, #11
   1105c:	9e630207 	ucvtf	d7, x16
   11060:	1e660884 	fmul	d4, d4, d6
   11064:	d34bfd91 	lsr	x17, x12, #11
   11068:	1e602863 	fadd	d3, d3, d0
   1106c:	9e6301f1 	ucvtf	d17, x15
   11070:	1e702a10 	fadd	d16, d16, d16
   11074:	9e630225 	ucvtf	d5, x17
   11078:	1e6608e7 	fmul	d7, d7, d6
   1107c:	1e642884 	fadd	d4, d4, d4
   11080:	fc2d6a63 	str	d3, [x19, x13]
   11084:	1e660a31 	fmul	d17, d17, d6
   11088:	1e602a10 	fadd	d16, d16, d0
   1108c:	1e6608a5 	fmul	d5, d5, d6
   11090:	1e660a46 	fmul	d6, d18, d6
   11094:	1e6728e7 	fadd	d7, d7, d7
   11098:	1e602884 	fadd	d4, d4, d0
   1109c:	1e712a31 	fadd	d17, d17, d17
   110a0:	fc2d6a90 	str	d16, [x20, x13]
   110a4:	1e6528a5 	fadd	d5, d5, d5
   110a8:	1e6628c6 	fadd	d6, d6, d6
   110ac:	1e6028e7 	fadd	d7, d7, d0
   110b0:	1e610883 	fmul	d3, d4, d1
   110b4:	1e602a31 	fadd	d17, d17, d0
   110b8:	1e6028a5 	fadd	d5, d5, d0
   110bc:	1e6028c6 	fadd	d6, d6, d0
   110c0:	1e6108e4 	fmul	d4, d7, d1
   110c4:	fc2d6ac3 	str	d3, [x22, x13]
   110c8:	fc2d6aa6 	str	d6, [x21, x13]
   110cc:	1e610a26 	fmul	d6, d17, d1
   110d0:	1e60c0a5 	fabs	d5, d5
   110d4:	fc2d6ae4 	str	d4, [x23, x13]
   110d8:	fc2d6b06 	str	d6, [x24, x13]
   110dc:	1e6228a3 	fadd	d3, d5, d2
   110e0:	fc2d6b23 	str	d3, [x25, x13]
   110e4:	54fff8c1 	b.ne	10ffc <main+0xf4>  // b.any
   110e8:	528000a0 	mov	w0, #0x5                   	// #5
   110ec:	aa1303e1 	mov	x1, x19
   110f0:	aa1403e2 	mov	x2, x20
   110f4:	aa1503e3 	mov	x3, x21
   110f8:	aa1603e4 	mov	x4, x22
   110fc:	aa1703e5 	mov	x5, x23
   11100:	aa1803e6 	mov	x6, x24
   11104:	aa1903e7 	mov	x7, x25
   11108:	a900f3fb 	stp	x27, x28, [sp, #8]
   1110c:	f90003fa 	str	x26, [sp]
   11110:	97fffe51 	bl	10a54 <run_steps>
   11114:	910083e1 	add	x1, sp, #0x20
   11118:	52800020 	mov	w0, #0x1                   	// #1
   1111c:	940000a9 	bl	113c0 <clock_gettime@plt>
   11120:	fd4017e0 	ldr	d0, [sp, #40]
   11124:	aa1a03e8 	mov	x8, x26
   11128:	52803200 	mov	w0, #0x190                 	// #400
   1112c:	aa1303e1 	mov	x1, x19
   11130:	aa1403e2 	mov	x2, x20
   11134:	aa1503e3 	mov	x3, x21
   11138:	aa1603e4 	mov	x4, x22
   1113c:	aa1703e5 	mov	x5, x23
   11140:	aa1803e6 	mov	x6, x24
   11144:	aa1903e7 	mov	x7, x25
   11148:	f94013fa 	ldr	x26, [sp, #32]
   1114c:	5e61d808 	scvtf	d8, d0
   11150:	a900f3fb 	stp	x27, x28, [sp, #8]
   11154:	f81f83a8 	stur	x8, [x29, #-8]
   11158:	f90003e8 	str	x8, [sp]
   1115c:	97fffe3e 	bl	10a54 <run_steps>
   11160:	910083e1 	add	x1, sp, #0x20
   11164:	52800020 	mov	w0, #0x1                   	// #1
   11168:	94000096 	bl	113c0 <clock_gettime@plt>
   1116c:	fd4017e0 	ldr	d0, [sp, #40]
   11170:	2f00e401 	movi	d1, #0x0
   11174:	f94013e8 	ldr	x8, [sp, #32]
   11178:	9285dbe9 	mov	x9, #0xffffffffffffd120    	// #-12000
   1117c:	5e61d800 	scvtf	d0, d0
   11180:	8b09026a 	add	x10, x19, x9
   11184:	8b09028b 	add	x11, x20, x9
   11188:	8b0902ac 	add	x12, x21, x9
   1118c:	3dcbb942 	ldr	q2, [x10, #12000]
   11190:	3dcbb963 	ldr	q3, [x11, #12000]
   11194:	3dcbbd44 	ldr	q4, [x10, #12016]
   11198:	8b0902ca 	add	x10, x22, x9
   1119c:	3dcbbd65 	ldr	q5, [x11, #12016]
   111a0:	8b0902eb 	add	x11, x23, x9
   111a4:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   111a8:	3dcbb983 	ldr	q3, [x12, #12000]
   111ac:	4e65d484 	fadd	v4.2d, v4.2d, v5.2d
   111b0:	3dcbbd85 	ldr	q5, [x12, #12016]
   111b4:	8b09030c 	add	x12, x24, x9
   111b8:	b1008129 	adds	x9, x9, #0x20
   111bc:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   111c0:	3dcbb943 	ldr	q3, [x10, #12000]
   111c4:	4e65d484 	fadd	v4.2d, v4.2d, v5.2d
   111c8:	3dcbbd45 	ldr	q5, [x10, #12016]
   111cc:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   111d0:	3dcbb963 	ldr	q3, [x11, #12000]
   111d4:	4e65d484 	fadd	v4.2d, v4.2d, v5.2d
   111d8:	3dcbbd65 	ldr	q5, [x11, #12016]
   111dc:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   111e0:	3dcbb983 	ldr	q3, [x12, #12000]
   111e4:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   111e8:	4e65d483 	fadd	v3.2d, v4.2d, v5.2d
   111ec:	5e180444 	mov	d4, v2.d[1]
   111f0:	1e622821 	fadd	d1, d1, d2
   111f4:	3dcbbd82 	ldr	q2, [x12, #12016]
   111f8:	4e62d462 	fadd	v2.2d, v3.2d, v2.2d
   111fc:	1e642821 	fadd	d1, d1, d4
   11200:	5e180443 	mov	d3, v2.d[1]
   11204:	1e622821 	fadd	d1, d1, d2
   11208:	1e632821 	fadd	d1, d1, d3
   1120c:	54fffba1 	b.ne	11180 <main+0x278>  // b.any
   11210:	d2d09009 	mov	x9, #0x848000000000        	// #145685290680320
   11214:	9e620104 	scvtf	d4, x8
   11218:	f2e825c9 	movk	x9, #0x412e, lsl #48
   1121c:	f0ffff60 	adrp	x0, 0 <__abi_tag-0x2c4>
   11220:	911dc000 	add	x0, x0, #0x770
   11224:	9e670122 	fmov	d2, x9
   11228:	d2c80009 	mov	x9, #0x400000000000        	// #70368744177664
   1122c:	f2e811e9 	movk	x9, #0x408f, lsl #48
   11230:	1e621903 	fdiv	d3, d8, d2
   11234:	9e670125 	fmov	d5, x9
   11238:	1e650884 	fmul	d4, d4, d5
   1123c:	1e621800 	fdiv	d0, d0, d2
   11240:	9e620342 	scvtf	d2, x26
   11244:	1e650842 	fmul	d2, d2, d5
   11248:	1e632842 	fadd	d2, d2, d3
   1124c:	1e602880 	fadd	d0, d4, d0
   11250:	1e623800 	fsub	d0, d0, d2
   11254:	94000053 	bl	113a0 <printf@plt>
   11258:	aa1303e0 	mov	x0, x19
   1125c:	94000055 	bl	113b0 <free@plt>
   11260:	aa1403e0 	mov	x0, x20
   11264:	94000053 	bl	113b0 <free@plt>
   11268:	aa1503e0 	mov	x0, x21
   1126c:	94000051 	bl	113b0 <free@plt>
   11270:	aa1603e0 	mov	x0, x22
   11274:	9400004f 	bl	113b0 <free@plt>
   11278:	aa1703e0 	mov	x0, x23
   1127c:	9400004d 	bl	113b0 <free@plt>
   11280:	aa1803e0 	mov	x0, x24
   11284:	9400004b 	bl	113b0 <free@plt>
   11288:	aa1903e0 	mov	x0, x25
   1128c:	94000049 	bl	113b0 <free@plt>
   11290:	f85f83a0 	ldur	x0, [x29, #-8]
   11294:	94000047 	bl	113b0 <free@plt>
   11298:	aa1b03e0 	mov	x0, x27
   1129c:	94000045 	bl	113b0 <free@plt>
   112a0:	aa1c03e0 	mov	x0, x28
   112a4:	94000043 	bl	113b0 <free@plt>
   112a8:	2a1f03f3 	mov	w19, wzr
   112ac:	2a1303e0 	mov	w0, w19
   112b0:	fd401be8 	ldr	d8, [sp, #48]
   112b4:	a9494ff4 	ldp	x20, x19, [sp, #144]
   112b8:	a94857f6 	ldp	x22, x21, [sp, #128]
   112bc:	a9475ff8 	ldp	x24, x23, [sp, #112]
   112c0:	a94667fa 	ldp	x26, x25, [sp, #96]
   112c4:	a9456ffc 	ldp	x28, x27, [sp, #80]
   112c8:	a9447bfd 	ldp	x29, x30, [sp, #64]
   112cc:	910283ff 	add	sp, sp, #0xa0
   112d0:	d65f03c0 	ret
   112d4:	90000088 	adrp	x8, 21000 <memset@plt+0xfc20>
   112d8:	d503201f 	nop
   112dc:	70f7a580 	adr	x0, 78f <_IO_stdin_used+0x37>
   112e0:	52800241 	mov	w1, #0x12                  	// #18
   112e4:	52800022 	mov	w2, #0x1                   	// #1
   112e8:	52800033 	mov	w19, #0x1                   	// #1
   112ec:	f942ed08 	ldr	x8, [x8, #1496]
   112f0:	f9400103 	ldr	x3, [x8]
   112f4:	94000037 	bl	113d0 <fwrite@plt>
   112f8:	17ffffed 	b	112ac <main+0x3a4>

Disassembly of section .init:

00000000000112fc <_init>:
   112fc:	d503201f 	nop
   11300:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   11304:	910003fd 	mov	x29, sp
   11308:	97fffd9b 	bl	10974 <call_weak_fn>
   1130c:	a8c17bfd 	ldp	x29, x30, [sp], #16
   11310:	d65f03c0 	ret

Disassembly of section .fini:

0000000000011314 <_fini>:
   11314:	d503201f 	nop
   11318:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   1131c:	910003fd 	mov	x29, sp
   11320:	a8c17bfd 	ldp	x29, x30, [sp], #16
   11324:	d65f03c0 	ret

Disassembly of section .plt:

0000000000011330 <abort@plt-0x20>:
   11330:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
   11334:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfc00>
   11338:	f9430211 	ldr	x17, [x16, #1536]
   1133c:	91180210 	add	x16, x16, #0x600
   11340:	d61f0220 	br	x17
   11344:	d503201f 	nop
   11348:	d503201f 	nop
   1134c:	d503201f 	nop

0000000000011350 <abort@plt>:
   11350:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfc00>
   11354:	f9430611 	ldr	x17, [x16, #1544]
   11358:	91182210 	add	x16, x16, #0x608
   1135c:	d61f0220 	br	x17

0000000000011360 <__libc_start_main@plt>:
   11360:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfc00>
   11364:	f9430a11 	ldr	x17, [x16, #1552]
   11368:	91184210 	add	x16, x16, #0x610
   1136c:	d61f0220 	br	x17

0000000000011370 <__gmon_start__@plt>:
   11370:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfc00>
   11374:	f9430e11 	ldr	x17, [x16, #1560]
   11378:	91186210 	add	x16, x16, #0x618
   1137c:	d61f0220 	br	x17

0000000000011380 <__cxa_finalize@plt>:
   11380:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfc00>
   11384:	f9431211 	ldr	x17, [x16, #1568]
   11388:	91188210 	add	x16, x16, #0x620
   1138c:	d61f0220 	br	x17

0000000000011390 <malloc@plt>:
   11390:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfc00>
   11394:	f9431611 	ldr	x17, [x16, #1576]
   11398:	9118a210 	add	x16, x16, #0x628
   1139c:	d61f0220 	br	x17

00000000000113a0 <printf@plt>:
   113a0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfc00>
   113a4:	f9431a11 	ldr	x17, [x16, #1584]
   113a8:	9118c210 	add	x16, x16, #0x630
   113ac:	d61f0220 	br	x17

00000000000113b0 <free@plt>:
   113b0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfc00>
   113b4:	f9431e11 	ldr	x17, [x16, #1592]
   113b8:	9118e210 	add	x16, x16, #0x638
   113bc:	d61f0220 	br	x17

00000000000113c0 <clock_gettime@plt>:
   113c0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfc00>
   113c4:	f9432211 	ldr	x17, [x16, #1600]
   113c8:	91190210 	add	x16, x16, #0x640
   113cc:	d61f0220 	br	x17

00000000000113d0 <fwrite@plt>:
   113d0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfc00>
   113d4:	f9432611 	ldr	x17, [x16, #1608]
   113d8:	91192210 	add	x16, x16, #0x648
   113dc:	d61f0220 	br	x17

00000000000113e0 <memset@plt>:
   113e0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfc00>
   113e4:	f9432a11 	ldr	x17, [x16, #1616]
   113e8:	91194210 	add	x16, x16, #0x650
   113ec:	d61f0220 	br	x17
