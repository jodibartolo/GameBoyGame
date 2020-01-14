	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"pauseScreen.c"
	.text
	.align	2
	.global	initBoard1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBoard1, %function
initBoard1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #0
	push	{r4, r5, lr}
	mov	ip, #60
	mov	r5, #32
	mov	r4, #16
	mov	lr, #96
	mov	r0, #24
	mov	r1, #8
	strh	r2, [r3, #20]	@ movhi
	ldr	r3, .L4
	str	r5, [r3, #24]
	str	r4, [r3, #28]
	str	lr, [r3, #12]
	str	r2, [r3, #32]
	str	ip, [r3, #8]
	str	r0, [r3, #48]
	str	r1, [r3, #36]
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	iceBoard1
	.size	initBoard1, .-initBoard1
	.align	2
	.global	drawBoard1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBoard1, %function
drawBoard1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L7
	ldr	r3, [r2, #12]
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, [r2, #8]
	ldr	ip, [r2, #48]
	ldr	r1, [r2, #36]
	ldr	r2, .L7+4
	orr	r0, r0, #20480
	add	r1, r1, ip, lsl #5
	strh	r3, [r2, #242]	@ movhi
	strh	r0, [r2, #240]	@ movhi
	strh	r1, [r2, #244]	@ movhi
	bx	lr
.L8:
	.align	2
.L7:
	.word	iceBoard1
	.word	shadowOAM
	.size	drawBoard1, .-drawBoard1
	.align	2
	.global	updateBoard1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBoard1, %function
updateBoard1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L19
	ldr	r3, .L19+4
	ldr	r2, [r1, #32]
	push	{r4, r5}
	smull	r4, r5, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r5, asr #3
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #2
	bne	.L10
	ldr	r0, [r1, #36]
	cmp	r0, #8
	beq	.L17
	cmp	r0, #16
	beq	.L18
	cmp	r0, #0
	bne	.L12
	ldr	r3, [r1, #48]
	cmp	r3, #28
	moveq	r3, #8
	streq	r3, [r1, #36]
	beq	.L10
.L12:
	mov	r0, #8
	mov	r3, #24
	str	r0, [r1, #36]
	str	r3, [r1, #48]
.L10:
	add	r2, r2, #1
	str	r2, [r1, #32]
	pop	{r4, r5}
	bx	lr
.L17:
	ldr	r3, [r1, #48]
	bic	r3, r3, #4
	cmp	r3, #24
	moveq	r3, #16
	streq	r3, [r1, #36]
	bne	.L12
	b	.L10
.L18:
	ldr	r0, [r1, #48]
	cmp	r0, #24
	moveq	r0, #28
	streq	r3, [r1, #36]
	streq	r0, [r1, #48]
	bne	.L12
	b	.L10
.L20:
	.align	2
.L19:
	.word	iceBoard1
	.word	1717986919
	.size	updateBoard1, .-updateBoard1
	.comm	iceBoard1,60,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
