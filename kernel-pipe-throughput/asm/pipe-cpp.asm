
/bench/bench:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000010c80 <_start>:
   10c80:	d503201f 	nop
   10c84:	d280001d 	mov	x29, #0x0                   	// #0
   10c88:	d280001e 	mov	x30, #0x0                   	// #0
   10c8c:	aa0003e5 	mov	x5, x0
   10c90:	f94003e1 	ldr	x1, [sp]
   10c94:	910023e2 	add	x2, sp, #0x8
   10c98:	910003e6 	mov	x6, sp
   10c9c:	d503201f 	nop
   10ca0:	10000980 	adr	x0, 10dd0 <main>
   10ca4:	d2800003 	mov	x3, #0x0                   	// #0
   10ca8:	d2800004 	mov	x4, #0x0                   	// #0
   10cac:	94000115 	bl	11100 <__libc_start_main@plt>
   10cb0:	94000110 	bl	110f0 <abort@plt>

0000000000010cb4 <call_weak_fn>:
   10cb4:	b0000080 	adrp	x0, 21000 <memset@plt+0xfdf0>
   10cb8:	f9420800 	ldr	x0, [x0, #1040]
   10cbc:	b4000040 	cbz	x0, 10cc4 <call_weak_fn+0x10>
   10cc0:	14000114 	b	11110 <__gmon_start__@plt>
   10cc4:	d65f03c0 	ret
	...

0000000000010cd0 <deregister_tm_clones>:
   10cd0:	d503201f 	nop
   10cd4:	10103be0 	adr	x0, 31450 <__TMC_END__>
   10cd8:	d503201f 	nop
   10cdc:	10103ba1 	adr	x1, 31450 <__TMC_END__>
   10ce0:	eb00003f 	cmp	x1, x0
   10ce4:	540000c0 	b.eq	10cfc <deregister_tm_clones+0x2c>  // b.none
   10ce8:	b0000081 	adrp	x1, 21000 <memset@plt+0xfdf0>
   10cec:	f9420c21 	ldr	x1, [x1, #1048]
   10cf0:	b4000061 	cbz	x1, 10cfc <deregister_tm_clones+0x2c>
   10cf4:	aa0103f0 	mov	x16, x1
   10cf8:	d61f0200 	br	x16
   10cfc:	d65f03c0 	ret

0000000000010d00 <register_tm_clones>:
   10d00:	d503201f 	nop
   10d04:	10103a60 	adr	x0, 31450 <__TMC_END__>
   10d08:	d503201f 	nop
   10d0c:	10103a21 	adr	x1, 31450 <__TMC_END__>
   10d10:	cb000021 	sub	x1, x1, x0
   10d14:	d37ffc22 	lsr	x2, x1, #63
   10d18:	8b810c41 	add	x1, x2, x1, asr #3
   10d1c:	9341fc21 	asr	x1, x1, #1
   10d20:	b40000c1 	cbz	x1, 10d38 <register_tm_clones+0x38>
   10d24:	b0000082 	adrp	x2, 21000 <memset@plt+0xfdf0>
   10d28:	f9421042 	ldr	x2, [x2, #1056]
   10d2c:	b4000062 	cbz	x2, 10d38 <register_tm_clones+0x38>
   10d30:	aa0203f0 	mov	x16, x2
   10d34:	d61f0200 	br	x16
   10d38:	d65f03c0 	ret
   10d3c:	d503201f 	nop

0000000000010d40 <__do_global_dtors_aux>:
   10d40:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   10d44:	910003fd 	mov	x29, sp
   10d48:	f9000bf3 	str	x19, [sp, #16]
   10d4c:	b0000113 	adrp	x19, 31000 <_DYNAMIC+0xfdc8>
   10d50:	39540260 	ldrb	w0, [x19, #1280]
   10d54:	35000140 	cbnz	w0, 10d7c <__do_global_dtors_aux+0x3c>
   10d58:	b0000080 	adrp	x0, 21000 <memset@plt+0xfdf0>
   10d5c:	f9421400 	ldr	x0, [x0, #1064]
   10d60:	b4000080 	cbz	x0, 10d70 <__do_global_dtors_aux+0x30>
   10d64:	b0000100 	adrp	x0, 31000 <_DYNAMIC+0xfdc8>
   10d68:	f9422000 	ldr	x0, [x0, #1088]
   10d6c:	940000ed 	bl	11120 <__cxa_finalize@plt>
   10d70:	97ffffd8 	bl	10cd0 <deregister_tm_clones>
   10d74:	52800020 	mov	w0, #0x1                   	// #1
   10d78:	39140260 	strb	w0, [x19, #1280]
   10d7c:	f9400bf3 	ldr	x19, [sp, #16]
   10d80:	a8c27bfd 	ldp	x29, x30, [sp], #32
   10d84:	d65f03c0 	ret
   10d88:	d503201f 	nop
   10d8c:	d503201f 	nop

0000000000010d90 <frame_dummy>:
   10d90:	17ffffdc 	b	10d00 <register_tm_clones>

0000000000010d94 <_GLOBAL__sub_I_bench.cpp>:
   10d94:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   10d98:	f9000bf3 	str	x19, [sp, #16]
   10d9c:	910003fd 	mov	x29, sp
   10da0:	d503201f 	nop
   10da4:	30103af3 	adr	x19, 31501 <_ZStL8__ioinit>
   10da8:	aa1303e0 	mov	x0, x19
   10dac:	940000e1 	bl	11130 <_ZNSt8ios_base4InitC1Ev@plt>
   10db0:	b0000080 	adrp	x0, 21000 <memset@plt+0xfdf0>
   10db4:	aa1303e1 	mov	x1, x19
   10db8:	d503201f 	nop
   10dbc:	10103422 	adr	x2, 31440 <__dso_handle>
   10dc0:	f9421800 	ldr	x0, [x0, #1072]
   10dc4:	f9400bf3 	ldr	x19, [sp, #16]
   10dc8:	a8c27bfd 	ldp	x29, x30, [sp], #32
   10dcc:	140000dd 	b	11140 <__cxa_atexit@plt>

0000000000010dd0 <main>:
   10dd0:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
   10dd4:	f9000bf7 	str	x23, [sp, #16]
   10dd8:	910003fd 	mov	x29, sp
   10ddc:	a90257f6 	stp	x22, x21, [sp, #32]
   10de0:	a9034ff4 	stp	x20, x19, [sp, #48]
   10de4:	910063a0 	add	x0, x29, #0x18
   10de8:	940000da 	bl	11150 <pipe@plt>
   10dec:	3100041f 	cmn	w0, #0x1
   10df0:	540006a0 	b.eq	10ec4 <main+0xf4>  // b.none
   10df4:	d2b00015 	mov	x21, #0x80000000            	// #2147483648
   10df8:	f2c00055 	movk	x21, #0x2, lsl #32
   10dfc:	940000d9 	bl	11160 <fork@plt>
   10e00:	340006e0 	cbz	w0, 10edc <main+0x10c>
   10e04:	b9401ba0 	ldr	w0, [x29, #24]
   10e08:	940000da 	bl	11170 <close@plt>
   10e0c:	52a00020 	mov	w0, #0x10000               	// #65536
   10e10:	940000f4 	bl	111e0 <_Znwm@plt>
   10e14:	52801541 	mov	w1, #0xaa                  	// #170
   10e18:	52a00022 	mov	w2, #0x10000               	// #65536
   10e1c:	aa0003f3 	mov	x19, x0
   10e20:	940000fc 	bl	11210 <memset@plt>
   10e24:	940000e3 	bl	111b0 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
   10e28:	aa0003f4 	mov	x20, x0
   10e2c:	aa1f03f6 	mov	x22, xzr
   10e30:	eb1502df 	cmp	x22, x21
   10e34:	54000102 	b.cs	10e54 <main+0x84>  // b.hs, b.nlast
   10e38:	b9401fa0 	ldr	w0, [x29, #28]
   10e3c:	aa1303e1 	mov	x1, x19
   10e40:	52a00022 	mov	w2, #0x10000               	// #65536
   10e44:	940000df 	bl	111c0 <write@plt>
   10e48:	8b160016 	add	x22, x0, x22
   10e4c:	f100041f 	cmp	x0, #0x1
   10e50:	54ffff0a 	b.ge	10e30 <main+0x60>  // b.tcont
   10e54:	940000d7 	bl	111b0 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
   10e58:	cb140008 	sub	x8, x0, x20
   10e5c:	d2d09009 	mov	x9, #0x848000000000        	// #145685290680320
   10e60:	f2e825c9 	movk	x9, #0x412e, lsl #48
   10e64:	1e649002 	fmov	d2, #1.000000000000000000e+01
   10e68:	90ffff80 	adrp	x0, 0 <__abi_tag-0x2c4>
   10e6c:	9e620100 	scvtf	d0, x8
   10e70:	d2c80008 	mov	x8, #0x400000000000        	// #70368744177664
   10e74:	9e670121 	fmov	d1, x9
   10e78:	f2e811e8 	movk	x8, #0x408f, lsl #48
   10e7c:	912a7000 	add	x0, x0, #0xa9c
   10e80:	1e611800 	fdiv	d0, d0, d1
   10e84:	9e670101 	fmov	d1, x8
   10e88:	1e611801 	fdiv	d1, d0, d1
   10e8c:	1e611841 	fdiv	d1, d2, d1
   10e90:	940000c0 	bl	11190 <printf@plt>
   10e94:	b9401fa0 	ldr	w0, [x29, #28]
   10e98:	940000b6 	bl	11170 <close@plt>
   10e9c:	aa1f03e0 	mov	x0, xzr
   10ea0:	940000cc 	bl	111d0 <wait@plt>
   10ea4:	aa1303e0 	mov	x0, x19
   10ea8:	940000d2 	bl	111f0 <_ZdlPv@plt>
   10eac:	2a1f03e0 	mov	w0, wzr
   10eb0:	a9434ff4 	ldp	x20, x19, [sp, #48]
   10eb4:	a94257f6 	ldp	x22, x21, [sp, #32]
   10eb8:	f9400bf7 	ldr	x23, [sp, #16]
   10ebc:	a8c47bfd 	ldp	x29, x30, [sp], #64
   10ec0:	d65f03c0 	ret
   10ec4:	52800020 	mov	w0, #0x1                   	// #1
   10ec8:	a9434ff4 	ldp	x20, x19, [sp, #48]
   10ecc:	a94257f6 	ldp	x22, x21, [sp, #32]
   10ed0:	f9400bf7 	ldr	x23, [sp, #16]
   10ed4:	a8c47bfd 	ldp	x29, x30, [sp], #64
   10ed8:	d65f03c0 	ret
   10edc:	b9401fa0 	ldr	w0, [x29, #28]
   10ee0:	940000a4 	bl	11170 <close@plt>
   10ee4:	52a00020 	mov	w0, #0x10000               	// #65536
   10ee8:	940000be 	bl	111e0 <_Znwm@plt>
   10eec:	2a1f03e1 	mov	w1, wzr
   10ef0:	52a00022 	mov	w2, #0x10000               	// #65536
   10ef4:	aa0003f3 	mov	x19, x0
   10ef8:	940000c6 	bl	11210 <memset@plt>
   10efc:	2a1f03f7 	mov	w23, wzr
   10f00:	aa1f03f4 	mov	x20, xzr
   10f04:	91004276 	add	x22, x19, #0x10
   10f08:	14000004 	b	10f18 <main+0x148>
   10f0c:	8b140114 	add	x20, x8, x20
   10f10:	eb15029f 	cmp	x20, x21
   10f14:	54000a82 	b.cs	11064 <main+0x294>  // b.hs, b.nlast
   10f18:	b9401ba0 	ldr	w0, [x29, #24]
   10f1c:	aa1303e1 	mov	x1, x19
   10f20:	52a00022 	mov	w2, #0x10000               	// #65536
   10f24:	94000097 	bl	11180 <read@plt>
   10f28:	aa0003e8 	mov	x8, x0
   10f2c:	f100041f 	cmp	x0, #0x1
   10f30:	540009ab 	b.lt	11064 <main+0x294>  // b.tstop
   10f34:	f1001d1f 	cmp	x8, #0x7
   10f38:	54000068 	b.hi	10f44 <main+0x174>  // b.pmore
   10f3c:	aa1f03e9 	mov	x9, xzr
   10f40:	14000042 	b	11048 <main+0x278>
   10f44:	f100811f 	cmp	x8, #0x20
   10f48:	54000062 	b.cs	10f54 <main+0x184>  // b.hs, b.nlast
   10f4c:	aa1f03e9 	mov	x9, xzr
   10f50:	14000023 	b	10fdc <main+0x20c>
   10f54:	6f00e400 	movi	v0.2d, #0x0
   10f58:	927be909 	and	x9, x8, #0xffffffffffffffe0
   10f5c:	6f00e401 	movi	v1.2d, #0x0
   10f60:	aa1603ea 	mov	x10, x22
   10f64:	aa0903eb 	mov	x11, x9
   10f68:	4e011ee0 	mov	v0.b[0], w23
   10f6c:	ad7f8d42 	ldp	q2, q3, [x10, #-16]
   10f70:	f100816b 	subs	x11, x11, #0x20
   10f74:	9100814a 	add	x10, x10, #0x20
   10f78:	6e201c40 	eor	v0.16b, v2.16b, v0.16b
   10f7c:	6e211c61 	eor	v1.16b, v3.16b, v1.16b
   10f80:	54ffff61 	b.ne	10f6c <main+0x19c>  // b.any
   10f84:	6e201c20 	eor	v0.16b, v1.16b, v0.16b
   10f88:	eb09011f 	cmp	x8, x9
   10f8c:	6e004001 	ext	v1.16b, v0.16b, v0.16b, #8
   10f90:	2e211c00 	eor	v0.8b, v0.8b, v1.8b
   10f94:	0e033c0a 	umov	w10, v0.b[1]
   10f98:	0e013c0b 	umov	w11, v0.b[0]
   10f9c:	0e053c0c 	umov	w12, v0.b[2]
   10fa0:	0e073c0d 	umov	w13, v0.b[3]
   10fa4:	0e093c0e 	umov	w14, v0.b[4]
   10fa8:	4a0a016a 	eor	w10, w11, w10
   10fac:	0e0b3c0b 	umov	w11, v0.b[5]
   10fb0:	4a0c014a 	eor	w10, w10, w12
   10fb4:	0e0d3c0c 	umov	w12, v0.b[6]
   10fb8:	4a0d014a 	eor	w10, w10, w13
   10fbc:	0e0f3c0d 	umov	w13, v0.b[7]
   10fc0:	4a0e014a 	eor	w10, w10, w14
   10fc4:	4a0b014a 	eor	w10, w10, w11
   10fc8:	4a0c014a 	eor	w10, w10, w12
   10fcc:	4a0d0157 	eor	w23, w10, w13
   10fd0:	54fff9e0 	b.eq	10f0c <main+0x13c>  // b.none
   10fd4:	f27d051f 	tst	x8, #0x18
   10fd8:	54000380 	b.eq	11048 <main+0x278>  // b.none
   10fdc:	2f00e400 	movi	d0, #0x0
   10fe0:	aa0903eb 	mov	x11, x9
   10fe4:	927df109 	and	x9, x8, #0xfffffffffffffff8
   10fe8:	cb09016a 	sub	x10, x11, x9
   10fec:	8b0b026b 	add	x11, x19, x11
   10ff0:	4e011ee0 	mov	v0.b[0], w23
   10ff4:	fc408561 	ldr	d1, [x11], #8
   10ff8:	b100214a 	adds	x10, x10, #0x8
   10ffc:	2e201c20 	eor	v0.8b, v1.8b, v0.8b
   11000:	54ffffa1 	b.ne	10ff4 <main+0x224>  // b.any
   11004:	0e033c0a 	umov	w10, v0.b[1]
   11008:	0e013c0b 	umov	w11, v0.b[0]
   1100c:	0e053c0c 	umov	w12, v0.b[2]
   11010:	0e073c0d 	umov	w13, v0.b[3]
   11014:	0e093c0e 	umov	w14, v0.b[4]
   11018:	eb09011f 	cmp	x8, x9
   1101c:	4a0a016a 	eor	w10, w11, w10
   11020:	0e0b3c0b 	umov	w11, v0.b[5]
   11024:	4a0c014a 	eor	w10, w10, w12
   11028:	0e0d3c0c 	umov	w12, v0.b[6]
   1102c:	4a0d014a 	eor	w10, w10, w13
   11030:	0e0f3c0d 	umov	w13, v0.b[7]
   11034:	4a0e014a 	eor	w10, w10, w14
   11038:	4a0b014a 	eor	w10, w10, w11
   1103c:	4a0c014a 	eor	w10, w10, w12
   11040:	4a0d0157 	eor	w23, w10, w13
   11044:	54fff640 	b.eq	10f0c <main+0x13c>  // b.none
   11048:	cb09010a 	sub	x10, x8, x9
   1104c:	8b090269 	add	x9, x19, x9
   11050:	3840152b 	ldrb	w11, [x9], #1
   11054:	f100054a 	subs	x10, x10, #0x1
   11058:	4a170177 	eor	w23, w11, w23
   1105c:	54ffffa1 	b.ne	11050 <main+0x280>  // b.any
   11060:	17ffffab 	b	10f0c <main+0x13c>
   11064:	f0ffff60 	adrp	x0, 0 <__abi_tag-0x2c4>
   11068:	12001ee1 	and	w1, w23, #0xff
   1106c:	912b1000 	add	x0, x0, #0xac4
   11070:	94000048 	bl	11190 <printf@plt>
   11074:	b9401ba0 	ldr	w0, [x29, #24]
   11078:	9400003e 	bl	11170 <close@plt>
   1107c:	2a1f03e0 	mov	w0, wzr
   11080:	94000048 	bl	111a0 <exit@plt>
   11084:	14000003 	b	11090 <main+0x2c0>
   11088:	14000002 	b	11090 <main+0x2c0>
   1108c:	14000001 	b	11090 <main+0x2c0>
   11090:	aa0003f4 	mov	x20, x0
   11094:	aa1303e0 	mov	x0, x19
   11098:	94000056 	bl	111f0 <_ZdlPv@plt>
   1109c:	aa1403e0 	mov	x0, x20
   110a0:	94000058 	bl	11200 <_Unwind_Resume@plt>

Disassembly of section .init:

00000000000110a4 <_init>:
   110a4:	d503201f 	nop
   110a8:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   110ac:	910003fd 	mov	x29, sp
   110b0:	97ffff01 	bl	10cb4 <call_weak_fn>
   110b4:	a8c17bfd 	ldp	x29, x30, [sp], #16
   110b8:	d65f03c0 	ret

Disassembly of section .fini:

00000000000110bc <_fini>:
   110bc:	d503201f 	nop
   110c0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   110c4:	910003fd 	mov	x29, sp
   110c8:	a8c17bfd 	ldp	x29, x30, [sp], #16
   110cc:	d65f03c0 	ret

Disassembly of section .plt:

00000000000110d0 <abort@plt-0x20>:
   110d0:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
   110d4:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   110d8:	f9423211 	ldr	x17, [x16, #1120]
   110dc:	91118210 	add	x16, x16, #0x460
   110e0:	d61f0220 	br	x17
   110e4:	d503201f 	nop
   110e8:	d503201f 	nop
   110ec:	d503201f 	nop

00000000000110f0 <abort@plt>:
   110f0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   110f4:	f9423611 	ldr	x17, [x16, #1128]
   110f8:	9111a210 	add	x16, x16, #0x468
   110fc:	d61f0220 	br	x17

0000000000011100 <__libc_start_main@plt>:
   11100:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   11104:	f9423a11 	ldr	x17, [x16, #1136]
   11108:	9111c210 	add	x16, x16, #0x470
   1110c:	d61f0220 	br	x17

0000000000011110 <__gmon_start__@plt>:
   11110:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   11114:	f9423e11 	ldr	x17, [x16, #1144]
   11118:	9111e210 	add	x16, x16, #0x478
   1111c:	d61f0220 	br	x17

0000000000011120 <__cxa_finalize@plt>:
   11120:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   11124:	f9424211 	ldr	x17, [x16, #1152]
   11128:	91120210 	add	x16, x16, #0x480
   1112c:	d61f0220 	br	x17

0000000000011130 <_ZNSt8ios_base4InitC1Ev@plt>:
   11130:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   11134:	f9424611 	ldr	x17, [x16, #1160]
   11138:	91122210 	add	x16, x16, #0x488
   1113c:	d61f0220 	br	x17

0000000000011140 <__cxa_atexit@plt>:
   11140:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   11144:	f9424a11 	ldr	x17, [x16, #1168]
   11148:	91124210 	add	x16, x16, #0x490
   1114c:	d61f0220 	br	x17

0000000000011150 <pipe@plt>:
   11150:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   11154:	f9424e11 	ldr	x17, [x16, #1176]
   11158:	91126210 	add	x16, x16, #0x498
   1115c:	d61f0220 	br	x17

0000000000011160 <fork@plt>:
   11160:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   11164:	f9425211 	ldr	x17, [x16, #1184]
   11168:	91128210 	add	x16, x16, #0x4a0
   1116c:	d61f0220 	br	x17

0000000000011170 <close@plt>:
   11170:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   11174:	f9425611 	ldr	x17, [x16, #1192]
   11178:	9112a210 	add	x16, x16, #0x4a8
   1117c:	d61f0220 	br	x17

0000000000011180 <read@plt>:
   11180:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   11184:	f9425a11 	ldr	x17, [x16, #1200]
   11188:	9112c210 	add	x16, x16, #0x4b0
   1118c:	d61f0220 	br	x17

0000000000011190 <printf@plt>:
   11190:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   11194:	f9425e11 	ldr	x17, [x16, #1208]
   11198:	9112e210 	add	x16, x16, #0x4b8
   1119c:	d61f0220 	br	x17

00000000000111a0 <exit@plt>:
   111a0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   111a4:	f9426211 	ldr	x17, [x16, #1216]
   111a8:	91130210 	add	x16, x16, #0x4c0
   111ac:	d61f0220 	br	x17

00000000000111b0 <_ZNSt6chrono3_V212system_clock3nowEv@plt>:
   111b0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   111b4:	f9426611 	ldr	x17, [x16, #1224]
   111b8:	91132210 	add	x16, x16, #0x4c8
   111bc:	d61f0220 	br	x17

00000000000111c0 <write@plt>:
   111c0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   111c4:	f9426a11 	ldr	x17, [x16, #1232]
   111c8:	91134210 	add	x16, x16, #0x4d0
   111cc:	d61f0220 	br	x17

00000000000111d0 <wait@plt>:
   111d0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   111d4:	f9426e11 	ldr	x17, [x16, #1240]
   111d8:	91136210 	add	x16, x16, #0x4d8
   111dc:	d61f0220 	br	x17

00000000000111e0 <_Znwm@plt>:
   111e0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   111e4:	f9427211 	ldr	x17, [x16, #1248]
   111e8:	91138210 	add	x16, x16, #0x4e0
   111ec:	d61f0220 	br	x17

00000000000111f0 <_ZdlPv@plt>:
   111f0:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   111f4:	f9427611 	ldr	x17, [x16, #1256]
   111f8:	9113a210 	add	x16, x16, #0x4e8
   111fc:	d61f0220 	br	x17

0000000000011200 <_Unwind_Resume@plt>:
   11200:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   11204:	f9427a11 	ldr	x17, [x16, #1264]
   11208:	9113c210 	add	x16, x16, #0x4f0
   1120c:	d61f0220 	br	x17

0000000000011210 <memset@plt>:
   11210:	90000110 	adrp	x16, 31000 <_DYNAMIC+0xfdc8>
   11214:	f9427e11 	ldr	x17, [x16, #1272]
   11218:	9113e210 	add	x16, x16, #0x4f8
   1121c:	d61f0220 	br	x17
