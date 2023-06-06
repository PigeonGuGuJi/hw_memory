
small：     文件格式 elf64-littleaarch64


Disassembly of section .init:

0000000000400508 <_init>:
  400508:	d503201f 	nop
  40050c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400510:	910003fd 	mov	x29, sp
  400514:	9400003c 	bl	400604 <call_weak_fn>
  400518:	a8c17bfd 	ldp	x29, x30, [sp], #16
  40051c:	d65f03c0 	ret

Disassembly of section .plt:

0000000000400520 <.plt>:
  400520:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
  400524:	f00000f0 	adrp	x16, 41f000 <__FRAME_END__+0x1db68>
  400528:	f947fe11 	ldr	x17, [x16, #4088]
  40052c:	913fe210 	add	x16, x16, #0xff8
  400530:	d61f0220 	br	x17
  400534:	d503201f 	nop
  400538:	d503201f 	nop
  40053c:	d503201f 	nop

0000000000400540 <__libc_start_main@plt>:
  400540:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400544:	f9400211 	ldr	x17, [x16]
  400548:	91000210 	add	x16, x16, #0x0
  40054c:	d61f0220 	br	x17

0000000000400550 <random@plt>:
  400550:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400554:	f9400611 	ldr	x17, [x16, #8]
  400558:	91002210 	add	x16, x16, #0x8
  40055c:	d61f0220 	br	x17

0000000000400560 <__gmon_start__@plt>:
  400560:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400564:	f9400a11 	ldr	x17, [x16, #16]
  400568:	91004210 	add	x16, x16, #0x10
  40056c:	d61f0220 	br	x17

0000000000400570 <abort@plt>:
  400570:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400574:	f9400e11 	ldr	x17, [x16, #24]
  400578:	91006210 	add	x16, x16, #0x18
  40057c:	d61f0220 	br	x17

0000000000400580 <putchar@plt>:
  400580:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400584:	f9401211 	ldr	x17, [x16, #32]
  400588:	91008210 	add	x16, x16, #0x20
  40058c:	d61f0220 	br	x17

Disassembly of section .text:

00000000004005c0 <_start>:
  4005c0:	d503201f 	nop
  4005c4:	d280001d 	mov	x29, #0x0                   	// #0
  4005c8:	d280001e 	mov	x30, #0x0                   	// #0
  4005cc:	aa0003e5 	mov	x5, x0
  4005d0:	f94003e1 	ldr	x1, [sp]
  4005d4:	910023e2 	add	x2, sp, #0x8
  4005d8:	910003e6 	mov	x6, sp
  4005dc:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  4005e0:	9117d000 	add	x0, x0, #0x5f4
  4005e4:	d2800003 	mov	x3, #0x0                   	// #0
  4005e8:	d2800004 	mov	x4, #0x0                   	// #0
  4005ec:	97ffffd5 	bl	400540 <__libc_start_main@plt>
  4005f0:	97ffffe0 	bl	400570 <abort@plt>

00000000004005f4 <__wrap_main>:
  4005f4:	d503201f 	nop
  4005f8:	14000033 	b	4006c4 <main>
  4005fc:	d503201f 	nop

0000000000400600 <_dl_relocate_static_pie>:
  400600:	d65f03c0 	ret

0000000000400604 <call_weak_fn>:
  400604:	f00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1db68>
  400608:	f947ec00 	ldr	x0, [x0, #4056]
  40060c:	b4000040 	cbz	x0, 400614 <call_weak_fn+0x10>
  400610:	17ffffd4 	b	400560 <__gmon_start__@plt>
  400614:	d65f03c0 	ret
  400618:	d503201f 	nop
  40061c:	d503201f 	nop

0000000000400620 <deregister_tm_clones>:
  400620:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400624:	9100e000 	add	x0, x0, #0x38
  400628:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  40062c:	9100e021 	add	x1, x1, #0x38
  400630:	eb00003f 	cmp	x1, x0
  400634:	540000c0 	b.eq	40064c <deregister_tm_clones+0x2c>  // b.none
  400638:	f00000e1 	adrp	x1, 41f000 <__FRAME_END__+0x1db68>
  40063c:	f947e821 	ldr	x1, [x1, #4048]
  400640:	b4000061 	cbz	x1, 40064c <deregister_tm_clones+0x2c>
  400644:	aa0103f0 	mov	x16, x1
  400648:	d61f0200 	br	x16
  40064c:	d65f03c0 	ret

0000000000400650 <register_tm_clones>:
  400650:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400654:	9100e000 	add	x0, x0, #0x38
  400658:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  40065c:	9100e021 	add	x1, x1, #0x38
  400660:	cb000021 	sub	x1, x1, x0
  400664:	d37ffc22 	lsr	x2, x1, #63
  400668:	8b810c41 	add	x1, x2, x1, asr #3
  40066c:	9341fc21 	asr	x1, x1, #1
  400670:	b40000c1 	cbz	x1, 400688 <register_tm_clones+0x38>
  400674:	f00000e2 	adrp	x2, 41f000 <__FRAME_END__+0x1db68>
  400678:	f947f042 	ldr	x2, [x2, #4064]
  40067c:	b4000062 	cbz	x2, 400688 <register_tm_clones+0x38>
  400680:	aa0203f0 	mov	x16, x2
  400684:	d61f0200 	br	x16
  400688:	d65f03c0 	ret
  40068c:	d503201f 	nop

0000000000400690 <__do_global_dtors_aux>:
  400690:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400694:	910003fd 	mov	x29, sp
  400698:	f9000bf3 	str	x19, [sp, #16]
  40069c:	90000113 	adrp	x19, 420000 <__libc_start_main@GLIBC_2.34>
  4006a0:	3940e260 	ldrb	w0, [x19, #56]
  4006a4:	35000080 	cbnz	w0, 4006b4 <__do_global_dtors_aux+0x24>
  4006a8:	97ffffde 	bl	400620 <deregister_tm_clones>
  4006ac:	52800020 	mov	w0, #0x1                   	// #1
  4006b0:	3900e260 	strb	w0, [x19, #56]
  4006b4:	f9400bf3 	ldr	x19, [sp, #16]
  4006b8:	a8c27bfd 	ldp	x29, x30, [sp], #32
  4006bc:	d65f03c0 	ret

00000000004006c0 <frame_dummy>:
  4006c0:	17ffffe4 	b	400650 <register_tm_clones>

00000000004006c4 <main>:
  4006c4:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
  4006c8:	910003fd 	mov	x29, sp
  4006cc:	b9001fe0 	str	w0, [sp, #28]
  4006d0:	f9000be1 	str	x1, [sp, #16]
  4006d4:	900017e0 	adrp	x0, 6fc000 <ms3+0xf3b40>
  4006d8:	911c0000 	add	x0, x0, #0x700
  4006dc:	b900001f 	str	wzr, [x0]
  4006e0:	52800020 	mov	w0, #0x1                   	// #1
  4006e4:	b9002fe0 	str	w0, [sp, #44]
  4006e8:	b9002bff 	str	wzr, [sp, #40]
  4006ec:	b9402fe0 	ldr	w0, [sp, #44]
  4006f0:	7100001f 	cmp	w0, #0x0
  4006f4:	54000060 	b.eq	400700 <main+0x3c>  // b.none
  4006f8:	94000033 	bl	4007c4 <InitializeMesh_1>
  4006fc:	94000097 	bl	400958 <InitializeMesh_2>
  400700:	52800620 	mov	w0, #0x31                  	// #49
  400704:	97ffff9f 	bl	400580 <putchar@plt>
  400708:	940000f9 	bl	400aec <CompareMesh>
  40070c:	2a0003e1 	mov	w1, w0
  400710:	900017e0 	adrp	x0, 6fc000 <ms3+0xf3b40>
  400714:	911c0000 	add	x0, x0, #0x700
  400718:	b9000001 	str	w1, [x0]
  40071c:	b9402be0 	ldr	w0, [sp, #40]
  400720:	7100001f 	cmp	w0, #0x0
  400724:	540001c0 	b.eq	40075c <main+0x98>  // b.none
  400728:	94000192 	bl	400d70 <SwapMesh>
  40072c:	2a0003e1 	mov	w1, w0
  400730:	900017e0 	adrp	x0, 6fc000 <ms3+0xf3b40>
  400734:	911c0000 	add	x0, x0, #0x700
  400738:	b9000001 	str	w1, [x0]
  40073c:	52800d60 	mov	w0, #0x6b                  	// #107
  400740:	97ffff90 	bl	400580 <putchar@plt>
  400744:	940001d1 	bl	400e88 <Mesh_dot>
  400748:	2a0003e1 	mov	w1, w0
  40074c:	900017e0 	adrp	x0, 6fc000 <ms3+0xf3b40>
  400750:	911c1000 	add	x0, x0, #0x704
  400754:	b9000001 	str	w1, [x0]
  400758:	1400000d 	b	40078c <main+0xc8>
  40075c:	94000185 	bl	400d70 <SwapMesh>
  400760:	2a0003e1 	mov	w1, w0
  400764:	900017e0 	adrp	x0, 6fc000 <ms3+0xf3b40>
  400768:	911c0000 	add	x0, x0, #0x700
  40076c:	b9000001 	str	w1, [x0]
  400770:	52800e00 	mov	w0, #0x70                  	// #112
  400774:	97ffff83 	bl	400580 <putchar@plt>
  400778:	940001c4 	bl	400e88 <Mesh_dot>
  40077c:	2a0003e1 	mov	w1, w0
  400780:	900017e0 	adrp	x0, 6fc000 <ms3+0xf3b40>
  400784:	911c1000 	add	x0, x0, #0x704
  400788:	b9000001 	str	w1, [x0]
  40078c:	52800640 	mov	w0, #0x32                  	// #50
  400790:	97ffff7c 	bl	400580 <putchar@plt>
  400794:	94000177 	bl	400d70 <SwapMesh>
  400798:	9400020a 	bl	400fc0 <ComplexDataHandle>
  40079c:	9400010f 	bl	400bd8 <Mesh2>
  4007a0:	2a0003e1 	mov	w1, w0
  4007a4:	900017e0 	adrp	x0, 6fc000 <ms3+0xf3b40>
  4007a8:	911c1000 	add	x0, x0, #0x704
  4007ac:	b9000001 	str	w1, [x0]
  4007b0:	52800660 	mov	w0, #0x33                  	// #51
  4007b4:	97ffff73 	bl	400580 <putchar@plt>
  4007b8:	52800000 	mov	w0, #0x0                   	// #0
  4007bc:	a8c37bfd 	ldp	x29, x30, [sp], #48
  4007c0:	d65f03c0 	ret

00000000004007c4 <InitializeMesh_1>:
  4007c4:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  4007c8:	910003fd 	mov	x29, sp
  4007cc:	b9001bff 	str	wzr, [sp, #24]
  4007d0:	1400005b 	b	40093c <InitializeMesh_1+0x178>
  4007d4:	b9001fff 	str	wzr, [sp, #28]
  4007d8:	14000053 	b	400924 <InitializeMesh_1+0x160>
  4007dc:	97ffff5d 	bl	400550 <random@plt>
  4007e0:	2a0003e4 	mov	w4, w0
  4007e4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4007e8:	91010002 	add	x2, x0, #0x40
  4007ec:	b9801be3 	ldrsw	x3, [sp, #24]
  4007f0:	b9801fe1 	ldrsw	x1, [sp, #28]
  4007f4:	aa0103e0 	mov	x0, x1
  4007f8:	d37be800 	lsl	x0, x0, #5
  4007fc:	cb010000 	sub	x0, x0, x1
  400800:	d37ef400 	lsl	x0, x0, #2
  400804:	8b010000 	add	x0, x0, x1
  400808:	d37ef400 	lsl	x0, x0, #2
  40080c:	8b030000 	add	x0, x0, x3
  400810:	b8207844 	str	w4, [x2, x0, lsl #2]
  400814:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400818:	91010002 	add	x2, x0, #0x40
  40081c:	b9801be3 	ldrsw	x3, [sp, #24]
  400820:	b9801fe1 	ldrsw	x1, [sp, #28]
  400824:	aa0103e0 	mov	x0, x1
  400828:	d37be800 	lsl	x0, x0, #5
  40082c:	cb010000 	sub	x0, x0, x1
  400830:	d37ef400 	lsl	x0, x0, #2
  400834:	8b010000 	add	x0, x0, x1
  400838:	d37ef400 	lsl	x0, x0, #2
  40083c:	8b030000 	add	x0, x0, x3
  400840:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400844:	b90017e0 	str	w0, [sp, #20]
  400848:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40084c:	91010002 	add	x2, x0, #0x40
  400850:	b9801be3 	ldrsw	x3, [sp, #24]
  400854:	b9801fe1 	ldrsw	x1, [sp, #28]
  400858:	aa0103e0 	mov	x0, x1
  40085c:	d37be800 	lsl	x0, x0, #5
  400860:	cb010000 	sub	x0, x0, x1
  400864:	d37ef400 	lsl	x0, x0, #2
  400868:	8b010000 	add	x0, x0, x1
  40086c:	d37ef400 	lsl	x0, x0, #2
  400870:	8b030000 	add	x0, x0, x3
  400874:	b8607841 	ldr	w1, [x2, x0, lsl #2]
  400878:	5290d4e0 	mov	w0, #0x86a7                	// #34471
  40087c:	72a00020 	movk	w0, #0x1, lsl #16
  400880:	6b00003f 	cmp	w1, w0
  400884:	540004ad 	b.le	400918 <InitializeMesh_1+0x154>
  400888:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40088c:	91010002 	add	x2, x0, #0x40
  400890:	b9801be3 	ldrsw	x3, [sp, #24]
  400894:	b9801fe1 	ldrsw	x1, [sp, #28]
  400898:	aa0103e0 	mov	x0, x1
  40089c:	d37be800 	lsl	x0, x0, #5
  4008a0:	cb010000 	sub	x0, x0, x1
  4008a4:	d37ef400 	lsl	x0, x0, #2
  4008a8:	8b010000 	add	x0, x0, x1
  4008ac:	d37ef400 	lsl	x0, x0, #2
  4008b0:	8b030000 	add	x0, x0, x3
  4008b4:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  4008b8:	529555a1 	mov	w1, #0xaaad                	// #43693
  4008bc:	72b4f841 	movk	w1, #0xa7c2, lsl #16
  4008c0:	9b217c01 	smull	x1, w0, w1
  4008c4:	d360fc21 	lsr	x1, x1, #32
  4008c8:	0b010001 	add	w1, w0, w1
  4008cc:	13107c22 	asr	w2, w1, #16
  4008d0:	131f7c01 	asr	w1, w0, #31
  4008d4:	4b010041 	sub	w1, w2, w1
  4008d8:	5290d4e2 	mov	w2, #0x86a7                	// #34471
  4008dc:	72a00022 	movk	w2, #0x1, lsl #16
  4008e0:	1b027c21 	mul	w1, w1, w2
  4008e4:	4b010001 	sub	w1, w0, w1
  4008e8:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4008ec:	91010003 	add	x3, x0, #0x40
  4008f0:	b9801be4 	ldrsw	x4, [sp, #24]
  4008f4:	b9801fe2 	ldrsw	x2, [sp, #28]
  4008f8:	aa0203e0 	mov	x0, x2
  4008fc:	d37be800 	lsl	x0, x0, #5
  400900:	cb020000 	sub	x0, x0, x2
  400904:	d37ef400 	lsl	x0, x0, #2
  400908:	8b020000 	add	x0, x0, x2
  40090c:	d37ef400 	lsl	x0, x0, #2
  400910:	8b040000 	add	x0, x0, x4
  400914:	b8207861 	str	w1, [x3, x0, lsl #2]
  400918:	b9401fe0 	ldr	w0, [sp, #28]
  40091c:	11000400 	add	w0, w0, #0x1
  400920:	b9001fe0 	str	w0, [sp, #28]
  400924:	b9401fe0 	ldr	w0, [sp, #28]
  400928:	7107cc1f 	cmp	w0, #0x1f3
  40092c:	54fff58d 	b.le	4007dc <InitializeMesh_1+0x18>
  400930:	b9401be0 	ldr	w0, [sp, #24]
  400934:	11000400 	add	w0, w0, #0x1
  400938:	b9001be0 	str	w0, [sp, #24]
  40093c:	b9401be0 	ldr	w0, [sp, #24]
  400940:	7107cc1f 	cmp	w0, #0x1f3
  400944:	54fff48d 	b.le	4007d4 <InitializeMesh_1+0x10>
  400948:	d503201f 	nop
  40094c:	d503201f 	nop
  400950:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400954:	d65f03c0 	ret

0000000000400958 <InitializeMesh_2>:
  400958:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  40095c:	910003fd 	mov	x29, sp
  400960:	b9001bff 	str	wzr, [sp, #24]
  400964:	1400005b 	b	400ad0 <InitializeMesh_2+0x178>
  400968:	b9001fff 	str	wzr, [sp, #28]
  40096c:	14000053 	b	400ab8 <InitializeMesh_2+0x160>
  400970:	97fffef8 	bl	400550 <random@plt>
  400974:	2a0003e4 	mov	w4, w0
  400978:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  40097c:	910a0002 	add	x2, x0, #0x280
  400980:	b9801be3 	ldrsw	x3, [sp, #24]
  400984:	b9801fe1 	ldrsw	x1, [sp, #28]
  400988:	aa0103e0 	mov	x0, x1
  40098c:	d37be800 	lsl	x0, x0, #5
  400990:	cb010000 	sub	x0, x0, x1
  400994:	d37ef400 	lsl	x0, x0, #2
  400998:	8b010000 	add	x0, x0, x1
  40099c:	d37ef400 	lsl	x0, x0, #2
  4009a0:	8b030000 	add	x0, x0, x3
  4009a4:	b8207844 	str	w4, [x2, x0, lsl #2]
  4009a8:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  4009ac:	910a0002 	add	x2, x0, #0x280
  4009b0:	b9801be3 	ldrsw	x3, [sp, #24]
  4009b4:	b9801fe1 	ldrsw	x1, [sp, #28]
  4009b8:	aa0103e0 	mov	x0, x1
  4009bc:	d37be800 	lsl	x0, x0, #5
  4009c0:	cb010000 	sub	x0, x0, x1
  4009c4:	d37ef400 	lsl	x0, x0, #2
  4009c8:	8b010000 	add	x0, x0, x1
  4009cc:	d37ef400 	lsl	x0, x0, #2
  4009d0:	8b030000 	add	x0, x0, x3
  4009d4:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  4009d8:	b90017e0 	str	w0, [sp, #20]
  4009dc:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  4009e0:	910a0002 	add	x2, x0, #0x280
  4009e4:	b9801be3 	ldrsw	x3, [sp, #24]
  4009e8:	b9801fe1 	ldrsw	x1, [sp, #28]
  4009ec:	aa0103e0 	mov	x0, x1
  4009f0:	d37be800 	lsl	x0, x0, #5
  4009f4:	cb010000 	sub	x0, x0, x1
  4009f8:	d37ef400 	lsl	x0, x0, #2
  4009fc:	8b010000 	add	x0, x0, x1
  400a00:	d37ef400 	lsl	x0, x0, #2
  400a04:	8b030000 	add	x0, x0, x3
  400a08:	b8607841 	ldr	w1, [x2, x0, lsl #2]
  400a0c:	5290d4e0 	mov	w0, #0x86a7                	// #34471
  400a10:	72a00020 	movk	w0, #0x1, lsl #16
  400a14:	6b00003f 	cmp	w1, w0
  400a18:	540004ad 	b.le	400aac <InitializeMesh_2+0x154>
  400a1c:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400a20:	910a0002 	add	x2, x0, #0x280
  400a24:	b9801be3 	ldrsw	x3, [sp, #24]
  400a28:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a2c:	aa0103e0 	mov	x0, x1
  400a30:	d37be800 	lsl	x0, x0, #5
  400a34:	cb010000 	sub	x0, x0, x1
  400a38:	d37ef400 	lsl	x0, x0, #2
  400a3c:	8b010000 	add	x0, x0, x1
  400a40:	d37ef400 	lsl	x0, x0, #2
  400a44:	8b030000 	add	x0, x0, x3
  400a48:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400a4c:	529555a1 	mov	w1, #0xaaad                	// #43693
  400a50:	72b4f841 	movk	w1, #0xa7c2, lsl #16
  400a54:	9b217c01 	smull	x1, w0, w1
  400a58:	d360fc21 	lsr	x1, x1, #32
  400a5c:	0b010001 	add	w1, w0, w1
  400a60:	13107c22 	asr	w2, w1, #16
  400a64:	131f7c01 	asr	w1, w0, #31
  400a68:	4b010041 	sub	w1, w2, w1
  400a6c:	5290d4e2 	mov	w2, #0x86a7                	// #34471
  400a70:	72a00022 	movk	w2, #0x1, lsl #16
  400a74:	1b027c21 	mul	w1, w1, w2
  400a78:	4b010001 	sub	w1, w0, w1
  400a7c:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400a80:	910a0003 	add	x3, x0, #0x280
  400a84:	b9801be4 	ldrsw	x4, [sp, #24]
  400a88:	b9801fe2 	ldrsw	x2, [sp, #28]
  400a8c:	aa0203e0 	mov	x0, x2
  400a90:	d37be800 	lsl	x0, x0, #5
  400a94:	cb020000 	sub	x0, x0, x2
  400a98:	d37ef400 	lsl	x0, x0, #2
  400a9c:	8b020000 	add	x0, x0, x2
  400aa0:	d37ef400 	lsl	x0, x0, #2
  400aa4:	8b040000 	add	x0, x0, x4
  400aa8:	b8207861 	str	w1, [x3, x0, lsl #2]
  400aac:	b9401fe0 	ldr	w0, [sp, #28]
  400ab0:	11000400 	add	w0, w0, #0x1
  400ab4:	b9001fe0 	str	w0, [sp, #28]
  400ab8:	b9401fe0 	ldr	w0, [sp, #28]
  400abc:	7107cc1f 	cmp	w0, #0x1f3
  400ac0:	54fff58d 	b.le	400970 <InitializeMesh_2+0x18>
  400ac4:	b9401be0 	ldr	w0, [sp, #24]
  400ac8:	11000400 	add	w0, w0, #0x1
  400acc:	b9001be0 	str	w0, [sp, #24]
  400ad0:	b9401be0 	ldr	w0, [sp, #24]
  400ad4:	7107cc1f 	cmp	w0, #0x1f3
  400ad8:	54fff48d 	b.le	400968 <InitializeMesh_2+0x10>
  400adc:	d503201f 	nop
  400ae0:	d503201f 	nop
  400ae4:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400ae8:	d65f03c0 	ret

0000000000400aec <CompareMesh>:
  400aec:	d10043ff 	sub	sp, sp, #0x10
  400af0:	b9000fff 	str	wzr, [sp, #12]
  400af4:	b90007ff 	str	wzr, [sp, #4]
  400af8:	1400002d 	b	400bac <CompareMesh+0xc0>
  400afc:	b9000bff 	str	wzr, [sp, #8]
  400b00:	14000025 	b	400b94 <CompareMesh+0xa8>
  400b04:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400b08:	91010002 	add	x2, x0, #0x40
  400b0c:	b98007e3 	ldrsw	x3, [sp, #4]
  400b10:	b9800be1 	ldrsw	x1, [sp, #8]
  400b14:	aa0103e0 	mov	x0, x1
  400b18:	d37be800 	lsl	x0, x0, #5
  400b1c:	cb010000 	sub	x0, x0, x1
  400b20:	d37ef400 	lsl	x0, x0, #2
  400b24:	8b010000 	add	x0, x0, x1
  400b28:	d37ef400 	lsl	x0, x0, #2
  400b2c:	8b030000 	add	x0, x0, x3
  400b30:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400b34:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400b38:	910a0003 	add	x3, x0, #0x280
  400b3c:	b98007e4 	ldrsw	x4, [sp, #4]
  400b40:	b9800be1 	ldrsw	x1, [sp, #8]
  400b44:	aa0103e0 	mov	x0, x1
  400b48:	d37be800 	lsl	x0, x0, #5
  400b4c:	cb010000 	sub	x0, x0, x1
  400b50:	d37ef400 	lsl	x0, x0, #2
  400b54:	8b010000 	add	x0, x0, x1
  400b58:	d37ef400 	lsl	x0, x0, #2
  400b5c:	8b040000 	add	x0, x0, x4
  400b60:	b8607860 	ldr	w0, [x3, x0, lsl #2]
  400b64:	6b00005f 	cmp	w2, w0
  400b68:	540000ad 	b.le	400b7c <CompareMesh+0x90>
  400b6c:	b9400fe0 	ldr	w0, [sp, #12]
  400b70:	11000400 	add	w0, w0, #0x1
  400b74:	b9000fe0 	str	w0, [sp, #12]
  400b78:	14000004 	b	400b88 <CompareMesh+0x9c>
  400b7c:	b9400fe0 	ldr	w0, [sp, #12]
  400b80:	51000400 	sub	w0, w0, #0x1
  400b84:	b9000fe0 	str	w0, [sp, #12]
  400b88:	b9400be0 	ldr	w0, [sp, #8]
  400b8c:	11000400 	add	w0, w0, #0x1
  400b90:	b9000be0 	str	w0, [sp, #8]
  400b94:	b9400be0 	ldr	w0, [sp, #8]
  400b98:	7107cc1f 	cmp	w0, #0x1f3
  400b9c:	54fffb4d 	b.le	400b04 <CompareMesh+0x18>
  400ba0:	b94007e0 	ldr	w0, [sp, #4]
  400ba4:	11000400 	add	w0, w0, #0x1
  400ba8:	b90007e0 	str	w0, [sp, #4]
  400bac:	b94007e0 	ldr	w0, [sp, #4]
  400bb0:	7107cc1f 	cmp	w0, #0x1f3
  400bb4:	54fffa4d 	b.le	400afc <CompareMesh+0x10>
  400bb8:	b9400fe0 	ldr	w0, [sp, #12]
  400bbc:	7100001f 	cmp	w0, #0x0
  400bc0:	5400006b 	b.lt	400bcc <CompareMesh+0xe0>  // b.tstop
  400bc4:	52800020 	mov	w0, #0x1                   	// #1
  400bc8:	14000002 	b	400bd0 <CompareMesh+0xe4>
  400bcc:	52800000 	mov	w0, #0x0                   	// #0
  400bd0:	910043ff 	add	sp, sp, #0x10
  400bd4:	d65f03c0 	ret

0000000000400bd8 <Mesh2>:
  400bd8:	d10043ff 	sub	sp, sp, #0x10
  400bdc:	b9000fff 	str	wzr, [sp, #12]
  400be0:	1400005e 	b	400d58 <Mesh2+0x180>
  400be4:	b9000bff 	str	wzr, [sp, #8]
  400be8:	14000056 	b	400d40 <Mesh2+0x168>
  400bec:	b90007ff 	str	wzr, [sp, #4]
  400bf0:	1400004e 	b	400d28 <Mesh2+0x150>
  400bf4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400bf8:	91010002 	add	x2, x0, #0x40
  400bfc:	b98007e3 	ldrsw	x3, [sp, #4]
  400c00:	b9800fe1 	ldrsw	x1, [sp, #12]
  400c04:	aa0103e0 	mov	x0, x1
  400c08:	d37be800 	lsl	x0, x0, #5
  400c0c:	cb010000 	sub	x0, x0, x1
  400c10:	d37ef400 	lsl	x0, x0, #2
  400c14:	8b010000 	add	x0, x0, x1
  400c18:	d37ef400 	lsl	x0, x0, #2
  400c1c:	8b030000 	add	x0, x0, x3
  400c20:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400c24:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400c28:	91010003 	add	x3, x0, #0x40
  400c2c:	b98007e4 	ldrsw	x4, [sp, #4]
  400c30:	b9800fe1 	ldrsw	x1, [sp, #12]
  400c34:	aa0103e0 	mov	x0, x1
  400c38:	d37be800 	lsl	x0, x0, #5
  400c3c:	cb010000 	sub	x0, x0, x1
  400c40:	d37ef400 	lsl	x0, x0, #2
  400c44:	8b010000 	add	x0, x0, x1
  400c48:	d37ef400 	lsl	x0, x0, #2
  400c4c:	8b040000 	add	x0, x0, x4
  400c50:	b8607860 	ldr	w0, [x3, x0, lsl #2]
  400c54:	1b007c43 	mul	w3, w2, w0
  400c58:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400c5c:	91010002 	add	x2, x0, #0x40
  400c60:	b9800be4 	ldrsw	x4, [sp, #8]
  400c64:	b9800fe1 	ldrsw	x1, [sp, #12]
  400c68:	aa0103e0 	mov	x0, x1
  400c6c:	d37be800 	lsl	x0, x0, #5
  400c70:	cb010000 	sub	x0, x0, x1
  400c74:	d37ef400 	lsl	x0, x0, #2
  400c78:	8b010000 	add	x0, x0, x1
  400c7c:	d37ef400 	lsl	x0, x0, #2
  400c80:	8b040000 	add	x0, x0, x4
  400c84:	b8207843 	str	w3, [x2, x0, lsl #2]
  400c88:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400c8c:	910a0002 	add	x2, x0, #0x280
  400c90:	b9800be3 	ldrsw	x3, [sp, #8]
  400c94:	b98007e1 	ldrsw	x1, [sp, #4]
  400c98:	aa0103e0 	mov	x0, x1
  400c9c:	d37be800 	lsl	x0, x0, #5
  400ca0:	cb010000 	sub	x0, x0, x1
  400ca4:	d37ef400 	lsl	x0, x0, #2
  400ca8:	8b010000 	add	x0, x0, x1
  400cac:	d37ef400 	lsl	x0, x0, #2
  400cb0:	8b030000 	add	x0, x0, x3
  400cb4:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400cb8:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400cbc:	910a0003 	add	x3, x0, #0x280
  400cc0:	b9800be4 	ldrsw	x4, [sp, #8]
  400cc4:	b98007e1 	ldrsw	x1, [sp, #4]
  400cc8:	aa0103e0 	mov	x0, x1
  400ccc:	d37be800 	lsl	x0, x0, #5
  400cd0:	cb010000 	sub	x0, x0, x1
  400cd4:	d37ef400 	lsl	x0, x0, #2
  400cd8:	8b010000 	add	x0, x0, x1
  400cdc:	d37ef400 	lsl	x0, x0, #2
  400ce0:	8b040000 	add	x0, x0, x4
  400ce4:	b8607860 	ldr	w0, [x3, x0, lsl #2]
  400ce8:	1b007c43 	mul	w3, w2, w0
  400cec:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400cf0:	910a0002 	add	x2, x0, #0x280
  400cf4:	b9800be4 	ldrsw	x4, [sp, #8]
  400cf8:	b9800fe1 	ldrsw	x1, [sp, #12]
  400cfc:	aa0103e0 	mov	x0, x1
  400d00:	d37be800 	lsl	x0, x0, #5
  400d04:	cb010000 	sub	x0, x0, x1
  400d08:	d37ef400 	lsl	x0, x0, #2
  400d0c:	8b010000 	add	x0, x0, x1
  400d10:	d37ef400 	lsl	x0, x0, #2
  400d14:	8b040000 	add	x0, x0, x4
  400d18:	b8207843 	str	w3, [x2, x0, lsl #2]
  400d1c:	b94007e0 	ldr	w0, [sp, #4]
  400d20:	11000400 	add	w0, w0, #0x1
  400d24:	b90007e0 	str	w0, [sp, #4]
  400d28:	b94007e0 	ldr	w0, [sp, #4]
  400d2c:	7107cc1f 	cmp	w0, #0x1f3
  400d30:	54fff62d 	b.le	400bf4 <Mesh2+0x1c>
  400d34:	b9400be0 	ldr	w0, [sp, #8]
  400d38:	11000400 	add	w0, w0, #0x1
  400d3c:	b9000be0 	str	w0, [sp, #8]
  400d40:	b9400be0 	ldr	w0, [sp, #8]
  400d44:	7107cc1f 	cmp	w0, #0x1f3
  400d48:	54fff52d 	b.le	400bec <Mesh2+0x14>
  400d4c:	b9400fe0 	ldr	w0, [sp, #12]
  400d50:	11000400 	add	w0, w0, #0x1
  400d54:	b9000fe0 	str	w0, [sp, #12]
  400d58:	b9400fe0 	ldr	w0, [sp, #12]
  400d5c:	7107cc1f 	cmp	w0, #0x1f3
  400d60:	54fff42d 	b.le	400be4 <Mesh2+0xc>
  400d64:	52800000 	mov	w0, #0x0                   	// #0
  400d68:	910043ff 	add	sp, sp, #0x10
  400d6c:	d65f03c0 	ret

0000000000400d70 <SwapMesh>:
  400d70:	d10043ff 	sub	sp, sp, #0x10
  400d74:	b9000bff 	str	wzr, [sp, #8]
  400d78:	1400003e 	b	400e70 <SwapMesh+0x100>
  400d7c:	b9000fff 	str	wzr, [sp, #12]
  400d80:	14000036 	b	400e58 <SwapMesh+0xe8>
  400d84:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400d88:	91010002 	add	x2, x0, #0x40
  400d8c:	b9800be3 	ldrsw	x3, [sp, #8]
  400d90:	b9800fe1 	ldrsw	x1, [sp, #12]
  400d94:	aa0103e0 	mov	x0, x1
  400d98:	d37be800 	lsl	x0, x0, #5
  400d9c:	cb010000 	sub	x0, x0, x1
  400da0:	d37ef400 	lsl	x0, x0, #2
  400da4:	8b010000 	add	x0, x0, x1
  400da8:	d37ef400 	lsl	x0, x0, #2
  400dac:	8b030000 	add	x0, x0, x3
  400db0:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400db4:	b90007e0 	str	w0, [sp, #4]
  400db8:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400dbc:	910a0002 	add	x2, x0, #0x280
  400dc0:	b9800be3 	ldrsw	x3, [sp, #8]
  400dc4:	b9800fe1 	ldrsw	x1, [sp, #12]
  400dc8:	aa0103e0 	mov	x0, x1
  400dcc:	d37be800 	lsl	x0, x0, #5
  400dd0:	cb010000 	sub	x0, x0, x1
  400dd4:	d37ef400 	lsl	x0, x0, #2
  400dd8:	8b010000 	add	x0, x0, x1
  400ddc:	d37ef400 	lsl	x0, x0, #2
  400de0:	8b030000 	add	x0, x0, x3
  400de4:	b8607843 	ldr	w3, [x2, x0, lsl #2]
  400de8:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400dec:	91010002 	add	x2, x0, #0x40
  400df0:	b9800be4 	ldrsw	x4, [sp, #8]
  400df4:	b9800fe1 	ldrsw	x1, [sp, #12]
  400df8:	aa0103e0 	mov	x0, x1
  400dfc:	d37be800 	lsl	x0, x0, #5
  400e00:	cb010000 	sub	x0, x0, x1
  400e04:	d37ef400 	lsl	x0, x0, #2
  400e08:	8b010000 	add	x0, x0, x1
  400e0c:	d37ef400 	lsl	x0, x0, #2
  400e10:	8b040000 	add	x0, x0, x4
  400e14:	b8207843 	str	w3, [x2, x0, lsl #2]
  400e18:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400e1c:	910a0002 	add	x2, x0, #0x280
  400e20:	b9800be3 	ldrsw	x3, [sp, #8]
  400e24:	b9800fe1 	ldrsw	x1, [sp, #12]
  400e28:	aa0103e0 	mov	x0, x1
  400e2c:	d37be800 	lsl	x0, x0, #5
  400e30:	cb010000 	sub	x0, x0, x1
  400e34:	d37ef400 	lsl	x0, x0, #2
  400e38:	8b010000 	add	x0, x0, x1
  400e3c:	d37ef400 	lsl	x0, x0, #2
  400e40:	8b030000 	add	x0, x0, x3
  400e44:	b94007e1 	ldr	w1, [sp, #4]
  400e48:	b8207841 	str	w1, [x2, x0, lsl #2]
  400e4c:	b9400fe0 	ldr	w0, [sp, #12]
  400e50:	11000400 	add	w0, w0, #0x1
  400e54:	b9000fe0 	str	w0, [sp, #12]
  400e58:	b9400fe0 	ldr	w0, [sp, #12]
  400e5c:	7107cc1f 	cmp	w0, #0x1f3
  400e60:	54fff92d 	b.le	400d84 <SwapMesh+0x14>
  400e64:	b9400be0 	ldr	w0, [sp, #8]
  400e68:	11000400 	add	w0, w0, #0x1
  400e6c:	b9000be0 	str	w0, [sp, #8]
  400e70:	b9400be0 	ldr	w0, [sp, #8]
  400e74:	7107cc1f 	cmp	w0, #0x1f3
  400e78:	54fff82d 	b.le	400d7c <SwapMesh+0xc>
  400e7c:	52800000 	mov	w0, #0x0                   	// #0
  400e80:	910043ff 	add	sp, sp, #0x10
  400e84:	d65f03c0 	ret

0000000000400e88 <Mesh_dot>:
  400e88:	d10043ff 	sub	sp, sp, #0x10
  400e8c:	b9000fff 	str	wzr, [sp, #12]
  400e90:	14000046 	b	400fa8 <Mesh_dot+0x120>
  400e94:	b9000bff 	str	wzr, [sp, #8]
  400e98:	1400003e 	b	400f90 <Mesh_dot+0x108>
  400e9c:	b90007ff 	str	wzr, [sp, #4]
  400ea0:	14000036 	b	400f78 <Mesh_dot+0xf0>
  400ea4:	90001040 	adrp	x0, 608000 <ms2+0xf3d80>
  400ea8:	91130002 	add	x2, x0, #0x4c0
  400eac:	b9800be3 	ldrsw	x3, [sp, #8]
  400eb0:	b9800fe1 	ldrsw	x1, [sp, #12]
  400eb4:	aa0103e0 	mov	x0, x1
  400eb8:	d37be800 	lsl	x0, x0, #5
  400ebc:	cb010000 	sub	x0, x0, x1
  400ec0:	d37ef400 	lsl	x0, x0, #2
  400ec4:	8b010000 	add	x0, x0, x1
  400ec8:	d37ef400 	lsl	x0, x0, #2
  400ecc:	8b030000 	add	x0, x0, x3
  400ed0:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400ed4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400ed8:	91010003 	add	x3, x0, #0x40
  400edc:	b98007e4 	ldrsw	x4, [sp, #4]
  400ee0:	b9800fe1 	ldrsw	x1, [sp, #12]
  400ee4:	aa0103e0 	mov	x0, x1
  400ee8:	d37be800 	lsl	x0, x0, #5
  400eec:	cb010000 	sub	x0, x0, x1
  400ef0:	d37ef400 	lsl	x0, x0, #2
  400ef4:	8b010000 	add	x0, x0, x1
  400ef8:	d37ef400 	lsl	x0, x0, #2
  400efc:	8b040000 	add	x0, x0, x4
  400f00:	b8607863 	ldr	w3, [x3, x0, lsl #2]
  400f04:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400f08:	910a0004 	add	x4, x0, #0x280
  400f0c:	b9800be5 	ldrsw	x5, [sp, #8]
  400f10:	b98007e1 	ldrsw	x1, [sp, #4]
  400f14:	aa0103e0 	mov	x0, x1
  400f18:	d37be800 	lsl	x0, x0, #5
  400f1c:	cb010000 	sub	x0, x0, x1
  400f20:	d37ef400 	lsl	x0, x0, #2
  400f24:	8b010000 	add	x0, x0, x1
  400f28:	d37ef400 	lsl	x0, x0, #2
  400f2c:	8b050000 	add	x0, x0, x5
  400f30:	b8607880 	ldr	w0, [x4, x0, lsl #2]
  400f34:	1b007c60 	mul	w0, w3, w0
  400f38:	0b000043 	add	w3, w2, w0
  400f3c:	90001040 	adrp	x0, 608000 <ms2+0xf3d80>
  400f40:	91130002 	add	x2, x0, #0x4c0
  400f44:	b9800be4 	ldrsw	x4, [sp, #8]
  400f48:	b9800fe1 	ldrsw	x1, [sp, #12]
  400f4c:	aa0103e0 	mov	x0, x1
  400f50:	d37be800 	lsl	x0, x0, #5
  400f54:	cb010000 	sub	x0, x0, x1
  400f58:	d37ef400 	lsl	x0, x0, #2
  400f5c:	8b010000 	add	x0, x0, x1
  400f60:	d37ef400 	lsl	x0, x0, #2
  400f64:	8b040000 	add	x0, x0, x4
  400f68:	b8207843 	str	w3, [x2, x0, lsl #2]
  400f6c:	b94007e0 	ldr	w0, [sp, #4]
  400f70:	11000400 	add	w0, w0, #0x1
  400f74:	b90007e0 	str	w0, [sp, #4]
  400f78:	b94007e0 	ldr	w0, [sp, #4]
  400f7c:	7107cc1f 	cmp	w0, #0x1f3
  400f80:	54fff92d 	b.le	400ea4 <Mesh_dot+0x1c>
  400f84:	b9400be0 	ldr	w0, [sp, #8]
  400f88:	11000400 	add	w0, w0, #0x1
  400f8c:	b9000be0 	str	w0, [sp, #8]
  400f90:	b9400be0 	ldr	w0, [sp, #8]
  400f94:	7107cc1f 	cmp	w0, #0x1f3
  400f98:	54fff82d 	b.le	400e9c <Mesh_dot+0x14>
  400f9c:	b9400fe0 	ldr	w0, [sp, #12]
  400fa0:	11000400 	add	w0, w0, #0x1
  400fa4:	b9000fe0 	str	w0, [sp, #12]
  400fa8:	b9400fe0 	ldr	w0, [sp, #12]
  400fac:	7107cc1f 	cmp	w0, #0x1f3
  400fb0:	54fff72d 	b.le	400e94 <Mesh_dot+0xc>
  400fb4:	52800000 	mov	w0, #0x0                   	// #0
  400fb8:	910043ff 	add	sp, sp, #0x10
  400fbc:	d65f03c0 	ret

0000000000400fc0 <ComplexDataHandle>:
  400fc0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400fc4:	910003fd 	mov	x29, sp
  400fc8:	94000007 	bl	400fe4 <ManiplateData1>
  400fcc:	b9001fe0 	str	w0, [sp, #28]
  400fd0:	94000051 	bl	401114 <ManiplateData2>
  400fd4:	b9001fe0 	str	w0, [sp, #28]
  400fd8:	52800000 	mov	w0, #0x0                   	// #0
  400fdc:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400fe0:	d65f03c0 	ret

0000000000400fe4 <ManiplateData1>:
  400fe4:	d10043ff 	sub	sp, sp, #0x10
  400fe8:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400fec:	91010000 	add	x0, x0, #0x40
  400ff0:	52800281 	mov	w1, #0x14                  	// #20
  400ff4:	b907d401 	str	w1, [x0, #2004]
  400ff8:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400ffc:	91010000 	add	x0, x0, #0x40
  401000:	b947d400 	ldr	w0, [x0, #2004]
  401004:	b9000fe0 	str	w0, [sp, #12]
  401008:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40100c:	91010000 	add	x0, x0, #0x40
  401010:	528003c1 	mov	w1, #0x1e                  	// #30
  401014:	b907d401 	str	w1, [x0, #2004]
  401018:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40101c:	91010000 	add	x0, x0, #0x40
  401020:	b947d400 	ldr	w0, [x0, #2004]
  401024:	b9000fe0 	str	w0, [sp, #12]
  401028:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40102c:	91010000 	add	x0, x0, #0x40
  401030:	b947d400 	ldr	w0, [x0, #2004]
  401034:	b9000fe0 	str	w0, [sp, #12]
  401038:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40103c:	91010000 	add	x0, x0, #0x40
  401040:	52800641 	mov	w1, #0x32                  	// #50
  401044:	b90fa401 	str	w1, [x0, #4004]
  401048:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40104c:	91010000 	add	x0, x0, #0x40
  401050:	52800781 	mov	w1, #0x3c                  	// #60
  401054:	b90fa401 	str	w1, [x0, #4004]
  401058:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40105c:	91010000 	add	x0, x0, #0x40
  401060:	528008c1 	mov	w1, #0x46                  	// #70
  401064:	b90fa401 	str	w1, [x0, #4004]
  401068:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40106c:	91010000 	add	x0, x0, #0x40
  401070:	b94fa400 	ldr	w0, [x0, #4004]
  401074:	b9000fe0 	str	w0, [sp, #12]
  401078:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40107c:	91010000 	add	x0, x0, #0x40
  401080:	b94fa400 	ldr	w0, [x0, #4004]
  401084:	b9000fe0 	str	w0, [sp, #12]
  401088:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40108c:	91010000 	add	x0, x0, #0x40
  401090:	52800c61 	mov	w1, #0x63                  	// #99
  401094:	b90fa401 	str	w1, [x0, #4004]
  401098:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40109c:	91010000 	add	x0, x0, #0x40
  4010a0:	b94fa400 	ldr	w0, [x0, #4004]
  4010a4:	b9000fe0 	str	w0, [sp, #12]
  4010a8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4010ac:	91010000 	add	x0, x0, #0x40
  4010b0:	52800501 	mov	w1, #0x28                  	// #40
  4010b4:	b907d801 	str	w1, [x0, #2008]
  4010b8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4010bc:	91010000 	add	x0, x0, #0x40
  4010c0:	b947d400 	ldr	w0, [x0, #2004]
  4010c4:	b9000fe0 	str	w0, [sp, #12]
  4010c8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4010cc:	91010000 	add	x0, x0, #0x40
  4010d0:	528003c1 	mov	w1, #0x1e                  	// #30
  4010d4:	b907d801 	str	w1, [x0, #2008]
  4010d8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4010dc:	91010000 	add	x0, x0, #0x40
  4010e0:	b947d800 	ldr	w0, [x0, #2008]
  4010e4:	b9000fe0 	str	w0, [sp, #12]
  4010e8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4010ec:	91010000 	add	x0, x0, #0x40
  4010f0:	b947d800 	ldr	w0, [x0, #2008]
  4010f4:	b9000fe0 	str	w0, [sp, #12]
  4010f8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4010fc:	91010000 	add	x0, x0, #0x40
  401100:	52800641 	mov	w1, #0x32                  	// #50
  401104:	b907d801 	str	w1, [x0, #2008]
  401108:	52800000 	mov	w0, #0x0                   	// #0
  40110c:	910043ff 	add	sp, sp, #0x10
  401110:	d65f03c0 	ret

0000000000401114 <ManiplateData2>:
  401114:	d10043ff 	sub	sp, sp, #0x10
  401118:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40111c:	910a0000 	add	x0, x0, #0x280
  401120:	52800281 	mov	w1, #0x14                  	// #20
  401124:	b907d401 	str	w1, [x0, #2004]
  401128:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40112c:	910a0000 	add	x0, x0, #0x280
  401130:	b947d400 	ldr	w0, [x0, #2004]
  401134:	b9000fe0 	str	w0, [sp, #12]
  401138:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40113c:	910a0000 	add	x0, x0, #0x280
  401140:	528003c1 	mov	w1, #0x1e                  	// #30
  401144:	b907d401 	str	w1, [x0, #2004]
  401148:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40114c:	910a0000 	add	x0, x0, #0x280
  401150:	b947d400 	ldr	w0, [x0, #2004]
  401154:	b9000fe0 	str	w0, [sp, #12]
  401158:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40115c:	910a0000 	add	x0, x0, #0x280
  401160:	b947d400 	ldr	w0, [x0, #2004]
  401164:	b9000fe0 	str	w0, [sp, #12]
  401168:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40116c:	910a0000 	add	x0, x0, #0x280
  401170:	52800641 	mov	w1, #0x32                  	// #50
  401174:	b90fa401 	str	w1, [x0, #4004]
  401178:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40117c:	910a0000 	add	x0, x0, #0x280
  401180:	52800781 	mov	w1, #0x3c                  	// #60
  401184:	b90fa401 	str	w1, [x0, #4004]
  401188:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40118c:	910a0000 	add	x0, x0, #0x280
  401190:	528008c1 	mov	w1, #0x46                  	// #70
  401194:	b90fa401 	str	w1, [x0, #4004]
  401198:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40119c:	910a0000 	add	x0, x0, #0x280
  4011a0:	b94fa400 	ldr	w0, [x0, #4004]
  4011a4:	b9000fe0 	str	w0, [sp, #12]
  4011a8:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  4011ac:	910a0000 	add	x0, x0, #0x280
  4011b0:	b94fa400 	ldr	w0, [x0, #4004]
  4011b4:	b9000fe0 	str	w0, [sp, #12]
  4011b8:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  4011bc:	910a0000 	add	x0, x0, #0x280
  4011c0:	52800c61 	mov	w1, #0x63                  	// #99
  4011c4:	b90fa401 	str	w1, [x0, #4004]
  4011c8:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  4011cc:	910a0000 	add	x0, x0, #0x280
  4011d0:	b94fa400 	ldr	w0, [x0, #4004]
  4011d4:	b9000fe0 	str	w0, [sp, #12]
  4011d8:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  4011dc:	910a0000 	add	x0, x0, #0x280
  4011e0:	52800501 	mov	w1, #0x28                  	// #40
  4011e4:	b907d801 	str	w1, [x0, #2008]
  4011e8:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  4011ec:	910a0000 	add	x0, x0, #0x280
  4011f0:	b947d800 	ldr	w0, [x0, #2008]
  4011f4:	b9000fe0 	str	w0, [sp, #12]
  4011f8:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  4011fc:	910a0000 	add	x0, x0, #0x280
  401200:	528003c1 	mov	w1, #0x1e                  	// #30
  401204:	b907d801 	str	w1, [x0, #2008]
  401208:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40120c:	910a0000 	add	x0, x0, #0x280
  401210:	b947d800 	ldr	w0, [x0, #2008]
  401214:	b9000fe0 	str	w0, [sp, #12]
  401218:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40121c:	910a0000 	add	x0, x0, #0x280
  401220:	b947d800 	ldr	w0, [x0, #2008]
  401224:	b9000fe0 	str	w0, [sp, #12]
  401228:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40122c:	910a0000 	add	x0, x0, #0x280
  401230:	52800641 	mov	w1, #0x32                  	// #50
  401234:	b907d801 	str	w1, [x0, #2008]
  401238:	52800000 	mov	w0, #0x0                   	// #0
  40123c:	910043ff 	add	sp, sp, #0x10
  401240:	d65f03c0 	ret

Disassembly of section .fini:

0000000000401244 <_fini>:
  401244:	d503201f 	nop
  401248:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  40124c:	910003fd 	mov	x29, sp
  401250:	a8c17bfd 	ldp	x29, x30, [sp], #16
  401254:	d65f03c0 	ret
