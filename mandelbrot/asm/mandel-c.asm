
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
   10b2c:	9400015d 	bl	110a0 <__libc_start_main@plt>
   10b30:	94000158 	bl	11090 <abort@plt>

0000000000010b34 <call_weak_fn>:
   10b34:	b0000080 	adrp	x0, 21000 <fputc@plt+0xfe80>
   10b38:	f941c800 	ldr	x0, [x0, #912]
   10b3c:	b4000040 	cbz	x0, 10b44 <call_weak_fn+0x10>
   10b40:	1400015c 	b	110b0 <__gmon_start__@plt>
   10b44:	d65f03c0 	ret
	...

0000000000010b50 <deregister_tm_clones>:
   10b50:	d503201f 	nop
   10b54:	10104360 	adr	x0, 313c0 <__TMC_END__>
   10b58:	d503201f 	nop
   10b5c:	10104321 	adr	x1, 313c0 <__TMC_END__>
   10b60:	eb00003f 	cmp	x1, x0
   10b64:	540000c0 	b.eq	10b7c <deregister_tm_clones+0x2c>  // b.none
   10b68:	b0000081 	adrp	x1, 21000 <fputc@plt+0xfe80>
   10b6c:	f941cc21 	ldr	x1, [x1, #920]
   10b70:	b4000061 	cbz	x1, 10b7c <deregister_tm_clones+0x2c>
   10b74:	aa0103f0 	mov	x16, x1
   10b78:	d61f0200 	br	x16
   10b7c:	d65f03c0 	ret

0000000000010b80 <register_tm_clones>:
   10b80:	d503201f 	nop
   10b84:	101041e0 	adr	x0, 313c0 <__TMC_END__>
   10b88:	d503201f 	nop
   10b8c:	101041a1 	adr	x1, 313c0 <__TMC_END__>
   10b90:	cb000021 	sub	x1, x1, x0
   10b94:	d37ffc22 	lsr	x2, x1, #63
   10b98:	8b810c41 	add	x1, x2, x1, asr #3
   10b9c:	9341fc21 	asr	x1, x1, #1
   10ba0:	b40000c1 	cbz	x1, 10bb8 <register_tm_clones+0x38>
   10ba4:	b0000082 	adrp	x2, 21000 <fputc@plt+0xfe80>
   10ba8:	f941d042 	ldr	x2, [x2, #928]
   10bac:	b4000062 	cbz	x2, 10bb8 <register_tm_clones+0x38>
   10bb0:	aa0203f0 	mov	x16, x2
   10bb4:	d61f0200 	br	x16
   10bb8:	d65f03c0 	ret
   10bbc:	d503201f 	nop

0000000000010bc0 <__do_global_dtors_aux>:
   10bc0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   10bc4:	910003fd 	mov	x29, sp
   10bc8:	f9000bf3 	str	x19, [sp, #16]
   10bcc:	b0000113 	adrp	x19, 31000 <_DYNAMIC+0xfe48>
   10bd0:	39516260 	ldrb	w0, [x19, #1112]
   10bd4:	35000140 	cbnz	w0, 10bfc <__do_global_dtors_aux+0x3c>
   10bd8:	b0000080 	adrp	x0, 21000 <fputc@plt+0xfe80>
   10bdc:	f941d400 	ldr	x0, [x0, #936]
   10be0:	b4000080 	cbz	x0, 10bf0 <__do_global_dtors_aux+0x30>
   10be4:	b0000100 	adrp	x0, 31000 <_DYNAMIC+0xfe48>
   10be8:	f941dc00 	ldr	x0, [x0, #952]
   10bec:	94000135 	bl	110c0 <__cxa_finalize@plt>
   10bf0:	97ffffd8 	bl	10b50 <deregister_tm_clones>
   10bf4:	52800020 	mov	w0, #0x1                   	// #1
   10bf8:	39116260 	strb	w0, [x19, #1112]
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
   10c6c:	94000119 	bl	110d0 <malloc@plt>
   10c70:	b0000093 	adrp	x19, 21000 <fputc@plt+0xfe80>
   10c74:	90000002 	adrp	x2, 10000 <__FRAME_END__+0xf648>
   10c78:	91068273 	add	x19, x19, #0x1a0
   10c7c:	f90013e0 	str	x0, [sp, #32]
   10c80:	d10093b4 	sub	x20, x29, #0x24
   10c84:	9100e3f5 	add	x21, sp, #0x38
   10c88:	91394042 	add	x2, x2, #0xe50
   10c8c:	910063a3 	add	x3, x29, #0x18
   10c90:	9100c3e4 	add	x4, sp, #0x30
   10c94:	9100a3e5 	add	x5, sp, #0x28
   10c98:	910073a6 	add	x6, x29, #0x1c
   10c9c:	d100c3a7 	sub	x7, x29, #0x30
   10ca0:	aa1303e0 	mov	x0, x19
   10ca4:	528000e1 	mov	w1, #0x7                   	// #7
   10ca8:	a90053f5 	stp	x21, x20, [sp]
   10cac:	94000115 	bl	11100 <__kmpc_fork_call@plt>
   10cb0:	d10083a1 	sub	x1, x29, #0x20
   10cb4:	52800020 	mov	w0, #0x1                   	// #1
   10cb8:	9400012a 	bl	11160 <clock_gettime@plt>
   10cbc:	a97e5fb6 	ldp	x22, x23, [x29, #-32]
   10cc0:	90000002 	adrp	x2, 10000 <__FRAME_END__+0xf648>
   10cc4:	910083e8 	add	x8, sp, #0x20
   10cc8:	913b5042 	add	x2, x2, #0xed4
   10ccc:	910063a3 	add	x3, x29, #0x18
   10cd0:	9100c3e4 	add	x4, sp, #0x30
   10cd4:	9100a3e5 	add	x5, sp, #0x28
   10cd8:	910073a6 	add	x6, x29, #0x1c
   10cdc:	d100c3a7 	sub	x7, x29, #0x30
   10ce0:	aa1303e0 	mov	x0, x19
   10ce4:	52800101 	mov	w1, #0x8                   	// #8
   10ce8:	a900d3e8 	stp	x8, x20, [sp, #8]
   10cec:	f90003f5 	str	x21, [sp]
   10cf0:	94000104 	bl	11100 <__kmpc_fork_call@plt>
   10cf4:	d10083a1 	sub	x1, x29, #0x20
   10cf8:	52800020 	mov	w0, #0x1                   	// #1
   10cfc:	94000119 	bl	11160 <clock_gettime@plt>
   10d00:	a97e67b8 	ldp	x24, x25, [x29, #-32]
   10d04:	90ffff80 	adrp	x0, 0 <__abi_tag-0x2c4>
   10d08:	90ffff81 	adrp	x1, 0 <__abi_tag-0x2c4>
   10d0c:	9124d400 	add	x0, x0, #0x935
   10d10:	91242821 	add	x1, x1, #0x90a
   10d14:	940000ff 	bl	11110 <fopen@plt>
   10d18:	90ffff81 	adrp	x1, 0 <__abi_tag-0x2c4>
   10d1c:	5281f402 	mov	w2, #0xfa0                 	// #4000
   10d20:	9123f021 	add	x1, x1, #0x8fc
   10d24:	5281f403 	mov	w3, #0xfa0                 	// #4000
   10d28:	aa0003f3 	mov	x19, x0
   10d2c:	940000fd 	bl	11120 <fprintf@plt>
   10d30:	5284801b 	mov	w27, #0x2400                	// #9216
   10d34:	90ffff94 	adrp	x20, 0 <__abi_tag-0x2c4>
   10d38:	90ffff95 	adrp	x21, 0 <__abi_tag-0x2c4>
   10d3c:	aa1f03fa 	mov	x26, xzr
   10d40:	72a01e9b 	movk	w27, #0xf4, lsl #16
   10d44:	9124ba94 	add	x20, x20, #0x92e
   10d48:	91248eb5 	add	x21, x21, #0x923
   10d4c:	14000004 	b	10d5c <main+0x148>
   10d50:	9100075a 	add	x26, x26, #0x1
   10d54:	eb1b035f 	cmp	x26, x27
   10d58:	54000300 	b.eq	10db8 <main+0x1a4>  // b.none
   10d5c:	f94013e8 	ldr	x8, [sp, #32]
   10d60:	b87a7908 	ldr	w8, [x8, x26, lsl #2]
   10d64:	710fa11f 	cmp	w8, #0x3e8
   10d68:	54000121 	b.ne	10d8c <main+0x178>  // b.any
   10d6c:	aa1403e0 	mov	x0, x20
   10d70:	528000c1 	mov	w1, #0x6                   	// #6
   10d74:	52800022 	mov	w2, #0x1                   	// #1
   10d78:	aa1303e3 	mov	x3, x19
   10d7c:	940000fd 	bl	11170 <fwrite@plt>
   10d80:	f2400f5f 	tst	x26, #0xf
   10d84:	54fffe61 	b.ne	10d50 <main+0x13c>  // b.any
   10d88:	14000008 	b	10da8 <main+0x194>
   10d8c:	12001d02 	and	w2, w8, #0xff
   10d90:	aa1303e0 	mov	x0, x19
   10d94:	aa1503e1 	mov	x1, x21
   10d98:	2a0203e3 	mov	w3, w2
   10d9c:	940000e1 	bl	11120 <fprintf@plt>
   10da0:	f2400f5f 	tst	x26, #0xf
   10da4:	54fffd61 	b.ne	10d50 <main+0x13c>  // b.any
   10da8:	52800140 	mov	w0, #0xa                   	// #10
   10dac:	aa1303e1 	mov	x1, x19
   10db0:	940000f4 	bl	11180 <fputc@plt>
   10db4:	17ffffe7 	b	10d50 <main+0x13c>
   10db8:	d2d09008 	mov	x8, #0x848000000000        	// #145685290680320
   10dbc:	9e620320 	scvtf	d0, x25
   10dc0:	f2e825c8 	movk	x8, #0x412e, lsl #48
   10dc4:	9e6202e2 	scvtf	d2, x23
   10dc8:	9e620303 	scvtf	d3, x24
   10dcc:	aa1303e0 	mov	x0, x19
   10dd0:	9e670101 	fmov	d1, x8
   10dd4:	d2c80008 	mov	x8, #0x400000000000        	// #70368744177664
   10dd8:	f2e811e8 	movk	x8, #0x408f, lsl #48
   10ddc:	1e611800 	fdiv	d0, d0, d1
   10de0:	9e670109 	fmov	d9, x8
   10de4:	1e611841 	fdiv	d1, d2, d1
   10de8:	9e6202c2 	scvtf	d2, x22
   10dec:	1f490060 	fmadd	d0, d3, d9, d0
   10df0:	1f490441 	fmadd	d1, d2, d9, d1
   10df4:	1e613808 	fsub	d8, d0, d1
   10df8:	940000ce 	bl	11130 <fclose@plt>
   10dfc:	d2d09008 	mov	x8, #0x848000000000        	// #145685290680320
   10e00:	1e690900 	fmul	d0, d8, d9
   10e04:	f2e82dc8 	movk	x8, #0x416e, lsl #48
   10e08:	90ffff80 	adrp	x0, 0 <__abi_tag-0x2c4>
   10e0c:	91251000 	add	x0, x0, #0x944
   10e10:	9e670101 	fmov	d1, x8
   10e14:	1e601821 	fdiv	d1, d1, d0
   10e18:	1e604100 	fmov	d0, d8
   10e1c:	940000c9 	bl	11140 <printf@plt>
   10e20:	f94013e0 	ldr	x0, [sp, #32]
   10e24:	940000cb 	bl	11150 <free@plt>
   10e28:	a94c4ff4 	ldp	x20, x19, [sp, #192]
   10e2c:	2a1f03e0 	mov	w0, wzr
   10e30:	a94b57f6 	ldp	x22, x21, [sp, #176]
   10e34:	a94a5ff8 	ldp	x24, x23, [sp, #160]
   10e38:	a94967fa 	ldp	x26, x25, [sp, #144]
   10e3c:	a9477bfd 	ldp	x29, x30, [sp, #112]
   10e40:	6d4623e9 	ldp	d9, d8, [sp, #96]
   10e44:	f94043fb 	ldr	x27, [sp, #128]
   10e48:	910343ff 	add	sp, sp, #0xd0
   10e4c:	d65f03c0 	ret

0000000000010e50 <.omp_outlined.>:
   10e50:	d100c3ff 	sub	sp, sp, #0x30
   10e54:	a9017bfd 	stp	x29, x30, [sp, #16]
   10e58:	910043fd 	add	x29, sp, #0x10
   10e5c:	a9024ff4 	stp	x20, x19, [sp, #32]
   10e60:	b9400013 	ldr	w19, [x0]
   10e64:	d503201f 	nop
   10e68:	100819d4 	adr	x20, 211a0 <__frame_dummy_init_array_entry+0x8>
   10e6c:	52800462 	mov	w2, #0x23                  	// #35
   10e70:	528031e8 	mov	w8, #0x18f                 	// #399
   10e74:	52800029 	mov	w9, #0x1                   	// #1
   10e78:	aa1403e0 	mov	x0, x20
   10e7c:	2a1303e1 	mov	w1, w19
   10e80:	72a80002 	movk	w2, #0x4000, lsl #16
   10e84:	2a1f03e3 	mov	w3, wzr
   10e88:	528031e4 	mov	w4, #0x18f                 	// #399
   10e8c:	52800025 	mov	w5, #0x1                   	// #1
   10e90:	52800026 	mov	w6, #0x1                   	// #1
   10e94:	b81fc3bf 	stur	wzr, [x29, #-4]
   10e98:	2900a3e9 	stp	w9, w8, [sp, #4]
   10e9c:	b90003ff 	str	wzr, [sp]
   10ea0:	94000090 	bl	110e0 <__kmpc_dispatch_init_4@plt>
   10ea4:	910003e2 	mov	x2, sp
   10ea8:	d10013a3 	sub	x3, x29, #0x4
   10eac:	910023e4 	add	x4, sp, #0x8
   10eb0:	910013e5 	add	x5, sp, #0x4
   10eb4:	aa1403e0 	mov	x0, x20
   10eb8:	2a1303e1 	mov	w1, w19
   10ebc:	9400008d 	bl	110f0 <__kmpc_dispatch_next_4@plt>
   10ec0:	35ffff20 	cbnz	w0, 10ea4 <.omp_outlined.+0x54>
   10ec4:	a9424ff4 	ldp	x20, x19, [sp, #32]
   10ec8:	a9417bfd 	ldp	x29, x30, [sp, #16]
   10ecc:	9100c3ff 	add	sp, sp, #0x30
   10ed0:	d65f03c0 	ret

0000000000010ed4 <.omp_outlined..1>:
   10ed4:	d101c3ff 	sub	sp, sp, #0x70
   10ed8:	6d012beb 	stp	d11, d10, [sp, #16]
   10edc:	6d0223e9 	stp	d9, d8, [sp, #32]
   10ee0:	a9037bfd 	stp	x29, x30, [sp, #48]
   10ee4:	9100c3fd 	add	x29, sp, #0x30
   10ee8:	f90023f7 	str	x23, [sp, #64]
   10eec:	a90557f6 	stp	x22, x21, [sp, #80]
   10ef0:	a9064ff4 	stp	x20, x19, [sp, #96]
   10ef4:	b9400013 	ldr	w19, [x0]
   10ef8:	d503201f 	nop
   10efc:	10081534 	adr	x20, 211a0 <__frame_dummy_init_array_entry+0x8>
   10f00:	52800462 	mov	w2, #0x23                  	// #35
   10f04:	5281f3e8 	mov	w8, #0xf9f                 	// #3999
   10f08:	52800029 	mov	w9, #0x1                   	// #1
   10f0c:	aa1403e0 	mov	x0, x20
   10f10:	2a1303e1 	mov	w1, w19
   10f14:	72a80002 	movk	w2, #0x4000, lsl #16
   10f18:	2a1f03e3 	mov	w3, wzr
   10f1c:	5281f3e4 	mov	w4, #0xf9f                 	// #3999
   10f20:	52800025 	mov	w5, #0x1                   	// #1
   10f24:	52800026 	mov	w6, #0x1                   	// #1
   10f28:	f94023b5 	ldr	x21, [x29, #64]
   10f2c:	29037fa8 	stp	w8, wzr, [x29, #24]
   10f30:	290127ff 	stp	wzr, w9, [sp, #8]
   10f34:	9400006b 	bl	110e0 <__kmpc_dispatch_init_4@plt>
   10f38:	d2c80016 	mov	x22, #0x400000000000        	// #70368744177664
   10f3c:	1e7f1008 	fmov	d8, #-1.500000000000000000e+00
   10f40:	f2e815f6 	movk	x22, #0x40af, lsl #48
   10f44:	1e611009 	fmov	d9, #3.000000000000000000e+00
   10f48:	5281f417 	mov	w23, #0xfa0                 	// #4000
   10f4c:	1e70100a 	fmov	d10, #-2.000000000000000000e+00
   10f50:	1e62100b 	fmov	d11, #4.000000000000000000e+00
   10f54:	910023e2 	add	x2, sp, #0x8
   10f58:	910073a3 	add	x3, x29, #0x1c
   10f5c:	910063a4 	add	x4, x29, #0x18
   10f60:	910033e5 	add	x5, sp, #0xc
   10f64:	aa1403e0 	mov	x0, x20
   10f68:	2a1303e1 	mov	w1, w19
   10f6c:	94000061 	bl	110f0 <__kmpc_dispatch_next_4@plt>
   10f70:	340005a0 	cbz	w0, 11024 <.omp_outlined..1+0x150>
   10f74:	294323a9 	ldp	w9, w8, [x29, #24]
   10f78:	93407d08 	sxtw	x8, w8
   10f7c:	6b09011f 	cmp	w8, w9
   10f80:	54fffeac 	b.gt	10f54 <.omp_outlined..1+0x80>
   10f84:	f94002a9 	ldr	x9, [x21]
   10f88:	14000006 	b	10fa0 <.omp_outlined..1+0xcc>
   10f8c:	b9801bab 	ldrsw	x11, [x29, #24]
   10f90:	9100050a 	add	x10, x8, #0x1
   10f94:	eb0b011f 	cmp	x8, x11
   10f98:	aa0a03e8 	mov	x8, x10
   10f9c:	54fffdca 	b.ge	10f54 <.omp_outlined..1+0x80>  // b.tcont
   10fa0:	1e620100 	scvtf	d0, w8
   10fa4:	9e6702c1 	fmov	d1, x22
   10fa8:	9b177d0a 	mul	x10, x8, x23
   10fac:	aa1f03eb 	mov	x11, xzr
   10fb0:	1e611800 	fdiv	d0, d0, d1
   10fb4:	1f492000 	fmadd	d0, d0, d9, d8
   10fb8:	14000006 	b	10fd0 <.omp_outlined..1+0xfc>
   10fbc:	8b0a016d 	add	x13, x11, x10
   10fc0:	9100056b 	add	x11, x11, #0x1
   10fc4:	f13e817f 	cmp	x11, #0xfa0
   10fc8:	b82d792c 	str	w12, [x9, x13, lsl #2]
   10fcc:	54fffe00 	b.eq	10f8c <.omp_outlined..1+0xb8>  // b.none
   10fd0:	1e620161 	scvtf	d1, w11
   10fd4:	9e6702c2 	fmov	d2, x22
   10fd8:	2f00e403 	movi	d3, #0x0
   10fdc:	2a1f03ec 	mov	w12, wzr
   10fe0:	1e621821 	fdiv	d1, d1, d2
   10fe4:	2f00e402 	movi	d2, #0x0
   10fe8:	1f492821 	fmadd	d1, d1, d9, d10
   10fec:	1e630864 	fmul	d4, d3, d3
   10ff0:	1e620845 	fmul	d5, d2, d2
   10ff4:	1e652886 	fadd	d6, d4, d5
   10ff8:	1e6b20c0 	fcmp	d6, d11
   10ffc:	54fffe0c 	b.gt	10fbc <.omp_outlined..1+0xe8>
   11000:	1e653884 	fsub	d4, d4, d5
   11004:	1e632863 	fadd	d3, d3, d3
   11008:	1100058c 	add	w12, w12, #0x1
   1100c:	710fa19f 	cmp	w12, #0x3e8
   11010:	1e642824 	fadd	d4, d1, d4
   11014:	1f420062 	fmadd	d2, d3, d2, d0
   11018:	1e604083 	fmov	d3, d4
   1101c:	54fffe81 	b.ne	10fec <.omp_outlined..1+0x118>  // b.any
   11020:	17ffffe7 	b	10fbc <.omp_outlined..1+0xe8>
   11024:	a9464ff4 	ldp	x20, x19, [sp, #96]
   11028:	a94557f6 	ldp	x22, x21, [sp, #80]
   1102c:	a9437bfd 	ldp	x29, x30, [sp, #48]
   11030:	6d4223e9 	ldp	d9, d8, [sp, #32]
   11034:	6d412beb 	ldp	d11, d10, [sp, #16]
   11038:	f94023f7 	ldr	x23, [sp, #64]
   1103c:	9101c3ff 	add	sp, sp, #0x70
   11040:	d65f03c0 	ret

Disassembly of section .init:

0000000000011044 <_init>:
   11044:	d503201f 	nop
   11048:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   1104c:	910003fd 	mov	x29, sp
   11050:	97fffeb9 	bl	10b34 <call_weak_fn>
   11054:	a8c17bfd 	ldp	x29, x30, [sp], #16
   11058:	d65f03c0 	ret

Disassembly of section .fini:

000000000001105c <_fini>:
   1105c:	d503201f 	nop
   11060:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   11064:	910003fd 	mov	x29, sp
   11068:	a8c17bfd 	ldp	x29, x30, [sp], #16
   1106c:	d65f03c0 	ret

Disassembly of section .plt:

0000000000011070 <abort@plt-0x20>:
   11070:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
   11074:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe48>
   11078:	f941ea11 	ldr	x17, [x16, #976]
   1107c:	910f4210 	add	x16, x16, #0x3d0
   11080:	d61f0220 	br	x17
   11084:	d503201f 	nop
   11088:	d503201f 	nop
   1108c:	d503201f 	nop

0000000000011090 <abort@plt>:
   11090:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe48>
   11094:	f941ee11 	ldr	x17, [x16, #984]
   11098:	910f6210 	add	x16, x16, #0x3d8
   1109c:	d61f0220 	br	x17

00000000000110a0 <__libc_start_main@plt>:
   110a0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe48>
   110a4:	f941f211 	ldr	x17, [x16, #992]
   110a8:	910f8210 	add	x16, x16, #0x3e0
   110ac:	d61f0220 	br	x17

00000000000110b0 <__gmon_start__@plt>:
   110b0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe48>
   110b4:	f941f611 	ldr	x17, [x16, #1000]
   110b8:	910fa210 	add	x16, x16, #0x3e8
   110bc:	d61f0220 	br	x17

00000000000110c0 <__cxa_finalize@plt>:
   110c0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe48>
   110c4:	f941fa11 	ldr	x17, [x16, #1008]
   110c8:	910fc210 	add	x16, x16, #0x3f0
   110cc:	d61f0220 	br	x17

00000000000110d0 <malloc@plt>:
   110d0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe48>
   110d4:	f941fe11 	ldr	x17, [x16, #1016]
   110d8:	910fe210 	add	x16, x16, #0x3f8
   110dc:	d61f0220 	br	x17

00000000000110e0 <__kmpc_dispatch_init_4@plt>:
   110e0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe48>
   110e4:	f9420211 	ldr	x17, [x16, #1024]
   110e8:	91100210 	add	x16, x16, #0x400
   110ec:	d61f0220 	br	x17

00000000000110f0 <__kmpc_dispatch_next_4@plt>:
   110f0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe48>
   110f4:	f9420611 	ldr	x17, [x16, #1032]
   110f8:	91102210 	add	x16, x16, #0x408
   110fc:	d61f0220 	br	x17

0000000000011100 <__kmpc_fork_call@plt>:
   11100:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe48>
   11104:	f9420a11 	ldr	x17, [x16, #1040]
   11108:	91104210 	add	x16, x16, #0x410
   1110c:	d61f0220 	br	x17

0000000000011110 <fopen@plt>:
   11110:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe48>
   11114:	f9420e11 	ldr	x17, [x16, #1048]
   11118:	91106210 	add	x16, x16, #0x418
   1111c:	d61f0220 	br	x17

0000000000011120 <fprintf@plt>:
   11120:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe48>
   11124:	f9421211 	ldr	x17, [x16, #1056]
   11128:	91108210 	add	x16, x16, #0x420
   1112c:	d61f0220 	br	x17

0000000000011130 <fclose@plt>:
   11130:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe48>
   11134:	f9421611 	ldr	x17, [x16, #1064]
   11138:	9110a210 	add	x16, x16, #0x428
   1113c:	d61f0220 	br	x17

0000000000011140 <printf@plt>:
   11140:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe48>
   11144:	f9421a11 	ldr	x17, [x16, #1072]
   11148:	9110c210 	add	x16, x16, #0x430
   1114c:	d61f0220 	br	x17

0000000000011150 <free@plt>:
   11150:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe48>
   11154:	f9421e11 	ldr	x17, [x16, #1080]
   11158:	9110e210 	add	x16, x16, #0x438
   1115c:	d61f0220 	br	x17

0000000000011160 <clock_gettime@plt>:
   11160:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe48>
   11164:	f9422211 	ldr	x17, [x16, #1088]
   11168:	91110210 	add	x16, x16, #0x440
   1116c:	d61f0220 	br	x17

0000000000011170 <fwrite@plt>:
   11170:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe48>
   11174:	f9422611 	ldr	x17, [x16, #1096]
   11178:	91112210 	add	x16, x16, #0x448
   1117c:	d61f0220 	br	x17

0000000000011180 <fputc@plt>:
   11180:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfe48>
   11184:	f9422a11 	ldr	x17, [x16, #1104]
   11188:	91114210 	add	x16, x16, #0x450
   1118c:	d61f0220 	br	x17
