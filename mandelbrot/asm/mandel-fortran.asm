
/bench/bench:     file format elf64-littleaarch64


Disassembly of section .init:

0000000000000b18 <_init>:
 b18:	d503201f 	nop
 b1c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 b20:	910003fd 	mov	x29, sp
 b24:	94000084 	bl	d34 <call_weak_fn>
 b28:	a8c17bfd 	ldp	x29, x30, [sp], #16
 b2c:	d65f03c0 	ret

Disassembly of section .plt:

0000000000000b30 <.plt>:
 b30:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
 b34:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 b38:	f9479211 	ldr	x17, [x16, #3872]
 b3c:	913c8210 	add	x16, x16, #0xf20
 b40:	d61f0220 	br	x17
 b44:	d503201f 	nop
 b48:	d503201f 	nop
 b4c:	d503201f 	nop

0000000000000b50 <_gfortran_transfer_real_write@plt>:
 b50:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 b54:	f9479611 	ldr	x17, [x16, #3880]
 b58:	913ca210 	add	x16, x16, #0xf28
 b5c:	d61f0220 	br	x17

0000000000000b60 <_gfortran_runtime_error_at@plt>:
 b60:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 b64:	f9479a11 	ldr	x17, [x16, #3888]
 b68:	913cc210 	add	x16, x16, #0xf30
 b6c:	d61f0220 	br	x17

0000000000000b70 <__gmon_start__@plt>:
 b70:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 b74:	f9479e11 	ldr	x17, [x16, #3896]
 b78:	913ce210 	add	x16, x16, #0xf38
 b7c:	d61f0220 	br	x17

0000000000000b80 <_gfortran_st_close@plt>:
 b80:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 b84:	f947a211 	ldr	x17, [x16, #3904]
 b88:	913d0210 	add	x16, x16, #0xf40
 b8c:	d61f0220 	br	x17

0000000000000b90 <_gfortran_transfer_integer_write@plt>:
 b90:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 b94:	f947a611 	ldr	x17, [x16, #3912]
 b98:	913d2210 	add	x16, x16, #0xf48
 b9c:	d61f0220 	br	x17

0000000000000ba0 <__cxa_finalize@plt>:
 ba0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 ba4:	f947aa11 	ldr	x17, [x16, #3920]
 ba8:	913d4210 	add	x16, x16, #0xf50
 bac:	d61f0220 	br	x17

0000000000000bb0 <_gfortran_st_open@plt>:
 bb0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 bb4:	f947ae11 	ldr	x17, [x16, #3928]
 bb8:	913d6210 	add	x16, x16, #0xf58
 bbc:	d61f0220 	br	x17

0000000000000bc0 <abort@plt>:
 bc0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 bc4:	f947b211 	ldr	x17, [x16, #3936]
 bc8:	913d8210 	add	x16, x16, #0xf60
 bcc:	d61f0220 	br	x17

0000000000000bd0 <_gfortran_transfer_character_write@plt>:
 bd0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 bd4:	f947b611 	ldr	x17, [x16, #3944]
 bd8:	913da210 	add	x16, x16, #0xf68
 bdc:	d61f0220 	br	x17

0000000000000be0 <_gfortran_os_error_at@plt>:
 be0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 be4:	f947ba11 	ldr	x17, [x16, #3952]
 be8:	913dc210 	add	x16, x16, #0xf70
 bec:	d61f0220 	br	x17

0000000000000bf0 <omp_get_wtime_@plt>:
 bf0:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 bf4:	f947be11 	ldr	x17, [x16, #3960]
 bf8:	913de210 	add	x16, x16, #0xf78
 bfc:	d61f0220 	br	x17

0000000000000c00 <_gfortran_st_write_done@plt>:
 c00:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 c04:	f947c211 	ldr	x17, [x16, #3968]
 c08:	913e0210 	add	x16, x16, #0xf80
 c0c:	d61f0220 	br	x17

0000000000000c10 <malloc@plt>:
 c10:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 c14:	f947c611 	ldr	x17, [x16, #3976]
 c18:	913e2210 	add	x16, x16, #0xf88
 c1c:	d61f0220 	br	x17

0000000000000c20 <GOMP_loop_nonmonotonic_dynamic_next@plt>:
 c20:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 c24:	f947ca11 	ldr	x17, [x16, #3984]
 c28:	913e4210 	add	x16, x16, #0xf90
 c2c:	d61f0220 	br	x17

0000000000000c30 <_gfortran_set_options@plt>:
 c30:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 c34:	f947ce11 	ldr	x17, [x16, #3992]
 c38:	913e6210 	add	x16, x16, #0xf98
 c3c:	d61f0220 	br	x17

0000000000000c40 <_gfortran_set_args@plt>:
 c40:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 c44:	f947d211 	ldr	x17, [x16, #4000]
 c48:	913e8210 	add	x16, x16, #0xfa0
 c4c:	d61f0220 	br	x17

0000000000000c50 <free@plt>:
 c50:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 c54:	f947d611 	ldr	x17, [x16, #4008]
 c58:	913ea210 	add	x16, x16, #0xfa8
 c5c:	d61f0220 	br	x17

0000000000000c60 <_gfortran_st_write@plt>:
 c60:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 c64:	f947da11 	ldr	x17, [x16, #4016]
 c68:	913ec210 	add	x16, x16, #0xfb0
 c6c:	d61f0220 	br	x17

0000000000000c70 <__libc_start_main@plt>:
 c70:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 c74:	f947de11 	ldr	x17, [x16, #4024]
 c78:	913ee210 	add	x16, x16, #0xfb8
 c7c:	d61f0220 	br	x17

0000000000000c80 <GOMP_loop_end_nowait@plt>:
 c80:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 c84:	f947e211 	ldr	x17, [x16, #4032]
 c88:	913f0210 	add	x16, x16, #0xfc0
 c8c:	d61f0220 	br	x17

0000000000000c90 <GOMP_parallel_loop_nonmonotonic_dynamic@plt>:
 c90:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0xf6cc>
 c94:	f947e611 	ldr	x17, [x16, #4040]
 c98:	913f2210 	add	x16, x16, #0xfc8
 c9c:	d61f0220 	br	x17

Disassembly of section .text:

0000000000000cc0 <main>:
     cc0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
     cc4:	910003fd 	mov	x29, sp
     cc8:	97ffffde 	bl	c40 <_gfortran_set_args@plt>
     ccc:	b0000001 	adrp	x1, 1000 <MAIN__+0x1e0>
     cd0:	911d4021 	add	x1, x1, #0x750
     cd4:	91002021 	add	x1, x1, #0x8
     cd8:	528000e0 	mov	w0, #0x7                   	// #7
     cdc:	97ffffd5 	bl	c30 <_gfortran_set_options@plt>
     ce0:	94000050 	bl	e20 <MAIN__>
     ce4:	52800000 	mov	w0, #0x0                   	// #0
     ce8:	a8c17bfd 	ldp	x29, x30, [sp], #16
     cec:	d65f03c0 	ret
     cf0:	d503201f 	nop
     cf4:	d503201f 	nop
     cf8:	d503201f 	nop
     cfc:	d503201f 	nop

0000000000000d00 <_start>:
     d00:	d503201f 	nop
     d04:	d280001d 	mov	x29, #0x0                   	// #0
     d08:	d280001e 	mov	x30, #0x0                   	// #0
     d0c:	aa0003e5 	mov	x5, x0
     d10:	f94003e1 	ldr	x1, [sp]
     d14:	910023e2 	add	x2, sp, #0x8
     d18:	910003e6 	mov	x6, sp
     d1c:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xf6cc>
     d20:	f947fc00 	ldr	x0, [x0, #4088]
     d24:	d2800003 	mov	x3, #0x0                   	// #0
     d28:	d2800004 	mov	x4, #0x0                   	// #0
     d2c:	97ffffd1 	bl	c70 <__libc_start_main@plt>
     d30:	97ffffa4 	bl	bc0 <abort@plt>

0000000000000d34 <call_weak_fn>:
     d34:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xf6cc>
     d38:	f947ec00 	ldr	x0, [x0, #4056]
     d3c:	b4000040 	cbz	x0, d44 <call_weak_fn+0x10>
     d40:	17ffff8c 	b	b70 <__gmon_start__@plt>
     d44:	d65f03c0 	ret
     d48:	d503201f 	nop
     d4c:	d503201f 	nop

0000000000000d50 <deregister_tm_clones>:
     d50:	d0000080 	adrp	x0, 12000 <__data_start>
     d54:	91004000 	add	x0, x0, #0x10
     d58:	d0000081 	adrp	x1, 12000 <__data_start>
     d5c:	91004021 	add	x1, x1, #0x10
     d60:	eb00003f 	cmp	x1, x0
     d64:	540000c0 	b.eq	d7c <deregister_tm_clones+0x2c>  // b.none
     d68:	b0000081 	adrp	x1, 11000 <__FRAME_END__+0xf6cc>
     d6c:	f947f421 	ldr	x1, [x1, #4072]
     d70:	b4000061 	cbz	x1, d7c <deregister_tm_clones+0x2c>
     d74:	aa0103f0 	mov	x16, x1
     d78:	d61f0200 	br	x16
     d7c:	d65f03c0 	ret

0000000000000d80 <register_tm_clones>:
     d80:	d0000080 	adrp	x0, 12000 <__data_start>
     d84:	91004000 	add	x0, x0, #0x10
     d88:	d0000081 	adrp	x1, 12000 <__data_start>
     d8c:	91004021 	add	x1, x1, #0x10
     d90:	cb000021 	sub	x1, x1, x0
     d94:	d37ffc22 	lsr	x2, x1, #63
     d98:	8b810c41 	add	x1, x2, x1, asr #3
     d9c:	9341fc21 	asr	x1, x1, #1
     da0:	b40000c1 	cbz	x1, db8 <register_tm_clones+0x38>
     da4:	b0000082 	adrp	x2, 11000 <__FRAME_END__+0xf6cc>
     da8:	f947f842 	ldr	x2, [x2, #4080]
     dac:	b4000062 	cbz	x2, db8 <register_tm_clones+0x38>
     db0:	aa0203f0 	mov	x16, x2
     db4:	d61f0200 	br	x16
     db8:	d65f03c0 	ret
     dbc:	d503201f 	nop

0000000000000dc0 <__do_global_dtors_aux>:
     dc0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
     dc4:	910003fd 	mov	x29, sp
     dc8:	f9000bf3 	str	x19, [sp, #16]
     dcc:	d0000093 	adrp	x19, 12000 <__data_start>
     dd0:	39404260 	ldrb	w0, [x19, #16]
     dd4:	35000140 	cbnz	w0, dfc <__do_global_dtors_aux+0x3c>
     dd8:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0xf6cc>
     ddc:	f947f000 	ldr	x0, [x0, #4064]
     de0:	b4000080 	cbz	x0, df0 <__do_global_dtors_aux+0x30>
     de4:	d0000080 	adrp	x0, 12000 <__data_start>
     de8:	f9400400 	ldr	x0, [x0, #8]
     dec:	97ffff6d 	bl	ba0 <__cxa_finalize@plt>
     df0:	97ffffd8 	bl	d50 <deregister_tm_clones>
     df4:	52800020 	mov	w0, #0x1                   	// #1
     df8:	39004260 	strb	w0, [x19, #16]
     dfc:	f9400bf3 	ldr	x19, [sp, #16]
     e00:	a8c27bfd 	ldp	x29, x30, [sp], #32
     e04:	d65f03c0 	ret
     e08:	d503201f 	nop
     e0c:	d503201f 	nop

0000000000000e10 <frame_dummy>:
     e10:	17ffffdc 	b	d80 <register_tm_clones>
     e14:	d503201f 	nop
     e18:	d503201f 	nop
     e1c:	d503201f 	nop

0000000000000e20 <MAIN__>:
     e20:	d10c43ff 	sub	sp, sp, #0x310
     e24:	d2c02041 	mov	x1, #0x10200000000         	// #1108101562368
     e28:	d2920000 	mov	x0, #0x9000                	// #36864
     e2c:	f2a07a00 	movk	x0, #0x3d0, lsl #16
     e30:	a9007bfd 	stp	x29, x30, [sp]
     e34:	910003fd 	mov	x29, sp
     e38:	a90153f3 	stp	x19, x20, [sp, #16]
     e3c:	a9025bf5 	stp	x21, x22, [sp, #32]
     e40:	a90363f7 	stp	x23, x24, [sp, #48]
     e44:	a9046bf9 	stp	x25, x26, [sp, #64]
     e48:	a90573fb 	stp	x27, x28, [sp, #80]
     e4c:	d280009c 	mov	x28, #0x4                   	// #4
     e50:	fd0033e8 	str	d8, [sp, #96]
     e54:	a90b07fc 	stp	x28, x1, [sp, #176]
     e58:	97ffff6e 	bl	c10 <malloc@plt>
     e5c:	f90053e0 	str	x0, [sp, #160]
     e60:	b4002420 	cbz	x0, 12e4 <MAIN__+0x4c4>
     e64:	b0000000 	adrp	x0, 1000 <MAIN__+0x1e0>
     e68:	910403f3 	add	x19, sp, #0x100
     e6c:	9281f409 	mov	x9, #0xfffffffffffff05f    	// #-4001
     e70:	d2800026 	mov	x6, #0x1                   	// #1
     e74:	3dc1bc02 	ldr	q2, [x0, #1776]
     e78:	b0000000 	adrp	x0, 1000 <MAIN__+0x1e0>
     e7c:	aa0603e5 	mov	x5, x6
     e80:	aa0603e3 	mov	x3, x6
     e84:	3dc1c001 	ldr	q1, [x0, #1792]
     e88:	b0000000 	adrp	x0, 1000 <MAIN__+0x1e0>
     e8c:	d281f408 	mov	x8, #0xfa0                 	// #4000
     e90:	aa1303e1 	mov	x1, x19
     e94:	3dc1c400 	ldr	q0, [x0, #1808]
     e98:	b0000000 	adrp	x0, 1000 <MAIN__+0x1e0>
     e9c:	910c8000 	add	x0, x0, #0x320
     ea0:	f90057e9 	str	x9, [sp, #168]
     ea4:	b0000009 	adrp	x9, 1000 <MAIN__+0x1e0>
     ea8:	52800007 	mov	w7, #0x0                   	// #0
     eac:	d2803224 	mov	x4, #0x191                 	// #401
     eb0:	52800002 	mov	w2, #0x0                   	// #0
     eb4:	91184139 	add	x25, x9, #0x610
     eb8:	aa0603f4 	mov	x20, x6
     ebc:	ad0607e2 	stp	q2, q1, [sp, #192]
     ec0:	b0000015 	adrp	x21, 1000 <MAIN__+0x1e0>
     ec4:	911782b5 	add	x21, x21, #0x5e0
     ec8:	3d803be0 	str	q0, [sp, #224]
     ecc:	5282001b 	mov	w27, #0x1000                	// #4096
     ed0:	d280007a 	mov	x26, #0x3                   	// #3
     ed4:	f9007be8 	str	x8, [sp, #240]
     ed8:	b0000018 	adrp	x24, 1000 <MAIN__+0x1e0>
     edc:	b90103ff 	str	wzr, [sp, #256]
     ee0:	97ffff6c 	bl	c90 <GOMP_parallel_loop_nonmonotonic_dynamic@plt>
     ee4:	97ffff43 	bl	bf0 <omp_get_wtime_@plt>
     ee8:	1e604008 	fmov	d8, d0
     eec:	910283e8 	add	x8, sp, #0xa0
     ef0:	aa1303e1 	mov	x1, x19
     ef4:	aa1403e6 	mov	x6, x20
     ef8:	aa1403e5 	mov	x5, x20
     efc:	aa1403e3 	mov	x3, x20
     f00:	b0000000 	adrp	x0, 1000 <MAIN__+0x1e0>
     f04:	9110d000 	add	x0, x0, #0x434
     f08:	52800007 	mov	w7, #0x0                   	// #0
     f0c:	d281f424 	mov	x4, #0xfa1                 	// #4001
     f10:	52800002 	mov	w2, #0x0                   	// #0
     f14:	f90083e8 	str	x8, [sp, #256]
     f18:	97ffff5e 	bl	c90 <GOMP_parallel_loop_nonmonotonic_dynamic@plt>
     f1c:	97ffff35 	bl	bf0 <omp_get_wtime_@plt>
     f20:	1e683800 	fsub	d0, d0, d8
     f24:	d2c80000 	mov	x0, #0x400000000000        	// #70368744177664
     f28:	910223e1 	add	x1, sp, #0x88
     f2c:	f2e811e0 	movk	x0, #0x408f, lsl #48
     f30:	9e670001 	fmov	d1, x0
     f34:	d2d09000 	mov	x0, #0x848000000000        	// #145685290680320
     f38:	b0000004 	adrp	x4, 1000 <MAIN__+0x1e0>
     f3c:	1e610800 	fmul	d0, d0, d1
     f40:	f2e82dc0 	movk	x0, #0x416e, lsl #48
     f44:	9e670002 	fmov	d2, x0
     f48:	b0000000 	adrp	x0, 1000 <MAIN__+0x1e0>
     f4c:	9117c084 	add	x4, x4, #0x5f0
     f50:	b0000003 	adrp	x3, 1000 <MAIN__+0x1e0>
     f54:	fd43a003 	ldr	d3, [x0, #1856]
     f58:	91180063 	add	x3, x3, #0x600
     f5c:	1e610801 	fmul	d1, d0, d1
     f60:	b0000002 	adrp	x2, 1000 <MAIN__+0x1e0>
     f64:	91182042 	add	x2, x2, #0x608
     f68:	52800628 	mov	w8, #0x31                  	// #49
     f6c:	d28001c7 	mov	x7, #0xe                   	// #14
     f70:	d28000e6 	mov	x6, #0x7                   	// #7
     f74:	d28000a5 	mov	x5, #0x5                   	// #5
     f78:	aa1303e0 	mov	x0, x19
     f7c:	1e611842 	fdiv	d2, d2, d1
     f80:	fd0083e3 	str	d3, [sp, #256]
     f84:	f90087f5 	str	x21, [sp, #264]
     f88:	b0000017 	adrp	x23, 1000 <MAIN__+0x1e0>
     f8c:	b90113e8 	str	w8, [sp, #272]
     f90:	a91393e7 	stp	x7, x4, [sp, #312]
     f94:	a9149be3 	stp	x3, x6, [sp, #328]
     f98:	a9198be5 	stp	x5, x2, [sp, #408]
     f9c:	f90117e1 	str	x1, [sp, #552]
     fa0:	b90233ff 	str	wzr, [sp, #560]
     fa4:	6d0903e2 	stp	d2, d0, [sp, #144]
     fa8:	97ffff02 	bl	bb0 <_gfortran_st_open@plt>
     fac:	52800641 	mov	w1, #0x32                  	// #50
     fb0:	b9408bf6 	ldr	w22, [sp, #136]
     fb4:	aa1303e0 	mov	x0, x19
     fb8:	b90103fb 	str	w27, [sp, #256]
     fbc:	b90107f6 	str	w22, [sp, #260]
     fc0:	f90087f5 	str	x21, [sp, #264]
     fc4:	b90113e1 	str	w1, [sp, #272]
     fc8:	a9156bf9 	stp	x25, x26, [sp, #336]
     fcc:	97ffff25 	bl	c60 <_gfortran_st_write@plt>
     fd0:	b0000001 	adrp	x1, 1000 <MAIN__+0x1e0>
     fd4:	91186021 	add	x1, x1, #0x618
     fd8:	d2800042 	mov	x2, #0x2                   	// #2
     fdc:	aa1303e0 	mov	x0, x19
     fe0:	97fffefc 	bl	bd0 <_gfortran_transfer_character_write@plt>
     fe4:	aa1303e0 	mov	x0, x19
     fe8:	97ffff06 	bl	c00 <_gfortran_st_write_done@plt>
     fec:	b90103fb 	str	w27, [sp, #256]
     ff0:	b0000001 	adrp	x1, 1000 <MAIN__+0x1e0>
     ff4:	91188021 	add	x1, x1, #0x620
     ff8:	52800663 	mov	w3, #0x33                  	// #51
     ffc:	d2800122 	mov	x2, #0x9                   	// #9
    1000:	aa1303e0 	mov	x0, x19
    1004:	b90107f6 	str	w22, [sp, #260]
    1008:	f90087f5 	str	x21, [sp, #264]
    100c:	b90113e3 	str	w3, [sp, #272]
    1010:	a9150be1 	stp	x1, x2, [sp, #336]
    1014:	97ffff13 	bl	c60 <_gfortran_st_write@plt>
    1018:	90000003 	adrp	x3, 1000 <MAIN__+0x1e0>
    101c:	911d4063 	add	x3, x3, #0x750
    1020:	aa1303e0 	mov	x0, x19
    1024:	aa0303e1 	mov	x1, x3
    1028:	2a1c03e2 	mov	w2, w28
    102c:	f9003fe3 	str	x3, [sp, #120]
    1030:	97fffed8 	bl	b90 <_gfortran_transfer_integer_write@plt>
    1034:	aa1303e0 	mov	x0, x19
    1038:	9118c301 	add	x1, x24, #0x630
    103c:	aa1403e2 	mov	x2, x20
    1040:	97fffee4 	bl	bd0 <_gfortran_transfer_character_write@plt>
    1044:	f9403fe3 	ldr	x3, [sp, #120]
    1048:	2a1c03e2 	mov	w2, w28
    104c:	aa1303e0 	mov	x0, x19
    1050:	aa0303e1 	mov	x1, x3
    1054:	97fffecf 	bl	b90 <_gfortran_transfer_integer_write@plt>
    1058:	aa1303e0 	mov	x0, x19
    105c:	97fffee9 	bl	c00 <_gfortran_st_write_done@plt>
    1060:	b90103fb 	str	w27, [sp, #256]
    1064:	52800681 	mov	w1, #0x34                  	// #52
    1068:	aa1303e0 	mov	x0, x19
    106c:	b90107f6 	str	w22, [sp, #260]
    1070:	9000001b 	adrp	x27, 1000 <MAIN__+0x1e0>
    1074:	f90087f5 	str	x21, [sp, #264]
    1078:	9119437b 	add	x27, x27, #0x650
    107c:	b90113e1 	str	w1, [sp, #272]
    1080:	a9156bf9 	stp	x25, x26, [sp, #336]
    1084:	97fffef7 	bl	c60 <_gfortran_st_write@plt>
    1088:	aa1a03e2 	mov	x2, x26
    108c:	90000001 	adrp	x1, 1000 <MAIN__+0x1e0>
    1090:	9118e021 	add	x1, x1, #0x638
    1094:	aa1303e0 	mov	x0, x19
    1098:	97fffece 	bl	bd0 <_gfortran_transfer_character_write@plt>
    109c:	aa1303e0 	mov	x0, x19
    10a0:	97fffed8 	bl	c00 <_gfortran_st_write_done@plt>
    10a4:	9000001a 	adrp	x26, 1000 <MAIN__+0x1e0>
    10a8:	d280003c 	mov	x28, #0x1                   	// #1
    10ac:	9119835a 	add	x26, x26, #0x660
    10b0:	1400002b 	b	115c <MAIN__+0x33c>
    10b4:	6b0003e2 	negs	w2, w0
    10b8:	90000001 	adrp	x1, 1000 <MAIN__+0x1e0>
    10bc:	12001c00 	and	w0, w0, #0xff
    10c0:	12001c42 	and	w2, w2, #0xff
    10c4:	5a824402 	csneg	w2, w0, w2, mi  // mi = first
    10c8:	b9008fe2 	str	w2, [sp, #140]
    10cc:	3dc1cc20 	ldr	q0, [x1, #1840]
    10d0:	910843e2 	add	x2, sp, #0x210
    10d4:	528007a4 	mov	w4, #0x3d                  	// #61
    10d8:	52860005 	mov	w5, #0x3000                	// #12288
    10dc:	911902e1 	add	x1, x23, #0x640
    10e0:	b90103e5 	str	w5, [sp, #256]
    10e4:	b90107f6 	str	w22, [sp, #260]
    10e8:	aa1303e0 	mov	x0, x19
    10ec:	f90087f5 	str	x21, [sp, #264]
    10f0:	910233f9 	add	x25, sp, #0x8c
    10f4:	b90113e4 	str	w4, [sp, #272]
    10f8:	9100079c 	add	x28, x28, #0x1
    10fc:	f900abfb 	str	x27, [sp, #336]
    1100:	3c948040 	stur	q0, [x2, #-184]
    1104:	f900b7e1 	str	x1, [sp, #360]
    1108:	97fffed6 	bl	c60 <_gfortran_st_write@plt>
    110c:	aa1903e1 	mov	x1, x25
    1110:	aa1303e0 	mov	x0, x19
    1114:	52800082 	mov	w2, #0x4                   	// #4
    1118:	97fffe9e 	bl	b90 <_gfortran_transfer_integer_write@plt>
    111c:	9118c301 	add	x1, x24, #0x630
    1120:	aa1303e0 	mov	x0, x19
    1124:	d2800022 	mov	x2, #0x1                   	// #1
    1128:	97fffeaa 	bl	bd0 <_gfortran_transfer_character_write@plt>
    112c:	aa1903e1 	mov	x1, x25
    1130:	aa1303e0 	mov	x0, x19
    1134:	52800082 	mov	w2, #0x4                   	// #4
    1138:	97fffe96 	bl	b90 <_gfortran_transfer_integer_write@plt>
    113c:	aa1a03e1 	mov	x1, x26
    1140:	d28000a2 	mov	x2, #0x5                   	// #5
    1144:	aa1303e0 	mov	x0, x19
    1148:	97fffea2 	bl	bd0 <_gfortran_transfer_character_write@plt>
    114c:	aa1303e0 	mov	x0, x19
    1150:	97fffeac 	bl	c00 <_gfortran_st_write_done@plt>
    1154:	f13e879f 	cmp	x28, #0xfa1
    1158:	54000460 	b.eq	11e4 <MAIN__+0x3c4>  // b.none
    115c:	a94a0be1 	ldp	x1, x2, [sp, #160]
    1160:	f94073e0 	ldr	x0, [sp, #224]
    1164:	9b007280 	madd	x0, x20, x0, x28
    1168:	8b020000 	add	x0, x0, x2
    116c:	b8607820 	ldr	w0, [x1, x0, lsl #2]
    1170:	710fa01f 	cmp	w0, #0x3e8
    1174:	54fffa01 	b.ne	10b4 <MAIN__+0x294>  // b.any
    1178:	90000000 	adrp	x0, 1000 <MAIN__+0x1e0>
    117c:	52800743 	mov	w3, #0x3a                  	// #58
    1180:	52860004 	mov	w4, #0x3000                	// #12288
    1184:	911902e1 	add	x1, x23, #0x640
    1188:	3dc1c800 	ldr	q0, [x0, #1824]
    118c:	90000000 	adrp	x0, 1000 <MAIN__+0x1e0>
    1190:	91184002 	add	x2, x0, #0x610
    1194:	f900abe2 	str	x2, [sp, #336]
    1198:	910843e2 	add	x2, sp, #0x210
    119c:	b90103e4 	str	w4, [sp, #256]
    11a0:	b90107f6 	str	w22, [sp, #260]
    11a4:	aa1303e0 	mov	x0, x19
    11a8:	f90087f5 	str	x21, [sp, #264]
    11ac:	9100079c 	add	x28, x28, #0x1
    11b0:	b90113e3 	str	w3, [sp, #272]
    11b4:	3c948040 	stur	q0, [x2, #-184]
    11b8:	f900b7e1 	str	x1, [sp, #360]
    11bc:	97fffea9 	bl	c60 <_gfortran_st_write@plt>
    11c0:	90000001 	adrp	x1, 1000 <MAIN__+0x1e0>
    11c4:	91192021 	add	x1, x1, #0x648
    11c8:	d28000c2 	mov	x2, #0x6                   	// #6
    11cc:	aa1303e0 	mov	x0, x19
    11d0:	97fffe80 	bl	bd0 <_gfortran_transfer_character_write@plt>
    11d4:	aa1303e0 	mov	x0, x19
    11d8:	97fffe8a 	bl	c00 <_gfortran_st_write_done@plt>
    11dc:	f13e879f 	cmp	x28, #0xfa1
    11e0:	54fffbe1 	b.ne	115c <MAIN__+0x33c>  // b.any
    11e4:	52800801 	mov	w1, #0x40                  	// #64
    11e8:	52801002 	mov	w2, #0x80                  	// #128
    11ec:	aa1303e0 	mov	x0, x19
    11f0:	b90103e2 	str	w2, [sp, #256]
    11f4:	b90107f6 	str	w22, [sp, #260]
    11f8:	91000694 	add	x20, x20, #0x1
    11fc:	f90087f5 	str	x21, [sp, #264]
    1200:	b90113e1 	str	w1, [sp, #272]
    1204:	97fffe97 	bl	c60 <_gfortran_st_write@plt>
    1208:	aa1303e0 	mov	x0, x19
    120c:	97fffe7d 	bl	c00 <_gfortran_st_write_done@plt>
    1210:	f13e869f 	cmp	x20, #0xfa1
    1214:	54fff481 	b.ne	10a4 <MAIN__+0x284>  // b.any
    1218:	52800841 	mov	w1, #0x42                  	// #66
    121c:	aa1303e0 	mov	x0, x19
    1220:	b90103ff 	str	wzr, [sp, #256]
    1224:	b90107f6 	str	w22, [sp, #260]
    1228:	f90087f5 	str	x21, [sp, #264]
    122c:	b90113e1 	str	w1, [sp, #272]
    1230:	97fffe54 	bl	b80 <_gfortran_st_close@plt>
    1234:	90000000 	adrp	x0, 1000 <MAIN__+0x1e0>
    1238:	90000001 	adrp	x1, 1000 <MAIN__+0x1e0>
    123c:	9119a021 	add	x1, x1, #0x668
    1240:	52800883 	mov	w3, #0x44                  	// #68
    1244:	fd43a400 	ldr	d0, [x0, #1864]
    1248:	d28001e2 	mov	x2, #0xf                   	// #15
    124c:	aa1303e0 	mov	x0, x19
    1250:	f90087f5 	str	x21, [sp, #264]
    1254:	b90113e3 	str	w3, [sp, #272]
    1258:	fd0083e0 	str	d0, [sp, #256]
    125c:	a9150be1 	stp	x1, x2, [sp, #336]
    1260:	97fffe80 	bl	c60 <_gfortran_st_write@plt>
    1264:	aa1303e0 	mov	x0, x19
    1268:	d2800162 	mov	x2, #0xb                   	// #11
    126c:	90000001 	adrp	x1, 1000 <MAIN__+0x1e0>
    1270:	9119e021 	add	x1, x1, #0x678
    1274:	97fffe57 	bl	bd0 <_gfortran_transfer_character_write@plt>
    1278:	910263e1 	add	x1, sp, #0x98
    127c:	aa1303e0 	mov	x0, x19
    1280:	52800102 	mov	w2, #0x8                   	// #8
    1284:	97fffe33 	bl	b50 <_gfortran_transfer_real_write@plt>
    1288:	aa1303e0 	mov	x0, x19
    128c:	d2800222 	mov	x2, #0x11                  	// #17
    1290:	90000001 	adrp	x1, 1000 <MAIN__+0x1e0>
    1294:	911a2021 	add	x1, x1, #0x688
    1298:	97fffe4e 	bl	bd0 <_gfortran_transfer_character_write@plt>
    129c:	910243e1 	add	x1, sp, #0x90
    12a0:	52800102 	mov	w2, #0x8                   	// #8
    12a4:	aa1303e0 	mov	x0, x19
    12a8:	97fffe2a 	bl	b50 <_gfortran_transfer_real_write@plt>
    12ac:	aa1303e0 	mov	x0, x19
    12b0:	97fffe54 	bl	c00 <_gfortran_st_write_done@plt>
    12b4:	f94053e0 	ldr	x0, [sp, #160]
    12b8:	b4000240 	cbz	x0, 1300 <MAIN__+0x4e0>
    12bc:	97fffe65 	bl	c50 <free@plt>
    12c0:	a9407bfd 	ldp	x29, x30, [sp]
    12c4:	a94153f3 	ldp	x19, x20, [sp, #16]
    12c8:	a9425bf5 	ldp	x21, x22, [sp, #32]
    12cc:	a94363f7 	ldp	x23, x24, [sp, #48]
    12d0:	a9446bf9 	ldp	x25, x26, [sp, #64]
    12d4:	a94573fb 	ldp	x27, x28, [sp, #80]
    12d8:	fd4033e8 	ldr	d8, [sp, #96]
    12dc:	910c43ff 	add	sp, sp, #0x310
    12e0:	d65f03c0 	ret
    12e4:	d2920002 	mov	x2, #0x9000                	// #36864
    12e8:	90000001 	adrp	x1, 1000 <MAIN__+0x1e0>
    12ec:	90000000 	adrp	x0, 1000 <MAIN__+0x1e0>
    12f0:	91166021 	add	x1, x1, #0x598
    12f4:	9116e000 	add	x0, x0, #0x5b8
    12f8:	f2a07a02 	movk	x2, #0x3d0, lsl #16
    12fc:	97fffe39 	bl	be0 <_gfortran_os_error_at@plt>
    1300:	90000002 	adrp	x2, 1000 <MAIN__+0x1e0>
    1304:	90000001 	adrp	x1, 1000 <MAIN__+0x1e0>
    1308:	90000000 	adrp	x0, 1000 <MAIN__+0x1e0>
    130c:	911a8042 	add	x2, x2, #0x6a0
    1310:	911aa021 	add	x1, x1, #0x6a8
    1314:	911b4000 	add	x0, x0, #0x6d0
    1318:	97fffe12 	bl	b60 <_gfortran_runtime_error_at@plt>
    131c:	d503201f 	nop

0000000000001320 <MAIN__._omp_fn.0>:
    1320:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
    1324:	910003fd 	mov	x29, sp
    1328:	a90153f3 	stp	x19, x20, [sp, #16]
    132c:	910123f4 	add	x20, sp, #0x48
    1330:	aa0003f3 	mov	x19, x0
    1334:	f90013f5 	str	x21, [sp, #32]
    1338:	910103f5 	add	x21, sp, #0x40
    133c:	aa1403e1 	mov	x1, x20
    1340:	aa1503e0 	mov	x0, x21
    1344:	97fffe37 	bl	c20 <GOMP_loop_nonmonotonic_dynamic_next@plt>
    1348:	72001c1f 	tst	w0, #0xff
    134c:	540006a0 	b.eq	1420 <MAIN__._omp_fn.0+0x100>  // b.none
    1350:	d2c80000 	mov	x0, #0x400000000000        	// #70368744177664
    1354:	fd0017ea 	str	d10, [sp, #40]
    1358:	f2e815e0 	movk	x0, #0x40af, lsl #48
    135c:	1e61100a 	fmov	d10, #3.000000000000000000e+00
    1360:	6d0327e8 	stp	d8, d9, [sp, #48]
    1364:	9e670009 	fmov	d9, x0
    1368:	1e621008 	fmov	d8, #4.000000000000000000e+00
    136c:	b94043e3 	ldr	w3, [sp, #64]
    1370:	1e7f1010 	fmov	d16, #-1.500000000000000000e+00
    1374:	b9404be1 	ldr	w1, [sp, #72]
    1378:	1e701007 	fmov	d7, #-2.000000000000000000e+00
    137c:	51000460 	sub	w0, w3, #0x1
    1380:	52800002 	mov	w2, #0x0                   	// #0
    1384:	1e620006 	scvtf	d6, w0
    1388:	1e6918c6 	fdiv	d6, d6, d9
    138c:	1f4a40c6 	fmadd	d6, d6, d10, d16
    1390:	1e620045 	scvtf	d5, w2
    1394:	2f00e402 	movi	d2, #0x0
    1398:	52800000 	mov	w0, #0x0                   	// #0
    139c:	1e6918a5 	fdiv	d5, d5, d9
    13a0:	1e604040 	fmov	d0, d2
    13a4:	1e604043 	fmov	d3, d2
    13a8:	1e604041 	fmov	d1, d2
    13ac:	1f4a1ca5 	fmadd	d5, d5, d10, d7
    13b0:	14000006 	b	13c8 <MAIN__._omp_fn.0+0xa8>
    13b4:	1e600801 	fmul	d1, d0, d0
    13b8:	1e620843 	fmul	d3, d2, d2
    13bc:	1e632824 	fadd	d4, d1, d3
    13c0:	1e682090 	fcmpe	d4, d8
    13c4:	5400012c 	b.gt	13e8 <MAIN__._omp_fn.0+0xc8>
    13c8:	1e602800 	fadd	d0, d0, d0
    13cc:	1e633821 	fsub	d1, d1, d3
    13d0:	11000400 	add	w0, w0, #0x1
    13d4:	1f421802 	fmadd	d2, d0, d2, d6
    13d8:	1e652820 	fadd	d0, d1, d5
    13dc:	710fa01f 	cmp	w0, #0x3e8
    13e0:	54fffea1 	b.ne	13b4 <MAIN__._omp_fn.0+0x94>  // b.any
    13e4:	d503201f 	nop
    13e8:	11000442 	add	w2, w2, #0x1
    13ec:	713e805f 	cmp	w2, #0xfa0
    13f0:	54fffd01 	b.ne	1390 <MAIN__._omp_fn.0+0x70>  // b.any
    13f4:	11000463 	add	w3, w3, #0x1
    13f8:	6b03003f 	cmp	w1, w3
    13fc:	54fffc0c 	b.gt	137c <MAIN__._omp_fn.0+0x5c>
    1400:	b9000260 	str	w0, [x19]
    1404:	aa1403e1 	mov	x1, x20
    1408:	aa1503e0 	mov	x0, x21
    140c:	97fffe05 	bl	c20 <GOMP_loop_nonmonotonic_dynamic_next@plt>
    1410:	72001c1f 	tst	w0, #0xff
    1414:	54fffac1 	b.ne	136c <MAIN__._omp_fn.0+0x4c>  // b.any
    1418:	6d4327e8 	ldp	d8, d9, [sp, #48]
    141c:	fd4017ea 	ldr	d10, [sp, #40]
    1420:	97fffe18 	bl	c80 <GOMP_loop_end_nowait@plt>
    1424:	a94153f3 	ldp	x19, x20, [sp, #16]
    1428:	f94013f5 	ldr	x21, [sp, #32]
    142c:	a8c57bfd 	ldp	x29, x30, [sp], #80
    1430:	d65f03c0 	ret

0000000000001434 <MAIN__._omp_fn.1>:
    1434:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
    1438:	910003fd 	mov	x29, sp
    143c:	a90153f3 	stp	x19, x20, [sp, #16]
    1440:	910103f4 	add	x20, sp, #0x40
    1444:	aa0003f3 	mov	x19, x0
    1448:	f90013f5 	str	x21, [sp, #32]
    144c:	910123f5 	add	x21, sp, #0x48
    1450:	aa1403e0 	mov	x0, x20
    1454:	aa1503e1 	mov	x1, x21
    1458:	97fffdf2 	bl	c20 <GOMP_loop_nonmonotonic_dynamic_next@plt>
    145c:	72001c1f 	tst	w0, #0xff
    1460:	540007e0 	b.eq	155c <MAIN__._omp_fn.1+0x128>  // b.none
    1464:	d2c80000 	mov	x0, #0x400000000000        	// #70368744177664
    1468:	fd0017ea 	str	d10, [sp, #40]
    146c:	f2e815e0 	movk	x0, #0x40af, lsl #48
    1470:	1e61100a 	fmov	d10, #3.000000000000000000e+00
    1474:	6d0327e8 	stp	d8, d9, [sp, #48]
    1478:	9e670009 	fmov	d9, x0
    147c:	1e621008 	fmov	d8, #4.000000000000000000e+00
    1480:	f9400262 	ldr	x2, [x19]
    1484:	1e7f1010 	fmov	d16, #-1.500000000000000000e+00
    1488:	f94023e0 	ldr	x0, [sp, #64]
    148c:	1e701007 	fmov	d7, #-2.000000000000000000e+00
    1490:	a9400c46 	ldp	x6, x3, [x2]
    1494:	2a0003e5 	mov	w5, w0
    1498:	f9402041 	ldr	x1, [x2, #64]
    149c:	93407c00 	sxtw	x0, w0
    14a0:	b9404be7 	ldr	w7, [sp, #72]
    14a4:	9b010c04 	madd	x4, x0, x1, x3
    14a8:	910010c6 	add	x6, x6, #0x4
    14ac:	510004a0 	sub	w0, w5, #0x1
    14b0:	8b0408c3 	add	x3, x6, x4, lsl #2
    14b4:	d2800002 	mov	x2, #0x0                   	// #0
    14b8:	1e620006 	scvtf	d6, w0
    14bc:	1e6918c6 	fdiv	d6, d6, d9
    14c0:	1f4a40c6 	fmadd	d6, d6, d10, d16
    14c4:	d503201f 	nop
    14c8:	1e620045 	scvtf	d5, w2
    14cc:	2f00e402 	movi	d2, #0x0
    14d0:	52800000 	mov	w0, #0x0                   	// #0
    14d4:	1e6918a5 	fdiv	d5, d5, d9
    14d8:	1e604040 	fmov	d0, d2
    14dc:	1e604043 	fmov	d3, d2
    14e0:	1e604041 	fmov	d1, d2
    14e4:	1f4a1ca5 	fmadd	d5, d5, d10, d7
    14e8:	14000006 	b	1500 <MAIN__._omp_fn.1+0xcc>
    14ec:	1e600801 	fmul	d1, d0, d0
    14f0:	1e620843 	fmul	d3, d2, d2
    14f4:	1e632824 	fadd	d4, d1, d3
    14f8:	1e682090 	fcmpe	d4, d8
    14fc:	5400012c 	b.gt	1520 <MAIN__._omp_fn.1+0xec>
    1500:	1e602800 	fadd	d0, d0, d0
    1504:	1e633821 	fsub	d1, d1, d3
    1508:	11000400 	add	w0, w0, #0x1
    150c:	1f421802 	fmadd	d2, d0, d2, d6
    1510:	1e652820 	fadd	d0, d1, d5
    1514:	710fa01f 	cmp	w0, #0x3e8
    1518:	54fffea1 	b.ne	14ec <MAIN__._omp_fn.1+0xb8>  // b.any
    151c:	d503201f 	nop
    1520:	b8227860 	str	w0, [x3, x2, lsl #2]
    1524:	91000442 	add	x2, x2, #0x1
    1528:	f13e805f 	cmp	x2, #0xfa0
    152c:	54fffce1 	b.ne	14c8 <MAIN__._omp_fn.1+0x94>  // b.any
    1530:	110004a5 	add	w5, w5, #0x1
    1534:	8b010084 	add	x4, x4, x1
    1538:	6b0500ff 	cmp	w7, w5
    153c:	54fffb8c 	b.gt	14ac <MAIN__._omp_fn.1+0x78>
    1540:	aa1503e1 	mov	x1, x21
    1544:	aa1403e0 	mov	x0, x20
    1548:	97fffdb6 	bl	c20 <GOMP_loop_nonmonotonic_dynamic_next@plt>
    154c:	72001c1f 	tst	w0, #0xff
    1550:	54fff981 	b.ne	1480 <MAIN__._omp_fn.1+0x4c>  // b.any
    1554:	6d4327e8 	ldp	d8, d9, [sp, #48]
    1558:	fd4017ea 	ldr	d10, [sp, #40]
    155c:	97fffdc9 	bl	c80 <GOMP_loop_end_nowait@plt>
    1560:	a94153f3 	ldp	x19, x20, [sp, #16]
    1564:	f94013f5 	ldr	x21, [sp, #32]
    1568:	a8c57bfd 	ldp	x29, x30, [sp], #80
    156c:	d65f03c0 	ret

Disassembly of section .fini:

0000000000001570 <_fini>:
    1570:	d503201f 	nop
    1574:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    1578:	910003fd 	mov	x29, sp
    157c:	a8c17bfd 	ldp	x29, x30, [sp], #16
    1580:	d65f03c0 	ret
