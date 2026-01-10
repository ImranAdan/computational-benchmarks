
/bench/bench:     file format elf64-littleaarch64


Disassembly of section .init:

0000000000000950 <_init>:
 950:	d503201f 	nop
 954:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 958:	910003fd 	mov	x29, sp
 95c:	94000076 	bl	b34 <call_weak_fn>
 960:	a8c17bfd 	ldp	x29, x30, [sp], #16
 964:	d65f03c0 	ret

Disassembly of section .plt:

0000000000000970 <.plt>:
 970:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
 974:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfb84>
 978:	f947a611 	ldr	x17, [x16, #3912]
 97c:	913d2210 	add	x16, x16, #0xf48
 980:	d61f0220 	br	x17
 984:	d503201f 	nop
 988:	d503201f 	nop
 98c:	d503201f 	nop

0000000000000990 <_gfortran_transfer_real_write@plt>:
 990:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfb84>
 994:	f947aa11 	ldr	x17, [x16, #3920]
 998:	913d4210 	add	x16, x16, #0xf50
 99c:	d61f0220 	br	x17

00000000000009a0 <__gmon_start__@plt>:
 9a0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfb84>
 9a4:	f947ae11 	ldr	x17, [x16, #3928]
 9a8:	913d6210 	add	x16, x16, #0xf58
 9ac:	d61f0220 	br	x17

00000000000009b0 <_gfortran_cpu_time_8@plt>:
 9b0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfb84>
 9b4:	f947b211 	ldr	x17, [x16, #3936]
 9b8:	913d8210 	add	x16, x16, #0xf60
 9bc:	d61f0220 	br	x17

00000000000009c0 <_gfortran_transfer_integer_write@plt>:
 9c0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfb84>
 9c4:	f947b611 	ldr	x17, [x16, #3944]
 9c8:	913da210 	add	x16, x16, #0xf68
 9cc:	d61f0220 	br	x17

00000000000009d0 <__cxa_finalize@plt>:
 9d0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfb84>
 9d4:	f947ba11 	ldr	x17, [x16, #3952]
 9d8:	913dc210 	add	x16, x16, #0xf70
 9dc:	d61f0220 	br	x17

00000000000009e0 <sincos@plt>:
 9e0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfb84>
 9e4:	f947be11 	ldr	x17, [x16, #3960]
 9e8:	913de210 	add	x16, x16, #0xf78
 9ec:	d61f0220 	br	x17

00000000000009f0 <abort@plt>:
 9f0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfb84>
 9f4:	f947c211 	ldr	x17, [x16, #3968]
 9f8:	913e0210 	add	x16, x16, #0xf80
 9fc:	d61f0220 	br	x17

0000000000000a00 <_gfortran_transfer_character_write@plt>:
 a00:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfb84>
 a04:	f947c611 	ldr	x17, [x16, #3976]
 a08:	913e2210 	add	x16, x16, #0xf88
 a0c:	d61f0220 	br	x17

0000000000000a10 <_gfortran_os_error_at@plt>:
 a10:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfb84>
 a14:	f947ca11 	ldr	x17, [x16, #3984]
 a18:	913e4210 	add	x16, x16, #0xf90
 a1c:	d61f0220 	br	x17

0000000000000a20 <_gfortran_st_write_done@plt>:
 a20:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfb84>
 a24:	f947ce11 	ldr	x17, [x16, #3992]
 a28:	913e6210 	add	x16, x16, #0xf98
 a2c:	d61f0220 	br	x17

0000000000000a30 <malloc@plt>:
 a30:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfb84>
 a34:	f947d211 	ldr	x17, [x16, #4000]
 a38:	913e8210 	add	x16, x16, #0xfa0
 a3c:	d61f0220 	br	x17

0000000000000a40 <_gfortran_set_options@plt>:
 a40:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfb84>
 a44:	f947d611 	ldr	x17, [x16, #4008]
 a48:	913ea210 	add	x16, x16, #0xfa8
 a4c:	d61f0220 	br	x17

0000000000000a50 <_gfortran_set_args@plt>:
 a50:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfb84>
 a54:	f947da11 	ldr	x17, [x16, #4016]
 a58:	913ec210 	add	x16, x16, #0xfb0
 a5c:	d61f0220 	br	x17

0000000000000a60 <free@plt>:
 a60:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfb84>
 a64:	f947de11 	ldr	x17, [x16, #4024]
 a68:	913ee210 	add	x16, x16, #0xfb8
 a6c:	d61f0220 	br	x17

0000000000000a70 <_gfortran_st_write@plt>:
 a70:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfb84>
 a74:	f947e211 	ldr	x17, [x16, #4032]
 a78:	913f0210 	add	x16, x16, #0xfc0
 a7c:	d61f0220 	br	x17

0000000000000a80 <__libc_start_main@plt>:
 a80:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfb84>
 a84:	f947e611 	ldr	x17, [x16, #4040]
 a88:	913f2210 	add	x16, x16, #0xfc8
 a8c:	d61f0220 	br	x17

Disassembly of section .text:

0000000000000ac0 <main>:
     ac0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
     ac4:	910003fd 	mov	x29, sp
     ac8:	97ffffe2 	bl	a50 <_gfortran_set_args@plt>
     acc:	b0000001 	adrp	x1, 1000 <MAIN__+0x3e0>
     ad0:	910c4021 	add	x1, x1, #0x310
     ad4:	528000e0 	mov	w0, #0x7                   	// #7
     ad8:	97ffffda 	bl	a40 <_gfortran_set_options@plt>
     adc:	94000051 	bl	c20 <MAIN__>
     ae0:	52800000 	mov	w0, #0x0                   	// #0
     ae4:	a8c17bfd 	ldp	x29, x30, [sp], #16
     ae8:	d65f03c0 	ret
     aec:	d503201f 	nop
     af0:	d503201f 	nop
     af4:	d503201f 	nop
     af8:	d503201f 	nop
     afc:	d503201f 	nop

0000000000000b00 <_start>:
     b00:	d503201f 	nop
     b04:	d280001d 	mov	x29, #0x0                   	// #0
     b08:	d280001e 	mov	x30, #0x0                   	// #0
     b0c:	aa0003e5 	mov	x5, x0
     b10:	f94003e1 	ldr	x1, [sp]
     b14:	910023e2 	add	x2, sp, #0x8
     b18:	910003e6 	mov	x6, sp
     b1c:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xfb84>
     b20:	f947fc00 	ldr	x0, [x0, #4088]
     b24:	d2800003 	mov	x3, #0x0                   	// #0
     b28:	d2800004 	mov	x4, #0x0                   	// #0
     b2c:	97ffffd5 	bl	a80 <__libc_start_main@plt>
     b30:	97ffffb0 	bl	9f0 <abort@plt>

0000000000000b34 <call_weak_fn>:
     b34:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xfb84>
     b38:	f947ec00 	ldr	x0, [x0, #4056]
     b3c:	b4000040 	cbz	x0, b44 <call_weak_fn+0x10>
     b40:	17ffff98 	b	9a0 <__gmon_start__@plt>
     b44:	d65f03c0 	ret
     b48:	d503201f 	nop
     b4c:	d503201f 	nop

0000000000000b50 <deregister_tm_clones>:
     b50:	d0000080 	adrp	x0, 12000 <__data_start>
     b54:	91004000 	add	x0, x0, #0x10
     b58:	d0000081 	adrp	x1, 12000 <__data_start>
     b5c:	91004021 	add	x1, x1, #0x10
     b60:	eb00003f 	cmp	x1, x0
     b64:	540000c0 	b.eq	b7c <deregister_tm_clones+0x2c>  // b.none
     b68:	b0000081 	adrp	x1, 11000 <__FRAME_END__+0xfb84>
     b6c:	f947f421 	ldr	x1, [x1, #4072]
     b70:	b4000061 	cbz	x1, b7c <deregister_tm_clones+0x2c>
     b74:	aa0103f0 	mov	x16, x1
     b78:	d61f0200 	br	x16
     b7c:	d65f03c0 	ret

0000000000000b80 <register_tm_clones>:
     b80:	d0000080 	adrp	x0, 12000 <__data_start>
     b84:	91004000 	add	x0, x0, #0x10
     b88:	d0000081 	adrp	x1, 12000 <__data_start>
     b8c:	91004021 	add	x1, x1, #0x10
     b90:	cb000021 	sub	x1, x1, x0
     b94:	d37ffc22 	lsr	x2, x1, #63
     b98:	8b810c41 	add	x1, x2, x1, asr #3
     b9c:	9341fc21 	asr	x1, x1, #1
     ba0:	b40000c1 	cbz	x1, bb8 <register_tm_clones+0x38>
     ba4:	b0000082 	adrp	x2, 11000 <__FRAME_END__+0xfb84>
     ba8:	f947f842 	ldr	x2, [x2, #4080]
     bac:	b4000062 	cbz	x2, bb8 <register_tm_clones+0x38>
     bb0:	aa0203f0 	mov	x16, x2
     bb4:	d61f0200 	br	x16
     bb8:	d65f03c0 	ret
     bbc:	d503201f 	nop

0000000000000bc0 <__do_global_dtors_aux>:
     bc0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
     bc4:	910003fd 	mov	x29, sp
     bc8:	f9000bf3 	str	x19, [sp, #16]
     bcc:	d0000093 	adrp	x19, 12000 <__data_start>
     bd0:	39404260 	ldrb	w0, [x19, #16]
     bd4:	35000140 	cbnz	w0, bfc <__do_global_dtors_aux+0x3c>
     bd8:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xfb84>
     bdc:	f947f000 	ldr	x0, [x0, #4064]
     be0:	b4000080 	cbz	x0, bf0 <__do_global_dtors_aux+0x30>
     be4:	d0000080 	adrp	x0, 12000 <__data_start>
     be8:	f9400400 	ldr	x0, [x0, #8]
     bec:	97ffff79 	bl	9d0 <__cxa_finalize@plt>
     bf0:	97ffffd8 	bl	b50 <deregister_tm_clones>
     bf4:	52800020 	mov	w0, #0x1                   	// #1
     bf8:	39004260 	strb	w0, [x19, #16]
     bfc:	f9400bf3 	ldr	x19, [sp, #16]
     c00:	a8c27bfd 	ldp	x29, x30, [sp], #32
     c04:	d65f03c0 	ret
     c08:	d503201f 	nop
     c0c:	d503201f 	nop

0000000000000c10 <frame_dummy>:
     c10:	17ffffdc 	b	b80 <register_tm_clones>
     c14:	d503201f 	nop
     c18:	d503201f 	nop
     c1c:	d503201f 	nop

0000000000000c20 <MAIN__>:
     c20:	d10bc3ff 	sub	sp, sp, #0x2f0
     c24:	d2909000 	mov	x0, #0x8480                	// #33920
     c28:	f2a003c0 	movk	x0, #0x1e, lsl #16
     c2c:	a9007bfd 	stp	x29, x30, [sp]
     c30:	910003fd 	mov	x29, sp
     c34:	a90153f3 	stp	x19, x20, [sp, #16]
     c38:	a9025bf5 	stp	x21, x22, [sp, #32]
     c3c:	a90363f7 	stp	x23, x24, [sp, #48]
     c40:	a9046bf9 	stp	x25, x26, [sp, #64]
     c44:	a90573fb 	stp	x27, x28, [sp, #80]
     c48:	6d0627e8 	stp	d8, d9, [sp, #96]
     c4c:	6d072fea 	stp	d10, d11, [sp, #112]
     c50:	6d0837ec 	stp	d12, d13, [sp, #128]
     c54:	97ffff77 	bl	a30 <malloc@plt>
     c58:	b4002840 	cbz	x0, 1160 <MAIN__+0x540>
     c5c:	aa0003f5 	mov	x21, x0
     c60:	d2909000 	mov	x0, #0x8480                	// #33920
     c64:	f2a003c0 	movk	x0, #0x1e, lsl #16
     c68:	97ffff72 	bl	a30 <malloc@plt>
     c6c:	aa0003f4 	mov	x20, x0
     c70:	b4002780 	cbz	x0, 1160 <MAIN__+0x540>
     c74:	d2909000 	mov	x0, #0x8480                	// #33920
     c78:	f2a003c0 	movk	x0, #0x1e, lsl #16
     c7c:	97ffff6d 	bl	a30 <malloc@plt>
     c80:	aa0003f3 	mov	x19, x0
     c84:	b40026e0 	cbz	x0, 1160 <MAIN__+0x540>
     c88:	d2d08f00 	mov	x0, #0x847800000000        	// #145650930941952
     c8c:	529a121a 	mov	w26, #0xd090                	// #53392
     c90:	f2e821c0 	movk	x0, #0x410e, lsl #48
     c94:	9e67000a 	fmov	d10, x0
     c98:	b0000000 	adrp	x0, 1000 <MAIN__+0x3e0>
     c9c:	910263f7 	add	x23, sp, #0x98
     ca0:	910243f6 	add	x22, sp, #0x90
     ca4:	1e6e1000 	fmov	d0, #1.000000000000000000e+00
     ca8:	fd41740d 	ldr	d13, [x0, #744]
     cac:	b0000000 	adrp	x0, 1000 <MAIN__+0x3e0>
     cb0:	d2800118 	mov	x24, #0x8                   	// #8
     cb4:	52800039 	mov	w25, #0x1                   	// #1
     cb8:	fd41780c 	ldr	d12, [x0, #752]
     cbc:	1e60100b 	fmov	d11, #2.000000000000000000e+00
     cc0:	72a0007a 	movk	w26, #0x3, lsl #16
     cc4:	f90002bf 	str	xzr, [x21]
     cc8:	f900027f 	str	xzr, [x19]
     ccc:	fd000280 	str	d0, [x20]
     cd0:	1e620329 	scvtf	d9, w25
     cd4:	1e6e1008 	fmov	d8, #1.000000000000000000e+00
     cd8:	aa1603e1 	mov	x1, x22
     cdc:	aa1703e0 	mov	x0, x23
     ce0:	11000739 	add	w25, w25, #0x1
     ce4:	1e6d0920 	fmul	d0, d9, d13
     ce8:	1e6c0800 	fmul	d0, d0, d12
     cec:	97ffff3d 	bl	9e0 <sincos@plt>
     cf0:	1e6a1920 	fdiv	d0, d9, d10
     cf4:	6d490be3 	ldp	d3, d2, [sp, #144]
     cf8:	1f4ba000 	fmsub	d0, d0, d11, d8
     cfc:	1f40a001 	fmsub	d1, d0, d0, d8
     d00:	fc386a80 	str	d0, [x20, x24]
     d04:	1e61c020 	fsqrt	d0, d1
     d08:	1e600861 	fmul	d1, d3, d0
     d0c:	1e600840 	fmul	d0, d2, d0
     d10:	fc386aa1 	str	d1, [x21, x24]
     d14:	fc386a60 	str	d0, [x19, x24]
     d18:	91002318 	add	x24, x24, #0x8
     d1c:	6b1a033f 	cmp	w25, w26
     d20:	54fffd81 	b.ne	cd0 <MAIN__+0xb0>  // b.any
     d24:	b0000000 	adrp	x0, 1000 <MAIN__+0x3e0>
     d28:	b0000001 	adrp	x1, 1000 <MAIN__+0x3e0>
     d2c:	91078022 	add	x2, x1, #0x1e0
     d30:	1e62900a 	fmov	d10, #5.000000000000000000e+00
     d34:	fd417c00 	ldr	d0, [x0, #760]
     d38:	52800401 	mov	w1, #0x20                  	// #32
     d3c:	910383f8 	add	x24, sp, #0xe0
     d40:	f90077e2 	str	x2, [sp, #232]
     d44:	aa1803e0 	mov	x0, x24
     d48:	b900f3e1 	str	w1, [sp, #240]
     d4c:	fd0073e0 	str	d0, [sp, #224]
     d50:	97ffff48 	bl	a70 <_gfortran_st_write@plt>
     d54:	b0000001 	adrp	x1, 1000 <MAIN__+0x3e0>
     d58:	9107c021 	add	x1, x1, #0x1f0
     d5c:	d28004e2 	mov	x2, #0x27                  	// #39
     d60:	aa1803e0 	mov	x0, x24
     d64:	97ffff27 	bl	a00 <_gfortran_transfer_character_write@plt>
     d68:	d290901a 	mov	x26, #0x8480                	// #33920
     d6c:	aa1803e0 	mov	x0, x24
     d70:	97ffff2c 	bl	a20 <_gfortran_st_write_done@plt>
     d74:	d2c80000 	mov	x0, #0x400000000000        	// #70368744177664
     d78:	2f00e404 	movi	d4, #0x0
     d7c:	f2e811e0 	movk	x0, #0x408f, lsl #48
     d80:	9e670009 	fmov	d9, x0
     d84:	b0000000 	adrp	x0, 1000 <MAIN__+0x3e0>
     d88:	1e604103 	fmov	d3, d8
     d8c:	5280001b 	mov	w27, #0x0                   	// #0
     d90:	f2a003da 	movk	x26, #0x1e, lsl #16
     d94:	fd418008 	ldr	d8, [x0, #768]
     d98:	d2800000 	mov	x0, #0x0                   	// #0
     d9c:	d503201f 	nop
     da0:	fc606aa2 	ldr	d2, [x21, x0]
     da4:	fc606a61 	ldr	d1, [x19, x0]
     da8:	fc606a85 	ldr	d5, [x20, x0]
     dac:	91002000 	add	x0, x0, #0x8
     db0:	1e620880 	fmul	d0, d4, d2
     db4:	1f618060 	fnmsub	d0, d3, d1, d0
     db8:	1e610881 	fmul	d1, d4, d1
     dbc:	1f420461 	fmadd	d1, d3, d2, d1
     dc0:	1e600862 	fmul	d2, d3, d0
     dc4:	1e600880 	fmul	d0, d4, d0
     dc8:	1f450882 	fmadd	d2, d4, d5, d2
     dcc:	1f658060 	fnmsub	d0, d3, d5, d0
     dd0:	1e6a2842 	fadd	d2, d2, d10
     dd4:	1e621922 	fdiv	d2, d9, d2
     dd8:	1e620821 	fmul	d1, d1, d2
     ddc:	1e620800 	fmul	d0, d0, d2
     de0:	6d0b87e0 	stp	d0, d1, [sp, #184]
     de4:	eb1a001f 	cmp	x0, x26
     de8:	54fffdc1 	b.ne	da0 <MAIN__+0x180>  // b.any
     dec:	1100077b 	add	w27, w27, #0x1
     df0:	b900a7fb 	str	w27, [sp, #164]
     df4:	71002b7f 	cmp	w27, #0xa
     df8:	54000100 	b.eq	e18 <MAIN__+0x1f8>  // b.none
     dfc:	1e620360 	scvtf	d0, w27
     e00:	aa1603e1 	mov	x1, x22
     e04:	aa1703e0 	mov	x0, x23
     e08:	1e680800 	fmul	d0, d0, d8
     e0c:	97fffef5 	bl	9e0 <sincos@plt>
     e10:	6d4913e3 	ldp	d3, d4, [sp, #144]
     e14:	17ffffe1 	b	d98 <MAIN__+0x178>
     e18:	2f00e409 	movi	d9, #0x0
     e1c:	9102c3e0 	add	x0, sp, #0xb0
     e20:	d290901c 	mov	x28, #0x8480                	// #33920
     e24:	529999bb 	mov	w27, #0xcccd                	// #52429
     e28:	5299999a 	mov	w26, #0xcccc                	// #52428
     e2c:	52800019 	mov	w25, #0x0                   	// #0
     e30:	f2a003dc 	movk	x28, #0x1e, lsl #16
     e34:	72b9999b 	movk	w27, #0xcccc, lsl #16
     e38:	97fffede 	bl	9b0 <_gfortran_cpu_time_8@plt>
     e3c:	1e604123 	fmov	d3, d9
     e40:	d2c80000 	mov	x0, #0x400000000000        	// #70368744177664
     e44:	1e6e1004 	fmov	d4, #1.000000000000000000e+00
     e48:	f2e811e0 	movk	x0, #0x408f, lsl #48
     e4c:	9e67000a 	fmov	d10, x0
     e50:	b0000000 	adrp	x0, 1000 <MAIN__+0x3e0>
     e54:	72a1999a 	movk	w26, #0xccc, lsl #16
     e58:	b900a7ff 	str	wzr, [sp, #164]
     e5c:	fd418008 	ldr	d8, [x0, #768]
     e60:	d2800000 	mov	x0, #0x0                   	// #0
     e64:	1e629006 	fmov	d6, #5.000000000000000000e+00
     e68:	fc606aa2 	ldr	d2, [x21, x0]
     e6c:	fc606a61 	ldr	d1, [x19, x0]
     e70:	fc606a85 	ldr	d5, [x20, x0]
     e74:	91002000 	add	x0, x0, #0x8
     e78:	1e620860 	fmul	d0, d3, d2
     e7c:	1f618080 	fnmsub	d0, d4, d1, d0
     e80:	1e610861 	fmul	d1, d3, d1
     e84:	1f420481 	fmadd	d1, d4, d2, d1
     e88:	1e600882 	fmul	d2, d4, d0
     e8c:	1e600860 	fmul	d0, d3, d0
     e90:	1f450862 	fmadd	d2, d3, d5, d2
     e94:	1f658080 	fnmsub	d0, d4, d5, d0
     e98:	1e662842 	fadd	d2, d2, d6
     e9c:	1e621942 	fdiv	d2, d10, d2
     ea0:	1e620821 	fmul	d1, d1, d2
     ea4:	1e620800 	fmul	d0, d0, d2
     ea8:	1e692829 	fadd	d9, d1, d9
     eac:	6d0b87e0 	stp	d0, d1, [sp, #184]
     eb0:	1e602929 	fadd	d9, d9, d0
     eb4:	fd006fe9 	str	d9, [sp, #216]
     eb8:	eb1c001f 	cmp	x0, x28
     ebc:	54fffd61 	b.ne	e68 <MAIN__+0x248>  // b.any
     ec0:	1b1b7f20 	mul	w0, w25, w27
     ec4:	13800800 	ror	w0, w0, #2
     ec8:	6b1a001f 	cmp	w0, w26
     ecc:	54000189 	b.ls	efc <MAIN__+0x2dc>  // b.plast
     ed0:	11000739 	add	w25, w25, #0x1
     ed4:	b900a7f9 	str	w25, [sp, #164]
     ed8:	7101933f 	cmp	w25, #0x64
     edc:	540008e0 	b.eq	ff8 <MAIN__+0x3d8>  // b.none
     ee0:	1e620320 	scvtf	d0, w25
     ee4:	aa1603e1 	mov	x1, x22
     ee8:	aa1703e0 	mov	x0, x23
     eec:	1e680800 	fmul	d0, d0, d8
     ef0:	97fffebc 	bl	9e0 <sincos@plt>
     ef4:	6d490fe4 	ldp	d4, d3, [sp, #144]
     ef8:	17ffffda 	b	e60 <MAIN__+0x240>
     efc:	fd4002a2 	ldr	d2, [x21]
     f00:	b0000000 	adrp	x0, 1000 <MAIN__+0x3e0>
     f04:	fd400261 	ldr	d1, [x19]
     f08:	91078002 	add	x2, x0, #0x1e0
     f0c:	fd400285 	ldr	d5, [x20]
     f10:	b0000000 	adrp	x0, 1000 <MAIN__+0x3e0>
     f14:	1e620860 	fmul	d0, d3, d2
     f18:	b0000001 	adrp	x1, 1000 <MAIN__+0x3e0>
     f1c:	1f618080 	fnmsub	d0, d4, d1, d0
     f20:	1e610861 	fmul	d1, d3, d1
     f24:	1f420481 	fmadd	d1, d4, d2, d1
     f28:	fd418407 	ldr	d7, [x0, #776]
     f2c:	91086021 	add	x1, x1, #0x218
     f30:	528006c5 	mov	w5, #0x36                  	// #54
     f34:	d2800284 	mov	x4, #0x14                  	// #20
     f38:	aa1803e0 	mov	x0, x24
     f3c:	fd0073e7 	str	d7, [sp, #224]
     f40:	11000739 	add	w25, w25, #0x1
     f44:	f90077e2 	str	x2, [sp, #232]
     f48:	b900f3e5 	str	w5, [sp, #240]
     f4c:	a91313e1 	stp	x1, x4, [sp, #304]
     f50:	1e600882 	fmul	d2, d4, d0
     f54:	1f450862 	fmadd	d2, d3, d5, d2
     f58:	1e600860 	fmul	d0, d3, d0
     f5c:	1f658080 	fnmsub	d0, d4, d5, d0
     f60:	1e662842 	fadd	d2, d2, d6
     f64:	1e621942 	fdiv	d2, d10, d2
     f68:	1e620821 	fmul	d1, d1, d2
     f6c:	1e620800 	fmul	d0, d0, d2
     f70:	6d0b87e0 	stp	d0, d1, [sp, #184]
     f74:	97fffebf 	bl	a70 <_gfortran_st_write@plt>
     f78:	aa1803e0 	mov	x0, x24
     f7c:	d2800182 	mov	x2, #0xc                   	// #12
     f80:	b0000001 	adrp	x1, 1000 <MAIN__+0x3e0>
     f84:	9108c021 	add	x1, x1, #0x230
     f88:	97fffe9e 	bl	a00 <_gfortran_transfer_character_write@plt>
     f8c:	910293e1 	add	x1, sp, #0xa4
     f90:	aa1803e0 	mov	x0, x24
     f94:	52800082 	mov	w2, #0x4                   	// #4
     f98:	97fffe8a 	bl	9c0 <_gfortran_transfer_integer_write@plt>
     f9c:	aa1803e0 	mov	x0, x24
     fa0:	d28002e2 	mov	x2, #0x17                  	// #23
     fa4:	b0000001 	adrp	x1, 1000 <MAIN__+0x3e0>
     fa8:	91090021 	add	x1, x1, #0x240
     fac:	97fffe95 	bl	a00 <_gfortran_transfer_character_write@plt>
     fb0:	910303e1 	add	x1, sp, #0xc0
     fb4:	aa1803e0 	mov	x0, x24
     fb8:	52800102 	mov	w2, #0x8                   	// #8
     fbc:	97fffe75 	bl	990 <_gfortran_transfer_real_write@plt>
     fc0:	aa1803e0 	mov	x0, x24
     fc4:	d2800082 	mov	x2, #0x4                   	// #4
     fc8:	b0000001 	adrp	x1, 1000 <MAIN__+0x3e0>
     fcc:	91096021 	add	x1, x1, #0x258
     fd0:	97fffe8c 	bl	a00 <_gfortran_transfer_character_write@plt>
     fd4:	9102e3e1 	add	x1, sp, #0xb8
     fd8:	52800102 	mov	w2, #0x8                   	// #8
     fdc:	aa1803e0 	mov	x0, x24
     fe0:	97fffe6c 	bl	990 <_gfortran_transfer_real_write@plt>
     fe4:	aa1803e0 	mov	x0, x24
     fe8:	97fffe8e 	bl	a20 <_gfortran_st_write_done@plt>
     fec:	b900a7f9 	str	w25, [sp, #164]
     ff0:	7101933f 	cmp	w25, #0x64
     ff4:	54fff761 	b.ne	ee0 <MAIN__+0x2c0>  // b.any
     ff8:	910323e0 	add	x0, sp, #0xc8
     ffc:	97fffe6d 	bl	9b0 <_gfortran_cpu_time_8@plt>
    1000:	fd405be4 	ldr	d4, [sp, #176]
    1004:	d2c80000 	mov	x0, #0x400000000000        	// #70368744177664
    1008:	fd4067e1 	ldr	d1, [sp, #200]
    100c:	f2e811e0 	movk	x0, #0x408f, lsl #48
    1010:	9e670000 	fmov	d0, x0
    1014:	d2daf080 	mov	x0, #0xd78400000000        	// #236961935654912
    1018:	f2e82ee0 	movk	x0, #0x4177, lsl #48
    101c:	9e670002 	fmov	d2, x0
    1020:	1e643821 	fsub	d1, d1, d4
    1024:	90000000 	adrp	x0, 1000 <MAIN__+0x3e0>
    1028:	528007c1 	mov	w1, #0x3e                  	// #62
    102c:	b900f3e1 	str	w1, [sp, #240]
    1030:	fd417c03 	ldr	d3, [x0, #760]
    1034:	90000000 	adrp	x0, 1000 <MAIN__+0x3e0>
    1038:	91078019 	add	x25, x0, #0x1e0
    103c:	aa1803e0 	mov	x0, x24
    1040:	1e600821 	fmul	d1, d1, d0
    1044:	f90077f9 	str	x25, [sp, #232]
    1048:	fd0073e3 	str	d3, [sp, #224]
    104c:	1e601820 	fdiv	d0, d1, d0
    1050:	fd006be1 	str	d1, [sp, #208]
    1054:	1e601840 	fdiv	d0, d2, d0
    1058:	fd0057e0 	str	d0, [sp, #168]
    105c:	97fffe85 	bl	a70 <_gfortran_st_write@plt>
    1060:	90000001 	adrp	x1, 1000 <MAIN__+0x3e0>
    1064:	91098021 	add	x1, x1, #0x260
    1068:	d2800602 	mov	x2, #0x30                  	// #48
    106c:	aa1803e0 	mov	x0, x24
    1070:	97fffe64 	bl	a00 <_gfortran_transfer_character_write@plt>
    1074:	aa1803e0 	mov	x0, x24
    1078:	97fffe6a 	bl	a20 <_gfortran_st_write_done@plt>
    107c:	90000000 	adrp	x0, 1000 <MAIN__+0x3e0>
    1080:	90000001 	adrp	x1, 1000 <MAIN__+0x3e0>
    1084:	910a6021 	add	x1, x1, #0x298
    1088:	528007e3 	mov	w3, #0x3f                  	// #63
    108c:	fd418400 	ldr	d0, [x0, #776]
    1090:	d28002c2 	mov	x2, #0x16                  	// #22
    1094:	aa1803e0 	mov	x0, x24
    1098:	f90077f9 	str	x25, [sp, #232]
    109c:	b900f3e3 	str	w3, [sp, #240]
    10a0:	fd0073e0 	str	d0, [sp, #224]
    10a4:	a9130be1 	stp	x1, x2, [sp, #304]
    10a8:	97fffe72 	bl	a70 <_gfortran_st_write@plt>
    10ac:	aa1803e0 	mov	x0, x24
    10b0:	d2800162 	mov	x2, #0xb                   	// #11
    10b4:	90000001 	adrp	x1, 1000 <MAIN__+0x3e0>
    10b8:	910ac021 	add	x1, x1, #0x2b0
    10bc:	97fffe51 	bl	a00 <_gfortran_transfer_character_write@plt>
    10c0:	910343e1 	add	x1, sp, #0xd0
    10c4:	aa1803e0 	mov	x0, x24
    10c8:	52800102 	mov	w2, #0x8                   	// #8
    10cc:	97fffe31 	bl	990 <_gfortran_transfer_real_write@plt>
    10d0:	aa1803e0 	mov	x0, x24
    10d4:	d2800242 	mov	x2, #0x12                  	// #18
    10d8:	90000001 	adrp	x1, 1000 <MAIN__+0x3e0>
    10dc:	910b0021 	add	x1, x1, #0x2c0
    10e0:	97fffe48 	bl	a00 <_gfortran_transfer_character_write@plt>
    10e4:	9102a3e1 	add	x1, sp, #0xa8
    10e8:	aa1803e0 	mov	x0, x24
    10ec:	52800102 	mov	w2, #0x8                   	// #8
    10f0:	97fffe28 	bl	990 <_gfortran_transfer_real_write@plt>
    10f4:	aa1803e0 	mov	x0, x24
    10f8:	d2800142 	mov	x2, #0xa                   	// #10
    10fc:	90000001 	adrp	x1, 1000 <MAIN__+0x3e0>
    1100:	910b6021 	add	x1, x1, #0x2d8
    1104:	97fffe3f 	bl	a00 <_gfortran_transfer_character_write@plt>
    1108:	910363e1 	add	x1, sp, #0xd8
    110c:	52800102 	mov	w2, #0x8                   	// #8
    1110:	aa1803e0 	mov	x0, x24
    1114:	97fffe1f 	bl	990 <_gfortran_transfer_real_write@plt>
    1118:	aa1803e0 	mov	x0, x24
    111c:	97fffe41 	bl	a20 <_gfortran_st_write_done@plt>
    1120:	aa1503e0 	mov	x0, x21
    1124:	97fffe4f 	bl	a60 <free@plt>
    1128:	aa1403e0 	mov	x0, x20
    112c:	97fffe4d 	bl	a60 <free@plt>
    1130:	aa1303e0 	mov	x0, x19
    1134:	a9407bfd 	ldp	x29, x30, [sp]
    1138:	a94153f3 	ldp	x19, x20, [sp, #16]
    113c:	a9425bf5 	ldp	x21, x22, [sp, #32]
    1140:	a94363f7 	ldp	x23, x24, [sp, #48]
    1144:	a9446bf9 	ldp	x25, x26, [sp, #64]
    1148:	a94573fb 	ldp	x27, x28, [sp, #80]
    114c:	6d4627e8 	ldp	d8, d9, [sp, #96]
    1150:	6d472fea 	ldp	d10, d11, [sp, #112]
    1154:	6d4837ec 	ldp	d12, d13, [sp, #128]
    1158:	910bc3ff 	add	sp, sp, #0x2f0
    115c:	17fffe41 	b	a60 <free@plt>
    1160:	d2909002 	mov	x2, #0x8480                	// #33920
    1164:	90000001 	adrp	x1, 1000 <MAIN__+0x3e0>
    1168:	90000000 	adrp	x0, 1000 <MAIN__+0x3e0>
    116c:	91066021 	add	x1, x1, #0x198
    1170:	9106e000 	add	x0, x0, #0x1b8
    1174:	f2a003c2 	movk	x2, #0x1e, lsl #16
    1178:	97fffe26 	bl	a10 <_gfortran_os_error_at@plt>

Disassembly of section .fini:

000000000000117c <_fini>:
    117c:	d503201f 	nop
    1180:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    1184:	910003fd 	mov	x29, sp
    1188:	a8c17bfd 	ldp	x29, x30, [sp], #16
    118c:	d65f03c0 	ret
