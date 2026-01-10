
/bench/bench:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000010a00 <_start>:
   10a00:	d503201f 	nop
   10a04:	d280001d 	mov	x29, #0x0                   	// #0
   10a08:	d280001e 	mov	x30, #0x0                   	// #0
   10a0c:	aa0003e5 	mov	x5, x0
   10a10:	f94003e1 	ldr	x1, [sp]
   10a14:	910023e2 	add	x2, sp, #0x8
   10a18:	910003e6 	mov	x6, sp
   10a1c:	d503201f 	nop
   10a20:	100007a0 	adr	x0, 10b14 <main>
   10a24:	d2800003 	mov	x3, #0x0                   	// #0
   10a28:	d2800004 	mov	x4, #0x0                   	// #0
   10a2c:	94000125 	bl	10ec0 <__libc_start_main@plt>
   10a30:	94000120 	bl	10eb0 <abort@plt>

0000000000010a34 <call_weak_fn>:
   10a34:	b0000080 	adrp	x0, 21000 <_DYNAMIC+0x40>
   10a38:	f940b400 	ldr	x0, [x0, #360]
   10a3c:	b4000040 	cbz	x0, 10a44 <call_weak_fn+0x10>
   10a40:	14000124 	b	10ed0 <__gmon_start__@plt>
   10a44:	d65f03c0 	ret
	...

0000000000010a50 <deregister_tm_clones>:
   10a50:	d503201f 	nop
   10a54:	10103a20 	adr	x0, 31198 <__TMC_END__>
   10a58:	d503201f 	nop
   10a5c:	101039e1 	adr	x1, 31198 <__TMC_END__>
   10a60:	eb00003f 	cmp	x1, x0
   10a64:	540000c0 	b.eq	10a7c <deregister_tm_clones+0x2c>  // b.none
   10a68:	b0000081 	adrp	x1, 21000 <_DYNAMIC+0x40>
   10a6c:	f940b821 	ldr	x1, [x1, #368]
   10a70:	b4000061 	cbz	x1, 10a7c <deregister_tm_clones+0x2c>
   10a74:	aa0103f0 	mov	x16, x1
   10a78:	d61f0200 	br	x16
   10a7c:	d65f03c0 	ret

0000000000010a80 <register_tm_clones>:
   10a80:	d503201f 	nop
   10a84:	101038a0 	adr	x0, 31198 <__TMC_END__>
   10a88:	d503201f 	nop
   10a8c:	10103861 	adr	x1, 31198 <__TMC_END__>
   10a90:	cb000021 	sub	x1, x1, x0
   10a94:	d37ffc22 	lsr	x2, x1, #63
   10a98:	8b810c41 	add	x1, x2, x1, asr #3
   10a9c:	9341fc21 	asr	x1, x1, #1
   10aa0:	b40000c1 	cbz	x1, 10ab8 <register_tm_clones+0x38>
   10aa4:	b0000082 	adrp	x2, 21000 <_DYNAMIC+0x40>
   10aa8:	f940bc42 	ldr	x2, [x2, #376]
   10aac:	b4000062 	cbz	x2, 10ab8 <register_tm_clones+0x38>
   10ab0:	aa0203f0 	mov	x16, x2
   10ab4:	d61f0200 	br	x16
   10ab8:	d65f03c0 	ret
   10abc:	d503201f 	nop

0000000000010ac0 <__do_global_dtors_aux>:
   10ac0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   10ac4:	910003fd 	mov	x29, sp
   10ac8:	f9000bf3 	str	x19, [sp, #16]
   10acc:	b0000113 	adrp	x19, 31000 <_DYNAMIC+0x10040>
   10ad0:	3948c260 	ldrb	w0, [x19, #560]
   10ad4:	35000140 	cbnz	w0, 10afc <__do_global_dtors_aux+0x3c>
   10ad8:	b0000080 	adrp	x0, 21000 <_DYNAMIC+0x40>
   10adc:	f940c000 	ldr	x0, [x0, #384]
   10ae0:	b4000080 	cbz	x0, 10af0 <__do_global_dtors_aux+0x30>
   10ae4:	b0000100 	adrp	x0, 31000 <_DYNAMIC+0x10040>
   10ae8:	f940c800 	ldr	x0, [x0, #400]
   10aec:	940000fd 	bl	10ee0 <__cxa_finalize@plt>
   10af0:	97ffffd8 	bl	10a50 <deregister_tm_clones>
   10af4:	52800020 	mov	w0, #0x1                   	// #1
   10af8:	3908c260 	strb	w0, [x19, #560]
   10afc:	f9400bf3 	ldr	x19, [sp, #16]
   10b00:	a8c27bfd 	ldp	x29, x30, [sp], #32
   10b04:	d65f03c0 	ret
   10b08:	d503201f 	nop
   10b0c:	d503201f 	nop

0000000000010b10 <frame_dummy>:
   10b10:	17ffffdc 	b	10a80 <register_tm_clones>

0000000000010b14 <main>:
   10b14:	d101c3ff 	sub	sp, sp, #0x70
   10b18:	fd001be8 	str	d8, [sp, #48]
   10b1c:	a903fbfd 	stp	x29, x30, [sp, #56]
   10b20:	9100e3fd 	add	x29, sp, #0x38
   10b24:	f90027f7 	str	x23, [sp, #72]
   10b28:	a90557f6 	stp	x22, x21, [sp, #80]
   10b2c:	a9064ff4 	stp	x20, x19, [sp, #96]
   10b30:	910063e0 	add	x0, sp, #0x18
   10b34:	940000ef 	bl	10ef0 <pipe@plt>
   10b38:	3100041f 	cmn	w0, #0x1
   10b3c:	54000ae0 	b.eq	10c98 <main+0x184>  // b.none
   10b40:	940000f4 	bl	10f10 <fork@plt>
   10b44:	3100041f 	cmn	w0, #0x1
   10b48:	54000ae0 	b.eq	10ca4 <main+0x190>  // b.none
   10b4c:	34000b60 	cbz	w0, 10cb8 <main+0x1a4>
   10b50:	b9401be0 	ldr	w0, [sp, #24]
   10b54:	940000f3 	bl	10f20 <close@plt>
   10b58:	90ffff88 	adrp	x8, 0 <__abi_tag-0x2c4>
   10b5c:	52a00020 	mov	w0, #0x10000               	// #65536
   10b60:	3dc21d00 	ldr	q0, [x8, #2160]
   10b64:	3d8003e0 	str	q0, [sp]
   10b68:	940000f2 	bl	10f30 <malloc@plt>
   10b6c:	4f00e600 	movi	v0.16b, #0x10
   10b70:	3dc003e3 	ldr	q3, [sp]
   10b74:	4f01e401 	movi	v1.16b, #0x20
   10b78:	aa0003f3 	mov	x19, x0
   10b7c:	aa1f03e8 	mov	x8, xzr
   10b80:	4e208462 	add	v2.16b, v3.16b, v0.16b
   10b84:	8b080269 	add	x9, x19, x8
   10b88:	91008108 	add	x8, x8, #0x20
   10b8c:	f140411f 	cmp	x8, #0x10, lsl #12
   10b90:	ad000923 	stp	q3, q2, [x9]
   10b94:	4e218463 	add	v3.16b, v3.16b, v1.16b
   10b98:	54ffff41 	b.ne	10b80 <main+0x6c>  // b.any
   10b9c:	d10063a1 	sub	x1, x29, #0x18
   10ba0:	52800020 	mov	w0, #0x1                   	// #1
   10ba4:	d2b00014 	mov	x20, #0x80000000            	// #2147483648
   10ba8:	f2c00054 	movk	x20, #0x2, lsl #32
   10bac:	940000fd 	bl	10fa0 <clock_gettime@plt>
   10bb0:	fc5f03a0 	ldur	d0, [x29, #-16]
   10bb4:	d2d09008 	mov	x8, #0x848000000000        	// #145685290680320
   10bb8:	f2e825c8 	movk	x8, #0x412e, lsl #48
   10bbc:	aa1f03f5 	mov	x21, xzr
   10bc0:	5e61d800 	scvtf	d0, d0
   10bc4:	9e670101 	fmov	d1, x8
   10bc8:	d2c80008 	mov	x8, #0x400000000000        	// #70368744177664
   10bcc:	f2e811e8 	movk	x8, #0x408f, lsl #48
   10bd0:	1e611800 	fdiv	d0, d0, d1
   10bd4:	fc5e83a1 	ldur	d1, [x29, #-24]
   10bd8:	9e670102 	fmov	d2, x8
   10bdc:	5e61d821 	scvtf	d1, d1
   10be0:	1f420028 	fmadd	d8, d1, d2, d0
   10be4:	eb1402bf 	cmp	x21, x20
   10be8:	54000102 	b.cs	10c08 <main+0xf4>  // b.hs, b.nlast
   10bec:	b9401fe0 	ldr	w0, [sp, #28]
   10bf0:	aa1303e1 	mov	x1, x19
   10bf4:	52a00022 	mov	w2, #0x10000               	// #65536
   10bf8:	940000e2 	bl	10f80 <write@plt>
   10bfc:	8b150015 	add	x21, x0, x21
   10c00:	f100001f 	cmp	x0, #0x0
   10c04:	54ffff0c 	b.gt	10be4 <main+0xd0>
   10c08:	d10063a1 	sub	x1, x29, #0x18
   10c0c:	52800020 	mov	w0, #0x1                   	// #1
   10c10:	940000e4 	bl	10fa0 <clock_gettime@plt>
   10c14:	fc5f03a0 	ldur	d0, [x29, #-16]
   10c18:	d2d09008 	mov	x8, #0x848000000000        	// #145685290680320
   10c1c:	f2e825c8 	movk	x8, #0x412e, lsl #48
   10c20:	90ffff80 	adrp	x0, 0 <__abi_tag-0x2c4>
   10c24:	91221400 	add	x0, x0, #0x885
   10c28:	5e61d800 	scvtf	d0, d0
   10c2c:	9e670101 	fmov	d1, x8
   10c30:	d2c80008 	mov	x8, #0x400000000000        	// #70368744177664
   10c34:	f2e811e8 	movk	x8, #0x408f, lsl #48
   10c38:	1e611800 	fdiv	d0, d0, d1
   10c3c:	fc5e83a1 	ldur	d1, [x29, #-24]
   10c40:	9e670102 	fmov	d2, x8
   10c44:	5e61d821 	scvtf	d1, d1
   10c48:	1f420020 	fmadd	d0, d1, d2, d0
   10c4c:	1e683800 	fsub	d0, d0, d8
   10c50:	1e621801 	fdiv	d1, d0, d2
   10c54:	1e649002 	fmov	d2, #1.000000000000000000e+01
   10c58:	1e611841 	fdiv	d1, d2, d1
   10c5c:	940000bd 	bl	10f50 <printf@plt>
   10c60:	b9401fe0 	ldr	w0, [sp, #28]
   10c64:	940000af 	bl	10f20 <close@plt>
   10c68:	aa1f03e0 	mov	x0, xzr
   10c6c:	940000c9 	bl	10f90 <wait@plt>
   10c70:	aa1303e0 	mov	x0, x19
   10c74:	940000bb 	bl	10f60 <free@plt>
   10c78:	2a1f03e0 	mov	w0, wzr
   10c7c:	a9464ff4 	ldp	x20, x19, [sp, #96]
   10c80:	a94557f6 	ldp	x22, x21, [sp, #80]
   10c84:	a943fbfd 	ldp	x29, x30, [sp, #56]
   10c88:	f94027f7 	ldr	x23, [sp, #72]
   10c8c:	fd401be8 	ldr	d8, [sp, #48]
   10c90:	9101c3ff 	add	sp, sp, #0x70
   10c94:	d65f03c0 	ret
   10c98:	d503201f 	nop
   10c9c:	10f7df20 	adr	x0, 880 <_IO_stdin_used+0x20>
   10ca0:	14000003 	b	10cac <main+0x198>
   10ca4:	90ffff80 	adrp	x0, 0 <__abi_tag-0x2c4>
   10ca8:	9122e400 	add	x0, x0, #0x8b9
   10cac:	94000095 	bl	10f00 <perror@plt>
   10cb0:	52800020 	mov	w0, #0x1                   	// #1
   10cb4:	17fffff2 	b	10c7c <main+0x168>
   10cb8:	b9401fe0 	ldr	w0, [sp, #28]
   10cbc:	d2b00014 	mov	x20, #0x80000000            	// #2147483648
   10cc0:	f2c00054 	movk	x20, #0x2, lsl #32
   10cc4:	94000097 	bl	10f20 <close@plt>
   10cc8:	52a00020 	mov	w0, #0x10000               	// #65536
   10ccc:	94000099 	bl	10f30 <malloc@plt>
   10cd0:	aa0003f3 	mov	x19, x0
   10cd4:	aa1f03f5 	mov	x21, xzr
   10cd8:	2a1f03f7 	mov	w23, wzr
   10cdc:	91004016 	add	x22, x0, #0x10
   10ce0:	14000004 	b	10cf0 <main+0x1dc>
   10ce4:	8b150015 	add	x21, x0, x21
   10ce8:	eb1402bf 	cmp	x21, x20
   10cec:	54000a62 	b.cs	10e38 <main+0x324>  // b.hs, b.nlast
   10cf0:	b9401be0 	ldr	w0, [sp, #24]
   10cf4:	aa1303e1 	mov	x1, x19
   10cf8:	52a00022 	mov	w2, #0x10000               	// #65536
   10cfc:	94000091 	bl	10f40 <read@plt>
   10d00:	f100041f 	cmp	x0, #0x1
   10d04:	540009ab 	b.lt	10e38 <main+0x324>  // b.tstop
   10d08:	f100201f 	cmp	x0, #0x8
   10d0c:	54000062 	b.cs	10d18 <main+0x204>  // b.hs, b.nlast
   10d10:	aa1f03e8 	mov	x8, xzr
   10d14:	14000042 	b	10e1c <main+0x308>
   10d18:	f100801f 	cmp	x0, #0x20
   10d1c:	54000062 	b.cs	10d28 <main+0x214>  // b.hs, b.nlast
   10d20:	aa1f03e8 	mov	x8, xzr
   10d24:	14000023 	b	10db0 <main+0x29c>
   10d28:	6f00e400 	movi	v0.2d, #0x0
   10d2c:	927be808 	and	x8, x0, #0xffffffffffffffe0
   10d30:	6f00e401 	movi	v1.2d, #0x0
   10d34:	aa1603e9 	mov	x9, x22
   10d38:	aa0803ea 	mov	x10, x8
   10d3c:	4e011ee0 	mov	v0.b[0], w23
   10d40:	ad7f8d22 	ldp	q2, q3, [x9, #-16]
   10d44:	f100814a 	subs	x10, x10, #0x20
   10d48:	91008129 	add	x9, x9, #0x20
   10d4c:	6e201c40 	eor	v0.16b, v2.16b, v0.16b
   10d50:	6e211c61 	eor	v1.16b, v3.16b, v1.16b
   10d54:	54ffff61 	b.ne	10d40 <main+0x22c>  // b.any
   10d58:	6e201c20 	eor	v0.16b, v1.16b, v0.16b
   10d5c:	eb08001f 	cmp	x0, x8
   10d60:	6e004001 	ext	v1.16b, v0.16b, v0.16b, #8
   10d64:	2e211c00 	eor	v0.8b, v0.8b, v1.8b
   10d68:	0e033c09 	umov	w9, v0.b[1]
   10d6c:	0e013c0a 	umov	w10, v0.b[0]
   10d70:	0e053c0b 	umov	w11, v0.b[2]
   10d74:	0e073c0c 	umov	w12, v0.b[3]
   10d78:	0e093c0d 	umov	w13, v0.b[4]
   10d7c:	4a090149 	eor	w9, w10, w9
   10d80:	0e0b3c0a 	umov	w10, v0.b[5]
   10d84:	4a0b0129 	eor	w9, w9, w11
   10d88:	0e0d3c0b 	umov	w11, v0.b[6]
   10d8c:	4a0c0129 	eor	w9, w9, w12
   10d90:	0e0f3c0c 	umov	w12, v0.b[7]
   10d94:	4a0d0129 	eor	w9, w9, w13
   10d98:	4a0a0129 	eor	w9, w9, w10
   10d9c:	4a0b0129 	eor	w9, w9, w11
   10da0:	4a0c0137 	eor	w23, w9, w12
   10da4:	54fffa00 	b.eq	10ce4 <main+0x1d0>  // b.none
   10da8:	f27d041f 	tst	x0, #0x18
   10dac:	54000380 	b.eq	10e1c <main+0x308>  // b.none
   10db0:	2f00e400 	movi	d0, #0x0
   10db4:	aa0803ea 	mov	x10, x8
   10db8:	927df008 	and	x8, x0, #0xfffffffffffffff8
   10dbc:	cb080149 	sub	x9, x10, x8
   10dc0:	8b0a026a 	add	x10, x19, x10
   10dc4:	4e011ee0 	mov	v0.b[0], w23
   10dc8:	fc408541 	ldr	d1, [x10], #8
   10dcc:	b1002129 	adds	x9, x9, #0x8
   10dd0:	2e201c20 	eor	v0.8b, v1.8b, v0.8b
   10dd4:	54ffffa1 	b.ne	10dc8 <main+0x2b4>  // b.any
   10dd8:	0e033c09 	umov	w9, v0.b[1]
   10ddc:	0e013c0a 	umov	w10, v0.b[0]
   10de0:	0e053c0b 	umov	w11, v0.b[2]
   10de4:	0e073c0c 	umov	w12, v0.b[3]
   10de8:	0e093c0d 	umov	w13, v0.b[4]
   10dec:	eb08001f 	cmp	x0, x8
   10df0:	4a090149 	eor	w9, w10, w9
   10df4:	0e0b3c0a 	umov	w10, v0.b[5]
   10df8:	4a0b0129 	eor	w9, w9, w11
   10dfc:	0e0d3c0b 	umov	w11, v0.b[6]
   10e00:	4a0c0129 	eor	w9, w9, w12
   10e04:	0e0f3c0c 	umov	w12, v0.b[7]
   10e08:	4a0d0129 	eor	w9, w9, w13
   10e0c:	4a0a0129 	eor	w9, w9, w10
   10e10:	4a0b0129 	eor	w9, w9, w11
   10e14:	4a0c0137 	eor	w23, w9, w12
   10e18:	54fff660 	b.eq	10ce4 <main+0x1d0>  // b.none
   10e1c:	cb080009 	sub	x9, x0, x8
   10e20:	8b080268 	add	x8, x19, x8
   10e24:	3840150a 	ldrb	w10, [x8], #1
   10e28:	f1000529 	subs	x9, x9, #0x1
   10e2c:	4a170157 	eor	w23, w10, w23
   10e30:	54ffffa1 	b.ne	10e24 <main+0x310>  // b.any
   10e34:	17ffffac 	b	10ce4 <main+0x1d0>
   10e38:	90ffff80 	adrp	x0, 0 <__abi_tag-0x2c4>
   10e3c:	12001ee1 	and	w1, w23, #0xff
   10e40:	9122b400 	add	x0, x0, #0x8ad
   10e44:	94000043 	bl	10f50 <printf@plt>
   10e48:	aa1303e0 	mov	x0, x19
   10e4c:	94000045 	bl	10f60 <free@plt>
   10e50:	b9401be0 	ldr	w0, [sp, #24]
   10e54:	94000033 	bl	10f20 <close@plt>
   10e58:	2a1f03e0 	mov	w0, wzr
   10e5c:	94000045 	bl	10f70 <exit@plt>

Disassembly of section .init:

0000000000010e60 <_init>:
   10e60:	d503201f 	nop
   10e64:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   10e68:	910003fd 	mov	x29, sp
   10e6c:	97fffef2 	bl	10a34 <call_weak_fn>
   10e70:	a8c17bfd 	ldp	x29, x30, [sp], #16
   10e74:	d65f03c0 	ret

Disassembly of section .fini:

0000000000010e78 <_fini>:
   10e78:	d503201f 	nop
   10e7c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   10e80:	910003fd 	mov	x29, sp
   10e84:	a8c17bfd 	ldp	x29, x30, [sp], #16
   10e88:	d65f03c0 	ret

Disassembly of section .plt:

0000000000010e90 <abort@plt-0x20>:
   10e90:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
   10e94:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0x10040>
   10e98:	f940d611 	ldr	x17, [x16, #424]
   10e9c:	9106a210 	add	x16, x16, #0x1a8
   10ea0:	d61f0220 	br	x17
   10ea4:	d503201f 	nop
   10ea8:	d503201f 	nop
   10eac:	d503201f 	nop

0000000000010eb0 <abort@plt>:
   10eb0:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0x10040>
   10eb4:	f940da11 	ldr	x17, [x16, #432]
   10eb8:	9106c210 	add	x16, x16, #0x1b0
   10ebc:	d61f0220 	br	x17

0000000000010ec0 <__libc_start_main@plt>:
   10ec0:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0x10040>
   10ec4:	f940de11 	ldr	x17, [x16, #440]
   10ec8:	9106e210 	add	x16, x16, #0x1b8
   10ecc:	d61f0220 	br	x17

0000000000010ed0 <__gmon_start__@plt>:
   10ed0:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0x10040>
   10ed4:	f940e211 	ldr	x17, [x16, #448]
   10ed8:	91070210 	add	x16, x16, #0x1c0
   10edc:	d61f0220 	br	x17

0000000000010ee0 <__cxa_finalize@plt>:
   10ee0:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0x10040>
   10ee4:	f940e611 	ldr	x17, [x16, #456]
   10ee8:	91072210 	add	x16, x16, #0x1c8
   10eec:	d61f0220 	br	x17

0000000000010ef0 <pipe@plt>:
   10ef0:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0x10040>
   10ef4:	f940ea11 	ldr	x17, [x16, #464]
   10ef8:	91074210 	add	x16, x16, #0x1d0
   10efc:	d61f0220 	br	x17

0000000000010f00 <perror@plt>:
   10f00:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0x10040>
   10f04:	f940ee11 	ldr	x17, [x16, #472]
   10f08:	91076210 	add	x16, x16, #0x1d8
   10f0c:	d61f0220 	br	x17

0000000000010f10 <fork@plt>:
   10f10:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0x10040>
   10f14:	f940f211 	ldr	x17, [x16, #480]
   10f18:	91078210 	add	x16, x16, #0x1e0
   10f1c:	d61f0220 	br	x17

0000000000010f20 <close@plt>:
   10f20:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0x10040>
   10f24:	f940f611 	ldr	x17, [x16, #488]
   10f28:	9107a210 	add	x16, x16, #0x1e8
   10f2c:	d61f0220 	br	x17

0000000000010f30 <malloc@plt>:
   10f30:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0x10040>
   10f34:	f940fa11 	ldr	x17, [x16, #496]
   10f38:	9107c210 	add	x16, x16, #0x1f0
   10f3c:	d61f0220 	br	x17

0000000000010f40 <read@plt>:
   10f40:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0x10040>
   10f44:	f940fe11 	ldr	x17, [x16, #504]
   10f48:	9107e210 	add	x16, x16, #0x1f8
   10f4c:	d61f0220 	br	x17

0000000000010f50 <printf@plt>:
   10f50:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0x10040>
   10f54:	f9410211 	ldr	x17, [x16, #512]
   10f58:	91080210 	add	x16, x16, #0x200
   10f5c:	d61f0220 	br	x17

0000000000010f60 <free@plt>:
   10f60:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0x10040>
   10f64:	f9410611 	ldr	x17, [x16, #520]
   10f68:	91082210 	add	x16, x16, #0x208
   10f6c:	d61f0220 	br	x17

0000000000010f70 <exit@plt>:
   10f70:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0x10040>
   10f74:	f9410a11 	ldr	x17, [x16, #528]
   10f78:	91084210 	add	x16, x16, #0x210
   10f7c:	d61f0220 	br	x17

0000000000010f80 <write@plt>:
   10f80:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0x10040>
   10f84:	f9410e11 	ldr	x17, [x16, #536]
   10f88:	91086210 	add	x16, x16, #0x218
   10f8c:	d61f0220 	br	x17

0000000000010f90 <wait@plt>:
   10f90:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0x10040>
   10f94:	f9411211 	ldr	x17, [x16, #544]
   10f98:	91088210 	add	x16, x16, #0x220
   10f9c:	d61f0220 	br	x17

0000000000010fa0 <clock_gettime@plt>:
   10fa0:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0x10040>
   10fa4:	f9411611 	ldr	x17, [x16, #552]
   10fa8:	9108a210 	add	x16, x16, #0x228
   10fac:	d61f0220 	br	x17
