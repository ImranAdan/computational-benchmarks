
/bench/bench:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000011480 <_start>:
   11480:	d503201f 	nop
   11484:	d280001d 	mov	x29, #0x0                   	// #0
   11488:	d280001e 	mov	x30, #0x0                   	// #0
   1148c:	aa0003e5 	mov	x5, x0
   11490:	f94003e1 	ldr	x1, [sp]
   11494:	910023e2 	add	x2, sp, #0x8
   11498:	910003e6 	mov	x6, sp
   1149c:	d503201f 	nop
   114a0:	100010e0 	adr	x0, 116bc <main>
   114a4:	d2800003 	mov	x3, #0x0                   	// #0
   114a8:	d2800004 	mov	x4, #0x0                   	// #0
   114ac:	94000241 	bl	11db0 <__libc_start_main@plt>
   114b0:	9400023c 	bl	11da0 <abort@plt>

00000000000114b4 <call_weak_fn>:
   114b4:	b0000080 	adrp	x0, 22000 <_DYNAMIC+0x38>
   114b8:	f940d000 	ldr	x0, [x0, #416]
   114bc:	b4000040 	cbz	x0, 114c4 <call_weak_fn+0x10>
   114c0:	14000240 	b	11dc0 <__gmon_start__@plt>
   114c4:	d65f03c0 	ret
	...

00000000000114d0 <deregister_tm_clones>:
   114d0:	d503201f 	nop
   114d4:	101068a0 	adr	x0, 321e8 <__TMC_END__>
   114d8:	d503201f 	nop
   114dc:	10106861 	adr	x1, 321e8 <__TMC_END__>
   114e0:	eb00003f 	cmp	x1, x0
   114e4:	540000c0 	b.eq	114fc <deregister_tm_clones+0x2c>  // b.none
   114e8:	b0000081 	adrp	x1, 22000 <_DYNAMIC+0x38>
   114ec:	f940d421 	ldr	x1, [x1, #424]
   114f0:	b4000061 	cbz	x1, 114fc <deregister_tm_clones+0x2c>
   114f4:	aa0103f0 	mov	x16, x1
   114f8:	d61f0200 	br	x16
   114fc:	d65f03c0 	ret

0000000000011500 <register_tm_clones>:
   11500:	d503201f 	nop
   11504:	10106720 	adr	x0, 321e8 <__TMC_END__>
   11508:	d503201f 	nop
   1150c:	101066e1 	adr	x1, 321e8 <__TMC_END__>
   11510:	cb000021 	sub	x1, x1, x0
   11514:	d37ffc22 	lsr	x2, x1, #63
   11518:	8b810c41 	add	x1, x2, x1, asr #3
   1151c:	9341fc21 	asr	x1, x1, #1
   11520:	b40000c1 	cbz	x1, 11538 <register_tm_clones+0x38>
   11524:	b0000082 	adrp	x2, 22000 <_DYNAMIC+0x38>
   11528:	f940d842 	ldr	x2, [x2, #432]
   1152c:	b4000062 	cbz	x2, 11538 <register_tm_clones+0x38>
   11530:	aa0203f0 	mov	x16, x2
   11534:	d61f0200 	br	x16
   11538:	d65f03c0 	ret
   1153c:	d503201f 	nop

0000000000011540 <__do_global_dtors_aux>:
   11540:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   11544:	910003fd 	mov	x29, sp
   11548:	f9000bf3 	str	x19, [sp, #16]
   1154c:	b0000113 	adrp	x19, 32000 <_DYNAMIC+0x10038>
   11550:	394ba260 	ldrb	w0, [x19, #744]
   11554:	35000140 	cbnz	w0, 1157c <__do_global_dtors_aux+0x3c>
   11558:	b0000080 	adrp	x0, 22000 <_DYNAMIC+0x38>
   1155c:	f940dc00 	ldr	x0, [x0, #440]
   11560:	b4000080 	cbz	x0, 11570 <__do_global_dtors_aux+0x30>
   11564:	b0000100 	adrp	x0, 32000 <_DYNAMIC+0x10038>
   11568:	f940ec00 	ldr	x0, [x0, #472]
   1156c:	94000219 	bl	11dd0 <__cxa_finalize@plt>
   11570:	97ffffd8 	bl	114d0 <deregister_tm_clones>
   11574:	52800020 	mov	w0, #0x1                   	// #1
   11578:	390ba260 	strb	w0, [x19, #744]
   1157c:	f9400bf3 	ldr	x19, [sp, #16]
   11580:	a8c27bfd 	ldp	x29, x30, [sp], #32
   11584:	d65f03c0 	ret
   11588:	d503201f 	nop
   1158c:	d503201f 	nop

0000000000011590 <frame_dummy>:
   11590:	17ffffdc 	b	11500 <register_tm_clones>

0000000000011594 <_GLOBAL__sub_I_bench.cpp>:
   11594:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   11598:	f9000bf3 	str	x19, [sp, #16]
   1159c:	910003fd 	mov	x29, sp
   115a0:	d503201f 	nop
   115a4:	30106a33 	adr	x19, 322e9 <_ZStL8__ioinit>
   115a8:	aa1303e0 	mov	x0, x19
   115ac:	9400020d 	bl	11de0 <_ZNSt8ios_base4InitC1Ev@plt>
   115b0:	b0000080 	adrp	x0, 22000 <_DYNAMIC+0x38>
   115b4:	aa1303e1 	mov	x1, x19
   115b8:	d503201f 	nop
   115bc:	101060e2 	adr	x2, 321d8 <__dso_handle>
   115c0:	f940e000 	ldr	x0, [x0, #448]
   115c4:	f9400bf3 	ldr	x19, [sp, #16]
   115c8:	a8c27bfd 	ldp	x29, x30, [sp], #32
   115cc:	14000209 	b	11df0 <__cxa_atexit@plt>

00000000000115d0 <_Z11render_rowsiiiijddddPj>:
   115d0:	6b01001f 	cmp	w0, w1
   115d4:	5400060a 	b.ge	11694 <_Z11render_rowsiiiijddddPj+0xc4>  // b.tcont
   115d8:	7100045f 	cmp	w2, #0x1
   115dc:	540005cb 	b.lt	11694 <_Z11render_rowsiiiijddddPj+0xc4>  // b.tstop
   115e0:	340005c4 	cbz	w4, 11698 <_Z11render_rowsiiiijddddPj+0xc8>
   115e4:	1e620064 	scvtf	d4, w3
   115e8:	1e623863 	fsub	d3, d3, d2
   115ec:	1e620045 	scvtf	d5, w2
   115f0:	1e603821 	fsub	d1, d1, d0
   115f4:	93407c08 	sxtw	x8, w0
   115f8:	2a0203e9 	mov	w9, w2
   115fc:	93407c2a 	sxtw	x10, w1
   11600:	1e621006 	fmov	d6, #4.000000000000000000e+00
   11604:	14000004 	b	11614 <_Z11render_rowsiiiijddddPj+0x44>
   11608:	91000508 	add	x8, x8, #0x1
   1160c:	eb0a011f 	cmp	x8, x10
   11610:	54000420 	b.eq	11694 <_Z11render_rowsiiiijddddPj+0xc4>  // b.none
   11614:	1e620107 	scvtf	d7, w8
   11618:	9b097d0b 	mul	x11, x8, x9
   1161c:	aa1f03ec 	mov	x12, xzr
   11620:	1e6418e7 	fdiv	d7, d7, d4
   11624:	1f4308e7 	fmadd	d7, d7, d3, d2
   11628:	14000006 	b	11640 <_Z11render_rowsiiiijddddPj+0x70>
   1162c:	8b0b018e 	add	x14, x12, x11
   11630:	9100058c 	add	x12, x12, #0x1
   11634:	eb09019f 	cmp	x12, x9
   11638:	b82e78ad 	str	w13, [x5, x14, lsl #2]
   1163c:	54fffe60 	b.eq	11608 <_Z11render_rowsiiiijddddPj+0x38>  // b.none
   11640:	1e620190 	scvtf	d16, w12
   11644:	2f00e412 	movi	d18, #0x0
   11648:	2f00e411 	movi	d17, #0x0
   1164c:	2a1f03ed 	mov	w13, wzr
   11650:	1e651a10 	fdiv	d16, d16, d5
   11654:	1f410210 	fmadd	d16, d16, d1, d0
   11658:	1e720a53 	fmul	d19, d18, d18
   1165c:	1e710a34 	fmul	d20, d17, d17
   11660:	1e742a75 	fadd	d21, d19, d20
   11664:	1e6622a0 	fcmp	d21, d6
   11668:	54fffe2c 	b.gt	1162c <_Z11render_rowsiiiijddddPj+0x5c>
   1166c:	1e743a73 	fsub	d19, d19, d20
   11670:	1e722a52 	fadd	d18, d18, d18
   11674:	110005ad 	add	w13, w13, #0x1
   11678:	6b0d009f 	cmp	w4, w13
   1167c:	1e732a13 	fadd	d19, d16, d19
   11680:	1f511e51 	fmadd	d17, d18, d17, d7
   11684:	1e604272 	fmov	d18, d19
   11688:	54fffe81 	b.ne	11658 <_Z11render_rowsiiiijddddPj+0x88>  // b.any
   1168c:	2a0403ed 	mov	w13, w4
   11690:	17ffffe7 	b	1162c <_Z11render_rowsiiiijddddPj+0x5c>
   11694:	d65f03c0 	ret
   11698:	2a2003e8 	mvn	w8, w0
   1169c:	1b007c49 	mul	w9, w2, w0
   116a0:	0b010108 	add	w8, w8, w1
   116a4:	2a0203ea 	mov	w10, w2
   116a8:	2a1f03e1 	mov	w1, wzr
   116ac:	9ba82848 	umaddl	x8, w2, w8, x10
   116b0:	8b29c8a0 	add	x0, x5, w9, sxtw #2
   116b4:	d37ef502 	lsl	x2, x8, #2
   116b8:	1400022a 	b	11f60 <memset@plt>

00000000000116bc <main>:
   116bc:	fc190fe8 	str	d8, [sp, #-112]!
   116c0:	a9017bfd 	stp	x29, x30, [sp, #16]
   116c4:	910043fd 	add	x29, sp, #0x10
   116c8:	a9026ffc 	stp	x28, x27, [sp, #32]
   116cc:	a90367fa 	stp	x26, x25, [sp, #48]
   116d0:	a9045ff8 	stp	x24, x23, [sp, #64]
   116d4:	a90557f6 	stp	x22, x21, [sp, #80]
   116d8:	a9064ff4 	stp	x20, x19, [sp, #96]
   116dc:	d10983ff 	sub	sp, sp, #0x260
   116e0:	52920000 	mov	w0, #0x9000                	// #36864
   116e4:	72a07a00 	movk	w0, #0x3d0, lsl #16
   116e8:	940001ee 	bl	11ea0 <_Znwm@plt>
   116ec:	52920002 	mov	w2, #0x9000                	// #36864
   116f0:	2a1f03e1 	mov	w1, wzr
   116f4:	72a07a02 	movk	w2, #0x3d0, lsl #16
   116f8:	f81f83a0 	stur	x0, [x29, #-8]
   116fc:	94000219 	bl	11f60 <memset@plt>
   11700:	940001c0 	bl	11e00 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
   11704:	f9000be0 	str	x0, [sp, #16]
   11708:	940001c2 	bl	11e10 <_ZNSt6thread20hardware_concurrencyEv@plt>
   1170c:	7100001f 	cmp	w0, #0x0
   11710:	52800049 	mov	w9, #0x2                   	// #2
   11714:	1a80012b 	csel	w11, w9, w0, eq  // eq = none
   11718:	5281f40c 	mov	w12, #0xfa0                 	// #4000
   1171c:	90ffff89 	adrp	x9, 1000 <__abi_tag+0xd3c>
   11720:	90ffff8a 	adrp	x10, 1000 <__abi_tag+0xd3c>
   11724:	1acb098c 	udiv	w12, w12, w11
   11728:	aa1f03f8 	mov	x24, xzr
   1172c:	aa1f03f5 	mov	x21, xzr
   11730:	aa1f03f9 	mov	x25, xzr
   11734:	3dc03d20 	ldr	q0, [x9, #240]
   11738:	90ffff89 	adrp	x9, 1000 <__abi_tag+0xd3c>
   1173c:	2a1f03e8 	mov	w8, wzr
   11740:	b9001feb 	str	w11, [sp, #28]
   11744:	5100056b 	sub	w11, w11, #0x1
   11748:	3d800fe0 	str	q0, [sp, #48]
   1174c:	3dc04140 	ldr	q0, [x10, #256]
   11750:	fd408928 	ldr	d8, [x9, #272]
   11754:	290933eb 	stp	w11, w12, [sp, #72]
   11758:	3d800be0 	str	q0, [sp, #32]
   1175c:	14000007 	b	11778 <main+0xbc>
   11760:	aa1503fc 	mov	x28, x21
   11764:	b9401fe9 	ldr	w9, [sp, #28]
   11768:	91002395 	add	x21, x28, #0x8
   1176c:	2a1303e8 	mov	w8, w19
   11770:	6b09027f 	cmp	w19, w9
   11774:	54001080 	b.eq	11984 <main+0x2c8>  // b.none
   11778:	b9404fea 	ldr	w10, [sp, #76]
   1177c:	11000513 	add	w19, w8, #0x1
   11780:	1b0a7e69 	mul	w9, w19, w10
   11784:	1b0a7d1c 	mul	w28, w8, w10
   11788:	b9404bea 	ldr	w10, [sp, #72]
   1178c:	6b0a011f 	cmp	w8, w10
   11790:	5281f408 	mov	w8, #0xfa0                 	// #4000
   11794:	1a890116 	csel	w22, w8, w9, eq  // eq = none
   11798:	eb1802bf 	cmp	x21, x24
   1179c:	540003c0 	b.eq	11814 <main+0x158>  // b.none
   117a0:	aa1903f4 	mov	x20, x25
   117a4:	f90002bf 	str	xzr, [x21]
   117a8:	52800a00 	mov	w0, #0x50                  	// #80
   117ac:	940001bd 	bl	11ea0 <_Znwm@plt>
   117b0:	90000088 	adrp	x8, 21000 <memset@plt+0xf0a0>
   117b4:	ad4107e0 	ldp	q0, q1, [sp, #32]
   117b8:	913e6109 	add	x9, x8, #0xf98
   117bc:	f85f83a8 	ldur	x8, [x29, #-8]
   117c0:	fd001808 	str	d8, [x0, #48]
   117c4:	b900401c 	str	w28, [x0, #64]
   117c8:	a9002009 	stp	x9, x8, [x0]
   117cc:	5281f408 	mov	w8, #0xfa0                 	// #4000
   117d0:	ad008001 	stp	q1, q0, [x0, #16]
   117d4:	f9002be0 	str	x0, [sp, #80]
   117d8:	29075808 	stp	w8, w22, [x0, #56]
   117dc:	d503201f 	nop
   117e0:	10ffef88 	adr	x8, 115d0 <_Z11render_rowsiiiijddddPj>
   117e4:	f9002408 	str	x8, [x0, #72]
   117e8:	910143e1 	add	x1, sp, #0x50
   117ec:	aa1503e0 	mov	x0, x21
   117f0:	aa1f03e2 	mov	x2, xzr
   117f4:	940001b3 	bl	11ec0 <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>
   117f8:	f9402be0 	ldr	x0, [sp, #80]
   117fc:	aa1403f9 	mov	x25, x20
   11800:	b4fffb00 	cbz	x0, 11760 <main+0xa4>
   11804:	f9400008 	ldr	x8, [x0]
   11808:	f9400508 	ldr	x8, [x8, #8]
   1180c:	d63f0100 	blr	x8
   11810:	17ffffd4 	b	11760 <main+0xa4>
   11814:	aa1903f4 	mov	x20, x25
   11818:	cb19031a 	sub	x26, x24, x25
   1181c:	b27defe8 	mov	x8, #0x7ffffffffffffff8    	// #9223372036854775800
   11820:	eb08035f 	cmp	x26, x8
   11824:	54001da0 	b.eq	11bd8 <main+0x51c>  // b.none
   11828:	9343ff59 	asr	x25, x26, #3
   1182c:	f100035f 	cmp	x26, #0x0
   11830:	9a9f1728 	csinc	x8, x25, xzr, ne  // ne = any
   11834:	ab190108 	adds	x8, x8, x25
   11838:	d37cfd09 	lsr	x9, x8, #60
   1183c:	1a9f37ea 	cset	w10, cs  // cs = hs, nlast
   11840:	f100013f 	cmp	x9, #0x0
   11844:	1a9f07e9 	cset	w9, ne  // ne = any
   11848:	2a090149 	orr	w9, w10, w9
   1184c:	7100013f 	cmp	w9, #0x0
   11850:	92fe0009 	mov	x9, #0xfffffffffffffff     	// #1152921504606846975
   11854:	9a88113b 	csel	x27, x9, x8, ne  // ne = any
   11858:	b40000db 	cbz	x27, 11870 <main+0x1b4>
   1185c:	d37df360 	lsl	x0, x27, #3
   11860:	aa1803f5 	mov	x21, x24
   11864:	9400018f 	bl	11ea0 <_Znwm@plt>
   11868:	aa0003f7 	mov	x23, x0
   1186c:	14000002 	b	11874 <main+0x1b8>
   11870:	aa1f03f7 	mov	x23, xzr
   11874:	8b190ef5 	add	x21, x23, x25, lsl #3
   11878:	f90002bf 	str	xzr, [x21]
   1187c:	52800a00 	mov	w0, #0x50                  	// #80
   11880:	94000188 	bl	11ea0 <_Znwm@plt>
   11884:	90000088 	adrp	x8, 21000 <memset@plt+0xf0a0>
   11888:	ad4107e0 	ldp	q0, q1, [sp, #32]
   1188c:	913e6109 	add	x9, x8, #0xf98
   11890:	f85f83a8 	ldur	x8, [x29, #-8]
   11894:	fd001808 	str	d8, [x0, #48]
   11898:	b900401c 	str	w28, [x0, #64]
   1189c:	a9002009 	stp	x9, x8, [x0]
   118a0:	5281f408 	mov	w8, #0xfa0                 	// #4000
   118a4:	ad008001 	stp	q1, q0, [x0, #16]
   118a8:	f9002be0 	str	x0, [sp, #80]
   118ac:	29075808 	stp	w8, w22, [x0, #56]
   118b0:	d503201f 	nop
   118b4:	10ffe8e8 	adr	x8, 115d0 <_Z11render_rowsiiiijddddPj>
   118b8:	f9002408 	str	x8, [x0, #72]
   118bc:	910143e1 	add	x1, sp, #0x50
   118c0:	aa1503e0 	mov	x0, x21
   118c4:	aa1f03e2 	mov	x2, xzr
   118c8:	aa1403f5 	mov	x21, x20
   118cc:	9400017d 	bl	11ec0 <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>
   118d0:	f9402be0 	ldr	x0, [sp, #80]
   118d4:	b4000080 	cbz	x0, 118e4 <main+0x228>
   118d8:	f9400008 	ldr	x8, [x0]
   118dc:	f9400508 	ldr	x8, [x8, #8]
   118e0:	d63f0100 	blr	x8
   118e4:	6f00e402 	movi	v2.2d, #0x0
   118e8:	aa1703fc 	mov	x28, x23
   118ec:	eb1802bf 	cmp	x21, x24
   118f0:	54000360 	b.eq	1195c <main+0x2a0>  // b.none
   118f4:	d1002349 	sub	x9, x26, #0x8
   118f8:	aa1703fc 	mov	x28, x23
   118fc:	aa1503e8 	mov	x8, x21
   11900:	f100613f 	cmp	x9, #0x18
   11904:	54000223 	b.cc	11948 <main+0x28c>  // b.lo, b.ul, b.last
   11908:	d343fd28 	lsr	x8, x9, #3
   1190c:	910042ea 	add	x10, x23, #0x10
   11910:	91000509 	add	x9, x8, #0x1
   11914:	aa1503eb 	mov	x11, x21
   11918:	927eed28 	and	x8, x9, #0x3ffffffffffffffc
   1191c:	aa0803ec 	mov	x12, x8
   11920:	8b080efc 	add	x28, x23, x8, lsl #3
   11924:	ad400560 	ldp	q0, q1, [x11]
   11928:	f100118c 	subs	x12, x12, #0x4
   1192c:	ad3f8540 	stp	q0, q1, [x10, #-16]
   11930:	9100814a 	add	x10, x10, #0x20
   11934:	ac810962 	stp	q2, q2, [x11], #32
   11938:	54ffff61 	b.ne	11924 <main+0x268>  // b.any
   1193c:	eb08013f 	cmp	x9, x8
   11940:	54000100 	b.eq	11960 <main+0x2a4>  // b.none
   11944:	8b080ea8 	add	x8, x21, x8, lsl #3
   11948:	f9400109 	ldr	x9, [x8]
   1194c:	f8008789 	str	x9, [x28], #8
   11950:	f800851f 	str	xzr, [x8], #8
   11954:	eb18011f 	cmp	x8, x24
   11958:	54ffff81 	b.ne	11948 <main+0x28c>  // b.any
   1195c:	b4000075 	cbz	x21, 11968 <main+0x2ac>
   11960:	aa1503e0 	mov	x0, x21
   11964:	94000153 	bl	11eb0 <_ZdlPv@plt>
   11968:	8b1b0ef8 	add	x24, x23, x27, lsl #3
   1196c:	aa1703f9 	mov	x25, x23
   11970:	b9401fe9 	ldr	w9, [sp, #28]
   11974:	91002395 	add	x21, x28, #0x8
   11978:	2a1303e8 	mov	w8, w19
   1197c:	6b09027f 	cmp	w19, w9
   11980:	54ffefc1 	b.ne	11778 <main+0xbc>  // b.any
   11984:	eb15033f 	cmp	x25, x21
   11988:	54000100 	b.eq	119a8 <main+0x2ec>  // b.none
   1198c:	aa1903f7 	mov	x23, x25
   11990:	aa1703e0 	mov	x0, x23
   11994:	94000123 	bl	11e20 <_ZNSt6thread4joinEv@plt>
   11998:	910022e8 	add	x8, x23, #0x8
   1199c:	eb1c02ff 	cmp	x23, x28
   119a0:	aa0803f7 	mov	x23, x8
   119a4:	54ffff61 	b.ne	11990 <main+0x2d4>  // b.any
   119a8:	94000116 	bl	11e00 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
   119ac:	aa0003f7 	mov	x23, x0
   119b0:	90ffff81 	adrp	x1, 1000 <__abi_tag+0xd3c>
   119b4:	910143e0 	add	x0, sp, #0x50
   119b8:	91051c21 	add	x1, x1, #0x147
   119bc:	52800202 	mov	w2, #0x10                  	// #16
   119c0:	f90007f9 	str	x25, [sp, #8]
   119c4:	9400011b 	bl	11e30 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@plt>
   119c8:	90ffff81 	adrp	x1, 1000 <__abi_tag+0xd3c>
   119cc:	910143e0 	add	x0, sp, #0x50
   119d0:	91046821 	add	x1, x1, #0x11a
   119d4:	52800062 	mov	w2, #0x3                   	// #3
   119d8:	9400015a 	bl	11f40 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
   119dc:	910143e0 	add	x0, sp, #0x50
   119e0:	5281f401 	mov	w1, #0xfa0                 	// #4000
   119e4:	94000117 	bl	11e40 <_ZNSolsEi@plt>
   119e8:	aa0003f8 	mov	x24, x0
   119ec:	90ffff81 	adrp	x1, 1000 <__abi_tag+0xd3c>
   119f0:	52800022 	mov	w2, #0x1                   	// #1
   119f4:	91046021 	add	x1, x1, #0x118
   119f8:	94000152 	bl	11f40 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
   119fc:	aa1803e0 	mov	x0, x24
   11a00:	5281f401 	mov	w1, #0xfa0                 	// #4000
   11a04:	9400010f 	bl	11e40 <_ZNSolsEi@plt>
   11a08:	90ffff81 	adrp	x1, 1000 <__abi_tag+0xd3c>
   11a0c:	528000a2 	mov	w2, #0x5                   	// #5
   11a10:	91055821 	add	x1, x1, #0x156
   11a14:	9400014b 	bl	11f40 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
   11a18:	f9400be8 	ldr	x8, [sp, #16]
   11a1c:	d2d09009 	mov	x9, #0x848000000000        	// #145685290680320
   11a20:	f2e825c9 	movk	x9, #0x412e, lsl #48
   11a24:	90ffff96 	adrp	x22, 1000 <__abi_tag+0xd3c>
   11a28:	52848014 	mov	w20, #0x2400                	// #9216
   11a2c:	90ffff98 	adrp	x24, 1000 <__abi_tag+0xd3c>
   11a30:	cb0802e8 	sub	x8, x23, x8
   11a34:	90ffff97 	adrp	x23, 1000 <__abi_tag+0xd3c>
   11a38:	9e670121 	fmov	d1, x9
   11a3c:	90ffff99 	adrp	x25, 1000 <__abi_tag+0xd3c>
   11a40:	aa1f03f3 	mov	x19, xzr
   11a44:	9104fad6 	add	x22, x22, #0x13e
   11a48:	9e620100 	scvtf	d0, x8
   11a4c:	910516f7 	add	x23, x23, #0x145
   11a50:	72a01e94 	movk	w20, #0xf4, lsl #16
   11a54:	91046318 	add	x24, x24, #0x118
   11a58:	91047b39 	add	x25, x25, #0x11e
   11a5c:	1e611808 	fdiv	d8, d0, d1
   11a60:	14000004 	b	11a70 <main+0x3b4>
   11a64:	91000673 	add	x19, x19, #0x1
   11a68:	eb14027f 	cmp	x19, x20
   11a6c:	540003e0 	b.eq	11ae8 <main+0x42c>  // b.none
   11a70:	f85f83a8 	ldur	x8, [x29, #-8]
   11a74:	b8737908 	ldr	w8, [x8, x19, lsl #2]
   11a78:	710fa11f 	cmp	w8, #0x3e8
   11a7c:	540000c1 	b.ne	11a94 <main+0x3d8>  // b.any
   11a80:	910143e0 	add	x0, sp, #0x50
   11a84:	aa1603e1 	mov	x1, x22
   11a88:	528000c2 	mov	w2, #0x6                   	// #6
   11a8c:	9400012d 	bl	11f40 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
   11a90:	1400000f 	b	11acc <main+0x410>
   11a94:	12001d1a 	and	w26, w8, #0xff
   11a98:	910143e0 	add	x0, sp, #0x50
   11a9c:	2a1a03e1 	mov	w1, w26
   11aa0:	940000e8 	bl	11e40 <_ZNSolsEi@plt>
   11aa4:	aa0003fb 	mov	x27, x0
   11aa8:	aa1803e1 	mov	x1, x24
   11aac:	52800022 	mov	w2, #0x1                   	// #1
   11ab0:	94000124 	bl	11f40 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
   11ab4:	aa1b03e0 	mov	x0, x27
   11ab8:	2a1a03e1 	mov	w1, w26
   11abc:	940000e1 	bl	11e40 <_ZNSolsEi@plt>
   11ac0:	aa1903e1 	mov	x1, x25
   11ac4:	528000a2 	mov	w2, #0x5                   	// #5
   11ac8:	9400011e 	bl	11f40 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
   11acc:	f2400e7f 	tst	x19, #0xf
   11ad0:	54fffca1 	b.ne	11a64 <main+0x3a8>  // b.any
   11ad4:	910143e0 	add	x0, sp, #0x50
   11ad8:	aa1703e1 	mov	x1, x23
   11adc:	52800022 	mov	w2, #0x1                   	// #1
   11ae0:	94000118 	bl	11f40 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
   11ae4:	17ffffe0 	b	11a64 <main+0x3a8>
   11ae8:	910143e8 	add	x8, sp, #0x50
   11aec:	91002116 	add	x22, x8, #0x8
   11af0:	aa1603e0 	mov	x0, x22
   11af4:	9400010b 	bl	11f20 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
   11af8:	b5000100 	cbnz	x0, 11b18 <main+0x45c>
   11afc:	f9402be8 	ldr	x8, [sp, #80]
   11b00:	910143e9 	add	x9, sp, #0x50
   11b04:	f85e8108 	ldur	x8, [x8, #-24]
   11b08:	8b080120 	add	x0, x9, x8
   11b0c:	b9402008 	ldr	w8, [x0, #32]
   11b10:	321e0101 	orr	w1, w8, #0x4
   11b14:	940000ff 	bl	11f10 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
   11b18:	d2c80008 	mov	x8, #0x400000000000        	// #70368744177664
   11b1c:	90ffff80 	adrp	x0, 1000 <__abi_tag+0xd3c>
   11b20:	f2e811e8 	movk	x8, #0x408f, lsl #48
   11b24:	91057000 	add	x0, x0, #0x15c
   11b28:	9e670100 	fmov	d0, x8
   11b2c:	d2d09008 	mov	x8, #0x848000000000        	// #145685290680320
   11b30:	f2e82dc8 	movk	x8, #0x416e, lsl #48
   11b34:	1e600900 	fmul	d0, d8, d0
   11b38:	9e670101 	fmov	d1, x8
   11b3c:	1e601821 	fdiv	d1, d1, d0
   11b40:	1e604100 	fmov	d0, d8
   11b44:	940000c3 	bl	11e50 <printf@plt>
   11b48:	b0000088 	adrp	x8, 22000 <_DYNAMIC+0x38>
   11b4c:	aa1603e0 	mov	x0, x22
   11b50:	910143f3 	add	x19, sp, #0x50
   11b54:	f940e508 	ldr	x8, [x8, #456]
   11b58:	f9400109 	ldr	x9, [x8]
   11b5c:	f9400d08 	ldr	x8, [x8, #24]
   11b60:	f9002be9 	str	x9, [sp, #80]
   11b64:	f85e8129 	ldur	x9, [x9, #-24]
   11b68:	f8296a68 	str	x8, [x19, x9]
   11b6c:	940000e5 	bl	11f00 <_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev@plt>
   11b70:	91040260 	add	x0, x19, #0x100
   11b74:	940000ef 	bl	11f30 <_ZNSt8ios_baseD2Ev@plt>
   11b78:	f94007e0 	ldr	x0, [sp, #8]
   11b7c:	eb15001f 	cmp	x0, x21
   11b80:	540000e0 	b.eq	11b9c <main+0x4e0>  // b.none
   11b84:	d1002008 	sub	x8, x0, #0x8
   11b88:	f9400509 	ldr	x9, [x8, #8]
   11b8c:	b5000249 	cbnz	x9, 11bd4 <main+0x518>
   11b90:	91002108 	add	x8, x8, #0x8
   11b94:	eb1c011f 	cmp	x8, x28
   11b98:	54ffff81 	b.ne	11b88 <main+0x4cc>  // b.any
   11b9c:	b4000040 	cbz	x0, 11ba4 <main+0x4e8>
   11ba0:	940000c4 	bl	11eb0 <_ZdlPv@plt>
   11ba4:	f85f83a0 	ldur	x0, [x29, #-8]
   11ba8:	940000c2 	bl	11eb0 <_ZdlPv@plt>
   11bac:	2a1f03e0 	mov	w0, wzr
   11bb0:	910983ff 	add	sp, sp, #0x260
   11bb4:	a9464ff4 	ldp	x20, x19, [sp, #96]
   11bb8:	a94557f6 	ldp	x22, x21, [sp, #80]
   11bbc:	a9445ff8 	ldp	x24, x23, [sp, #64]
   11bc0:	a94367fa 	ldp	x26, x25, [sp, #48]
   11bc4:	a9426ffc 	ldp	x28, x27, [sp, #32]
   11bc8:	a9417bfd 	ldp	x29, x30, [sp, #16]
   11bcc:	fc4707e8 	ldr	d8, [sp], #112
   11bd0:	d65f03c0 	ret
   11bd4:	940000af 	bl	11e90 <_ZSt9terminatev@plt>
   11bd8:	90ffff80 	adrp	x0, 1000 <__abi_tag+0xd3c>
   11bdc:	91049000 	add	x0, x0, #0x124
   11be0:	940000a4 	bl	11e70 <_ZSt20__throw_length_errorPKc@plt>
   11be4:	aa0003f6 	mov	x22, x0
   11be8:	1400002c 	b	11c98 <main+0x5dc>
   11bec:	14000028 	b	11c8c <main+0x5d0>
   11bf0:	f9402be8 	ldr	x8, [sp, #80]
   11bf4:	aa0003f5 	mov	x21, x0
   11bf8:	b40000e8 	cbz	x8, 11c14 <main+0x558>
   11bfc:	f9400109 	ldr	x9, [x8]
   11c00:	aa0803e0 	mov	x0, x8
   11c04:	f9400529 	ldr	x9, [x9, #8]
   11c08:	d63f0120 	blr	x9
   11c0c:	14000002 	b	11c14 <main+0x558>
   11c10:	aa0003f5 	mov	x21, x0
   11c14:	aa1503e0 	mov	x0, x21
   11c18:	9400009a 	bl	11e80 <__cxa_begin_catch@plt>
   11c1c:	aa1703e0 	mov	x0, x23
   11c20:	940000a4 	bl	11eb0 <_ZdlPv@plt>
   11c24:	940000af 	bl	11ee0 <__cxa_rethrow@plt>
   11c28:	aa0003f6 	mov	x22, x0
   11c2c:	14000010 	b	11c6c <main+0x5b0>
   11c30:	aa0003f6 	mov	x22, x0
   11c34:	1400001a 	b	11c9c <main+0x5e0>
   11c38:	f9402be8 	ldr	x8, [sp, #80]
   11c3c:	aa0003f6 	mov	x22, x0
   11c40:	b5000068 	cbnz	x8, 11c4c <main+0x590>
   11c44:	aa1403f9 	mov	x25, x20
   11c48:	14000015 	b	11c9c <main+0x5e0>
   11c4c:	f9400109 	ldr	x9, [x8]
   11c50:	aa0803e0 	mov	x0, x8
   11c54:	f9400529 	ldr	x9, [x9, #8]
   11c58:	d63f0120 	blr	x9
   11c5c:	aa1403f9 	mov	x25, x20
   11c60:	1400000f 	b	11c9c <main+0x5e0>
   11c64:	aa0003f6 	mov	x22, x0
   11c68:	940000a2 	bl	11ef0 <__cxa_end_catch@plt>
   11c6c:	aa1803f5 	mov	x21, x24
   11c70:	aa1403f9 	mov	x25, x20
   11c74:	1400000a 	b	11c9c <main+0x5e0>
   11c78:	9400001f 	bl	11cf4 <__clang_call_terminate>
   11c7c:	aa0003f6 	mov	x22, x0
   11c80:	aa1403f9 	mov	x25, x20
   11c84:	14000006 	b	11c9c <main+0x5e0>
   11c88:	14000001 	b	11c8c <main+0x5d0>
   11c8c:	aa0003f6 	mov	x22, x0
   11c90:	910143e0 	add	x0, sp, #0x50
   11c94:	94000073 	bl	11e60 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>
   11c98:	f94007f9 	ldr	x25, [sp, #8]
   11c9c:	aa1903e0 	mov	x0, x25
   11ca0:	aa1503e1 	mov	x1, x21
   11ca4:	94000005 	bl	11cb8 <_ZNSt6vectorISt6threadSaIS0_EED2Ev>
   11ca8:	f85f83a0 	ldur	x0, [x29, #-8]
   11cac:	94000081 	bl	11eb0 <_ZdlPv@plt>
   11cb0:	aa1603e0 	mov	x0, x22
   11cb4:	940000a7 	bl	11f50 <_Unwind_Resume@plt>

0000000000011cb8 <_ZNSt6vectorISt6threadSaIS0_EED2Ev>:
   11cb8:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   11cbc:	910003fd 	mov	x29, sp
   11cc0:	eb01001f 	cmp	x0, x1
   11cc4:	540000c0 	b.eq	11cdc <_ZNSt6vectorISt6threadSaIS0_EED2Ev+0x24>  // b.none
   11cc8:	aa0003e8 	mov	x8, x0
   11ccc:	f8408509 	ldr	x9, [x8], #8
   11cd0:	b5000109 	cbnz	x9, 11cf0 <_ZNSt6vectorISt6threadSaIS0_EED2Ev+0x38>
   11cd4:	eb01011f 	cmp	x8, x1
   11cd8:	54ffffa1 	b.ne	11ccc <_ZNSt6vectorISt6threadSaIS0_EED2Ev+0x14>  // b.any
   11cdc:	b4000060 	cbz	x0, 11ce8 <_ZNSt6vectorISt6threadSaIS0_EED2Ev+0x30>
   11ce0:	a8c17bfd 	ldp	x29, x30, [sp], #16
   11ce4:	14000073 	b	11eb0 <_ZdlPv@plt>
   11ce8:	a8c17bfd 	ldp	x29, x30, [sp], #16
   11cec:	d65f03c0 	ret
   11cf0:	94000068 	bl	11e90 <_ZSt9terminatev@plt>

0000000000011cf4 <__clang_call_terminate>:
   11cf4:	f81f0ffe 	str	x30, [sp, #-16]!
   11cf8:	94000062 	bl	11e80 <__cxa_begin_catch@plt>
   11cfc:	94000065 	bl	11e90 <_ZSt9terminatev@plt>

0000000000011d00 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviiiijddddPjEiiiijddddS3_EEEEED0Ev>:
   11d00:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   11d04:	f9000bf3 	str	x19, [sp, #16]
   11d08:	910003fd 	mov	x29, sp
   11d0c:	aa0003f3 	mov	x19, x0
   11d10:	94000070 	bl	11ed0 <_ZNSt6thread6_StateD2Ev@plt>
   11d14:	aa1303e0 	mov	x0, x19
   11d18:	f9400bf3 	ldr	x19, [sp, #16]
   11d1c:	a8c27bfd 	ldp	x29, x30, [sp], #32
   11d20:	14000064 	b	11eb0 <_ZdlPv@plt>

0000000000011d24 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviiiijddddPjEiiiijddddS3_EEEEE6_M_runEv>:
   11d24:	2947a001 	ldp	w1, w8, [x0, #60]
   11d28:	6d420001 	ldp	d1, d0, [x0, #32]
   11d2c:	6d410803 	ldp	d3, d2, [x0, #16]
   11d30:	29468803 	ldp	w3, w2, [x0, #52]
   11d34:	f9402406 	ldr	x6, [x0, #72]
   11d38:	b9403004 	ldr	w4, [x0, #48]
   11d3c:	f9400405 	ldr	x5, [x0, #8]
   11d40:	2a0803e0 	mov	w0, w8
   11d44:	d61f00c0 	br	x6

Disassembly of section .init:

0000000000011d48 <_init>:
   11d48:	d503201f 	nop
   11d4c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   11d50:	910003fd 	mov	x29, sp
   11d54:	97fffdd8 	bl	114b4 <call_weak_fn>
   11d58:	a8c17bfd 	ldp	x29, x30, [sp], #16
   11d5c:	d65f03c0 	ret

Disassembly of section .fini:

0000000000011d60 <_fini>:
   11d60:	d503201f 	nop
   11d64:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   11d68:	910003fd 	mov	x29, sp
   11d6c:	a8c17bfd 	ldp	x29, x30, [sp], #16
   11d70:	d65f03c0 	ret

Disassembly of section .plt:

0000000000011d80 <abort@plt-0x20>:
   11d80:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
   11d84:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11d88:	f940fe11 	ldr	x17, [x16, #504]
   11d8c:	9107e210 	add	x16, x16, #0x1f8
   11d90:	d61f0220 	br	x17
   11d94:	d503201f 	nop
   11d98:	d503201f 	nop
   11d9c:	d503201f 	nop

0000000000011da0 <abort@plt>:
   11da0:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11da4:	f9410211 	ldr	x17, [x16, #512]
   11da8:	91080210 	add	x16, x16, #0x200
   11dac:	d61f0220 	br	x17

0000000000011db0 <__libc_start_main@plt>:
   11db0:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11db4:	f9410611 	ldr	x17, [x16, #520]
   11db8:	91082210 	add	x16, x16, #0x208
   11dbc:	d61f0220 	br	x17

0000000000011dc0 <__gmon_start__@plt>:
   11dc0:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11dc4:	f9410a11 	ldr	x17, [x16, #528]
   11dc8:	91084210 	add	x16, x16, #0x210
   11dcc:	d61f0220 	br	x17

0000000000011dd0 <__cxa_finalize@plt>:
   11dd0:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11dd4:	f9410e11 	ldr	x17, [x16, #536]
   11dd8:	91086210 	add	x16, x16, #0x218
   11ddc:	d61f0220 	br	x17

0000000000011de0 <_ZNSt8ios_base4InitC1Ev@plt>:
   11de0:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11de4:	f9411211 	ldr	x17, [x16, #544]
   11de8:	91088210 	add	x16, x16, #0x220
   11dec:	d61f0220 	br	x17

0000000000011df0 <__cxa_atexit@plt>:
   11df0:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11df4:	f9411611 	ldr	x17, [x16, #552]
   11df8:	9108a210 	add	x16, x16, #0x228
   11dfc:	d61f0220 	br	x17

0000000000011e00 <_ZNSt6chrono3_V212system_clock3nowEv@plt>:
   11e00:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11e04:	f9411a11 	ldr	x17, [x16, #560]
   11e08:	9108c210 	add	x16, x16, #0x230
   11e0c:	d61f0220 	br	x17

0000000000011e10 <_ZNSt6thread20hardware_concurrencyEv@plt>:
   11e10:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11e14:	f9411e11 	ldr	x17, [x16, #568]
   11e18:	9108e210 	add	x16, x16, #0x238
   11e1c:	d61f0220 	br	x17

0000000000011e20 <_ZNSt6thread4joinEv@plt>:
   11e20:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11e24:	f9412211 	ldr	x17, [x16, #576]
   11e28:	91090210 	add	x16, x16, #0x240
   11e2c:	d61f0220 	br	x17

0000000000011e30 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@plt>:
   11e30:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11e34:	f9412611 	ldr	x17, [x16, #584]
   11e38:	91092210 	add	x16, x16, #0x248
   11e3c:	d61f0220 	br	x17

0000000000011e40 <_ZNSolsEi@plt>:
   11e40:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11e44:	f9412a11 	ldr	x17, [x16, #592]
   11e48:	91094210 	add	x16, x16, #0x250
   11e4c:	d61f0220 	br	x17

0000000000011e50 <printf@plt>:
   11e50:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11e54:	f9412e11 	ldr	x17, [x16, #600]
   11e58:	91096210 	add	x16, x16, #0x258
   11e5c:	d61f0220 	br	x17

0000000000011e60 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>:
   11e60:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11e64:	f9413211 	ldr	x17, [x16, #608]
   11e68:	91098210 	add	x16, x16, #0x260
   11e6c:	d61f0220 	br	x17

0000000000011e70 <_ZSt20__throw_length_errorPKc@plt>:
   11e70:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11e74:	f9413611 	ldr	x17, [x16, #616]
   11e78:	9109a210 	add	x16, x16, #0x268
   11e7c:	d61f0220 	br	x17

0000000000011e80 <__cxa_begin_catch@plt>:
   11e80:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11e84:	f9413a11 	ldr	x17, [x16, #624]
   11e88:	9109c210 	add	x16, x16, #0x270
   11e8c:	d61f0220 	br	x17

0000000000011e90 <_ZSt9terminatev@plt>:
   11e90:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11e94:	f9413e11 	ldr	x17, [x16, #632]
   11e98:	9109e210 	add	x16, x16, #0x278
   11e9c:	d61f0220 	br	x17

0000000000011ea0 <_Znwm@plt>:
   11ea0:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11ea4:	f9414211 	ldr	x17, [x16, #640]
   11ea8:	910a0210 	add	x16, x16, #0x280
   11eac:	d61f0220 	br	x17

0000000000011eb0 <_ZdlPv@plt>:
   11eb0:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11eb4:	f9414611 	ldr	x17, [x16, #648]
   11eb8:	910a2210 	add	x16, x16, #0x288
   11ebc:	d61f0220 	br	x17

0000000000011ec0 <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>:
   11ec0:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11ec4:	f9414a11 	ldr	x17, [x16, #656]
   11ec8:	910a4210 	add	x16, x16, #0x290
   11ecc:	d61f0220 	br	x17

0000000000011ed0 <_ZNSt6thread6_StateD2Ev@plt>:
   11ed0:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11ed4:	f9414e11 	ldr	x17, [x16, #664]
   11ed8:	910a6210 	add	x16, x16, #0x298
   11edc:	d61f0220 	br	x17

0000000000011ee0 <__cxa_rethrow@plt>:
   11ee0:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11ee4:	f9415211 	ldr	x17, [x16, #672]
   11ee8:	910a8210 	add	x16, x16, #0x2a0
   11eec:	d61f0220 	br	x17

0000000000011ef0 <__cxa_end_catch@plt>:
   11ef0:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11ef4:	f9415611 	ldr	x17, [x16, #680]
   11ef8:	910aa210 	add	x16, x16, #0x2a8
   11efc:	d61f0220 	br	x17

0000000000011f00 <_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev@plt>:
   11f00:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11f04:	f9415a11 	ldr	x17, [x16, #688]
   11f08:	910ac210 	add	x16, x16, #0x2b0
   11f0c:	d61f0220 	br	x17

0000000000011f10 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>:
   11f10:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11f14:	f9415e11 	ldr	x17, [x16, #696]
   11f18:	910ae210 	add	x16, x16, #0x2b8
   11f1c:	d61f0220 	br	x17

0000000000011f20 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>:
   11f20:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11f24:	f9416211 	ldr	x17, [x16, #704]
   11f28:	910b0210 	add	x16, x16, #0x2c0
   11f2c:	d61f0220 	br	x17

0000000000011f30 <_ZNSt8ios_baseD2Ev@plt>:
   11f30:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11f34:	f9416611 	ldr	x17, [x16, #712]
   11f38:	910b2210 	add	x16, x16, #0x2c8
   11f3c:	d61f0220 	br	x17

0000000000011f40 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
   11f40:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11f44:	f9416a11 	ldr	x17, [x16, #720]
   11f48:	910b4210 	add	x16, x16, #0x2d0
   11f4c:	d61f0220 	br	x17

0000000000011f50 <_Unwind_Resume@plt>:
   11f50:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11f54:	f9416e11 	ldr	x17, [x16, #728]
   11f58:	910b6210 	add	x16, x16, #0x2d8
   11f5c:	d61f0220 	br	x17

0000000000011f60 <memset@plt>:
   11f60:	b0000110 	adrp	x16, 32000 <_DYNAMIC+0x10038>
   11f64:	f9417211 	ldr	x17, [x16, #736]
   11f68:	910b8210 	add	x16, x16, #0x2e0
   11f6c:	d61f0220 	br	x17
