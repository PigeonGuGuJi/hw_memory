
spec_bench_mark.out：     文件格式 elf64-littleaarch64


Disassembly of section .init:

0000000000400620 <_init>:
  400620:	d503201f 	nop
  400624:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400628:	910003fd 	mov	x29, sp
  40062c:	94000046 	bl	400744 <call_weak_fn>
  400630:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400634:	d65f03c0 	ret

Disassembly of section .plt:

0000000000400640 <.plt>:
  400640:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
  400644:	f00000f0 	adrp	x16, 41f000 <__FRAME_END__+0x1d778>
  400648:	f947fe11 	ldr	x17, [x16, #4088]
  40064c:	913fe210 	add	x16, x16, #0xff8
  400650:	d61f0220 	br	x17
  400654:	d503201f 	nop
  400658:	d503201f 	nop
  40065c:	d503201f 	nop

0000000000400660 <__libc_start_main@plt>:
  400660:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400664:	f9400211 	ldr	x17, [x16]
  400668:	91000210 	add	x16, x16, #0x0
  40066c:	d61f0220 	br	x17

0000000000400670 <fclose@plt>:
  400670:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400674:	f9400611 	ldr	x17, [x16, #8]
  400678:	91002210 	add	x16, x16, #0x8
  40067c:	d61f0220 	br	x17

0000000000400680 <fopen@plt>:
  400680:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400684:	f9400a11 	ldr	x17, [x16, #16]
  400688:	91004210 	add	x16, x16, #0x10
  40068c:	d61f0220 	br	x17

0000000000400690 <random@plt>:
  400690:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400694:	f9400e11 	ldr	x17, [x16, #24]
  400698:	91006210 	add	x16, x16, #0x18
  40069c:	d61f0220 	br	x17

00000000004006a0 <__gmon_start__@plt>:
  4006a0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006a4:	f9401211 	ldr	x17, [x16, #32]
  4006a8:	91008210 	add	x16, x16, #0x20
  4006ac:	d61f0220 	br	x17

00000000004006b0 <abort@plt>:
  4006b0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006b4:	f9401611 	ldr	x17, [x16, #40]
  4006b8:	9100a210 	add	x16, x16, #0x28
  4006bc:	d61f0220 	br	x17

00000000004006c0 <fwrite@plt>:
  4006c0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006c4:	f9401a11 	ldr	x17, [x16, #48]
  4006c8:	9100c210 	add	x16, x16, #0x30
  4006cc:	d61f0220 	br	x17

00000000004006d0 <printf@plt>:
  4006d0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006d4:	f9401e11 	ldr	x17, [x16, #56]
  4006d8:	9100e210 	add	x16, x16, #0x38
  4006dc:	d61f0220 	br	x17

00000000004006e0 <fprintf@plt>:
  4006e0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006e4:	f9402211 	ldr	x17, [x16, #64]
  4006e8:	91010210 	add	x16, x16, #0x40
  4006ec:	d61f0220 	br	x17

00000000004006f0 <fgets@plt>:
  4006f0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006f4:	f9402611 	ldr	x17, [x16, #72]
  4006f8:	91012210 	add	x16, x16, #0x48
  4006fc:	d61f0220 	br	x17

Disassembly of section .text:

0000000000400700 <_start>:
  400700:	d503201f 	nop
  400704:	d280001d 	mov	x29, #0x0                   	// #0
  400708:	d280001e 	mov	x30, #0x0                   	// #0
  40070c:	aa0003e5 	mov	x5, x0
  400710:	f94003e1 	ldr	x1, [sp]
  400714:	910023e2 	add	x2, sp, #0x8
  400718:	910003e6 	mov	x6, sp
  40071c:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400720:	911cd000 	add	x0, x0, #0x734
  400724:	d2800003 	mov	x3, #0x0                   	// #0
  400728:	d2800004 	mov	x4, #0x0                   	// #0
  40072c:	97ffffcd 	bl	400660 <__libc_start_main@plt>
  400730:	97ffffe0 	bl	4006b0 <abort@plt>

0000000000400734 <__wrap_main>:
  400734:	d503201f 	nop
  400738:	14000033 	b	400804 <main>
  40073c:	d503201f 	nop

0000000000400740 <_dl_relocate_static_pie>:
  400740:	d65f03c0 	ret

0000000000400744 <call_weak_fn>:
  400744:	f00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1d778>
  400748:	f947ec00 	ldr	x0, [x0, #4056]
  40074c:	b4000040 	cbz	x0, 400754 <call_weak_fn+0x10>
  400750:	17ffffd4 	b	4006a0 <__gmon_start__@plt>
  400754:	d65f03c0 	ret
  400758:	d503201f 	nop
  40075c:	d503201f 	nop

0000000000400760 <deregister_tm_clones>:
  400760:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400764:	91018000 	add	x0, x0, #0x60
  400768:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  40076c:	91018021 	add	x1, x1, #0x60
  400770:	eb00003f 	cmp	x1, x0
  400774:	540000c0 	b.eq	40078c <deregister_tm_clones+0x2c>  // b.none
  400778:	f00000e1 	adrp	x1, 41f000 <__FRAME_END__+0x1d778>
  40077c:	f947e821 	ldr	x1, [x1, #4048]
  400780:	b4000061 	cbz	x1, 40078c <deregister_tm_clones+0x2c>
  400784:	aa0103f0 	mov	x16, x1
  400788:	d61f0200 	br	x16
  40078c:	d65f03c0 	ret

0000000000400790 <register_tm_clones>:
  400790:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400794:	91018000 	add	x0, x0, #0x60
  400798:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  40079c:	91018021 	add	x1, x1, #0x60
  4007a0:	cb000021 	sub	x1, x1, x0
  4007a4:	d37ffc22 	lsr	x2, x1, #63
  4007a8:	8b810c41 	add	x1, x2, x1, asr #3
  4007ac:	9341fc21 	asr	x1, x1, #1
  4007b0:	b40000c1 	cbz	x1, 4007c8 <register_tm_clones+0x38>
  4007b4:	f00000e2 	adrp	x2, 41f000 <__FRAME_END__+0x1d778>
  4007b8:	f947f042 	ldr	x2, [x2, #4064]
  4007bc:	b4000062 	cbz	x2, 4007c8 <register_tm_clones+0x38>
  4007c0:	aa0203f0 	mov	x16, x2
  4007c4:	d61f0200 	br	x16
  4007c8:	d65f03c0 	ret
  4007cc:	d503201f 	nop

00000000004007d0 <__do_global_dtors_aux>:
  4007d0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  4007d4:	910003fd 	mov	x29, sp
  4007d8:	f9000bf3 	str	x19, [sp, #16]
  4007dc:	90000113 	adrp	x19, 420000 <__libc_start_main@GLIBC_2.34>
  4007e0:	39418260 	ldrb	w0, [x19, #96]
  4007e4:	35000080 	cbnz	w0, 4007f4 <__do_global_dtors_aux+0x24>
  4007e8:	97ffffde 	bl	400760 <deregister_tm_clones>
  4007ec:	52800020 	mov	w0, #0x1                   	// #1
  4007f0:	39018260 	strb	w0, [x19, #96]
  4007f4:	f9400bf3 	ldr	x19, [sp, #16]
  4007f8:	a8c27bfd 	ldp	x29, x30, [sp], #32
  4007fc:	d65f03c0 	ret

0000000000400800 <frame_dummy>:
  400800:	17ffffe4 	b	400790 <register_tm_clones>

0000000000400804 <main>:
  400804:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
  400808:	910003fd 	mov	x29, sp
  40080c:	b9001fe0 	str	w0, [sp, #28]
  400810:	f9000be1 	str	x1, [sp, #16]
  400814:	9400025e 	bl	40118c <LoadData>
  400818:	b9002fff 	str	wzr, [sp, #44]
  40081c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400820:	9101a000 	add	x0, x0, #0x68
  400824:	91402000 	add	x0, x0, #0x8, lsl #12
  400828:	b95c3c00 	ldr	w0, [x0, #7228]
  40082c:	7100001f 	cmp	w0, #0x0
  400830:	54000061 	b.ne	40083c <main+0x38>  // b.any
  400834:	94000013 	bl	400880 <InitializeMesh_1>
  400838:	940000c5 	bl	400b4c <InitializeMesh_2>
  40083c:	94000184 	bl	400e4c <CompareMesh>
  400840:	b9002fe0 	str	w0, [sp, #44]
  400844:	b9402fe0 	ldr	w0, [sp, #44]
  400848:	7100001f 	cmp	w0, #0x0
  40084c:	54000100 	b.eq	40086c <main+0x68>  // b.none
  400850:	94000208 	bl	401070 <SwapMesh>
  400854:	b9002fe0 	str	w0, [sp, #44]
  400858:	940001b8 	bl	400f38 <Mesh_dot>
  40085c:	2a0003e1 	mov	w1, w0
  400860:	b00001e0 	adrp	x0, 43d000 <ms3+0x9718>
  400864:	9114a000 	add	x0, x0, #0x528
  400868:	b9000001 	str	w1, [x0]
  40086c:	94000263 	bl	4011f8 <ComplexDataHandle>
  400870:	94000303 	bl	40147c <StoreData>
  400874:	52800000 	mov	w0, #0x0                   	// #0
  400878:	a8c37bfd 	ldp	x29, x30, [sp], #48
  40087c:	d65f03c0 	ret

0000000000400880 <InitializeMesh_1>:
  400880:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400884:	910003fd 	mov	x29, sp
  400888:	b9001bff 	str	wzr, [sp, #24]
  40088c:	140000a9 	b	400b30 <InitializeMesh_1+0x2b0>
  400890:	b9001fff 	str	wzr, [sp, #28]
  400894:	140000a1 	b	400b18 <InitializeMesh_1+0x298>
  400898:	97ffff7e 	bl	400690 <random@plt>
  40089c:	2a0003e4 	mov	w4, w0
  4008a0:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4008a4:	9101a002 	add	x2, x0, #0x68
  4008a8:	b9801be3 	ldrsw	x3, [sp, #24]
  4008ac:	b9801fe1 	ldrsw	x1, [sp, #28]
  4008b0:	aa0103e0 	mov	x0, x1
  4008b4:	d37ff800 	lsl	x0, x0, #1
  4008b8:	8b010000 	add	x0, x0, x1
  4008bc:	d37df000 	lsl	x0, x0, #3
  4008c0:	8b010000 	add	x0, x0, x1
  4008c4:	d37ef400 	lsl	x0, x0, #2
  4008c8:	8b030000 	add	x0, x0, x3
  4008cc:	b8207844 	str	w4, [x2, x0, lsl #2]
  4008d0:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4008d4:	9101a002 	add	x2, x0, #0x68
  4008d8:	b9801be3 	ldrsw	x3, [sp, #24]
  4008dc:	b9801fe1 	ldrsw	x1, [sp, #28]
  4008e0:	aa0103e0 	mov	x0, x1
  4008e4:	d37ff800 	lsl	x0, x0, #1
  4008e8:	8b010000 	add	x0, x0, x1
  4008ec:	d37df000 	lsl	x0, x0, #3
  4008f0:	8b010000 	add	x0, x0, x1
  4008f4:	d37ef400 	lsl	x0, x0, #2
  4008f8:	8b030000 	add	x0, x0, x3
  4008fc:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400900:	b90017e0 	str	w0, [sp, #20]
  400904:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400908:	9101a002 	add	x2, x0, #0x68
  40090c:	b9801be3 	ldrsw	x3, [sp, #24]
  400910:	b9801fe1 	ldrsw	x1, [sp, #28]
  400914:	aa0103e0 	mov	x0, x1
  400918:	d37ff800 	lsl	x0, x0, #1
  40091c:	8b010000 	add	x0, x0, x1
  400920:	d37df000 	lsl	x0, x0, #3
  400924:	8b010000 	add	x0, x0, x1
  400928:	d37ef400 	lsl	x0, x0, #2
  40092c:	8b030000 	add	x0, x0, x3
  400930:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400934:	b90017e0 	str	w0, [sp, #20]
  400938:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40093c:	9101a002 	add	x2, x0, #0x68
  400940:	b9801be3 	ldrsw	x3, [sp, #24]
  400944:	b9801fe1 	ldrsw	x1, [sp, #28]
  400948:	aa0103e0 	mov	x0, x1
  40094c:	d37ff800 	lsl	x0, x0, #1
  400950:	8b010000 	add	x0, x0, x1
  400954:	d37df000 	lsl	x0, x0, #3
  400958:	8b010000 	add	x0, x0, x1
  40095c:	d37ef400 	lsl	x0, x0, #2
  400960:	8b030000 	add	x0, x0, x3
  400964:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400968:	b90017e0 	str	w0, [sp, #20]
  40096c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400970:	9101a002 	add	x2, x0, #0x68
  400974:	b9801be3 	ldrsw	x3, [sp, #24]
  400978:	b9801fe1 	ldrsw	x1, [sp, #28]
  40097c:	aa0103e0 	mov	x0, x1
  400980:	d37ff800 	lsl	x0, x0, #1
  400984:	8b010000 	add	x0, x0, x1
  400988:	d37df000 	lsl	x0, x0, #3
  40098c:	8b010000 	add	x0, x0, x1
  400990:	d37ef400 	lsl	x0, x0, #2
  400994:	8b030000 	add	x0, x0, x3
  400998:	52800021 	mov	w1, #0x1                   	// #1
  40099c:	b8207841 	str	w1, [x2, x0, lsl #2]
  4009a0:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4009a4:	9101a002 	add	x2, x0, #0x68
  4009a8:	b9801be3 	ldrsw	x3, [sp, #24]
  4009ac:	b9801fe1 	ldrsw	x1, [sp, #28]
  4009b0:	aa0103e0 	mov	x0, x1
  4009b4:	d37ff800 	lsl	x0, x0, #1
  4009b8:	8b010000 	add	x0, x0, x1
  4009bc:	d37df000 	lsl	x0, x0, #3
  4009c0:	8b010000 	add	x0, x0, x1
  4009c4:	d37ef400 	lsl	x0, x0, #2
  4009c8:	8b030000 	add	x0, x0, x3
  4009cc:	52800041 	mov	w1, #0x2                   	// #2
  4009d0:	b8207841 	str	w1, [x2, x0, lsl #2]
  4009d4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4009d8:	9101a002 	add	x2, x0, #0x68
  4009dc:	b9801be3 	ldrsw	x3, [sp, #24]
  4009e0:	b9801fe1 	ldrsw	x1, [sp, #28]
  4009e4:	aa0103e0 	mov	x0, x1
  4009e8:	d37ff800 	lsl	x0, x0, #1
  4009ec:	8b010000 	add	x0, x0, x1
  4009f0:	d37df000 	lsl	x0, x0, #3
  4009f4:	8b010000 	add	x0, x0, x1
  4009f8:	d37ef400 	lsl	x0, x0, #2
  4009fc:	8b030000 	add	x0, x0, x3
  400a00:	52800061 	mov	w1, #0x3                   	// #3
  400a04:	b8207841 	str	w1, [x2, x0, lsl #2]
  400a08:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400a0c:	9101a002 	add	x2, x0, #0x68
  400a10:	b9801be3 	ldrsw	x3, [sp, #24]
  400a14:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a18:	aa0103e0 	mov	x0, x1
  400a1c:	d37ff800 	lsl	x0, x0, #1
  400a20:	8b010000 	add	x0, x0, x1
  400a24:	d37df000 	lsl	x0, x0, #3
  400a28:	8b010000 	add	x0, x0, x1
  400a2c:	d37ef400 	lsl	x0, x0, #2
  400a30:	8b030000 	add	x0, x0, x3
  400a34:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400a38:	b90017e0 	str	w0, [sp, #20]
  400a3c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400a40:	9101a002 	add	x2, x0, #0x68
  400a44:	b9801be3 	ldrsw	x3, [sp, #24]
  400a48:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a4c:	aa0103e0 	mov	x0, x1
  400a50:	d37ff800 	lsl	x0, x0, #1
  400a54:	8b010000 	add	x0, x0, x1
  400a58:	d37df000 	lsl	x0, x0, #3
  400a5c:	8b010000 	add	x0, x0, x1
  400a60:	d37ef400 	lsl	x0, x0, #2
  400a64:	8b030000 	add	x0, x0, x3
  400a68:	b8607841 	ldr	w1, [x2, x0, lsl #2]
  400a6c:	5290d4e0 	mov	w0, #0x86a7                	// #34471
  400a70:	72a00020 	movk	w0, #0x1, lsl #16
  400a74:	6b00003f 	cmp	w1, w0
  400a78:	540004ad 	b.le	400b0c <InitializeMesh_1+0x28c>
  400a7c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400a80:	9101a002 	add	x2, x0, #0x68
  400a84:	b9801be3 	ldrsw	x3, [sp, #24]
  400a88:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a8c:	aa0103e0 	mov	x0, x1
  400a90:	d37ff800 	lsl	x0, x0, #1
  400a94:	8b010000 	add	x0, x0, x1
  400a98:	d37df000 	lsl	x0, x0, #3
  400a9c:	8b010000 	add	x0, x0, x1
  400aa0:	d37ef400 	lsl	x0, x0, #2
  400aa4:	8b030000 	add	x0, x0, x3
  400aa8:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400aac:	529555a1 	mov	w1, #0xaaad                	// #43693
  400ab0:	72b4f841 	movk	w1, #0xa7c2, lsl #16
  400ab4:	9b217c01 	smull	x1, w0, w1
  400ab8:	d360fc21 	lsr	x1, x1, #32
  400abc:	0b010001 	add	w1, w0, w1
  400ac0:	13107c22 	asr	w2, w1, #16
  400ac4:	131f7c01 	asr	w1, w0, #31
  400ac8:	4b010041 	sub	w1, w2, w1
  400acc:	5290d4e2 	mov	w2, #0x86a7                	// #34471
  400ad0:	72a00022 	movk	w2, #0x1, lsl #16
  400ad4:	1b027c21 	mul	w1, w1, w2
  400ad8:	4b010001 	sub	w1, w0, w1
  400adc:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400ae0:	9101a003 	add	x3, x0, #0x68
  400ae4:	b9801be4 	ldrsw	x4, [sp, #24]
  400ae8:	b9801fe2 	ldrsw	x2, [sp, #28]
  400aec:	aa0203e0 	mov	x0, x2
  400af0:	d37ff800 	lsl	x0, x0, #1
  400af4:	8b020000 	add	x0, x0, x2
  400af8:	d37df000 	lsl	x0, x0, #3
  400afc:	8b020000 	add	x0, x0, x2
  400b00:	d37ef400 	lsl	x0, x0, #2
  400b04:	8b040000 	add	x0, x0, x4
  400b08:	b8207861 	str	w1, [x3, x0, lsl #2]
  400b0c:	b9401fe0 	ldr	w0, [sp, #28]
  400b10:	11000400 	add	w0, w0, #0x1
  400b14:	b9001fe0 	str	w0, [sp, #28]
  400b18:	b9401fe0 	ldr	w0, [sp, #28]
  400b1c:	71018c1f 	cmp	w0, #0x63
  400b20:	54ffebcd 	b.le	400898 <InitializeMesh_1+0x18>
  400b24:	b9401be0 	ldr	w0, [sp, #24]
  400b28:	11000400 	add	w0, w0, #0x1
  400b2c:	b9001be0 	str	w0, [sp, #24]
  400b30:	b9401be0 	ldr	w0, [sp, #24]
  400b34:	71018c1f 	cmp	w0, #0x63
  400b38:	54ffeacd 	b.le	400890 <InitializeMesh_1+0x10>
  400b3c:	d503201f 	nop
  400b40:	d503201f 	nop
  400b44:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400b48:	d65f03c0 	ret

0000000000400b4c <InitializeMesh_2>:
  400b4c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400b50:	910003fd 	mov	x29, sp
  400b54:	b9001bff 	str	wzr, [sp, #24]
  400b58:	140000b6 	b	400e30 <InitializeMesh_2+0x2e4>
  400b5c:	b9001fff 	str	wzr, [sp, #28]
  400b60:	140000ae 	b	400e18 <InitializeMesh_2+0x2cc>
  400b64:	97fffecb 	bl	400690 <random@plt>
  400b68:	2a0003e4 	mov	w4, w0
  400b6c:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400b70:	9132a002 	add	x2, x0, #0xca8
  400b74:	b9801be3 	ldrsw	x3, [sp, #24]
  400b78:	b9801fe1 	ldrsw	x1, [sp, #28]
  400b7c:	aa0103e0 	mov	x0, x1
  400b80:	d37ff800 	lsl	x0, x0, #1
  400b84:	8b010000 	add	x0, x0, x1
  400b88:	d37df000 	lsl	x0, x0, #3
  400b8c:	8b010000 	add	x0, x0, x1
  400b90:	d37ef400 	lsl	x0, x0, #2
  400b94:	8b030000 	add	x0, x0, x3
  400b98:	b8207844 	str	w4, [x2, x0, lsl #2]
  400b9c:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400ba0:	9132a002 	add	x2, x0, #0xca8
  400ba4:	b9801be3 	ldrsw	x3, [sp, #24]
  400ba8:	b9801fe1 	ldrsw	x1, [sp, #28]
  400bac:	aa0103e0 	mov	x0, x1
  400bb0:	d37ff800 	lsl	x0, x0, #1
  400bb4:	8b010000 	add	x0, x0, x1
  400bb8:	d37df000 	lsl	x0, x0, #3
  400bbc:	8b010000 	add	x0, x0, x1
  400bc0:	d37ef400 	lsl	x0, x0, #2
  400bc4:	8b030000 	add	x0, x0, x3
  400bc8:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400bcc:	b90017e0 	str	w0, [sp, #20]
  400bd0:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400bd4:	9132a002 	add	x2, x0, #0xca8
  400bd8:	b9801be3 	ldrsw	x3, [sp, #24]
  400bdc:	b9801fe1 	ldrsw	x1, [sp, #28]
  400be0:	aa0103e0 	mov	x0, x1
  400be4:	d37ff800 	lsl	x0, x0, #1
  400be8:	8b010000 	add	x0, x0, x1
  400bec:	d37df000 	lsl	x0, x0, #3
  400bf0:	8b010000 	add	x0, x0, x1
  400bf4:	d37ef400 	lsl	x0, x0, #2
  400bf8:	8b030000 	add	x0, x0, x3
  400bfc:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400c00:	b90017e0 	str	w0, [sp, #20]
  400c04:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400c08:	9132a002 	add	x2, x0, #0xca8
  400c0c:	b9801be3 	ldrsw	x3, [sp, #24]
  400c10:	b9801fe1 	ldrsw	x1, [sp, #28]
  400c14:	aa0103e0 	mov	x0, x1
  400c18:	d37ff800 	lsl	x0, x0, #1
  400c1c:	8b010000 	add	x0, x0, x1
  400c20:	d37df000 	lsl	x0, x0, #3
  400c24:	8b010000 	add	x0, x0, x1
  400c28:	d37ef400 	lsl	x0, x0, #2
  400c2c:	8b030000 	add	x0, x0, x3
  400c30:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400c34:	b90017e0 	str	w0, [sp, #20]
  400c38:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400c3c:	9132a002 	add	x2, x0, #0xca8
  400c40:	b9801be3 	ldrsw	x3, [sp, #24]
  400c44:	b9801fe1 	ldrsw	x1, [sp, #28]
  400c48:	aa0103e0 	mov	x0, x1
  400c4c:	d37ff800 	lsl	x0, x0, #1
  400c50:	8b010000 	add	x0, x0, x1
  400c54:	d37df000 	lsl	x0, x0, #3
  400c58:	8b010000 	add	x0, x0, x1
  400c5c:	d37ef400 	lsl	x0, x0, #2
  400c60:	8b030000 	add	x0, x0, x3
  400c64:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400c68:	b90017e0 	str	w0, [sp, #20]
  400c6c:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400c70:	9132a002 	add	x2, x0, #0xca8
  400c74:	b9801be3 	ldrsw	x3, [sp, #24]
  400c78:	b9801fe1 	ldrsw	x1, [sp, #28]
  400c7c:	aa0103e0 	mov	x0, x1
  400c80:	d37ff800 	lsl	x0, x0, #1
  400c84:	8b010000 	add	x0, x0, x1
  400c88:	d37df000 	lsl	x0, x0, #3
  400c8c:	8b010000 	add	x0, x0, x1
  400c90:	d37ef400 	lsl	x0, x0, #2
  400c94:	8b030000 	add	x0, x0, x3
  400c98:	52800021 	mov	w1, #0x1                   	// #1
  400c9c:	b8207841 	str	w1, [x2, x0, lsl #2]
  400ca0:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400ca4:	9132a002 	add	x2, x0, #0xca8
  400ca8:	b9801be3 	ldrsw	x3, [sp, #24]
  400cac:	b9801fe1 	ldrsw	x1, [sp, #28]
  400cb0:	aa0103e0 	mov	x0, x1
  400cb4:	d37ff800 	lsl	x0, x0, #1
  400cb8:	8b010000 	add	x0, x0, x1
  400cbc:	d37df000 	lsl	x0, x0, #3
  400cc0:	8b010000 	add	x0, x0, x1
  400cc4:	d37ef400 	lsl	x0, x0, #2
  400cc8:	8b030000 	add	x0, x0, x3
  400ccc:	52800041 	mov	w1, #0x2                   	// #2
  400cd0:	b8207841 	str	w1, [x2, x0, lsl #2]
  400cd4:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400cd8:	9132a002 	add	x2, x0, #0xca8
  400cdc:	b9801be3 	ldrsw	x3, [sp, #24]
  400ce0:	b9801fe1 	ldrsw	x1, [sp, #28]
  400ce4:	aa0103e0 	mov	x0, x1
  400ce8:	d37ff800 	lsl	x0, x0, #1
  400cec:	8b010000 	add	x0, x0, x1
  400cf0:	d37df000 	lsl	x0, x0, #3
  400cf4:	8b010000 	add	x0, x0, x1
  400cf8:	d37ef400 	lsl	x0, x0, #2
  400cfc:	8b030000 	add	x0, x0, x3
  400d00:	52800061 	mov	w1, #0x3                   	// #3
  400d04:	b8207841 	str	w1, [x2, x0, lsl #2]
  400d08:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400d0c:	9132a002 	add	x2, x0, #0xca8
  400d10:	b9801be3 	ldrsw	x3, [sp, #24]
  400d14:	b9801fe1 	ldrsw	x1, [sp, #28]
  400d18:	aa0103e0 	mov	x0, x1
  400d1c:	d37ff800 	lsl	x0, x0, #1
  400d20:	8b010000 	add	x0, x0, x1
  400d24:	d37df000 	lsl	x0, x0, #3
  400d28:	8b010000 	add	x0, x0, x1
  400d2c:	d37ef400 	lsl	x0, x0, #2
  400d30:	8b030000 	add	x0, x0, x3
  400d34:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400d38:	b90017e0 	str	w0, [sp, #20]
  400d3c:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400d40:	9132a002 	add	x2, x0, #0xca8
  400d44:	b9801be3 	ldrsw	x3, [sp, #24]
  400d48:	b9801fe1 	ldrsw	x1, [sp, #28]
  400d4c:	aa0103e0 	mov	x0, x1
  400d50:	d37ff800 	lsl	x0, x0, #1
  400d54:	8b010000 	add	x0, x0, x1
  400d58:	d37df000 	lsl	x0, x0, #3
  400d5c:	8b010000 	add	x0, x0, x1
  400d60:	d37ef400 	lsl	x0, x0, #2
  400d64:	8b030000 	add	x0, x0, x3
  400d68:	b8607841 	ldr	w1, [x2, x0, lsl #2]
  400d6c:	5290d4e0 	mov	w0, #0x86a7                	// #34471
  400d70:	72a00020 	movk	w0, #0x1, lsl #16
  400d74:	6b00003f 	cmp	w1, w0
  400d78:	540004ad 	b.le	400e0c <InitializeMesh_2+0x2c0>
  400d7c:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400d80:	9132a002 	add	x2, x0, #0xca8
  400d84:	b9801be3 	ldrsw	x3, [sp, #24]
  400d88:	b9801fe1 	ldrsw	x1, [sp, #28]
  400d8c:	aa0103e0 	mov	x0, x1
  400d90:	d37ff800 	lsl	x0, x0, #1
  400d94:	8b010000 	add	x0, x0, x1
  400d98:	d37df000 	lsl	x0, x0, #3
  400d9c:	8b010000 	add	x0, x0, x1
  400da0:	d37ef400 	lsl	x0, x0, #2
  400da4:	8b030000 	add	x0, x0, x3
  400da8:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400dac:	529555a1 	mov	w1, #0xaaad                	// #43693
  400db0:	72b4f841 	movk	w1, #0xa7c2, lsl #16
  400db4:	9b217c01 	smull	x1, w0, w1
  400db8:	d360fc21 	lsr	x1, x1, #32
  400dbc:	0b010001 	add	w1, w0, w1
  400dc0:	13107c22 	asr	w2, w1, #16
  400dc4:	131f7c01 	asr	w1, w0, #31
  400dc8:	4b010041 	sub	w1, w2, w1
  400dcc:	5290d4e2 	mov	w2, #0x86a7                	// #34471
  400dd0:	72a00022 	movk	w2, #0x1, lsl #16
  400dd4:	1b027c21 	mul	w1, w1, w2
  400dd8:	4b010001 	sub	w1, w0, w1
  400ddc:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400de0:	9132a003 	add	x3, x0, #0xca8
  400de4:	b9801be4 	ldrsw	x4, [sp, #24]
  400de8:	b9801fe2 	ldrsw	x2, [sp, #28]
  400dec:	aa0203e0 	mov	x0, x2
  400df0:	d37ff800 	lsl	x0, x0, #1
  400df4:	8b020000 	add	x0, x0, x2
  400df8:	d37df000 	lsl	x0, x0, #3
  400dfc:	8b020000 	add	x0, x0, x2
  400e00:	d37ef400 	lsl	x0, x0, #2
  400e04:	8b040000 	add	x0, x0, x4
  400e08:	b8207861 	str	w1, [x3, x0, lsl #2]
  400e0c:	b9401fe0 	ldr	w0, [sp, #28]
  400e10:	11000400 	add	w0, w0, #0x1
  400e14:	b9001fe0 	str	w0, [sp, #28]
  400e18:	b9401fe0 	ldr	w0, [sp, #28]
  400e1c:	71018c1f 	cmp	w0, #0x63
  400e20:	54ffea2d 	b.le	400b64 <InitializeMesh_2+0x18>
  400e24:	b9401be0 	ldr	w0, [sp, #24]
  400e28:	11000400 	add	w0, w0, #0x1
  400e2c:	b9001be0 	str	w0, [sp, #24]
  400e30:	b9401be0 	ldr	w0, [sp, #24]
  400e34:	71018c1f 	cmp	w0, #0x63
  400e38:	54ffe92d 	b.le	400b5c <InitializeMesh_2+0x10>
  400e3c:	d503201f 	nop
  400e40:	d503201f 	nop
  400e44:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400e48:	d65f03c0 	ret

0000000000400e4c <CompareMesh>:
  400e4c:	d10043ff 	sub	sp, sp, #0x10
  400e50:	b9000fff 	str	wzr, [sp, #12]
  400e54:	b90007ff 	str	wzr, [sp, #4]
  400e58:	1400002d 	b	400f0c <CompareMesh+0xc0>
  400e5c:	b9000bff 	str	wzr, [sp, #8]
  400e60:	14000025 	b	400ef4 <CompareMesh+0xa8>
  400e64:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400e68:	9101a002 	add	x2, x0, #0x68
  400e6c:	b98007e3 	ldrsw	x3, [sp, #4]
  400e70:	b9800be1 	ldrsw	x1, [sp, #8]
  400e74:	aa0103e0 	mov	x0, x1
  400e78:	d37ff800 	lsl	x0, x0, #1
  400e7c:	8b010000 	add	x0, x0, x1
  400e80:	d37df000 	lsl	x0, x0, #3
  400e84:	8b010000 	add	x0, x0, x1
  400e88:	d37ef400 	lsl	x0, x0, #2
  400e8c:	8b030000 	add	x0, x0, x3
  400e90:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400e94:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400e98:	9132a003 	add	x3, x0, #0xca8
  400e9c:	b98007e4 	ldrsw	x4, [sp, #4]
  400ea0:	b9800be1 	ldrsw	x1, [sp, #8]
  400ea4:	aa0103e0 	mov	x0, x1
  400ea8:	d37ff800 	lsl	x0, x0, #1
  400eac:	8b010000 	add	x0, x0, x1
  400eb0:	d37df000 	lsl	x0, x0, #3
  400eb4:	8b010000 	add	x0, x0, x1
  400eb8:	d37ef400 	lsl	x0, x0, #2
  400ebc:	8b040000 	add	x0, x0, x4
  400ec0:	b8607860 	ldr	w0, [x3, x0, lsl #2]
  400ec4:	6b00005f 	cmp	w2, w0
  400ec8:	540000ad 	b.le	400edc <CompareMesh+0x90>
  400ecc:	b9400fe0 	ldr	w0, [sp, #12]
  400ed0:	11000400 	add	w0, w0, #0x1
  400ed4:	b9000fe0 	str	w0, [sp, #12]
  400ed8:	14000004 	b	400ee8 <CompareMesh+0x9c>
  400edc:	b9400fe0 	ldr	w0, [sp, #12]
  400ee0:	51000400 	sub	w0, w0, #0x1
  400ee4:	b9000fe0 	str	w0, [sp, #12]
  400ee8:	b9400be0 	ldr	w0, [sp, #8]
  400eec:	11000400 	add	w0, w0, #0x1
  400ef0:	b9000be0 	str	w0, [sp, #8]
  400ef4:	b9400be0 	ldr	w0, [sp, #8]
  400ef8:	71018c1f 	cmp	w0, #0x63
  400efc:	54fffb4d 	b.le	400e64 <CompareMesh+0x18>
  400f00:	b94007e0 	ldr	w0, [sp, #4]
  400f04:	11000400 	add	w0, w0, #0x1
  400f08:	b90007e0 	str	w0, [sp, #4]
  400f0c:	b94007e0 	ldr	w0, [sp, #4]
  400f10:	71018c1f 	cmp	w0, #0x63
  400f14:	54fffa4d 	b.le	400e5c <CompareMesh+0x10>
  400f18:	b9400fe0 	ldr	w0, [sp, #12]
  400f1c:	7100001f 	cmp	w0, #0x0
  400f20:	5400006b 	b.lt	400f2c <CompareMesh+0xe0>  // b.tstop
  400f24:	52800020 	mov	w0, #0x1                   	// #1
  400f28:	14000002 	b	400f30 <CompareMesh+0xe4>
  400f2c:	52800000 	mov	w0, #0x0                   	// #0
  400f30:	910043ff 	add	sp, sp, #0x10
  400f34:	d65f03c0 	ret

0000000000400f38 <Mesh_dot>:
  400f38:	d10043ff 	sub	sp, sp, #0x10
  400f3c:	b9000fff 	str	wzr, [sp, #12]
  400f40:	14000046 	b	401058 <Mesh_dot+0x120>
  400f44:	b9000bff 	str	wzr, [sp, #8]
  400f48:	1400003e 	b	401040 <Mesh_dot+0x108>
  400f4c:	b90007ff 	str	wzr, [sp, #4]
  400f50:	14000036 	b	401028 <Mesh_dot+0xf0>
  400f54:	f0000180 	adrp	x0, 433000 <ms2+0x9358>
  400f58:	9123a002 	add	x2, x0, #0x8e8
  400f5c:	b9800be3 	ldrsw	x3, [sp, #8]
  400f60:	b9800fe1 	ldrsw	x1, [sp, #12]
  400f64:	aa0103e0 	mov	x0, x1
  400f68:	d37ff800 	lsl	x0, x0, #1
  400f6c:	8b010000 	add	x0, x0, x1
  400f70:	d37df000 	lsl	x0, x0, #3
  400f74:	8b010000 	add	x0, x0, x1
  400f78:	d37ef400 	lsl	x0, x0, #2
  400f7c:	8b030000 	add	x0, x0, x3
  400f80:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400f84:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400f88:	9101a003 	add	x3, x0, #0x68
  400f8c:	b98007e4 	ldrsw	x4, [sp, #4]
  400f90:	b9800fe1 	ldrsw	x1, [sp, #12]
  400f94:	aa0103e0 	mov	x0, x1
  400f98:	d37ff800 	lsl	x0, x0, #1
  400f9c:	8b010000 	add	x0, x0, x1
  400fa0:	d37df000 	lsl	x0, x0, #3
  400fa4:	8b010000 	add	x0, x0, x1
  400fa8:	d37ef400 	lsl	x0, x0, #2
  400fac:	8b040000 	add	x0, x0, x4
  400fb0:	b8607863 	ldr	w3, [x3, x0, lsl #2]
  400fb4:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400fb8:	9132a004 	add	x4, x0, #0xca8
  400fbc:	b9800be5 	ldrsw	x5, [sp, #8]
  400fc0:	b98007e1 	ldrsw	x1, [sp, #4]
  400fc4:	aa0103e0 	mov	x0, x1
  400fc8:	d37ff800 	lsl	x0, x0, #1
  400fcc:	8b010000 	add	x0, x0, x1
  400fd0:	d37df000 	lsl	x0, x0, #3
  400fd4:	8b010000 	add	x0, x0, x1
  400fd8:	d37ef400 	lsl	x0, x0, #2
  400fdc:	8b050000 	add	x0, x0, x5
  400fe0:	b8607880 	ldr	w0, [x4, x0, lsl #2]
  400fe4:	1b007c60 	mul	w0, w3, w0
  400fe8:	0b000043 	add	w3, w2, w0
  400fec:	f0000180 	adrp	x0, 433000 <ms2+0x9358>
  400ff0:	9123a002 	add	x2, x0, #0x8e8
  400ff4:	b9800be4 	ldrsw	x4, [sp, #8]
  400ff8:	b9800fe1 	ldrsw	x1, [sp, #12]
  400ffc:	aa0103e0 	mov	x0, x1
  401000:	d37ff800 	lsl	x0, x0, #1
  401004:	8b010000 	add	x0, x0, x1
  401008:	d37df000 	lsl	x0, x0, #3
  40100c:	8b010000 	add	x0, x0, x1
  401010:	d37ef400 	lsl	x0, x0, #2
  401014:	8b040000 	add	x0, x0, x4
  401018:	b8207843 	str	w3, [x2, x0, lsl #2]
  40101c:	b94007e0 	ldr	w0, [sp, #4]
  401020:	11000400 	add	w0, w0, #0x1
  401024:	b90007e0 	str	w0, [sp, #4]
  401028:	b94007e0 	ldr	w0, [sp, #4]
  40102c:	71018c1f 	cmp	w0, #0x63
  401030:	54fff92d 	b.le	400f54 <Mesh_dot+0x1c>
  401034:	b9400be0 	ldr	w0, [sp, #8]
  401038:	11000400 	add	w0, w0, #0x1
  40103c:	b9000be0 	str	w0, [sp, #8]
  401040:	b9400be0 	ldr	w0, [sp, #8]
  401044:	71018c1f 	cmp	w0, #0x63
  401048:	54fff82d 	b.le	400f4c <Mesh_dot+0x14>
  40104c:	b9400fe0 	ldr	w0, [sp, #12]
  401050:	11000400 	add	w0, w0, #0x1
  401054:	b9000fe0 	str	w0, [sp, #12]
  401058:	b9400fe0 	ldr	w0, [sp, #12]
  40105c:	71018c1f 	cmp	w0, #0x63
  401060:	54fff72d 	b.le	400f44 <Mesh_dot+0xc>
  401064:	52800000 	mov	w0, #0x0                   	// #0
  401068:	910043ff 	add	sp, sp, #0x10
  40106c:	d65f03c0 	ret

0000000000401070 <SwapMesh>:
  401070:	d10043ff 	sub	sp, sp, #0x10
  401074:	b90007ff 	str	wzr, [sp, #4]
  401078:	b9000bff 	str	wzr, [sp, #8]
  40107c:	1400003e 	b	401174 <SwapMesh+0x104>
  401080:	b9000fff 	str	wzr, [sp, #12]
  401084:	14000036 	b	40115c <SwapMesh+0xec>
  401088:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40108c:	9101a002 	add	x2, x0, #0x68
  401090:	b9800be3 	ldrsw	x3, [sp, #8]
  401094:	b9800fe1 	ldrsw	x1, [sp, #12]
  401098:	aa0103e0 	mov	x0, x1
  40109c:	d37ff800 	lsl	x0, x0, #1
  4010a0:	8b010000 	add	x0, x0, x1
  4010a4:	d37df000 	lsl	x0, x0, #3
  4010a8:	8b010000 	add	x0, x0, x1
  4010ac:	d37ef400 	lsl	x0, x0, #2
  4010b0:	8b030000 	add	x0, x0, x3
  4010b4:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  4010b8:	b90003e0 	str	w0, [sp]
  4010bc:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4010c0:	9132a002 	add	x2, x0, #0xca8
  4010c4:	b9800be3 	ldrsw	x3, [sp, #8]
  4010c8:	b9800fe1 	ldrsw	x1, [sp, #12]
  4010cc:	aa0103e0 	mov	x0, x1
  4010d0:	d37ff800 	lsl	x0, x0, #1
  4010d4:	8b010000 	add	x0, x0, x1
  4010d8:	d37df000 	lsl	x0, x0, #3
  4010dc:	8b010000 	add	x0, x0, x1
  4010e0:	d37ef400 	lsl	x0, x0, #2
  4010e4:	8b030000 	add	x0, x0, x3
  4010e8:	b8607843 	ldr	w3, [x2, x0, lsl #2]
  4010ec:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4010f0:	9101a002 	add	x2, x0, #0x68
  4010f4:	b9800be4 	ldrsw	x4, [sp, #8]
  4010f8:	b9800fe1 	ldrsw	x1, [sp, #12]
  4010fc:	aa0103e0 	mov	x0, x1
  401100:	d37ff800 	lsl	x0, x0, #1
  401104:	8b010000 	add	x0, x0, x1
  401108:	d37df000 	lsl	x0, x0, #3
  40110c:	8b010000 	add	x0, x0, x1
  401110:	d37ef400 	lsl	x0, x0, #2
  401114:	8b040000 	add	x0, x0, x4
  401118:	b8207843 	str	w3, [x2, x0, lsl #2]
  40111c:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401120:	9132a002 	add	x2, x0, #0xca8
  401124:	b9800be3 	ldrsw	x3, [sp, #8]
  401128:	b9800fe1 	ldrsw	x1, [sp, #12]
  40112c:	aa0103e0 	mov	x0, x1
  401130:	d37ff800 	lsl	x0, x0, #1
  401134:	8b010000 	add	x0, x0, x1
  401138:	d37df000 	lsl	x0, x0, #3
  40113c:	8b010000 	add	x0, x0, x1
  401140:	d37ef400 	lsl	x0, x0, #2
  401144:	8b030000 	add	x0, x0, x3
  401148:	b94003e1 	ldr	w1, [sp]
  40114c:	b8207841 	str	w1, [x2, x0, lsl #2]
  401150:	b9400fe0 	ldr	w0, [sp, #12]
  401154:	11000400 	add	w0, w0, #0x1
  401158:	b9000fe0 	str	w0, [sp, #12]
  40115c:	b9400fe0 	ldr	w0, [sp, #12]
  401160:	71018c1f 	cmp	w0, #0x63
  401164:	54fff92d 	b.le	401088 <SwapMesh+0x18>
  401168:	b9400be0 	ldr	w0, [sp, #8]
  40116c:	11000400 	add	w0, w0, #0x1
  401170:	b9000be0 	str	w0, [sp, #8]
  401174:	b9400be0 	ldr	w0, [sp, #8]
  401178:	71018c1f 	cmp	w0, #0x63
  40117c:	54fff82d 	b.le	401080 <SwapMesh+0x10>
  401180:	52800000 	mov	w0, #0x0                   	// #0
  401184:	910043ff 	add	sp, sp, #0x10
  401188:	d65f03c0 	ret

000000000040118c <LoadData>:
  40118c:	a9ae7bfd 	stp	x29, x30, [sp, #-288]!
  401190:	910003fd 	mov	x29, sp
  401194:	f9008fff 	str	xzr, [sp, #280]
  401198:	90000000 	adrp	x0, 401000 <Mesh_dot+0xc8>
  40119c:	91162001 	add	x1, x0, #0x588
  4011a0:	90000000 	adrp	x0, 401000 <Mesh_dot+0xc8>
  4011a4:	91164000 	add	x0, x0, #0x590
  4011a8:	97fffd36 	bl	400680 <fopen@plt>
  4011ac:	f9008fe0 	str	x0, [sp, #280]
  4011b0:	910063e0 	add	x0, sp, #0x18
  4011b4:	f9408fe2 	ldr	x2, [sp, #280]
  4011b8:	52801fe1 	mov	w1, #0xff                  	// #255
  4011bc:	97fffd4d 	bl	4006f0 <fgets@plt>
  4011c0:	910063e0 	add	x0, sp, #0x18
  4011c4:	aa0003e1 	mov	x1, x0
  4011c8:	90000000 	adrp	x0, 401000 <Mesh_dot+0xc8>
  4011cc:	9117e000 	add	x0, x0, #0x5f8
  4011d0:	97fffd40 	bl	4006d0 <printf@plt>
  4011d4:	910063e0 	add	x0, sp, #0x18
  4011d8:	f9408fe2 	ldr	x2, [sp, #280]
  4011dc:	52801fe1 	mov	w1, #0xff                  	// #255
  4011e0:	97fffd44 	bl	4006f0 <fgets@plt>
  4011e4:	f9408fe0 	ldr	x0, [sp, #280]
  4011e8:	97fffd22 	bl	400670 <fclose@plt>
  4011ec:	52800000 	mov	w0, #0x0                   	// #0
  4011f0:	a8d27bfd 	ldp	x29, x30, [sp], #288
  4011f4:	d65f03c0 	ret

00000000004011f8 <ComplexDataHandle>:
  4011f8:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  4011fc:	910003fd 	mov	x29, sp
  401200:	94000007 	bl	40121c <ManiplateData1>
  401204:	b9001fe0 	str	w0, [sp, #28]
  401208:	94000051 	bl	40134c <ManiplateData2>
  40120c:	b9001fe0 	str	w0, [sp, #28]
  401210:	52800000 	mov	w0, #0x0                   	// #0
  401214:	a8c27bfd 	ldp	x29, x30, [sp], #32
  401218:	d65f03c0 	ret

000000000040121c <ManiplateData1>:
  40121c:	d10043ff 	sub	sp, sp, #0x10
  401220:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401224:	9101a000 	add	x0, x0, #0x68
  401228:	52800281 	mov	w1, #0x14                  	// #20
  40122c:	b9019401 	str	w1, [x0, #404]
  401230:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401234:	9101a000 	add	x0, x0, #0x68
  401238:	b9419400 	ldr	w0, [x0, #404]
  40123c:	b9000fe0 	str	w0, [sp, #12]
  401240:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401244:	9101a000 	add	x0, x0, #0x68
  401248:	528003c1 	mov	w1, #0x1e                  	// #30
  40124c:	b9019401 	str	w1, [x0, #404]
  401250:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401254:	9101a000 	add	x0, x0, #0x68
  401258:	b9419400 	ldr	w0, [x0, #404]
  40125c:	b9000fe0 	str	w0, [sp, #12]
  401260:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401264:	9101a000 	add	x0, x0, #0x68
  401268:	b9419400 	ldr	w0, [x0, #404]
  40126c:	b9000fe0 	str	w0, [sp, #12]
  401270:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401274:	9101a000 	add	x0, x0, #0x68
  401278:	52800641 	mov	w1, #0x32                  	// #50
  40127c:	b9032401 	str	w1, [x0, #804]
  401280:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401284:	9101a000 	add	x0, x0, #0x68
  401288:	52800781 	mov	w1, #0x3c                  	// #60
  40128c:	b9032401 	str	w1, [x0, #804]
  401290:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401294:	9101a000 	add	x0, x0, #0x68
  401298:	528008c1 	mov	w1, #0x46                  	// #70
  40129c:	b9032401 	str	w1, [x0, #804]
  4012a0:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012a4:	9101a000 	add	x0, x0, #0x68
  4012a8:	b9432400 	ldr	w0, [x0, #804]
  4012ac:	b9000fe0 	str	w0, [sp, #12]
  4012b0:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012b4:	9101a000 	add	x0, x0, #0x68
  4012b8:	b9432400 	ldr	w0, [x0, #804]
  4012bc:	b9000fe0 	str	w0, [sp, #12]
  4012c0:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012c4:	9101a000 	add	x0, x0, #0x68
  4012c8:	52800c61 	mov	w1, #0x63                  	// #99
  4012cc:	b9032401 	str	w1, [x0, #804]
  4012d0:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012d4:	9101a000 	add	x0, x0, #0x68
  4012d8:	b9432400 	ldr	w0, [x0, #804]
  4012dc:	b9000fe0 	str	w0, [sp, #12]
  4012e0:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012e4:	9101a000 	add	x0, x0, #0x68
  4012e8:	52800501 	mov	w1, #0x28                  	// #40
  4012ec:	b9019801 	str	w1, [x0, #408]
  4012f0:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012f4:	9101a000 	add	x0, x0, #0x68
  4012f8:	b9419400 	ldr	w0, [x0, #404]
  4012fc:	b9000fe0 	str	w0, [sp, #12]
  401300:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401304:	9101a000 	add	x0, x0, #0x68
  401308:	528003c1 	mov	w1, #0x1e                  	// #30
  40130c:	b9019801 	str	w1, [x0, #408]
  401310:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401314:	9101a000 	add	x0, x0, #0x68
  401318:	b9419800 	ldr	w0, [x0, #408]
  40131c:	b9000fe0 	str	w0, [sp, #12]
  401320:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401324:	9101a000 	add	x0, x0, #0x68
  401328:	b9419800 	ldr	w0, [x0, #408]
  40132c:	b9000fe0 	str	w0, [sp, #12]
  401330:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401334:	9101a000 	add	x0, x0, #0x68
  401338:	52800641 	mov	w1, #0x32                  	// #50
  40133c:	b9019801 	str	w1, [x0, #408]
  401340:	52800000 	mov	w0, #0x0                   	// #0
  401344:	910043ff 	add	sp, sp, #0x10
  401348:	d65f03c0 	ret

000000000040134c <ManiplateData2>:
  40134c:	d10043ff 	sub	sp, sp, #0x10
  401350:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401354:	9132a000 	add	x0, x0, #0xca8
  401358:	52800281 	mov	w1, #0x14                  	// #20
  40135c:	b9019401 	str	w1, [x0, #404]
  401360:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401364:	9132a000 	add	x0, x0, #0xca8
  401368:	b9419400 	ldr	w0, [x0, #404]
  40136c:	b9000fe0 	str	w0, [sp, #12]
  401370:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401374:	9132a000 	add	x0, x0, #0xca8
  401378:	528003c1 	mov	w1, #0x1e                  	// #30
  40137c:	b9019401 	str	w1, [x0, #404]
  401380:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401384:	9132a000 	add	x0, x0, #0xca8
  401388:	b9419400 	ldr	w0, [x0, #404]
  40138c:	b9000fe0 	str	w0, [sp, #12]
  401390:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401394:	9132a000 	add	x0, x0, #0xca8
  401398:	b9419400 	ldr	w0, [x0, #404]
  40139c:	b9000fe0 	str	w0, [sp, #12]
  4013a0:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013a4:	9132a000 	add	x0, x0, #0xca8
  4013a8:	52800641 	mov	w1, #0x32                  	// #50
  4013ac:	b9032401 	str	w1, [x0, #804]
  4013b0:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013b4:	9132a000 	add	x0, x0, #0xca8
  4013b8:	52800781 	mov	w1, #0x3c                  	// #60
  4013bc:	b9032401 	str	w1, [x0, #804]
  4013c0:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013c4:	9132a000 	add	x0, x0, #0xca8
  4013c8:	528008c1 	mov	w1, #0x46                  	// #70
  4013cc:	b9032401 	str	w1, [x0, #804]
  4013d0:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013d4:	9132a000 	add	x0, x0, #0xca8
  4013d8:	b9432400 	ldr	w0, [x0, #804]
  4013dc:	b9000fe0 	str	w0, [sp, #12]
  4013e0:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013e4:	9132a000 	add	x0, x0, #0xca8
  4013e8:	b9432400 	ldr	w0, [x0, #804]
  4013ec:	b9000fe0 	str	w0, [sp, #12]
  4013f0:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013f4:	9132a000 	add	x0, x0, #0xca8
  4013f8:	52800c61 	mov	w1, #0x63                  	// #99
  4013fc:	b9032401 	str	w1, [x0, #804]
  401400:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401404:	9132a000 	add	x0, x0, #0xca8
  401408:	b9432400 	ldr	w0, [x0, #804]
  40140c:	b9000fe0 	str	w0, [sp, #12]
  401410:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401414:	9132a000 	add	x0, x0, #0xca8
  401418:	52800501 	mov	w1, #0x28                  	// #40
  40141c:	b9019801 	str	w1, [x0, #408]
  401420:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401424:	9132a000 	add	x0, x0, #0xca8
  401428:	b9419800 	ldr	w0, [x0, #408]
  40142c:	b9000fe0 	str	w0, [sp, #12]
  401430:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401434:	9132a000 	add	x0, x0, #0xca8
  401438:	528003c1 	mov	w1, #0x1e                  	// #30
  40143c:	b9019801 	str	w1, [x0, #408]
  401440:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401444:	9132a000 	add	x0, x0, #0xca8
  401448:	b9419800 	ldr	w0, [x0, #408]
  40144c:	b9000fe0 	str	w0, [sp, #12]
  401450:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401454:	9132a000 	add	x0, x0, #0xca8
  401458:	b9419800 	ldr	w0, [x0, #408]
  40145c:	b9000fe0 	str	w0, [sp, #12]
  401460:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401464:	9132a000 	add	x0, x0, #0xca8
  401468:	52800641 	mov	w1, #0x32                  	// #50
  40146c:	b9019801 	str	w1, [x0, #408]
  401470:	52800000 	mov	w0, #0x0                   	// #0
  401474:	910043ff 	add	sp, sp, #0x10
  401478:	d65f03c0 	ret

000000000040147c <StoreData>:
  40147c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  401480:	910003fd 	mov	x29, sp
  401484:	f9000bff 	str	xzr, [sp, #16]
  401488:	90000000 	adrp	x0, 401000 <Mesh_dot+0xc8>
  40148c:	91180001 	add	x1, x0, #0x600
  401490:	90000000 	adrp	x0, 401000 <Mesh_dot+0xc8>
  401494:	91164000 	add	x0, x0, #0x590
  401498:	97fffc7a 	bl	400680 <fopen@plt>
  40149c:	f9000be0 	str	x0, [sp, #16]
  4014a0:	f9400be3 	ldr	x3, [sp, #16]
  4014a4:	d28000e2 	mov	x2, #0x7                   	// #7
  4014a8:	d2800021 	mov	x1, #0x1                   	// #1
  4014ac:	90000000 	adrp	x0, 401000 <Mesh_dot+0xc8>
  4014b0:	91182000 	add	x0, x0, #0x608
  4014b4:	97fffc83 	bl	4006c0 <fwrite@plt>
  4014b8:	b9001fff 	str	wzr, [sp, #28]
  4014bc:	1400001d 	b	401530 <StoreData+0xb4>
  4014c0:	b9001bff 	str	wzr, [sp, #24]
  4014c4:	14000015 	b	401518 <StoreData+0x9c>
  4014c8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4014cc:	9101a002 	add	x2, x0, #0x68
  4014d0:	b9801be3 	ldrsw	x3, [sp, #24]
  4014d4:	b9801fe1 	ldrsw	x1, [sp, #28]
  4014d8:	aa0103e0 	mov	x0, x1
  4014dc:	d37ff800 	lsl	x0, x0, #1
  4014e0:	8b010000 	add	x0, x0, x1
  4014e4:	d37df000 	lsl	x0, x0, #3
  4014e8:	8b010000 	add	x0, x0, x1
  4014ec:	d37ef400 	lsl	x0, x0, #2
  4014f0:	8b030000 	add	x0, x0, x3
  4014f4:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  4014f8:	2a0003e2 	mov	w2, w0
  4014fc:	90000000 	adrp	x0, 401000 <Mesh_dot+0xc8>
  401500:	91184001 	add	x1, x0, #0x610
  401504:	f9400be0 	ldr	x0, [sp, #16]
  401508:	97fffc76 	bl	4006e0 <fprintf@plt>
  40150c:	b9401be0 	ldr	w0, [sp, #24]
  401510:	11000400 	add	w0, w0, #0x1
  401514:	b9001be0 	str	w0, [sp, #24]
  401518:	b9401be0 	ldr	w0, [sp, #24]
  40151c:	71018c1f 	cmp	w0, #0x63
  401520:	54fffd4d 	b.le	4014c8 <StoreData+0x4c>
  401524:	b9401fe0 	ldr	w0, [sp, #28]
  401528:	11000400 	add	w0, w0, #0x1
  40152c:	b9001fe0 	str	w0, [sp, #28]
  401530:	b9401fe0 	ldr	w0, [sp, #28]
  401534:	71018c1f 	cmp	w0, #0x63
  401538:	54fffc4d 	b.le	4014c0 <StoreData+0x44>
  40153c:	f9400be3 	ldr	x3, [sp, #16]
  401540:	d2800042 	mov	x2, #0x2                   	// #2
  401544:	d2800021 	mov	x1, #0x1                   	// #1
  401548:	90000000 	adrp	x0, 401000 <Mesh_dot+0xc8>
  40154c:	91186000 	add	x0, x0, #0x618
  401550:	97fffc5c 	bl	4006c0 <fwrite@plt>
  401554:	f9400be0 	ldr	x0, [sp, #16]
  401558:	97fffc46 	bl	400670 <fclose@plt>
  40155c:	52800000 	mov	w0, #0x0                   	// #0
  401560:	a8c27bfd 	ldp	x29, x30, [sp], #32
  401564:	d65f03c0 	ret

Disassembly of section .fini:

0000000000401568 <_fini>:
  401568:	d503201f 	nop
  40156c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  401570:	910003fd 	mov	x29, sp
  401574:	a8c17bfd 	ldp	x29, x30, [sp], #16
  401578:	d65f03c0 	ret
