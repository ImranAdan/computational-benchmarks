
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
   1096c:	940001fd 	bl	11160 <__libc_start_main@plt>
   10970:	940001f8 	bl	11150 <abort@plt>

0000000000010974 <call_weak_fn>:
   10974:	b0000080 	adrp	x0, 21000 <fwrite@plt+0xfe20>
   10978:	f941dc00 	ldr	x0, [x0, #952]
   1097c:	b4000040 	cbz	x0, 10984 <call_weak_fn+0x10>
   10980:	140001fc 	b	11170 <__gmon_start__@plt>
   10984:	d65f03c0 	ret
	...

0000000000010990 <deregister_tm_clones>:
   10990:	d503201f 	nop
   10994:	101052e0 	adr	x0, 313f0 <__TMC_END__>
   10998:	d503201f 	nop
   1099c:	101052a1 	adr	x1, 313f0 <__TMC_END__>
   109a0:	eb00003f 	cmp	x1, x0
   109a4:	540000c0 	b.eq	109bc <deregister_tm_clones+0x2c>  // b.none
   109a8:	b0000081 	adrp	x1, 21000 <fwrite@plt+0xfe20>
   109ac:	f941e021 	ldr	x1, [x1, #960]
   109b0:	b4000061 	cbz	x1, 109bc <deregister_tm_clones+0x2c>
   109b4:	aa0103f0 	mov	x16, x1
   109b8:	d61f0200 	br	x16
   109bc:	d65f03c0 	ret

00000000000109c0 <register_tm_clones>:
   109c0:	d503201f 	nop
   109c4:	10105160 	adr	x0, 313f0 <__TMC_END__>
   109c8:	d503201f 	nop
   109cc:	10105121 	adr	x1, 313f0 <__TMC_END__>
   109d0:	cb000021 	sub	x1, x1, x0
   109d4:	d37ffc22 	lsr	x2, x1, #63
   109d8:	8b810c41 	add	x1, x2, x1, asr #3
   109dc:	9341fc21 	asr	x1, x1, #1
   109e0:	b40000c1 	cbz	x1, 109f8 <register_tm_clones+0x38>
   109e4:	b0000082 	adrp	x2, 21000 <fwrite@plt+0xfe20>
   109e8:	f941e442 	ldr	x2, [x2, #968]
   109ec:	b4000062 	cbz	x2, 109f8 <register_tm_clones+0x38>
   109f0:	aa0203f0 	mov	x16, x2
   109f4:	d61f0200 	br	x16
   109f8:	d65f03c0 	ret
   109fc:	d503201f 	nop

0000000000010a00 <__do_global_dtors_aux>:
   10a00:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   10a04:	910003fd 	mov	x29, sp
   10a08:	f9000bf3 	str	x19, [sp, #16]
   10a0c:	b0000113 	adrp	x19, 31000 <_DYNAMIC+0xfe00>
   10a10:	39516260 	ldrb	w0, [x19, #1112]
   10a14:	35000140 	cbnz	w0, 10a3c <__do_global_dtors_aux+0x3c>
   10a18:	b0000080 	adrp	x0, 21000 <fwrite@plt+0xfe20>
   10a1c:	f941e800 	ldr	x0, [x0, #976]
   10a20:	b4000080 	cbz	x0, 10a30 <__do_global_dtors_aux+0x30>
   10a24:	b0000100 	adrp	x0, 31000 <_DYNAMIC+0xfe00>
   10a28:	f941f400 	ldr	x0, [x0, #1000]
   10a2c:	940001d5 	bl	11180 <__cxa_finalize@plt>
   10a30:	97ffffd8 	bl	10990 <deregister_tm_clones>
   10a34:	52800020 	mov	w0, #0x1                   	// #1
   10a38:	39116260 	strb	w0, [x19, #1112]
   10a3c:	f9400bf3 	ldr	x19, [sp, #16]
   10a40:	a8c27bfd 	ldp	x29, x30, [sp], #32
   10a44:	d65f03c0 	ret
   10a48:	d503201f 	nop
   10a4c:	d503201f 	nop

0000000000010a50 <frame_dummy>:
   10a50:	17ffffdc 	b	109c0 <register_tm_clones>

0000000000010a54 <main>:
   10a54:	d103c3ff 	sub	sp, sp, #0xf0
   10a58:	6d053bef 	stp	d15, d14, [sp, #80]
   10a5c:	6d0633ed 	stp	d13, d12, [sp, #96]
   10a60:	6d072beb 	stp	d11, d10, [sp, #112]
   10a64:	6d0823e9 	stp	d9, d8, [sp, #128]
   10a68:	a9097bfd 	stp	x29, x30, [sp, #144]
   10a6c:	910243fd 	add	x29, sp, #0x90
   10a70:	a90a6ffc 	stp	x28, x27, [sp, #160]
   10a74:	a90b67fa 	stp	x26, x25, [sp, #176]
   10a78:	a90c5ff8 	stp	x24, x23, [sp, #192]
   10a7c:	a90d57f6 	stp	x22, x21, [sp, #208]
   10a80:	a90e4ff4 	stp	x20, x19, [sp, #224]
   10a84:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10a88:	940001c2 	bl	11190 <malloc@plt>
   10a8c:	aa0003f3 	mov	x19, x0
   10a90:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10a94:	940001bf 	bl	11190 <malloc@plt>
   10a98:	aa0003f4 	mov	x20, x0
   10a9c:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10aa0:	940001bc 	bl	11190 <malloc@plt>
   10aa4:	aa0003f5 	mov	x21, x0
   10aa8:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10aac:	940001b9 	bl	11190 <malloc@plt>
   10ab0:	aa0003f6 	mov	x22, x0
   10ab4:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10ab8:	940001b6 	bl	11190 <malloc@plt>
   10abc:	aa0003f7 	mov	x23, x0
   10ac0:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10ac4:	940001b3 	bl	11190 <malloc@plt>
   10ac8:	aa0003f8 	mov	x24, x0
   10acc:	5285dc00 	mov	w0, #0x2ee0                	// #12000
   10ad0:	940001b0 	bl	11190 <malloc@plt>
   10ad4:	b4003053 	cbz	x19, 110dc <main+0x688>
   10ad8:	b4003034 	cbz	x20, 110dc <main+0x688>
   10adc:	b4003015 	cbz	x21, 110dc <main+0x688>
   10ae0:	b4002ff6 	cbz	x22, 110dc <main+0x688>
   10ae4:	b4002fd7 	cbz	x23, 110dc <main+0x688>
   10ae8:	b4002fb8 	cbz	x24, 110dc <main+0x688>
   10aec:	aa0003f9 	mov	x25, x0
   10af0:	b4002f60 	cbz	x0, 110dc <main+0x688>
   10af4:	d28fe5a9 	mov	x9, #0x7f2d                	// #32557
   10af8:	90ffff8d 	adrp	x13, 0 <__abi_tag-0x2c4>
   10afc:	f2a992a9 	movk	x9, #0x4c95, lsl #16
   10b00:	aa1f03e8 	mov	x8, xzr
   10b04:	f2de85a9 	movk	x9, #0xf42d, lsl #32
   10b08:	5280002c 	mov	w12, #0x1                   	// #1
   10b0c:	f2eb0a29 	movk	x9, #0x5851, lsl #48
   10b10:	b24003ea 	orr	x10, xzr, #0x1
   10b14:	d2e7940b 	mov	x11, #0x3ca0000000000000    	// #4368491638549381120
   10b18:	1e7e1000 	fmov	d0, #-1.000000000000000000e+00
   10b1c:	fd43c5a1 	ldr	d1, [x13, #1928]
   10b20:	1e6c1002 	fmov	d2, #5.000000000000000000e-01
   10b24:	9b09298c 	madd	x12, x12, x9, x10
   10b28:	9e670166 	fmov	d6, x11
   10b2c:	d34bfd8d 	lsr	x13, x12, #11
   10b30:	9b09298e 	madd	x14, x12, x9, x10
   10b34:	9e6301a3 	ucvtf	d3, x13
   10b38:	9b0929cd 	madd	x13, x14, x9, x10
   10b3c:	d34bfdce 	lsr	x14, x14, #11
   10b40:	9b0929ac 	madd	x12, x13, x9, x10
   10b44:	d34bfdad 	lsr	x13, x13, #11
   10b48:	9e6301d0 	ucvtf	d16, x14
   10b4c:	1e660863 	fmul	d3, d3, d6
   10b50:	d34bfd8f 	lsr	x15, x12, #11
   10b54:	9b092990 	madd	x16, x12, x9, x10
   10b58:	9e6301b2 	ucvtf	d18, x13
   10b5c:	d37df10d 	lsl	x13, x8, #3
   10b60:	91000508 	add	x8, x8, #0x1
   10b64:	9e6301e4 	ucvtf	d4, x15
   10b68:	1e660a10 	fmul	d16, d16, d6
   10b6c:	9b092a0f 	madd	x15, x16, x9, x10
   10b70:	d34bfe10 	lsr	x16, x16, #11
   10b74:	1e632863 	fadd	d3, d3, d3
   10b78:	f117711f 	cmp	x8, #0x5dc
   10b7c:	9b0929ec 	madd	x12, x15, x9, x10
   10b80:	d34bfdef 	lsr	x15, x15, #11
   10b84:	9e630207 	ucvtf	d7, x16
   10b88:	1e660884 	fmul	d4, d4, d6
   10b8c:	d34bfd91 	lsr	x17, x12, #11
   10b90:	1e602863 	fadd	d3, d3, d0
   10b94:	9e6301f1 	ucvtf	d17, x15
   10b98:	1e702a10 	fadd	d16, d16, d16
   10b9c:	9e630225 	ucvtf	d5, x17
   10ba0:	1e6608e7 	fmul	d7, d7, d6
   10ba4:	1e642884 	fadd	d4, d4, d4
   10ba8:	fc2d6a63 	str	d3, [x19, x13]
   10bac:	1e660a31 	fmul	d17, d17, d6
   10bb0:	1e602a10 	fadd	d16, d16, d0
   10bb4:	1e6608a5 	fmul	d5, d5, d6
   10bb8:	1e660a46 	fmul	d6, d18, d6
   10bbc:	1e6728e7 	fadd	d7, d7, d7
   10bc0:	1e602884 	fadd	d4, d4, d0
   10bc4:	1e712a31 	fadd	d17, d17, d17
   10bc8:	fc2d6a90 	str	d16, [x20, x13]
   10bcc:	1e6528a5 	fadd	d5, d5, d5
   10bd0:	1e6628c6 	fadd	d6, d6, d6
   10bd4:	1e6028e7 	fadd	d7, d7, d0
   10bd8:	1e610883 	fmul	d3, d4, d1
   10bdc:	1e602a31 	fadd	d17, d17, d0
   10be0:	1e6028a5 	fadd	d5, d5, d0
   10be4:	1e6028c6 	fadd	d6, d6, d0
   10be8:	1e6108e4 	fmul	d4, d7, d1
   10bec:	fc2d6ac3 	str	d3, [x22, x13]
   10bf0:	fc2d6aa6 	str	d6, [x21, x13]
   10bf4:	1e610a26 	fmul	d6, d17, d1
   10bf8:	1e60c0a5 	fabs	d5, d5
   10bfc:	fc2d6ae4 	str	d4, [x23, x13]
   10c00:	fc2d6b06 	str	d6, [x24, x13]
   10c04:	1e6228a3 	fadd	d3, d5, d2
   10c08:	fc2d6b23 	str	d3, [x25, x13]
   10c0c:	54fff8c1 	b.ne	10b24 <main+0xd0>  // b.any
   10c10:	d2828f6a 	mov	x10, #0x147b                	// #5243
   10c14:	90ffff88 	adrp	x8, 0 <__abi_tag-0x2c4>
   10c18:	f2a8f5ca 	movk	x10, #0x47ae, lsl #16
   10c1c:	90ffff89 	adrp	x9, 0 <__abi_tag-0x2c4>
   10c20:	f2cf5c2a 	movk	x10, #0x7ae1, lsl #32
   10c24:	2a1f03fa 	mov	w26, wzr
   10c28:	f2e7f08a 	movk	x10, #0x3f84, lsl #48
   10c2c:	fd43c106 	ldr	d6, [x8, #1920]
   10c30:	fd43bd29 	ldr	d9, [x9, #1912]
   10c34:	1e6e100a 	fmov	d10, #1.000000000000000000e+00
   10c38:	4e080d47 	dup	v7.2d, x10
   10c3c:	fd001fe6 	str	d6, [sp, #56]
   10c40:	aa1f03fb 	mov	x27, xzr
   10c44:	14000011 	b	10c88 <main+0x234>
   10c48:	d37df368 	lsl	x8, x27, #3
   10c4c:	1e660980 	fmul	d0, d12, d6
   10c50:	1e6609a2 	fmul	d2, d13, d6
   10c54:	1e660964 	fmul	d4, d11, d6
   10c58:	9100077b 	add	x27, x27, #0x1
   10c5c:	fc686ac1 	ldr	d1, [x22, x8]
   10c60:	f117737f 	cmp	x27, #0x5dc
   10c64:	fc686ae3 	ldr	d3, [x23, x8]
   10c68:	fc686b05 	ldr	d5, [x24, x8]
   10c6c:	1e612800 	fadd	d0, d0, d1
   10c70:	1e632841 	fadd	d1, d2, d3
   10c74:	1e652882 	fadd	d2, d4, d5
   10c78:	fc286ac0 	str	d0, [x22, x8]
   10c7c:	fc286ae1 	str	d1, [x23, x8]
   10c80:	fc286b02 	str	d2, [x24, x8]
   10c84:	54000600 	b.eq	10d44 <main+0x2f0>  // b.none
   10c88:	2f00e40c 	movi	d12, #0x0
   10c8c:	2f00e40d 	movi	d13, #0x0
   10c90:	2f00e40b 	movi	d11, #0x0
   10c94:	aa1f03fc 	mov	x28, xzr
   10c98:	1400000f 	b	10cd4 <main+0x280>
   10c9c:	1e601940 	fdiv	d0, d10, d0
   10ca0:	fc7c7b22 	ldr	d2, [x25, x28, lsl #3]
   10ca4:	1e600801 	fmul	d1, d0, d0
   10ca8:	1e610800 	fmul	d0, d0, d1
   10cac:	1e600840 	fmul	d0, d2, d0
   10cb0:	1e600901 	fmul	d1, d8, d0
   10cb4:	1e6009e2 	fmul	d2, d15, d0
   10cb8:	1e6009c0 	fmul	d0, d14, d0
   10cbc:	1e61298c 	fadd	d12, d12, d1
   10cc0:	1e6229ad 	fadd	d13, d13, d2
   10cc4:	1e60296b 	fadd	d11, d11, d0
   10cc8:	9100079c 	add	x28, x28, #0x1
   10ccc:	f117739f 	cmp	x28, #0x5dc
   10cd0:	54fffbc0 	b.eq	10c48 <main+0x1f4>  // b.none
   10cd4:	eb1c037f 	cmp	x27, x28
   10cd8:	54ffff80 	b.eq	10cc8 <main+0x274>  // b.none
   10cdc:	d37df388 	lsl	x8, x28, #3
   10ce0:	d37df369 	lsl	x9, x27, #3
   10ce4:	fc686a60 	ldr	d0, [x19, x8]
   10ce8:	fc696a61 	ldr	d1, [x19, x9]
   10cec:	fc686a82 	ldr	d2, [x20, x8]
   10cf0:	fc696a83 	ldr	d3, [x20, x9]
   10cf4:	fc686aa4 	ldr	d4, [x21, x8]
   10cf8:	fc696aa5 	ldr	d5, [x21, x9]
   10cfc:	1e613808 	fsub	d8, d0, d1
   10d00:	1e63384f 	fsub	d15, d2, d3
   10d04:	1e65388e 	fsub	d14, d4, d5
   10d08:	1e680900 	fmul	d0, d8, d8
   10d0c:	1e6f09e1 	fmul	d1, d15, d15
   10d10:	1e612800 	fadd	d0, d0, d1
   10d14:	1e6e09c1 	fmul	d1, d14, d14
   10d18:	1e612800 	fadd	d0, d0, d1
   10d1c:	1e692801 	fadd	d1, d0, d9
   10d20:	1e61c020 	fsqrt	d0, d1
   10d24:	1e602000 	fcmp	d0, d0
   10d28:	54fffba7 	b.vc	10c9c <main+0x248>
   10d2c:	1e604020 	fmov	d0, d1
   10d30:	3d800be7 	str	q7, [sp, #32]
   10d34:	9400011b 	bl	111a0 <sqrt@plt>
   10d38:	3dc00be7 	ldr	q7, [sp, #32]
   10d3c:	fd401fe6 	ldr	d6, [sp, #56]
   10d40:	17ffffd7 	b	10c9c <main+0x248>
   10d44:	9285dbe8 	mov	x8, #0xffffffffffffd120    	// #-12000
   10d48:	8b0802c9 	add	x9, x22, x8
   10d4c:	8b0802ea 	add	x10, x23, x8
   10d50:	8b08026b 	add	x11, x19, x8
   10d54:	3dcbb920 	ldr	q0, [x9, #12000]
   10d58:	8b080309 	add	x9, x24, x8
   10d5c:	3dcbb941 	ldr	q1, [x10, #12000]
   10d60:	8b08028a 	add	x10, x20, x8
   10d64:	3dcbb962 	ldr	q2, [x11, #12000]
   10d68:	3dcbb923 	ldr	q3, [x9, #12000]
   10d6c:	8b0802a9 	add	x9, x21, x8
   10d70:	6e67dc00 	fmul	v0.2d, v0.2d, v7.2d
   10d74:	3dcbb944 	ldr	q4, [x10, #12000]
   10d78:	6e67dc21 	fmul	v1.2d, v1.2d, v7.2d
   10d7c:	b1004108 	adds	x8, x8, #0x10
   10d80:	6e67dc63 	fmul	v3.2d, v3.2d, v7.2d
   10d84:	3dcbb925 	ldr	q5, [x9, #12000]
   10d88:	4e60d440 	fadd	v0.2d, v2.2d, v0.2d
   10d8c:	4e61d481 	fadd	v1.2d, v4.2d, v1.2d
   10d90:	4e63d4a2 	fadd	v2.2d, v5.2d, v3.2d
   10d94:	3d8bb960 	str	q0, [x11, #12000]
   10d98:	3d8bb941 	str	q1, [x10, #12000]
   10d9c:	3d8bb922 	str	q2, [x9, #12000]
   10da0:	54fffd41 	b.ne	10d48 <main+0x2f4>  // b.any
   10da4:	1100075a 	add	w26, w26, #0x1
   10da8:	7100175f 	cmp	w26, #0x5
   10dac:	54fff4a1 	b.ne	10c40 <main+0x1ec>  // b.any
   10db0:	910103e1 	add	x1, sp, #0x40
   10db4:	52800020 	mov	w0, #0x1                   	// #1
   10db8:	94000106 	bl	111d0 <clock_gettime@plt>
   10dbc:	d2828f68 	mov	x8, #0x147b                	// #5243
   10dc0:	fd4027e0 	ldr	d0, [sp, #72]
   10dc4:	f2a8f5c8 	movk	x8, #0x47ae, lsl #16
   10dc8:	fd401fe6 	ldr	d6, [sp, #56]
   10dcc:	f2cf5c28 	movk	x8, #0x7ae1, lsl #32
   10dd0:	2a1f03fb 	mov	w27, wzr
   10dd4:	f2e7f088 	movk	x8, #0x3f84, lsl #48
   10dd8:	5e61d807 	scvtf	d7, d0
   10ddc:	f94023e9 	ldr	x9, [sp, #64]
   10de0:	1e6e100b 	fmov	d11, #1.000000000000000000e+00
   10de4:	4e080d10 	dup	v16.2d, x8
   10de8:	f90013e9 	str	x9, [sp, #32]
   10dec:	aa1f03fc 	mov	x28, xzr
   10df0:	14000011 	b	10e34 <main+0x3e0>
   10df4:	d37df388 	lsl	x8, x28, #3
   10df8:	1e6609c0 	fmul	d0, d14, d6
   10dfc:	1e6609a2 	fmul	d2, d13, d6
   10e00:	1e660984 	fmul	d4, d12, d6
   10e04:	9100079c 	add	x28, x28, #0x1
   10e08:	fc686ac1 	ldr	d1, [x22, x8]
   10e0c:	f117739f 	cmp	x28, #0x5dc
   10e10:	fc686ae3 	ldr	d3, [x23, x8]
   10e14:	fc686b05 	ldr	d5, [x24, x8]
   10e18:	1e612800 	fadd	d0, d0, d1
   10e1c:	1e632841 	fadd	d1, d2, d3
   10e20:	1e652882 	fadd	d2, d4, d5
   10e24:	fc286ac0 	str	d0, [x22, x8]
   10e28:	fc286ae1 	str	d1, [x23, x8]
   10e2c:	fc286b02 	str	d2, [x24, x8]
   10e30:	54000640 	b.eq	10ef8 <main+0x4a4>  // b.none
   10e34:	2f00e40c 	movi	d12, #0x0
   10e38:	2f00e40d 	movi	d13, #0x0
   10e3c:	2f00e40e 	movi	d14, #0x0
   10e40:	aa1f03fa 	mov	x26, xzr
   10e44:	1400000f 	b	10e80 <main+0x42c>
   10e48:	1e601960 	fdiv	d0, d11, d0
   10e4c:	fc7a7b22 	ldr	d2, [x25, x26, lsl #3]
   10e50:	1e600801 	fmul	d1, d0, d0
   10e54:	1e610800 	fmul	d0, d0, d1
   10e58:	1e600840 	fmul	d0, d2, d0
   10e5c:	1e600901 	fmul	d1, d8, d0
   10e60:	1e600942 	fmul	d2, d10, d0
   10e64:	1e6009e0 	fmul	d0, d15, d0
   10e68:	1e6129ce 	fadd	d14, d14, d1
   10e6c:	1e6229ad 	fadd	d13, d13, d2
   10e70:	1e60298c 	fadd	d12, d12, d0
   10e74:	9100075a 	add	x26, x26, #0x1
   10e78:	f117735f 	cmp	x26, #0x5dc
   10e7c:	54fffbc0 	b.eq	10df4 <main+0x3a0>  // b.none
   10e80:	eb1a039f 	cmp	x28, x26
   10e84:	54ffff80 	b.eq	10e74 <main+0x420>  // b.none
   10e88:	d37df348 	lsl	x8, x26, #3
   10e8c:	d37df389 	lsl	x9, x28, #3
   10e90:	fc686a60 	ldr	d0, [x19, x8]
   10e94:	fc696a61 	ldr	d1, [x19, x9]
   10e98:	fc686a82 	ldr	d2, [x20, x8]
   10e9c:	fc696a83 	ldr	d3, [x20, x9]
   10ea0:	fc686aa4 	ldr	d4, [x21, x8]
   10ea4:	fc696aa5 	ldr	d5, [x21, x9]
   10ea8:	1e613808 	fsub	d8, d0, d1
   10eac:	1e63384a 	fsub	d10, d2, d3
   10eb0:	1e65388f 	fsub	d15, d4, d5
   10eb4:	1e680900 	fmul	d0, d8, d8
   10eb8:	1e6a0941 	fmul	d1, d10, d10
   10ebc:	1e612800 	fadd	d0, d0, d1
   10ec0:	1e6f09e1 	fmul	d1, d15, d15
   10ec4:	1e612800 	fadd	d0, d0, d1
   10ec8:	1e692801 	fadd	d1, d0, d9
   10ecc:	1e61c020 	fsqrt	d0, d1
   10ed0:	1e602000 	fcmp	d0, d0
   10ed4:	54fffba7 	b.vc	10e48 <main+0x3f4>
   10ed8:	1e604020 	fmov	d0, d1
   10edc:	fd000fe7 	str	d7, [sp, #24]
   10ee0:	3d8003f0 	str	q16, [sp]
   10ee4:	940000af 	bl	111a0 <sqrt@plt>
   10ee8:	3dc003f0 	ldr	q16, [sp]
   10eec:	fd400fe7 	ldr	d7, [sp, #24]
   10ef0:	fd401fe6 	ldr	d6, [sp, #56]
   10ef4:	17ffffd5 	b	10e48 <main+0x3f4>
   10ef8:	9285dbe8 	mov	x8, #0xffffffffffffd120    	// #-12000
   10efc:	8b0802c9 	add	x9, x22, x8
   10f00:	8b0802ea 	add	x10, x23, x8
   10f04:	8b08026b 	add	x11, x19, x8
   10f08:	3dcbb920 	ldr	q0, [x9, #12000]
   10f0c:	8b080309 	add	x9, x24, x8
   10f10:	3dcbb941 	ldr	q1, [x10, #12000]
   10f14:	8b08028a 	add	x10, x20, x8
   10f18:	3dcbb962 	ldr	q2, [x11, #12000]
   10f1c:	3dcbb923 	ldr	q3, [x9, #12000]
   10f20:	8b0802a9 	add	x9, x21, x8
   10f24:	6e70dc00 	fmul	v0.2d, v0.2d, v16.2d
   10f28:	3dcbb944 	ldr	q4, [x10, #12000]
   10f2c:	6e70dc21 	fmul	v1.2d, v1.2d, v16.2d
   10f30:	b1004108 	adds	x8, x8, #0x10
   10f34:	6e70dc63 	fmul	v3.2d, v3.2d, v16.2d
   10f38:	3dcbb925 	ldr	q5, [x9, #12000]
   10f3c:	4e60d440 	fadd	v0.2d, v2.2d, v0.2d
   10f40:	4e61d481 	fadd	v1.2d, v4.2d, v1.2d
   10f44:	4e63d4a2 	fadd	v2.2d, v5.2d, v3.2d
   10f48:	3d8bb960 	str	q0, [x11, #12000]
   10f4c:	3d8bb941 	str	q1, [x10, #12000]
   10f50:	3d8bb922 	str	q2, [x9, #12000]
   10f54:	54fffd41 	b.ne	10efc <main+0x4a8>  // b.any
   10f58:	1100077b 	add	w27, w27, #0x1
   10f5c:	7106437f 	cmp	w27, #0x190
   10f60:	54fff461 	b.ne	10dec <main+0x398>  // b.any
   10f64:	d2d09008 	mov	x8, #0x848000000000        	// #145685290680320
   10f68:	910103e1 	add	x1, sp, #0x40
   10f6c:	f2e825c8 	movk	x8, #0x412e, lsl #48
   10f70:	52800020 	mov	w0, #0x1                   	// #1
   10f74:	9e670100 	fmov	d0, x8
   10f78:	1e6018e8 	fdiv	d8, d7, d0
   10f7c:	94000095 	bl	111d0 <clock_gettime@plt>
   10f80:	fd4027e0 	ldr	d0, [sp, #72]
   10f84:	2f00e401 	movi	d1, #0x0
   10f88:	f94023e8 	ldr	x8, [sp, #64]
   10f8c:	9285dbe9 	mov	x9, #0xffffffffffffd120    	// #-12000
   10f90:	5e61d800 	scvtf	d0, d0
   10f94:	8b09026a 	add	x10, x19, x9
   10f98:	8b09028b 	add	x11, x20, x9
   10f9c:	8b0902ac 	add	x12, x21, x9
   10fa0:	3dcbb942 	ldr	q2, [x10, #12000]
   10fa4:	3dcbb963 	ldr	q3, [x11, #12000]
   10fa8:	3dcbbd44 	ldr	q4, [x10, #12016]
   10fac:	8b0902ca 	add	x10, x22, x9
   10fb0:	3dcbbd65 	ldr	q5, [x11, #12016]
   10fb4:	8b0902eb 	add	x11, x23, x9
   10fb8:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   10fbc:	3dcbb983 	ldr	q3, [x12, #12000]
   10fc0:	4e65d484 	fadd	v4.2d, v4.2d, v5.2d
   10fc4:	3dcbbd85 	ldr	q5, [x12, #12016]
   10fc8:	8b09030c 	add	x12, x24, x9
   10fcc:	b1008129 	adds	x9, x9, #0x20
   10fd0:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   10fd4:	3dcbb943 	ldr	q3, [x10, #12000]
   10fd8:	4e65d484 	fadd	v4.2d, v4.2d, v5.2d
   10fdc:	3dcbbd45 	ldr	q5, [x10, #12016]
   10fe0:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   10fe4:	3dcbb963 	ldr	q3, [x11, #12000]
   10fe8:	4e65d484 	fadd	v4.2d, v4.2d, v5.2d
   10fec:	3dcbbd65 	ldr	q5, [x11, #12016]
   10ff0:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   10ff4:	3dcbb983 	ldr	q3, [x12, #12000]
   10ff8:	4e63d442 	fadd	v2.2d, v2.2d, v3.2d
   10ffc:	4e65d483 	fadd	v3.2d, v4.2d, v5.2d
   11000:	5e180444 	mov	d4, v2.d[1]
   11004:	1e622821 	fadd	d1, d1, d2
   11008:	3dcbbd82 	ldr	q2, [x12, #12016]
   1100c:	4e62d462 	fadd	v2.2d, v3.2d, v2.2d
   11010:	1e642821 	fadd	d1, d1, d4
   11014:	5e180443 	mov	d3, v2.d[1]
   11018:	1e622821 	fadd	d1, d1, d2
   1101c:	1e632821 	fadd	d1, d1, d3
   11020:	54fffba1 	b.ne	10f94 <main+0x540>  // b.any
   11024:	d2d09009 	mov	x9, #0x848000000000        	// #145685290680320
   11028:	f94013ea 	ldr	x10, [sp, #32]
   1102c:	f2e825c9 	movk	x9, #0x412e, lsl #48
   11030:	9e620103 	scvtf	d3, x8
   11034:	f0ffff60 	adrp	x0, 0 <__abi_tag-0x2c4>
   11038:	911e4000 	add	x0, x0, #0x790
   1103c:	9e670122 	fmov	d2, x9
   11040:	d2c80009 	mov	x9, #0x400000000000        	// #70368744177664
   11044:	f2e811e9 	movk	x9, #0x408f, lsl #48
   11048:	1e621800 	fdiv	d0, d0, d2
   1104c:	9e620142 	scvtf	d2, x10
   11050:	9e670124 	fmov	d4, x9
   11054:	1e640842 	fmul	d2, d2, d4
   11058:	1e640863 	fmul	d3, d3, d4
   1105c:	1e682842 	fadd	d2, d2, d8
   11060:	1e602860 	fadd	d0, d3, d0
   11064:	1e623800 	fsub	d0, d0, d2
   11068:	94000052 	bl	111b0 <printf@plt>
   1106c:	aa1303e0 	mov	x0, x19
   11070:	94000054 	bl	111c0 <free@plt>
   11074:	aa1403e0 	mov	x0, x20
   11078:	94000052 	bl	111c0 <free@plt>
   1107c:	aa1503e0 	mov	x0, x21
   11080:	94000050 	bl	111c0 <free@plt>
   11084:	aa1603e0 	mov	x0, x22
   11088:	9400004e 	bl	111c0 <free@plt>
   1108c:	aa1703e0 	mov	x0, x23
   11090:	9400004c 	bl	111c0 <free@plt>
   11094:	aa1803e0 	mov	x0, x24
   11098:	9400004a 	bl	111c0 <free@plt>
   1109c:	aa1903e0 	mov	x0, x25
   110a0:	94000048 	bl	111c0 <free@plt>
   110a4:	2a1f03f3 	mov	w19, wzr
   110a8:	2a1303e0 	mov	w0, w19
   110ac:	a94e4ff4 	ldp	x20, x19, [sp, #224]
   110b0:	a94d57f6 	ldp	x22, x21, [sp, #208]
   110b4:	a94c5ff8 	ldp	x24, x23, [sp, #192]
   110b8:	a94b67fa 	ldp	x26, x25, [sp, #176]
   110bc:	a94a6ffc 	ldp	x28, x27, [sp, #160]
   110c0:	a9497bfd 	ldp	x29, x30, [sp, #144]
   110c4:	6d4823e9 	ldp	d9, d8, [sp, #128]
   110c8:	6d472beb 	ldp	d11, d10, [sp, #112]
   110cc:	6d4633ed 	ldp	d13, d12, [sp, #96]
   110d0:	6d453bef 	ldp	d15, d14, [sp, #80]
   110d4:	9103c3ff 	add	sp, sp, #0xf0
   110d8:	d65f03c0 	ret
   110dc:	90000088 	adrp	x8, 21000 <fwrite@plt+0xfe20>
   110e0:	d503201f 	nop
   110e4:	70f7b640 	adr	x0, 7af <_IO_stdin_used+0x3f>
   110e8:	52800241 	mov	w1, #0x12                  	// #18
   110ec:	52800022 	mov	w2, #0x1                   	// #1
   110f0:	52800033 	mov	w19, #0x1                   	// #1
   110f4:	f941ed08 	ldr	x8, [x8, #984]
   110f8:	f9400103 	ldr	x3, [x8]
   110fc:	94000039 	bl	111e0 <fwrite@plt>
   11100:	17ffffea 	b	110a8 <main+0x654>

Disassembly of section .init:

0000000000011104 <_init>:
   11104:	d503201f 	nop
   11108:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   1110c:	910003fd 	mov	x29, sp
   11110:	97fffe19 	bl	10974 <call_weak_fn>
   11114:	a8c17bfd 	ldp	x29, x30, [sp], #16
   11118:	d65f03c0 	ret

Disassembly of section .fini:

000000000001111c <_fini>:
   1111c:	d503201f 	nop
   11120:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   11124:	910003fd 	mov	x29, sp
   11128:	a8c17bfd 	ldp	x29, x30, [sp], #16
   1112c:	d65f03c0 	ret

Disassembly of section .plt:

0000000000011130 <abort@plt-0x20>:
   11130:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
   11134:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe00>
   11138:	f9420211 	ldr	x17, [x16, #1024]
   1113c:	91100210 	add	x16, x16, #0x400
   11140:	d61f0220 	br	x17
   11144:	d503201f 	nop
   11148:	d503201f 	nop
   1114c:	d503201f 	nop

0000000000011150 <abort@plt>:
   11150:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe00>
   11154:	f9420611 	ldr	x17, [x16, #1032]
   11158:	91102210 	add	x16, x16, #0x408
   1115c:	d61f0220 	br	x17

0000000000011160 <__libc_start_main@plt>:
   11160:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe00>
   11164:	f9420a11 	ldr	x17, [x16, #1040]
   11168:	91104210 	add	x16, x16, #0x410
   1116c:	d61f0220 	br	x17

0000000000011170 <__gmon_start__@plt>:
   11170:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe00>
   11174:	f9420e11 	ldr	x17, [x16, #1048]
   11178:	91106210 	add	x16, x16, #0x418
   1117c:	d61f0220 	br	x17

0000000000011180 <__cxa_finalize@plt>:
   11180:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe00>
   11184:	f9421211 	ldr	x17, [x16, #1056]
   11188:	91108210 	add	x16, x16, #0x420
   1118c:	d61f0220 	br	x17

0000000000011190 <malloc@plt>:
   11190:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe00>
   11194:	f9421611 	ldr	x17, [x16, #1064]
   11198:	9110a210 	add	x16, x16, #0x428
   1119c:	d61f0220 	br	x17

00000000000111a0 <sqrt@plt>:
   111a0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe00>
   111a4:	f9421a11 	ldr	x17, [x16, #1072]
   111a8:	9110c210 	add	x16, x16, #0x430
   111ac:	d61f0220 	br	x17

00000000000111b0 <printf@plt>:
   111b0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe00>
   111b4:	f9421e11 	ldr	x17, [x16, #1080]
   111b8:	9110e210 	add	x16, x16, #0x438
   111bc:	d61f0220 	br	x17

00000000000111c0 <free@plt>:
   111c0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe00>
   111c4:	f9422211 	ldr	x17, [x16, #1088]
   111c8:	91110210 	add	x16, x16, #0x440
   111cc:	d61f0220 	br	x17

00000000000111d0 <clock_gettime@plt>:
   111d0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe00>
   111d4:	f9422611 	ldr	x17, [x16, #1096]
   111d8:	91112210 	add	x16, x16, #0x448
   111dc:	d61f0220 	br	x17

00000000000111e0 <fwrite@plt>:
   111e0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe00>
   111e4:	f9422a11 	ldr	x17, [x16, #1104]
   111e8:	91114210 	add	x16, x16, #0x450
   111ec:	d61f0220 	br	x17
