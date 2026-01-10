
/bench/bench:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000010b00 <_start>:
   10b00:	d503201f 	nop
   10b04:	d280001d 	mov	x29, #0x0                   	// #0
   10b08:	d280001e 	mov	x30, #0x0                   	// #0
   10b0c:	aa0003e5 	mov	x5, x0
   10b10:	f94003e1 	ldr	x1, [sp]
   10b14:	910023e2 	add	x2, sp, #0x8
   10b18:	910003e6 	mov	x6, sp
   10b1c:	d503201f 	nop
   10b20:	100007a0 	adr	x0, 10c14 <main>
   10b24:	d2800003 	mov	x3, #0x0                   	// #0
   10b28:	d2800004 	mov	x4, #0x0                   	// #0
   10b2c:	94000131 	bl	10ff0 <__libc_start_main@plt>
   10b30:	9400012c 	bl	10fe0 <abort@plt>

0000000000010b34 <call_weak_fn>:
   10b34:	b0000080 	adrp	x0, 21000 <fputc@plt+0xff30>
   10b38:	f9417000 	ldr	x0, [x0, #736]
   10b3c:	b4000040 	cbz	x0, 10b44 <call_weak_fn+0x10>
   10b40:	14000130 	b	11000 <__gmon_start__@plt>
   10b44:	d65f03c0 	ret
	...

0000000000010b50 <deregister_tm_clones>:
   10b50:	d503201f 	nop
   10b54:	10103de0 	adr	x0, 31310 <__TMC_END__>
   10b58:	d503201f 	nop
   10b5c:	10103da1 	adr	x1, 31310 <__TMC_END__>
   10b60:	eb00003f 	cmp	x1, x0
   10b64:	540000c0 	b.eq	10b7c <deregister_tm_clones+0x2c>  // b.none
   10b68:	b0000081 	adrp	x1, 21000 <fputc@plt+0xff30>
   10b6c:	f9417421 	ldr	x1, [x1, #744]
   10b70:	b4000061 	cbz	x1, 10b7c <deregister_tm_clones+0x2c>
   10b74:	aa0103f0 	mov	x16, x1
   10b78:	d61f0200 	br	x16
   10b7c:	d65f03c0 	ret

0000000000010b80 <register_tm_clones>:
   10b80:	d503201f 	nop
   10b84:	10103c60 	adr	x0, 31310 <__TMC_END__>
   10b88:	d503201f 	nop
   10b8c:	10103c21 	adr	x1, 31310 <__TMC_END__>
   10b90:	cb000021 	sub	x1, x1, x0
   10b94:	d37ffc22 	lsr	x2, x1, #63
   10b98:	8b810c41 	add	x1, x2, x1, asr #3
   10b9c:	9341fc21 	asr	x1, x1, #1
   10ba0:	b40000c1 	cbz	x1, 10bb8 <register_tm_clones+0x38>
   10ba4:	b0000082 	adrp	x2, 21000 <fputc@plt+0xff30>
   10ba8:	f9417842 	ldr	x2, [x2, #752]
   10bac:	b4000062 	cbz	x2, 10bb8 <register_tm_clones+0x38>
   10bb0:	aa0203f0 	mov	x16, x2
   10bb4:	d61f0200 	br	x16
   10bb8:	d65f03c0 	ret
   10bbc:	d503201f 	nop

0000000000010bc0 <__do_global_dtors_aux>:
   10bc0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   10bc4:	910003fd 	mov	x29, sp
   10bc8:	f9000bf3 	str	x19, [sp, #16]
   10bcc:	b0000113 	adrp	x19, 31000 <_DYNAMIC+0xfef8>
   10bd0:	394ea260 	ldrb	w0, [x19, #936]
   10bd4:	35000140 	cbnz	w0, 10bfc <__do_global_dtors_aux+0x3c>
   10bd8:	b0000080 	adrp	x0, 21000 <fputc@plt+0xff30>
   10bdc:	f9417c00 	ldr	x0, [x0, #760]
   10be0:	b4000080 	cbz	x0, 10bf0 <__do_global_dtors_aux+0x30>
   10be4:	b0000100 	adrp	x0, 31000 <_DYNAMIC+0xfef8>
   10be8:	f9418400 	ldr	x0, [x0, #776]
   10bec:	94000109 	bl	11010 <__cxa_finalize@plt>
   10bf0:	97ffffd8 	bl	10b50 <deregister_tm_clones>
   10bf4:	52800020 	mov	w0, #0x1                   	// #1
   10bf8:	390ea260 	strb	w0, [x19, #936]
   10bfc:	f9400bf3 	ldr	x19, [sp, #16]
   10c00:	a8c27bfd 	ldp	x29, x30, [sp], #32
   10c04:	d65f03c0 	ret
   10c08:	d503201f 	nop
   10c0c:	d503201f 	nop

0000000000010c10 <frame_dummy>:
   10c10:	17ffffdc 	b	10b80 <register_tm_clones>

0000000000010c14 <main>:
   10c14:	d10343ff 	sub	sp, sp, #0xd0
   10c18:	6d0623e9 	stp	d9, d8, [sp, #96]
   10c1c:	a9077bfd 	stp	x29, x30, [sp, #112]
   10c20:	9101c3fd 	add	x29, sp, #0x70
   10c24:	f90043fb 	str	x27, [sp, #128]
   10c28:	a90967fa 	stp	x26, x25, [sp, #144]
   10c2c:	a90a5ff8 	stp	x24, x23, [sp, #160]
   10c30:	a90b57f6 	stp	x22, x21, [sp, #176]
   10c34:	a90c4ff4 	stp	x20, x19, [sp, #192]
   10c38:	5281f408 	mov	w8, #0xfa0                 	// #4000
   10c3c:	52807d09 	mov	w9, #0x3e8                 	// #1000
   10c40:	52920000 	mov	w0, #0x9000                	// #36864
   10c44:	d2f8000a 	mov	x10, #0xc000000000000000    	// #-4611686018427387904
   10c48:	d2e7fe0b 	mov	x11, #0x3ff0000000000000    	// #4607182418800017408
   10c4c:	72a07a00 	movk	w0, #0x3d0, lsl #16
   10c50:	290323a8 	stp	w8, w8, [x29, #24]
   10c54:	d2f7ff08 	mov	x8, #0xbff8000000000000    	// #-4613937818241073152
   10c58:	b81dc3a9 	stur	w9, [x29, #-36]
   10c5c:	d2e7ff09 	mov	x9, #0x3ff8000000000000    	// #4609434218613702656
   10c60:	f81d03aa 	stur	x10, [x29, #-48]
   10c64:	a9032fe8 	stp	x8, x11, [sp, #48]
   10c68:	f90017e9 	str	x9, [sp, #40]
   10c6c:	940000ed 	bl	11020 <malloc@plt>
   10c70:	f90013e0 	str	x0, [sp, #32]
   10c74:	d10083a1 	sub	x1, x29, #0x20
   10c78:	52800020 	mov	w0, #0x1                   	// #1
   10c7c:	9400010d 	bl	110b0 <clock_gettime@plt>
   10c80:	a97e5fb6 	ldp	x22, x23, [x29, #-32]
   10c84:	b0000080 	adrp	x0, 21000 <fputc@plt+0xff30>
   10c88:	90000002 	adrp	x2, 10000 <__FRAME_END__+0xf650>
   10c8c:	d10093a8 	sub	x8, x29, #0x24
   10c90:	910083e9 	add	x9, sp, #0x20
   10c94:	9100e3ea 	add	x10, sp, #0x38
   10c98:	9103c000 	add	x0, x0, #0xf0
   10c9c:	91388042 	add	x2, x2, #0xe20
   10ca0:	910063a3 	add	x3, x29, #0x18
   10ca4:	9100c3e4 	add	x4, sp, #0x30
   10ca8:	9100a3e5 	add	x5, sp, #0x28
   10cac:	910073a6 	add	x6, x29, #0x1c
   10cb0:	d100c3a7 	sub	x7, x29, #0x30
   10cb4:	52800101 	mov	w1, #0x8                   	// #8
   10cb8:	a900a3e9 	stp	x9, x8, [sp, #8]
   10cbc:	f90003ea 	str	x10, [sp]
   10cc0:	940000e4 	bl	11050 <__kmpc_fork_call@plt>
   10cc4:	d10083a1 	sub	x1, x29, #0x20
   10cc8:	52800020 	mov	w0, #0x1                   	// #1
   10ccc:	940000f9 	bl	110b0 <clock_gettime@plt>
   10cd0:	a97e67b8 	ldp	x24, x25, [x29, #-32]
   10cd4:	90ffff80 	adrp	x0, 0 <__abi_tag-0x2c4>
   10cd8:	90ffff81 	adrp	x1, 0 <__abi_tag-0x2c4>
   10cdc:	9124d400 	add	x0, x0, #0x935
   10ce0:	91242821 	add	x1, x1, #0x90a
   10ce4:	940000df 	bl	11060 <fopen@plt>
   10ce8:	90ffff81 	adrp	x1, 0 <__abi_tag-0x2c4>
   10cec:	5281f402 	mov	w2, #0xfa0                 	// #4000
   10cf0:	9123f021 	add	x1, x1, #0x8fc
   10cf4:	5281f403 	mov	w3, #0xfa0                 	// #4000
   10cf8:	aa0003f3 	mov	x19, x0
   10cfc:	940000dd 	bl	11070 <fprintf@plt>
   10d00:	5284801b 	mov	w27, #0x2400                	// #9216
   10d04:	90ffff94 	adrp	x20, 0 <__abi_tag-0x2c4>
   10d08:	90ffff95 	adrp	x21, 0 <__abi_tag-0x2c4>
   10d0c:	aa1f03fa 	mov	x26, xzr
   10d10:	72a01e9b 	movk	w27, #0xf4, lsl #16
   10d14:	9124ba94 	add	x20, x20, #0x92e
   10d18:	91248eb5 	add	x21, x21, #0x923
   10d1c:	14000004 	b	10d2c <main+0x118>
   10d20:	9100075a 	add	x26, x26, #0x1
   10d24:	eb1b035f 	cmp	x26, x27
   10d28:	54000300 	b.eq	10d88 <main+0x174>  // b.none
   10d2c:	f94013e8 	ldr	x8, [sp, #32]
   10d30:	b87a7908 	ldr	w8, [x8, x26, lsl #2]
   10d34:	710fa11f 	cmp	w8, #0x3e8
   10d38:	54000121 	b.ne	10d5c <main+0x148>  // b.any
   10d3c:	aa1403e0 	mov	x0, x20
   10d40:	528000c1 	mov	w1, #0x6                   	// #6
   10d44:	52800022 	mov	w2, #0x1                   	// #1
   10d48:	aa1303e3 	mov	x3, x19
   10d4c:	940000dd 	bl	110c0 <fwrite@plt>
   10d50:	f2400f5f 	tst	x26, #0xf
   10d54:	54fffe61 	b.ne	10d20 <main+0x10c>  // b.any
   10d58:	14000008 	b	10d78 <main+0x164>
   10d5c:	12001d02 	and	w2, w8, #0xff
   10d60:	aa1303e0 	mov	x0, x19
   10d64:	aa1503e1 	mov	x1, x21
   10d68:	2a0203e3 	mov	w3, w2
   10d6c:	940000c1 	bl	11070 <fprintf@plt>
   10d70:	f2400f5f 	tst	x26, #0xf
   10d74:	54fffd61 	b.ne	10d20 <main+0x10c>  // b.any
   10d78:	52800140 	mov	w0, #0xa                   	// #10
   10d7c:	aa1303e1 	mov	x1, x19
   10d80:	940000d4 	bl	110d0 <fputc@plt>
   10d84:	17ffffe7 	b	10d20 <main+0x10c>
   10d88:	d2d09008 	mov	x8, #0x848000000000        	// #145685290680320
   10d8c:	9e620320 	scvtf	d0, x25
   10d90:	f2e825c8 	movk	x8, #0x412e, lsl #48
   10d94:	9e6202e2 	scvtf	d2, x23
   10d98:	9e620303 	scvtf	d3, x24
   10d9c:	aa1303e0 	mov	x0, x19
   10da0:	9e670101 	fmov	d1, x8
   10da4:	d2c80008 	mov	x8, #0x400000000000        	// #70368744177664
   10da8:	f2e811e8 	movk	x8, #0x408f, lsl #48
   10dac:	1e611800 	fdiv	d0, d0, d1
   10db0:	9e670109 	fmov	d9, x8
   10db4:	1e611841 	fdiv	d1, d2, d1
   10db8:	9e6202c2 	scvtf	d2, x22
   10dbc:	1f490060 	fmadd	d0, d3, d9, d0
   10dc0:	1f490441 	fmadd	d1, d2, d9, d1
   10dc4:	1e613808 	fsub	d8, d0, d1
   10dc8:	940000ae 	bl	11080 <fclose@plt>
   10dcc:	d2d09008 	mov	x8, #0x848000000000        	// #145685290680320
   10dd0:	1e690900 	fmul	d0, d8, d9
   10dd4:	f2e82dc8 	movk	x8, #0x416e, lsl #48
   10dd8:	90ffff80 	adrp	x0, 0 <__abi_tag-0x2c4>
   10ddc:	91251000 	add	x0, x0, #0x944
   10de0:	9e670101 	fmov	d1, x8
   10de4:	1e601821 	fdiv	d1, d1, d0
   10de8:	1e604100 	fmov	d0, d8
   10dec:	940000a9 	bl	11090 <printf@plt>
   10df0:	f94013e0 	ldr	x0, [sp, #32]
   10df4:	940000ab 	bl	110a0 <free@plt>
   10df8:	a94c4ff4 	ldp	x20, x19, [sp, #192]
   10dfc:	2a1f03e0 	mov	w0, wzr
   10e00:	a94b57f6 	ldp	x22, x21, [sp, #176]
   10e04:	a94a5ff8 	ldp	x24, x23, [sp, #160]
   10e08:	a94967fa 	ldp	x26, x25, [sp, #144]
   10e0c:	a9477bfd 	ldp	x29, x30, [sp, #112]
   10e10:	6d4623e9 	ldp	d9, d8, [sp, #96]
   10e14:	f94043fb 	ldr	x27, [sp, #128]
   10e18:	910343ff 	add	sp, sp, #0xd0
   10e1c:	d65f03c0 	ret

0000000000010e20 <.omp_outlined.>:
   10e20:	d101c3ff 	sub	sp, sp, #0x70
   10e24:	6d012beb 	stp	d11, d10, [sp, #16]
   10e28:	6d0223e9 	stp	d9, d8, [sp, #32]
   10e2c:	a9037bfd 	stp	x29, x30, [sp, #48]
   10e30:	9100c3fd 	add	x29, sp, #0x30
   10e34:	f90023f7 	str	x23, [sp, #64]
   10e38:	a90557f6 	stp	x22, x21, [sp, #80]
   10e3c:	a9064ff4 	stp	x20, x19, [sp, #96]
   10e40:	b9400013 	ldr	w19, [x0]
   10e44:	d503201f 	nop
   10e48:	10081554 	adr	x20, 210f0 <__frame_dummy_init_array_entry+0x8>
   10e4c:	52800462 	mov	w2, #0x23                  	// #35
   10e50:	5281f3e8 	mov	w8, #0xf9f                 	// #3999
   10e54:	52800029 	mov	w9, #0x1                   	// #1
   10e58:	aa1403e0 	mov	x0, x20
   10e5c:	2a1303e1 	mov	w1, w19
   10e60:	72a80002 	movk	w2, #0x4000, lsl #16
   10e64:	2a1f03e3 	mov	w3, wzr
   10e68:	5281f3e4 	mov	w4, #0xf9f                 	// #3999
   10e6c:	52800025 	mov	w5, #0x1                   	// #1
   10e70:	52800026 	mov	w6, #0x1                   	// #1
   10e74:	f94023b5 	ldr	x21, [x29, #64]
   10e78:	29037fa8 	stp	w8, wzr, [x29, #24]
   10e7c:	290127ff 	stp	wzr, w9, [sp, #8]
   10e80:	9400006c 	bl	11030 <__kmpc_dispatch_init_4@plt>
   10e84:	d2c80016 	mov	x22, #0x400000000000        	// #70368744177664
   10e88:	1e7f1008 	fmov	d8, #-1.500000000000000000e+00
   10e8c:	f2e815f6 	movk	x22, #0x40af, lsl #48
   10e90:	1e611009 	fmov	d9, #3.000000000000000000e+00
   10e94:	5281f417 	mov	w23, #0xfa0                 	// #4000
   10e98:	1e70100a 	fmov	d10, #-2.000000000000000000e+00
   10e9c:	1e62100b 	fmov	d11, #4.000000000000000000e+00
   10ea0:	910023e2 	add	x2, sp, #0x8
   10ea4:	910073a3 	add	x3, x29, #0x1c
   10ea8:	910063a4 	add	x4, x29, #0x18
   10eac:	910033e5 	add	x5, sp, #0xc
   10eb0:	aa1403e0 	mov	x0, x20
   10eb4:	2a1303e1 	mov	w1, w19
   10eb8:	94000062 	bl	11040 <__kmpc_dispatch_next_4@plt>
   10ebc:	340005a0 	cbz	w0, 10f70 <.omp_outlined.+0x150>
   10ec0:	294323a9 	ldp	w9, w8, [x29, #24]
   10ec4:	93407d08 	sxtw	x8, w8
   10ec8:	6b09011f 	cmp	w8, w9
   10ecc:	54fffeac 	b.gt	10ea0 <.omp_outlined.+0x80>
   10ed0:	f94002a9 	ldr	x9, [x21]
   10ed4:	14000006 	b	10eec <.omp_outlined.+0xcc>
   10ed8:	b9801bab 	ldrsw	x11, [x29, #24]
   10edc:	9100050a 	add	x10, x8, #0x1
   10ee0:	eb0b011f 	cmp	x8, x11
   10ee4:	aa0a03e8 	mov	x8, x10
   10ee8:	54fffdca 	b.ge	10ea0 <.omp_outlined.+0x80>  // b.tcont
   10eec:	1e620100 	scvtf	d0, w8
   10ef0:	9e6702c1 	fmov	d1, x22
   10ef4:	9b177d0a 	mul	x10, x8, x23
   10ef8:	aa1f03eb 	mov	x11, xzr
   10efc:	1e611800 	fdiv	d0, d0, d1
   10f00:	1f492000 	fmadd	d0, d0, d9, d8
   10f04:	14000006 	b	10f1c <.omp_outlined.+0xfc>
   10f08:	8b0a016d 	add	x13, x11, x10
   10f0c:	9100056b 	add	x11, x11, #0x1
   10f10:	f13e817f 	cmp	x11, #0xfa0
   10f14:	b82d792c 	str	w12, [x9, x13, lsl #2]
   10f18:	54fffe00 	b.eq	10ed8 <.omp_outlined.+0xb8>  // b.none
   10f1c:	1e620161 	scvtf	d1, w11
   10f20:	9e6702c2 	fmov	d2, x22
   10f24:	2f00e403 	movi	d3, #0x0
   10f28:	2a1f03ec 	mov	w12, wzr
   10f2c:	1e621821 	fdiv	d1, d1, d2
   10f30:	2f00e402 	movi	d2, #0x0
   10f34:	1f492821 	fmadd	d1, d1, d9, d10
   10f38:	1e630864 	fmul	d4, d3, d3
   10f3c:	1e620845 	fmul	d5, d2, d2
   10f40:	1e652886 	fadd	d6, d4, d5
   10f44:	1e6b20c0 	fcmp	d6, d11
   10f48:	54fffe0c 	b.gt	10f08 <.omp_outlined.+0xe8>
   10f4c:	1e653884 	fsub	d4, d4, d5
   10f50:	1e632863 	fadd	d3, d3, d3
   10f54:	1100058c 	add	w12, w12, #0x1
   10f58:	710fa19f 	cmp	w12, #0x3e8
   10f5c:	1e642824 	fadd	d4, d1, d4
   10f60:	1f420062 	fmadd	d2, d3, d2, d0
   10f64:	1e604083 	fmov	d3, d4
   10f68:	54fffe81 	b.ne	10f38 <.omp_outlined.+0x118>  // b.any
   10f6c:	17ffffe7 	b	10f08 <.omp_outlined.+0xe8>
   10f70:	a9464ff4 	ldp	x20, x19, [sp, #96]
   10f74:	a94557f6 	ldp	x22, x21, [sp, #80]
   10f78:	a9437bfd 	ldp	x29, x30, [sp, #48]
   10f7c:	6d4223e9 	ldp	d9, d8, [sp, #32]
   10f80:	6d412beb 	ldp	d11, d10, [sp, #16]
   10f84:	f94023f7 	ldr	x23, [sp, #64]
   10f88:	9101c3ff 	add	sp, sp, #0x70
   10f8c:	d65f03c0 	ret

Disassembly of section .init:

0000000000010f90 <_init>:
   10f90:	d503201f 	nop
   10f94:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   10f98:	910003fd 	mov	x29, sp
   10f9c:	97fffee6 	bl	10b34 <call_weak_fn>
   10fa0:	a8c17bfd 	ldp	x29, x30, [sp], #16
   10fa4:	d65f03c0 	ret

Disassembly of section .fini:

0000000000010fa8 <_fini>:
   10fa8:	d503201f 	nop
   10fac:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   10fb0:	910003fd 	mov	x29, sp
   10fb4:	a8c17bfd 	ldp	x29, x30, [sp], #16
   10fb8:	d65f03c0 	ret

Disassembly of section .plt:

0000000000010fc0 <abort@plt-0x20>:
   10fc0:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
   10fc4:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0xfef8>
   10fc8:	f9419211 	ldr	x17, [x16, #800]
   10fcc:	910c8210 	add	x16, x16, #0x320
   10fd0:	d61f0220 	br	x17
   10fd4:	d503201f 	nop
   10fd8:	d503201f 	nop
   10fdc:	d503201f 	nop

0000000000010fe0 <abort@plt>:
   10fe0:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0xfef8>
   10fe4:	f9419611 	ldr	x17, [x16, #808]
   10fe8:	910ca210 	add	x16, x16, #0x328
   10fec:	d61f0220 	br	x17

0000000000010ff0 <__libc_start_main@plt>:
   10ff0:	b0000110 	adrp	x16, 31000 <_DYNAMIC+0xfef8>
   10ff4:	f9419a11 	ldr	x17, [x16, #816]
   10ff8:	910cc210 	add	x16, x16, #0x330
   10ffc:	d61f0220 	br	x17

0000000000011000 <__gmon_start__@plt>:
   11000:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfef8>
   11004:	f9419e11 	ldr	x17, [x16, #824]
   11008:	910ce210 	add	x16, x16, #0x338
   1100c:	d61f0220 	br	x17

0000000000011010 <__cxa_finalize@plt>:
   11010:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfef8>
   11014:	f941a211 	ldr	x17, [x16, #832]
   11018:	910d0210 	add	x16, x16, #0x340
   1101c:	d61f0220 	br	x17

0000000000011020 <malloc@plt>:
   11020:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfef8>
   11024:	f941a611 	ldr	x17, [x16, #840]
   11028:	910d2210 	add	x16, x16, #0x348
   1102c:	d61f0220 	br	x17

0000000000011030 <__kmpc_dispatch_init_4@plt>:
   11030:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfef8>
   11034:	f941aa11 	ldr	x17, [x16, #848]
   11038:	910d4210 	add	x16, x16, #0x350
   1103c:	d61f0220 	br	x17

0000000000011040 <__kmpc_dispatch_next_4@plt>:
   11040:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfef8>
   11044:	f941ae11 	ldr	x17, [x16, #856]
   11048:	910d6210 	add	x16, x16, #0x358
   1104c:	d61f0220 	br	x17

0000000000011050 <__kmpc_fork_call@plt>:
   11050:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfef8>
   11054:	f941b211 	ldr	x17, [x16, #864]
   11058:	910d8210 	add	x16, x16, #0x360
   1105c:	d61f0220 	br	x17

0000000000011060 <fopen@plt>:
   11060:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfef8>
   11064:	f941b611 	ldr	x17, [x16, #872]
   11068:	910da210 	add	x16, x16, #0x368
   1106c:	d61f0220 	br	x17

0000000000011070 <fprintf@plt>:
   11070:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfef8>
   11074:	f941ba11 	ldr	x17, [x16, #880]
   11078:	910dc210 	add	x16, x16, #0x370
   1107c:	d61f0220 	br	x17

0000000000011080 <fclose@plt>:
   11080:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfef8>
   11084:	f941be11 	ldr	x17, [x16, #888]
   11088:	910de210 	add	x16, x16, #0x378
   1108c:	d61f0220 	br	x17

0000000000011090 <printf@plt>:
   11090:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfef8>
   11094:	f941c211 	ldr	x17, [x16, #896]
   11098:	910e0210 	add	x16, x16, #0x380
   1109c:	d61f0220 	br	x17

00000000000110a0 <free@plt>:
   110a0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfef8>
   110a4:	f941c611 	ldr	x17, [x16, #904]
   110a8:	910e2210 	add	x16, x16, #0x388
   110ac:	d61f0220 	br	x17

00000000000110b0 <clock_gettime@plt>:
   110b0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfef8>
   110b4:	f941ca11 	ldr	x17, [x16, #912]
   110b8:	910e4210 	add	x16, x16, #0x390
   110bc:	d61f0220 	br	x17

00000000000110c0 <fwrite@plt>:
   110c0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfef8>
   110c4:	f941ce11 	ldr	x17, [x16, #920]
   110c8:	910e6210 	add	x16, x16, #0x398
   110cc:	d61f0220 	br	x17

00000000000110d0 <fputc@plt>:
   110d0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfef8>
   110d4:	f941d211 	ldr	x17, [x16, #928]
   110d8:	910e8210 	add	x16, x16, #0x3a0
   110dc:	d61f0220 	br	x17
