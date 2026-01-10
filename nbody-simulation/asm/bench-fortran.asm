
/bench/bench:     file format elf64-littleaarch64


Disassembly of section .init:

00000000000008a0 <_init>:
 8a0:	d503201f 	nop
 8a4:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 8a8:	910003fd 	mov	x29, sp
 8ac:	94000062 	bl	a34 <call_weak_fn>
 8b0:	a8c17bfd 	ldp	x29, x30, [sp], #16
 8b4:	d65f03c0 	ret

Disassembly of section .plt:

00000000000008c0 <.plt>:
 8c0:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
 8c4:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf434>
 8c8:	f947ae11 	ldr	x17, [x16, #3928]
 8cc:	913d6210 	add	x16, x16, #0xf58
 8d0:	d61f0220 	br	x17
 8d4:	d503201f 	nop
 8d8:	d503201f 	nop
 8dc:	d503201f 	nop

00000000000008e0 <_gfortran_transfer_real_write@plt>:
 8e0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf434>
 8e4:	f947b211 	ldr	x17, [x16, #3936]
 8e8:	913d8210 	add	x16, x16, #0xf60
 8ec:	d61f0220 	br	x17

00000000000008f0 <__gmon_start__@plt>:
 8f0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf434>
 8f4:	f947b611 	ldr	x17, [x16, #3944]
 8f8:	913da210 	add	x16, x16, #0xf68
 8fc:	d61f0220 	br	x17

0000000000000900 <__cxa_finalize@plt>:
 900:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf434>
 904:	f947ba11 	ldr	x17, [x16, #3952]
 908:	913dc210 	add	x16, x16, #0xf70
 90c:	d61f0220 	br	x17

0000000000000910 <_gfortran_system_clock_8@plt>:
 910:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf434>
 914:	f947be11 	ldr	x17, [x16, #3960]
 918:	913de210 	add	x16, x16, #0xf78
 91c:	d61f0220 	br	x17

0000000000000920 <abort@plt>:
 920:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf434>
 924:	f947c211 	ldr	x17, [x16, #3968]
 928:	913e0210 	add	x16, x16, #0xf80
 92c:	d61f0220 	br	x17

0000000000000930 <_gfortran_transfer_character_write@plt>:
 930:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf434>
 934:	f947c611 	ldr	x17, [x16, #3976]
 938:	913e2210 	add	x16, x16, #0xf88
 93c:	d61f0220 	br	x17

0000000000000940 <_gfortran_os_error_at@plt>:
 940:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf434>
 944:	f947ca11 	ldr	x17, [x16, #3984]
 948:	913e4210 	add	x16, x16, #0xf90
 94c:	d61f0220 	br	x17

0000000000000950 <_gfortran_st_write_done@plt>:
 950:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf434>
 954:	f947ce11 	ldr	x17, [x16, #3992]
 958:	913e6210 	add	x16, x16, #0xf98
 95c:	d61f0220 	br	x17

0000000000000960 <malloc@plt>:
 960:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf434>
 964:	f947d211 	ldr	x17, [x16, #4000]
 968:	913e8210 	add	x16, x16, #0xfa0
 96c:	d61f0220 	br	x17

0000000000000970 <_gfortran_set_options@plt>:
 970:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf434>
 974:	f947d611 	ldr	x17, [x16, #4008]
 978:	913ea210 	add	x16, x16, #0xfa8
 97c:	d61f0220 	br	x17

0000000000000980 <_gfortran_set_args@plt>:
 980:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf434>
 984:	f947da11 	ldr	x17, [x16, #4016]
 988:	913ec210 	add	x16, x16, #0xfb0
 98c:	d61f0220 	br	x17

0000000000000990 <free@plt>:
 990:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf434>
 994:	f947de11 	ldr	x17, [x16, #4024]
 998:	913ee210 	add	x16, x16, #0xfb8
 99c:	d61f0220 	br	x17

00000000000009a0 <_gfortran_st_write@plt>:
 9a0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf434>
 9a4:	f947e211 	ldr	x17, [x16, #4032]
 9a8:	913f0210 	add	x16, x16, #0xfc0
 9ac:	d61f0220 	br	x17

00000000000009b0 <__libc_start_main@plt>:
 9b0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf434>
 9b4:	f947e611 	ldr	x17, [x16, #4040]
 9b8:	913f2210 	add	x16, x16, #0xfc8
 9bc:	d61f0220 	br	x17

Disassembly of section .text:

00000000000009c0 <main>:
     9c0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
     9c4:	910003fd 	mov	x29, sp
     9c8:	97ffffee 	bl	980 <_gfortran_set_args@plt>
     9cc:	b0000001 	adrp	x1, 1000 <run_steps.0.constprop.0+0x4e0>
     9d0:	91286021 	add	x1, x1, #0xa18
     9d4:	91002021 	add	x1, x1, #0x8
     9d8:	528000e0 	mov	w0, #0x7                   	// #7
     9dc:	97ffffe5 	bl	970 <_gfortran_set_options@plt>
     9e0:	94000264 	bl	1370 <MAIN__>
     9e4:	52800000 	mov	w0, #0x0                   	// #0
     9e8:	a8c17bfd 	ldp	x29, x30, [sp], #16
     9ec:	d65f03c0 	ret
     9f0:	d503201f 	nop
     9f4:	d503201f 	nop
     9f8:	d503201f 	nop
     9fc:	d503201f 	nop

0000000000000a00 <_start>:
     a00:	d503201f 	nop
     a04:	d280001d 	mov	x29, #0x0                   	// #0
     a08:	d280001e 	mov	x30, #0x0                   	// #0
     a0c:	aa0003e5 	mov	x5, x0
     a10:	f94003e1 	ldr	x1, [sp]
     a14:	910023e2 	add	x2, sp, #0x8
     a18:	910003e6 	mov	x6, sp
     a1c:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xf434>
     a20:	f947fc00 	ldr	x0, [x0, #4088]
     a24:	d2800003 	mov	x3, #0x0                   	// #0
     a28:	d2800004 	mov	x4, #0x0                   	// #0
     a2c:	97ffffe1 	bl	9b0 <__libc_start_main@plt>
     a30:	97ffffbc 	bl	920 <abort@plt>

0000000000000a34 <call_weak_fn>:
     a34:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xf434>
     a38:	f947ec00 	ldr	x0, [x0, #4056]
     a3c:	b4000040 	cbz	x0, a44 <call_weak_fn+0x10>
     a40:	17ffffac 	b	8f0 <__gmon_start__@plt>
     a44:	d65f03c0 	ret
     a48:	d503201f 	nop
     a4c:	d503201f 	nop

0000000000000a50 <deregister_tm_clones>:
     a50:	d0000080 	adrp	x0, 12000 <__data_start>
     a54:	91004000 	add	x0, x0, #0x10
     a58:	d0000081 	adrp	x1, 12000 <__data_start>
     a5c:	91004021 	add	x1, x1, #0x10
     a60:	eb00003f 	cmp	x1, x0
     a64:	540000c0 	b.eq	a7c <deregister_tm_clones+0x2c>  // b.none
     a68:	b0000081 	adrp	x1, 11000 <__FRAME_END__+0xf434>
     a6c:	f947f421 	ldr	x1, [x1, #4072]
     a70:	b4000061 	cbz	x1, a7c <deregister_tm_clones+0x2c>
     a74:	aa0103f0 	mov	x16, x1
     a78:	d61f0200 	br	x16
     a7c:	d65f03c0 	ret

0000000000000a80 <register_tm_clones>:
     a80:	d0000080 	adrp	x0, 12000 <__data_start>
     a84:	91004000 	add	x0, x0, #0x10
     a88:	d0000081 	adrp	x1, 12000 <__data_start>
     a8c:	91004021 	add	x1, x1, #0x10
     a90:	cb000021 	sub	x1, x1, x0
     a94:	d37ffc22 	lsr	x2, x1, #63
     a98:	8b810c41 	add	x1, x2, x1, asr #3
     a9c:	9341fc21 	asr	x1, x1, #1
     aa0:	b40000c1 	cbz	x1, ab8 <register_tm_clones+0x38>
     aa4:	b0000082 	adrp	x2, 11000 <__FRAME_END__+0xf434>
     aa8:	f947f842 	ldr	x2, [x2, #4080]
     aac:	b4000062 	cbz	x2, ab8 <register_tm_clones+0x38>
     ab0:	aa0203f0 	mov	x16, x2
     ab4:	d61f0200 	br	x16
     ab8:	d65f03c0 	ret
     abc:	d503201f 	nop

0000000000000ac0 <__do_global_dtors_aux>:
     ac0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
     ac4:	910003fd 	mov	x29, sp
     ac8:	f9000bf3 	str	x19, [sp, #16]
     acc:	d0000093 	adrp	x19, 12000 <__data_start>
     ad0:	39404260 	ldrb	w0, [x19, #16]
     ad4:	35000140 	cbnz	w0, afc <__do_global_dtors_aux+0x3c>
     ad8:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xf434>
     adc:	f947f000 	ldr	x0, [x0, #4064]
     ae0:	b4000080 	cbz	x0, af0 <__do_global_dtors_aux+0x30>
     ae4:	d0000080 	adrp	x0, 12000 <__data_start>
     ae8:	f9400400 	ldr	x0, [x0, #8]
     aec:	97ffff85 	bl	900 <__cxa_finalize@plt>
     af0:	97ffffd8 	bl	a50 <deregister_tm_clones>
     af4:	52800020 	mov	w0, #0x1                   	// #1
     af8:	39004260 	strb	w0, [x19, #16]
     afc:	f9400bf3 	ldr	x19, [sp, #16]
     b00:	a8c27bfd 	ldp	x29, x30, [sp], #32
     b04:	d65f03c0 	ret
     b08:	d503201f 	nop
     b0c:	d503201f 	nop

0000000000000b10 <frame_dummy>:
     b10:	17ffffdc 	b	a80 <register_tm_clones>
     b14:	d503201f 	nop
     b18:	d503201f 	nop
     b1c:	d503201f 	nop

0000000000000b20 <run_steps.0.constprop.0>:
     b20:	a9a87bfd 	stp	x29, x30, [sp, #-384]!
     b24:	aa0403ed 	mov	x13, x4
     b28:	aa0103ef 	mov	x15, x1
     b2c:	910003fd 	mov	x29, sp
     b30:	a9582beb 	ldp	x11, x10, [sp, #384]
     b34:	aa0503ec 	mov	x12, x5
     b38:	f940cbe8 	ldr	x8, [sp, #400]
     b3c:	aa0203ee 	mov	x14, x2
     b40:	f9401424 	ldr	x4, [x1, #40]
     b44:	aa0303f0 	mov	x16, x3
     b48:	f9401561 	ldr	x1, [x11, #40]
     b4c:	a90153f3 	stp	x19, x20, [sp, #16]
     b50:	b9400000 	ldr	w0, [x0]
     b54:	f9401549 	ldr	x9, [x10, #40]
     b58:	f100003f 	cmp	x1, #0x0
     b5c:	f9401511 	ldr	x17, [x8, #40]
     b60:	a9025bf5 	stp	x21, x22, [sp, #32]
     b64:	f9401445 	ldr	x5, [x2, #40]
     b68:	aa0103e2 	mov	x2, x1
     b6c:	d2800021 	mov	x1, #0x1                   	// #1
     b70:	9a811042 	csel	x2, x2, x1, ne  // ne = any
     b74:	f100013f 	cmp	x9, #0x0
     b78:	a90363f7 	stp	x23, x24, [sp, #48]
     b7c:	9a811123 	csel	x3, x9, x1, ne  // ne = any
     b80:	f100023f 	cmp	x17, #0x0
     b84:	a9046bf9 	stp	x25, x26, [sp, #64]
     b88:	9a811231 	csel	x17, x17, x1, ne  // ne = any
     b8c:	a90573fb 	stp	x27, x28, [sp, #80]
     b90:	f100009f 	cmp	x4, #0x0
     b94:	9a811084 	csel	x4, x4, x1, ne  // ne = any
     b98:	a9090be3 	stp	x3, x2, [sp, #144]
     b9c:	f10000bf 	cmp	x5, #0x0
     ba0:	9a8110a5 	csel	x5, x5, x1, ne  // ne = any
     ba4:	f9005bf1 	str	x17, [sp, #176]
     ba8:	b900f3e0 	str	w0, [sp, #240]
     bac:	f9401609 	ldr	x9, [x16, #40]
     bb0:	f94014c0 	ldr	x0, [x6, #40]
     bb4:	f100013f 	cmp	x9, #0x0
     bb8:	f9401582 	ldr	x2, [x12, #40]
     bbc:	9a811129 	csel	x9, x9, x1, ne  // ne = any
     bc0:	f94015a3 	ldr	x3, [x13, #40]
     bc4:	f9401d52 	ldr	x18, [x10, #56]
     bc8:	f100007f 	cmp	x3, #0x0
     bcc:	f9401d73 	ldr	x19, [x11, #56]
     bd0:	8b010252 	add	x18, x18, x1
     bd4:	a9434514 	ldp	x20, x17, [x8, #48]
     bd8:	8b010273 	add	x19, x19, x1
     bdc:	f9401976 	ldr	x22, [x11, #48]
     be0:	9a811063 	csel	x3, x3, x1, ne  // ne = any
     be4:	f9401955 	ldr	x21, [x10, #48]
     be8:	f100005f 	cmp	x2, #0x0
     bec:	8b010231 	add	x17, x17, x1
     bf0:	cb160273 	sub	x19, x19, x22
     bf4:	f94000db 	ldr	x27, [x6]
     bf8:	9a811042 	csel	x2, x2, x1, ne  // ne = any
     bfc:	f94000fc 	ldr	x28, [x7]
     c00:	f100001f 	cmp	x0, #0x0
     c04:	b940f3e7 	ldr	w7, [sp, #240]
     c08:	cb14023e 	sub	x30, x17, x20
     c0c:	f9400106 	ldr	x6, [x8]
     c10:	cb150256 	sub	x22, x18, x21
     c14:	f94001ce 	ldr	x14, [x14]
     c18:	f90037e6 	str	x6, [sp, #104]
     c1c:	f94001ef 	ldr	x15, [x15]
     c20:	a90a5bf3 	stp	x19, x22, [sp, #160]
     c24:	9a811000 	csel	x0, x0, x1, ne  // ne = any
     c28:	f9400210 	ldr	x16, [x16]
     c2c:	a90bbffe 	stp	x30, x15, [sp, #184]
     c30:	a90cc3ee 	stp	x14, x16, [sp, #200]
     c34:	f9400157 	ldr	x23, [x10]
     c38:	f9400178 	ldr	x24, [x11]
     c3c:	f940019a 	ldr	x26, [x12]
     c40:	f94001b9 	ldr	x25, [x13]
     c44:	710000ff 	cmp	w7, #0x0
     c48:	5400290d 	b.le	1168 <run_steps.0.constprop.0+0x648>
     c4c:	d1000667 	sub	x7, x19, #0x1
     c50:	92f00006 	mov	x6, #0x7fffffffffffffff    	// #9223372036854775807
     c54:	f10038ff 	cmp	x7, #0xe
     c58:	d10006c7 	sub	x7, x22, #0x1
     c5c:	1a9f97ee 	cset	w14, hi  // hi = pmore
     c60:	eb06027f 	cmp	x19, x6
     c64:	1a9f07ef 	cset	w15, ne  // ne = any
     c68:	f10038ff 	cmp	x7, #0xe
     c6c:	1a9f97f0 	cset	w16, hi  // hi = pmore
     c70:	d10007c7 	sub	x7, x30, #0x1
     c74:	eb0602df 	cmp	x22, x6
     c78:	aa1303f5 	mov	x21, x19
     c7c:	1a9f07f1 	cset	w17, ne  // ne = any
     c80:	f10038ff 	cmp	x7, #0xe
     c84:	a94937ea 	ldp	x10, x13, [sp, #144]
     c88:	1a9f97f2 	cset	w18, hi  // hi = pmore
     c8c:	eb0603df 	cmp	x30, x6
     c90:	d37df08b 	lsl	x11, x4, #3
     c94:	1a9f07f3 	cset	w19, ne  // ne = any
     c98:	eb01007f 	cmp	x3, x1
     c9c:	1a9f07e7 	cset	w7, ne  // ne = any
     ca0:	eb01001f 	cmp	x0, x1
     ca4:	1a9f07e8 	cset	w8, ne  // ne = any
     ca8:	eb01005f 	cmp	x2, x1
     cac:	1a9f07e6 	cset	w6, ne  // ne = any
     cb0:	eb01015f 	cmp	x10, x1
     cb4:	2a060106 	orr	w6, w8, w6
     cb8:	fa4101a0 	ccmp	x13, x1, #0x0, eq  // eq = none
     cbc:	f9405be8 	ldr	x8, [sp, #176]
     cc0:	1a9f07ec 	cset	w12, ne  // ne = any
     cc4:	710000ff 	cmp	w7, #0x0
     cc8:	b900f7e1 	str	w1, [sp, #244]
     ccc:	fa410100 	ccmp	x8, x1, #0x0, eq  // eq = none
     cd0:	d37df0aa 	lsl	x10, x5, #3
     cd4:	1a9f07e8 	cset	w8, ne  // ne = any
     cd8:	eb01009f 	cmp	x4, x1
     cdc:	fa4100a0 	ccmp	x5, x1, #0x0, eq  // eq = none
     ce0:	2a080194 	orr	w20, w12, w8
     ce4:	1a9f07e4 	cset	w4, ne  // ne = any
     ce8:	710000ff 	cmp	w7, #0x0
     cec:	fa410120 	ccmp	x9, x1, #0x0, eq  // eq = none
     cf0:	0a0f01c1 	and	w1, w14, w15
     cf4:	b90113e1 	str	w1, [sp, #272]
     cf8:	b0000001 	adrp	x1, 1000 <run_steps.0.constprop.0+0x4e0>
     cfc:	a94c3bef 	ldp	x15, x14, [sp, #192]
     d00:	1a9f07e5 	cset	w5, ne  // ne = any
     d04:	3dc27839 	ldr	q25, [x1, #2528]
     d08:	0a110201 	and	w1, w16, w17
     d0c:	b90117e1 	str	w1, [sp, #276]
     d10:	0a130241 	and	w1, w18, w19
     d14:	b9012be1 	str	w1, [sp, #296]
     d18:	d37df061 	lsl	x1, x3, #3
     d1c:	f9006fe1 	str	x1, [sp, #216]
     d20:	d37df001 	lsl	x1, x0, #3
     d24:	f90073e1 	str	x1, [sp, #224]
     d28:	d37df041 	lsl	x1, x2, #3
     d2c:	2a050084 	orr	w4, w4, w5
     d30:	f90077e1 	str	x1, [sp, #232]
     d34:	2a1400c1 	orr	w1, w6, w20
     d38:	b90077e1 	str	w1, [sp, #116]
     d3c:	2a0400c1 	orr	w1, w6, w4
     d40:	b9012fe1 	str	w1, [sp, #300]
     d44:	f9404be5 	ldr	x5, [sp, #144]
     d48:	8b0b01e1 	add	x1, x15, x11
     d4c:	f9406bf0 	ldr	x16, [sp, #208]
     d50:	d37df129 	lsl	x9, x9, #3
     d54:	f9405be8 	ldr	x8, [sp, #176]
     d58:	f900a3e1 	str	x1, [sp, #320]
     d5c:	8b0a01c1 	add	x1, x14, x10
     d60:	d37df1ad 	lsl	x13, x13, #3
     d64:	f900a7e1 	str	x1, [sp, #328]
     d68:	8b090201 	add	x1, x16, x9
     d6c:	f94037e0 	ldr	x0, [sp, #104]
     d70:	d37df0ac 	lsl	x12, x5, #3
     d74:	f900abe1 	str	x1, [sp, #336]
     d78:	8b0d0301 	add	x1, x24, x13
     d7c:	d37df108 	lsl	x8, x8, #3
     d80:	f90033e1 	str	x1, [sp, #96]
     d84:	8b0c02e1 	add	x1, x23, x12
     d88:	f900b3e1 	str	x1, [sp, #352]
     d8c:	8b080001 	add	x1, x0, x8
     d90:	f900afe1 	str	x1, [sp, #344]
     d94:	d341fea1 	lsr	x1, x21, #1
     d98:	f9009be1 	str	x1, [sp, #304]
     d9c:	927ffaa1 	and	x1, x21, #0xfffffffffffffffe
     da0:	f9009fe1 	str	x1, [sp, #312]
     da4:	d341fec1 	lsr	x1, x22, #1
     da8:	f90087e1 	str	x1, [sp, #264]
     dac:	927ffac1 	and	x1, x22, #0xfffffffffffffffe
     db0:	f90083e1 	str	x1, [sp, #256]
     db4:	d341ffc1 	lsr	x1, x30, #1
     db8:	f90093e1 	str	x1, [sp, #288]
     dbc:	927ffbc1 	and	x1, x30, #0xfffffffffffffffe
     dc0:	d1002000 	sub	x0, x0, #0x8
     dc4:	f9008fe1 	str	x1, [sp, #280]
     dc8:	d1002301 	sub	x1, x24, #0x8
     dcc:	f900b7e1 	str	x1, [sp, #360]
     dd0:	d10022e1 	sub	x1, x23, #0x8
     dd4:	a91703e1 	stp	x1, x0, [sp, #368]
     dd8:	b0000000 	adrp	x0, 1000 <run_steps.0.constprop.0+0x4e0>
     ddc:	fd40039c 	ldr	d28, [x28]
     de0:	fd450018 	ldr	d24, [x0, #2560]
     de4:	b0000000 	adrp	x0, 1000 <run_steps.0.constprop.0+0x4e0>
     de8:	6f00e41b 	movi	v27.2d, #0x0
     dec:	fd44f01a 	ldr	d26, [x0, #2528]
     df0:	1e6e1017 	fmov	d23, #1.000000000000000000e+00
     df4:	f94053e0 	ldr	x0, [sp, #160]
     df8:	f100001f 	cmp	x0, #0x0
     dfc:	5400024d 	b.le	e44 <run_steps.0.constprop.0+0x324>
     e00:	f9404fe0 	ldr	x0, [sp, #152]
     e04:	f100041f 	cmp	x0, #0x1
     e08:	54002a21 	b.ne	134c <run_steps.0.constprop.0+0x82c>  // b.any
     e0c:	b94113e0 	ldr	w0, [sp, #272]
     e10:	340028e0 	cbz	w0, 132c <run_steps.0.constprop.0+0x80c>
     e14:	f9409be2 	ldr	x2, [sp, #304]
     e18:	d2800000 	mov	x0, #0x0                   	// #0
     e1c:	d37cec01 	lsl	x1, x0, #4
     e20:	91000400 	add	x0, x0, #0x1
     e24:	3ca16b1b 	str	q27, [x24, x1]
     e28:	eb00005f 	cmp	x2, x0
     e2c:	54ffff88 	b.hi	e1c <run_steps.0.constprop.0+0x2fc>  // b.pmore
     e30:	f94053e1 	ldr	x1, [sp, #160]
     e34:	f9409fe0 	ldr	x0, [sp, #312]
     e38:	eb00003f 	cmp	x1, x0
     e3c:	54000040 	b.eq	e44 <run_steps.0.constprop.0+0x324>  // b.none
     e40:	f8207b1f 	str	xzr, [x24, x0, lsl #3]
     e44:	f94057e0 	ldr	x0, [sp, #168]
     e48:	f100001f 	cmp	x0, #0x0
     e4c:	5400024d 	b.le	e94 <run_steps.0.constprop.0+0x374>
     e50:	f9404be0 	ldr	x0, [sp, #144]
     e54:	f100041f 	cmp	x0, #0x1
     e58:	54002581 	b.ne	1308 <run_steps.0.constprop.0+0x7e8>  // b.any
     e5c:	b94117e0 	ldr	w0, [sp, #276]
     e60:	34002440 	cbz	w0, 12e8 <run_steps.0.constprop.0+0x7c8>
     e64:	f94087e2 	ldr	x2, [sp, #264]
     e68:	d2800000 	mov	x0, #0x0                   	// #0
     e6c:	d37cec01 	lsl	x1, x0, #4
     e70:	91000400 	add	x0, x0, #0x1
     e74:	3ca16afb 	str	q27, [x23, x1]
     e78:	eb02001f 	cmp	x0, x2
     e7c:	54ffff83 	b.cc	e6c <run_steps.0.constprop.0+0x34c>  // b.lo, b.ul, b.last
     e80:	f94057e1 	ldr	x1, [sp, #168]
     e84:	f94083e0 	ldr	x0, [sp, #256]
     e88:	eb01001f 	cmp	x0, x1
     e8c:	54000040 	b.eq	e94 <run_steps.0.constprop.0+0x374>  // b.none
     e90:	f8207aff 	str	xzr, [x23, x0, lsl #3]
     e94:	f9405fe0 	ldr	x0, [sp, #184]
     e98:	f100001f 	cmp	x0, #0x0
     e9c:	5400028d 	b.le	eec <run_steps.0.constprop.0+0x3cc>
     ea0:	f9405be0 	ldr	x0, [sp, #176]
     ea4:	f100041f 	cmp	x0, #0x1
     ea8:	540020e1 	b.ne	12c4 <run_steps.0.constprop.0+0x7a4>  // b.any
     eac:	b9412be0 	ldr	w0, [sp, #296]
     eb0:	34001fa0 	cbz	w0, 12a4 <run_steps.0.constprop.0+0x784>
     eb4:	f94037e2 	ldr	x2, [sp, #104]
     eb8:	d2800000 	mov	x0, #0x0                   	// #0
     ebc:	f94093e3 	ldr	x3, [sp, #288]
     ec0:	d37cec01 	lsl	x1, x0, #4
     ec4:	91000400 	add	x0, x0, #0x1
     ec8:	3ca1685b 	str	q27, [x2, x1]
     ecc:	eb03001f 	cmp	x0, x3
     ed0:	54ffff83 	b.cc	ec0 <run_steps.0.constprop.0+0x3a0>  // b.lo, b.ul, b.last
     ed4:	f9405fe0 	ldr	x0, [sp, #184]
     ed8:	f9408fe1 	ldr	x1, [sp, #280]
     edc:	eb00003f 	cmp	x1, x0
     ee0:	54000060 	b.eq	eec <run_steps.0.constprop.0+0x3cc>  // b.none
     ee4:	f94037e0 	ldr	x0, [sp, #104]
     ee8:	f821781f 	str	xzr, [x0, x1, lsl #3]
     eec:	f94063e1 	ldr	x1, [sp, #192]
     ef0:	a907ebf9 	stp	x25, x26, [sp, #120]
     ef4:	1e604396 	fmov	d22, d28
     ef8:	f94037e0 	ldr	x0, [sp, #104]
     efc:	f90047fb 	str	x27, [sp, #136]
     f00:	fd400035 	ldr	d21, [x1]
     f04:	d2800111 	mov	x17, #0x8                   	// #8
     f08:	f94067e1 	ldr	x1, [sp, #200]
     f0c:	aa0003f6 	mov	x22, x0
     f10:	a94967fa 	ldp	x26, x25, [sp, #144]
     f14:	928001f0 	mov	x16, #0xfffffffffffffff0    	// #-16
     f18:	fd400034 	ldr	d20, [x1]
     f1c:	d280005e 	mov	x30, #0x2                   	// #2
     f20:	f9406be1 	ldr	x1, [sp, #208]
     f24:	d280000f 	mov	x15, #0x0                   	// #0
     f28:	a9544ff2 	ldp	x18, x19, [sp, #320]
     f2c:	d280000e 	mov	x14, #0x0                   	// #0
     f30:	a95557f4 	ldp	x20, x21, [sp, #336]
     f34:	f9007fe0 	str	x0, [sp, #248]
     f38:	f940b3fb 	ldr	x27, [sp, #352]
     f3c:	fd4002f1 	ldr	d17, [x23]
     f40:	fd400312 	ldr	d18, [x24]
     f44:	fd400010 	ldr	d16, [x0]
     f48:	fd400033 	ldr	d19, [x1]
     f4c:	d503201f 	nop
     f50:	f94033e0 	ldr	x0, [sp, #96]
     f54:	8b110207 	add	x7, x16, x17
     f58:	8b070387 	add	x7, x28, x7
     f5c:	8b0f0f62 	add	x2, x27, x15, lsl #3
     f60:	aa1503e1 	mov	x1, x21
     f64:	aa1403e6 	mov	x6, x20
     f68:	8b0e0c03 	add	x3, x0, x14, lsl #3
     f6c:	aa1303e5 	mov	x5, x19
     f70:	aa1203e4 	mov	x4, x18
     f74:	aa1e03e0 	mov	x0, x30
     f78:	fd400083 	ldr	d3, [x4]
     f7c:	8b0b0084 	add	x4, x4, x11
     f80:	fd4000a2 	ldr	d2, [x5]
     f84:	8b0a00a5 	add	x5, x5, x10
     f88:	fd4000c1 	ldr	d1, [x6]
     f8c:	8b0900c6 	add	x6, x6, x9
     f90:	1e753863 	fsub	d3, d3, d21
     f94:	fc6078fd 	ldr	d29, [x7, x0, lsl #3]
     f98:	1e743842 	fsub	d2, d2, d20
     f9c:	fd400025 	ldr	d5, [x1]
     fa0:	1e733821 	fsub	d1, d1, d19
     fa4:	fd400046 	ldr	d6, [x2]
     fa8:	fd400067 	ldr	d7, [x3]
     fac:	91000400 	add	x0, x0, #0x1
     fb0:	1e630860 	fmul	d0, d3, d3
     fb4:	1e62085e 	fmul	d30, d2, d2
     fb8:	1e610824 	fmul	d4, d1, d1
     fbc:	1e7e2800 	fadd	d0, d0, d30
     fc0:	1e642800 	fadd	d0, d0, d4
     fc4:	1e782800 	fadd	d0, d0, d24
     fc8:	1e61c000 	fsqrt	d0, d0
     fcc:	1e601ae0 	fdiv	d0, d23, d0
     fd0:	1e600804 	fmul	d4, d0, d0
     fd4:	1e600880 	fmul	d0, d4, d0
     fd8:	1e760804 	fmul	d4, d0, d22
     fdc:	1e7d0800 	fmul	d0, d0, d29
     fe0:	1e64087e 	fmul	d30, d3, d4
     fe4:	1e64085d 	fmul	d29, d2, d4
     fe8:	1e640824 	fmul	d4, d1, d4
     fec:	1e600863 	fmul	d3, d3, d0
     ff0:	1e600842 	fmul	d2, d2, d0
     ff4:	1e600821 	fmul	d1, d1, d0
     ff8:	1e7e38e7 	fsub	d7, d7, d30
     ffc:	1e7d38c6 	fsub	d6, d6, d29
    1000:	1e6438a5 	fsub	d5, d5, d4
    1004:	1e632a52 	fadd	d18, d18, d3
    1008:	1e622a31 	fadd	d17, d17, d2
    100c:	1e612a10 	fadd	d16, d16, d1
    1010:	fd000046 	str	d6, [x2]
    1014:	8b0c0042 	add	x2, x2, x12
    1018:	fd000025 	str	d5, [x1]
    101c:	8b080021 	add	x1, x1, x8
    1020:	fd000067 	str	d7, [x3]
    1024:	8b0d0063 	add	x3, x3, x13
    1028:	7117741f 	cmp	w0, #0x5dd
    102c:	54fffa61 	b.ne	f78 <run_steps.0.constprop.0+0x458>  // b.any
    1030:	fc2e7b12 	str	d18, [x24, x14, lsl #3]
    1034:	8b1901ce 	add	x14, x14, x25
    1038:	fc2f7af1 	str	d17, [x23, x15, lsl #3]
    103c:	8b1a01ef 	add	x15, x15, x26
    1040:	d1002210 	sub	x16, x16, #0x8
    1044:	fd0002d0 	str	d16, [x22]
    1048:	910007de 	add	x30, x30, #0x1
    104c:	8b0802d6 	add	x22, x22, x8
    1050:	9285dce0 	mov	x0, #0xffffffffffffd118    	// #-12008
    1054:	fc716b96 	ldr	d22, [x28, x17]
    1058:	91002231 	add	x17, x17, #0x8
    105c:	fd400255 	ldr	d21, [x18]
    1060:	8b0b0252 	add	x18, x18, x11
    1064:	fd400274 	ldr	d20, [x19]
    1068:	8b0a0273 	add	x19, x19, x10
    106c:	fd400293 	ldr	d19, [x20]
    1070:	8b090294 	add	x20, x20, x9
    1074:	fd4002b0 	ldr	d16, [x21]
    1078:	8b0802b5 	add	x21, x21, x8
    107c:	fc6e7b12 	ldr	d18, [x24, x14, lsl #3]
    1080:	fc6f7af1 	ldr	d17, [x23, x15, lsl #3]
    1084:	eb00021f 	cmp	x16, x0
    1088:	54fff641 	b.ne	f50 <run_steps.0.constprop.0+0x430>  // b.any
    108c:	b94077e1 	ldr	w1, [sp, #116]
    1090:	d2800000 	mov	x0, #0x0                   	// #0
    1094:	a947ebf9 	ldp	x25, x26, [sp, #120]
    1098:	f94047fb 	ldr	x27, [sp, #136]
    109c:	35000741 	cbnz	w1, 1184 <run_steps.0.constprop.0+0x664>
    10a0:	f94037e1 	ldr	x1, [sp, #104]
    10a4:	d503201f 	nop
    10a8:	d285dc02 	mov	x2, #0x2ee0                	// #12000
    10ac:	3ce06b02 	ldr	q2, [x24, x0]
    10b0:	3ce06ae1 	ldr	q1, [x23, x0]
    10b4:	3ce06820 	ldr	q0, [x1, x0]
    10b8:	6e79dc42 	fmul	v2.2d, v2.2d, v25.2d
    10bc:	6e79dc21 	fmul	v1.2d, v1.2d, v25.2d
    10c0:	6e79dc00 	fmul	v0.2d, v0.2d, v25.2d
    10c4:	3ce06b25 	ldr	q5, [x25, x0]
    10c8:	3ce06b44 	ldr	q4, [x26, x0]
    10cc:	3ce06b63 	ldr	q3, [x27, x0]
    10d0:	4e65d442 	fadd	v2.2d, v2.2d, v5.2d
    10d4:	4e64d421 	fadd	v1.2d, v1.2d, v4.2d
    10d8:	4e63d400 	fadd	v0.2d, v0.2d, v3.2d
    10dc:	3ca06b22 	str	q2, [x25, x0]
    10e0:	3ca06b41 	str	q1, [x26, x0]
    10e4:	3ca06b60 	str	q0, [x27, x0]
    10e8:	91004000 	add	x0, x0, #0x10
    10ec:	eb02001f 	cmp	x0, x2
    10f0:	54fffdc1 	b.ne	10a8 <run_steps.0.constprop.0+0x588>  // b.any
    10f4:	b9412fe1 	ldr	w1, [sp, #300]
    10f8:	d2800000 	mov	x0, #0x0                   	// #0
    10fc:	350008a1 	cbnz	w1, 1210 <run_steps.0.constprop.0+0x6f0>
    1100:	a94c0be1 	ldp	x1, x2, [sp, #192]
    1104:	f9406be3 	ldr	x3, [sp, #208]
    1108:	d285dc04 	mov	x4, #0x2ee0                	// #12000
    110c:	3ce06b22 	ldr	q2, [x25, x0]
    1110:	3ce06b41 	ldr	q1, [x26, x0]
    1114:	3ce06b60 	ldr	q0, [x27, x0]
    1118:	6e79dc42 	fmul	v2.2d, v2.2d, v25.2d
    111c:	6e79dc21 	fmul	v1.2d, v1.2d, v25.2d
    1120:	6e79dc00 	fmul	v0.2d, v0.2d, v25.2d
    1124:	3ce06825 	ldr	q5, [x1, x0]
    1128:	3ce06844 	ldr	q4, [x2, x0]
    112c:	3ce06863 	ldr	q3, [x3, x0]
    1130:	4e65d442 	fadd	v2.2d, v2.2d, v5.2d
    1134:	4e64d421 	fadd	v1.2d, v1.2d, v4.2d
    1138:	4e63d400 	fadd	v0.2d, v0.2d, v3.2d
    113c:	3ca06822 	str	q2, [x1, x0]
    1140:	3ca06841 	str	q1, [x2, x0]
    1144:	3ca06860 	str	q0, [x3, x0]
    1148:	91004000 	add	x0, x0, #0x10
    114c:	eb04001f 	cmp	x0, x4
    1150:	54fffdc1 	b.ne	1108 <run_steps.0.constprop.0+0x5e8>  // b.any
    1154:	295e03e1 	ldp	w1, w0, [sp, #240]
    1158:	11000400 	add	w0, w0, #0x1
    115c:	b900f7e0 	str	w0, [sp, #244]
    1160:	6b00003f 	cmp	w1, w0
    1164:	54ffe48a 	b.ge	df4 <run_steps.0.constprop.0+0x2d4>  // b.tcont
    1168:	a94153f3 	ldp	x19, x20, [sp, #16]
    116c:	a9425bf5 	ldp	x21, x22, [sp, #32]
    1170:	a94363f7 	ldp	x23, x24, [sp, #48]
    1174:	a9446bf9 	ldp	x25, x26, [sp, #64]
    1178:	a94573fb 	ldp	x27, x28, [sp, #80]
    117c:	a8d87bfd 	ldp	x29, x30, [sp], #384
    1180:	d65f03c0 	ret
    1184:	a94dbbe7 	ldp	x7, x14, [sp, #216]
    1188:	aa1903e2 	mov	x2, x25
    118c:	f94077ef 	ldr	x15, [sp, #232]
    1190:	aa1a03e1 	mov	x1, x26
    1194:	f9407fe6 	ldr	x6, [sp, #248]
    1198:	aa1b03e0 	mov	x0, x27
    119c:	aa1703e5 	mov	x5, x23
    11a0:	aa1803e4 	mov	x4, x24
    11a4:	5280bb83 	mov	w3, #0x5dc                 	// #1500
    11a8:	fd400085 	ldr	d5, [x4]
    11ac:	71000463 	subs	w3, w3, #0x1
    11b0:	fd4000a4 	ldr	d4, [x5]
    11b4:	8b0d0084 	add	x4, x4, x13
    11b8:	fd4000c3 	ldr	d3, [x6]
    11bc:	8b0c00a5 	add	x5, x5, x12
    11c0:	1e7a08a5 	fmul	d5, d5, d26
    11c4:	fd400000 	ldr	d0, [x0]
    11c8:	1e7a0884 	fmul	d4, d4, d26
    11cc:	fd400021 	ldr	d1, [x1]
    11d0:	1e7a0863 	fmul	d3, d3, d26
    11d4:	fd400042 	ldr	d2, [x2]
    11d8:	8b0800c6 	add	x6, x6, x8
    11dc:	1e652842 	fadd	d2, d2, d5
    11e0:	1e642821 	fadd	d1, d1, d4
    11e4:	1e632800 	fadd	d0, d0, d3
    11e8:	fd000021 	str	d1, [x1]
    11ec:	8b0f0021 	add	x1, x1, x15
    11f0:	fd000000 	str	d0, [x0]
    11f4:	8b0e0000 	add	x0, x0, x14
    11f8:	fd000042 	str	d2, [x2]
    11fc:	8b070042 	add	x2, x2, x7
    1200:	54fffd41 	b.ne	11a8 <run_steps.0.constprop.0+0x688>  // b.any
    1204:	b9412fe1 	ldr	w1, [sp, #300]
    1208:	d2800000 	mov	x0, #0x0                   	// #0
    120c:	34fff7a1 	cbz	w1, 1100 <run_steps.0.constprop.0+0x5e0>
    1210:	a94c07e2 	ldp	x2, x1, [sp, #192]
    1214:	aa1903e6 	mov	x6, x25
    1218:	a94d1fe0 	ldp	x0, x7, [sp, #208]
    121c:	aa1a03e5 	mov	x5, x26
    1220:	a94e3fee 	ldp	x14, x15, [sp, #224]
    1224:	aa1b03e4 	mov	x4, x27
    1228:	5280bb83 	mov	w3, #0x5dc                 	// #1500
    122c:	d503201f 	nop
    1230:	fd400083 	ldr	d3, [x4]
    1234:	71000463 	subs	w3, w3, #0x1
    1238:	fd4000a4 	ldr	d4, [x5]
    123c:	8b0e0084 	add	x4, x4, x14
    1240:	fd4000c5 	ldr	d5, [x6]
    1244:	8b0f00a5 	add	x5, x5, x15
    1248:	1e7a0863 	fmul	d3, d3, d26
    124c:	fd400000 	ldr	d0, [x0]
    1250:	1e7a0884 	fmul	d4, d4, d26
    1254:	fd400021 	ldr	d1, [x1]
    1258:	1e7a08a5 	fmul	d5, d5, d26
    125c:	fd400042 	ldr	d2, [x2]
    1260:	8b0700c6 	add	x6, x6, x7
    1264:	1e632800 	fadd	d0, d0, d3
    1268:	1e642821 	fadd	d1, d1, d4
    126c:	1e652842 	fadd	d2, d2, d5
    1270:	fd000000 	str	d0, [x0]
    1274:	8b090000 	add	x0, x0, x9
    1278:	fd000021 	str	d1, [x1]
    127c:	8b0a0021 	add	x1, x1, x10
    1280:	fd000042 	str	d2, [x2]
    1284:	8b0b0042 	add	x2, x2, x11
    1288:	54fffd41 	b.ne	1230 <run_steps.0.constprop.0+0x710>  // b.any
    128c:	295e03e1 	ldp	w1, w0, [sp, #240]
    1290:	11000400 	add	w0, w0, #0x1
    1294:	b900f7e0 	str	w0, [sp, #244]
    1298:	6b00003f 	cmp	w1, w0
    129c:	54ffdaca 	b.ge	df4 <run_steps.0.constprop.0+0x2d4>  // b.tcont
    12a0:	17ffffb2 	b	1168 <run_steps.0.constprop.0+0x648>
    12a4:	f9405be0 	ldr	x0, [sp, #176]
    12a8:	f940bfe1 	ldr	x1, [sp, #376]
    12ac:	f820783f 	str	xzr, [x1, x0, lsl #3]
    12b0:	91000400 	add	x0, x0, #0x1
    12b4:	f9405fe1 	ldr	x1, [sp, #184]
    12b8:	eb00003f 	cmp	x1, x0
    12bc:	54ffff6a 	b.ge	12a8 <run_steps.0.constprop.0+0x788>  // b.tcont
    12c0:	17ffff0b 	b	eec <run_steps.0.constprop.0+0x3cc>
    12c4:	f94037e1 	ldr	x1, [sp, #104]
    12c8:	d2800020 	mov	x0, #0x1                   	// #1
    12cc:	f9405fe2 	ldr	x2, [sp, #184]
    12d0:	91000400 	add	x0, x0, #0x1
    12d4:	f900003f 	str	xzr, [x1]
    12d8:	8b080021 	add	x1, x1, x8
    12dc:	eb00005f 	cmp	x2, x0
    12e0:	54ffff6a 	b.ge	12cc <run_steps.0.constprop.0+0x7ac>  // b.tcont
    12e4:	17ffff02 	b	eec <run_steps.0.constprop.0+0x3cc>
    12e8:	f9404be0 	ldr	x0, [sp, #144]
    12ec:	f940bbe1 	ldr	x1, [sp, #368]
    12f0:	f820783f 	str	xzr, [x1, x0, lsl #3]
    12f4:	91000400 	add	x0, x0, #0x1
    12f8:	f94057e1 	ldr	x1, [sp, #168]
    12fc:	eb00003f 	cmp	x1, x0
    1300:	54ffff6a 	b.ge	12ec <run_steps.0.constprop.0+0x7cc>  // b.tcont
    1304:	17fffee4 	b	e94 <run_steps.0.constprop.0+0x374>
    1308:	aa1703e1 	mov	x1, x23
    130c:	d2800020 	mov	x0, #0x1                   	// #1
    1310:	f94057e2 	ldr	x2, [sp, #168]
    1314:	91000400 	add	x0, x0, #0x1
    1318:	f900003f 	str	xzr, [x1]
    131c:	8b0c0021 	add	x1, x1, x12
    1320:	eb00005f 	cmp	x2, x0
    1324:	54ffff6a 	b.ge	1310 <run_steps.0.constprop.0+0x7f0>  // b.tcont
    1328:	17fffedb 	b	e94 <run_steps.0.constprop.0+0x374>
    132c:	f9404fe0 	ldr	x0, [sp, #152]
    1330:	f940b7e1 	ldr	x1, [sp, #360]
    1334:	f820783f 	str	xzr, [x1, x0, lsl #3]
    1338:	91000400 	add	x0, x0, #0x1
    133c:	f94053e1 	ldr	x1, [sp, #160]
    1340:	eb00003f 	cmp	x1, x0
    1344:	54ffff6a 	b.ge	1330 <run_steps.0.constprop.0+0x810>  // b.tcont
    1348:	17fffebf 	b	e44 <run_steps.0.constprop.0+0x324>
    134c:	aa1803e1 	mov	x1, x24
    1350:	d2800020 	mov	x0, #0x1                   	// #1
    1354:	f94053e2 	ldr	x2, [sp, #160]
    1358:	91000400 	add	x0, x0, #0x1
    135c:	f900003f 	str	xzr, [x1]
    1360:	8b0d0021 	add	x1, x1, x13
    1364:	eb00005f 	cmp	x2, x0
    1368:	54ffff6a 	b.ge	1354 <run_steps.0.constprop.0+0x834>  // b.tcont
    136c:	17fffeb6 	b	e44 <run_steps.0.constprop.0+0x324>

0000000000001370 <MAIN__>:
    1370:	d116c3ff 	sub	sp, sp, #0x5b0
    1374:	d285dc00 	mov	x0, #0x2ee0                	// #12000
    1378:	a9027bfd 	stp	x29, x30, [sp, #32]
    137c:	910083fd 	add	x29, sp, #0x20
    1380:	a90353f3 	stp	x19, x20, [sp, #48]
    1384:	a9045bf5 	stp	x21, x22, [sp, #64]
    1388:	a90563f7 	stp	x23, x24, [sp, #80]
    138c:	a9066bf9 	stp	x25, x26, [sp, #96]
    1390:	a90773fb 	stp	x27, x28, [sp, #112]
    1394:	5280603c 	mov	w28, #0x301                 	// #769
    1398:	fd0043e8 	str	d8, [sp, #128]
    139c:	7904fbfc 	strh	w28, [sp, #636]
    13a0:	97fffd70 	bl	960 <malloc@plt>
    13a4:	f90133e0 	str	x0, [sp, #608]
    13a8:	b4002580 	cbz	x0, 1858 <MAIN__+0x4e8>
    13ac:	aa0003fa 	mov	x26, x0
    13b0:	d2800033 	mov	x19, #0x1                   	// #1
    13b4:	d285dc00 	mov	x0, #0x2ee0                	// #12000
    13b8:	79047bfc 	strh	w28, [sp, #572]
    13bc:	f90147f3 	str	x19, [sp, #648]
    13c0:	97fffd68 	bl	960 <malloc@plt>
    13c4:	f90113e0 	str	x0, [sp, #544]
    13c8:	aa0003f9 	mov	x25, x0
    13cc:	b4002460 	cbz	x0, 1858 <MAIN__+0x4e8>
    13d0:	d285dc00 	mov	x0, #0x2ee0                	// #12000
    13d4:	7903fbfc 	strh	w28, [sp, #508]
    13d8:	f90127f3 	str	x19, [sp, #584]
    13dc:	97fffd61 	bl	960 <malloc@plt>
    13e0:	f900f3e0 	str	x0, [sp, #480]
    13e4:	aa0003f8 	mov	x24, x0
    13e8:	b4002380 	cbz	x0, 1858 <MAIN__+0x4e8>
    13ec:	d285dc00 	mov	x0, #0x2ee0                	// #12000
    13f0:	f90107f3 	str	x19, [sp, #520]
    13f4:	79067bfc 	strh	w28, [sp, #828]
    13f8:	97fffd5a 	bl	960 <malloc@plt>
    13fc:	f90193e0 	str	x0, [sp, #800]
    1400:	aa0003f7 	mov	x23, x0
    1404:	b40024e0 	cbz	x0, 18a0 <MAIN__+0x530>
    1408:	d285dc00 	mov	x0, #0x2ee0                	// #12000
    140c:	7905fbfc 	strh	w28, [sp, #764]
    1410:	f901a7f3 	str	x19, [sp, #840]
    1414:	97fffd53 	bl	960 <malloc@plt>
    1418:	f90173e0 	str	x0, [sp, #736]
    141c:	aa0003f6 	mov	x22, x0
    1420:	b4002400 	cbz	x0, 18a0 <MAIN__+0x530>
    1424:	d285dc00 	mov	x0, #0x2ee0                	// #12000
    1428:	79057bfc 	strh	w28, [sp, #700]
    142c:	f90187f3 	str	x19, [sp, #776]
    1430:	97fffd4c 	bl	960 <malloc@plt>
    1434:	f90153e0 	str	x0, [sp, #672]
    1438:	aa0003f5 	mov	x21, x0
    143c:	b4002320 	cbz	x0, 18a0 <MAIN__+0x530>
    1440:	d285dc00 	mov	x0, #0x2ee0                	// #12000
    1444:	f90167f3 	str	x19, [sp, #712]
    1448:	7906fbfc 	strh	w28, [sp, #892]
    144c:	97fffd45 	bl	960 <malloc@plt>
    1450:	f901b3e0 	str	x0, [sp, #864]
    1454:	aa0003fb 	mov	x27, x0
    1458:	b4002180 	cbz	x0, 1888 <MAIN__+0x518>
    145c:	d285dc00 	mov	x0, #0x2ee0                	// #12000
    1460:	79037bfc 	strh	w28, [sp, #444]
    1464:	97fffd3f 	bl	960 <malloc@plt>
    1468:	f900d3e0 	str	x0, [sp, #416]
    146c:	aa0003f4 	mov	x20, x0
    1470:	b4002000 	cbz	x0, 1870 <MAIN__+0x500>
    1474:	90000000 	adrp	x0, 1000 <run_steps.0.constprop.0+0x4e0>
    1478:	910983e1 	add	x1, sp, #0x260
    147c:	d280bb93 	mov	x19, #0x5dc                 	// #1500
    1480:	7902fbfc 	strh	w28, [sp, #380]
    1484:	3dc27c00 	ldr	q0, [x0, #2544]
    1488:	d285dc00 	mov	x0, #0x2ee0                	// #12000
    148c:	f900eff3 	str	x19, [sp, #472]
    1490:	3c968020 	stur	q0, [x1, #-152]
    1494:	97fffd33 	bl	960 <malloc@plt>
    1498:	f9004fe0 	str	x0, [sp, #152]
    149c:	f900b3e0 	str	x0, [sp, #352]
    14a0:	b4001e80 	cbz	x0, 1870 <MAIN__+0x500>
    14a4:	90000002 	adrp	x2, 1000 <run_steps.0.constprop.0+0x4e0>
    14a8:	910983e1 	add	x1, sp, #0x260
    14ac:	d285dc00 	mov	x0, #0x2ee0                	// #12000
    14b0:	79027bfc 	strh	w28, [sp, #316]
    14b4:	3dc27c40 	ldr	q0, [x2, #2544]
    14b8:	f900cff3 	str	x19, [sp, #408]
    14bc:	3c928020 	stur	q0, [x1, #-216]
    14c0:	97fffd28 	bl	960 <malloc@plt>
    14c4:	aa0003fc 	mov	x28, x0
    14c8:	f90093e0 	str	x0, [sp, #288]
    14cc:	b4001d20 	cbz	x0, 1870 <MAIN__+0x500>
    14d0:	90000000 	adrp	x0, 1000 <run_steps.0.constprop.0+0x4e0>
    14d4:	d28fe5a2 	mov	x2, #0x7f2d                	// #32557
    14d8:	90000003 	adrp	x3, 1000 <run_steps.0.constprop.0+0x4e0>
    14dc:	f2a992a2 	movk	x2, #0x4c95, lsl #16
    14e0:	3dc27c00 	ldr	q0, [x0, #2544]
    14e4:	d2e79401 	mov	x1, #0x3ca0000000000000    	// #4368491638549381120
    14e8:	910803e4 	add	x4, sp, #0x200
    14ec:	f2de85a2 	movk	x2, #0xf42d, lsl #32
    14f0:	fd450467 	ldr	d7, [x3, #2568]
    14f4:	9e670025 	fmov	d5, x1
    14f8:	d2800000 	mov	x0, #0x0                   	// #0
    14fc:	d2800021 	mov	x1, #0x1                   	// #1
    1500:	f2eb0a22 	movk	x2, #0x5851, lsl #48
    1504:	1e6e1006 	fmov	d6, #1.000000000000000000e+00
    1508:	1e6c1010 	fmov	d16, #5.000000000000000000e-01
    150c:	d285dc03 	mov	x3, #0x2ee0                	// #12000
    1510:	f900aff3 	str	x19, [sp, #344]
    1514:	3c948080 	stur	q0, [x4, #-184]
    1518:	9b027c21 	mul	x1, x1, x2
    151c:	91000421 	add	x1, x1, #0x1
    1520:	9e670020 	fmov	d0, x1
    1524:	7f750400 	ushr	d0, d0, #11
    1528:	9b027c21 	mul	x1, x1, x2
    152c:	91000421 	add	x1, x1, #0x1
    1530:	9e670021 	fmov	d1, x1
    1534:	5e61d800 	scvtf	d0, d0
    1538:	7f750422 	ushr	d2, d1, #11
    153c:	9b027c21 	mul	x1, x1, x2
    1540:	91000421 	add	x1, x1, #0x1
    1544:	1e650800 	fmul	d0, d0, d5
    1548:	9e670021 	fmov	d1, x1
    154c:	5e61d842 	scvtf	d2, d2
    1550:	9b027c21 	mul	x1, x1, x2
    1554:	7f750421 	ushr	d1, d1, #11
    1558:	1e602804 	fadd	d4, d0, d0
    155c:	91000421 	add	x1, x1, #0x1
    1560:	9e670020 	fmov	d0, x1
    1564:	1e650842 	fmul	d2, d2, d5
    1568:	7f750400 	ushr	d0, d0, #11
    156c:	5e61d821 	scvtf	d1, d1
    1570:	9b027c21 	mul	x1, x1, x2
    1574:	1e663884 	fsub	d4, d4, d6
    1578:	91000421 	add	x1, x1, #0x1
    157c:	1e622843 	fadd	d3, d2, d2
    1580:	5e61d800 	scvtf	d0, d0
    1584:	9e670022 	fmov	d2, x1
    1588:	1e650821 	fmul	d1, d1, d5
    158c:	fc206b44 	str	d4, [x26, x0]
    1590:	9b027c21 	mul	x1, x1, x2
    1594:	7f750442 	ushr	d2, d2, #11
    1598:	1e663863 	fsub	d3, d3, d6
    159c:	91000421 	add	x1, x1, #0x1
    15a0:	1e650800 	fmul	d0, d0, d5
    15a4:	1e612824 	fadd	d4, d1, d1
    15a8:	9e670021 	fmov	d1, x1
    15ac:	5e61d842 	scvtf	d2, d2
    15b0:	9b027c21 	mul	x1, x1, x2
    15b4:	fc206b23 	str	d3, [x25, x0]
    15b8:	1e602803 	fadd	d3, d0, d0
    15bc:	7f750421 	ushr	d1, d1, #11
    15c0:	91000421 	add	x1, x1, #0x1
    15c4:	9e670020 	fmov	d0, x1
    15c8:	1e650842 	fmul	d2, d2, d5
    15cc:	1e663884 	fsub	d4, d4, d6
    15d0:	7f750400 	ushr	d0, d0, #11
    15d4:	5e61d821 	scvtf	d1, d1
    15d8:	1e663863 	fsub	d3, d3, d6
    15dc:	1e622842 	fadd	d2, d2, d2
    15e0:	fc206b04 	str	d4, [x24, x0]
    15e4:	5e61d800 	scvtf	d0, d0
    15e8:	1e650821 	fmul	d1, d1, d5
    15ec:	1e670863 	fmul	d3, d3, d7
    15f0:	1e663842 	fsub	d2, d2, d6
    15f4:	1e650800 	fmul	d0, d0, d5
    15f8:	1e612821 	fadd	d1, d1, d1
    15fc:	fc206ae3 	str	d3, [x23, x0]
    1600:	1e670842 	fmul	d2, d2, d7
    1604:	1e602800 	fadd	d0, d0, d0
    1608:	1e663821 	fsub	d1, d1, d6
    160c:	fc206ac2 	str	d2, [x22, x0]
    1610:	7ee6d400 	fabd	d0, d0, d6
    1614:	1e670821 	fmul	d1, d1, d7
    1618:	1e702800 	fadd	d0, d0, d16
    161c:	fc206aa1 	str	d1, [x21, x0]
    1620:	fc206b60 	str	d0, [x27, x0]
    1624:	91002000 	add	x0, x0, #0x8
    1628:	eb03001f 	cmp	x0, x3
    162c:	54fff761 	b.ne	1518 <MAIN__+0x1a8>  // b.any
    1630:	910983e8 	add	x8, sp, #0x260
    1634:	910483ea 	add	x10, sp, #0x120
    1638:	910583ec 	add	x12, sp, #0x160
    163c:	910683ed 	add	x13, sp, #0x1a0
    1640:	910883e9 	add	x9, sp, #0x220
    1644:	9000000b 	adrp	x11, 1000 <run_steps.0.constprop.0+0x4e0>
    1648:	9128616b 	add	x11, x11, #0xa18
    164c:	910d83e7 	add	x7, sp, #0x360
    1650:	910a83e6 	add	x6, sp, #0x2a0
    1654:	910b83e5 	add	x5, sp, #0x2e0
    1658:	910c83e4 	add	x4, sp, #0x320
    165c:	910783e3 	add	x3, sp, #0x1e0
    1660:	a90033ed 	stp	x13, x12, [sp]
    1664:	aa0803f3 	mov	x19, x8
    1668:	aa0803e1 	mov	x1, x8
    166c:	f9000bea 	str	x10, [sp, #16]
    1670:	aa0b03e0 	mov	x0, x11
    1674:	aa0903e2 	mov	x2, x9
    1678:	a90a2fe9 	stp	x9, x11, [sp, #160]
    167c:	a90b33ea 	stp	x10, x12, [sp, #176]
    1680:	a90c0fed 	stp	x13, x3, [sp, #192]
    1684:	a90d17e4 	stp	x4, x5, [sp, #208]
    1688:	a90e1fe6 	stp	x6, x7, [sp, #224]
    168c:	97fffd25 	bl	b20 <run_steps.0.constprop.0>
    1690:	910443e1 	add	x1, sp, #0x110
    1694:	910423e0 	add	x0, sp, #0x108
    1698:	d2800002 	mov	x2, #0x0                   	// #0
    169c:	97fffc9d 	bl	910 <_gfortran_system_clock_8@plt>
    16a0:	a94a2fe9 	ldp	x9, x11, [sp, #160]
    16a4:	aa1303e1 	mov	x1, x19
    16a8:	a94b33ea 	ldp	x10, x12, [sp, #176]
    16ac:	f9000bea 	str	x10, [sp, #16]
    16b0:	a94c0fed 	ldp	x13, x3, [sp, #192]
    16b4:	a90033ed 	stp	x13, x12, [sp]
    16b8:	91001160 	add	x0, x11, #0x4
    16bc:	a94d17e4 	ldp	x4, x5, [sp, #208]
    16c0:	aa0903e2 	mov	x2, x9
    16c4:	a94e1fe6 	ldp	x6, x7, [sp, #224]
    16c8:	fd408be8 	ldr	d8, [sp, #272]
    16cc:	f94087f3 	ldr	x19, [sp, #264]
    16d0:	97fffd14 	bl	b20 <run_steps.0.constprop.0>
    16d4:	910463e0 	add	x0, sp, #0x118
    16d8:	d2800002 	mov	x2, #0x0                   	// #0
    16dc:	d2800001 	mov	x1, #0x0                   	// #0
    16e0:	97fffc8c 	bl	910 <_gfortran_system_clock_8@plt>
    16e4:	f9408fe2 	ldr	x2, [sp, #280]
    16e8:	5e61d903 	scvtf	d3, d8
    16ec:	d2c80000 	mov	x0, #0x400000000000        	// #70368744177664
    16f0:	2f00e400 	movi	d0, #0x0
    16f4:	cb130042 	sub	x2, x2, x19
    16f8:	f2e811e0 	movk	x0, #0x408f, lsl #48
    16fc:	9e670002 	fmov	d2, x0
    1700:	d285dc01 	mov	x1, #0x2ee0                	// #12000
    1704:	9e620041 	scvtf	d1, x2
    1708:	d2800000 	mov	x0, #0x0                   	// #0
    170c:	1e631821 	fdiv	d1, d1, d3
    1710:	1e620821 	fmul	d1, d1, d2
    1714:	fd007fe1 	str	d1, [sp, #248]
    1718:	fc606b41 	ldr	d1, [x26, x0]
    171c:	fc606b25 	ldr	d5, [x25, x0]
    1720:	fc606b04 	ldr	d4, [x24, x0]
    1724:	1e612800 	fadd	d0, d0, d1
    1728:	fc606ae3 	ldr	d3, [x23, x0]
    172c:	fc606ac2 	ldr	d2, [x22, x0]
    1730:	fc606aa1 	ldr	d1, [x21, x0]
    1734:	91002000 	add	x0, x0, #0x8
    1738:	1e652800 	fadd	d0, d0, d5
    173c:	1e642800 	fadd	d0, d0, d4
    1740:	1e632800 	fadd	d0, d0, d3
    1744:	1e622800 	fadd	d0, d0, d2
    1748:	1e612800 	fadd	d0, d0, d1
    174c:	eb01001f 	cmp	x0, x1
    1750:	54fffe41 	b.ne	1718 <MAIN__+0x3a8>  // b.any
    1754:	90000000 	adrp	x0, 1000 <run_steps.0.constprop.0+0x4e0>
    1758:	90000002 	adrp	x2, 1000 <run_steps.0.constprop.0+0x4e0>
    175c:	90000001 	adrp	x1, 1000 <run_steps.0.constprop.0+0x4e0>
    1760:	91266042 	add	x2, x2, #0x998
    1764:	fd450801 	ldr	d1, [x0, #2576]
    1768:	9126a021 	add	x1, x1, #0x9a8
    176c:	528006c4 	mov	w4, #0x36                  	// #54
    1770:	d28001e3 	mov	x3, #0xf                   	// #15
    1774:	910e83e0 	add	x0, sp, #0x3a0
    1778:	fd0083e0 	str	d0, [sp, #256]
    177c:	aa0003f3 	mov	x19, x0
    1780:	fd01d3e1 	str	d1, [sp, #928]
    1784:	f901d7e2 	str	x2, [sp, #936]
    1788:	b903b3e4 	str	w4, [sp, #944]
    178c:	f901fbe1 	str	x1, [sp, #1008]
    1790:	f901ffe3 	str	x3, [sp, #1016]
    1794:	97fffc83 	bl	9a0 <_gfortran_st_write@plt>
    1798:	aa1303e0 	mov	x0, x19
    179c:	d2800162 	mov	x2, #0xb                   	// #11
    17a0:	90000001 	adrp	x1, 1000 <run_steps.0.constprop.0+0x4e0>
    17a4:	9126e021 	add	x1, x1, #0x9b8
    17a8:	97fffc62 	bl	930 <_gfortran_transfer_character_write@plt>
    17ac:	aa1303e0 	mov	x0, x19
    17b0:	9103e3e1 	add	x1, sp, #0xf8
    17b4:	52800102 	mov	w2, #0x8                   	// #8
    17b8:	97fffc4a 	bl	8e0 <_gfortran_transfer_real_write@plt>
    17bc:	aa1303e0 	mov	x0, x19
    17c0:	d2800142 	mov	x2, #0xa                   	// #10
    17c4:	90000001 	adrp	x1, 1000 <run_steps.0.constprop.0+0x4e0>
    17c8:	91272021 	add	x1, x1, #0x9c8
    17cc:	97fffc59 	bl	930 <_gfortran_transfer_character_write@plt>
    17d0:	910403e1 	add	x1, sp, #0x100
    17d4:	52800102 	mov	w2, #0x8                   	// #8
    17d8:	aa1303e0 	mov	x0, x19
    17dc:	97fffc41 	bl	8e0 <_gfortran_transfer_real_write@plt>
    17e0:	aa1303e0 	mov	x0, x19
    17e4:	97fffc5b 	bl	950 <_gfortran_st_write_done@plt>
    17e8:	aa1a03e0 	mov	x0, x26
    17ec:	97fffc69 	bl	990 <free@plt>
    17f0:	aa1903e0 	mov	x0, x25
    17f4:	97fffc67 	bl	990 <free@plt>
    17f8:	aa1803e0 	mov	x0, x24
    17fc:	97fffc65 	bl	990 <free@plt>
    1800:	aa1703e0 	mov	x0, x23
    1804:	97fffc63 	bl	990 <free@plt>
    1808:	aa1603e0 	mov	x0, x22
    180c:	97fffc61 	bl	990 <free@plt>
    1810:	aa1503e0 	mov	x0, x21
    1814:	97fffc5f 	bl	990 <free@plt>
    1818:	aa1b03e0 	mov	x0, x27
    181c:	97fffc5d 	bl	990 <free@plt>
    1820:	aa1403e0 	mov	x0, x20
    1824:	97fffc5b 	bl	990 <free@plt>
    1828:	f9404fe0 	ldr	x0, [sp, #152]
    182c:	97fffc59 	bl	990 <free@plt>
    1830:	aa1c03e0 	mov	x0, x28
    1834:	fd4043e8 	ldr	d8, [sp, #128]
    1838:	a9427bfd 	ldp	x29, x30, [sp, #32]
    183c:	a94353f3 	ldp	x19, x20, [sp, #48]
    1840:	a9445bf5 	ldp	x21, x22, [sp, #64]
    1844:	a94563f7 	ldp	x23, x24, [sp, #80]
    1848:	a9466bf9 	ldp	x25, x26, [sp, #96]
    184c:	a94773fb 	ldp	x27, x28, [sp, #112]
    1850:	9116c3ff 	add	sp, sp, #0x5b0
    1854:	17fffc4f 	b	990 <free@plt>
    1858:	90000001 	adrp	x1, 1000 <run_steps.0.constprop.0+0x4e0>
    185c:	90000000 	adrp	x0, 1000 <run_steps.0.constprop.0+0x4e0>
    1860:	91236021 	add	x1, x1, #0x8d8
    1864:	9123e000 	add	x0, x0, #0x8f8
    1868:	d285dc02 	mov	x2, #0x2ee0                	// #12000
    186c:	97fffc35 	bl	940 <_gfortran_os_error_at@plt>
    1870:	90000001 	adrp	x1, 1000 <run_steps.0.constprop.0+0x4e0>
    1874:	90000000 	adrp	x0, 1000 <run_steps.0.constprop.0+0x4e0>
    1878:	91236021 	add	x1, x1, #0x8d8
    187c:	9125c000 	add	x0, x0, #0x970
    1880:	d285dc02 	mov	x2, #0x2ee0                	// #12000
    1884:	97fffc2f 	bl	940 <_gfortran_os_error_at@plt>
    1888:	90000001 	adrp	x1, 1000 <run_steps.0.constprop.0+0x4e0>
    188c:	90000000 	adrp	x0, 1000 <run_steps.0.constprop.0+0x4e0>
    1890:	91236021 	add	x1, x1, #0x8d8
    1894:	91252000 	add	x0, x0, #0x948
    1898:	d285dc02 	mov	x2, #0x2ee0                	// #12000
    189c:	97fffc29 	bl	940 <_gfortran_os_error_at@plt>
    18a0:	90000001 	adrp	x1, 1000 <run_steps.0.constprop.0+0x4e0>
    18a4:	90000000 	adrp	x0, 1000 <run_steps.0.constprop.0+0x4e0>
    18a8:	91236021 	add	x1, x1, #0x8d8
    18ac:	91248000 	add	x0, x0, #0x920
    18b0:	d285dc02 	mov	x2, #0x2ee0                	// #12000
    18b4:	97fffc23 	bl	940 <_gfortran_os_error_at@plt>

Disassembly of section .fini:

00000000000018b8 <_fini>:
    18b8:	d503201f 	nop
    18bc:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    18c0:	910003fd 	mov	x29, sp
    18c4:	a8c17bfd 	ldp	x29, x30, [sp], #16
    18c8:	d65f03c0 	ret
