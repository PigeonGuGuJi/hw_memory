
malloc：     文件格式 elf64-littleaarch64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	62696c2f 	.inst	0x62696c2f ; undefined
  40023c:	2d646c2f 	ldp	s15, s27, [x1, #-224]
  400240:	756e696c 	.inst	0x756e696c ; undefined
  400244:	61612d78 	.inst	0x61612d78 ; undefined
  400248:	36686372 	tbz	w18, #13, 400eb4 <__FRAME_END__+0x6d4>
  40024c:	6f732e34 	.inst	0x6f732e34 ; undefined
  400250:	地址 0x0000000000400250 越界。


Disassembly of section .note.gnu.build-id:

0000000000400254 <.note.gnu.build-id>:
  400254:	00000004 	udf	#4
  400258:	00000014 	udf	#20
  40025c:	00000003 	udf	#3
  400260:	00554e47 	.inst	0x00554e47 ; undefined
  400264:	6a962fd2 	ands	w18, w30, w22, asr #11
  400268:	d3c04563 	.inst	0xd3c04563 ; undefined
  40026c:	2431d4fe 	cmphi	p14.b, p5/z, z7.b, #71
  400270:	e84282b1 	.inst	0xe84282b1 ; undefined
  400274:	9fee7d71 	.inst	0x9fee7d71 ; undefined

Disassembly of section .note.ABI-tag:

0000000000400278 <__abi_tag>:
  400278:	00000004 	udf	#4
  40027c:	00000010 	udf	#16
  400280:	00000001 	udf	#1
  400284:	00554e47 	.inst	0x00554e47 ; undefined
  400288:	00000000 	udf	#0
  40028c:	00000003 	udf	#3
  400290:	00000007 	udf	#7
  400294:	00000000 	udf	#0

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	00000001 	udf	#1
  40029c:	00000001 	udf	#1
  4002a0:	00000001 	udf	#1
	...

Disassembly of section .dynsym:

00000000004002b8 <.dynsym>:
	...
  4002d0:	00000008 	udf	#8
  4002d4:	00000012 	udf	#18
	...
  4002e8:	00000040 	udf	#64
  4002ec:	00000020 	udf	#32
	...
  400300:	00000001 	udf	#1
  400304:	00000012 	udf	#18
	...
  400318:	0000005c 	udf	#92
  40031c:	00000020 	udf	#32
	...
  400330:	0000001a 	udf	#26
  400334:	00000012 	udf	#18
	...
  400348:	0000006b 	udf	#107
  40034c:	00000020 	udf	#32
	...

Disassembly of section .dynstr:

0000000000400360 <.dynstr>:
  400360:	6c616d00 	ldnp	d0, d27, [x8, #-496]
  400364:	00636f6c 	.inst	0x00636f6c ; undefined
  400368:	696c5f5f 	ldpsw	xzr, x23, [x26, #-160]
  40036c:	735f6362 	.inst	0x735f6362 ; undefined
  400370:	74726174 	.inst	0x74726174 ; undefined
  400374:	69616d5f 	ldpsw	xzr, x27, [x10, #-248]
  400378:	6261006e 	.inst	0x6261006e ; undefined
  40037c:	0074726f 	.inst	0x0074726f ; undefined
  400380:	6362696c 	.inst	0x6362696c ; undefined
  400384:	2e6f732e 	uabdl	v14.4s, v25.4h, v15.4h
  400388:	4c470036 	.inst	0x4c470036 ; undefined
  40038c:	5f434249 	.inst	0x5f434249 ; undefined
  400390:	37312e32 	tbnz	w18, #6, 402954 <__FRAME_END__+0x2174>
  400394:	494c4700 	.inst	0x494c4700 ; undefined
  400398:	325f4342 	.inst	0x325f4342 ; undefined
  40039c:	0034332e 	.inst	0x0034332e ; NYI
  4003a0:	4d54495f 	.inst	0x4d54495f ; undefined
  4003a4:	7265645f 	.inst	0x7265645f ; undefined
  4003a8:	73696765 	.inst	0x73696765 ; undefined
  4003ac:	54726574 	.inst	0x54726574 ; undefined
  4003b0:	6f6c434d 	mls	v13.8h, v26.8h, v12.h[2]
  4003b4:	6154656e 	.inst	0x6154656e ; undefined
  4003b8:	00656c62 	.inst	0x00656c62 ; undefined
  4003bc:	6d675f5f 	ldp	d31, d23, [x26, #-400]
  4003c0:	735f6e6f 	.inst	0x735f6e6f ; undefined
  4003c4:	74726174 	.inst	0x74726174 ; undefined
  4003c8:	5f005f5f 	.inst	0x5f005f5f ; undefined
  4003cc:	5f4d5449 	shl	d9, d2, #13
  4003d0:	69676572 	ldpsw	x18, x25, [x11, #-200]
  4003d4:	72657473 	.inst	0x72657473 ; undefined
  4003d8:	6c434d54 	ldnp	d20, d19, [x10, #48]
  4003dc:	54656e6f 	b.nv	4cb1a8 <__bss_end__+0xab168>
  4003e0:	656c6261 	fnmls	z1.h, p0/m, z19.h, z12.h
	...

Disassembly of section .gnu.version:

00000000004003e6 <.gnu.version>:
  4003e6:	00020000 	.inst	0x00020000 ; undefined
  4003ea:	00030001 	.inst	0x00030001 ; undefined
  4003ee:	00030001 	.inst	0x00030001 ; undefined
  4003f2:	地址 0x00000000004003f2 越界。


Disassembly of section .gnu.version_r:

00000000004003f8 <.gnu.version_r>:
  4003f8:	00020001 	.inst	0x00020001 ; undefined
  4003fc:	00000020 	udf	#32
  400400:	00000010 	udf	#16
  400404:	00000000 	udf	#0
  400408:	06969197 	.inst	0x06969197 ; undefined
  40040c:	00030000 	.inst	0x00030000 ; undefined
  400410:	0000002a 	udf	#42
  400414:	00000010 	udf	#16
  400418:	069691b4 	.inst	0x069691b4 ; undefined
  40041c:	00020000 	.inst	0x00020000 ; undefined
  400420:	00000035 	udf	#53
  400424:	00000000 	udf	#0

Disassembly of section .rela.dyn:

0000000000400428 <.rela.dyn>:
  400428:	0041ffd0 	.inst	0x0041ffd0 ; undefined
  40042c:	00000000 	udf	#0
  400430:	00000401 	udf	#1025
  400434:	00000002 	udf	#2
	...
  400440:	0041ffd8 	.inst	0x0041ffd8 ; undefined
  400444:	00000000 	udf	#0
  400448:	00000401 	udf	#1025
  40044c:	00000004 	udf	#4
	...
  400458:	0041ffe0 	.inst	0x0041ffe0 ; undefined
  40045c:	00000000 	udf	#0
  400460:	00000401 	udf	#1025
  400464:	00000006 	udf	#6
	...

Disassembly of section .rela.plt:

0000000000400470 <.rela.plt>:
  400470:	00420000 	.inst	0x00420000 ; undefined
  400474:	00000000 	udf	#0
  400478:	00000402 	udf	#1026
  40047c:	00000001 	udf	#1
	...
  400488:	00420008 	.inst	0x00420008 ; undefined
  40048c:	00000000 	udf	#0
  400490:	00000402 	udf	#1026
  400494:	00000003 	udf	#3
	...
  4004a0:	00420010 	.inst	0x00420010 ; undefined
  4004a4:	00000000 	udf	#0
  4004a8:	00000402 	udf	#1026
  4004ac:	00000004 	udf	#4
	...
  4004b8:	00420018 	.inst	0x00420018 ; undefined
  4004bc:	00000000 	udf	#0
  4004c0:	00000402 	udf	#1026
  4004c4:	00000005 	udf	#5
	...

Disassembly of section .init:

00000000004004d0 <_init>:
  4004d0:	d503201f 	nop
  4004d4:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  4004d8:	910003fd 	mov	x29, sp
  4004dc:	9400003a 	bl	4005c4 <call_weak_fn>
  4004e0:	a8c17bfd 	ldp	x29, x30, [sp], #16
  4004e4:	d65f03c0 	ret

Disassembly of section .plt:

00000000004004f0 <.plt>:
  4004f0:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
  4004f4:	f00000f0 	adrp	x16, 41f000 <__FRAME_END__+0x1e820>
  4004f8:	f947fe11 	ldr	x17, [x16, #4088]
  4004fc:	913fe210 	add	x16, x16, #0xff8
  400500:	d61f0220 	br	x17
  400504:	d503201f 	nop
  400508:	d503201f 	nop
  40050c:	d503201f 	nop

0000000000400510 <__libc_start_main@plt>:
  400510:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400514:	f9400211 	ldr	x17, [x16]
  400518:	91000210 	add	x16, x16, #0x0
  40051c:	d61f0220 	br	x17

0000000000400520 <malloc@plt>:
  400520:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400524:	f9400611 	ldr	x17, [x16, #8]
  400528:	91002210 	add	x16, x16, #0x8
  40052c:	d61f0220 	br	x17

0000000000400530 <__gmon_start__@plt>:
  400530:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400534:	f9400a11 	ldr	x17, [x16, #16]
  400538:	91004210 	add	x16, x16, #0x10
  40053c:	d61f0220 	br	x17

0000000000400540 <abort@plt>:
  400540:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400544:	f9400e11 	ldr	x17, [x16, #24]
  400548:	91006210 	add	x16, x16, #0x18
  40054c:	d61f0220 	br	x17

Disassembly of section .text:

0000000000400580 <_start>:
  400580:	d503201f 	nop
  400584:	d280001d 	mov	x29, #0x0                   	// #0
  400588:	d280001e 	mov	x30, #0x0                   	// #0
  40058c:	aa0003e5 	mov	x5, x0
  400590:	f94003e1 	ldr	x1, [sp]
  400594:	910023e2 	add	x2, sp, #0x8
  400598:	910003e6 	mov	x6, sp
  40059c:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  4005a0:	9116d000 	add	x0, x0, #0x5b4
  4005a4:	d2800003 	mov	x3, #0x0                   	// #0
  4005a8:	d2800004 	mov	x4, #0x0                   	// #0
  4005ac:	97ffffd9 	bl	400510 <__libc_start_main@plt>
  4005b0:	97ffffe4 	bl	400540 <abort@plt>

00000000004005b4 <__wrap_main>:
  4005b4:	d503201f 	nop
  4005b8:	14000033 	b	400684 <main>
  4005bc:	d503201f 	nop

00000000004005c0 <_dl_relocate_static_pie>:
  4005c0:	d65f03c0 	ret

00000000004005c4 <call_weak_fn>:
  4005c4:	f00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1e820>
  4005c8:	f947ec00 	ldr	x0, [x0, #4056]
  4005cc:	b4000040 	cbz	x0, 4005d4 <call_weak_fn+0x10>
  4005d0:	17ffffd8 	b	400530 <__gmon_start__@plt>
  4005d4:	d65f03c0 	ret
  4005d8:	d503201f 	nop
  4005dc:	d503201f 	nop

00000000004005e0 <deregister_tm_clones>:
  4005e0:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4005e4:	9100c000 	add	x0, x0, #0x30
  4005e8:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  4005ec:	9100c021 	add	x1, x1, #0x30
  4005f0:	eb00003f 	cmp	x1, x0
  4005f4:	540000c0 	b.eq	40060c <deregister_tm_clones+0x2c>  // b.none
  4005f8:	f00000e1 	adrp	x1, 41f000 <__FRAME_END__+0x1e820>
  4005fc:	f947e821 	ldr	x1, [x1, #4048]
  400600:	b4000061 	cbz	x1, 40060c <deregister_tm_clones+0x2c>
  400604:	aa0103f0 	mov	x16, x1
  400608:	d61f0200 	br	x16
  40060c:	d65f03c0 	ret

0000000000400610 <register_tm_clones>:
  400610:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400614:	9100c000 	add	x0, x0, #0x30
  400618:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  40061c:	9100c021 	add	x1, x1, #0x30
  400620:	cb000021 	sub	x1, x1, x0
  400624:	d37ffc22 	lsr	x2, x1, #63
  400628:	8b810c41 	add	x1, x2, x1, asr #3
  40062c:	9341fc21 	asr	x1, x1, #1
  400630:	b40000c1 	cbz	x1, 400648 <register_tm_clones+0x38>
  400634:	f00000e2 	adrp	x2, 41f000 <__FRAME_END__+0x1e820>
  400638:	f947f042 	ldr	x2, [x2, #4064]
  40063c:	b4000062 	cbz	x2, 400648 <register_tm_clones+0x38>
  400640:	aa0203f0 	mov	x16, x2
  400644:	d61f0200 	br	x16
  400648:	d65f03c0 	ret
  40064c:	d503201f 	nop

0000000000400650 <__do_global_dtors_aux>:
  400650:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400654:	910003fd 	mov	x29, sp
  400658:	f9000bf3 	str	x19, [sp, #16]
  40065c:	90000113 	adrp	x19, 420000 <__libc_start_main@GLIBC_2.34>
  400660:	3940c260 	ldrb	w0, [x19, #48]
  400664:	35000080 	cbnz	w0, 400674 <__do_global_dtors_aux+0x24>
  400668:	97ffffde 	bl	4005e0 <deregister_tm_clones>
  40066c:	52800020 	mov	w0, #0x1                   	// #1
  400670:	3900c260 	strb	w0, [x19, #48]
  400674:	f9400bf3 	ldr	x19, [sp, #16]
  400678:	a8c27bfd 	ldp	x29, x30, [sp], #32
  40067c:	d65f03c0 	ret

0000000000400680 <frame_dummy>:
  400680:	17ffffe4 	b	400610 <register_tm_clones>

0000000000400684 <main>:
  400684:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
  400688:	910003fd 	mov	x29, sp
  40068c:	b9001fe0 	str	w0, [sp, #28]
  400690:	f9000be1 	str	x1, [sp, #16]
  400694:	528001e0 	mov	w0, #0xf                   	// #15
  400698:	b9002fe0 	str	w0, [sp, #44]
  40069c:	b9802fe0 	ldrsw	x0, [sp, #44]
  4006a0:	97ffffa0 	bl	400520 <malloc@plt>
  4006a4:	aa0003e1 	mov	x1, x0
  4006a8:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4006ac:	9100e000 	add	x0, x0, #0x38
  4006b0:	f9000001 	str	x1, [x0]
  4006b4:	52800000 	mov	w0, #0x0                   	// #0
  4006b8:	a8c37bfd 	ldp	x29, x30, [sp], #48
  4006bc:	d65f03c0 	ret

Disassembly of section .fini:

00000000004006c0 <_fini>:
  4006c0:	d503201f 	nop
  4006c4:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  4006c8:	910003fd 	mov	x29, sp
  4006cc:	a8c17bfd 	ldp	x29, x30, [sp], #16
  4006d0:	d65f03c0 	ret

Disassembly of section .rodata:

00000000004006d4 <_IO_stdin_used>:
  4006d4:	00020001 	.inst	0x00020001 ; undefined

Disassembly of section .eh_frame_hdr:

00000000004006d8 <__GNU_EH_FRAME_HDR>:
  4006d8:	3b031b01 	.inst	0x3b031b01 ; undefined
  4006dc:	00000044 	udf	#68
  4006e0:	00000007 	udf	#7
  4006e4:	fffffea8 	.inst	0xfffffea8 ; undefined
  4006e8:	0000005c 	udf	#92
  4006ec:	fffffee8 	.inst	0xfffffee8 ; undefined
  4006f0:	00000070 	udf	#112
  4006f4:	ffffff08 	.inst	0xffffff08 ; undefined
  4006f8:	00000088 	udf	#136
  4006fc:	ffffff38 	.inst	0xffffff38 ; undefined
  400700:	0000009c 	udf	#156
  400704:	ffffff78 	.inst	0xffffff78 ; undefined
  400708:	000000b0 	udf	#176
  40070c:	ffffffa8 	.inst	0xffffffa8 ; undefined
  400710:	000000d4 	udf	#212
  400714:	ffffffac 	.inst	0xffffffac ; undefined
  400718:	000000e8 	udf	#232

Disassembly of section .eh_frame:

0000000000400720 <__FRAME_END__-0xc0>:
  400720:	00000010 	udf	#16
  400724:	00000000 	udf	#0
  400728:	00527a01 	.inst	0x00527a01 ; undefined
  40072c:	011e7804 	.inst	0x011e7804 ; undefined
  400730:	001f0c1b 	.inst	0x001f0c1b ; undefined
  400734:	00000010 	udf	#16
  400738:	00000018 	udf	#24
  40073c:	fffffe44 	.inst	0xfffffe44 ; undefined
  400740:	0000003c 	udf	#60
  400744:	1e074100 	.inst	0x1e074100 ; undefined
  400748:	00000014 	udf	#20
  40074c:	0000002c 	udf	#44
  400750:	fffffe70 	.inst	0xfffffe70 ; undefined
  400754:	00000004 	udf	#4
	...
  400760:	00000010 	udf	#16
  400764:	00000044 	udf	#68
  400768:	fffffe78 	.inst	0xfffffe78 ; undefined
  40076c:	00000030 	udf	#48
  400770:	00000000 	udf	#0
  400774:	00000010 	udf	#16
  400778:	00000058 	udf	#88
  40077c:	fffffe94 	.inst	0xfffffe94 ; undefined
  400780:	0000003c 	udf	#60
  400784:	00000000 	udf	#0
  400788:	00000020 	udf	#32
  40078c:	0000006c 	udf	#108
  400790:	fffffec0 	.inst	0xfffffec0 ; undefined
  400794:	00000030 	udf	#48
  400798:	200e4100 	.inst	0x200e4100 ; undefined
  40079c:	039e049d 	.inst	0x039e049d ; undefined
  4007a0:	48029342 	stlxrh	w2, w2, [x26]
  4007a4:	0ed3ddde 	.inst	0x0ed3ddde ; undefined
  4007a8:	00000000 	udf	#0
  4007ac:	00000010 	udf	#16
  4007b0:	00000090 	udf	#144
  4007b4:	fffffecc 	.inst	0xfffffecc ; undefined
  4007b8:	00000004 	udf	#4
  4007bc:	00000000 	udf	#0
  4007c0:	0000001c 	udf	#28
  4007c4:	000000a4 	udf	#164
  4007c8:	fffffebc 	.inst	0xfffffebc ; undefined
  4007cc:	0000003c 	udf	#60
  4007d0:	300e4100 	adr	x0, 41cff1 <__FRAME_END__+0x1c811>
  4007d4:	059e069d 	mov	z29.s, p14/z, #52
  4007d8:	0eddde4d 	.inst	0x0eddde4d ; undefined
  4007dc:	00000000 	udf	#0

00000000004007e0 <__FRAME_END__>:
  4007e0:	00000000 	udf	#0

Disassembly of section .init_array:

000000000041fde8 <__frame_dummy_init_array_entry>:
  41fde8:	00400680 	.inst	0x00400680 ; undefined
  41fdec:	00000000 	udf	#0

Disassembly of section .fini_array:

000000000041fdf0 <__do_global_dtors_aux_fini_array_entry>:
  41fdf0:	00400650 	.inst	0x00400650 ; undefined
  41fdf4:	00000000 	udf	#0

Disassembly of section .dynamic:

000000000041fdf8 <_DYNAMIC>:
  41fdf8:	00000001 	udf	#1
  41fdfc:	00000000 	udf	#0
  41fe00:	00000020 	udf	#32
  41fe04:	00000000 	udf	#0
  41fe08:	0000000c 	udf	#12
  41fe0c:	00000000 	udf	#0
  41fe10:	004004d0 	.inst	0x004004d0 ; undefined
  41fe14:	00000000 	udf	#0
  41fe18:	0000000d 	udf	#13
  41fe1c:	00000000 	udf	#0
  41fe20:	004006c0 	.inst	0x004006c0 ; undefined
  41fe24:	00000000 	udf	#0
  41fe28:	00000019 	udf	#25
  41fe2c:	00000000 	udf	#0
  41fe30:	0041fde8 	.inst	0x0041fde8 ; undefined
  41fe34:	00000000 	udf	#0
  41fe38:	0000001b 	udf	#27
  41fe3c:	00000000 	udf	#0
  41fe40:	00000008 	udf	#8
  41fe44:	00000000 	udf	#0
  41fe48:	0000001a 	udf	#26
  41fe4c:	00000000 	udf	#0
  41fe50:	0041fdf0 	.inst	0x0041fdf0 ; undefined
  41fe54:	00000000 	udf	#0
  41fe58:	0000001c 	udf	#28
  41fe5c:	00000000 	udf	#0
  41fe60:	00000008 	udf	#8
  41fe64:	00000000 	udf	#0
  41fe68:	6ffffef5 	.inst	0x6ffffef5 ; undefined
  41fe6c:	00000000 	udf	#0
  41fe70:	00400298 	.inst	0x00400298 ; undefined
  41fe74:	00000000 	udf	#0
  41fe78:	00000005 	udf	#5
  41fe7c:	00000000 	udf	#0
  41fe80:	00400360 	.inst	0x00400360 ; undefined
  41fe84:	00000000 	udf	#0
  41fe88:	00000006 	udf	#6
  41fe8c:	00000000 	udf	#0
  41fe90:	004002b8 	.inst	0x004002b8 ; undefined
  41fe94:	00000000 	udf	#0
  41fe98:	0000000a 	udf	#10
  41fe9c:	00000000 	udf	#0
  41fea0:	00000085 	udf	#133
  41fea4:	00000000 	udf	#0
  41fea8:	0000000b 	udf	#11
  41feac:	00000000 	udf	#0
  41feb0:	00000018 	udf	#24
  41feb4:	00000000 	udf	#0
  41feb8:	00000015 	udf	#21
	...
  41fec8:	00000003 	udf	#3
  41fecc:	00000000 	udf	#0
  41fed0:	0041ffe8 	.inst	0x0041ffe8 ; undefined
  41fed4:	00000000 	udf	#0
  41fed8:	00000002 	udf	#2
  41fedc:	00000000 	udf	#0
  41fee0:	00000060 	udf	#96
  41fee4:	00000000 	udf	#0
  41fee8:	00000014 	udf	#20
  41feec:	00000000 	udf	#0
  41fef0:	00000007 	udf	#7
  41fef4:	00000000 	udf	#0
  41fef8:	00000017 	udf	#23
  41fefc:	00000000 	udf	#0
  41ff00:	00400470 	.inst	0x00400470 ; undefined
  41ff04:	00000000 	udf	#0
  41ff08:	00000007 	udf	#7
  41ff0c:	00000000 	udf	#0
  41ff10:	00400428 	.inst	0x00400428 ; undefined
  41ff14:	00000000 	udf	#0
  41ff18:	00000008 	udf	#8
  41ff1c:	00000000 	udf	#0
  41ff20:	00000048 	udf	#72
  41ff24:	00000000 	udf	#0
  41ff28:	00000009 	udf	#9
  41ff2c:	00000000 	udf	#0
  41ff30:	00000018 	udf	#24
  41ff34:	00000000 	udf	#0
  41ff38:	6ffffffe 	.inst	0x6ffffffe ; undefined
  41ff3c:	00000000 	udf	#0
  41ff40:	004003f8 	.inst	0x004003f8 ; undefined
  41ff44:	00000000 	udf	#0
  41ff48:	6fffffff 	.inst	0x6fffffff ; undefined
  41ff4c:	00000000 	udf	#0
  41ff50:	00000001 	udf	#1
  41ff54:	00000000 	udf	#0
  41ff58:	6ffffff0 	.inst	0x6ffffff0 ; undefined
  41ff5c:	00000000 	udf	#0
  41ff60:	004003e6 	.inst	0x004003e6 ; undefined
	...

Disassembly of section .got:

000000000041ffc8 <_GLOBAL_OFFSET_TABLE_>:
  41ffc8:	0041fdf8 	.inst	0x0041fdf8 ; undefined
	...

Disassembly of section .got.plt:

000000000041ffe8 <.got.plt>:
	...
  420000:	004004f0 	.inst	0x004004f0 ; undefined
  420004:	00000000 	udf	#0
  420008:	004004f0 	.inst	0x004004f0 ; undefined
  42000c:	00000000 	udf	#0
  420010:	004004f0 	.inst	0x004004f0 ; undefined
  420014:	00000000 	udf	#0
  420018:	004004f0 	.inst	0x004004f0 ; undefined
  42001c:	00000000 	udf	#0

Disassembly of section .data:

0000000000420020 <__data_start>:
	...

0000000000420028 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000420030 <completed.0>:
	...

0000000000420038 <str>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347 	ccmn	w26, w3, #0x7, mi  // mi = first
   4:	4e472820 	trn1	v0.8h, v1.8h, v7.8h
   8:	31202955 	adds	w21, w10, #0x80a
   c:	2e332e30 	uqsub	v16.8b, v17.8b, v19.8b
  10:	地址 0x0000000000000010 越界。


Disassembly of section .gnu.build.attributes:

0000000000420040 <.gnu.build.attributes>:
  420040:	00000008 	udf	#8
  420044:	00000010 	udf	#16
  420048:	00000100 	udf	#256
  42004c:	01244147 	.inst	0x01244147 ; undefined
  420050:	00316133 	.inst	0x00316133 ; NYI
  420054:	00400580 	.inst	0x00400580 ; undefined
  420058:	00000000 	udf	#0
  42005c:	004005bc 	.inst	0x004005bc ; undefined
  420060:	00000000 	udf	#0
  420064:	00000008 	udf	#8
  420068:	00000010 	udf	#16
  42006c:	00000100 	udf	#256
  420070:	01244147 	.inst	0x01244147 ; undefined
  420074:	00316133 	.inst	0x00316133 ; NYI
  420078:	004005c4 	.inst	0x004005c4 ; undefined
  42007c:	00000000 	udf	#0
  420080:	004005d8 	.inst	0x004005d8 ; undefined
  420084:	00000000 	udf	#0
  420088:	00000008 	udf	#8
  42008c:	00000010 	udf	#16
  420090:	00000100 	udf	#256
  420094:	01244147 	.inst	0x01244147 ; undefined
  420098:	00316133 	.inst	0x00316133 ; NYI
  42009c:	004004d0 	.inst	0x004004d0 ; undefined
  4200a0:	00000000 	udf	#0
  4200a4:	004004e0 	.inst	0x004004e0 ; undefined
  4200a8:	00000000 	udf	#0
  4200ac:	00000008 	udf	#8
  4200b0:	00000010 	udf	#16
  4200b4:	00000100 	udf	#256
  4200b8:	01244147 	.inst	0x01244147 ; undefined
  4200bc:	00316133 	.inst	0x00316133 ; NYI
  4200c0:	004006c0 	.inst	0x004006c0 ; undefined
  4200c4:	00000000 	udf	#0
  4200c8:	004006cc 	.inst	0x004006cc ; undefined
  4200cc:	00000000 	udf	#0
  4200d0:	00000008 	udf	#8
  4200d4:	00000010 	udf	#16
  4200d8:	00000100 	udf	#256
  4200dc:	01244147 	.inst	0x01244147 ; undefined
  4200e0:	00316133 	.inst	0x00316133 ; NYI
  4200e4:	004006c0 	.inst	0x004006c0 ; undefined
  4200e8:	00000000 	udf	#0
  4200ec:	004006c0 	.inst	0x004006c0 ; undefined
  4200f0:	00000000 	udf	#0
  4200f4:	00000008 	udf	#8
  4200f8:	00000010 	udf	#16
  4200fc:	00000100 	udf	#256
  420100:	01244147 	.inst	0x01244147 ; undefined
  420104:	00316133 	.inst	0x00316133 ; NYI
  420108:	004004e0 	.inst	0x004004e0 ; undefined
  42010c:	00000000 	udf	#0
  420110:	004004e8 	.inst	0x004004e8 ; undefined
  420114:	00000000 	udf	#0
  420118:	00000008 	udf	#8
  42011c:	00000010 	udf	#16
  420120:	00000100 	udf	#256
  420124:	01244147 	.inst	0x01244147 ; undefined
  420128:	00316133 	.inst	0x00316133 ; NYI
  42012c:	004006cc 	.inst	0x004006cc ; undefined
  420130:	00000000 	udf	#0
  420134:	004006d4 	.inst	0x004006d4 ; undefined
  420138:	00000000 	udf	#0

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	0000002c 	udf	#44
   4:	00000002 	udf	#2
   8:	00080000 	.inst	0x00080000 ; undefined
   c:	00000000 	udf	#0
  10:	00400684 	.inst	0x00400684 ; undefined
  14:	00000000 	udf	#0
  18:	0000003c 	udf	#60
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	000000f2 	udf	#242
   4:	00000004 	udf	#4
   8:	01080000 	.inst	0x01080000 ; undefined
   c:	0000002e 	udf	#46
  10:	00000e0c 	udf	#3596
  14:	00001500 	udf	#5376
  18:	40068400 	.inst	0x40068400 ; undefined
  1c:	00000000 	udf	#0
  20:	00003c00 	udf	#15360
	...
  2c:	07080200 	.inst	0x07080200 ; undefined
  30:	00000060 	udf	#96
  34:	69050403 	stgp	x3, x1, [x0, #160]
  38:	0200746e 	.inst	0x0200746e ; undefined
  3c:	00720801 	.inst	0x00720801 ; undefined
  40:	02020000 	.inst	0x02020000 ; undefined
  44:	00008507 	udf	#34055
  48:	07040200 	.inst	0x07040200 ; undefined
  4c:	00000065 	udf	#101
  50:	74060102 	.inst	0x74060102 ; undefined
  54:	02000000 	.inst	0x02000000 ; undefined
  58:	009d0502 	.inst	0x009d0502 ; undefined
  5c:	08020000 	stxrb	w2, w0, [x0]
  60:	00000505 	udf	#1285
  64:	6b080400 	subs	w0, w0, w8, lsl #1
  68:	02000000 	.inst	0x02000000 ; undefined
  6c:	007b0801 	.inst	0x007b0801 ; undefined
  70:	6b050000 	subs	w0, w0, w5
  74:	02000000 	.inst	0x02000000 ; undefined
  78:	00000508 	udf	#1288
  7c:	08020000 	stxrb	w2, w0, [x0]
  80:	00005b07 	udf	#23303
  84:	74730600 	.inst	0x74730600 ; undefined
  88:	06010072 	.inst	0x06010072 ; undefined
  8c:	00006507 	udf	#25863
  90:	38030900 	sttrb	w0, [x8, #48]
  94:	00004200 	udf	#16896
  98:	07000000 	.inst	0x07000000 ; undefined
  9c:	00000029 	udf	#41
  a0:	34050901 	cbz	w1, a1c0 <__abi_tag-0x3f60b8>
  a4:	84000000 	ld1sb	{z0.s}, p0/z, [x0, z0.s, uxtw]
  a8:	00004006 	udf	#16390
  ac:	3c000000 	stur	b0, [x0]
  b0:	00000000 	udf	#0
  b4:	01000000 	.inst	0x01000000 ; undefined
  b8:	0000e99c 	udf	#59804
  bc:	00800800 	.inst	0x00800800 ; undefined
  c0:	09010000 	.inst	0x09010000 ; undefined
  c4:	0000340e 	udf	#13326
  c8:	6c910200 	stp	d0, d0, [x16], #272
  cc:	00009808 	udf	#38920
  d0:	21090100 	.inst	0x21090100 ; undefined
  d4:	000000e9 	udf	#233
  d8:	09609102 	.inst	0x09609102 ; undefined
  dc:	0c010069 	.inst	0x0c010069 ; undefined
  e0:	00003409 	udf	#13321
  e4:	7c910200 	.inst	0x7c910200 ; undefined
  e8:	ef080400 	.inst	0xef080400 ; undefined
  ec:	04000000 	add	z0.b, p0/m, z0.b, z0.b
  f0:	00007208 	udf	#29192
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	25011101 	cmpge	p1.b, p4/z, z8.b, #1
   4:	030b130e 	.inst	0x030b130e ; undefined
   8:	110e1b0e 	add	w14, w24, #0x386
   c:	10071201 	adr	x1, e24c <__abi_tag-0x3f202c>
  10:	02000017 	.inst	0x02000017 ; undefined
  14:	0b0b0024 	add	w4, w1, w11
  18:	0e030b3e 	.inst	0x0e030b3e ; undefined
  1c:	24030000 	cmphs	p0.b, p0/z, z0.b, z3.b
  20:	3e0b0b00 	.inst	0x3e0b0b00 ; undefined
  24:	0008030b 	.inst	0x0008030b ; undefined
  28:	000f0400 	.inst	0x000f0400 ; undefined
  2c:	13490b0b 	.inst	0x13490b0b ; undefined
  30:	26050000 	.inst	0x26050000 ; undefined
  34:	00134900 	.inst	0x00134900 ; undefined
  38:	00340600 	.inst	0x00340600 ; NYI
  3c:	0b3a0803 	add	w3, w0, w26, uxtb #2
  40:	0b390b3b 	add	w27, w25, w25, uxtb #2
  44:	193f1349 	.inst	0x193f1349 ; undefined
  48:	00001802 	udf	#6146
  4c:	3f012e07 	.inst	0x3f012e07 ; undefined
  50:	3a0e0319 	adcs	w25, w24, w14
  54:	390b3b0b 	strb	w11, [x24, #718]
  58:	4919270b 	.inst	0x4919270b ; undefined
  5c:	12011113 	and	w19, w8, #0x8000000f
  60:	96184007 	bl	fffffffff861007c <__bss_end__+0xfffffffff81f003c>
  64:	13011942 	sbfx	w2, w10, #1, #6
  68:	05080000 	.inst	0x05080000 ; undefined
  6c:	3a0e0300 	adcs	w0, w24, w14
  70:	390b3b0b 	strb	w11, [x24, #718]
  74:	0213490b 	.inst	0x0213490b ; undefined
  78:	09000018 	.inst	0x09000018 ; undefined
  7c:	08030034 	stxrb	w3, w20, [x1]
  80:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
  84:	13490b39 	.inst	0x13490b39 ; undefined
  88:	00001802 	udf	#6146
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	00000047 	udf	#71
   4:	001d0003 	.inst	0x001d0003 ; undefined
   8:	01040000 	.inst	0x01040000 ; undefined
   c:	000d0efb 	.inst	0x000d0efb ; undefined
  10:	01010101 	.inst	0x01010101 ; undefined
  14:	01000000 	.inst	0x01000000 ; undefined
  18:	00010000 	.inst	0x00010000 ; undefined
  1c:	6e69616d 	rsubhn2	v13.8h, v11.4s, v9.4s
  20:	0000632e 	udf	#25390
  24:	05000000 	orr	z0.s, z0.s, #0x1
  28:	02090001 	.inst	0x02090001 ; undefined
  2c:	00400684 	.inst	0x00400684 ; undefined
  30:	00000000 	udf	#0
  34:	05010903 	orr	z3.s, z3.s, #0x800000ff
  38:	14054c09 	b	15305c <__abi_tag-0x2ad21c>
  3c:	3c090530 	str	b16, [x9], #144
  40:	053f0c05 	ext	z5.b, z5.b, z0.b, #251
  44:	02022101 	.inst	0x02022101 ; undefined
  48:	地址 0x0000000000000048 越界。


Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	676e6f6c 	.inst	0x676e6f6c ; undefined
   4:	6e6f6c20 	umin	v0.8h, v1.8h, v15.8h
   8:	6e692067 	usubl2	v7.4s, v3.8h, v9.8h
   c:	616d0074 	.inst	0x616d0074 ; undefined
  10:	632e6e69 	.inst	0x632e6e69 ; undefined
  14:	6f682f00 	.inst	0x6f682f00 ; undefined
  18:	672f656d 	.inst	0x672f656d ; undefined
  1c:	6a756775 	bics	w21, w27, w21, lsr #25
  20:	616d2f69 	.inst	0x616d2f69 ; undefined
  24:	636f6c6c 	.inst	0x636f6c6c ; undefined
  28:	69616d00 	ldpsw	x0, x27, [x8, #-248]
  2c:	4e47006e 	.inst	0x4e47006e ; undefined
  30:	31432055 	adds	w21, w2, #0xc8, lsl #12
  34:	30312037 	adr	x23, 62439 <__abi_tag-0x39de3f>
  38:	312e332e 	adds	w14, w25, #0xb8c
  3c:	6c6d2d20 	ldnp	d0, d11, [x9, #-304]
  40:	6c747469 	ldnp	d9, d29, [x3, #-192]
  44:	6e652d65 	uqsub	v5.8h, v11.8h, v5.8h
  48:	6e616964 	fcvtxn2	v4.4s, v11.2d
  4c:	616d2d20 	.inst	0x616d2d20 ; undefined
  50:	6c3d6962 	stnp	d2, d26, [x11, #-48]
  54:	20343670 	.inst	0x20343670 ; undefined
  58:	6c00672d 	stnp	d13, d25, [x25]
  5c:	20676e6f 	.inst	0x20676e6f ; undefined
  60:	676e6f6c 	.inst	0x676e6f6c ; undefined
  64:	736e7520 	.inst	0x736e7520 ; undefined
  68:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
  6c:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
  70:	6e750074 	uaddl2	v20.4s, v3.8h, v21.8h
  74:	6e676973 	.inst	0x6e676973 ; undefined
  78:	63206465 	.inst	0x63206465 ; undefined
  7c:	00726168 	.inst	0x00726168 ; undefined
  80:	63677261 	.inst	0x63677261 ; undefined
  84:	6f687300 	fcmla	v0.8h, v24.8h, v8.h[1], #270
  88:	75207472 	.inst	0x75207472 ; undefined
  8c:	6769736e 	.inst	0x6769736e ; undefined
  90:	2064656e 	.inst	0x2064656e ; undefined
  94:	00746e69 	.inst	0x00746e69 ; undefined
  98:	76677261 	.inst	0x76677261 ; undefined
  9c:	6f687300 	fcmla	v0.8h, v24.8h, v8.h[1], #270
  a0:	69207472 	stgp	x18, x29, [x3, #-1024]
  a4:	地址 0x00000000000000a4 越界。

