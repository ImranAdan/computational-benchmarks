
/bench/bench:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000010980 <_start>:
   10980:	d503201f 	nop
   10984:	d280001d 	mov	x29, #0x0                   	// #0
   10988:	d280001e 	mov	x30, #0x0                   	// #0
   1098c:	aa0003e5 	mov	x5, x0
   10990:	f94003e1 	ldr	x1, [sp]
   10994:	910023e2 	add	x2, sp, #0x8
   10998:	910003e6 	mov	x6, sp
   1099c:	d503201f 	nop
   109a0:	100007a0 	adr	x0, 10a94 <main>
   109a4:	d2800003 	mov	x3, #0x0                   	// #0
   109a8:	d2800004 	mov	x4, #0x0                   	// #0
   109ac:	940002d1 	bl	114f0 <__libc_start_main@plt>
   109b0:	940002cc 	bl	114e0 <abort@plt>

00000000000109b4 <call_weak_fn>:
   109b4:	b0000080 	adrp	x0, 21000 <memset@plt+0xfa80>
   109b8:	f943bc00 	ldr	x0, [x0, #1912]
   109bc:	b4000040 	cbz	x0, 109c4 <call_weak_fn+0x10>
   109c0:	140002d0 	b	11500 <__gmon_start__@plt>
   109c4:	d65f03c0 	ret
	...

00000000000109d0 <deregister_tm_clones>:
   109d0:	d503201f 	nop
   109d4:	10106ee0 	adr	x0, 317b0 <__TMC_END__>
   109d8:	d503201f 	nop
   109dc:	10106ea1 	adr	x1, 317b0 <__TMC_END__>
   109e0:	eb00003f 	cmp	x1, x0
   109e4:	540000c0 	b.eq	109fc <deregister_tm_clones+0x2c>  // b.none
   109e8:	b0000081 	adrp	x1, 21000 <memset@plt+0xfa80>
   109ec:	f943c021 	ldr	x1, [x1, #1920]
   109f0:	b4000061 	cbz	x1, 109fc <deregister_tm_clones+0x2c>
   109f4:	aa0103f0 	mov	x16, x1
   109f8:	d61f0200 	br	x16
   109fc:	d65f03c0 	ret

0000000000010a00 <register_tm_clones>:
   10a00:	d503201f 	nop
   10a04:	10106d60 	adr	x0, 317b0 <__TMC_END__>
   10a08:	d503201f 	nop
   10a0c:	10106d21 	adr	x1, 317b0 <__TMC_END__>
   10a10:	cb000021 	sub	x1, x1, x0
   10a14:	d37ffc22 	lsr	x2, x1, #63
   10a18:	8b810c41 	add	x1, x2, x1, asr #3
   10a1c:	9341fc21 	asr	x1, x1, #1
   10a20:	b40000c1 	cbz	x1, 10a38 <register_tm_clones+0x38>
   10a24:	b0000082 	adrp	x2, 21000 <memset@plt+0xfa80>
   10a28:	f943c442 	ldr	x2, [x2, #1928]
   10a2c:	b4000062 	cbz	x2, 10a38 <register_tm_clones+0x38>
   10a30:	aa0203f0 	mov	x16, x2
   10a34:	d61f0200 	br	x16
   10a38:	d65f03c0 	ret
   10a3c:	d503201f 	nop

0000000000010a40 <__do_global_dtors_aux>:
   10a40:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   10a44:	910003fd 	mov	x29, sp
   10a48:	f9000bf3 	str	x19, [sp, #16]
   10a4c:	b0000113 	adrp	x19, 31000 <_DYNAMIC+0xfa60>
   10a50:	39608260 	ldrb	w0, [x19, #2080]
   10a54:	35000140 	cbnz	w0, 10a7c <__do_global_dtors_aux+0x3c>
   10a58:	b0000080 	adrp	x0, 21000 <memset@plt+0xfa80>
   10a5c:	f943c800 	ldr	x0, [x0, #1936]
   10a60:	b4000080 	cbz	x0, 10a70 <__do_global_dtors_aux+0x30>
   10a64:	b0000100 	adrp	x0, 31000 <_DYNAMIC+0xfa60>
   10a68:	f943d400 	ldr	x0, [x0, #1960]
   10a6c:	940002a9 	bl	11510 <__cxa_finalize@plt>
   10a70:	97ffffd8 	bl	109d0 <deregister_tm_clones>
   10a74:	52800020 	mov	w0, #0x1                   	// #1
   10a78:	39208260 	strb	w0, [x19, #2080]
   10a7c:	f9400bf3 	ldr	x19, [sp, #16]
   10a80:	a8c27bfd 	ldp	x29, x30, [sp], #32
   10a84:	d65f03c0 	ret
   10a88:	d503201f 	nop
   10a8c:	d503201f 	nop

0000000000010a90 <frame_dummy>:
   10a90:	17ffffdc 	b	10a00 <register_tm_clones>

0000000000010a94 <main>:
   10a94:	d10643ff 	sub	sp, sp, #0x190
   10a98:	6d0f3bef 	stp	d15, d14, [sp, #240]
   10a9c:	6d1033ed 	stp	d13, d12, [sp, #256]
   10aa0:	6d112beb 	stp	d11, d10, [sp, #272]
   10aa4:	6d1223e9 	stp	d9, d8, [sp, #288]
   10aa8:	a9137bfd 	stp	x29, x30, [sp, #304]
   10aac:	9104c3fd 	add	x29, sp, #0x130
   10ab0:	a9146ffc 	stp	x28, x27, [sp, #320]
   10ab4:	a91567fa 	stp	x26, x25, [sp, #336]
   10ab8:	a9165ff8 	stp	x24, x23, [sp, #352]
   10abc:	a91757f6 	stp	x22, x21, [sp, #368]
   10ac0:	a9184ff4 	stp	x20, x19, [sp, #384]
   10ac4:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10ac8:	9400029a 	bl	11530 <malloc@plt>
   10acc:	aa0003f3 	mov	x19, x0
   10ad0:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10ad4:	94000297 	bl	11530 <malloc@plt>
   10ad8:	aa0003f4 	mov	x20, x0
   10adc:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10ae0:	94000294 	bl	11530 <malloc@plt>
   10ae4:	aa0003f5 	mov	x21, x0
   10ae8:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10aec:	94000291 	bl	11530 <malloc@plt>
   10af0:	aa0003f6 	mov	x22, x0
   10af4:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10af8:	9400028e 	bl	11530 <malloc@plt>
   10afc:	aa0003f7 	mov	x23, x0
   10b00:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10b04:	9400028b 	bl	11530 <malloc@plt>
   10b08:	aa0003f8 	mov	x24, x0
   10b0c:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10b10:	94000288 	bl	11530 <malloc@plt>
   10b14:	aa0003f9 	mov	x25, x0
   10b18:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10b1c:	94000285 	bl	11530 <malloc@plt>
   10b20:	aa0003fa 	mov	x26, x0
   10b24:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10b28:	94000282 	bl	11530 <malloc@plt>
   10b2c:	f81983a0 	stur	x0, [x29, #-104]
   10b30:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10b34:	9400027f 	bl	11530 <malloc@plt>
   10b38:	b40049b3 	cbz	x19, 1146c <main+0x9d8>
   10b3c:	b4004994 	cbz	x20, 1146c <main+0x9d8>
   10b40:	b4004975 	cbz	x21, 1146c <main+0x9d8>
   10b44:	b4004956 	cbz	x22, 1146c <main+0x9d8>
   10b48:	b4004937 	cbz	x23, 1146c <main+0x9d8>
   10b4c:	b4004918 	cbz	x24, 1146c <main+0x9d8>
   10b50:	b40048f9 	cbz	x25, 1146c <main+0x9d8>
   10b54:	aa1a03f2 	mov	x18, x26
   10b58:	b40048ba 	cbz	x26, 1146c <main+0x9d8>
   10b5c:	d28fe5a9 	mov	x9, #0x7f2d                	// #32557
   10b60:	90ffff8d 	adrp	x13, 0 <__abi_tag-0x2c4>
   10b64:	f2a992a9 	movk	x9, #0x4c95, lsl #16
   10b68:	aa1f03e8 	mov	x8, xzr
   10b6c:	f2de85a9 	movk	x9, #0xf42d, lsl #32
   10b70:	5280002c 	mov	w12, #0x1                   	// #1
   10b74:	f2eb0a29 	movk	x9, #0x5851, lsl #48
   10b78:	b24003ea 	orr	x10, xzr, #0x1
   10b7c:	d2e7940b 	mov	x11, #0x3ca0000000000000    	// #4368491638549381120
   10b80:	1e7e1000 	fmov	d0, #-1.000000000000000000e+00
   10b84:	fd43eda1 	ldr	d1, [x13, #2008]
   10b88:	1e6c1002 	fmov	d2, #5.000000000000000000e-01
   10b8c:	9b09298c 	madd	x12, x12, x9, x10
   10b90:	9e670166 	fmov	d6, x11
   10b94:	d34bfd8d 	lsr	x13, x12, #11
   10b98:	9b09298e 	madd	x14, x12, x9, x10
   10b9c:	9e6301a3 	ucvtf	d3, x13
   10ba0:	9b0929cd 	madd	x13, x14, x9, x10
   10ba4:	d34bfdce 	lsr	x14, x14, #11
   10ba8:	9b0929ac 	madd	x12, x13, x9, x10
   10bac:	d34bfdad 	lsr	x13, x13, #11
   10bb0:	9e6301d0 	ucvtf	d16, x14
   10bb4:	1e660863 	fmul	d3, d3, d6
   10bb8:	d34bfd8f 	lsr	x15, x12, #11
   10bbc:	9b092990 	madd	x16, x12, x9, x10
   10bc0:	9e6301b2 	ucvtf	d18, x13
   10bc4:	d37df10d 	lsl	x13, x8, #3
   10bc8:	91000508 	add	x8, x8, #0x1
   10bcc:	9e6301e4 	ucvtf	d4, x15
   10bd0:	1e660a10 	fmul	d16, d16, d6
   10bd4:	9b092a0f 	madd	x15, x16, x9, x10
   10bd8:	d34bfe10 	lsr	x16, x16, #11
   10bdc:	1e632863 	fadd	d3, d3, d3
   10be0:	f117711f 	cmp	x8, #0x5dc
   10be4:	9b0929ec 	madd	x12, x15, x9, x10
   10be8:	d34bfdef 	lsr	x15, x15, #11
   10bec:	9e630207 	ucvtf	d7, x16
   10bf0:	1e660884 	fmul	d4, d4, d6
   10bf4:	d34bfd91 	lsr	x17, x12, #11
   10bf8:	1e602863 	fadd	d3, d3, d0
   10bfc:	9e6301f1 	ucvtf	d17, x15
   10c00:	1e702a10 	fadd	d16, d16, d16
   10c04:	9e630225 	ucvtf	d5, x17
   10c08:	1e6608e7 	fmul	d7, d7, d6
   10c0c:	1e642884 	fadd	d4, d4, d4
   10c10:	fc2d6a63 	str	d3, [x19, x13]
   10c14:	1e660a31 	fmul	d17, d17, d6
   10c18:	1e602a10 	fadd	d16, d16, d0
   10c1c:	1e6608a5 	fmul	d5, d5, d6
   10c20:	1e660a46 	fmul	d6, d18, d6
   10c24:	1e6728e7 	fadd	d7, d7, d7
   10c28:	1e602884 	fadd	d4, d4, d0
   10c2c:	1e712a31 	fadd	d17, d17, d17
   10c30:	fc2d6a90 	str	d16, [x20, x13]
   10c34:	1e6528a5 	fadd	d5, d5, d5
   10c38:	1e6628c6 	fadd	d6, d6, d6
   10c3c:	1e6028e7 	fadd	d7, d7, d0
   10c40:	1e610883 	fmul	d3, d4, d1
   10c44:	1e602a31 	fadd	d17, d17, d0
   10c48:	1e6028a5 	fadd	d5, d5, d0
   10c4c:	1e6028c6 	fadd	d6, d6, d0
   10c50:	1e6108e4 	fmul	d4, d7, d1
   10c54:	fc2d6ac3 	str	d3, [x22, x13]
   10c58:	fc2d6aa6 	str	d6, [x21, x13]
   10c5c:	1e610a26 	fmul	d6, d17, d1
   10c60:	1e60c0a5 	fabs	d5, d5
   10c64:	fc2d6ae4 	str	d4, [x23, x13]
   10c68:	fc2d6b06 	str	d6, [x24, x13]
   10c6c:	1e6228a3 	fadd	d3, d5, d2
   10c70:	fc2d6b23 	str	d3, [x25, x13]
   10c74:	54fff8c1 	b.ne	10b8c <main+0xf8>  // b.any
   10c78:	91002008 	add	x8, x0, #0x8
   10c7c:	9100228b 	add	x11, x20, #0x8
   10c80:	2a1f03ea 	mov	w10, wzr
   10c84:	a93767a0 	stp	x0, x25, [x29, #-144]
   10c88:	f9003be8 	str	x8, [sp, #112]
   10c8c:	f85983a8 	ldur	x8, [x29, #-104]
   10c90:	f90027eb 	str	x11, [sp, #72]
   10c94:	9100226b 	add	x11, x19, #0x8
   10c98:	a93853b5 	stp	x21, x20, [x29, #-128]
   10c9c:	91002109 	add	x9, x8, #0x8
   10ca0:	91002248 	add	x8, x18, #0x8
   10ca4:	f81903b3 	stur	x19, [x29, #-112]
   10ca8:	a90627e8 	stp	x8, x9, [sp, #96]
   10cac:	910022a9 	add	x9, x21, #0x8
   10cb0:	91002328 	add	x8, x25, #0x8
   10cb4:	f90023eb 	str	x11, [sp, #64]
   10cb8:	a908dbf7 	stp	x23, x22, [sp, #136]
   10cbc:	a90523e9 	stp	x9, x8, [sp, #80]
   10cc0:	d2828f69 	mov	x9, #0x147b                	// #5243
   10cc4:	f2a8f5c9 	movk	x9, #0x47ae, lsl #16
   10cc8:	90ffff88 	adrp	x8, 0 <__abi_tag-0x2c4>
   10ccc:	f2cf5c29 	movk	x9, #0x7ae1, lsl #32
   10cd0:	f2e7f089 	movk	x9, #0x3f84, lsl #48
   10cd4:	f90043f8 	str	x24, [sp, #128]
   10cd8:	f81a03b2 	stur	x18, [x29, #-96]
   10cdc:	fd43e900 	ldr	d0, [x8, #2000]
   10ce0:	4e080d26 	dup	v6.2d, x9
   10ce4:	fd004fe0 	str	d0, [sp, #152]
   10ce8:	3d800fe6 	str	q6, [sp, #48]
   10cec:	f85a03a0 	ldur	x0, [x29, #-96]
   10cf0:	2a1f03e1 	mov	w1, wzr
   10cf4:	5285dc02 	mov	w2, #0x2ee0                	// #12000
   10cf8:	b9007fea 	str	w10, [sp, #124]
   10cfc:	94000221 	bl	11580 <memset@plt>
   10d00:	f85983b3 	ldur	x19, [x29, #-104]
   10d04:	2a1f03e1 	mov	w1, wzr
   10d08:	5285dc02 	mov	w2, #0x2ee0                	// #12000
   10d0c:	aa1303e0 	mov	x0, x19
   10d10:	9400021c 	bl	11580 <memset@plt>
   10d14:	f85703b4 	ldur	x20, [x29, #-144]
   10d18:	2a1f03e1 	mov	w1, wzr
   10d1c:	5285dc02 	mov	w2, #0x2ee0                	// #12000
   10d20:	aa1403e0 	mov	x0, x20
   10d24:	94000217 	bl	11580 <memset@plt>
   10d28:	aa1403f0 	mov	x16, x20
   10d2c:	aa1303ef 	mov	x15, x19
   10d30:	a94453f3 	ldp	x19, x20, [sp, #64]
   10d34:	2f00e40a 	movi	d10, #0x0
   10d38:	2f00e40c 	movi	d12, #0x0
   10d3c:	a9455bf5 	ldp	x21, x22, [sp, #80]
   10d40:	2f00e40b 	movi	d11, #0x0
   10d44:	1e6e1012 	fmov	d18, #1.000000000000000000e+00
   10d48:	a94663f7 	ldp	x23, x24, [sp, #96]
   10d4c:	aa1f03f9 	mov	x25, xzr
   10d50:	a978b3ad 	ldp	x13, x12, [x29, #-120]
   10d54:	a977bba9 	ldp	x9, x14, [x29, #-136]
   10d58:	f85a03b2 	ldur	x18, [x29, #-96]
   10d5c:	f9403bfa 	ldr	x26, [sp, #112]
   10d60:	fd404ff1 	ldr	d17, [sp, #152]
   10d64:	d37df32a 	lsl	x10, x25, #3
   10d68:	f1176b3f 	cmp	x25, #0x5da
   10d6c:	54000808 	b.hi	10e6c <main+0x3d8>  // b.pmore
   10d70:	fc6a6993 	ldr	d19, [x12, x10]
   10d74:	aa1f03fc 	mov	x28, xzr
   10d78:	fc6a69b4 	ldr	d20, [x13, x10]
   10d7c:	fc6a69cf 	ldr	d15, [x14, x10]
   10d80:	fc6a6929 	ldr	d9, [x9, x10]
   10d84:	d37df39b 	lsl	x27, x28, #3
   10d88:	fc7b6a60 	ldr	d0, [x19, x27]
   10d8c:	fc7b6a81 	ldr	d1, [x20, x27]
   10d90:	fc7b6aa2 	ldr	d2, [x21, x27]
   10d94:	1e73380e 	fsub	d14, d0, d19
   10d98:	1e74382d 	fsub	d13, d1, d20
   10d9c:	1e6f3848 	fsub	d8, d2, d15
   10da0:	1e6e09c0 	fmul	d0, d14, d14
   10da4:	1e6d09a1 	fmul	d1, d13, d13
   10da8:	1e612800 	fadd	d0, d0, d1
   10dac:	1e680901 	fmul	d1, d8, d8
   10db0:	1e612800 	fadd	d0, d0, d1
   10db4:	1e712801 	fadd	d1, d0, d17
   10db8:	1e61c020 	fsqrt	d0, d1
   10dbc:	1e602000 	fcmp	d0, d0
   10dc0:	540003c6 	b.vs	10e38 <main+0x3a4>
   10dc4:	1e601a40 	fdiv	d0, d18, d0
   10dc8:	fc7b6ac2 	ldr	d2, [x22, x27]
   10dcc:	fc7b6b03 	ldr	d3, [x24, x27]
   10dd0:	9100079c 	add	x28, x28, #0x1
   10dd4:	fc7b6b50 	ldr	d16, [x26, x27]
   10dd8:	8b1c0328 	add	x8, x25, x28
   10ddc:	f1176d1f 	cmp	x8, #0x5db
   10de0:	1e600801 	fmul	d1, d0, d0
   10de4:	1e610800 	fmul	d0, d0, d1
   10de8:	1e600841 	fmul	d1, d2, d0
   10dec:	1e600920 	fmul	d0, d9, d0
   10df0:	fc7b6ae2 	ldr	d2, [x23, x27]
   10df4:	1e6109c4 	fmul	d4, d14, d1
   10df8:	1e6109a5 	fmul	d5, d13, d1
   10dfc:	1e610901 	fmul	d1, d8, d1
   10e00:	1e6009c6 	fmul	d6, d14, d0
   10e04:	1e6009a7 	fmul	d7, d13, d0
   10e08:	1e600900 	fmul	d0, d8, d0
   10e0c:	1e64296b 	fadd	d11, d11, d4
   10e10:	1e65298c 	fadd	d12, d12, d5
   10e14:	1e61294a 	fadd	d10, d10, d1
   10e18:	1e663842 	fsub	d2, d2, d6
   10e1c:	1e673863 	fsub	d3, d3, d7
   10e20:	1e603a00 	fsub	d0, d16, d0
   10e24:	fc3b6ae2 	str	d2, [x23, x27]
   10e28:	fc3b6b03 	str	d3, [x24, x27]
   10e2c:	fc3b6b40 	str	d0, [x26, x27]
   10e30:	54fffaa1 	b.ne	10d84 <main+0x2f0>  // b.any
   10e34:	1400000e 	b	10e6c <main+0x3d8>
   10e38:	1e604020 	fmov	d0, d1
   10e3c:	f90017ea 	str	x10, [sp, #40]
   10e40:	6d01cff4 	stp	d20, d19, [sp, #24]
   10e44:	940001b7 	bl	11520 <sqrt@plt>
   10e48:	6d41cff4 	ldp	d20, d19, [sp, #24]
   10e4c:	1e6e1012 	fmov	d18, #1.000000000000000000e+00
   10e50:	a97727b0 	ldp	x16, x9, [x29, #-144]
   10e54:	a979cbaf 	ldp	x15, x18, [x29, #-104]
   10e58:	a97837ae 	ldp	x14, x13, [x29, #-128]
   10e5c:	f94017ea 	ldr	x10, [sp, #40]
   10e60:	fd404ff1 	ldr	d17, [sp, #152]
   10e64:	f85903ac 	ldur	x12, [x29, #-112]
   10e68:	17ffffd7 	b	10dc4 <main+0x330>
   10e6c:	91000739 	add	x25, x25, #0x1
   10e70:	fc2a6a4b 	str	d11, [x18, x10]
   10e74:	f117733f 	cmp	x25, #0x5dc
   10e78:	fc2a69ec 	str	d12, [x15, x10]
   10e7c:	fc2a6a0a 	str	d10, [x16, x10]
   10e80:	54000200 	b.eq	10ec0 <main+0x42c>  // b.none
   10e84:	d37df328 	lsl	x8, x25, #3
   10e88:	9100235a 	add	x26, x26, #0x8
   10e8c:	91002318 	add	x24, x24, #0x8
   10e90:	910022f7 	add	x23, x23, #0x8
   10e94:	910022d6 	add	x22, x22, #0x8
   10e98:	910022b5 	add	x21, x21, #0x8
   10e9c:	fc686a4b 	ldr	d11, [x18, x8]
   10ea0:	91002294 	add	x20, x20, #0x8
   10ea4:	fc6869ec 	ldr	d12, [x15, x8]
   10ea8:	91002273 	add	x19, x19, #0x8
   10eac:	fc686a0a 	ldr	d10, [x16, x8]
   10eb0:	d37df32a 	lsl	x10, x25, #3
   10eb4:	f1176b3f 	cmp	x25, #0x5da
   10eb8:	54fff5c9 	b.ls	10d70 <main+0x2dc>  // b.plast
   10ebc:	17ffffec 	b	10e6c <main+0x3d8>
   10ec0:	a948dbf7 	ldp	x23, x22, [sp, #136]
   10ec4:	9285dbe8 	mov	x8, #0xffffffffffffd120    	// #-12000
   10ec8:	f94043f8 	ldr	x24, [sp, #128]
   10ecc:	3dc00fe6 	ldr	q6, [sp, #48]
   10ed0:	8b080249 	add	x9, x18, x8
   10ed4:	8b0801ea 	add	x10, x15, x8
   10ed8:	8b0802cb 	add	x11, x22, x8
   10edc:	3dcbb920 	ldr	q0, [x9, #12000]
   10ee0:	8b080209 	add	x9, x16, x8
   10ee4:	3dcbb941 	ldr	q1, [x10, #12000]
   10ee8:	8b0802ea 	add	x10, x23, x8
   10eec:	3dcbb962 	ldr	q2, [x11, #12000]
   10ef0:	3dcbb923 	ldr	q3, [x9, #12000]
   10ef4:	8b080309 	add	x9, x24, x8
   10ef8:	6e66dc00 	fmul	v0.2d, v0.2d, v6.2d
   10efc:	3dcbb944 	ldr	q4, [x10, #12000]
   10f00:	6e66dc21 	fmul	v1.2d, v1.2d, v6.2d
   10f04:	b1004108 	adds	x8, x8, #0x10
   10f08:	6e66dc63 	fmul	v3.2d, v3.2d, v6.2d
   10f0c:	3dcbb925 	ldr	q5, [x9, #12000]
   10f10:	4e60d440 	fadd	v0.2d, v2.2d, v0.2d
   10f14:	4e61d481 	fadd	v1.2d, v4.2d, v1.2d
   10f18:	4e63d4a2 	fadd	v2.2d, v5.2d, v3.2d
   10f1c:	3d8bb960 	str	q0, [x11, #12000]
   10f20:	3d8bb941 	str	q1, [x10, #12000]
   10f24:	3d8bb922 	str	q2, [x9, #12000]
   10f28:	54fffd41 	b.ne	10ed0 <main+0x43c>  // b.any
   10f2c:	9285dbe8 	mov	x8, #0xffffffffffffd120    	// #-12000
   10f30:	8b0802c9 	add	x9, x22, x8
   10f34:	8b0802ea 	add	x10, x23, x8
   10f38:	8b08018b 	add	x11, x12, x8
   10f3c:	3dcbb920 	ldr	q0, [x9, #12000]
   10f40:	8b080309 	add	x9, x24, x8
   10f44:	3dcbb941 	ldr	q1, [x10, #12000]
   10f48:	8b0801aa 	add	x10, x13, x8
   10f4c:	3dcbb962 	ldr	q2, [x11, #12000]
   10f50:	3dcbb923 	ldr	q3, [x9, #12000]
   10f54:	8b0801c9 	add	x9, x14, x8
   10f58:	6e66dc00 	fmul	v0.2d, v0.2d, v6.2d
   10f5c:	3dcbb944 	ldr	q4, [x10, #12000]
   10f60:	6e66dc21 	fmul	v1.2d, v1.2d, v6.2d
   10f64:	b1004108 	adds	x8, x8, #0x10
   10f68:	6e66dc63 	fmul	v3.2d, v3.2d, v6.2d
   10f6c:	3dcbb925 	ldr	q5, [x9, #12000]
   10f70:	4e60d440 	fadd	v0.2d, v2.2d, v0.2d
   10f74:	4e61d481 	fadd	v1.2d, v4.2d, v1.2d
   10f78:	4e63d4a2 	fadd	v2.2d, v5.2d, v3.2d
   10f7c:	3d8bb960 	str	q0, [x11, #12000]
   10f80:	3d8bb941 	str	q1, [x10, #12000]
   10f84:	3d8bb922 	str	q2, [x9, #12000]
   10f88:	54fffd41 	b.ne	10f30 <main+0x49c>  // b.any
   10f8c:	b9407fea 	ldr	w10, [sp, #124]
   10f90:	1100054a 	add	w10, w10, #0x1
   10f94:	7100155f 	cmp	w10, #0x5
   10f98:	54ffeaa1 	b.ne	10cec <main+0x258>  // b.any
   10f9c:	d10163a1 	sub	x1, x29, #0x58
   10fa0:	52800020 	mov	w0, #0x1                   	// #1
   10fa4:	9400016f 	bl	11560 <clock_gettime@plt>
   10fa8:	f85a83a8 	ldur	x8, [x29, #-88]
   10fac:	2a1f03ea 	mov	w10, wzr
   10fb0:	f85803a9 	ldur	x9, [x29, #-128]
   10fb4:	fc5b03a0 	ldur	d0, [x29, #-80]
   10fb8:	f90013e8 	str	x8, [sp, #32]
   10fbc:	f85703a8 	ldur	x8, [x29, #-144]
   10fc0:	91002129 	add	x9, x9, #0x8
   10fc4:	5e61d800 	scvtf	d0, d0
   10fc8:	91002108 	add	x8, x8, #0x8
   10fcc:	f9002be9 	str	x9, [sp, #80]
   10fd0:	f85883a9 	ldur	x9, [x29, #-120]
   10fd4:	f9003be8 	str	x8, [sp, #112]
   10fd8:	f85983a8 	ldur	x8, [x29, #-104]
   10fdc:	91002129 	add	x9, x9, #0x8
   10fe0:	fd0017e0 	str	d0, [sp, #40]
   10fe4:	91002108 	add	x8, x8, #0x8
   10fe8:	f90027e9 	str	x9, [sp, #72]
   10fec:	f85903a9 	ldur	x9, [x29, #-112]
   10ff0:	f90037e8 	str	x8, [sp, #104]
   10ff4:	f85a03a8 	ldur	x8, [x29, #-96]
   10ff8:	91002129 	add	x9, x9, #0x8
   10ffc:	91002108 	add	x8, x8, #0x8
   11000:	f90023e9 	str	x9, [sp, #64]
   11004:	f90033e8 	str	x8, [sp, #96]
   11008:	f85783a8 	ldur	x8, [x29, #-136]
   1100c:	91002108 	add	x8, x8, #0x8
   11010:	f9002fe8 	str	x8, [sp, #88]
   11014:	d2828f68 	mov	x8, #0x147b                	// #5243
   11018:	f2a8f5c8 	movk	x8, #0x47ae, lsl #16
   1101c:	f2cf5c28 	movk	x8, #0x7ae1, lsl #32
   11020:	f2e7f088 	movk	x8, #0x3f84, lsl #48
   11024:	4e080d06 	dup	v6.2d, x8
   11028:	3d800fe6 	str	q6, [sp, #48]
   1102c:	f85a03a0 	ldur	x0, [x29, #-96]
   11030:	2a1f03e1 	mov	w1, wzr
   11034:	5285dc02 	mov	w2, #0x2ee0                	// #12000
   11038:	b9007fea 	str	w10, [sp, #124]
   1103c:	94000151 	bl	11580 <memset@plt>
   11040:	f85983b3 	ldur	x19, [x29, #-104]
   11044:	2a1f03e1 	mov	w1, wzr
   11048:	5285dc02 	mov	w2, #0x2ee0                	// #12000
   1104c:	aa1303e0 	mov	x0, x19
   11050:	9400014c 	bl	11580 <memset@plt>
   11054:	f85703b4 	ldur	x20, [x29, #-144]
   11058:	2a1f03e1 	mov	w1, wzr
   1105c:	5285dc02 	mov	w2, #0x2ee0                	// #12000
   11060:	aa1403e0 	mov	x0, x20
   11064:	94000147 	bl	11580 <memset@plt>
   11068:	aa1403f1 	mov	x17, x20
   1106c:	aa1303f0 	mov	x16, x19
   11070:	a94453f3 	ldp	x19, x20, [sp, #64]
   11074:	2f00e40b 	movi	d11, #0x0
   11078:	2f00e40d 	movi	d13, #0x0
   1107c:	a9455bf5 	ldp	x21, x22, [sp, #80]
   11080:	2f00e40c 	movi	d12, #0x0
   11084:	1e6e1012 	fmov	d18, #1.000000000000000000e+00
   11088:	a94663f7 	ldp	x23, x24, [sp, #96]
   1108c:	aa1f03f9 	mov	x25, xzr
   11090:	a978b3ad 	ldp	x13, x12, [x29, #-120]
   11094:	a977bba9 	ldp	x9, x14, [x29, #-136]
   11098:	f85a03af 	ldur	x15, [x29, #-96]
   1109c:	f9403bfa 	ldr	x26, [sp, #112]
   110a0:	fd404ff1 	ldr	d17, [sp, #152]
   110a4:	d37df32a 	lsl	x10, x25, #3
   110a8:	f1176b3f 	cmp	x25, #0x5da
   110ac:	54000808 	b.hi	111ac <main+0x718>  // b.pmore
   110b0:	fc6a6993 	ldr	d19, [x12, x10]
   110b4:	aa1f03fc 	mov	x28, xzr
   110b8:	fc6a69b4 	ldr	d20, [x13, x10]
   110bc:	fc6a69c9 	ldr	d9, [x14, x10]
   110c0:	fc6a692a 	ldr	d10, [x9, x10]
   110c4:	d37df39b 	lsl	x27, x28, #3
   110c8:	fc7b6a60 	ldr	d0, [x19, x27]
   110cc:	fc7b6a81 	ldr	d1, [x20, x27]
   110d0:	fc7b6aa2 	ldr	d2, [x21, x27]
   110d4:	1e73380f 	fsub	d15, d0, d19
   110d8:	1e74382e 	fsub	d14, d1, d20
   110dc:	1e693848 	fsub	d8, d2, d9
   110e0:	1e6f09e0 	fmul	d0, d15, d15
   110e4:	1e6e09c1 	fmul	d1, d14, d14
   110e8:	1e612800 	fadd	d0, d0, d1
   110ec:	1e680901 	fmul	d1, d8, d8
   110f0:	1e612800 	fadd	d0, d0, d1
   110f4:	1e712801 	fadd	d1, d0, d17
   110f8:	1e61c020 	fsqrt	d0, d1
   110fc:	1e602000 	fcmp	d0, d0
   11100:	540003c6 	b.vs	11178 <main+0x6e4>
   11104:	1e601a40 	fdiv	d0, d18, d0
   11108:	fc7b6ac2 	ldr	d2, [x22, x27]
   1110c:	fc7b6b03 	ldr	d3, [x24, x27]
   11110:	9100079c 	add	x28, x28, #0x1
   11114:	fc7b6b50 	ldr	d16, [x26, x27]
   11118:	8b1c0328 	add	x8, x25, x28
   1111c:	f1176d1f 	cmp	x8, #0x5db
   11120:	1e600801 	fmul	d1, d0, d0
   11124:	1e610800 	fmul	d0, d0, d1
   11128:	1e600841 	fmul	d1, d2, d0
   1112c:	1e600940 	fmul	d0, d10, d0
   11130:	fc7b6ae2 	ldr	d2, [x23, x27]
   11134:	1e6109e4 	fmul	d4, d15, d1
   11138:	1e6109c5 	fmul	d5, d14, d1
   1113c:	1e610901 	fmul	d1, d8, d1
   11140:	1e6009e6 	fmul	d6, d15, d0
   11144:	1e6009c7 	fmul	d7, d14, d0
   11148:	1e600900 	fmul	d0, d8, d0
   1114c:	1e64298c 	fadd	d12, d12, d4
   11150:	1e6529ad 	fadd	d13, d13, d5
   11154:	1e61296b 	fadd	d11, d11, d1
   11158:	1e663842 	fsub	d2, d2, d6
   1115c:	1e673863 	fsub	d3, d3, d7
   11160:	1e603a00 	fsub	d0, d16, d0
   11164:	fc3b6ae2 	str	d2, [x23, x27]
   11168:	fc3b6b03 	str	d3, [x24, x27]
   1116c:	fc3b6b40 	str	d0, [x26, x27]
   11170:	54fffaa1 	b.ne	110c4 <main+0x630>  // b.any
   11174:	1400000e 	b	111ac <main+0x718>
   11178:	1e604020 	fmov	d0, d1
   1117c:	f9000fea 	str	x10, [sp, #24]
   11180:	6d00cff4 	stp	d20, d19, [sp, #8]
   11184:	940000e7 	bl	11520 <sqrt@plt>
   11188:	6d40cff4 	ldp	d20, d19, [sp, #8]
   1118c:	1e6e1012 	fmov	d18, #1.000000000000000000e+00
   11190:	a97727b1 	ldp	x17, x9, [x29, #-144]
   11194:	a979bfb0 	ldp	x16, x15, [x29, #-104]
   11198:	a97837ae 	ldp	x14, x13, [x29, #-128]
   1119c:	f9400fea 	ldr	x10, [sp, #24]
   111a0:	fd404ff1 	ldr	d17, [sp, #152]
   111a4:	f85903ac 	ldur	x12, [x29, #-112]
   111a8:	17ffffd7 	b	11104 <main+0x670>
   111ac:	91000739 	add	x25, x25, #0x1
   111b0:	fc2a69ec 	str	d12, [x15, x10]
   111b4:	f117733f 	cmp	x25, #0x5dc
   111b8:	fc2a6a0d 	str	d13, [x16, x10]
   111bc:	fc2a6a2b 	str	d11, [x17, x10]
   111c0:	54000200 	b.eq	11200 <main+0x76c>  // b.none
   111c4:	d37df328 	lsl	x8, x25, #3
   111c8:	9100235a 	add	x26, x26, #0x8
   111cc:	91002318 	add	x24, x24, #0x8
   111d0:	910022f7 	add	x23, x23, #0x8
   111d4:	910022d6 	add	x22, x22, #0x8
   111d8:	910022b5 	add	x21, x21, #0x8
   111dc:	fc6869ec 	ldr	d12, [x15, x8]
   111e0:	91002294 	add	x20, x20, #0x8
   111e4:	fc686a0d 	ldr	d13, [x16, x8]
   111e8:	91002273 	add	x19, x19, #0x8
   111ec:	fc686a2b 	ldr	d11, [x17, x8]
   111f0:	d37df32a 	lsl	x10, x25, #3
   111f4:	f1176b3f 	cmp	x25, #0x5da
   111f8:	54fff5c9 	b.ls	110b0 <main+0x61c>  // b.plast
   111fc:	17ffffec 	b	111ac <main+0x718>
   11200:	a948dbf7 	ldp	x23, x22, [sp, #136]
   11204:	9285dbe8 	mov	x8, #0xffffffffffffd120    	// #-12000
   11208:	f94043f8 	ldr	x24, [sp, #128]
   1120c:	3dc00fe6 	ldr	q6, [sp, #48]
   11210:	8b0801e9 	add	x9, x15, x8
   11214:	8b08020a 	add	x10, x16, x8
   11218:	8b0802cb 	add	x11, x22, x8
   1121c:	3dcbb920 	ldr	q0, [x9, #12000]
   11220:	8b080229 	add	x9, x17, x8
   11224:	3dcbb941 	ldr	q1, [x10, #12000]
   11228:	8b0802ea 	add	x10, x23, x8
   1122c:	3dcbb962 	ldr	q2, [x11, #12000]
   11230:	3dcbb923 	ldr	q3, [x9, #12000]
   11234:	8b080309 	add	x9, x24, x8
   11238:	6e66dc00 	fmul	v0.2d, v0.2d, v6.2d
   1123c:	3dcbb944 	ldr	q4, [x10, #12000]
   11240:	6e66dc21 	fmul	v1.2d, v1.2d, v6.2d
   11244:	b1004108 	adds	x8, x8, #0x10
   11248:	6e66dc63 	fmul	v3.2d, v3.2d, v6.2d
   1124c:	3dcbb925 	ldr	q5, [x9, #12000]
   11250:	4e60d440 	fadd	v0.2d, v2.2d, v0.2d
   11254:	4e61d481 	fadd	v1.2d, v4.2d, v1.2d
   11258:	4e63d4a2 	fadd	v2.2d, v5.2d, v3.2d
   1125c:	3d8bb960 	str	q0, [x11, #12000]
   11260:	3d8bb941 	str	q1, [x10, #12000]
   11264:	3d8bb922 	str	q2, [x9, #12000]
   11268:	54fffd41 	b.ne	11210 <main+0x77c>  // b.any
   1126c:	9285dbe8 	mov	x8, #0xffffffffffffd120    	// #-12000
   11270:	8b0802c9 	add	x9, x22, x8
   11274:	8b0802ea 	add	x10, x23, x8
   11278:	8b08018b 	add	x11, x12, x8
   1127c:	3dcbb920 	ldr	q0, [x9, #12000]
   11280:	8b080309 	add	x9, x24, x8
   11284:	3dcbb941 	ldr	q1, [x10, #12000]
   11288:	8b0801aa 	add	x10, x13, x8
   1128c:	3dcbb962 	ldr	q2, [x11, #12000]
   11290:	3dcbb923 	ldr	q3, [x9, #12000]
   11294:	8b0801c9 	add	x9, x14, x8
   11298:	6e66dc00 	fmul	v0.2d, v0.2d, v6.2d
   1129c:	3dcbb944 	ldr	q4, [x10, #12000]
   112a0:	6e66dc21 	fmul	v1.2d, v1.2d, v6.2d
   112a4:	b1004108 	adds	x8, x8, #0x10
   112a8:	6e66dc63 	fmul	v3.2d, v3.2d, v6.2d
   112ac:	3dcbb925 	ldr	q5, [x9, #12000]
   112b0:	4e60d440 	fadd	v0.2d, v2.2d, v0.2d
   112b4:	4e61d481 	fadd	v1.2d, v4.2d, v1.2d
   112b8:	4e63d4a2 	fadd	v2.2d, v5.2d, v3.2d
   112bc:	3d8bb960 	str	q0, [x11, #12000]
   112c0:	3d8bb941 	str	q1, [x10, #12000]
   112c4:	3d8bb922 	str	q2, [x9, #12000]
   112c8:	54fffd41 	b.ne	11270 <main+0x7dc>  // b.any
   112cc:	b9407fea 	ldr	w10, [sp, #124]
   112d0:	1100054a 	add	w10, w10, #0x1
   112d4:	7106415f 	cmp	w10, #0x190
   112d8:	54ffeaa1 	b.ne	1102c <main+0x598>  // b.any
   112dc:	f94013e8 	ldr	x8, [sp, #32]
   112e0:	d10163a1 	sub	x1, x29, #0x58
   112e4:	52800020 	mov	w0, #0x1                   	// #1
   112e8:	9e620108 	scvtf	d8, x8
   112ec:	9400009d 	bl	11560 <clock_gettime@plt>
   112f0:	fc5b03a0 	ldur	d0, [x29, #-80]
   112f4:	2f00e401 	movi	d1, #0x0
   112f8:	a978cfb4 	ldp	x20, x19, [x29, #-120]
   112fc:	9285dbe9 	mov	x9, #0xffffffffffffd120    	// #-12000
   11300:	5e61d800 	scvtf	d0, d0
   11304:	f85a83a8 	ldur	x8, [x29, #-88]
   11308:	f85803b5 	ldur	x21, [x29, #-128]
   1130c:	8b09026a 	add	x10, x19, x9
   11310:	8b09028b 	add	x11, x20, x9
   11314:	8b0902ac 	add	x12, x21, x9
   11318:	3dcbb942 	ldr	q2, [x10, #12000]
   1131c:	3dcbb963 	ldr	q3, [x11, #12000]
   11320:	3dcbbd44 	ldr	q4, [x10, #12016]
   11324:	8b0902ca 	add	x10, x22, x9
   11328:	3dcbbd65 	ldr	q5, [x11, #12016]
   1132c:	8b0902eb 	add	x11, x23, x9
   11330:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   11334:	3dcbb983 	ldr	q3, [x12, #12000]
   11338:	4e65d484 	fadd	v4.2d, v4.2d, v5.2d
   1133c:	3dcbbd85 	ldr	q5, [x12, #12016]
   11340:	8b09030c 	add	x12, x24, x9
   11344:	b1008129 	adds	x9, x9, #0x20
   11348:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   1134c:	3dcbb943 	ldr	q3, [x10, #12000]
   11350:	4e65d484 	fadd	v4.2d, v4.2d, v5.2d
   11354:	3dcbbd45 	ldr	q5, [x10, #12016]
   11358:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   1135c:	3dcbb963 	ldr	q3, [x11, #12000]
   11360:	4e65d484 	fadd	v4.2d, v4.2d, v5.2d
   11364:	3dcbbd65 	ldr	q5, [x11, #12016]
   11368:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   1136c:	3dcbb983 	ldr	q3, [x12, #12000]
   11370:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   11374:	4e65d483 	fadd	v3.2d, v4.2d, v5.2d
   11378:	5e180444 	mov	d4, v2.d[1]
   1137c:	1e622821 	fadd	d1, d1, d2
   11380:	3dcbbd82 	ldr	q2, [x12, #12016]
   11384:	4e62d462 	fadd	v2.2d, v3.2d, v2.2d
   11388:	1e642821 	fadd	d1, d1, d4
   1138c:	5e180443 	mov	d3, v2.d[1]
   11390:	1e622821 	fadd	d1, d1, d2
   11394:	1e632821 	fadd	d1, d1, d3
   11398:	54fffba1 	b.ne	1130c <main+0x878>  // b.any
   1139c:	d2d09009 	mov	x9, #0x848000000000        	// #145685290680320
   113a0:	fd4017e3 	ldr	d3, [sp, #40]
   113a4:	f2e825c9 	movk	x9, #0x412e, lsl #48
   113a8:	f0ffff60 	adrp	x0, 0 <__abi_tag-0x2c4>
   113ac:	911f8000 	add	x0, x0, #0x7e0
   113b0:	9e670122 	fmov	d2, x9
   113b4:	d2c80009 	mov	x9, #0x400000000000        	// #70368744177664
   113b8:	f2e811e9 	movk	x9, #0x408f, lsl #48
   113bc:	1e621863 	fdiv	d3, d3, d2
   113c0:	9e670124 	fmov	d4, x9
   113c4:	1e640905 	fmul	d5, d8, d4
   113c8:	1e621800 	fdiv	d0, d0, d2
   113cc:	9e620102 	scvtf	d2, x8
   113d0:	1e6328a3 	fadd	d3, d5, d3
   113d4:	1e640842 	fmul	d2, d2, d4
   113d8:	1e602840 	fadd	d0, d2, d0
   113dc:	1e633800 	fsub	d0, d0, d3
   113e0:	94000058 	bl	11540 <printf@plt>
   113e4:	aa1303e0 	mov	x0, x19
   113e8:	9400005a 	bl	11550 <free@plt>
   113ec:	aa1403e0 	mov	x0, x20
   113f0:	94000058 	bl	11550 <free@plt>
   113f4:	aa1503e0 	mov	x0, x21
   113f8:	94000056 	bl	11550 <free@plt>
   113fc:	aa1603e0 	mov	x0, x22
   11400:	94000054 	bl	11550 <free@plt>
   11404:	aa1703e0 	mov	x0, x23
   11408:	94000052 	bl	11550 <free@plt>
   1140c:	aa1803e0 	mov	x0, x24
   11410:	94000050 	bl	11550 <free@plt>
   11414:	f85783a0 	ldur	x0, [x29, #-136]
   11418:	9400004e 	bl	11550 <free@plt>
   1141c:	f85a03a0 	ldur	x0, [x29, #-96]
   11420:	9400004c 	bl	11550 <free@plt>
   11424:	f85983a0 	ldur	x0, [x29, #-104]
   11428:	9400004a 	bl	11550 <free@plt>
   1142c:	f85703a0 	ldur	x0, [x29, #-144]
   11430:	94000048 	bl	11550 <free@plt>
   11434:	2a1f03f3 	mov	w19, wzr
   11438:	2a1303e0 	mov	w0, w19
   1143c:	a9584ff4 	ldp	x20, x19, [sp, #384]
   11440:	a95757f6 	ldp	x22, x21, [sp, #368]
   11444:	a9565ff8 	ldp	x24, x23, [sp, #352]
   11448:	a95567fa 	ldp	x26, x25, [sp, #336]
   1144c:	a9546ffc 	ldp	x28, x27, [sp, #320]
   11450:	a9537bfd 	ldp	x29, x30, [sp, #304]
   11454:	6d5223e9 	ldp	d9, d8, [sp, #288]
   11458:	6d512beb 	ldp	d11, d10, [sp, #272]
   1145c:	6d5033ed 	ldp	d13, d12, [sp, #256]
   11460:	6d4f3bef 	ldp	d15, d14, [sp, #240]
   11464:	910643ff 	add	sp, sp, #0x190
   11468:	d65f03c0 	ret
   1146c:	90000088 	adrp	x8, 21000 <memset@plt+0xfa80>
   11470:	d503201f 	nop
   11474:	70f79c40 	adr	x0, 7ff <_IO_stdin_used+0x37>
   11478:	52800241 	mov	w1, #0x12                  	// #18
   1147c:	52800022 	mov	w2, #0x1                   	// #1
   11480:	52800033 	mov	w19, #0x1                   	// #1
   11484:	f943cd08 	ldr	x8, [x8, #1944]
   11488:	f9400103 	ldr	x3, [x8]
   1148c:	94000039 	bl	11570 <fwrite@plt>
   11490:	17ffffea 	b	11438 <main+0x9a4>

Disassembly of section .init:

0000000000011494 <_init>:
   11494:	d503201f 	nop
   11498:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   1149c:	910003fd 	mov	x29, sp
   114a0:	97fffd45 	bl	109b4 <call_weak_fn>
   114a4:	a8c17bfd 	ldp	x29, x30, [sp], #16
   114a8:	d65f03c0 	ret

Disassembly of section .fini:

00000000000114ac <_fini>:
   114ac:	d503201f 	nop
   114b0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   114b4:	910003fd 	mov	x29, sp
   114b8:	a8c17bfd 	ldp	x29, x30, [sp], #16
   114bc:	d65f03c0 	ret

Disassembly of section .plt:

00000000000114c0 <abort@plt-0x20>:
   114c0:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
   114c4:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa60>
   114c8:	f943e211 	ldr	x17, [x16, #1984]
   114cc:	911f0210 	add	x16, x16, #0x7c0
   114d0:	d61f0220 	br	x17
   114d4:	d503201f 	nop
   114d8:	d503201f 	nop
   114dc:	d503201f 	nop

00000000000114e0 <abort@plt>:
   114e0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa60>
   114e4:	f943e611 	ldr	x17, [x16, #1992]
   114e8:	911f2210 	add	x16, x16, #0x7c8
   114ec:	d61f0220 	br	x17

00000000000114f0 <__libc_start_main@plt>:
   114f0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa60>
   114f4:	f943ea11 	ldr	x17, [x16, #2000]
   114f8:	911f4210 	add	x16, x16, #0x7d0
   114fc:	d61f0220 	br	x17

0000000000011500 <__gmon_start__@plt>:
   11500:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa60>
   11504:	f943ee11 	ldr	x17, [x16, #2008]
   11508:	911f6210 	add	x16, x16, #0x7d8
   1150c:	d61f0220 	br	x17

0000000000011510 <__cxa_finalize@plt>:
   11510:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa60>
   11514:	f943f211 	ldr	x17, [x16, #2016]
   11518:	911f8210 	add	x16, x16, #0x7e0
   1151c:	d61f0220 	br	x17

0000000000011520 <sqrt@plt>:
   11520:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa60>
   11524:	f943f611 	ldr	x17, [x16, #2024]
   11528:	911fa210 	add	x16, x16, #0x7e8
   1152c:	d61f0220 	br	x17

0000000000011530 <malloc@plt>:
   11530:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa60>
   11534:	f943fa11 	ldr	x17, [x16, #2032]
   11538:	911fc210 	add	x16, x16, #0x7f0
   1153c:	d61f0220 	br	x17

0000000000011540 <printf@plt>:
   11540:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa60>
   11544:	f943fe11 	ldr	x17, [x16, #2040]
   11548:	911fe210 	add	x16, x16, #0x7f8
   1154c:	d61f0220 	br	x17

0000000000011550 <free@plt>:
   11550:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa60>
   11554:	f9440211 	ldr	x17, [x16, #2048]
   11558:	91200210 	add	x16, x16, #0x800
   1155c:	d61f0220 	br	x17

0000000000011560 <clock_gettime@plt>:
   11560:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa60>
   11564:	f9440611 	ldr	x17, [x16, #2056]
   11568:	91202210 	add	x16, x16, #0x808
   1156c:	d61f0220 	br	x17

0000000000011570 <fwrite@plt>:
   11570:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa60>
   11574:	f9440a11 	ldr	x17, [x16, #2064]
   11578:	91204210 	add	x16, x16, #0x810
   1157c:	d61f0220 	br	x17

0000000000011580 <memset@plt>:
   11580:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa60>
   11584:	f9440e11 	ldr	x17, [x16, #2072]
   11588:	91206210 	add	x16, x16, #0x818
   1158c:	d61f0220 	br	x17
