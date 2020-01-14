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
	.file	"level.c"
	.text
	.align	2
	.global	initPlayerWalk
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayerWalk, %function
initPlayerWalk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #1
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #12
	mov	lr, #100
	mov	r1, #16
	mov	ip, #8
	ldr	r3, .L4
	str	r0, [r3, #16]
	ldr	r0, .L4+4
	str	r4, [r3, #24]
	str	lr, [r3, #8]
	str	ip, [r3, #52]
	str	r1, [r3, #28]
	str	r1, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	str	r2, [r0, #48]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	icemanWalk
	.word	iceman
	.size	initPlayerWalk, .-initPlayerWalk
	.align	2
	.global	initBoard
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBoard, %function
initBoard:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, #96
	mov	r4, #32
	mov	lr, #16
	mov	r0, #0
	mov	r1, #24
	mov	r2, #8
	ldr	r3, .L8
	str	r4, [r3, #24]
	str	lr, [r3, #28]
	str	ip, [r3, #12]
	str	r0, [r3, #8]
	str	r1, [r3, #48]
	str	r2, [r3, #36]
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	iceBoard
	.size	initBoard, .-initBoard
	.align	2
	.global	drawBoard
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBoard, %function
drawBoard:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L11
	ldr	r3, [r2, #12]
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, [r2, #8]
	ldr	ip, [r2, #48]
	ldr	r1, [r2, #36]
	ldr	r2, .L11+4
	orr	r0, r0, #20480
	add	r1, r1, ip, lsl #5
	strh	r3, [r2, #242]	@ movhi
	strh	r0, [r2, #240]	@ movhi
	strh	r1, [r2, #244]	@ movhi
	bx	lr
.L12:
	.align	2
.L11:
	.word	iceBoard
	.word	shadowOAM
	.size	drawBoard, .-drawBoard
	.align	2
	.global	updateBoard
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBoard, %function
updateBoard:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L22
	ldr	r3, .L22+4
	ldr	r2, [r2, #32]
	smull	r0, r1, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #2
	bxne	lr
	ldr	r2, .L22+8
	ldr	r1, [r2, #36]
	cmp	r1, #8
	beq	.L19
	cmp	r1, #16
	beq	.L20
	cmp	r1, #0
	bne	.L16
	ldr	r3, [r2, #48]
	cmp	r3, #28
	beq	.L21
.L16:
	mov	r1, #8
	mov	r3, #24
	str	r1, [r2, #36]
	str	r3, [r2, #48]
	bx	lr
.L19:
	ldr	r3, [r2, #48]
	bic	r3, r3, #4
	cmp	r3, #24
	bne	.L16
	mov	r3, #16
	str	r3, [r2, #36]
	bx	lr
.L20:
	ldr	r1, [r2, #48]
	cmp	r1, #24
	bne	.L16
	mov	r1, #28
	str	r3, [r2, #36]
	str	r1, [r2, #48]
	bx	lr
.L21:
	mov	r3, #8
	str	r3, [r2, #36]
	bx	lr
.L23:
	.align	2
.L22:
	.word	icemanWalk
	.word	1717986919
	.word	iceBoard
	.size	updateBoard, .-updateBoard
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayerWalk
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerWalk, %function
updatePlayerWalk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L29
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #12]
	rsb	r3, r3, #240
	cmp	r3, r2, asr #3
	movle	r3, #1
	strle	r3, [r4, #56]
	ble	.L24
	ldr	r5, [r4, #32]
	ldr	r3, .L29+4
	smull	r0, r1, r5, r3
	asr	r3, r5, #31
	rsb	r3, r3, r1, asr #4
	ldr	r0, [r4, #20]
	add	r3, r3, r3, lsl #2
	ldr	r1, [r4, #36]
	add	r2, r2, r0, asr #3
	cmp	r5, r3, lsl #3
	str	r2, [r4, #12]
	str	r1, [r4, #40]
	bne	.L26
	ldr	r0, [r4, #48]
	ldr	r3, .L29+8
	add	r0, r0, #4
	ldr	r1, [r4, #52]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #48]
.L26:
	add	r5, r5, #1
	str	r5, [r4, #32]
.L24:
	pop	{r4, r5, r6, lr}
	bx	lr
.L30:
	.align	2
.L29:
	.word	icemanWalk
	.word	1717986919
	.word	__aeabi_idivmod
	.size	updatePlayerWalk, .-updatePlayerWalk
	.align	2
	.global	drawPlayerWalk
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerWalk, %function
drawPlayerWalk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L38
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L37
	str	lr, [sp, #-4]!
	ldr	ip, [r3, #48]
	ldr	lr, [r3, #12]
	ldr	r2, [r3, #36]
	ldr	r1, .L38+4
	ldr	r0, [r3, #8]
	ldr	r3, .L38+8
	orr	r1, r1, lr, asr #3
	add	r2, r2, ip, lsl #5
	strh	r1, [r3, #170]	@ movhi
	strh	r0, [r3, #168]	@ movhi
	strh	r2, [r3, #172]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L37:
	ldr	r2, .L38+8
	ldrh	r3, [r2, #168]
	orr	r3, r3, #512
	strh	r3, [r2, #168]	@ movhi
	bx	lr
.L39:
	.align	2
.L38:
	.word	icemanWalk
	.word	-32768
	.word	shadowOAM
	.size	drawPlayerWalk, .-drawPlayerWalk
	.comm	iceBoard,60,4
	.comm	icemanWalk,60,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
