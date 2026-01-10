
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
   10960:	100007a0 	adr	x0, 10a54 <main>
   10964:	d2800003 	mov	x3, #0x0                   	// #0
   10968:	d2800004 	mov	x4, #0x0                   	// #0
   1096c:	940002d5 	bl	114c0 <__libc_start_main@plt>
   10970:	940002d0 	bl	114b0 <abort@plt>

0000000000010974 <call_weak_fn>:
   10974:	b0000080 	adrp	x0, 21000 <memset@plt+0xfab0>
   10978:	f9439400 	ldr	x0, [x0, #1832]
   1097c:	b4000040 	cbz	x0, 10984 <call_weak_fn+0x10>
   10980:	140002d4 	b	114d0 <__gmon_start__@plt>
   10984:	d65f03c0 	ret
	...

0000000000010990 <deregister_tm_clones>:
   10990:	d503201f 	nop
   10994:	10106e60 	adr	x0, 31760 <__TMC_END__>
   10998:	d503201f 	nop
   1099c:	10106e21 	adr	x1, 31760 <__TMC_END__>
   109a0:	eb00003f 	cmp	x1, x0
   109a4:	540000c0 	b.eq	109bc <deregister_tm_clones+0x2c>  // b.none
   109a8:	b0000081 	adrp	x1, 21000 <memset@plt+0xfab0>
   109ac:	f9439821 	ldr	x1, [x1, #1840]
   109b0:	b4000061 	cbz	x1, 109bc <deregister_tm_clones+0x2c>
   109b4:	aa0103f0 	mov	x16, x1
   109b8:	d61f0200 	br	x16
   109bc:	d65f03c0 	ret

00000000000109c0 <register_tm_clones>:
   109c0:	d503201f 	nop
   109c4:	10106ce0 	adr	x0, 31760 <__TMC_END__>
   109c8:	d503201f 	nop
   109cc:	10106ca1 	adr	x1, 31760 <__TMC_END__>
   109d0:	cb000021 	sub	x1, x1, x0
   109d4:	d37ffc22 	lsr	x2, x1, #63
   109d8:	8b810c41 	add	x1, x2, x1, asr #3
   109dc:	9341fc21 	asr	x1, x1, #1
   109e0:	b40000c1 	cbz	x1, 109f8 <register_tm_clones+0x38>
   109e4:	b0000082 	adrp	x2, 21000 <memset@plt+0xfab0>
   109e8:	f9439c42 	ldr	x2, [x2, #1848]
   109ec:	b4000062 	cbz	x2, 109f8 <register_tm_clones+0x38>
   109f0:	aa0203f0 	mov	x16, x2
   109f4:	d61f0200 	br	x16
   109f8:	d65f03c0 	ret
   109fc:	d503201f 	nop

0000000000010a00 <__do_global_dtors_aux>:
   10a00:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   10a04:	910003fd 	mov	x29, sp
   10a08:	f9000bf3 	str	x19, [sp, #16]
   10a0c:	b0000113 	adrp	x19, 31000 <_DYNAMIC+0xfa90>
   10a10:	395f4260 	ldrb	w0, [x19, #2000]
   10a14:	35000140 	cbnz	w0, 10a3c <__do_global_dtors_aux+0x3c>
   10a18:	b0000080 	adrp	x0, 21000 <memset@plt+0xfab0>
   10a1c:	f943a000 	ldr	x0, [x0, #1856]
   10a20:	b4000080 	cbz	x0, 10a30 <__do_global_dtors_aux+0x30>
   10a24:	b0000100 	adrp	x0, 31000 <_DYNAMIC+0xfa90>
   10a28:	f943ac00 	ldr	x0, [x0, #1880]
   10a2c:	940002ad 	bl	114e0 <__cxa_finalize@plt>
   10a30:	97ffffd8 	bl	10990 <deregister_tm_clones>
   10a34:	52800020 	mov	w0, #0x1                   	// #1
   10a38:	391f4260 	strb	w0, [x19, #2000]
   10a3c:	f9400bf3 	ldr	x19, [sp, #16]
   10a40:	a8c27bfd 	ldp	x29, x30, [sp], #32
   10a44:	d65f03c0 	ret
   10a48:	d503201f 	nop
   10a4c:	d503201f 	nop

0000000000010a50 <frame_dummy>:
   10a50:	17ffffdc 	b	109c0 <register_tm_clones>

0000000000010a54 <main>:
   10a54:	d10643ff 	sub	sp, sp, #0x190
   10a58:	6d0f3bef 	stp	d15, d14, [sp, #240]
   10a5c:	6d1033ed 	stp	d13, d12, [sp, #256]
   10a60:	6d112beb 	stp	d11, d10, [sp, #272]
   10a64:	6d1223e9 	stp	d9, d8, [sp, #288]
   10a68:	a9137bfd 	stp	x29, x30, [sp, #304]
   10a6c:	9104c3fd 	add	x29, sp, #0x130
   10a70:	a9146ffc 	stp	x28, x27, [sp, #320]
   10a74:	a91567fa 	stp	x26, x25, [sp, #336]
   10a78:	a9165ff8 	stp	x24, x23, [sp, #352]
   10a7c:	a91757f6 	stp	x22, x21, [sp, #368]
   10a80:	a9184ff4 	stp	x20, x19, [sp, #384]
   10a84:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10a88:	9400029e 	bl	11500 <malloc@plt>
   10a8c:	aa0003f3 	mov	x19, x0
   10a90:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10a94:	9400029b 	bl	11500 <malloc@plt>
   10a98:	aa0003f4 	mov	x20, x0
   10a9c:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10aa0:	94000298 	bl	11500 <malloc@plt>
   10aa4:	aa0003f5 	mov	x21, x0
   10aa8:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10aac:	94000295 	bl	11500 <malloc@plt>
   10ab0:	aa0003f6 	mov	x22, x0
   10ab4:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10ab8:	94000292 	bl	11500 <malloc@plt>
   10abc:	aa0003f7 	mov	x23, x0
   10ac0:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10ac4:	9400028f 	bl	11500 <malloc@plt>
   10ac8:	aa0003f8 	mov	x24, x0
   10acc:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10ad0:	9400028c 	bl	11500 <malloc@plt>
   10ad4:	aa0003f9 	mov	x25, x0
   10ad8:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10adc:	94000289 	bl	11500 <malloc@plt>
   10ae0:	aa0003fa 	mov	x26, x0
   10ae4:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10ae8:	94000286 	bl	11500 <malloc@plt>
   10aec:	aa0003fb 	mov	x27, x0
   10af0:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10af4:	94000283 	bl	11500 <malloc@plt>
   10af8:	b40049f3 	cbz	x19, 11434 <main+0x9e0>
   10afc:	b40049d4 	cbz	x20, 11434 <main+0x9e0>
   10b00:	b40049b5 	cbz	x21, 11434 <main+0x9e0>
   10b04:	b4004996 	cbz	x22, 11434 <main+0x9e0>
   10b08:	b4004977 	cbz	x23, 11434 <main+0x9e0>
   10b0c:	b4004958 	cbz	x24, 11434 <main+0x9e0>
   10b10:	b4004939 	cbz	x25, 11434 <main+0x9e0>
   10b14:	aa1a03f2 	mov	x18, x26
   10b18:	b40048fa 	cbz	x26, 11434 <main+0x9e0>
   10b1c:	b40048db 	cbz	x27, 11434 <main+0x9e0>
   10b20:	b40048a0 	cbz	x0, 11434 <main+0x9e0>
   10b24:	d28fe5a9 	mov	x9, #0x7f2d                	// #32557
   10b28:	90ffff8d 	adrp	x13, 0 <__abi_tag-0x2c4>
   10b2c:	f2a992a9 	movk	x9, #0x4c95, lsl #16
   10b30:	aa1f03e8 	mov	x8, xzr
   10b34:	f2de85a9 	movk	x9, #0xf42d, lsl #32
   10b38:	5280002c 	mov	w12, #0x1                   	// #1
   10b3c:	f2eb0a29 	movk	x9, #0x5851, lsl #48
   10b40:	b24003ea 	orr	x10, xzr, #0x1
   10b44:	d2e7940b 	mov	x11, #0x3ca0000000000000    	// #4368491638549381120
   10b48:	1e7e1000 	fmov	d0, #-1.000000000000000000e+00
   10b4c:	fd43dda1 	ldr	d1, [x13, #1976]
   10b50:	1e6c1002 	fmov	d2, #5.000000000000000000e-01
   10b54:	9b09298c 	madd	x12, x12, x9, x10
   10b58:	9e670166 	fmov	d6, x11
   10b5c:	d34bfd8d 	lsr	x13, x12, #11
   10b60:	9b09298e 	madd	x14, x12, x9, x10
   10b64:	9e6301a3 	ucvtf	d3, x13
   10b68:	9b0929cd 	madd	x13, x14, x9, x10
   10b6c:	d34bfdce 	lsr	x14, x14, #11
   10b70:	9b0929ac 	madd	x12, x13, x9, x10
   10b74:	d34bfdad 	lsr	x13, x13, #11
   10b78:	9e6301d0 	ucvtf	d16, x14
   10b7c:	1e660863 	fmul	d3, d3, d6
   10b80:	d34bfd8f 	lsr	x15, x12, #11
   10b84:	9b092990 	madd	x16, x12, x9, x10
   10b88:	9e6301b2 	ucvtf	d18, x13
   10b8c:	d37df10d 	lsl	x13, x8, #3
   10b90:	91000508 	add	x8, x8, #0x1
   10b94:	9e6301e4 	ucvtf	d4, x15
   10b98:	1e660a10 	fmul	d16, d16, d6
   10b9c:	9b092a0f 	madd	x15, x16, x9, x10
   10ba0:	d34bfe10 	lsr	x16, x16, #11
   10ba4:	1e632863 	fadd	d3, d3, d3
   10ba8:	f117711f 	cmp	x8, #0x5dc
   10bac:	9b0929ec 	madd	x12, x15, x9, x10
   10bb0:	d34bfdef 	lsr	x15, x15, #11
   10bb4:	9e630207 	ucvtf	d7, x16
   10bb8:	1e660884 	fmul	d4, d4, d6
   10bbc:	d34bfd91 	lsr	x17, x12, #11
   10bc0:	1e602863 	fadd	d3, d3, d0
   10bc4:	9e6301f1 	ucvtf	d17, x15
   10bc8:	1e702a10 	fadd	d16, d16, d16
   10bcc:	9e630225 	ucvtf	d5, x17
   10bd0:	1e6608e7 	fmul	d7, d7, d6
   10bd4:	1e642884 	fadd	d4, d4, d4
   10bd8:	fc2d6a63 	str	d3, [x19, x13]
   10bdc:	1e660a31 	fmul	d17, d17, d6
   10be0:	1e602a10 	fadd	d16, d16, d0
   10be4:	1e6608a5 	fmul	d5, d5, d6
   10be8:	1e660a46 	fmul	d6, d18, d6
   10bec:	1e6728e7 	fadd	d7, d7, d7
   10bf0:	1e602884 	fadd	d4, d4, d0
   10bf4:	1e712a31 	fadd	d17, d17, d17
   10bf8:	fc2d6a90 	str	d16, [x20, x13]
   10bfc:	1e6528a5 	fadd	d5, d5, d5
   10c00:	1e6628c6 	fadd	d6, d6, d6
   10c04:	1e6028e7 	fadd	d7, d7, d0
   10c08:	1e610883 	fmul	d3, d4, d1
   10c0c:	1e602a31 	fadd	d17, d17, d0
   10c10:	1e6028a5 	fadd	d5, d5, d0
   10c14:	1e6028c6 	fadd	d6, d6, d0
   10c18:	1e6108e4 	fmul	d4, d7, d1
   10c1c:	fc2d6ac3 	str	d3, [x22, x13]
   10c20:	fc2d6aa6 	str	d6, [x21, x13]
   10c24:	1e610a26 	fmul	d6, d17, d1
   10c28:	1e60c0a5 	fabs	d5, d5
   10c2c:	fc2d6ae4 	str	d4, [x23, x13]
   10c30:	fc2d6b06 	str	d6, [x24, x13]
   10c34:	1e6228a3 	fadd	d3, d5, d2
   10c38:	fc2d6b23 	str	d3, [x25, x13]
   10c3c:	54fff8c1 	b.ne	10b54 <main+0x100>  // b.any
   10c40:	91002008 	add	x8, x0, #0x8
   10c44:	91002369 	add	x9, x27, #0x8
   10c48:	9100228b 	add	x11, x20, #0x8
   10c4c:	2a1f03ea 	mov	w10, wzr
   10c50:	f81703a0 	stur	x0, [x29, #-144]
   10c54:	f9003be8 	str	x8, [sp, #112]
   10c58:	91002248 	add	x8, x18, #0x8
   10c5c:	f90027eb 	str	x11, [sp, #72]
   10c60:	9100226b 	add	x11, x19, #0x8
   10c64:	f81783bb 	stur	x27, [x29, #-136]
   10c68:	a90627e8 	stp	x8, x9, [sp, #96]
   10c6c:	910022a9 	add	x9, x21, #0x8
   10c70:	91002328 	add	x8, x25, #0x8
   10c74:	a93857b9 	stp	x25, x21, [x29, #-128]
   10c78:	a90523e9 	stp	x9, x8, [sp, #80]
   10c7c:	d2828f69 	mov	x9, #0x147b                	// #5243
   10c80:	f2a8f5c9 	movk	x9, #0x47ae, lsl #16
   10c84:	90ffff88 	adrp	x8, 0 <__abi_tag-0x2c4>
   10c88:	f2cf5c29 	movk	x9, #0x7ae1, lsl #32
   10c8c:	f2e7f089 	movk	x9, #0x3f84, lsl #48
   10c90:	a9394fb4 	stp	x20, x19, [x29, #-112]
   10c94:	fd43d900 	ldr	d0, [x8, #1968]
   10c98:	f90023eb 	str	x11, [sp, #64]
   10c9c:	4e080d26 	dup	v6.2d, x9
   10ca0:	a908dbf7 	stp	x23, x22, [sp, #136]
   10ca4:	f90043f8 	str	x24, [sp, #128]
   10ca8:	fd004fe0 	str	d0, [sp, #152]
   10cac:	f81a03b2 	stur	x18, [x29, #-96]
   10cb0:	3d800fe6 	str	q6, [sp, #48]
   10cb4:	f85a03a0 	ldur	x0, [x29, #-96]
   10cb8:	2a1f03e1 	mov	w1, wzr
   10cbc:	5285dc02 	mov	w2, #0x2ee0                	// #12000
   10cc0:	b9007fea 	str	w10, [sp, #124]
   10cc4:	94000223 	bl	11550 <memset@plt>
   10cc8:	f85783b3 	ldur	x19, [x29, #-136]
   10ccc:	2a1f03e1 	mov	w1, wzr
   10cd0:	5285dc02 	mov	w2, #0x2ee0                	// #12000
   10cd4:	aa1303e0 	mov	x0, x19
   10cd8:	9400021e 	bl	11550 <memset@plt>
   10cdc:	f85703b4 	ldur	x20, [x29, #-144]
   10ce0:	2a1f03e1 	mov	w1, wzr
   10ce4:	5285dc02 	mov	w2, #0x2ee0                	// #12000
   10ce8:	aa1403e0 	mov	x0, x20
   10cec:	94000219 	bl	11550 <memset@plt>
   10cf0:	aa1403f0 	mov	x16, x20
   10cf4:	aa1303ef 	mov	x15, x19
   10cf8:	a979cbac 	ldp	x12, x18, [x29, #-104]
   10cfc:	2f00e40a 	movi	d10, #0x0
   10d00:	2f00e40c 	movi	d12, #0x0
   10d04:	a94453f3 	ldp	x19, x20, [sp, #64]
   10d08:	2f00e40b 	movi	d11, #0x0
   10d0c:	1e6e1012 	fmov	d18, #1.000000000000000000e+00
   10d10:	a9455bf5 	ldp	x21, x22, [sp, #80]
   10d14:	aa1f03f9 	mov	x25, xzr
   10d18:	a94663f7 	ldp	x23, x24, [sp, #96]
   10d1c:	a978b7ae 	ldp	x14, x13, [x29, #-120]
   10d20:	f9403bfa 	ldr	x26, [sp, #112]
   10d24:	f85803a9 	ldur	x9, [x29, #-128]
   10d28:	fd404ff1 	ldr	d17, [sp, #152]
   10d2c:	d37df32a 	lsl	x10, x25, #3
   10d30:	f1176b3f 	cmp	x25, #0x5da
   10d34:	54000808 	b.hi	10e34 <main+0x3e0>  // b.pmore
   10d38:	fc6a6993 	ldr	d19, [x12, x10]
   10d3c:	aa1f03fc 	mov	x28, xzr
   10d40:	fc6a69b4 	ldr	d20, [x13, x10]
   10d44:	fc6a69cf 	ldr	d15, [x14, x10]
   10d48:	fc6a6929 	ldr	d9, [x9, x10]
   10d4c:	d37df39b 	lsl	x27, x28, #3
   10d50:	fc7b6a60 	ldr	d0, [x19, x27]
   10d54:	fc7b6a81 	ldr	d1, [x20, x27]
   10d58:	fc7b6aa2 	ldr	d2, [x21, x27]
   10d5c:	1e73380e 	fsub	d14, d0, d19
   10d60:	1e74382d 	fsub	d13, d1, d20
   10d64:	1e6f3848 	fsub	d8, d2, d15
   10d68:	1e6e09c0 	fmul	d0, d14, d14
   10d6c:	1e6d09a1 	fmul	d1, d13, d13
   10d70:	1e612800 	fadd	d0, d0, d1
   10d74:	1e680901 	fmul	d1, d8, d8
   10d78:	1e612800 	fadd	d0, d0, d1
   10d7c:	1e712801 	fadd	d1, d0, d17
   10d80:	1e61c020 	fsqrt	d0, d1
   10d84:	1e602000 	fcmp	d0, d0
   10d88:	540003c6 	b.vs	10e00 <main+0x3ac>
   10d8c:	1e601a40 	fdiv	d0, d18, d0
   10d90:	fc7b6ac2 	ldr	d2, [x22, x27]
   10d94:	fc7b6b03 	ldr	d3, [x24, x27]
   10d98:	9100079c 	add	x28, x28, #0x1
   10d9c:	fc7b6b50 	ldr	d16, [x26, x27]
   10da0:	8b1c0328 	add	x8, x25, x28
   10da4:	f1176d1f 	cmp	x8, #0x5db
   10da8:	1e600801 	fmul	d1, d0, d0
   10dac:	1e610800 	fmul	d0, d0, d1
   10db0:	1e600841 	fmul	d1, d2, d0
   10db4:	1e600920 	fmul	d0, d9, d0
   10db8:	fc7b6ae2 	ldr	d2, [x23, x27]
   10dbc:	1e6109c4 	fmul	d4, d14, d1
   10dc0:	1e6109a5 	fmul	d5, d13, d1
   10dc4:	1e610901 	fmul	d1, d8, d1
   10dc8:	1e6009c6 	fmul	d6, d14, d0
   10dcc:	1e6009a7 	fmul	d7, d13, d0
   10dd0:	1e600900 	fmul	d0, d8, d0
   10dd4:	1e64296b 	fadd	d11, d11, d4
   10dd8:	1e65298c 	fadd	d12, d12, d5
   10ddc:	1e61294a 	fadd	d10, d10, d1
   10de0:	1e663842 	fsub	d2, d2, d6
   10de4:	1e673863 	fsub	d3, d3, d7
   10de8:	1e603a00 	fsub	d0, d16, d0
   10dec:	fc3b6ae2 	str	d2, [x23, x27]
   10df0:	fc3b6b03 	str	d3, [x24, x27]
   10df4:	fc3b6b40 	str	d0, [x26, x27]
   10df8:	54fffaa1 	b.ne	10d4c <main+0x2f8>  // b.any
   10dfc:	1400000e 	b	10e34 <main+0x3e0>
   10e00:	1e604020 	fmov	d0, d1
   10e04:	f90017ea 	str	x10, [sp, #40]
   10e08:	6d01cff4 	stp	d20, d19, [sp, #24]
   10e0c:	940001b9 	bl	114f0 <sqrt@plt>
   10e10:	6d41cff4 	ldp	d20, d19, [sp, #24]
   10e14:	1e6e1012 	fmov	d18, #1.000000000000000000e+00
   10e18:	a9773fb0 	ldp	x16, x15, [x29, #-144]
   10e1c:	a979cbac 	ldp	x12, x18, [x29, #-104]
   10e20:	a9783ba9 	ldp	x9, x14, [x29, #-128]
   10e24:	f94017ea 	ldr	x10, [sp, #40]
   10e28:	fd404ff1 	ldr	d17, [sp, #152]
   10e2c:	f85903ad 	ldur	x13, [x29, #-112]
   10e30:	17ffffd7 	b	10d8c <main+0x338>
   10e34:	91000739 	add	x25, x25, #0x1
   10e38:	fc2a6a4b 	str	d11, [x18, x10]
   10e3c:	f117733f 	cmp	x25, #0x5dc
   10e40:	fc2a69ec 	str	d12, [x15, x10]
   10e44:	fc2a6a0a 	str	d10, [x16, x10]
   10e48:	54000200 	b.eq	10e88 <main+0x434>  // b.none
   10e4c:	d37df328 	lsl	x8, x25, #3
   10e50:	9100235a 	add	x26, x26, #0x8
   10e54:	91002318 	add	x24, x24, #0x8
   10e58:	910022f7 	add	x23, x23, #0x8
   10e5c:	910022d6 	add	x22, x22, #0x8
   10e60:	910022b5 	add	x21, x21, #0x8
   10e64:	fc686a4b 	ldr	d11, [x18, x8]
   10e68:	91002294 	add	x20, x20, #0x8
   10e6c:	fc6869ec 	ldr	d12, [x15, x8]
   10e70:	91002273 	add	x19, x19, #0x8
   10e74:	fc686a0a 	ldr	d10, [x16, x8]
   10e78:	d37df32a 	lsl	x10, x25, #3
   10e7c:	f1176b3f 	cmp	x25, #0x5da
   10e80:	54fff5c9 	b.ls	10d38 <main+0x2e4>  // b.plast
   10e84:	17ffffec 	b	10e34 <main+0x3e0>
   10e88:	a948dbf7 	ldp	x23, x22, [sp, #136]
   10e8c:	9285dbe8 	mov	x8, #0xffffffffffffd120    	// #-12000
   10e90:	f94043f8 	ldr	x24, [sp, #128]
   10e94:	3dc00fe6 	ldr	q6, [sp, #48]
   10e98:	8b080249 	add	x9, x18, x8
   10e9c:	8b0801ea 	add	x10, x15, x8
   10ea0:	8b0802cb 	add	x11, x22, x8
   10ea4:	3dcbb920 	ldr	q0, [x9, #12000]
   10ea8:	8b080209 	add	x9, x16, x8
   10eac:	3dcbb941 	ldr	q1, [x10, #12000]
   10eb0:	8b0802ea 	add	x10, x23, x8
   10eb4:	3dcbb962 	ldr	q2, [x11, #12000]
   10eb8:	3dcbb923 	ldr	q3, [x9, #12000]
   10ebc:	8b080309 	add	x9, x24, x8
   10ec0:	6e66dc00 	fmul	v0.2d, v0.2d, v6.2d
   10ec4:	3dcbb944 	ldr	q4, [x10, #12000]
   10ec8:	6e66dc21 	fmul	v1.2d, v1.2d, v6.2d
   10ecc:	b1004108 	adds	x8, x8, #0x10
   10ed0:	6e66dc63 	fmul	v3.2d, v3.2d, v6.2d
   10ed4:	3dcbb925 	ldr	q5, [x9, #12000]
   10ed8:	4e60d440 	fadd	v0.2d, v2.2d, v0.2d
   10edc:	4e61d481 	fadd	v1.2d, v4.2d, v1.2d
   10ee0:	4e63d4a2 	fadd	v2.2d, v5.2d, v3.2d
   10ee4:	3d8bb960 	str	q0, [x11, #12000]
   10ee8:	3d8bb941 	str	q1, [x10, #12000]
   10eec:	3d8bb922 	str	q2, [x9, #12000]
   10ef0:	54fffd41 	b.ne	10e98 <main+0x444>  // b.any
   10ef4:	9285dbe8 	mov	x8, #0xffffffffffffd120    	// #-12000
   10ef8:	8b0802c9 	add	x9, x22, x8
   10efc:	8b0802ea 	add	x10, x23, x8
   10f00:	8b08018b 	add	x11, x12, x8
   10f04:	3dcbb920 	ldr	q0, [x9, #12000]
   10f08:	8b080309 	add	x9, x24, x8
   10f0c:	3dcbb941 	ldr	q1, [x10, #12000]
   10f10:	8b0801aa 	add	x10, x13, x8
   10f14:	3dcbb962 	ldr	q2, [x11, #12000]
   10f18:	3dcbb923 	ldr	q3, [x9, #12000]
   10f1c:	8b0801c9 	add	x9, x14, x8
   10f20:	6e66dc00 	fmul	v0.2d, v0.2d, v6.2d
   10f24:	3dcbb944 	ldr	q4, [x10, #12000]
   10f28:	6e66dc21 	fmul	v1.2d, v1.2d, v6.2d
   10f2c:	b1004108 	adds	x8, x8, #0x10
   10f30:	6e66dc63 	fmul	v3.2d, v3.2d, v6.2d
   10f34:	3dcbb925 	ldr	q5, [x9, #12000]
   10f38:	4e60d440 	fadd	v0.2d, v2.2d, v0.2d
   10f3c:	4e61d481 	fadd	v1.2d, v4.2d, v1.2d
   10f40:	4e63d4a2 	fadd	v2.2d, v5.2d, v3.2d
   10f44:	3d8bb960 	str	q0, [x11, #12000]
   10f48:	3d8bb941 	str	q1, [x10, #12000]
   10f4c:	3d8bb922 	str	q2, [x9, #12000]
   10f50:	54fffd41 	b.ne	10ef8 <main+0x4a4>  // b.any
   10f54:	b9407fea 	ldr	w10, [sp, #124]
   10f58:	1100054a 	add	w10, w10, #0x1
   10f5c:	7100155f 	cmp	w10, #0x5
   10f60:	54ffeaa1 	b.ne	10cb4 <main+0x260>  // b.any
   10f64:	d10163a1 	sub	x1, x29, #0x58
   10f68:	52800020 	mov	w0, #0x1                   	// #1
   10f6c:	94000171 	bl	11530 <clock_gettime@plt>
   10f70:	f85a83a8 	ldur	x8, [x29, #-88]
   10f74:	2a1f03ea 	mov	w10, wzr
   10f78:	f85883a9 	ldur	x9, [x29, #-120]
   10f7c:	fc5b03a0 	ldur	d0, [x29, #-80]
   10f80:	f90013e8 	str	x8, [sp, #32]
   10f84:	f85703a8 	ldur	x8, [x29, #-144]
   10f88:	91002129 	add	x9, x9, #0x8
   10f8c:	5e61d800 	scvtf	d0, d0
   10f90:	91002108 	add	x8, x8, #0x8
   10f94:	f9002be9 	str	x9, [sp, #80]
   10f98:	f85903a9 	ldur	x9, [x29, #-112]
   10f9c:	f9003be8 	str	x8, [sp, #112]
   10fa0:	f85783a8 	ldur	x8, [x29, #-136]
   10fa4:	91002129 	add	x9, x9, #0x8
   10fa8:	fd0017e0 	str	d0, [sp, #40]
   10fac:	91002108 	add	x8, x8, #0x8
   10fb0:	f90027e9 	str	x9, [sp, #72]
   10fb4:	f85983a9 	ldur	x9, [x29, #-104]
   10fb8:	f90037e8 	str	x8, [sp, #104]
   10fbc:	f85a03a8 	ldur	x8, [x29, #-96]
   10fc0:	91002129 	add	x9, x9, #0x8
   10fc4:	91002108 	add	x8, x8, #0x8
   10fc8:	f90023e9 	str	x9, [sp, #64]
   10fcc:	f90033e8 	str	x8, [sp, #96]
   10fd0:	f85803a8 	ldur	x8, [x29, #-128]
   10fd4:	91002108 	add	x8, x8, #0x8
   10fd8:	f9002fe8 	str	x8, [sp, #88]
   10fdc:	d2828f68 	mov	x8, #0x147b                	// #5243
   10fe0:	f2a8f5c8 	movk	x8, #0x47ae, lsl #16
   10fe4:	f2cf5c28 	movk	x8, #0x7ae1, lsl #32
   10fe8:	f2e7f088 	movk	x8, #0x3f84, lsl #48
   10fec:	4e080d06 	dup	v6.2d, x8
   10ff0:	3d800fe6 	str	q6, [sp, #48]
   10ff4:	f85a03a0 	ldur	x0, [x29, #-96]
   10ff8:	2a1f03e1 	mov	w1, wzr
   10ffc:	5285dc02 	mov	w2, #0x2ee0                	// #12000
   11000:	b9007fea 	str	w10, [sp, #124]
   11004:	94000153 	bl	11550 <memset@plt>
   11008:	f85783b3 	ldur	x19, [x29, #-136]
   1100c:	2a1f03e1 	mov	w1, wzr
   11010:	5285dc02 	mov	w2, #0x2ee0                	// #12000
   11014:	aa1303e0 	mov	x0, x19
   11018:	9400014e 	bl	11550 <memset@plt>
   1101c:	f85703b4 	ldur	x20, [x29, #-144]
   11020:	2a1f03e1 	mov	w1, wzr
   11024:	5285dc02 	mov	w2, #0x2ee0                	// #12000
   11028:	aa1403e0 	mov	x0, x20
   1102c:	94000149 	bl	11550 <memset@plt>
   11030:	aa1403f1 	mov	x17, x20
   11034:	aa1303f0 	mov	x16, x19
   11038:	a979bfac 	ldp	x12, x15, [x29, #-104]
   1103c:	2f00e40b 	movi	d11, #0x0
   11040:	2f00e40d 	movi	d13, #0x0
   11044:	a94453f3 	ldp	x19, x20, [sp, #64]
   11048:	2f00e40c 	movi	d12, #0x0
   1104c:	1e6e1012 	fmov	d18, #1.000000000000000000e+00
   11050:	a9455bf5 	ldp	x21, x22, [sp, #80]
   11054:	aa1f03f9 	mov	x25, xzr
   11058:	a94663f7 	ldp	x23, x24, [sp, #96]
   1105c:	a978b7ae 	ldp	x14, x13, [x29, #-120]
   11060:	f9403bfa 	ldr	x26, [sp, #112]
   11064:	f85803a9 	ldur	x9, [x29, #-128]
   11068:	fd404ff1 	ldr	d17, [sp, #152]
   1106c:	d37df32a 	lsl	x10, x25, #3
   11070:	f1176b3f 	cmp	x25, #0x5da
   11074:	54000808 	b.hi	11174 <main+0x720>  // b.pmore
   11078:	fc6a6993 	ldr	d19, [x12, x10]
   1107c:	aa1f03fc 	mov	x28, xzr
   11080:	fc6a69b4 	ldr	d20, [x13, x10]
   11084:	fc6a69c9 	ldr	d9, [x14, x10]
   11088:	fc6a692a 	ldr	d10, [x9, x10]
   1108c:	d37df39b 	lsl	x27, x28, #3
   11090:	fc7b6a60 	ldr	d0, [x19, x27]
   11094:	fc7b6a81 	ldr	d1, [x20, x27]
   11098:	fc7b6aa2 	ldr	d2, [x21, x27]
   1109c:	1e73380f 	fsub	d15, d0, d19
   110a0:	1e74382e 	fsub	d14, d1, d20
   110a4:	1e693848 	fsub	d8, d2, d9
   110a8:	1e6f09e0 	fmul	d0, d15, d15
   110ac:	1e6e09c1 	fmul	d1, d14, d14
   110b0:	1e612800 	fadd	d0, d0, d1
   110b4:	1e680901 	fmul	d1, d8, d8
   110b8:	1e612800 	fadd	d0, d0, d1
   110bc:	1e712801 	fadd	d1, d0, d17
   110c0:	1e61c020 	fsqrt	d0, d1
   110c4:	1e602000 	fcmp	d0, d0
   110c8:	540003c6 	b.vs	11140 <main+0x6ec>
   110cc:	1e601a40 	fdiv	d0, d18, d0
   110d0:	fc7b6ac2 	ldr	d2, [x22, x27]
   110d4:	fc7b6b03 	ldr	d3, [x24, x27]
   110d8:	9100079c 	add	x28, x28, #0x1
   110dc:	fc7b6b50 	ldr	d16, [x26, x27]
   110e0:	8b1c0328 	add	x8, x25, x28
   110e4:	f1176d1f 	cmp	x8, #0x5db
   110e8:	1e600801 	fmul	d1, d0, d0
   110ec:	1e610800 	fmul	d0, d0, d1
   110f0:	1e600841 	fmul	d1, d2, d0
   110f4:	1e600940 	fmul	d0, d10, d0
   110f8:	fc7b6ae2 	ldr	d2, [x23, x27]
   110fc:	1e6109e4 	fmul	d4, d15, d1
   11100:	1e6109c5 	fmul	d5, d14, d1
   11104:	1e610901 	fmul	d1, d8, d1
   11108:	1e6009e6 	fmul	d6, d15, d0
   1110c:	1e6009c7 	fmul	d7, d14, d0
   11110:	1e600900 	fmul	d0, d8, d0
   11114:	1e64298c 	fadd	d12, d12, d4
   11118:	1e6529ad 	fadd	d13, d13, d5
   1111c:	1e61296b 	fadd	d11, d11, d1
   11120:	1e663842 	fsub	d2, d2, d6
   11124:	1e673863 	fsub	d3, d3, d7
   11128:	1e603a00 	fsub	d0, d16, d0
   1112c:	fc3b6ae2 	str	d2, [x23, x27]
   11130:	fc3b6b03 	str	d3, [x24, x27]
   11134:	fc3b6b40 	str	d0, [x26, x27]
   11138:	54fffaa1 	b.ne	1108c <main+0x638>  // b.any
   1113c:	1400000e 	b	11174 <main+0x720>
   11140:	1e604020 	fmov	d0, d1
   11144:	f9000fea 	str	x10, [sp, #24]
   11148:	6d00cff4 	stp	d20, d19, [sp, #8]
   1114c:	940000e9 	bl	114f0 <sqrt@plt>
   11150:	6d40cff4 	ldp	d20, d19, [sp, #8]
   11154:	1e6e1012 	fmov	d18, #1.000000000000000000e+00
   11158:	a97743b1 	ldp	x17, x16, [x29, #-144]
   1115c:	a979bfac 	ldp	x12, x15, [x29, #-104]
   11160:	a9783ba9 	ldp	x9, x14, [x29, #-128]
   11164:	f9400fea 	ldr	x10, [sp, #24]
   11168:	fd404ff1 	ldr	d17, [sp, #152]
   1116c:	f85903ad 	ldur	x13, [x29, #-112]
   11170:	17ffffd7 	b	110cc <main+0x678>
   11174:	91000739 	add	x25, x25, #0x1
   11178:	fc2a69ec 	str	d12, [x15, x10]
   1117c:	f117733f 	cmp	x25, #0x5dc
   11180:	fc2a6a0d 	str	d13, [x16, x10]
   11184:	fc2a6a2b 	str	d11, [x17, x10]
   11188:	54000200 	b.eq	111c8 <main+0x774>  // b.none
   1118c:	d37df328 	lsl	x8, x25, #3
   11190:	9100235a 	add	x26, x26, #0x8
   11194:	91002318 	add	x24, x24, #0x8
   11198:	910022f7 	add	x23, x23, #0x8
   1119c:	910022d6 	add	x22, x22, #0x8
   111a0:	910022b5 	add	x21, x21, #0x8
   111a4:	fc6869ec 	ldr	d12, [x15, x8]
   111a8:	91002294 	add	x20, x20, #0x8
   111ac:	fc686a0d 	ldr	d13, [x16, x8]
   111b0:	91002273 	add	x19, x19, #0x8
   111b4:	fc686a2b 	ldr	d11, [x17, x8]
   111b8:	d37df32a 	lsl	x10, x25, #3
   111bc:	f1176b3f 	cmp	x25, #0x5da
   111c0:	54fff5c9 	b.ls	11078 <main+0x624>  // b.plast
   111c4:	17ffffec 	b	11174 <main+0x720>
   111c8:	a948dbf7 	ldp	x23, x22, [sp, #136]
   111cc:	9285dbe8 	mov	x8, #0xffffffffffffd120    	// #-12000
   111d0:	f94043f8 	ldr	x24, [sp, #128]
   111d4:	3dc00fe6 	ldr	q6, [sp, #48]
   111d8:	8b0801e9 	add	x9, x15, x8
   111dc:	8b08020a 	add	x10, x16, x8
   111e0:	8b0802cb 	add	x11, x22, x8
   111e4:	3dcbb920 	ldr	q0, [x9, #12000]
   111e8:	8b080229 	add	x9, x17, x8
   111ec:	3dcbb941 	ldr	q1, [x10, #12000]
   111f0:	8b0802ea 	add	x10, x23, x8
   111f4:	3dcbb962 	ldr	q2, [x11, #12000]
   111f8:	3dcbb923 	ldr	q3, [x9, #12000]
   111fc:	8b080309 	add	x9, x24, x8
   11200:	6e66dc00 	fmul	v0.2d, v0.2d, v6.2d
   11204:	3dcbb944 	ldr	q4, [x10, #12000]
   11208:	6e66dc21 	fmul	v1.2d, v1.2d, v6.2d
   1120c:	b1004108 	adds	x8, x8, #0x10
   11210:	6e66dc63 	fmul	v3.2d, v3.2d, v6.2d
   11214:	3dcbb925 	ldr	q5, [x9, #12000]
   11218:	4e60d440 	fadd	v0.2d, v2.2d, v0.2d
   1121c:	4e61d481 	fadd	v1.2d, v4.2d, v1.2d
   11220:	4e63d4a2 	fadd	v2.2d, v5.2d, v3.2d
   11224:	3d8bb960 	str	q0, [x11, #12000]
   11228:	3d8bb941 	str	q1, [x10, #12000]
   1122c:	3d8bb922 	str	q2, [x9, #12000]
   11230:	54fffd41 	b.ne	111d8 <main+0x784>  // b.any
   11234:	9285dbe8 	mov	x8, #0xffffffffffffd120    	// #-12000
   11238:	8b0802c9 	add	x9, x22, x8
   1123c:	8b0802ea 	add	x10, x23, x8
   11240:	8b08018b 	add	x11, x12, x8
   11244:	3dcbb920 	ldr	q0, [x9, #12000]
   11248:	8b080309 	add	x9, x24, x8
   1124c:	3dcbb941 	ldr	q1, [x10, #12000]
   11250:	8b0801aa 	add	x10, x13, x8
   11254:	3dcbb962 	ldr	q2, [x11, #12000]
   11258:	3dcbb923 	ldr	q3, [x9, #12000]
   1125c:	8b0801c9 	add	x9, x14, x8
   11260:	6e66dc00 	fmul	v0.2d, v0.2d, v6.2d
   11264:	3dcbb944 	ldr	q4, [x10, #12000]
   11268:	6e66dc21 	fmul	v1.2d, v1.2d, v6.2d
   1126c:	b1004108 	adds	x8, x8, #0x10
   11270:	6e66dc63 	fmul	v3.2d, v3.2d, v6.2d
   11274:	3dcbb925 	ldr	q5, [x9, #12000]
   11278:	4e60d440 	fadd	v0.2d, v2.2d, v0.2d
   1127c:	4e61d481 	fadd	v1.2d, v4.2d, v1.2d
   11280:	4e63d4a2 	fadd	v2.2d, v5.2d, v3.2d
   11284:	3d8bb960 	str	q0, [x11, #12000]
   11288:	3d8bb941 	str	q1, [x10, #12000]
   1128c:	3d8bb922 	str	q2, [x9, #12000]
   11290:	54fffd41 	b.ne	11238 <main+0x7e4>  // b.any
   11294:	b9407fea 	ldr	w10, [sp, #124]
   11298:	1100054a 	add	w10, w10, #0x1
   1129c:	7106415f 	cmp	w10, #0x190
   112a0:	54ffeaa1 	b.ne	10ff4 <main+0x5a0>  // b.any
   112a4:	f94013e8 	ldr	x8, [sp, #32]
   112a8:	d10163a1 	sub	x1, x29, #0x58
   112ac:	52800020 	mov	w0, #0x1                   	// #1
   112b0:	9e620108 	scvtf	d8, x8
   112b4:	9400009f 	bl	11530 <clock_gettime@plt>
   112b8:	fc5b03a0 	ldur	d0, [x29, #-80]
   112bc:	2f00e401 	movi	d1, #0x0
   112c0:	a9794fb4 	ldp	x20, x19, [x29, #-112]
   112c4:	9285dbe9 	mov	x9, #0xffffffffffffd120    	// #-12000
   112c8:	5e61d800 	scvtf	d0, d0
   112cc:	f85a83a8 	ldur	x8, [x29, #-88]
   112d0:	f85883b5 	ldur	x21, [x29, #-120]
   112d4:	8b09026a 	add	x10, x19, x9
   112d8:	8b09028b 	add	x11, x20, x9
   112dc:	8b0902ac 	add	x12, x21, x9
   112e0:	3dcbb942 	ldr	q2, [x10, #12000]
   112e4:	3dcbb963 	ldr	q3, [x11, #12000]
   112e8:	3dcbbd44 	ldr	q4, [x10, #12016]
   112ec:	8b0902ca 	add	x10, x22, x9
   112f0:	3dcbbd65 	ldr	q5, [x11, #12016]
   112f4:	8b0902eb 	add	x11, x23, x9
   112f8:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   112fc:	3dcbb983 	ldr	q3, [x12, #12000]
   11300:	4e65d484 	fadd	v4.2d, v4.2d, v5.2d
   11304:	3dcbbd85 	ldr	q5, [x12, #12016]
   11308:	8b09030c 	add	x12, x24, x9
   1130c:	b1008129 	adds	x9, x9, #0x20
   11310:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   11314:	3dcbb943 	ldr	q3, [x10, #12000]
   11318:	4e65d484 	fadd	v4.2d, v4.2d, v5.2d
   1131c:	3dcbbd45 	ldr	q5, [x10, #12016]
   11320:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   11324:	3dcbb963 	ldr	q3, [x11, #12000]
   11328:	4e65d484 	fadd	v4.2d, v4.2d, v5.2d
   1132c:	3dcbbd65 	ldr	q5, [x11, #12016]
   11330:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   11334:	3dcbb983 	ldr	q3, [x12, #12000]
   11338:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   1133c:	4e65d483 	fadd	v3.2d, v4.2d, v5.2d
   11340:	5e180444 	mov	d4, v2.d[1]
   11344:	1e622821 	fadd	d1, d1, d2
   11348:	3dcbbd82 	ldr	q2, [x12, #12016]
   1134c:	4e62d462 	fadd	v2.2d, v3.2d, v2.2d
   11350:	1e642821 	fadd	d1, d1, d4
   11354:	5e180443 	mov	d3, v2.d[1]
   11358:	1e622821 	fadd	d1, d1, d2
   1135c:	1e632821 	fadd	d1, d1, d3
   11360:	54fffba1 	b.ne	112d4 <main+0x880>  // b.any
   11364:	d2d09009 	mov	x9, #0x848000000000        	// #145685290680320
   11368:	fd4017e3 	ldr	d3, [sp, #40]
   1136c:	f2e825c9 	movk	x9, #0x412e, lsl #48
   11370:	f0ffff60 	adrp	x0, 0 <__abi_tag-0x2c4>
   11374:	911f0000 	add	x0, x0, #0x7c0
   11378:	9e670122 	fmov	d2, x9
   1137c:	d2c80009 	mov	x9, #0x400000000000        	// #70368744177664
   11380:	f2e811e9 	movk	x9, #0x408f, lsl #48
   11384:	1e621863 	fdiv	d3, d3, d2
   11388:	9e670124 	fmov	d4, x9
   1138c:	1e640905 	fmul	d5, d8, d4
   11390:	1e621800 	fdiv	d0, d0, d2
   11394:	9e620102 	scvtf	d2, x8
   11398:	1e6328a3 	fadd	d3, d5, d3
   1139c:	1e640842 	fmul	d2, d2, d4
   113a0:	1e602840 	fadd	d0, d2, d0
   113a4:	1e633800 	fsub	d0, d0, d3
   113a8:	9400005a 	bl	11510 <printf@plt>
   113ac:	aa1303e0 	mov	x0, x19
   113b0:	9400005c 	bl	11520 <free@plt>
   113b4:	aa1403e0 	mov	x0, x20
   113b8:	9400005a 	bl	11520 <free@plt>
   113bc:	aa1503e0 	mov	x0, x21
   113c0:	94000058 	bl	11520 <free@plt>
   113c4:	aa1603e0 	mov	x0, x22
   113c8:	94000056 	bl	11520 <free@plt>
   113cc:	aa1703e0 	mov	x0, x23
   113d0:	94000054 	bl	11520 <free@plt>
   113d4:	aa1803e0 	mov	x0, x24
   113d8:	94000052 	bl	11520 <free@plt>
   113dc:	f85803a0 	ldur	x0, [x29, #-128]
   113e0:	94000050 	bl	11520 <free@plt>
   113e4:	f85a03a0 	ldur	x0, [x29, #-96]
   113e8:	9400004e 	bl	11520 <free@plt>
   113ec:	f85783a0 	ldur	x0, [x29, #-136]
   113f0:	9400004c 	bl	11520 <free@plt>
   113f4:	f85703a0 	ldur	x0, [x29, #-144]
   113f8:	9400004a 	bl	11520 <free@plt>
   113fc:	2a1f03f3 	mov	w19, wzr
   11400:	2a1303e0 	mov	w0, w19
   11404:	a9584ff4 	ldp	x20, x19, [sp, #384]
   11408:	a95757f6 	ldp	x22, x21, [sp, #368]
   1140c:	a9565ff8 	ldp	x24, x23, [sp, #352]
   11410:	a95567fa 	ldp	x26, x25, [sp, #336]
   11414:	a9546ffc 	ldp	x28, x27, [sp, #320]
   11418:	a9537bfd 	ldp	x29, x30, [sp, #304]
   1141c:	6d5223e9 	ldp	d9, d8, [sp, #288]
   11420:	6d512beb 	ldp	d11, d10, [sp, #272]
   11424:	6d5033ed 	ldp	d13, d12, [sp, #256]
   11428:	6d4f3bef 	ldp	d15, d14, [sp, #240]
   1142c:	910643ff 	add	sp, sp, #0x190
   11430:	d65f03c0 	ret
   11434:	90000088 	adrp	x8, 21000 <memset@plt+0xfab0>
   11438:	d503201f 	nop
   1143c:	70f79d00 	adr	x0, 7df <_IO_stdin_used+0x37>
   11440:	52800241 	mov	w1, #0x12                  	// #18
   11444:	52800022 	mov	w2, #0x1                   	// #1
   11448:	52800033 	mov	w19, #0x1                   	// #1
   1144c:	f943a508 	ldr	x8, [x8, #1864]
   11450:	f9400103 	ldr	x3, [x8]
   11454:	9400003b 	bl	11540 <fwrite@plt>
   11458:	17ffffea 	b	11400 <main+0x9ac>

Disassembly of section .init:

000000000001145c <_init>:
   1145c:	d503201f 	nop
   11460:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   11464:	910003fd 	mov	x29, sp
   11468:	97fffd43 	bl	10974 <call_weak_fn>
   1146c:	a8c17bfd 	ldp	x29, x30, [sp], #16
   11470:	d65f03c0 	ret

Disassembly of section .fini:

0000000000011474 <_fini>:
   11474:	d503201f 	nop
   11478:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   1147c:	910003fd 	mov	x29, sp
   11480:	a8c17bfd 	ldp	x29, x30, [sp], #16
   11484:	d65f03c0 	ret

Disassembly of section .plt:

0000000000011490 <abort@plt-0x20>:
   11490:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
   11494:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa90>
   11498:	f943ba11 	ldr	x17, [x16, #1904]
   1149c:	911dc210 	add	x16, x16, #0x770
   114a0:	d61f0220 	br	x17
   114a4:	d503201f 	nop
   114a8:	d503201f 	nop
   114ac:	d503201f 	nop

00000000000114b0 <abort@plt>:
   114b0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa90>
   114b4:	f943be11 	ldr	x17, [x16, #1912]
   114b8:	911de210 	add	x16, x16, #0x778
   114bc:	d61f0220 	br	x17

00000000000114c0 <__libc_start_main@plt>:
   114c0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa90>
   114c4:	f943c211 	ldr	x17, [x16, #1920]
   114c8:	911e0210 	add	x16, x16, #0x780
   114cc:	d61f0220 	br	x17

00000000000114d0 <__gmon_start__@plt>:
   114d0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa90>
   114d4:	f943c611 	ldr	x17, [x16, #1928]
   114d8:	911e2210 	add	x16, x16, #0x788
   114dc:	d61f0220 	br	x17

00000000000114e0 <__cxa_finalize@plt>:
   114e0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa90>
   114e4:	f943ca11 	ldr	x17, [x16, #1936]
   114e8:	911e4210 	add	x16, x16, #0x790
   114ec:	d61f0220 	br	x17

00000000000114f0 <sqrt@plt>:
   114f0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa90>
   114f4:	f943ce11 	ldr	x17, [x16, #1944]
   114f8:	911e6210 	add	x16, x16, #0x798
   114fc:	d61f0220 	br	x17

0000000000011500 <malloc@plt>:
   11500:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa90>
   11504:	f943d211 	ldr	x17, [x16, #1952]
   11508:	911e8210 	add	x16, x16, #0x7a0
   1150c:	d61f0220 	br	x17

0000000000011510 <printf@plt>:
   11510:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa90>
   11514:	f943d611 	ldr	x17, [x16, #1960]
   11518:	911ea210 	add	x16, x16, #0x7a8
   1151c:	d61f0220 	br	x17

0000000000011520 <free@plt>:
   11520:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa90>
   11524:	f943da11 	ldr	x17, [x16, #1968]
   11528:	911ec210 	add	x16, x16, #0x7b0
   1152c:	d61f0220 	br	x17

0000000000011530 <clock_gettime@plt>:
   11530:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa90>
   11534:	f943de11 	ldr	x17, [x16, #1976]
   11538:	911ee210 	add	x16, x16, #0x7b8
   1153c:	d61f0220 	br	x17

0000000000011540 <fwrite@plt>:
   11540:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa90>
   11544:	f943e211 	ldr	x17, [x16, #1984]
   11548:	911f0210 	add	x16, x16, #0x7c0
   1154c:	d61f0220 	br	x17

0000000000011550 <memset@plt>:
   11550:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfa90>
   11554:	f943e611 	ldr	x17, [x16, #1992]
   11558:	911f2210 	add	x16, x16, #0x7c8
   1155c:	d61f0220 	br	x17
