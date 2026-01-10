
/bench/bench:     file format elf64-littleaarch64


Disassembly of section .text:

00000000000109c0 <_start>:
   109c0:	d503201f 	nop
   109c4:	d280001d 	mov	x29, #0x0                   	// #0
   109c8:	d280001e 	mov	x30, #0x0                   	// #0
   109cc:	aa0003e5 	mov	x5, x0
   109d0:	f94003e1 	ldr	x1, [sp]
   109d4:	910023e2 	add	x2, sp, #0x8
   109d8:	910003e6 	mov	x6, sp
   109dc:	d503201f 	nop
   109e0:	100007a0 	adr	x0, 10ad4 <main>
   109e4:	d2800003 	mov	x3, #0x0                   	// #0
   109e8:	d2800004 	mov	x4, #0x0                   	// #0
   109ec:	94000221 	bl	11270 <__libc_start_main@plt>
   109f0:	9400021c 	bl	11260 <abort@plt>

00000000000109f4 <call_weak_fn>:
   109f4:	b0000080 	adrp	x0, 21000 <memset@plt+0xfd30>
   109f8:	f9424c00 	ldr	x0, [x0, #1176]
   109fc:	b4000040 	cbz	x0, 10a04 <call_weak_fn+0x10>
   10a00:	14000220 	b	11280 <__gmon_start__@plt>
   10a04:	d65f03c0 	ret
	...

0000000000010a10 <deregister_tm_clones>:
   10a10:	d503201f 	nop
   10a14:	101055a0 	adr	x0, 314c8 <__TMC_END__>
   10a18:	d503201f 	nop
   10a1c:	10105561 	adr	x1, 314c8 <__TMC_END__>
   10a20:	eb00003f 	cmp	x1, x0
   10a24:	540000c0 	b.eq	10a3c <deregister_tm_clones+0x2c>  // b.none
   10a28:	b0000081 	adrp	x1, 21000 <memset@plt+0xfd30>
   10a2c:	f9425021 	ldr	x1, [x1, #1184]
   10a30:	b4000061 	cbz	x1, 10a3c <deregister_tm_clones+0x2c>
   10a34:	aa0103f0 	mov	x16, x1
   10a38:	d61f0200 	br	x16
   10a3c:	d65f03c0 	ret

0000000000010a40 <register_tm_clones>:
   10a40:	d503201f 	nop
   10a44:	10105420 	adr	x0, 314c8 <__TMC_END__>
   10a48:	d503201f 	nop
   10a4c:	101053e1 	adr	x1, 314c8 <__TMC_END__>
   10a50:	cb000021 	sub	x1, x1, x0
   10a54:	d37ffc22 	lsr	x2, x1, #63
   10a58:	8b810c41 	add	x1, x2, x1, asr #3
   10a5c:	9341fc21 	asr	x1, x1, #1
   10a60:	b40000c1 	cbz	x1, 10a78 <register_tm_clones+0x38>
   10a64:	b0000082 	adrp	x2, 21000 <memset@plt+0xfd30>
   10a68:	f9425442 	ldr	x2, [x2, #1192]
   10a6c:	b4000062 	cbz	x2, 10a78 <register_tm_clones+0x38>
   10a70:	aa0203f0 	mov	x16, x2
   10a74:	d61f0200 	br	x16
   10a78:	d65f03c0 	ret
   10a7c:	d503201f 	nop

0000000000010a80 <__do_global_dtors_aux>:
   10a80:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   10a84:	910003fd 	mov	x29, sp
   10a88:	f9000bf3 	str	x19, [sp, #16]
   10a8c:	b0000113 	adrp	x19, 31000 <_DYNAMIC+0xfd10>
   10a90:	39548260 	ldrb	w0, [x19, #1312]
   10a94:	35000140 	cbnz	w0, 10abc <__do_global_dtors_aux+0x3c>
   10a98:	b0000080 	adrp	x0, 21000 <memset@plt+0xfd30>
   10a9c:	f9425800 	ldr	x0, [x0, #1200]
   10aa0:	b4000080 	cbz	x0, 10ab0 <__do_global_dtors_aux+0x30>
   10aa4:	b0000100 	adrp	x0, 31000 <_DYNAMIC+0xfd10>
   10aa8:	f9426000 	ldr	x0, [x0, #1216]
   10aac:	940001f9 	bl	11290 <__cxa_finalize@plt>
   10ab0:	97ffffd8 	bl	10a10 <deregister_tm_clones>
   10ab4:	52800020 	mov	w0, #0x1                   	// #1
   10ab8:	39148260 	strb	w0, [x19, #1312]
   10abc:	f9400bf3 	ldr	x19, [sp, #16]
   10ac0:	a8c27bfd 	ldp	x29, x30, [sp], #32
   10ac4:	d65f03c0 	ret
   10ac8:	d503201f 	nop
   10acc:	d503201f 	nop

0000000000010ad0 <frame_dummy>:
   10ad0:	17ffffdc 	b	10a40 <register_tm_clones>

0000000000010ad4 <main>:
   10ad4:	d10503ff 	sub	sp, sp, #0x140
   10ad8:	fd0063ea 	str	d10, [sp, #192]
   10adc:	6d0d23e9 	stp	d9, d8, [sp, #208]
   10ae0:	a90e7bfd 	stp	x29, x30, [sp, #224]
   10ae4:	910383fd 	add	x29, sp, #0xe0
   10ae8:	a90f6ffc 	stp	x28, x27, [sp, #240]
   10aec:	a91067fa 	stp	x26, x25, [sp, #256]
   10af0:	a9115ff8 	stp	x24, x23, [sp, #272]
   10af4:	a91257f6 	stp	x22, x21, [sp, #288]
   10af8:	a9134ff4 	stp	x20, x19, [sp, #304]
   10afc:	910103e1 	add	x1, sp, #0x40
   10b00:	52800020 	mov	w0, #0x1                   	// #1
   10b04:	910103f5 	add	x21, sp, #0x40
   10b08:	940001ea 	bl	112b0 <clock_gettime@plt>
   10b0c:	90ffff88 	adrp	x8, 0 <__abi_tag-0x2c4>
   10b10:	90ffff89 	adrp	x9, 0 <__abi_tag-0x2c4>
   10b14:	a94453ea 	ldp	x10, x20, [sp, #64]
   10b18:	52884819 	mov	w25, #0x4240                	// #16960
   10b1c:	90ffff9b 	adrp	x27, 0 <__abi_tag-0x2c4>
   10b20:	3dc1ad00 	ldr	q0, [x8, #1712]
   10b24:	2a1f03f6 	mov	w22, wzr
   10b28:	52801017 	mov	w23, #0x80                  	// #128
   10b2c:	528006d8 	mov	w24, #0x36                  	// #54
   10b30:	72a001f9 	movk	w25, #0xf, lsl #16
   10b34:	528007da 	mov	w26, #0x3e                  	// #62
   10b38:	3d800fe0 	str	q0, [sp, #48]
   10b3c:	3dc1b120 	ldr	q0, [x9, #1728]
   10b40:	911c0f7b 	add	x27, x27, #0x703
   10b44:	f9000fea 	str	x10, [sp, #24]
   10b48:	3d800be0 	str	q0, [sp, #32]
   10b4c:	14000022 	b	10bd4 <main+0x100>
   10b50:	910103e0 	add	x0, sp, #0x40
   10b54:	910103e1 	add	x1, sp, #0x40
   10b58:	9400012e 	bl	11010 <sha256_transform>
   10b5c:	6f00e400 	movi	v0.2d, #0x0
   10b60:	f9003bff 	str	xzr, [sp, #112]
   10b64:	ad0283e0 	stp	q0, q0, [sp, #80]
   10b68:	3d8013e0 	str	q0, [sp, #64]
   10b6c:	b94083e8 	ldr	w8, [sp, #128]
   10b70:	910103e0 	add	x0, sp, #0x40
   10b74:	f94047e9 	ldr	x9, [sp, #136]
   10b78:	910103e1 	add	x1, sp, #0x40
   10b7c:	531d7108 	lsl	w8, w8, #3
   10b80:	8b080128 	add	x8, x9, x8
   10b84:	d348fd09 	lsr	x9, x8, #8
   10b88:	d350fd0a 	lsr	x10, x8, #16
   10b8c:	d358fd0b 	lsr	x11, x8, #24
   10b90:	f90047e8 	str	x8, [sp, #136]
   10b94:	3901fbe9 	strb	w9, [sp, #126]
   10b98:	d360fd09 	lsr	x9, x8, #32
   10b9c:	3901f7ea 	strb	w10, [sp, #125]
   10ba0:	d368fd0a 	lsr	x10, x8, #40
   10ba4:	3901ffe8 	strb	w8, [sp, #127]
   10ba8:	3901efe9 	strb	w9, [sp, #123]
   10bac:	d370fd09 	lsr	x9, x8, #48
   10bb0:	d378fd08 	lsr	x8, x8, #56
   10bb4:	3901f3eb 	strb	w11, [sp, #124]
   10bb8:	3901ebea 	strb	w10, [sp, #122]
   10bbc:	3901e7e9 	strb	w9, [sp, #121]
   10bc0:	3901e3e8 	strb	w8, [sp, #120]
   10bc4:	94000113 	bl	11010 <sha256_transform>
   10bc8:	110006d6 	add	w22, w22, #0x1
   10bcc:	6b1902df 	cmp	w22, w25
   10bd0:	54000ea0 	b.eq	10da4 <main+0x2d0>  // b.none
   10bd4:	2a1f03e8 	mov	w8, wzr
   10bd8:	aa1f03f3 	mov	x19, xzr
   10bdc:	ad4107e0 	ldp	q0, q1, [sp, #32]
   10be0:	b90083ff 	str	wzr, [sp, #128]
   10be4:	f90047ff 	str	xzr, [sp, #136]
   10be8:	ad0483e1 	stp	q1, q0, [sp, #144]
   10bec:	14000004 	b	10bfc <main+0x128>
   10bf0:	11000673 	add	w19, w19, #0x1
   10bf4:	7100ce7f 	cmp	w19, #0x33
   10bf8:	54000222 	b.cs	10c3c <main+0x168>  // b.hs, b.nlast
   10bfc:	38736b69 	ldrb	w9, [x27, x19]
   10c00:	38284aa9 	strb	w9, [x21, w8, uxtw]
   10c04:	b94083e8 	ldr	w8, [sp, #128]
   10c08:	11000508 	add	w8, w8, #0x1
   10c0c:	7101011f 	cmp	w8, #0x40
   10c10:	b90083e8 	str	w8, [sp, #128]
   10c14:	54fffee1 	b.ne	10bf0 <main+0x11c>  // b.any
   10c18:	910103e0 	add	x0, sp, #0x40
   10c1c:	910103e1 	add	x1, sp, #0x40
   10c20:	940000fc 	bl	11010 <sha256_transform>
   10c24:	f94047e9 	ldr	x9, [sp, #136]
   10c28:	2a1f03e8 	mov	w8, wzr
   10c2c:	b90083ff 	str	wzr, [sp, #128]
   10c30:	91080129 	add	x9, x9, #0x200
   10c34:	f90047e9 	str	x9, [sp, #136]
   10c38:	17ffffee 	b	10bf0 <main+0x11c>
   10c3c:	38284abf 	strb	wzr, [x21, w8, uxtw]
   10c40:	53107ec8 	lsr	w8, w22, #16
   10c44:	b94083e9 	ldr	w9, [sp, #128]
   10c48:	53087eca 	lsr	w10, w22, #8
   10c4c:	381ec3bf 	sturb	wzr, [x29, #-20]
   10c50:	381ed3a8 	sturb	w8, [x29, #-19]
   10c54:	11000528 	add	w8, w9, #0x1
   10c58:	381ee3aa 	sturb	w10, [x29, #-18]
   10c5c:	7101011f 	cmp	w8, #0x40
   10c60:	381ef3b6 	sturb	w22, [x29, #-17]
   10c64:	b90083e8 	str	w8, [sp, #128]
   10c68:	54000121 	b.ne	10c8c <main+0x1b8>  // b.any
   10c6c:	910103e0 	add	x0, sp, #0x40
   10c70:	910103e1 	add	x1, sp, #0x40
   10c74:	940000e7 	bl	11010 <sha256_transform>
   10c78:	f94047e9 	ldr	x9, [sp, #136]
   10c7c:	2a1f03e8 	mov	w8, wzr
   10c80:	b90083ff 	str	wzr, [sp, #128]
   10c84:	91080129 	add	x9, x9, #0x200
   10c88:	f90047e9 	str	x9, [sp, #136]
   10c8c:	385ed3a9 	ldurb	w9, [x29, #-19]
   10c90:	38284aa9 	strb	w9, [x21, w8, uxtw]
   10c94:	b94083e8 	ldr	w8, [sp, #128]
   10c98:	11000508 	add	w8, w8, #0x1
   10c9c:	7101011f 	cmp	w8, #0x40
   10ca0:	b90083e8 	str	w8, [sp, #128]
   10ca4:	54000121 	b.ne	10cc8 <main+0x1f4>  // b.any
   10ca8:	910103e0 	add	x0, sp, #0x40
   10cac:	910103e1 	add	x1, sp, #0x40
   10cb0:	940000d8 	bl	11010 <sha256_transform>
   10cb4:	f94047e9 	ldr	x9, [sp, #136]
   10cb8:	2a1f03e8 	mov	w8, wzr
   10cbc:	b90083ff 	str	wzr, [sp, #128]
   10cc0:	91080129 	add	x9, x9, #0x200
   10cc4:	f90047e9 	str	x9, [sp, #136]
   10cc8:	385ee3a9 	ldurb	w9, [x29, #-18]
   10ccc:	38284aa9 	strb	w9, [x21, w8, uxtw]
   10cd0:	b94083e8 	ldr	w8, [sp, #128]
   10cd4:	11000508 	add	w8, w8, #0x1
   10cd8:	7101011f 	cmp	w8, #0x40
   10cdc:	b90083e8 	str	w8, [sp, #128]
   10ce0:	54000121 	b.ne	10d04 <main+0x230>  // b.any
   10ce4:	910103e0 	add	x0, sp, #0x40
   10ce8:	910103e1 	add	x1, sp, #0x40
   10cec:	940000c9 	bl	11010 <sha256_transform>
   10cf0:	f94047e9 	ldr	x9, [sp, #136]
   10cf4:	2a1f03e8 	mov	w8, wzr
   10cf8:	b90083ff 	str	wzr, [sp, #128]
   10cfc:	91080129 	add	x9, x9, #0x200
   10d00:	f90047e9 	str	x9, [sp, #136]
   10d04:	385ef3a9 	ldurb	w9, [x29, #-17]
   10d08:	38284aa9 	strb	w9, [x21, w8, uxtw]
   10d0c:	b94083e8 	ldr	w8, [sp, #128]
   10d10:	11000508 	add	w8, w8, #0x1
   10d14:	7101011f 	cmp	w8, #0x40
   10d18:	b90083e8 	str	w8, [sp, #128]
   10d1c:	54000241 	b.ne	10d64 <main+0x290>  // b.any
   10d20:	910103e0 	add	x0, sp, #0x40
   10d24:	910103e1 	add	x1, sp, #0x40
   10d28:	940000ba 	bl	11010 <sha256_transform>
   10d2c:	f94047ea 	ldr	x10, [sp, #136]
   10d30:	2a1f03e9 	mov	w9, wzr
   10d34:	aa1f03e8 	mov	x8, xzr
   10d38:	b90083ff 	str	wzr, [sp, #128]
   10d3c:	390103f7 	strb	w23, [sp, #64]
   10d40:	9108014a 	add	x10, x10, #0x200
   10d44:	f90047ea 	str	x10, [sp, #136]
   10d48:	8b150108 	add	x8, x8, x21
   10d4c:	4b090309 	sub	w9, w24, w9
   10d50:	91000500 	add	x0, x8, #0x1
   10d54:	91000522 	add	x2, x9, #0x1
   10d58:	2a1f03e1 	mov	w1, wzr
   10d5c:	9400015d 	bl	112d0 <memset@plt>
   10d60:	17ffff83 	b	10b6c <main+0x98>
   10d64:	1100050a 	add	w10, w8, #0x1
   10d68:	7100dd1f 	cmp	w8, #0x37
   10d6c:	38286ab7 	strb	w23, [x21, x8]
   10d70:	540000a8 	b.hi	10d84 <main+0x2b0>  // b.pmore
   10d74:	2a0803e9 	mov	w9, w8
   10d78:	7100dd5f 	cmp	w10, #0x37
   10d7c:	54ffef88 	b.hi	10b6c <main+0x98>  // b.pmore
   10d80:	17fffff2 	b	10d48 <main+0x274>
   10d84:	7100fd5f 	cmp	w10, #0x3f
   10d88:	54ffee48 	b.hi	10b50 <main+0x7c>  // b.pmore
   10d8c:	4b080348 	sub	w8, w26, w8
   10d90:	8b2a42a0 	add	x0, x21, w10, uxtw
   10d94:	91000502 	add	x2, x8, #0x1
   10d98:	2a1f03e1 	mov	w1, wzr
   10d9c:	9400014d 	bl	112d0 <memset@plt>
   10da0:	17ffff6c 	b	10b50 <main+0x7c>
   10da4:	d2d09008 	mov	x8, #0x848000000000        	// #145685290680320
   10da8:	9e620280 	scvtf	d0, x20
   10dac:	f2e825c8 	movk	x8, #0x412e, lsl #48
   10db0:	f9400fe9 	ldr	x9, [sp, #24]
   10db4:	29535ff8 	ldp	w24, w23, [sp, #152]
   10db8:	295457f6 	ldp	w22, w21, [sp, #160]
   10dbc:	9e670108 	fmov	d8, x8
   10dc0:	d2c80008 	mov	x8, #0x400000000000        	// #70368744177664
   10dc4:	f2e811e8 	movk	x8, #0x408f, lsl #48
   10dc8:	9e620121 	scvtf	d1, x9
   10dcc:	53187f09 	lsr	w9, w24, #24
   10dd0:	910103e1 	add	x1, sp, #0x40
   10dd4:	1e681800 	fdiv	d0, d0, d8
   10dd8:	52800020 	mov	w0, #0x1                   	// #1
   10ddc:	9e670109 	fmov	d9, x8
   10de0:	53187ee8 	lsr	w8, w23, #24
   10de4:	29552bf3 	ldp	w19, w10, [sp, #168]
   10de8:	295267fc 	ldp	w28, w25, [sp, #144]
   10dec:	2901a3e9 	stp	w9, w8, [sp, #12]
   10df0:	53187ec8 	lsr	w8, w22, #24
   10df4:	b90033ea 	str	w10, [sp, #48]
   10df8:	b90017e8 	str	w8, [sp, #20]
   10dfc:	53187ea8 	lsr	w8, w21, #24
   10e00:	53187f9a 	lsr	w26, w28, #24
   10e04:	53187f3b 	lsr	w27, w25, #24
   10e08:	b81e83a8 	stur	w8, [x29, #-24]
   10e0c:	53187e68 	lsr	w8, w19, #24
   10e10:	b9001be8 	str	w8, [sp, #24]
   10e14:	53187d48 	lsr	w8, w10, #24
   10e18:	b90023e8 	str	w8, [sp, #32]
   10e1c:	1f49002a 	fmadd	d10, d1, d9, d0
   10e20:	94000124 	bl	112b0 <clock_gettime@plt>
   10e24:	6d4403e1 	ldp	d1, d0, [sp, #64]
   10e28:	90ffff80 	adrp	x0, 0 <__abi_tag-0x2c4>
   10e2c:	911b5400 	add	x0, x0, #0x6d5
   10e30:	5e61d821 	scvtf	d1, d1
   10e34:	5e61d800 	scvtf	d0, d0
   10e38:	1e681800 	fdiv	d0, d0, d8
   10e3c:	1f490020 	fmadd	d0, d1, d9, d0
   10e40:	1e6a3800 	fsub	d0, d0, d10
   10e44:	1e691801 	fdiv	d1, d0, d9
   10e48:	1e611901 	fdiv	d1, d8, d1
   10e4c:	94000115 	bl	112a0 <printf@plt>
   10e50:	90ffff94 	adrp	x20, 0 <__abi_tag-0x2c4>
   10e54:	2a1a03e1 	mov	w1, w26
   10e58:	911b4294 	add	x20, x20, #0x6d0
   10e5c:	aa1403e0 	mov	x0, x20
   10e60:	94000110 	bl	112a0 <printf@plt>
   10e64:	53105f81 	ubfx	w1, w28, #16, #8
   10e68:	aa1403e0 	mov	x0, x20
   10e6c:	9400010d 	bl	112a0 <printf@plt>
   10e70:	53083f81 	ubfx	w1, w28, #8, #8
   10e74:	aa1403e0 	mov	x0, x20
   10e78:	9400010a 	bl	112a0 <printf@plt>
   10e7c:	12001f81 	and	w1, w28, #0xff
   10e80:	aa1403e0 	mov	x0, x20
   10e84:	94000107 	bl	112a0 <printf@plt>
   10e88:	aa1403e0 	mov	x0, x20
   10e8c:	2a1b03e1 	mov	w1, w27
   10e90:	94000104 	bl	112a0 <printf@plt>
   10e94:	53105f21 	ubfx	w1, w25, #16, #8
   10e98:	aa1403e0 	mov	x0, x20
   10e9c:	94000101 	bl	112a0 <printf@plt>
   10ea0:	53083f21 	ubfx	w1, w25, #8, #8
   10ea4:	aa1403e0 	mov	x0, x20
   10ea8:	940000fe 	bl	112a0 <printf@plt>
   10eac:	12001f21 	and	w1, w25, #0xff
   10eb0:	aa1403e0 	mov	x0, x20
   10eb4:	940000fb 	bl	112a0 <printf@plt>
   10eb8:	aa1403e0 	mov	x0, x20
   10ebc:	b9400fe1 	ldr	w1, [sp, #12]
   10ec0:	940000f8 	bl	112a0 <printf@plt>
   10ec4:	53105f01 	ubfx	w1, w24, #16, #8
   10ec8:	aa1403e0 	mov	x0, x20
   10ecc:	940000f5 	bl	112a0 <printf@plt>
   10ed0:	53083f01 	ubfx	w1, w24, #8, #8
   10ed4:	aa1403e0 	mov	x0, x20
   10ed8:	940000f2 	bl	112a0 <printf@plt>
   10edc:	12001f01 	and	w1, w24, #0xff
   10ee0:	aa1403e0 	mov	x0, x20
   10ee4:	940000ef 	bl	112a0 <printf@plt>
   10ee8:	aa1403e0 	mov	x0, x20
   10eec:	b94013e1 	ldr	w1, [sp, #16]
   10ef0:	940000ec 	bl	112a0 <printf@plt>
   10ef4:	53105ee1 	ubfx	w1, w23, #16, #8
   10ef8:	aa1403e0 	mov	x0, x20
   10efc:	940000e9 	bl	112a0 <printf@plt>
   10f00:	53083ee1 	ubfx	w1, w23, #8, #8
   10f04:	aa1403e0 	mov	x0, x20
   10f08:	940000e6 	bl	112a0 <printf@plt>
   10f0c:	12001ee1 	and	w1, w23, #0xff
   10f10:	aa1403e0 	mov	x0, x20
   10f14:	940000e3 	bl	112a0 <printf@plt>
   10f18:	aa1403e0 	mov	x0, x20
   10f1c:	b94017e1 	ldr	w1, [sp, #20]
   10f20:	940000e0 	bl	112a0 <printf@plt>
   10f24:	53105ec1 	ubfx	w1, w22, #16, #8
   10f28:	aa1403e0 	mov	x0, x20
   10f2c:	940000dd 	bl	112a0 <printf@plt>
   10f30:	53083ec1 	ubfx	w1, w22, #8, #8
   10f34:	aa1403e0 	mov	x0, x20
   10f38:	940000da 	bl	112a0 <printf@plt>
   10f3c:	12001ec1 	and	w1, w22, #0xff
   10f40:	aa1403e0 	mov	x0, x20
   10f44:	940000d7 	bl	112a0 <printf@plt>
   10f48:	aa1403e0 	mov	x0, x20
   10f4c:	b85e83a1 	ldur	w1, [x29, #-24]
   10f50:	940000d4 	bl	112a0 <printf@plt>
   10f54:	53105ea1 	ubfx	w1, w21, #16, #8
   10f58:	aa1403e0 	mov	x0, x20
   10f5c:	940000d1 	bl	112a0 <printf@plt>
   10f60:	53083ea1 	ubfx	w1, w21, #8, #8
   10f64:	aa1403e0 	mov	x0, x20
   10f68:	940000ce 	bl	112a0 <printf@plt>
   10f6c:	12001ea1 	and	w1, w21, #0xff
   10f70:	aa1403e0 	mov	x0, x20
   10f74:	940000cb 	bl	112a0 <printf@plt>
   10f78:	aa1403e0 	mov	x0, x20
   10f7c:	b9401be1 	ldr	w1, [sp, #24]
   10f80:	940000c8 	bl	112a0 <printf@plt>
   10f84:	53105e61 	ubfx	w1, w19, #16, #8
   10f88:	aa1403e0 	mov	x0, x20
   10f8c:	940000c5 	bl	112a0 <printf@plt>
   10f90:	53083e61 	ubfx	w1, w19, #8, #8
   10f94:	aa1403e0 	mov	x0, x20
   10f98:	940000c2 	bl	112a0 <printf@plt>
   10f9c:	12001e61 	and	w1, w19, #0xff
   10fa0:	aa1403e0 	mov	x0, x20
   10fa4:	940000bf 	bl	112a0 <printf@plt>
   10fa8:	aa1403e0 	mov	x0, x20
   10fac:	b94023e1 	ldr	w1, [sp, #32]
   10fb0:	940000bc 	bl	112a0 <printf@plt>
   10fb4:	b94033f3 	ldr	w19, [sp, #48]
   10fb8:	aa1403e0 	mov	x0, x20
   10fbc:	53105e61 	ubfx	w1, w19, #16, #8
   10fc0:	940000b8 	bl	112a0 <printf@plt>
   10fc4:	53083e61 	ubfx	w1, w19, #8, #8
   10fc8:	aa1403e0 	mov	x0, x20
   10fcc:	940000b5 	bl	112a0 <printf@plt>
   10fd0:	12001e61 	and	w1, w19, #0xff
   10fd4:	aa1403e0 	mov	x0, x20
   10fd8:	940000b2 	bl	112a0 <printf@plt>
   10fdc:	52800140 	mov	w0, #0xa                   	// #10
   10fe0:	940000b8 	bl	112c0 <putchar@plt>
   10fe4:	a9534ff4 	ldp	x20, x19, [sp, #304]
   10fe8:	2a1f03e0 	mov	w0, wzr
   10fec:	a95257f6 	ldp	x22, x21, [sp, #288]
   10ff0:	a9515ff8 	ldp	x24, x23, [sp, #272]
   10ff4:	a95067fa 	ldp	x26, x25, [sp, #256]
   10ff8:	a94f6ffc 	ldp	x28, x27, [sp, #240]
   10ffc:	a94e7bfd 	ldp	x29, x30, [sp, #224]
   11000:	6d4d23e9 	ldp	d9, d8, [sp, #208]
   11004:	fd4063ea 	ldr	d10, [sp, #192]
   11008:	910503ff 	add	sp, sp, #0x140
   1100c:	d65f03c0 	ret

0000000000011010 <sha256_transform>:
   11010:	d10503ff 	sub	sp, sp, #0x140
   11014:	f90083fd 	str	x29, [sp, #256]
   11018:	a9115ff8 	stp	x24, x23, [sp, #272]
   1101c:	a91257f6 	stp	x22, x21, [sp, #288]
   11020:	a9134ff4 	stp	x20, x19, [sp, #304]
   11024:	910003e8 	mov	x8, sp
   11028:	aa1f03e9 	mov	x9, xzr
   1102c:	9100910a 	add	x10, x8, #0x24
   11030:	29402c28 	ldp	w8, w11, [x1]
   11034:	2941342c 	ldp	w12, w13, [x1, #8]
   11038:	2944402f 	ldp	w15, w16, [x1, #32]
   1103c:	5ac00908 	rev	w8, w8
   11040:	5ac0096b 	rev	w11, w11
   11044:	5ac0098c 	rev	w12, w12
   11048:	5ac009ad 	rev	w13, w13
   1104c:	29002fe8 	stp	w8, w11, [sp]
   11050:	2942382b 	ldp	w11, w14, [x1, #16]
   11054:	290137ec 	stp	w12, w13, [sp, #8]
   11058:	2943342c 	ldp	w12, w13, [x1, #24]
   1105c:	5ac0096b 	rev	w11, w11
   11060:	5ac009ce 	rev	w14, w14
   11064:	5ac0098c 	rev	w12, w12
   11068:	5ac009ad 	rev	w13, w13
   1106c:	29023beb 	stp	w11, w14, [sp, #16]
   11070:	5ac009eb 	rev	w11, w15
   11074:	5ac00a0e 	rev	w14, w16
   11078:	290337ec 	stp	w12, w13, [sp, #24]
   1107c:	2945342c 	ldp	w12, w13, [x1, #40]
   11080:	29043beb 	stp	w11, w14, [sp, #32]
   11084:	2946382b 	ldp	w11, w14, [x1, #48]
   11088:	2947402f 	ldp	w15, w16, [x1, #56]
   1108c:	5ac0098c 	rev	w12, w12
   11090:	5ac009ad 	rev	w13, w13
   11094:	5ac0096b 	rev	w11, w11
   11098:	5ac009ce 	rev	w14, w14
   1109c:	290537ec 	stp	w12, w13, [sp, #40]
   110a0:	5ac009ec 	rev	w12, w15
   110a4:	5ac00a0d 	rev	w13, w16
   110a8:	29063beb 	stp	w11, w14, [sp, #48]
   110ac:	2a0803eb 	mov	w11, w8
   110b0:	290737ec 	stp	w12, w13, [sp, #56]
   110b4:	8b09014c 	add	x12, x10, x9
   110b8:	91001129 	add	x9, x9, #0x4
   110bc:	f103013f 	cmp	x9, #0xc0
   110c0:	b940158d 	ldr	w13, [x12, #20]
   110c4:	b85e018e 	ldur	w14, [x12, #-32]
   110c8:	b9400190 	ldr	w16, [x12]
   110cc:	138d45af 	ror	w15, w13, #17
   110d0:	138e1dd1 	ror	w17, w14, #7
   110d4:	4acd4def 	eor	w15, w15, w13, ror #19
   110d8:	4a4d29ed 	eor	w13, w15, w13, lsr #10
   110dc:	4ace4a2f 	eor	w15, w17, w14, ror #18
   110e0:	0b1001ad 	add	w13, w13, w16
   110e4:	0b0b01ab 	add	w11, w13, w11
   110e8:	4a4e0ded 	eor	w13, w15, w14, lsr #3
   110ec:	0b0d016d 	add	w13, w11, w13
   110f0:	2a0e03eb 	mov	w11, w14
   110f4:	b9001d8d 	str	w13, [x12, #28]
   110f8:	54fffde1 	b.ne	110b4 <sha256_transform+0xa4>  // b.any
   110fc:	910003ee 	mov	x14, sp
   11100:	f0ffff66 	adrp	x6, 0 <__abi_tag-0x2c4>
   11104:	294a2809 	ldp	w9, w10, [x0, #80]
   11108:	294c300b 	ldp	w11, w12, [x0, #96]
   1110c:	910011d2 	add	x18, x14, #0x4
   11110:	aa1f03ed 	mov	x13, xzr
   11114:	294d380f 	ldp	w15, w14, [x0, #104]
   11118:	294b0403 	ldp	w3, w1, [x0, #88]
   1111c:	2a0903f3 	mov	w19, w9
   11120:	2a0a03e4 	mov	w4, w10
   11124:	2a0c03f1 	mov	w17, w12
   11128:	2a0b03e2 	mov	w2, w11
   1112c:	2a0e03f4 	mov	w20, w14
   11130:	2a0f03f0 	mov	w16, w15
   11134:	2a0103f5 	mov	w21, w1
   11138:	2a0303e5 	mov	w5, w3
   1113c:	911ce0c6 	add	x6, x6, #0x738
   11140:	13821856 	ror	w22, w2, #6
   11144:	2a0403e7 	mov	w7, w4
   11148:	2a1303e4 	mov	w4, w19
   1114c:	0a020233 	and	w19, w17, w2
   11150:	b86d68d8 	ldr	w24, [x6, x13]
   11154:	0a220217 	bic	w23, w16, w2
   11158:	4ac22ed6 	eor	w22, w22, w2, ror #11
   1115c:	f103f1bf 	cmp	x13, #0xfc
   11160:	4ac266d6 	eor	w22, w22, w2, ror #25
   11164:	0b1302d3 	add	w19, w22, w19
   11168:	13840896 	ror	w22, w4, #2
   1116c:	0b140273 	add	w19, w19, w20
   11170:	4a0500f4 	eor	w20, w7, w5
   11174:	0b170273 	add	w19, w19, w23
   11178:	0a0500f7 	and	w23, w7, w5
   1117c:	0a140094 	and	w20, w4, w20
   11180:	4ac436d6 	eor	w22, w22, w4, ror #13
   11184:	0b180273 	add	w19, w19, w24
   11188:	4ac45ad6 	eor	w22, w22, w4, ror #22
   1118c:	4a170294 	eor	w20, w20, w23
   11190:	0b080268 	add	w8, w19, w8
   11194:	0b1402d3 	add	w19, w22, w20
   11198:	0b150115 	add	w21, w8, w21
   1119c:	0b080273 	add	w19, w19, w8
   111a0:	54000140 	b.eq	111c8 <sha256_transform+0x1b8>  // b.none
   111a4:	b86d6a48 	ldr	w8, [x18, x13]
   111a8:	910011ad 	add	x13, x13, #0x4
   111ac:	2a1003f4 	mov	w20, w16
   111b0:	2a1103f0 	mov	w16, w17
   111b4:	2a0203f1 	mov	w17, w2
   111b8:	2a1503e2 	mov	w2, w21
   111bc:	2a0503f5 	mov	w21, w5
   111c0:	2a0703e5 	mov	w5, w7
   111c4:	17ffffdf 	b	11140 <sha256_transform+0x130>
   111c8:	0b090268 	add	w8, w19, w9
   111cc:	0b0a0089 	add	w9, w4, w10
   111d0:	0b0300ea 	add	w10, w7, w3
   111d4:	0b0100ad 	add	w13, w5, w1
   111d8:	a9534ff4 	ldp	x20, x19, [sp, #304]
   111dc:	290a2408 	stp	w8, w9, [x0, #80]
   111e0:	0b0b02a8 	add	w8, w21, w11
   111e4:	a95257f6 	ldp	x22, x21, [sp, #288]
   111e8:	0b0c0049 	add	w9, w2, w12
   111ec:	290b340a 	stp	w10, w13, [x0, #88]
   111f0:	a9515ff8 	ldp	x24, x23, [sp, #272]
   111f4:	0b0f022a 	add	w10, w17, w15
   111f8:	0b0e020b 	add	w11, w16, w14
   111fc:	f94083fd 	ldr	x29, [sp, #256]
   11200:	290c2408 	stp	w8, w9, [x0, #96]
   11204:	290d2c0a 	stp	w10, w11, [x0, #104]
   11208:	910503ff 	add	sp, sp, #0x140
   1120c:	d65f03c0 	ret

Disassembly of section .init:

0000000000011210 <_init>:
   11210:	d503201f 	nop
   11214:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   11218:	910003fd 	mov	x29, sp
   1121c:	97fffdf6 	bl	109f4 <call_weak_fn>
   11220:	a8c17bfd 	ldp	x29, x30, [sp], #16
   11224:	d65f03c0 	ret

Disassembly of section .fini:

0000000000011228 <_fini>:
   11228:	d503201f 	nop
   1122c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   11230:	910003fd 	mov	x29, sp
   11234:	a8c17bfd 	ldp	x29, x30, [sp], #16
   11238:	d65f03c0 	ret

Disassembly of section .plt:

0000000000011240 <abort@plt-0x20>:
   11240:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
   11244:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfd10>
   11248:	f9426e11 	ldr	x17, [x16, #1240]
   1124c:	91136210 	add	x16, x16, #0x4d8
   11250:	d61f0220 	br	x17
   11254:	d503201f 	nop
   11258:	d503201f 	nop
   1125c:	d503201f 	nop

0000000000011260 <abort@plt>:
   11260:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfd10>
   11264:	f9427211 	ldr	x17, [x16, #1248]
   11268:	91138210 	add	x16, x16, #0x4e0
   1126c:	d61f0220 	br	x17

0000000000011270 <__libc_start_main@plt>:
   11270:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfd10>
   11274:	f9427611 	ldr	x17, [x16, #1256]
   11278:	9113a210 	add	x16, x16, #0x4e8
   1127c:	d61f0220 	br	x17

0000000000011280 <__gmon_start__@plt>:
   11280:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfd10>
   11284:	f9427a11 	ldr	x17, [x16, #1264]
   11288:	9113c210 	add	x16, x16, #0x4f0
   1128c:	d61f0220 	br	x17

0000000000011290 <__cxa_finalize@plt>:
   11290:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfd10>
   11294:	f9427e11 	ldr	x17, [x16, #1272]
   11298:	9113e210 	add	x16, x16, #0x4f8
   1129c:	d61f0220 	br	x17

00000000000112a0 <printf@plt>:
   112a0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfd10>
   112a4:	f9428211 	ldr	x17, [x16, #1280]
   112a8:	91140210 	add	x16, x16, #0x500
   112ac:	d61f0220 	br	x17

00000000000112b0 <clock_gettime@plt>:
   112b0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfd10>
   112b4:	f9428611 	ldr	x17, [x16, #1288]
   112b8:	91142210 	add	x16, x16, #0x508
   112bc:	d61f0220 	br	x17

00000000000112c0 <putchar@plt>:
   112c0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfd10>
   112c4:	f9428a11 	ldr	x17, [x16, #1296]
   112c8:	91144210 	add	x16, x16, #0x510
   112cc:	d61f0220 	br	x17

00000000000112d0 <memset@plt>:
   112d0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfd10>
   112d4:	f9428e11 	ldr	x17, [x16, #1304]
   112d8:	91146210 	add	x16, x16, #0x518
   112dc:	d61f0220 	br	x17
