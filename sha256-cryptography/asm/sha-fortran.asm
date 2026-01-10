
/bench/bench:     file format elf64-littleaarch64


Disassembly of section .init:

0000000000000818 <_init>:
 818:	d503201f 	nop
 81c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 820:	910003fd 	mov	x29, sp
 824:	94000064 	bl	9b4 <call_weak_fn>
 828:	a8c17bfd 	ldp	x29, x30, [sp], #16
 82c:	d65f03c0 	ret

Disassembly of section .plt:

0000000000000830 <.plt>:
 830:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
 834:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfaac>
 838:	f947b611 	ldr	x17, [x16, #3944]
 83c:	913da210 	add	x16, x16, #0xf68
 840:	d61f0220 	br	x17
 844:	d503201f 	nop
 848:	d503201f 	nop
 84c:	d503201f 	nop

0000000000000850 <_gfortran_transfer_real_write@plt>:
 850:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfaac>
 854:	f947ba11 	ldr	x17, [x16, #3952]
 858:	913dc210 	add	x16, x16, #0xf70
 85c:	d61f0220 	br	x17

0000000000000860 <__gmon_start__@plt>:
 860:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfaac>
 864:	f947be11 	ldr	x17, [x16, #3960]
 868:	913de210 	add	x16, x16, #0xf78
 86c:	d61f0220 	br	x17

0000000000000870 <_gfortran_cpu_time_8@plt>:
 870:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfaac>
 874:	f947c211 	ldr	x17, [x16, #3968]
 878:	913e0210 	add	x16, x16, #0xf80
 87c:	d61f0220 	br	x17

0000000000000880 <_gfortran_transfer_integer_write@plt>:
 880:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfaac>
 884:	f947c611 	ldr	x17, [x16, #3976]
 888:	913e2210 	add	x16, x16, #0xf88
 88c:	d61f0220 	br	x17

0000000000000890 <__cxa_finalize@plt>:
 890:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfaac>
 894:	f947ca11 	ldr	x17, [x16, #3984]
 898:	913e4210 	add	x16, x16, #0xf90
 89c:	d61f0220 	br	x17

00000000000008a0 <abort@plt>:
 8a0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfaac>
 8a4:	f947ce11 	ldr	x17, [x16, #3992]
 8a8:	913e6210 	add	x16, x16, #0xf98
 8ac:	d61f0220 	br	x17

00000000000008b0 <_gfortran_transfer_character_write@plt>:
 8b0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfaac>
 8b4:	f947d211 	ldr	x17, [x16, #4000]
 8b8:	913e8210 	add	x16, x16, #0xfa0
 8bc:	d61f0220 	br	x17

00000000000008c0 <_gfortran_st_write_done@plt>:
 8c0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfaac>
 8c4:	f947d611 	ldr	x17, [x16, #4008]
 8c8:	913ea210 	add	x16, x16, #0xfa8
 8cc:	d61f0220 	br	x17

00000000000008d0 <_gfortran_set_options@plt>:
 8d0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfaac>
 8d4:	f947da11 	ldr	x17, [x16, #4016]
 8d8:	913ec210 	add	x16, x16, #0xfb0
 8dc:	d61f0220 	br	x17

00000000000008e0 <_gfortran_set_args@plt>:
 8e0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfaac>
 8e4:	f947de11 	ldr	x17, [x16, #4024]
 8e8:	913ee210 	add	x16, x16, #0xfb8
 8ec:	d61f0220 	br	x17

00000000000008f0 <_gfortran_st_write@plt>:
 8f0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfaac>
 8f4:	f947e211 	ldr	x17, [x16, #4032]
 8f8:	913f0210 	add	x16, x16, #0xfc0
 8fc:	d61f0220 	br	x17

0000000000000900 <__libc_start_main@plt>:
 900:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xfaac>
 904:	f947e611 	ldr	x17, [x16, #4040]
 908:	913f2210 	add	x16, x16, #0xfc8
 90c:	d61f0220 	br	x17

Disassembly of section .text:

0000000000000940 <main>:
     940:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
     944:	910003fd 	mov	x29, sp
     948:	97ffffe6 	bl	8e0 <_gfortran_set_args@plt>
     94c:	b0000001 	adrp	x1, 1000 <MAIN__+0x1d0>
     950:	910a4021 	add	x1, x1, #0x290
     954:	9104e021 	add	x1, x1, #0x138
     958:	528000e0 	mov	w0, #0x7                   	// #7
     95c:	97ffffdd 	bl	8d0 <_gfortran_set_options@plt>
     960:	94000134 	bl	e30 <MAIN__>
     964:	52800000 	mov	w0, #0x0                   	// #0
     968:	a8c17bfd 	ldp	x29, x30, [sp], #16
     96c:	d65f03c0 	ret
     970:	d503201f 	nop
     974:	d503201f 	nop
     978:	d503201f 	nop
     97c:	d503201f 	nop

0000000000000980 <_start>:
     980:	d503201f 	nop
     984:	d280001d 	mov	x29, #0x0                   	// #0
     988:	d280001e 	mov	x30, #0x0                   	// #0
     98c:	aa0003e5 	mov	x5, x0
     990:	f94003e1 	ldr	x1, [sp]
     994:	910023e2 	add	x2, sp, #0x8
     998:	910003e6 	mov	x6, sp
     99c:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xfaac>
     9a0:	f947fc00 	ldr	x0, [x0, #4088]
     9a4:	d2800003 	mov	x3, #0x0                   	// #0
     9a8:	d2800004 	mov	x4, #0x0                   	// #0
     9ac:	97ffffd5 	bl	900 <__libc_start_main@plt>
     9b0:	97ffffbc 	bl	8a0 <abort@plt>

00000000000009b4 <call_weak_fn>:
     9b4:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xfaac>
     9b8:	f947ec00 	ldr	x0, [x0, #4056]
     9bc:	b4000040 	cbz	x0, 9c4 <call_weak_fn+0x10>
     9c0:	17ffffa8 	b	860 <__gmon_start__@plt>
     9c4:	d65f03c0 	ret
     9c8:	d503201f 	nop
     9cc:	d503201f 	nop

00000000000009d0 <deregister_tm_clones>:
     9d0:	d0000080 	adrp	x0, 12000 <__data_start>
     9d4:	91004000 	add	x0, x0, #0x10
     9d8:	d0000081 	adrp	x1, 12000 <__data_start>
     9dc:	91004021 	add	x1, x1, #0x10
     9e0:	eb00003f 	cmp	x1, x0
     9e4:	540000c0 	b.eq	9fc <deregister_tm_clones+0x2c>  // b.none
     9e8:	b0000081 	adrp	x1, 11000 <__FRAME_END__+0xfaac>
     9ec:	f947f421 	ldr	x1, [x1, #4072]
     9f0:	b4000061 	cbz	x1, 9fc <deregister_tm_clones+0x2c>
     9f4:	aa0103f0 	mov	x16, x1
     9f8:	d61f0200 	br	x16
     9fc:	d65f03c0 	ret

0000000000000a00 <register_tm_clones>:
     a00:	d0000080 	adrp	x0, 12000 <__data_start>
     a04:	91004000 	add	x0, x0, #0x10
     a08:	d0000081 	adrp	x1, 12000 <__data_start>
     a0c:	91004021 	add	x1, x1, #0x10
     a10:	cb000021 	sub	x1, x1, x0
     a14:	d37ffc22 	lsr	x2, x1, #63
     a18:	8b810c41 	add	x1, x2, x1, asr #3
     a1c:	9341fc21 	asr	x1, x1, #1
     a20:	b40000c1 	cbz	x1, a38 <register_tm_clones+0x38>
     a24:	b0000082 	adrp	x2, 11000 <__FRAME_END__+0xfaac>
     a28:	f947f842 	ldr	x2, [x2, #4080]
     a2c:	b4000062 	cbz	x2, a38 <register_tm_clones+0x38>
     a30:	aa0203f0 	mov	x16, x2
     a34:	d61f0200 	br	x16
     a38:	d65f03c0 	ret
     a3c:	d503201f 	nop

0000000000000a40 <__do_global_dtors_aux>:
     a40:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
     a44:	910003fd 	mov	x29, sp
     a48:	f9000bf3 	str	x19, [sp, #16]
     a4c:	d0000093 	adrp	x19, 12000 <__data_start>
     a50:	39404260 	ldrb	w0, [x19, #16]
     a54:	35000140 	cbnz	w0, a7c <__do_global_dtors_aux+0x3c>
     a58:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xfaac>
     a5c:	f947f000 	ldr	x0, [x0, #4064]
     a60:	b4000080 	cbz	x0, a70 <__do_global_dtors_aux+0x30>
     a64:	d0000080 	adrp	x0, 12000 <__data_start>
     a68:	f9400400 	ldr	x0, [x0, #8]
     a6c:	97ffff89 	bl	890 <__cxa_finalize@plt>
     a70:	97ffffd8 	bl	9d0 <deregister_tm_clones>
     a74:	52800020 	mov	w0, #0x1                   	// #1
     a78:	39004260 	strb	w0, [x19, #16]
     a7c:	f9400bf3 	ldr	x19, [sp, #16]
     a80:	a8c27bfd 	ldp	x29, x30, [sp], #32
     a84:	d65f03c0 	ret
     a88:	d503201f 	nop
     a8c:	d503201f 	nop

0000000000000a90 <frame_dummy>:
     a90:	17ffffdc 	b	a00 <register_tm_clones>
     a94:	d503201f 	nop
     a98:	d503201f 	nop
     a9c:	d503201f 	nop

0000000000000aa0 <sha256_transform.8>:
     aa0:	a9ac7bfd 	stp	x29, x30, [sp, #-320]!
     aa4:	5280022a 	mov	w10, #0x11                  	// #17
     aa8:	910003fd 	mov	x29, sp
     aac:	a90153f3 	stp	x19, x20, [sp, #16]
     ab0:	910113e2 	add	x2, sp, #0x44
     ab4:	a9025bf5 	stp	x21, x22, [sp, #32]
     ab8:	4f0747f5 	movi	v21.4s, #0xff, lsl #16
     abc:	a90363f7 	stp	x23, x24, [sp, #48]
     ac0:	4c400024 	ld4	{v4.16b-v7.16b}, [x1]
     ac4:	4f08a482 	sxtl2	v2.8h, v4.16b
     ac8:	4f08a4a0 	sxtl2	v0.8h, v5.16b
     acc:	0f08a490 	sxtl	v16.8h, v4.8b
     ad0:	0f08a4a1 	sxtl	v1.8h, v5.8b
     ad4:	0f10a456 	sxtl	v22.4s, v2.4h
     ad8:	4f10a451 	sxtl2	v17.4s, v2.8h
     adc:	2e613802 	shll	v2.4s, v0.4h, #16
     ae0:	6e613800 	shll2	v0.4s, v0.8h, #16
     ae4:	0f10a612 	sxtl	v18.4s, v16.4h
     ae8:	2e613823 	shll	v3.4s, v1.4h, #16
     aec:	6e2138d4 	shll2	v20.8h, v6.16b, #8
     af0:	4f3856d6 	shl	v22.4s, v22.4s, #24
     af4:	4f385631 	shl	v17.4s, v17.4s, #24
     af8:	4e351c42 	and	v2.16b, v2.16b, v21.16b
     afc:	4e351c00 	and	v0.16b, v0.16b, v21.16b
     b00:	2e2138d3 	shll	v19.8h, v6.8b, #8
     b04:	4f385652 	shl	v18.4s, v18.4s, #24
     b08:	4e351c63 	and	v3.16b, v3.16b, v21.16b
     b0c:	4f10a610 	sxtl2	v16.4s, v16.8h
     b10:	6e613821 	shll2	v1.4s, v1.8h, #16
     b14:	6f08a4e5 	uxtl2	v5.8h, v7.16b
     b18:	2f10a686 	uxtl	v6.4s, v20.4h
     b1c:	4eb61c42 	orr	v2.16b, v2.16b, v22.16b
     b20:	4eb11c00 	orr	v0.16b, v0.16b, v17.16b
     b24:	6f10a694 	uxtl2	v20.4s, v20.8h
     b28:	4eb21c63 	orr	v3.16b, v3.16b, v18.16b
     b2c:	2f10a677 	uxtl	v23.4s, v19.4h
     b30:	2f08a4f2 	uxtl	v18.8h, v7.8b
     b34:	4f385604 	shl	v4.4s, v16.4s, #24
     b38:	4e351c21 	and	v1.16b, v1.16b, v21.16b
     b3c:	4ea61c42 	orr	v2.16b, v2.16b, v6.16b
     b40:	4eb41c00 	orr	v0.16b, v0.16b, v20.16b
     b44:	2f10a4a6 	uxtl	v6.4s, v5.4h
     b48:	6f10a4a5 	uxtl2	v5.4s, v5.8h
     b4c:	2f10a647 	uxtl	v7.4s, v18.4h
     b50:	4eb71c63 	orr	v3.16b, v3.16b, v23.16b
     b54:	4ea41c21 	orr	v1.16b, v1.16b, v4.16b
     b58:	6f10a673 	uxtl2	v19.4s, v19.8h
     b5c:	4ea51c00 	orr	v0.16b, v0.16b, v5.16b
     b60:	4ea61c42 	orr	v2.16b, v2.16b, v6.16b
     b64:	4ea71c63 	orr	v3.16b, v3.16b, v7.16b
     b68:	4eb31c21 	orr	v1.16b, v1.16b, v19.16b
     b6c:	6f10a652 	uxtl2	v18.4s, v18.8h
     b70:	0e0c3c49 	mov	w9, v2.s[1]
     b74:	0e143c48 	mov	w8, v2.s[2]
     b78:	0e1c3c47 	mov	w7, v2.s[3]
     b7c:	0e0c3c0c 	mov	w12, v0.s[1]
     b80:	0e143c06 	mov	w6, v0.s[2]
     b84:	0e1c3c05 	mov	w5, v0.s[3]
     b88:	4eb21c21 	orr	v1.16b, v1.16b, v18.16b
     b8c:	ad0303e2 	stp	q2, q0, [sp, #96]
     b90:	1e260061 	fmov	w1, s3
     b94:	1e26000d 	fmov	w13, s0
     b98:	ad0207e3 	stp	q3, q1, [sp, #64]
     b9c:	13864cc3 	ror	w3, w6, #19
     ba0:	29403c4e 	ldp	w14, w15, [x2]
     ba4:	4ac64463 	eor	w3, w3, w6, ror #17
     ba8:	4a462863 	eor	w3, w3, w6, lsr #10
     bac:	11001d4a 	add	w10, w10, #0x7
     bb0:	0b090063 	add	w3, w3, w9
     bb4:	138e49c4 	ror	w4, w14, #18
     bb8:	4ace1c84 	eor	w4, w4, w14, ror #7
     bbc:	138f1df0 	ror	w16, w15, #7
     bc0:	4a4e0c84 	eor	w4, w4, w14, lsr #3
     bc4:	4acf4a10 	eor	w16, w16, w15, ror #18
     bc8:	0b040063 	add	w3, w3, w4
     bcc:	4a4f0e10 	eor	w16, w16, w15, lsr #3
     bd0:	0b010069 	add	w9, w3, w1
     bd4:	138544a3 	ror	w3, w5, #17
     bd8:	4ac54c63 	eor	w3, w3, w5, ror #19
     bdc:	4a452863 	eor	w3, w3, w5, lsr #10
     be0:	13894521 	ror	w1, w9, #17
     be4:	0b080063 	add	w3, w3, w8
     be8:	4ac94c21 	eor	w1, w1, w9, ror #19
     bec:	0b100063 	add	w3, w3, w16
     bf0:	4a492821 	eor	w1, w1, w9, lsr #10
     bf4:	29414044 	ldp	w4, w16, [x2, #8]
     bf8:	0b070021 	add	w1, w1, w7
     bfc:	0b0e0068 	add	w8, w3, w14
     c00:	2907a049 	stp	w9, w8, [x2, #60]
     c04:	13841c8b 	ror	w11, w4, #7
     c08:	4ac4496b 	eor	w11, w11, w4, ror #18
     c0c:	13884d03 	ror	w3, w8, #19
     c10:	4a440d67 	eor	w7, w11, w4, lsr #3
     c14:	b940104b 	ldr	w11, [x2, #16]
     c18:	0b070021 	add	w1, w1, w7
     c1c:	4ac84463 	eor	w3, w3, w8, ror #17
     c20:	0b0f0027 	add	w7, w1, w15
     c24:	13904a0f 	ror	w15, w16, #18
     c28:	4ad01def 	eor	w15, w15, w16, ror #7
     c2c:	138b496e 	ror	w14, w11, #18
     c30:	4acb1dce 	eor	w14, w14, w11, ror #7
     c34:	13874ce1 	ror	w1, w7, #19
     c38:	4ac74421 	eor	w1, w1, w7, ror #17
     c3c:	4a482863 	eor	w3, w3, w8, lsr #10
     c40:	4a472821 	eor	w1, w1, w7, lsr #10
     c44:	0b0d0063 	add	w3, w3, w13
     c48:	0b0c0021 	add	w1, w1, w12
     c4c:	4a4b0dcc 	eor	w12, w14, w11, lsr #3
     c50:	4a500ded 	eor	w13, w15, w16, lsr #3
     c54:	0b0c0021 	add	w1, w1, w12
     c58:	0b10002c 	add	w12, w1, w16
     c5c:	0b0d0063 	add	w3, w3, w13
     c60:	29428450 	ldp	w16, w1, [x2, #20]
     c64:	0b04006d 	add	w13, w3, w4
     c68:	2908b447 	stp	w7, w13, [x2, #68]
     c6c:	138c4d83 	ror	w3, w12, #19
     c70:	4acc4463 	eor	w3, w3, w12, ror #17
     c74:	138d4da4 	ror	w4, w13, #19
     c78:	4acd4484 	eor	w4, w4, w13, ror #17
     c7c:	13904a0f 	ror	w15, w16, #18
     c80:	4a4d2884 	eor	w4, w4, w13, lsr #10
     c84:	1381482e 	ror	w14, w1, #18
     c88:	4a4c2863 	eor	w3, w3, w12, lsr #10
     c8c:	4ad01def 	eor	w15, w15, w16, ror #7
     c90:	4ac11dce 	eor	w14, w14, w1, ror #7
     c94:	0b060084 	add	w4, w4, w6
     c98:	0b050063 	add	w3, w3, w5
     c9c:	4a500de6 	eor	w6, w15, w16, lsr #3
     ca0:	4a410dc5 	eor	w5, w14, w1, lsr #3
     ca4:	0b060084 	add	w4, w4, w6
     ca8:	0b050063 	add	w3, w3, w5
     cac:	0b0b0086 	add	w6, w4, w11
     cb0:	0b100065 	add	w5, w3, w16
     cb4:	2909984c 	stp	w12, w6, [x2, #76]
     cb8:	b9005445 	str	w5, [x2, #84]
     cbc:	91007042 	add	x2, x2, #0x1c
     cc0:	7100ed5f 	cmp	w10, #0x3b
     cc4:	54fff6c1 	b.ne	b9c <sha256_transform.8+0xfc>  // b.any
     cc8:	9103a3e2 	add	x2, sp, #0xe8
     ccc:	910403e7 	add	x7, sp, #0x100
     cd0:	b9403841 	ldr	w1, [x2, #56]
     cd4:	91001042 	add	x2, x2, #0x4
     cd8:	b9400043 	ldr	w3, [x2]
     cdc:	b9402046 	ldr	w6, [x2, #32]
     ce0:	13814c25 	ror	w5, w1, #19
     ce4:	4ac144a5 	eor	w5, w5, w1, ror #17
     ce8:	13834864 	ror	w4, w3, #18
     cec:	4ac31c84 	eor	w4, w4, w3, ror #7
     cf0:	4a4128a1 	eor	w1, w5, w1, lsr #10
     cf4:	4a430c83 	eor	w3, w4, w3, lsr #3
     cf8:	0b060021 	add	w1, w1, w6
     cfc:	b85fc044 	ldur	w4, [x2, #-4]
     d00:	0b030021 	add	w1, w1, w3
     d04:	0b040021 	add	w1, w1, w4
     d08:	b9003c41 	str	w1, [x2, #60]
     d0c:	eb0200ff 	cmp	x7, x2
     d10:	54fffe01 	b.ne	cd0 <sha256_transform.8+0x230>  // b.any
     d14:	29407813 	ldp	w19, w30, [x0]
     d18:	b000000b 	adrp	x11, 1000 <MAIN__+0x1d0>
     d1c:	29414412 	ldp	w18, w17, [x0, #8]
     d20:	910a416b 	add	x11, x11, #0x290
     d24:	29423c10 	ldp	w16, w15, [x0, #16]
     d28:	910103ec 	add	x12, sp, #0x40
     d2c:	2943340e 	ldp	w14, w13, [x0, #24]
     d30:	2a1303e4 	mov	w4, w19
     d34:	2a1e03e7 	mov	w7, w30
     d38:	2a1203e5 	mov	w5, w18
     d3c:	2a1103ea 	mov	w10, w17
     d40:	2a1003e3 	mov	w3, w16
     d44:	2a0f03e9 	mov	w9, w15
     d48:	2a0e03e8 	mov	w8, w14
     d4c:	2a0d03f4 	mov	w20, w13
     d50:	d2800046 	mov	x6, #0x2                   	// #2
     d54:	14000007 	b	d70 <sha256_transform.8+0x2d0>
     d58:	2a0903e8 	mov	w8, w9
     d5c:	2a0703e5 	mov	w5, w7
     d60:	2a0303e9 	mov	w9, w3
     d64:	2a0403e7 	mov	w7, w4
     d68:	2a1503e3 	mov	w3, w21
     d6c:	2a0103e4 	mov	w4, w1
     d70:	d37ef4d5 	lsl	x21, x6, #2
     d74:	13832c61 	ror	w1, w3, #11
     d78:	8b150177 	add	x23, x11, x21
     d7c:	4ac31821 	eor	w1, w1, w3, ror #6
     d80:	8b150195 	add	x21, x12, x21
     d84:	0a090062 	and	w2, w3, w9
     d88:	4ac36421 	eor	w1, w1, w3, ror #25
     d8c:	0a230116 	bic	w22, w8, w3
     d90:	4a0202d6 	eor	w22, w22, w2
     d94:	0b140021 	add	w1, w1, w20
     d98:	b85f82f7 	ldur	w23, [x23, #-8]
     d9c:	13843482 	ror	w2, w4, #13
     da0:	4a0500f4 	eor	w20, w7, w5
     da4:	b85f82b8 	ldur	w24, [x21, #-8]
     da8:	0b160021 	add	w1, w1, w22
     dac:	4ac40842 	eor	w2, w2, w4, ror #2
     db0:	0a040294 	and	w20, w20, w4
     db4:	0a0500f6 	and	w22, w7, w5
     db8:	4a160294 	eor	w20, w20, w22
     dbc:	4ac45842 	eor	w2, w2, w4, ror #22
     dc0:	0b170021 	add	w1, w1, w23
     dc4:	0b140042 	add	w2, w2, w20
     dc8:	0b180021 	add	w1, w1, w24
     dcc:	910004c6 	add	x6, x6, #0x1
     dd0:	0b0a0035 	add	w21, w1, w10
     dd4:	2a0803f4 	mov	w20, w8
     dd8:	0b020021 	add	w1, w1, w2
     ddc:	2a0503ea 	mov	w10, w5
     de0:	f10108df 	cmp	x6, #0x42
     de4:	54fffba1 	b.ne	d58 <sha256_transform.8+0x2b8>  // b.any
     de8:	0b010273 	add	w19, w19, w1
     dec:	0b0403de 	add	w30, w30, w4
     df0:	0b150210 	add	w16, w16, w21
     df4:	0b070252 	add	w18, w18, w7
     df8:	0b050231 	add	w17, w17, w5
     dfc:	0b0301ef 	add	w15, w15, w3
     e00:	0b0901ce 	add	w14, w14, w9
     e04:	0b0801ad 	add	w13, w13, w8
     e08:	29007813 	stp	w19, w30, [x0]
     e0c:	29014412 	stp	w18, w17, [x0, #8]
     e10:	29023c10 	stp	w16, w15, [x0, #16]
     e14:	2903340e 	stp	w14, w13, [x0, #24]
     e18:	a94153f3 	ldp	x19, x20, [sp, #16]
     e1c:	a9425bf5 	ldp	x21, x22, [sp, #32]
     e20:	a94363f7 	ldp	x23, x24, [sp, #48]
     e24:	a8d47bfd 	ldp	x29, x30, [sp], #320
     e28:	d65f03c0 	ret
     e2c:	d503201f 	nop

0000000000000e30 <MAIN__>:
     e30:	d10c83ff 	sub	sp, sp, #0x320
     e34:	9101c3e0 	add	x0, sp, #0x70
     e38:	a9007bfd 	stp	x29, x30, [sp]
     e3c:	910003fd 	mov	x29, sp
     e40:	a9025bf5 	stp	x21, x22, [sp, #32]
     e44:	b0000015 	adrp	x21, 1000 <MAIN__+0x1d0>
     e48:	910a42b5 	add	x21, x21, #0x290
     e4c:	910406b5 	add	x21, x21, #0x101
     e50:	a90153f3 	stp	x19, x20, [sp, #16]
     e54:	910343f6 	add	x22, sp, #0xd0
     e58:	a90363f7 	stp	x23, x24, [sp, #48]
     e5c:	910347f4 	add	x20, sp, #0xd1
     e60:	52884817 	mov	w23, #0x4240                	// #16960
     e64:	a9046bf9 	stp	x25, x26, [sp, #64]
     e68:	52800013 	mov	w19, #0x0                   	// #0
     e6c:	72a001f7 	movk	w23, #0xf, lsl #16
     e70:	6d0527e8 	stp	d8, d9, [sp, #80]
     e74:	97fffe7f 	bl	870 <_gfortran_cpu_time_8@plt>
     e78:	b0000000 	adrp	x0, 1000 <MAIN__+0x1d0>
     e7c:	794062b8 	ldrh	w24, [x21, #48]
     e80:	3dc00ab8 	ldr	q24, [x21, #32]
     e84:	3dc08c19 	ldr	q25, [x0, #560]
     e88:	910243e0 	add	x0, sp, #0x90
     e8c:	d503201f 	nop
     e90:	b0000001 	adrp	x1, 1000 <MAIN__+0x1d0>
     e94:	13107e64 	asr	w4, w19, #16
     e98:	390413e4 	strb	w4, [sp, #260]
     e9c:	910803e4 	add	x4, sp, #0x200
     ea0:	3dc09023 	ldr	q3, [x1, #576]
     ea4:	b0000001 	adrp	x1, 1000 <MAIN__+0x1d0>
     ea8:	ad4006a0 	ldp	q0, q1, [x21]
     eac:	5ac00663 	rev16	w3, w19
     eb0:	fd413822 	ldr	d2, [x1, #624]
     eb4:	52800865 	mov	w5, #0x43                  	// #67
     eb8:	12800fe2 	mov	w2, #0xffffff80            	// #-128
     ebc:	78105083 	sturh	w3, [x4, #-251]
     ec0:	39040fff 	strb	wzr, [sp, #259]
     ec4:	aa1603e1 	mov	x1, x22
     ec8:	39041fe2 	strb	w2, [sp, #263]
     ecc:	11000673 	add	w19, w19, #0x1
     ed0:	fd0087e2 	str	d2, [sp, #264]
     ed4:	ad000680 	stp	q0, q1, [x20]
     ed8:	3d800a98 	str	q24, [x20, #32]
     edc:	79006298 	strh	w24, [x20, #48]
     ee0:	ad048ff9 	stp	q25, q3, [sp, #144]
     ee4:	390343e5 	strb	w5, [sp, #208]
     ee8:	97fffeee 	bl	aa0 <sha256_transform.8>
     eec:	2d521ff0 	ldp	s16, s7, [sp, #144]
     ef0:	bd40a3e2 	ldr	s2, [sp, #160]
     ef4:	2f300606 	ushr	v6.2s, v16.2s, #16
     ef8:	2f280601 	ushr	v1.2s, v16.2s, #24
     efc:	2f300445 	ushr	v5.2s, v2.2s, #16
     f00:	2f280440 	ushr	v0.2s, v2.2s, #24
     f04:	2f380604 	ushr	v4.2s, v16.2s, #8
     f08:	2f380443 	ushr	v3.2s, v2.2s, #8
     f0c:	2f2804f2 	ushr	v18.2s, v7.2s, #24
     f10:	2f3004e9 	ushr	v9.2s, v7.2s, #16
     f14:	6e0304c1 	mov	v1.b[1], v6.b[0]
     f18:	6e0304a0 	mov	v0.b[1], v5.b[0]
     f1c:	2f3804ff 	ushr	v31.2s, v7.2s, #8
     f20:	6e050481 	mov	v1.b[2], v4.b[0]
     f24:	6e050460 	mov	v0.b[2], v3.b[0]
     f28:	2d5493e6 	ldp	s6, s4, [sp, #164]
     f2c:	6e070601 	mov	v1.b[3], v16.b[0]
     f30:	6e070440 	mov	v0.b[3], v2.b[0]
     f34:	bd40afe2 	ldr	s2, [sp, #172]
     f38:	2f2804d1 	ushr	v17.2s, v6.2s, #24
     f3c:	2f3004c8 	ushr	v8.2s, v6.2s, #16
     f40:	2f3804de 	ushr	v30.2s, v6.2s, #8
     f44:	2f28049c 	ushr	v28.2s, v4.2s, #24
     f48:	6e090641 	mov	v1.b[4], v18.b[0]
     f4c:	2d530fe5 	ldp	s5, s3, [sp, #152]
     f50:	2f30049a 	ushr	v26.2s, v4.2s, #16
     f54:	6e090620 	mov	v0.b[4], v17.b[0]
     f58:	6e0b0521 	mov	v1.b[5], v9.b[0]
     f5c:	2f2804bd 	ushr	v29.2s, v5.2s, #24
     f60:	2f3004bb 	ushr	v27.2s, v5.2s, #16
     f64:	2f3804b7 	ushr	v23.2s, v5.2s, #8
     f68:	2f380496 	ushr	v22.2s, v4.2s, #8
     f6c:	6e0b0500 	mov	v0.b[5], v8.b[0]
     f70:	6e0d07e1 	mov	v1.b[6], v31.b[0]
     f74:	2f280475 	ushr	v21.2s, v3.2s, #24
     f78:	2f280454 	ushr	v20.2s, v2.2s, #24
     f7c:	2f300473 	ushr	v19.2s, v3.2s, #16
     f80:	2f300452 	ushr	v18.2s, v2.2s, #16
     f84:	6e0d07c0 	mov	v0.b[6], v30.b[0]
     f88:	6e0f04e1 	mov	v1.b[7], v7.b[0]
     f8c:	2f380471 	ushr	v17.2s, v3.2s, #8
     f90:	2f380450 	ushr	v16.2s, v2.2s, #8
     f94:	6e0f04c0 	mov	v0.b[7], v6.b[0]
     f98:	6e1107a1 	mov	v1.b[8], v29.b[0]
     f9c:	6e110780 	mov	v0.b[8], v28.b[0]
     fa0:	6e130761 	mov	v1.b[9], v27.b[0]
     fa4:	6e130740 	mov	v0.b[9], v26.b[0]
     fa8:	6e1506e1 	mov	v1.b[10], v23.b[0]
     fac:	6e1506c0 	mov	v0.b[10], v22.b[0]
     fb0:	6e1704a1 	mov	v1.b[11], v5.b[0]
     fb4:	6e170480 	mov	v0.b[11], v4.b[0]
     fb8:	6e1906a1 	mov	v1.b[12], v21.b[0]
     fbc:	6e190680 	mov	v0.b[12], v20.b[0]
     fc0:	6e1b0661 	mov	v1.b[13], v19.b[0]
     fc4:	6e1b0640 	mov	v0.b[13], v18.b[0]
     fc8:	6e1d0621 	mov	v1.b[14], v17.b[0]
     fcc:	6e1d0600 	mov	v0.b[14], v16.b[0]
     fd0:	6e1f0461 	mov	v1.b[15], v3.b[0]
     fd4:	6e1f0440 	mov	v0.b[15], v2.b[0]
     fd8:	ad0583e1 	stp	q1, q0, [sp, #176]
     fdc:	6b17027f 	cmp	w19, w23
     fe0:	54fff581 	b.ne	e90 <MAIN__+0x60>  // b.any
     fe4:	910203e0 	add	x0, sp, #0x80
     fe8:	97fffe22 	bl	870 <_gfortran_cpu_time_8@plt>
     fec:	fd403be4 	ldr	d4, [sp, #112]
     ff0:	d2c80000 	mov	x0, #0x400000000000        	// #70368744177664
     ff4:	fd4043e1 	ldr	d1, [sp, #128]
     ff8:	f2e811e0 	movk	x0, #0x408f, lsl #48
     ffc:	9e670000 	fmov	d0, x0
    1000:	d2d09000 	mov	x0, #0x848000000000        	// #145685290680320
    1004:	f2e825c0 	movk	x0, #0x412e, lsl #48
    1008:	9e670002 	fmov	d2, x0
    100c:	1e643821 	fsub	d1, d1, d4
    1010:	90000000 	adrp	x0, 1000 <MAIN__+0x1d0>
    1014:	90000001 	adrp	x1, 1000 <MAIN__+0x1d0>
    1018:	91074021 	add	x1, x1, #0x1d0
    101c:	3dc09403 	ldr	q3, [x0, #592]
    1020:	90000000 	adrp	x0, 1000 <MAIN__+0x1d0>
    1024:	1e600821 	fmul	d1, d1, d0
    1028:	f900b3e1 	str	x1, [sp, #352]
    102c:	fd413c04 	ldr	d4, [x0, #632]
    1030:	910803e1 	add	x1, sp, #0x200
    1034:	528004a2 	mov	w2, #0x25                  	// #37
    1038:	90000015 	adrp	x21, 1000 <MAIN__+0x1d0>
    103c:	9106e2b5 	add	x21, x21, #0x1b8
    1040:	f9008ff5 	str	x21, [sp, #280]
    1044:	1e601820 	fdiv	d0, d1, d0
    1048:	b90123e2 	str	w2, [sp, #288]
    104c:	fd008be4 	str	d4, [sp, #272]
    1050:	910443f3 	add	x19, sp, #0x110
    1054:	3c968023 	stur	q3, [x1, #-152]
    1058:	aa1303e0 	mov	x0, x19
    105c:	90000017 	adrp	x23, 1000 <MAIN__+0x1d0>
    1060:	910722f7 	add	x23, x23, #0x1c8
    1064:	fd0047e1 	str	d1, [sp, #136]
    1068:	f900bff7 	str	x23, [sp, #376]
    106c:	90000018 	adrp	x24, 1000 <MAIN__+0x1d0>
    1070:	9102c3f4 	add	x20, sp, #0xb0
    1074:	9101b3fa 	add	x26, sp, #0x6c
    1078:	91088318 	add	x24, x24, #0x220
    107c:	528004f9 	mov	w25, #0x27                  	// #39
    1080:	1e601840 	fdiv	d0, d2, d0
    1084:	fd003fe0 	str	d0, [sp, #120]
    1088:	97fffe1a 	bl	8f0 <_gfortran_st_write@plt>
    108c:	aa1303e0 	mov	x0, x19
    1090:	d2800162 	mov	x2, #0xb                   	// #11
    1094:	90000001 	adrp	x1, 1000 <MAIN__+0x1d0>
    1098:	9107a021 	add	x1, x1, #0x1e8
    109c:	97fffe05 	bl	8b0 <_gfortran_transfer_character_write@plt>
    10a0:	aa1303e0 	mov	x0, x19
    10a4:	910223e1 	add	x1, sp, #0x88
    10a8:	52800102 	mov	w2, #0x8                   	// #8
    10ac:	97fffde9 	bl	850 <_gfortran_transfer_real_write@plt>
    10b0:	aa1303e0 	mov	x0, x19
    10b4:	d2800202 	mov	x2, #0x10                  	// #16
    10b8:	90000001 	adrp	x1, 1000 <MAIN__+0x1d0>
    10bc:	9107e021 	add	x1, x1, #0x1f8
    10c0:	97fffdfc 	bl	8b0 <_gfortran_transfer_character_write@plt>
    10c4:	aa1303e0 	mov	x0, x19
    10c8:	9101e3e1 	add	x1, sp, #0x78
    10cc:	52800102 	mov	w2, #0x8                   	// #8
    10d0:	97fffde0 	bl	850 <_gfortran_transfer_real_write@plt>
    10d4:	90000001 	adrp	x1, 1000 <MAIN__+0x1d0>
    10d8:	91084021 	add	x1, x1, #0x210
    10dc:	d2800142 	mov	x2, #0xa                   	// #10
    10e0:	aa1303e0 	mov	x0, x19
    10e4:	97fffdf3 	bl	8b0 <_gfortran_transfer_character_write@plt>
    10e8:	aa1303e0 	mov	x0, x19
    10ec:	97fffdf5 	bl	8c0 <_gfortran_st_write_done@plt>
    10f0:	90000000 	adrp	x0, 1000 <MAIN__+0x1d0>
    10f4:	90000002 	adrp	x2, 1000 <MAIN__+0x1d0>
    10f8:	910803e1 	add	x1, sp, #0x200
    10fc:	f9008ff5 	str	x21, [sp, #280]
    1100:	fd413c00 	ldr	d0, [x0, #632]
    1104:	aa1303e0 	mov	x0, x19
    1108:	b90123f9 	str	w25, [sp, #288]
    110c:	f900b3f8 	str	x24, [sp, #352]
    1110:	fd008be0 	str	d0, [sp, #272]
    1114:	3dc09840 	ldr	q0, [x2, #608]
    1118:	3c968020 	stur	q0, [x1, #-152]
    111c:	f900bff7 	str	x23, [sp, #376]
    1120:	97fffdf4 	bl	8f0 <_gfortran_st_write@plt>
    1124:	38401683 	ldrb	w3, [x20], #1
    1128:	aa1a03e1 	mov	x1, x26
    112c:	52800082 	mov	w2, #0x4                   	// #4
    1130:	aa1303e0 	mov	x0, x19
    1134:	b9006fe3 	str	w3, [sp, #108]
    1138:	97fffdd2 	bl	880 <_gfortran_transfer_integer_write@plt>
    113c:	aa1303e0 	mov	x0, x19
    1140:	97fffde0 	bl	8c0 <_gfortran_st_write_done@plt>
    1144:	eb16029f 	cmp	x20, x22
    1148:	54fffd41 	b.ne	10f0 <MAIN__+0x2c0>  // b.any
    114c:	90000000 	adrp	x0, 1000 <MAIN__+0x1d0>
    1150:	52800521 	mov	w1, #0x29                  	// #41
    1154:	f9008ff5 	str	x21, [sp, #280]
    1158:	fd414000 	ldr	d0, [x0, #640]
    115c:	aa1303e0 	mov	x0, x19
    1160:	b90123e1 	str	w1, [sp, #288]
    1164:	fd008be0 	str	d0, [sp, #272]
    1168:	97fffde2 	bl	8f0 <_gfortran_st_write@plt>
    116c:	aa1303e0 	mov	x0, x19
    1170:	97fffdd4 	bl	8c0 <_gfortran_st_write_done@plt>
    1174:	a9407bfd 	ldp	x29, x30, [sp]
    1178:	a94153f3 	ldp	x19, x20, [sp, #16]
    117c:	a9425bf5 	ldp	x21, x22, [sp, #32]
    1180:	a94363f7 	ldp	x23, x24, [sp, #48]
    1184:	a9446bf9 	ldp	x25, x26, [sp, #64]
    1188:	6d4527e8 	ldp	d8, d9, [sp, #80]
    118c:	910c83ff 	add	sp, sp, #0x320
    1190:	d65f03c0 	ret

Disassembly of section .fini:

0000000000001194 <_fini>:
    1194:	d503201f 	nop
    1198:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    119c:	910003fd 	mov	x29, sp
    11a0:	a8c17bfd 	ldp	x29, x30, [sp], #16
    11a4:	d65f03c0 	ret
