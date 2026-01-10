
/bench/bench:     file format elf64-littleaarch64


Disassembly of section .text:

00000000000116c0 <_start>:
   116c0:	d503201f 	nop
   116c4:	d280001d 	mov	x29, #0x0                   	// #0
   116c8:	d280001e 	mov	x30, #0x0                   	// #0
   116cc:	aa0003e5 	mov	x5, x0
   116d0:	f94003e1 	ldr	x1, [sp]
   116d4:	910023e2 	add	x2, sp, #0x8
   116d8:	910003e6 	mov	x6, sp
   116dc:	d503201f 	nop
   116e0:	100018a0 	adr	x0, 119f4 <main>
   116e4:	d2800003 	mov	x3, #0x0                   	// #0
   116e8:	d2800004 	mov	x4, #0x0                   	// #0
   116ec:	94000335 	bl	123c0 <__libc_start_main@plt>
   116f0:	94000330 	bl	123b0 <abort@plt>

00000000000116f4 <call_weak_fn>:
   116f4:	b0000080 	adrp	x0, 22000 <memset@plt+0xfa80>
   116f8:	f9440400 	ldr	x0, [x0, #2056]
   116fc:	b4000040 	cbz	x0, 11704 <call_weak_fn+0x10>
   11700:	14000334 	b	123d0 <__gmon_start__@plt>
   11704:	d65f03c0 	ret
	...

0000000000011710 <deregister_tm_clones>:
   11710:	d503201f 	nop
   11714:	101089e0 	adr	x0, 32850 <__TMC_END__>
   11718:	d503201f 	nop
   1171c:	101089a1 	adr	x1, 32850 <__TMC_END__>
   11720:	eb00003f 	cmp	x1, x0
   11724:	540000c0 	b.eq	1173c <deregister_tm_clones+0x2c>  // b.none
   11728:	b0000081 	adrp	x1, 22000 <memset@plt+0xfa80>
   1172c:	f9440821 	ldr	x1, [x1, #2064]
   11730:	b4000061 	cbz	x1, 1173c <deregister_tm_clones+0x2c>
   11734:	aa0103f0 	mov	x16, x1
   11738:	d61f0200 	br	x16
   1173c:	d65f03c0 	ret

0000000000011740 <register_tm_clones>:
   11740:	d503201f 	nop
   11744:	10108860 	adr	x0, 32850 <__TMC_END__>
   11748:	d503201f 	nop
   1174c:	10108821 	adr	x1, 32850 <__TMC_END__>
   11750:	cb000021 	sub	x1, x1, x0
   11754:	d37ffc22 	lsr	x2, x1, #63
   11758:	8b810c41 	add	x1, x2, x1, asr #3
   1175c:	9341fc21 	asr	x1, x1, #1
   11760:	b40000c1 	cbz	x1, 11778 <register_tm_clones+0x38>
   11764:	b0000082 	adrp	x2, 22000 <memset@plt+0xfa80>
   11768:	f9440c42 	ldr	x2, [x2, #2072]
   1176c:	b4000062 	cbz	x2, 11778 <register_tm_clones+0x38>
   11770:	aa0203f0 	mov	x16, x2
   11774:	d61f0200 	br	x16
   11778:	d65f03c0 	ret
   1177c:	d503201f 	nop

0000000000011780 <__do_global_dtors_aux>:
   11780:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   11784:	910003fd 	mov	x29, sp
   11788:	f9000bf3 	str	x19, [sp, #16]
   1178c:	b0000113 	adrp	x19, 32000 <_DYNAMIC+0xf9d0>
   11790:	39656260 	ldrb	w0, [x19, #2392]
   11794:	35000140 	cbnz	w0, 117bc <__do_global_dtors_aux+0x3c>
   11798:	b0000080 	adrp	x0, 22000 <memset@plt+0xfa80>
   1179c:	f9441000 	ldr	x0, [x0, #2080]
   117a0:	b4000080 	cbz	x0, 117b0 <__do_global_dtors_aux+0x30>
   117a4:	b0000100 	adrp	x0, 32000 <_DYNAMIC+0xf9d0>
   117a8:	f9442000 	ldr	x0, [x0, #2112]
   117ac:	9400030d 	bl	123e0 <__cxa_finalize@plt>
   117b0:	97ffffd8 	bl	11710 <deregister_tm_clones>
   117b4:	52800020 	mov	w0, #0x1                   	// #1
   117b8:	39256260 	strb	w0, [x19, #2392]
   117bc:	f9400bf3 	ldr	x19, [sp, #16]
   117c0:	a8c27bfd 	ldp	x29, x30, [sp], #32
   117c4:	d65f03c0 	ret
   117c8:	d503201f 	nop
   117cc:	d503201f 	nop

00000000000117d0 <frame_dummy>:
   117d0:	17ffffdc 	b	11740 <register_tm_clones>
	...

00000000000117e0 <__aarch64_ldadd4_acq_rel>:
   117e0:	d503245f 	bti	c
   117e4:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   117e8:	39656610 	ldrb	w16, [x16, #2393]
   117ec:	34000070 	cbz	w16, 117f8 <__aarch64_ldadd4_acq_rel+0x18>
   117f0:	b8e00020 	ldaddal	w0, w0, [x1]
   117f4:	d65f03c0 	ret
   117f8:	2a0003f0 	mov	w16, w0
   117fc:	885ffc20 	ldaxr	w0, [x1]
   11800:	0b100011 	add	w17, w0, w16
   11804:	880ffc31 	stlxr	w15, w17, [x1]
   11808:	35ffffaf 	cbnz	w15, 117fc <__aarch64_ldadd4_acq_rel+0x1c>
   1180c:	d65f03c0 	ret

0000000000011810 <init_have_lse_atomics>:
   11810:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   11814:	d2800200 	mov	x0, #0x10                  	// #16
   11818:	910003fd 	mov	x29, sp
   1181c:	94000355 	bl	12570 <__getauxval@plt>
   11820:	53082000 	ubfx	w0, w0, #8, #1
   11824:	b0000101 	adrp	x1, 32000 <_DYNAMIC+0xf9d0>
   11828:	a8c17bfd 	ldp	x29, x30, [sp], #16
   1182c:	39256420 	strb	w0, [x1, #2393]
   11830:	d65f03c0 	ret

0000000000011834 <_GLOBAL__sub_I_bench.cpp>:
   11834:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   11838:	f9000bf3 	str	x19, [sp, #16]
   1183c:	910003fd 	mov	x29, sp
   11840:	d503201f 	nop
   11844:	501088b3 	adr	x19, 3295a <_ZStL8__ioinit>
   11848:	aa1303e0 	mov	x0, x19
   1184c:	940002e9 	bl	123f0 <_ZNSt8ios_base4InitC1Ev@plt>
   11850:	b0000080 	adrp	x0, 22000 <memset@plt+0xfa80>
   11854:	aa1303e1 	mov	x1, x19
   11858:	d503201f 	nop
   1185c:	10107f22 	adr	x2, 32840 <__dso_handle>
   11860:	f9441400 	ldr	x0, [x0, #2088]
   11864:	f9400bf3 	ldr	x19, [sp, #16]
   11868:	a8c27bfd 	ldp	x29, x30, [sp], #32
   1186c:	140002e5 	b	12400 <__cxa_atexit@plt>

0000000000011870 <_Z14render_dynamicRSt6atomicIiEiijddddPj>:
   11870:	fc180fee 	str	d14, [sp, #-128]!
   11874:	6d0133ed 	stp	d13, d12, [sp, #16]
   11878:	6d022beb 	stp	d11, d10, [sp, #32]
   1187c:	6d0323e9 	stp	d9, d8, [sp, #48]
   11880:	a9047bfd 	stp	x29, x30, [sp, #64]
   11884:	910103fd 	add	x29, sp, #0x40
   11888:	a9055ff8 	stp	x24, x23, [sp, #80]
   1188c:	a90657f6 	stp	x22, x21, [sp, #96]
   11890:	a9074ff4 	stp	x20, x19, [sp, #112]
   11894:	aa0003f4 	mov	x20, x0
   11898:	2a0103f6 	mov	w22, w1
   1189c:	52800020 	mov	w0, #0x1                   	// #1
   118a0:	aa1403e1 	mov	x1, x20
   118a4:	aa0403f5 	mov	x21, x4
   118a8:	1e60406b 	fmov	d11, d3
   118ac:	1e604048 	fmov	d8, d2
   118b0:	1e60402a 	fmov	d10, d1
   118b4:	1e604009 	fmov	d9, d0
   118b8:	2a0303f7 	mov	w23, w3
   118bc:	2a0203f3 	mov	w19, w2
   118c0:	97ffffc8 	bl	117e0 <__aarch64_ldadd4_acq_rel>
   118c4:	6b13001f 	cmp	w0, w19
   118c8:	5400084a 	b.ge	119d0 <_Z14render_dynamicRSt6atomicIiEiijddddPj+0x160>  // b.tcont
   118cc:	710002df 	cmp	w22, #0x0
   118d0:	540005ed 	b.le	1198c <_Z14render_dynamicRSt6atomicIiEiijddddPj+0x11c>
   118d4:	2a1603f8 	mov	w24, w22
   118d8:	34000677 	cbz	w23, 119a4 <_Z14render_dynamicRSt6atomicIiEiijddddPj+0x134>
   118dc:	1e62026c 	scvtf	d12, w19
   118e0:	1e68396b 	fsub	d11, d11, d8
   118e4:	1e6202cd 	scvtf	d13, w22
   118e8:	1e69394a 	fsub	d10, d10, d9
   118ec:	1e62100e 	fmov	d14, #4.000000000000000000e+00
   118f0:	14000006 	b	11908 <_Z14render_dynamicRSt6atomicIiEiijddddPj+0x98>
   118f4:	52800020 	mov	w0, #0x1                   	// #1
   118f8:	aa1403e1 	mov	x1, x20
   118fc:	97ffffb9 	bl	117e0 <__aarch64_ldadd4_acq_rel>
   11900:	6b13001f 	cmp	w0, w19
   11904:	5400066a 	b.ge	119d0 <_Z14render_dynamicRSt6atomicIiEiijddddPj+0x160>  // b.tcont
   11908:	1e620000 	scvtf	d0, w0
   1190c:	1b167c09 	mul	w9, w0, w22
   11910:	aa1f03e8 	mov	x8, xzr
   11914:	93407d29 	sxtw	x9, w9
   11918:	1e6c1800 	fdiv	d0, d0, d12
   1191c:	1f4b2000 	fmadd	d0, d0, d11, d8
   11920:	14000006 	b	11938 <_Z14render_dynamicRSt6atomicIiEiijddddPj+0xc8>
   11924:	8b09010b 	add	x11, x8, x9
   11928:	91000508 	add	x8, x8, #0x1
   1192c:	eb18011f 	cmp	x8, x24
   11930:	b82b7aaa 	str	w10, [x21, x11, lsl #2]
   11934:	54fffe00 	b.eq	118f4 <_Z14render_dynamicRSt6atomicIiEiijddddPj+0x84>  // b.none
   11938:	1e620101 	scvtf	d1, w8
   1193c:	2f00e403 	movi	d3, #0x0
   11940:	2f00e402 	movi	d2, #0x0
   11944:	2a1f03ea 	mov	w10, wzr
   11948:	1e6d1821 	fdiv	d1, d1, d13
   1194c:	1f4a2421 	fmadd	d1, d1, d10, d9
   11950:	1e630864 	fmul	d4, d3, d3
   11954:	1e620845 	fmul	d5, d2, d2
   11958:	1e652886 	fadd	d6, d4, d5
   1195c:	1e6e20c0 	fcmp	d6, d14
   11960:	54fffe2c 	b.gt	11924 <_Z14render_dynamicRSt6atomicIiEiijddddPj+0xb4>
   11964:	1e653884 	fsub	d4, d4, d5
   11968:	1e632863 	fadd	d3, d3, d3
   1196c:	1100054a 	add	w10, w10, #0x1
   11970:	6b0a02ff 	cmp	w23, w10
   11974:	1e642824 	fadd	d4, d1, d4
   11978:	1f420062 	fmadd	d2, d3, d2, d0
   1197c:	1e604083 	fmov	d3, d4
   11980:	54fffe81 	b.ne	11950 <_Z14render_dynamicRSt6atomicIiEiijddddPj+0xe0>  // b.any
   11984:	2a1703ea 	mov	w10, w23
   11988:	17ffffe7 	b	11924 <_Z14render_dynamicRSt6atomicIiEiijddddPj+0xb4>
   1198c:	52800020 	mov	w0, #0x1                   	// #1
   11990:	aa1403e1 	mov	x1, x20
   11994:	97ffff93 	bl	117e0 <__aarch64_ldadd4_acq_rel>
   11998:	6b13001f 	cmp	w0, w19
   1199c:	54ffff8b 	b.lt	1198c <_Z14render_dynamicRSt6atomicIiEiijddddPj+0x11c>  // b.tstop
   119a0:	1400000c 	b	119d0 <_Z14render_dynamicRSt6atomicIiEiijddddPj+0x160>
   119a4:	d37ef717 	lsl	x23, x24, #2
   119a8:	1b167c08 	mul	w8, w0, w22
   119ac:	2a1f03e1 	mov	w1, wzr
   119b0:	aa1703e2 	mov	x2, x23
   119b4:	8b28caa0 	add	x0, x21, w8, sxtw #2
   119b8:	940002f2 	bl	12580 <memset@plt>
   119bc:	52800020 	mov	w0, #0x1                   	// #1
   119c0:	aa1403e1 	mov	x1, x20
   119c4:	97ffff87 	bl	117e0 <__aarch64_ldadd4_acq_rel>
   119c8:	6b13001f 	cmp	w0, w19
   119cc:	54fffeeb 	b.lt	119a8 <_Z14render_dynamicRSt6atomicIiEiijddddPj+0x138>  // b.tstop
   119d0:	a9474ff4 	ldp	x20, x19, [sp, #112]
   119d4:	a94657f6 	ldp	x22, x21, [sp, #96]
   119d8:	a9455ff8 	ldp	x24, x23, [sp, #80]
   119dc:	a9447bfd 	ldp	x29, x30, [sp, #64]
   119e0:	6d4323e9 	ldp	d9, d8, [sp, #48]
   119e4:	6d422beb 	ldp	d11, d10, [sp, #32]
   119e8:	6d4133ed 	ldp	d13, d12, [sp, #16]
   119ec:	fc4807ee 	ldr	d14, [sp], #128
   119f0:	d65f03c0 	ret

00000000000119f4 <main>:
   119f4:	fc190fe8 	str	d8, [sp, #-112]!
   119f8:	a9017bfd 	stp	x29, x30, [sp, #16]
   119fc:	910043fd 	add	x29, sp, #0x10
   11a00:	a9026ffc 	stp	x28, x27, [sp, #32]
   11a04:	a90367fa 	stp	x26, x25, [sp, #48]
   11a08:	a9045ff8 	stp	x24, x23, [sp, #64]
   11a0c:	a90557f6 	stp	x22, x21, [sp, #80]
   11a10:	a9064ff4 	stp	x20, x19, [sp, #96]
   11a14:	d10903ff 	sub	sp, sp, #0x240
   11a18:	52920000 	mov	w0, #0x9000                	// #36864
   11a1c:	d2f80008 	mov	x8, #0xc000000000000000    	// #-4611686018427387904
   11a20:	d2e7fe09 	mov	x9, #0x3ff0000000000000    	// #4607182418800017408
   11a24:	d2f7ff0a 	mov	x10, #0xbff8000000000000    	// #-4613937818241073152
   11a28:	d2e7ff0b 	mov	x11, #0x3ff8000000000000    	// #4609434218613702656
   11a2c:	72a07a00 	movk	w0, #0x3d0, lsl #16
   11a30:	f81f83a8 	stur	x8, [x29, #-8]
   11a34:	a93da7aa 	stp	x10, x9, [x29, #-40]
   11a38:	f81d03ab 	stur	x11, [x29, #-48]
   11a3c:	9400029d 	bl	124b0 <_Znwm@plt>
   11a40:	52920002 	mov	w2, #0x9000                	// #36864
   11a44:	2a1f03e1 	mov	w1, wzr
   11a48:	72a07a02 	movk	w2, #0x3d0, lsl #16
   11a4c:	f90007e0 	str	x0, [sp, #8]
   11a50:	940002cc 	bl	12580 <memset@plt>
   11a54:	b000009c 	adrp	x28, 22000 <memset@plt+0xfa80>
   11a58:	aa1f03f4 	mov	x20, xzr
   11a5c:	aa1f03f5 	mov	x21, xzr
   11a60:	aa1f03f3 	mov	x19, xzr
   11a64:	aa1f03f6 	mov	x22, xzr
   11a68:	2a1f03f8 	mov	w24, wzr
   11a6c:	d10023ba 	sub	x26, x29, #0x8
   11a70:	d10083bb 	sub	x27, x29, #0x20
   11a74:	9117039c 	add	x28, x28, #0x5c0
   11a78:	b81c83bf 	stur	wzr, [x29, #-56]
   11a7c:	94000265 	bl	12410 <_ZNSt6thread20hardware_concurrencyEv@plt>
   11a80:	6b00031f 	cmp	w24, w0
   11a84:	540000e3 	b.cc	11aa0 <main+0xac>  // b.lo, b.ul, b.last
   11a88:	14000074 	b	11c58 <main+0x264>
   11a8c:	91002294 	add	x20, x20, #0x8
   11a90:	11000718 	add	w24, w24, #0x1
   11a94:	9400025f 	bl	12410 <_ZNSt6thread20hardware_concurrencyEv@plt>
   11a98:	6b00031f 	cmp	w24, w0
   11a9c:	54000de2 	b.cs	11c58 <main+0x264>  // b.hs, b.nlast
   11aa0:	eb13029f 	cmp	x20, x19
   11aa4:	540002c0 	b.eq	11afc <main+0x108>  // b.none
   11aa8:	f900029f 	str	xzr, [x20]
   11aac:	52800600 	mov	w0, #0x30                  	// #48
   11ab0:	94000280 	bl	124b0 <_Znwm@plt>
   11ab4:	d100e3a8 	sub	x8, x29, #0x38
   11ab8:	f900141b 	str	x27, [x0, #40]
   11abc:	f9000be0 	str	x0, [sp, #16]
   11ac0:	a900201c 	stp	x28, x8, [x0]
   11ac4:	d100a3a8 	sub	x8, x29, #0x28
   11ac8:	f9000808 	str	x8, [x0, #16]
   11acc:	d100c3a8 	sub	x8, x29, #0x30
   11ad0:	a901e808 	stp	x8, x26, [x0, #24]
   11ad4:	910043e1 	add	x1, sp, #0x10
   11ad8:	aa1403e0 	mov	x0, x20
   11adc:	aa1f03e2 	mov	x2, xzr
   11ae0:	9400027c 	bl	124d0 <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>
   11ae4:	f9400be0 	ldr	x0, [sp, #16]
   11ae8:	b4fffd20 	cbz	x0, 11a8c <main+0x98>
   11aec:	f9400008 	ldr	x8, [x0]
   11af0:	f9400508 	ldr	x8, [x8, #8]
   11af4:	d63f0100 	blr	x8
   11af8:	17ffffe5 	b	11a8c <main+0x98>
   11afc:	cb150279 	sub	x25, x19, x21
   11b00:	b27defe8 	mov	x8, #0x7ffffffffffffff8    	// #9223372036854775800
   11b04:	eb08033f 	cmp	x25, x8
   11b08:	54003120 	b.eq	1212c <main+0x738>  // b.none
   11b0c:	9343ff37 	asr	x23, x25, #3
   11b10:	f100033f 	cmp	x25, #0x0
   11b14:	9a9f16e8 	csinc	x8, x23, xzr, ne  // ne = any
   11b18:	ab170108 	adds	x8, x8, x23
   11b1c:	d37cfd09 	lsr	x9, x8, #60
   11b20:	1a9f37ea 	cset	w10, cs  // cs = hs, nlast
   11b24:	f100013f 	cmp	x9, #0x0
   11b28:	1a9f07e9 	cset	w9, ne  // ne = any
   11b2c:	2a090149 	orr	w9, w10, w9
   11b30:	7100013f 	cmp	w9, #0x0
   11b34:	92fe0009 	mov	x9, #0xfffffffffffffff     	// #1152921504606846975
   11b38:	9a881133 	csel	x19, x9, x8, ne  // ne = any
   11b3c:	b40000b3 	cbz	x19, 11b50 <main+0x15c>
   11b40:	d37df260 	lsl	x0, x19, #3
   11b44:	9400025b 	bl	124b0 <_Znwm@plt>
   11b48:	aa0003f6 	mov	x22, x0
   11b4c:	14000002 	b	11b54 <main+0x160>
   11b50:	aa1f03f6 	mov	x22, xzr
   11b54:	8b170ed7 	add	x23, x22, x23, lsl #3
   11b58:	f90002ff 	str	xzr, [x23]
   11b5c:	52800600 	mov	w0, #0x30                  	// #48
   11b60:	94000254 	bl	124b0 <_Znwm@plt>
   11b64:	d100e3a8 	sub	x8, x29, #0x38
   11b68:	f900141b 	str	x27, [x0, #40]
   11b6c:	f9000be0 	str	x0, [sp, #16]
   11b70:	a900201c 	stp	x28, x8, [x0]
   11b74:	d100a3a8 	sub	x8, x29, #0x28
   11b78:	f9000808 	str	x8, [x0, #16]
   11b7c:	d100c3a8 	sub	x8, x29, #0x30
   11b80:	a901e808 	stp	x8, x26, [x0, #24]
   11b84:	910043e1 	add	x1, sp, #0x10
   11b88:	aa1703e0 	mov	x0, x23
   11b8c:	aa1f03e2 	mov	x2, xzr
   11b90:	94000250 	bl	124d0 <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>
   11b94:	f9400be0 	ldr	x0, [sp, #16]
   11b98:	b4000080 	cbz	x0, 11ba8 <main+0x1b4>
   11b9c:	f9400008 	ldr	x8, [x0]
   11ba0:	f9400508 	ldr	x8, [x8, #8]
   11ba4:	d63f0100 	blr	x8
   11ba8:	aa1603e8 	mov	x8, x22
   11bac:	eb1402bf 	cmp	x21, x20
   11bb0:	540003c0 	b.eq	11c28 <main+0x234>  // b.none
   11bb4:	d100232a 	sub	x10, x25, #0x8
   11bb8:	aa1603e8 	mov	x8, x22
   11bbc:	aa1503e9 	mov	x9, x21
   11bc0:	f1005d5f 	cmp	x10, #0x17
   11bc4:	54000289 	b.ls	11c14 <main+0x220>  // b.plast
   11bc8:	d343fd48 	lsr	x8, x10, #3
   11bcc:	910042cb 	add	x11, x22, #0x10
   11bd0:	9100050a 	add	x10, x8, #0x1
   11bd4:	aa1503ec 	mov	x12, x21
   11bd8:	927eed49 	and	x9, x10, #0x3ffffffffffffffc
   11bdc:	6f00e402 	movi	v2.2d, #0x0
   11be0:	aa0903ed 	mov	x13, x9
   11be4:	8b090ec8 	add	x8, x22, x9, lsl #3
   11be8:	ad400580 	ldp	q0, q1, [x12]
   11bec:	f10011ad 	subs	x13, x13, #0x4
   11bf0:	ad3f8560 	stp	q0, q1, [x11, #-16]
   11bf4:	9100816b 	add	x11, x11, #0x20
   11bf8:	ac810982 	stp	q2, q2, [x12], #32
   11bfc:	54ffff61 	b.ne	11be8 <main+0x1f4>  // b.any
   11c00:	eb09015f 	cmp	x10, x9
   11c04:	54000061 	b.ne	11c10 <main+0x21c>  // b.any
   11c08:	91002114 	add	x20, x8, #0x8
   11c0c:	14000009 	b	11c30 <main+0x23c>
   11c10:	8b090ea9 	add	x9, x21, x9, lsl #3
   11c14:	f940012a 	ldr	x10, [x9]
   11c18:	f800850a 	str	x10, [x8], #8
   11c1c:	f800853f 	str	xzr, [x9], #8
   11c20:	eb14013f 	cmp	x9, x20
   11c24:	54ffff81 	b.ne	11c14 <main+0x220>  // b.any
   11c28:	91002114 	add	x20, x8, #0x8
   11c2c:	b4000075 	cbz	x21, 11c38 <main+0x244>
   11c30:	aa1503e0 	mov	x0, x21
   11c34:	94000223 	bl	124c0 <_ZdlPv@plt>
   11c38:	8b130ed3 	add	x19, x22, x19, lsl #3
   11c3c:	aa1603f5 	mov	x21, x22
   11c40:	11000718 	add	w24, w24, #0x1
   11c44:	940001f3 	bl	12410 <_ZNSt6thread20hardware_concurrencyEv@plt>
   11c48:	6b00031f 	cmp	w24, w0
   11c4c:	54fff2a3 	b.cc	11aa0 <main+0xac>  // b.lo, b.ul, b.last
   11c50:	14000002 	b	11c58 <main+0x264>
   11c54:	910022d6 	add	x22, x22, #0x8
   11c58:	eb1402df 	cmp	x22, x20
   11c5c:	54000080 	b.eq	11c6c <main+0x278>  // b.none
   11c60:	aa1603e0 	mov	x0, x22
   11c64:	940001ef 	bl	12420 <_ZNSt6thread4joinEv@plt>
   11c68:	17fffffb 	b	11c54 <main+0x260>
   11c6c:	eb1402bf 	cmp	x21, x20
   11c70:	540000c0 	b.eq	11c88 <main+0x294>  // b.none
   11c74:	aa1503e8 	mov	x8, x21
   11c78:	f8408509 	ldr	x9, [x8], #8
   11c7c:	b5002509 	cbnz	x9, 1211c <main+0x728>
   11c80:	eb14011f 	cmp	x8, x20
   11c84:	54ffffa1 	b.ne	11c78 <main+0x284>  // b.any
   11c88:	b4000075 	cbz	x21, 11c94 <main+0x2a0>
   11c8c:	aa1503e0 	mov	x0, x21
   11c90:	9400020c 	bl	124c0 <_ZdlPv@plt>
   11c94:	940001e7 	bl	12430 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
   11c98:	f90003e0 	str	x0, [sp]
   11c9c:	940001dd 	bl	12410 <_ZNSt6thread20hardware_concurrencyEv@plt>
   11ca0:	90ffff89 	adrp	x9, 1000 <__abi_tag+0xd3c>
   11ca4:	7100041f 	cmp	w0, #0x1
   11ca8:	1a9f8408 	csinc	w8, w0, wzr, hi  // hi = pmore
   11cac:	7100001f 	cmp	w0, #0x0
   11cb0:	5280004a 	mov	w10, #0x2                   	// #2
   11cb4:	9000001b 	adrp	x27, 11000 <__FRAME_END__+0xfb98>
   11cb8:	aa1f03f4 	mov	x20, xzr
   11cbc:	aa1f03f5 	mov	x21, xzr
   11cc0:	aa1f03f6 	mov	x22, xzr
   11cc4:	2a1f03f9 	mov	w25, wzr
   11cc8:	1a88015a 	csel	w26, w10, w8, eq  // eq = none
   11ccc:	fd40f128 	ldr	d8, [x9, #480]
   11cd0:	9121c37b 	add	x27, x27, #0x870
   11cd4:	b81c83bf 	stur	wzr, [x29, #-56]
   11cd8:	14000006 	b	11cf0 <main+0x2fc>
   11cdc:	aa1503fc 	mov	x28, x21
   11ce0:	91002395 	add	x21, x28, #0x8
   11ce4:	11000739 	add	w25, w25, #0x1
   11ce8:	6b1a033f 	cmp	w25, w26
   11cec:	54000f40 	b.eq	11ed4 <main+0x4e0>  // b.none
   11cf0:	eb1602bf 	cmp	x21, x22
   11cf4:	540003a0 	b.eq	11d68 <main+0x374>  // b.none
   11cf8:	f90002bf 	str	xzr, [x21]
   11cfc:	52800a00 	mov	w0, #0x50                  	// #80
   11d00:	940001ec 	bl	124b0 <_Znwm@plt>
   11d04:	b0000088 	adrp	x8, 22000 <memset@plt+0xfa80>
   11d08:	fc5e03a2 	ldur	d2, [x29, #-32]
   11d0c:	91180109 	add	x9, x8, #0x600
   11d10:	f94007e8 	ldr	x8, [sp, #8]
   11d14:	6d7d07a0 	ldp	d0, d1, [x29, #-48]
   11d18:	fd001808 	str	d8, [x0, #48]
   11d1c:	a9002009 	stp	x9, x8, [x0]
   11d20:	5281f408 	mov	w8, #0xfa0                 	// #4000
   11d24:	fc5f83a3 	ldur	d3, [x29, #-8]
   11d28:	f9000be0 	str	x0, [sp, #16]
   11d2c:	b9003808 	str	w8, [x0, #56]
   11d30:	d100e3a8 	sub	x8, x29, #0x38
   11d34:	6d010400 	stp	d0, d1, [x0, #16]
   11d38:	6d020c02 	stp	d2, d3, [x0, #32]
   11d3c:	a9046c08 	stp	x8, x27, [x0, #64]
   11d40:	910043e1 	add	x1, sp, #0x10
   11d44:	aa1503e0 	mov	x0, x21
   11d48:	aa1f03e2 	mov	x2, xzr
   11d4c:	940001e1 	bl	124d0 <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>
   11d50:	f9400be0 	ldr	x0, [sp, #16]
   11d54:	b4fffc40 	cbz	x0, 11cdc <main+0x2e8>
   11d58:	f9400008 	ldr	x8, [x0]
   11d5c:	f9400508 	ldr	x8, [x8, #8]
   11d60:	d63f0100 	blr	x8
   11d64:	17ffffde 	b	11cdc <main+0x2e8>
   11d68:	cb1402b3 	sub	x19, x21, x20
   11d6c:	b27defe8 	mov	x8, #0x7ffffffffffffff8    	// #9223372036854775800
   11d70:	eb08027f 	cmp	x19, x8
   11d74:	54001d60 	b.eq	12120 <main+0x72c>  // b.none
   11d78:	9343fe78 	asr	x24, x19, #3
   11d7c:	f100027f 	cmp	x19, #0x0
   11d80:	9a9f1708 	csinc	x8, x24, xzr, ne  // ne = any
   11d84:	ab180108 	adds	x8, x8, x24
   11d88:	d37cfd09 	lsr	x9, x8, #60
   11d8c:	1a9f37ea 	cset	w10, cs  // cs = hs, nlast
   11d90:	f100013f 	cmp	x9, #0x0
   11d94:	1a9f07e9 	cset	w9, ne  // ne = any
   11d98:	2a090149 	orr	w9, w10, w9
   11d9c:	7100013f 	cmp	w9, #0x0
   11da0:	92fe0009 	mov	x9, #0xfffffffffffffff     	// #1152921504606846975
   11da4:	9a881136 	csel	x22, x9, x8, ne  // ne = any
   11da8:	b40000b6 	cbz	x22, 11dbc <main+0x3c8>
   11dac:	d37df2c0 	lsl	x0, x22, #3
   11db0:	940001c0 	bl	124b0 <_Znwm@plt>
   11db4:	aa0003f7 	mov	x23, x0
   11db8:	14000002 	b	11dc0 <main+0x3cc>
   11dbc:	aa1f03f7 	mov	x23, xzr
   11dc0:	8b180ef8 	add	x24, x23, x24, lsl #3
   11dc4:	f900031f 	str	xzr, [x24]
   11dc8:	52800a00 	mov	w0, #0x50                  	// #80
   11dcc:	940001b9 	bl	124b0 <_Znwm@plt>
   11dd0:	b0000088 	adrp	x8, 22000 <memset@plt+0xfa80>
   11dd4:	fc5e03a2 	ldur	d2, [x29, #-32]
   11dd8:	91180109 	add	x9, x8, #0x600
   11ddc:	f94007e8 	ldr	x8, [sp, #8]
   11de0:	6d7d07a0 	ldp	d0, d1, [x29, #-48]
   11de4:	fd001002 	str	d2, [x0, #32]
   11de8:	a9002009 	stp	x9, x8, [x0]
   11dec:	5281f408 	mov	w8, #0xfa0                 	// #4000
   11df0:	fc5f83a3 	ldur	d3, [x29, #-8]
   11df4:	fd001808 	str	d8, [x0, #48]
   11df8:	fd000800 	str	d0, [x0, #16]
   11dfc:	b9003808 	str	w8, [x0, #56]
   11e00:	d100e3a8 	sub	x8, x29, #0x38
   11e04:	fd000c01 	str	d1, [x0, #24]
   11e08:	fd001403 	str	d3, [x0, #40]
   11e0c:	a9046c08 	stp	x8, x27, [x0, #64]
   11e10:	f9000be0 	str	x0, [sp, #16]
   11e14:	910043e1 	add	x1, sp, #0x10
   11e18:	aa1803e0 	mov	x0, x24
   11e1c:	aa1f03e2 	mov	x2, xzr
   11e20:	940001ac 	bl	124d0 <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>
   11e24:	f9400be0 	ldr	x0, [sp, #16]
   11e28:	b4000080 	cbz	x0, 11e38 <main+0x444>
   11e2c:	f9400008 	ldr	x8, [x0]
   11e30:	f9400508 	ldr	x8, [x8, #8]
   11e34:	d63f0100 	blr	x8
   11e38:	6f00e402 	movi	v2.2d, #0x0
   11e3c:	aa1703fc 	mov	x28, x23
   11e40:	eb15029f 	cmp	x20, x21
   11e44:	54000360 	b.eq	11eb0 <main+0x4bc>  // b.none
   11e48:	d1002269 	sub	x9, x19, #0x8
   11e4c:	aa1703fc 	mov	x28, x23
   11e50:	aa1403e8 	mov	x8, x20
   11e54:	f100613f 	cmp	x9, #0x18
   11e58:	54000223 	b.cc	11e9c <main+0x4a8>  // b.lo, b.ul, b.last
   11e5c:	d343fd28 	lsr	x8, x9, #3
   11e60:	910042ea 	add	x10, x23, #0x10
   11e64:	91000509 	add	x9, x8, #0x1
   11e68:	aa1403eb 	mov	x11, x20
   11e6c:	927eed28 	and	x8, x9, #0x3ffffffffffffffc
   11e70:	aa0803ec 	mov	x12, x8
   11e74:	8b080efc 	add	x28, x23, x8, lsl #3
   11e78:	ad400560 	ldp	q0, q1, [x11]
   11e7c:	f100118c 	subs	x12, x12, #0x4
   11e80:	ad3f8540 	stp	q0, q1, [x10, #-16]
   11e84:	9100814a 	add	x10, x10, #0x20
   11e88:	ac810962 	stp	q2, q2, [x11], #32
   11e8c:	54ffff61 	b.ne	11e78 <main+0x484>  // b.any
   11e90:	eb08013f 	cmp	x9, x8
   11e94:	54000100 	b.eq	11eb4 <main+0x4c0>  // b.none
   11e98:	8b080e88 	add	x8, x20, x8, lsl #3
   11e9c:	f9400109 	ldr	x9, [x8]
   11ea0:	f8008789 	str	x9, [x28], #8
   11ea4:	f800851f 	str	xzr, [x8], #8
   11ea8:	eb15011f 	cmp	x8, x21
   11eac:	54ffff81 	b.ne	11e9c <main+0x4a8>  // b.any
   11eb0:	b4000074 	cbz	x20, 11ebc <main+0x4c8>
   11eb4:	aa1403e0 	mov	x0, x20
   11eb8:	94000182 	bl	124c0 <_ZdlPv@plt>
   11ebc:	8b160ef6 	add	x22, x23, x22, lsl #3
   11ec0:	aa1703f4 	mov	x20, x23
   11ec4:	91002395 	add	x21, x28, #0x8
   11ec8:	11000739 	add	w25, w25, #0x1
   11ecc:	6b1a033f 	cmp	w25, w26
   11ed0:	54fff101 	b.ne	11cf0 <main+0x2fc>  // b.any
   11ed4:	eb15029f 	cmp	x20, x21
   11ed8:	54000100 	b.eq	11ef8 <main+0x504>  // b.none
   11edc:	aa1403f7 	mov	x23, x20
   11ee0:	aa1703e0 	mov	x0, x23
   11ee4:	9400014f 	bl	12420 <_ZNSt6thread4joinEv@plt>
   11ee8:	910022e8 	add	x8, x23, #0x8
   11eec:	eb1c02ff 	cmp	x23, x28
   11ef0:	aa0803f7 	mov	x23, x8
   11ef4:	54ffff61 	b.ne	11ee0 <main+0x4ec>  // b.any
   11ef8:	9400014e 	bl	12430 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
   11efc:	aa0003f7 	mov	x23, x0
   11f00:	90ffff81 	adrp	x1, 1000 <__abi_tag+0xd3c>
   11f04:	910043e0 	add	x0, sp, #0x10
   11f08:	91085c21 	add	x1, x1, #0x217
   11f0c:	52800202 	mov	w2, #0x10                  	// #16
   11f10:	9400014c 	bl	12440 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@plt>
   11f14:	90ffff81 	adrp	x1, 1000 <__abi_tag+0xd3c>
   11f18:	910043e0 	add	x0, sp, #0x10
   11f1c:	9107a821 	add	x1, x1, #0x1ea
   11f20:	52800062 	mov	w2, #0x3                   	// #3
   11f24:	9400018b 	bl	12550 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
   11f28:	910043e0 	add	x0, sp, #0x10
   11f2c:	5281f401 	mov	w1, #0xfa0                 	// #4000
   11f30:	94000148 	bl	12450 <_ZNSolsEi@plt>
   11f34:	aa0003f8 	mov	x24, x0
   11f38:	90ffff81 	adrp	x1, 1000 <__abi_tag+0xd3c>
   11f3c:	52800022 	mov	w2, #0x1                   	// #1
   11f40:	9107a021 	add	x1, x1, #0x1e8
   11f44:	94000183 	bl	12550 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
   11f48:	aa1803e0 	mov	x0, x24
   11f4c:	5281f401 	mov	w1, #0xfa0                 	// #4000
   11f50:	94000140 	bl	12450 <_ZNSolsEi@plt>
   11f54:	90ffff81 	adrp	x1, 1000 <__abi_tag+0xd3c>
   11f58:	528000a2 	mov	w2, #0x5                   	// #5
   11f5c:	91089821 	add	x1, x1, #0x226
   11f60:	9400017c 	bl	12550 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
   11f64:	f94003e8 	ldr	x8, [sp]
   11f68:	d2d09009 	mov	x9, #0x848000000000        	// #145685290680320
   11f6c:	f2e825c9 	movk	x9, #0x412e, lsl #48
   11f70:	90ffff96 	adrp	x22, 1000 <__abi_tag+0xd3c>
   11f74:	90ffff98 	adrp	x24, 1000 <__abi_tag+0xd3c>
   11f78:	90ffff99 	adrp	x25, 1000 <__abi_tag+0xd3c>
   11f7c:	cb0802e8 	sub	x8, x23, x8
   11f80:	52848017 	mov	w23, #0x2400                	// #9216
   11f84:	9e670121 	fmov	d1, x9
   11f88:	aa1f03f3 	mov	x19, xzr
   11f8c:	91083ad6 	add	x22, x22, #0x20e
   11f90:	72a01e97 	movk	w23, #0xf4, lsl #16
   11f94:	9e620100 	scvtf	d0, x8
   11f98:	9107a318 	add	x24, x24, #0x1e8
   11f9c:	9107bb39 	add	x25, x25, #0x1ee
   11fa0:	1e611808 	fdiv	d8, d0, d1
   11fa4:	14000004 	b	11fb4 <main+0x5c0>
   11fa8:	91000673 	add	x19, x19, #0x1
   11fac:	eb17027f 	cmp	x19, x23
   11fb0:	54000400 	b.eq	12030 <main+0x63c>  // b.none
   11fb4:	f94007e8 	ldr	x8, [sp, #8]
   11fb8:	b8737908 	ldr	w8, [x8, x19, lsl #2]
   11fbc:	710fa11f 	cmp	w8, #0x3e8
   11fc0:	540000c1 	b.ne	11fd8 <main+0x5e4>  // b.any
   11fc4:	910043e0 	add	x0, sp, #0x10
   11fc8:	aa1603e1 	mov	x1, x22
   11fcc:	528000c2 	mov	w2, #0x6                   	// #6
   11fd0:	94000160 	bl	12550 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
   11fd4:	1400000f 	b	12010 <main+0x61c>
   11fd8:	12001d1a 	and	w26, w8, #0xff
   11fdc:	910043e0 	add	x0, sp, #0x10
   11fe0:	2a1a03e1 	mov	w1, w26
   11fe4:	9400011b 	bl	12450 <_ZNSolsEi@plt>
   11fe8:	aa0003fb 	mov	x27, x0
   11fec:	aa1803e1 	mov	x1, x24
   11ff0:	52800022 	mov	w2, #0x1                   	// #1
   11ff4:	94000157 	bl	12550 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
   11ff8:	aa1b03e0 	mov	x0, x27
   11ffc:	2a1a03e1 	mov	w1, w26
   12000:	94000114 	bl	12450 <_ZNSolsEi@plt>
   12004:	aa1903e1 	mov	x1, x25
   12008:	528000a2 	mov	w2, #0x5                   	// #5
   1200c:	94000151 	bl	12550 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
   12010:	f2400e7f 	tst	x19, #0xf
   12014:	54fffca1 	b.ne	11fa8 <main+0x5b4>  // b.any
   12018:	f0ffff61 	adrp	x1, 1000 <__abi_tag+0xd3c>
   1201c:	910043e0 	add	x0, sp, #0x10
   12020:	91085421 	add	x1, x1, #0x215
   12024:	52800022 	mov	w2, #0x1                   	// #1
   12028:	9400014a 	bl	12550 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
   1202c:	17ffffdf 	b	11fa8 <main+0x5b4>
   12030:	910043e8 	add	x8, sp, #0x10
   12034:	91002116 	add	x22, x8, #0x8
   12038:	aa1603e0 	mov	x0, x22
   1203c:	9400013d 	bl	12530 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
   12040:	b5000100 	cbnz	x0, 12060 <main+0x66c>
   12044:	f9400be8 	ldr	x8, [sp, #16]
   12048:	910043e9 	add	x9, sp, #0x10
   1204c:	f85e8108 	ldur	x8, [x8, #-24]
   12050:	8b080120 	add	x0, x9, x8
   12054:	b9402008 	ldr	w8, [x0, #32]
   12058:	321e0101 	orr	w1, w8, #0x4
   1205c:	94000131 	bl	12520 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
   12060:	d2c80008 	mov	x8, #0x400000000000        	// #70368744177664
   12064:	f0ffff60 	adrp	x0, 1000 <__abi_tag+0xd3c>
   12068:	f2e811e8 	movk	x8, #0x408f, lsl #48
   1206c:	9108b000 	add	x0, x0, #0x22c
   12070:	9e670100 	fmov	d0, x8
   12074:	d2d09008 	mov	x8, #0x848000000000        	// #145685290680320
   12078:	f2e82dc8 	movk	x8, #0x416e, lsl #48
   1207c:	1e600900 	fmul	d0, d8, d0
   12080:	9e670101 	fmov	d1, x8
   12084:	1e601821 	fdiv	d1, d1, d0
   12088:	1e604100 	fmov	d0, d8
   1208c:	940000f5 	bl	12460 <printf@plt>
   12090:	90000088 	adrp	x8, 22000 <memset@plt+0xfa80>
   12094:	aa1603e0 	mov	x0, x22
   12098:	910043f3 	add	x19, sp, #0x10
   1209c:	f9441908 	ldr	x8, [x8, #2096]
   120a0:	f9400109 	ldr	x9, [x8]
   120a4:	f9400d08 	ldr	x8, [x8, #24]
   120a8:	f9000be9 	str	x9, [sp, #16]
   120ac:	f85e8129 	ldur	x9, [x9, #-24]
   120b0:	f8296a68 	str	x8, [x19, x9]
   120b4:	94000117 	bl	12510 <_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev@plt>
   120b8:	91040260 	add	x0, x19, #0x100
   120bc:	94000121 	bl	12540 <_ZNSt8ios_baseD2Ev@plt>
   120c0:	eb15029f 	cmp	x20, x21
   120c4:	540000e0 	b.eq	120e0 <main+0x6ec>  // b.none
   120c8:	d1002288 	sub	x8, x20, #0x8
   120cc:	f9400509 	ldr	x9, [x8, #8]
   120d0:	b5000269 	cbnz	x9, 1211c <main+0x728>
   120d4:	91002108 	add	x8, x8, #0x8
   120d8:	eb1c011f 	cmp	x8, x28
   120dc:	54ffff81 	b.ne	120cc <main+0x6d8>  // b.any
   120e0:	b4000074 	cbz	x20, 120ec <main+0x6f8>
   120e4:	aa1403e0 	mov	x0, x20
   120e8:	940000f6 	bl	124c0 <_ZdlPv@plt>
   120ec:	f94007e0 	ldr	x0, [sp, #8]
   120f0:	940000f4 	bl	124c0 <_ZdlPv@plt>
   120f4:	2a1f03e0 	mov	w0, wzr
   120f8:	910903ff 	add	sp, sp, #0x240
   120fc:	a9464ff4 	ldp	x20, x19, [sp, #96]
   12100:	a94557f6 	ldp	x22, x21, [sp, #80]
   12104:	a9445ff8 	ldp	x24, x23, [sp, #64]
   12108:	a94367fa 	ldp	x26, x25, [sp, #48]
   1210c:	a9426ffc 	ldp	x28, x27, [sp, #32]
   12110:	a9417bfd 	ldp	x29, x30, [sp, #16]
   12114:	fc4707e8 	ldr	d8, [sp], #112
   12118:	d65f03c0 	ret
   1211c:	940000e1 	bl	124a0 <_ZSt9terminatev@plt>
   12120:	f0ffff60 	adrp	x0, 1000 <__abi_tag+0xd3c>
   12124:	9107d000 	add	x0, x0, #0x1f4
   12128:	940000d6 	bl	12480 <_ZSt20__throw_length_errorPKc@plt>
   1212c:	f0ffff60 	adrp	x0, 1000 <__abi_tag+0xd3c>
   12130:	9107d000 	add	x0, x0, #0x1f4
   12134:	940000d3 	bl	12480 <_ZSt20__throw_length_errorPKc@plt>
   12138:	aa0003f6 	mov	x22, x0
   1213c:	14000046 	b	12254 <main+0x860>
   12140:	14000042 	b	12248 <main+0x854>
   12144:	1400003a 	b	1222c <main+0x838>
   12148:	f9400be8 	ldr	x8, [sp, #16]
   1214c:	aa0003f7 	mov	x23, x0
   12150:	b40000e8 	cbz	x8, 1216c <main+0x778>
   12154:	f9400109 	ldr	x9, [x8]
   12158:	aa0803e0 	mov	x0, x8
   1215c:	f9400529 	ldr	x9, [x9, #8]
   12160:	d63f0120 	blr	x9
   12164:	14000002 	b	1216c <main+0x778>
   12168:	aa0003f7 	mov	x23, x0
   1216c:	aa1703e0 	mov	x0, x23
   12170:	940000c8 	bl	12490 <__cxa_begin_catch@plt>
   12174:	aa1603e0 	mov	x0, x22
   12178:	940000d2 	bl	124c0 <_ZdlPv@plt>
   1217c:	940000d9 	bl	124e0 <__cxa_rethrow@plt>
   12180:	f9400be8 	ldr	x8, [sp, #16]
   12184:	aa0003f6 	mov	x22, x0
   12188:	b40000e8 	cbz	x8, 121a4 <main+0x7b0>
   1218c:	f9400109 	ldr	x9, [x8]
   12190:	aa0803e0 	mov	x0, x8
   12194:	f9400529 	ldr	x9, [x9, #8]
   12198:	d63f0120 	blr	x9
   1219c:	14000002 	b	121a4 <main+0x7b0>
   121a0:	aa0003f6 	mov	x22, x0
   121a4:	aa1603e0 	mov	x0, x22
   121a8:	940000ba 	bl	12490 <__cxa_begin_catch@plt>
   121ac:	aa1703e0 	mov	x0, x23
   121b0:	940000c4 	bl	124c0 <_ZdlPv@plt>
   121b4:	940000cb 	bl	124e0 <__cxa_rethrow@plt>
   121b8:	aa0003f6 	mov	x22, x0
   121bc:	14000026 	b	12254 <main+0x860>
   121c0:	f9400be8 	ldr	x8, [sp, #16]
   121c4:	aa0003f6 	mov	x22, x0
   121c8:	b4000348 	cbz	x8, 12230 <main+0x83c>
   121cc:	f9400109 	ldr	x9, [x8]
   121d0:	aa0803e0 	mov	x0, x8
   121d4:	f9400529 	ldr	x9, [x9, #8]
   121d8:	d63f0120 	blr	x9
   121dc:	14000015 	b	12230 <main+0x83c>
   121e0:	aa0003f6 	mov	x22, x0
   121e4:	1400001c 	b	12254 <main+0x860>
   121e8:	f9400be8 	ldr	x8, [sp, #16]
   121ec:	aa0003f6 	mov	x22, x0
   121f0:	b4000328 	cbz	x8, 12254 <main+0x860>
   121f4:	f9400109 	ldr	x9, [x8]
   121f8:	aa0803e0 	mov	x0, x8
   121fc:	f9400529 	ldr	x9, [x9, #8]
   12200:	d63f0120 	blr	x9
   12204:	14000014 	b	12254 <main+0x860>
   12208:	14000009 	b	1222c <main+0x838>
   1220c:	aa0003f6 	mov	x22, x0
   12210:	940000b8 	bl	124f0 <__cxa_end_catch@plt>
   12214:	14000007 	b	12230 <main+0x83c>
   12218:	94000016 	bl	12270 <__clang_call_terminate>
   1221c:	aa0003f6 	mov	x22, x0
   12220:	940000b4 	bl	124f0 <__cxa_end_catch@plt>
   12224:	1400000c 	b	12254 <main+0x860>
   12228:	94000012 	bl	12270 <__clang_call_terminate>
   1222c:	aa0003f6 	mov	x22, x0
   12230:	aa1503e0 	mov	x0, x21
   12234:	aa1403e1 	mov	x1, x20
   12238:	14000009 	b	1225c <main+0x868>
   1223c:	aa0003f6 	mov	x22, x0
   12240:	14000005 	b	12254 <main+0x860>
   12244:	14000001 	b	12248 <main+0x854>
   12248:	aa0003f6 	mov	x22, x0
   1224c:	910043e0 	add	x0, sp, #0x10
   12250:	94000088 	bl	12470 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>
   12254:	aa1403e0 	mov	x0, x20
   12258:	aa1503e1 	mov	x1, x21
   1225c:	94000008 	bl	1227c <_ZNSt6vectorISt6threadSaIS0_EED2Ev>
   12260:	f94007e0 	ldr	x0, [sp, #8]
   12264:	94000097 	bl	124c0 <_ZdlPv@plt>
   12268:	aa1603e0 	mov	x0, x22
   1226c:	940000bd 	bl	12560 <_Unwind_Resume@plt>

0000000000012270 <__clang_call_terminate>:
   12270:	f81f0ffe 	str	x30, [sp, #-16]!
   12274:	94000087 	bl	12490 <__cxa_begin_catch@plt>
   12278:	9400008a 	bl	124a0 <_ZSt9terminatev@plt>

000000000001227c <_ZNSt6vectorISt6threadSaIS0_EED2Ev>:
   1227c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   12280:	910003fd 	mov	x29, sp
   12284:	eb01001f 	cmp	x0, x1
   12288:	540000c0 	b.eq	122a0 <_ZNSt6vectorISt6threadSaIS0_EED2Ev+0x24>  // b.none
   1228c:	aa0003e8 	mov	x8, x0
   12290:	f8408509 	ldr	x9, [x8], #8
   12294:	b5000109 	cbnz	x9, 122b4 <_ZNSt6vectorISt6threadSaIS0_EED2Ev+0x38>
   12298:	eb01011f 	cmp	x8, x1
   1229c:	54ffffa1 	b.ne	12290 <_ZNSt6vectorISt6threadSaIS0_EED2Ev+0x14>  // b.any
   122a0:	b4000060 	cbz	x0, 122ac <_ZNSt6vectorISt6threadSaIS0_EED2Ev+0x30>
   122a4:	a8c17bfd 	ldp	x29, x30, [sp], #16
   122a8:	14000086 	b	124c0 <_ZdlPv@plt>
   122ac:	a8c17bfd 	ldp	x29, x30, [sp], #16
   122b0:	d65f03c0 	ret
   122b4:	9400007b 	bl	124a0 <_ZSt9terminatev@plt>

00000000000122b8 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIiEiijddddPjESt17reference_wrapperIS4_EiijddddS6_EEEEED0Ev>:
   122b8:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   122bc:	f9000bf3 	str	x19, [sp, #16]
   122c0:	910003fd 	mov	x29, sp
   122c4:	aa0003f3 	mov	x19, x0
   122c8:	9400008e 	bl	12500 <_ZNSt6thread6_StateD2Ev@plt>
   122cc:	aa1303e0 	mov	x0, x19
   122d0:	f9400bf3 	ldr	x19, [sp, #16]
   122d4:	a8c27bfd 	ldp	x29, x30, [sp], #32
   122d8:	1400007a 	b	124c0 <_ZdlPv@plt>

00000000000122dc <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIiEiijddddPjESt17reference_wrapperIS4_EiijddddS6_EEEEE6_M_runEv>:
   122dc:	a9441408 	ldp	x8, x5, [x0, #64]
   122e0:	6d420001 	ldp	d1, d0, [x0, #32]
   122e4:	6d410803 	ldp	d3, d2, [x0, #16]
   122e8:	29468402 	ldp	w2, w1, [x0, #52]
   122ec:	b9403003 	ldr	w3, [x0, #48]
   122f0:	f9400404 	ldr	x4, [x0, #8]
   122f4:	aa0803e0 	mov	x0, x8
   122f8:	d61f00a0 	br	x5

00000000000122fc <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainE3$_0EEEEED0Ev>:
   122fc:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   12300:	f9000bf3 	str	x19, [sp, #16]
   12304:	910003fd 	mov	x29, sp
   12308:	aa0003f3 	mov	x19, x0
   1230c:	9400007d 	bl	12500 <_ZNSt6thread6_StateD2Ev@plt>
   12310:	aa1303e0 	mov	x0, x19
   12314:	f9400bf3 	ldr	x19, [sp, #16]
   12318:	a8c27bfd 	ldp	x29, x30, [sp], #32
   1231c:	14000069 	b	124c0 <_ZdlPv@plt>

0000000000012320 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainE3$_0EEEEE6_M_runEv>:
   12320:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   12324:	f9000bf3 	str	x19, [sp, #16]
   12328:	910003fd 	mov	x29, sp
   1232c:	aa0003f3 	mov	x19, x0
   12330:	f9400401 	ldr	x1, [x0, #8]
   12334:	52800020 	mov	w0, #0x1                   	// #1
   12338:	97fffd2a 	bl	117e0 <__aarch64_ldadd4_acq_rel>
   1233c:	71063c1f 	cmp	w0, #0x18f
   12340:	540000cc 	b.gt	12358 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainE3$_0EEEEE6_M_runEv+0x38>
   12344:	f9400661 	ldr	x1, [x19, #8]
   12348:	52800020 	mov	w0, #0x1                   	// #1
   1234c:	97fffd25 	bl	117e0 <__aarch64_ldadd4_acq_rel>
   12350:	7106401f 	cmp	w0, #0x190
   12354:	54ffff8b 	b.lt	12344 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainE3$_0EEEEE6_M_runEv+0x24>  // b.tstop
   12358:	f9400bf3 	ldr	x19, [sp, #16]
   1235c:	a8c27bfd 	ldp	x29, x30, [sp], #32
   12360:	d65f03c0 	ret

Disassembly of section .init:

0000000000012364 <_init>:
   12364:	d503201f 	nop
   12368:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   1236c:	910003fd 	mov	x29, sp
   12370:	97fffce1 	bl	116f4 <call_weak_fn>
   12374:	a8c17bfd 	ldp	x29, x30, [sp], #16
   12378:	d65f03c0 	ret

Disassembly of section .fini:

000000000001237c <_fini>:
   1237c:	d503201f 	nop
   12380:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   12384:	910003fd 	mov	x29, sp
   12388:	a8c17bfd 	ldp	x29, x30, [sp], #16
   1238c:	d65f03c0 	ret

Disassembly of section .plt:

0000000000012390 <abort@plt-0x20>:
   12390:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
   12394:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12398:	f9443211 	ldr	x17, [x16, #2144]
   1239c:	91218210 	add	x16, x16, #0x860
   123a0:	d61f0220 	br	x17
   123a4:	d503201f 	nop
   123a8:	d503201f 	nop
   123ac:	d503201f 	nop

00000000000123b0 <abort@plt>:
   123b0:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   123b4:	f9443611 	ldr	x17, [x16, #2152]
   123b8:	9121a210 	add	x16, x16, #0x868
   123bc:	d61f0220 	br	x17

00000000000123c0 <__libc_start_main@plt>:
   123c0:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   123c4:	f9443a11 	ldr	x17, [x16, #2160]
   123c8:	9121c210 	add	x16, x16, #0x870
   123cc:	d61f0220 	br	x17

00000000000123d0 <__gmon_start__@plt>:
   123d0:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   123d4:	f9443e11 	ldr	x17, [x16, #2168]
   123d8:	9121e210 	add	x16, x16, #0x878
   123dc:	d61f0220 	br	x17

00000000000123e0 <__cxa_finalize@plt>:
   123e0:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   123e4:	f9444211 	ldr	x17, [x16, #2176]
   123e8:	91220210 	add	x16, x16, #0x880
   123ec:	d61f0220 	br	x17

00000000000123f0 <_ZNSt8ios_base4InitC1Ev@plt>:
   123f0:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   123f4:	f9444611 	ldr	x17, [x16, #2184]
   123f8:	91222210 	add	x16, x16, #0x888
   123fc:	d61f0220 	br	x17

0000000000012400 <__cxa_atexit@plt>:
   12400:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12404:	f9444a11 	ldr	x17, [x16, #2192]
   12408:	91224210 	add	x16, x16, #0x890
   1240c:	d61f0220 	br	x17

0000000000012410 <_ZNSt6thread20hardware_concurrencyEv@plt>:
   12410:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12414:	f9444e11 	ldr	x17, [x16, #2200]
   12418:	91226210 	add	x16, x16, #0x898
   1241c:	d61f0220 	br	x17

0000000000012420 <_ZNSt6thread4joinEv@plt>:
   12420:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12424:	f9445211 	ldr	x17, [x16, #2208]
   12428:	91228210 	add	x16, x16, #0x8a0
   1242c:	d61f0220 	br	x17

0000000000012430 <_ZNSt6chrono3_V212system_clock3nowEv@plt>:
   12430:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12434:	f9445611 	ldr	x17, [x16, #2216]
   12438:	9122a210 	add	x16, x16, #0x8a8
   1243c:	d61f0220 	br	x17

0000000000012440 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@plt>:
   12440:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12444:	f9445a11 	ldr	x17, [x16, #2224]
   12448:	9122c210 	add	x16, x16, #0x8b0
   1244c:	d61f0220 	br	x17

0000000000012450 <_ZNSolsEi@plt>:
   12450:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12454:	f9445e11 	ldr	x17, [x16, #2232]
   12458:	9122e210 	add	x16, x16, #0x8b8
   1245c:	d61f0220 	br	x17

0000000000012460 <printf@plt>:
   12460:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12464:	f9446211 	ldr	x17, [x16, #2240]
   12468:	91230210 	add	x16, x16, #0x8c0
   1246c:	d61f0220 	br	x17

0000000000012470 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>:
   12470:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12474:	f9446611 	ldr	x17, [x16, #2248]
   12478:	91232210 	add	x16, x16, #0x8c8
   1247c:	d61f0220 	br	x17

0000000000012480 <_ZSt20__throw_length_errorPKc@plt>:
   12480:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12484:	f9446a11 	ldr	x17, [x16, #2256]
   12488:	91234210 	add	x16, x16, #0x8d0
   1248c:	d61f0220 	br	x17

0000000000012490 <__cxa_begin_catch@plt>:
   12490:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12494:	f9446e11 	ldr	x17, [x16, #2264]
   12498:	91236210 	add	x16, x16, #0x8d8
   1249c:	d61f0220 	br	x17

00000000000124a0 <_ZSt9terminatev@plt>:
   124a0:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   124a4:	f9447211 	ldr	x17, [x16, #2272]
   124a8:	91238210 	add	x16, x16, #0x8e0
   124ac:	d61f0220 	br	x17

00000000000124b0 <_Znwm@plt>:
   124b0:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   124b4:	f9447611 	ldr	x17, [x16, #2280]
   124b8:	9123a210 	add	x16, x16, #0x8e8
   124bc:	d61f0220 	br	x17

00000000000124c0 <_ZdlPv@plt>:
   124c0:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   124c4:	f9447a11 	ldr	x17, [x16, #2288]
   124c8:	9123c210 	add	x16, x16, #0x8f0
   124cc:	d61f0220 	br	x17

00000000000124d0 <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>:
   124d0:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   124d4:	f9447e11 	ldr	x17, [x16, #2296]
   124d8:	9123e210 	add	x16, x16, #0x8f8
   124dc:	d61f0220 	br	x17

00000000000124e0 <__cxa_rethrow@plt>:
   124e0:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   124e4:	f9448211 	ldr	x17, [x16, #2304]
   124e8:	91240210 	add	x16, x16, #0x900
   124ec:	d61f0220 	br	x17

00000000000124f0 <__cxa_end_catch@plt>:
   124f0:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   124f4:	f9448611 	ldr	x17, [x16, #2312]
   124f8:	91242210 	add	x16, x16, #0x908
   124fc:	d61f0220 	br	x17

0000000000012500 <_ZNSt6thread6_StateD2Ev@plt>:
   12500:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12504:	f9448a11 	ldr	x17, [x16, #2320]
   12508:	91244210 	add	x16, x16, #0x910
   1250c:	d61f0220 	br	x17

0000000000012510 <_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev@plt>:
   12510:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12514:	f9448e11 	ldr	x17, [x16, #2328]
   12518:	91246210 	add	x16, x16, #0x918
   1251c:	d61f0220 	br	x17

0000000000012520 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>:
   12520:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12524:	f9449211 	ldr	x17, [x16, #2336]
   12528:	91248210 	add	x16, x16, #0x920
   1252c:	d61f0220 	br	x17

0000000000012530 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>:
   12530:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12534:	f9449611 	ldr	x17, [x16, #2344]
   12538:	9124a210 	add	x16, x16, #0x928
   1253c:	d61f0220 	br	x17

0000000000012540 <_ZNSt8ios_baseD2Ev@plt>:
   12540:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12544:	f9449a11 	ldr	x17, [x16, #2352]
   12548:	9124c210 	add	x16, x16, #0x930
   1254c:	d61f0220 	br	x17

0000000000012550 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
   12550:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12554:	f9449e11 	ldr	x17, [x16, #2360]
   12558:	9124e210 	add	x16, x16, #0x938
   1255c:	d61f0220 	br	x17

0000000000012560 <_Unwind_Resume@plt>:
   12560:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12564:	f944a211 	ldr	x17, [x16, #2368]
   12568:	91250210 	add	x16, x16, #0x940
   1256c:	d61f0220 	br	x17

0000000000012570 <__getauxval@plt>:
   12570:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12574:	f944a611 	ldr	x17, [x16, #2376]
   12578:	91252210 	add	x16, x16, #0x948
   1257c:	d61f0220 	br	x17

0000000000012580 <memset@plt>:
   12580:	90000110 	adrp	x16, 32000 <_DYNAMIC+0xf9d0>
   12584:	f944aa11 	ldr	x17, [x16, #2384]
   12588:	91254210 	add	x16, x16, #0x950
   1258c:	d61f0220 	br	x17
