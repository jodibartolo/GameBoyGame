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
	.file	"catch.c"
	.text
	.align	2
	.global	initPlayer1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer1, %function
initPlayer1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r2, #0
	mov	r7, #18
	mov	r6, #32
	mov	r5, #1
	mov	r4, #2
	mov	lr, #100
	mov	ip, #10
	mov	r0, #20
	mov	r1, #8
	ldr	r3, .L4
	str	r7, [r3, #24]
	str	r6, [r3, #28]
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3, #8]
	str	ip, [r3, #12]
	str	r0, [r3, #48]
	str	r1, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	iceman1
	.size	initPlayer1, .-initPlayer1
	.align	2
	.global	initHealth1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHealth1, %function
initHealth1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #32
	mov	ip, #24
	mov	r0, #180
	ldr	r3, .L7
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	ip, [r3, #36]
	str	r0, [r3, #12]
	str	r2, [r3, #48]
	str	r2, [r3, #8]
	str	r2, [r3, #56]
	bx	lr
.L8:
	.align	2
.L7:
	.word	iceHealth
	.size	initHealth1, .-initHealth1
	.align	2
	.global	drawHealth1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHealth1, %function
drawHealth1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L11
	ldr	r3, [r2, #12]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	str	lr, [sp, #-4]!
	ldr	r0, [r2, #36]
	ldr	lr, [r2, #48]
	ldr	r1, .L11+4
	ldr	ip, [r2, #8]
	add	r2, r0, lr, lsl #5
	strh	r3, [r1, #130]	@ movhi
	strh	ip, [r1, #128]	@ movhi
	strh	r2, [r1, #132]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L12:
	.align	2
.L11:
	.word	iceHealth
	.word	shadowOAM
	.size	drawHealth1, .-drawHealth1
	.align	2
	.global	initHealth2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHealth2, %function
initHealth2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #32
	mov	r2, #0
	mov	ip, #24
	mov	r0, #210
	ldr	r3, .L14
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	ip, [r3, #36]
	str	r0, [r3, #12]
	str	r2, [r3, #48]
	str	r2, [r3, #8]
	bx	lr
.L15:
	.align	2
.L14:
	.word	iceHealth1
	.size	initHealth2, .-initHealth2
	.align	2
	.global	drawHealth2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHealth2, %function
drawHealth2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L18
	ldr	r3, [r2, #12]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	str	lr, [sp, #-4]!
	ldr	r0, [r2, #36]
	ldr	lr, [r2, #48]
	ldr	r1, .L18+4
	ldr	ip, [r2, #8]
	add	r2, r0, lr, lsl #5
	strh	r3, [r1, #146]	@ movhi
	strh	ip, [r1, #144]	@ movhi
	strh	r2, [r1, #148]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L19:
	.align	2
.L18:
	.word	iceHealth1
	.word	shadowOAM
	.size	drawHealth2, .-drawHealth2
	.align	2
	.global	drawCream1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCream1, %function
drawCream1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #512
	ldr	r3, .L26
	ldr	r2, .L26+4
	add	ip, r3, #1200
.L23:
	ldr	r1, [r3, #56]
	cmp	r1, #0
	ldreq	r0, [r3, #12]
	ldreq	r1, [r3, #36]
	ldreq	r4, [r3, #48]
	ldreq	lr, [r3, #8]
	orreq	r0, r0, #16384
	addeq	r1, r1, r4, lsl #5
	add	r3, r3, #60
	strhne	r5, [r2, #200]	@ movhi
	strheq	r0, [r2, #202]	@ movhi
	strheq	r1, [r2, #204]	@ movhi
	strheq	lr, [r2, #200]	@ movhi
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L23
	pop	{r4, r5, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	iceCream1
	.word	shadowOAM
	.size	drawCream1, .-drawCream1
	.align	2
	.global	drawPlayer1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer1, %function
drawPlayer1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L35
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L34
	ldr	r2, [r3, #12]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	str	lr, [sp, #-4]!
	ldr	r0, [r3, #36]
	ldr	lr, [r3, #48]
	ldr	r1, .L35+4
	ldr	ip, [r3, #8]
	add	r3, r0, lr, lsl #5
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L34:
	ldr	r2, .L35+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L36:
	.align	2
.L35:
	.word	iceman1
	.word	shadowOAM+376
	.size	drawPlayer1, .-drawPlayer1
	.align	2
	.global	drawLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r2, #0
	mov	r5, #512
	ldr	r3, .L43
	ldr	r4, .L43+4
.L40:
	ldr	r1, [r3, #56]
	cmp	r1, #0
	add	r1, r2, #480
	strhne	r5, [r4, r1]	@ movhi
	bne	.L39
	ldr	ip, [r3, #12]
	ldr	r7, [r3, #48]
	ldr	r0, [r3, #36]
	add	r1, r4, r2
	ldr	r6, [r3, #8]
	add	lr, r1, #480
	orr	ip, ip, #16384
	add	r1, r1, #484
	add	r0, r0, r7, lsl #5
	strh	ip, [lr, #2]	@ movhi
	strh	r6, [lr]	@ movhi
	strh	r0, [r1]	@ movhi
.L39:
	add	r2, r2, #8
	cmp	r2, #48
	add	r3, r3, #60
	bne	.L40
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L44:
	.align	2
.L43:
	.word	lives
	.word	shadowOAM
	.size	drawLives, .-drawLives
	.align	2
	.global	drawLevel
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLevel, %function
drawLevel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	bl	drawPlayer1
	bl	drawCream1
	bl	drawLives
	ldr	r1, .L47
	ldr	r2, .L47+4
	ldr	r4, .L47+8
	ldr	r5, [r1, #48]
	ldr	lr, [r1, #12]
	ldr	ip, [r2, #12]
	ldr	r0, [r1, #36]
	ldr	r3, .L47+12
	orr	lr, lr, r4
	orr	ip, ip, r4
	add	r0, r0, r5, lsl #5
	ldr	r4, [r1, #8]
	ldr	r5, [r2, #48]
	ldr	r1, [r2, #36]
	strh	lr, [r3, #130]	@ movhi
	ldr	lr, [r2, #8]
	add	r2, r1, r5, lsl #5
	strh	r4, [r3, #128]	@ movhi
	strh	lr, [r3, #144]	@ movhi
	strh	ip, [r3, #146]	@ movhi
	strh	r0, [r3, #132]	@ movhi
	strh	r2, [r3, #148]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L48:
	.align	2
.L47:
	.word	iceHealth
	.word	iceHealth1
	.word	-32768
	.word	shadowOAM
	.size	drawLevel, .-drawLevel
	.align	2
	.global	initLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLives, %function
initLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #20
	mov	ip, #4
	mov	r0, #1
	mov	r4, #10
	mov	lr, #16
	mov	r1, #0
	ldr	r3, .L53
.L50:
	str	r2, [r3, #12]
	add	r2, r2, #12
	cmp	r2, #92
	str	ip, [r3, #24]
	str	ip, [r3, #28]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r4, [r3, #8]
	str	lr, [r3, #48]
	str	r1, [r3, #36]
	str	r1, [r3, #56]
	add	r3, r3, #60
	bne	.L50
	pop	{r4, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	lives
	.size	initLives, .-initLives
	.align	2
	.global	initCream1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCream1, %function
initCream1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r8, .L61
	mov	r5, #0
	mov	r4, r8
	mov	r10, #8
	mov	r9, #1
	ldr	r7, .L61+4
	ldr	r6, .L61+8
	sub	sp, sp, #12
.L58:
	mov	fp, #0
	str	r10, [r4, #24]
	str	r10, [r4, #28]
	str	r9, [r4, #16]
	str	r9, [r4, #20]
	str	fp, [r4, #8]
	mov	lr, pc
	bx	r7
	smull	r2, r3, r0, r6
	stm	sp, {r2-r3}
	ldr	r3, [sp, #4]
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	tst	r5, #1
	sub	r3, r0, r3, lsl #3
	str	r3, [r4, #12]
	moveq	r3, #20
	movne	r3, #22
	add	r5, r5, #1
	cmp	r5, #20
	str	fp, [r4, #52]
	str	r10, [r4, #36]
	str	r9, [r4, #56]
	str	r3, [r4, #48]
	add	r4, r4, #60
	bne	.L58
	mov	ip, #0
	ldr	r4, .L61+12
	str	ip, [r8, #56]
	mov	r3, #16384
	ldr	r2, .L61+16
	ldr	r1, .L61+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L61+24
	ldr	r1, .L61+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L62:
	.align	2
.L61:
	.word	iceCream1
	.word	rand
	.word	1374389535
	.word	DMANow
	.word	100728832
	.word	FinalSheetTiles
	.word	83886592
	.word	FinalSheetPal
	.size	initCream1, .-initCream1
	.align	2
	.global	initLevel
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel, %function
initLevel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #6
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #0
	ldr	r2, .L67
	ldr	r3, .L67+4
	mov	r0, #0
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+8
	mov	lr, pc
	bx	r3
	bl	initCream1
	ldr	ip, .L67+12
	str	r5, [ip]
	ldr	ip, .L67+16
	mov	r2, r5
	str	r5, [ip, #32]
	str	r5, [ip, #36]
	str	r5, [ip, #56]
	mov	r5, #100
	mov	r8, #1
	mov	r7, #10
	mov	r6, #20
	str	r5, [ip, #8]
	mov	fp, #18
	mov	r10, #32
	mov	r9, #2
	mov	r5, #8
	mov	r0, r8
	mov	r4, r7
	mov	r3, r6
	mov	r1, #4
	mov	lr, #16
	str	fp, [ip, #24]
	str	r10, [ip, #28]
	str	r9, [ip, #20]
	str	r5, [ip, #52]
	str	r8, [ip, #16]
	str	r7, [ip, #12]
	str	r6, [ip, #48]
	ldr	ip, .L67+20
.L64:
	str	r3, [ip, #12]
	add	r3, r3, #12
	cmp	r3, #92
	str	r1, [ip, #24]
	str	r1, [ip, #28]
	str	r0, [ip, #16]
	str	r0, [ip, #20]
	str	r4, [ip, #8]
	str	lr, [ip, #48]
	str	r2, [ip, #36]
	str	r2, [ip, #56]
	add	ip, ip, #60
	bne	.L64
	mov	r1, #180
	mov	r0, #32
	mov	ip, #24
	mov	lr, #210
	ldr	r3, .L67+24
	str	r1, [r3, #12]
	ldr	r1, .L67+28
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r2, [r3, #48]
	str	r2, [r3, #8]
	str	r2, [r3, #56]
	str	ip, [r3, #36]
	str	lr, [r1, #12]
	str	ip, [r1, #36]
	str	r0, [r1, #24]
	str	r0, [r1, #28]
	str	r2, [r1, #48]
	str	r2, [r1, #8]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L68:
	.align	2
.L67:
	.word	icees
	.word	time
	.word	srand
	.word	collect
	.word	iceman1
	.word	lives
	.word	iceHealth
	.word	iceHealth1
	.size	initLevel, .-initLevel
	.align	2
	.global	updateCream1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCream1, %function
updateCream1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #0
	sub	sp, sp, #28
	ldr	r4, .L88
	ldr	r6, .L88+4
	ldr	r8, .L88+8
	ldr	r9, .L88+12
	ldr	fp, .L88+16
	ldr	r10, .L88+20
	b	.L78
.L87:
	ldr	r2, [r4, #8]
	cmp	r2, #149
	bgt	.L71
	ldr	r3, [r4, #16]
	ldr	r7, [r6, #36]
	add	r3, r3, r2
	cmp	r7, #4
	str	r3, [r4, #8]
	beq	.L85
.L73:
	cmp	r7, #0
	beq	.L86
.L75:
	add	r5, r5, #1
	cmp	r5, #20
	add	r4, r4, #60
	beq	.L69
.L78:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L87
	ldr	r2, [r6, #32]
	smull	r0, r1, r2, r8
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #1
	add	r1, r3, r3, lsl #5
	add	r3, r3, r1, lsl #1
	subs	r3, r2, r3
	bne	.L75
	mov	r2, r3
	ldr	r3, .L88
	rsb	r5, r5, r5, lsl #4
	add	r5, r3, r5, lsl #2
	str	r2, [r5, #56]
.L69:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L71:
	mov	r7, #1
	str	r3, [r4, #8]
	str	r7, [r4, #56]
	mov	lr, pc
	bx	r10
	ldr	r3, .L88+24
	smull	r1, r2, r0, r3
	str	r1, [sp, #16]
	str	r2, [sp, #20]
	ldr	r3, [sp, #20]
	ldr	r1, .L88+28
	asr	ip, r0, #31
	rsb	r3, ip, r3, asr #6
	ldr	r2, [r1]
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r2, r2, #1
	sub	r3, r0, r3, lsl #3
	ldr	r0, .L88+32
	str	r2, [r1]
	rsb	r2, r2, r2, lsl #4
	add	r2, r0, r2, lsl #2
	str	r7, [r2, #56]
	ldr	r7, [r6, #36]
	cmp	r7, #4
	str	r3, [r4, #12]
	bne	.L73
.L85:
	mov	lr, #9
	ldr	ip, [r6, #8]
	add	r2, r4, #24
	add	ip, ip, #19
	ldm	r2, {r2, r3}
	str	ip, [sp, #4]
	ldr	ip, [r6, #12]
	ldr	r1, [r4, #8]
	str	r7, [sp, #12]
	ldr	r0, [r4, #12]
	str	lr, [sp, #8]
	str	ip, [sp]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L74
	ldr	r7, [r6, #36]
	cmp	r7, #0
	bne	.L75
.L86:
	mov	r0, #4
	mov	ip, #12
	ldr	r3, [r6, #24]
	ldr	r2, [r6, #8]
	ldr	r1, [r6, #12]
	add	r2, r2, #19
	add	r1, r1, r3
	str	r2, [sp, #4]
	str	r1, [sp]
	str	r0, [sp, #12]
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #24]
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	str	ip, [sp, #8]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L75
	mov	r2, #1
	ldr	r3, [fp]
	add	r3, r3, r2
	str	r3, [fp]
	str	r2, [r4, #56]
	str	r7, [r4, #8]
	mov	lr, pc
	bx	r10
	ldr	r3, .L88+24
	smull	r1, r2, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r2, r3, r3, lsl #2
.L84:
	sub	ip, r0, r2, lsl #3
	mov	r3, r7
	ldr	r2, .L88+36
	ldr	r1, .L88+40
	ldr	r0, .L88+44
	ldr	r7, .L88+48
	str	ip, [r4, #12]
	mov	lr, pc
	bx	r7
	b	.L75
.L74:
	mov	r2, #1
	mov	r7, #0
	ldr	r3, [fp]
	add	r3, r3, r2
	str	r3, [fp]
	str	r2, [r4, #56]
	str	r7, [r4, #8]
	mov	lr, pc
	bx	r10
	ldr	r3, .L88+24
	smull	r1, r2, r0, r3
	str	r1, [sp, #16]
	str	r2, [sp, #20]
	ldr	r3, [sp, #20]
	asr	r2, r0, #31
	rsb	r2, r2, r3, asr #6
	add	r2, r2, r2, lsl #2
	add	r2, r2, r2, lsl #2
	b	.L84
.L89:
	.align	2
.L88:
	.word	iceCream1
	.word	iceman1
	.word	128207979
	.word	collision
	.word	collect
	.word	rand
	.word	1374389535
	.word	icees
	.word	lives
	.word	11025
	.word	5964
	.word	yumm
	.word	playSoundB
	.size	updateCream1, .-updateCream1
	.align	2
	.global	updatePlayer1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer1, %function
updatePlayer1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L104
	ldrh	r3, [r3, #48]
	tst	r3, #32
	str	lr, [sp, #-4]!
	beq	.L91
	ldr	r3, .L104+4
.L92:
	ldr	r2, .L104
	ldrh	r2, [r2, #48]
	ands	r2, r2, #16
	beq	.L94
	ldr	r2, [r3, #36]
.L95:
	ldr	r1, .L104+8
	ldrh	r1, [r1]
	tst	r1, #1
	beq	.L96
	ldr	r1, .L104+12
	ldrh	r1, [r1]
	ands	r1, r1, #1
	bne	.L96
	mov	lr, #6
	ldr	r0, .L104+16
	ldr	ip, .L104+20
	str	r1, [r0, #56]
	str	lr, [ip]
	str	r1, [r0, #116]
	str	r1, [r0, #176]
	str	r1, [r0, #236]
	str	r1, [r0, #296]
	str	r1, [r0, #356]
.L96:
	ldr	r1, .L104
	ldrh	r1, [r1, #48]
	tst	r1, #32
	str	r2, [r3, #40]
	moveq	r2, #4
	streq	r2, [r3, #36]
	ldr	r2, .L104
	ldrh	r2, [r2, #48]
	ands	r2, r2, #16
	streq	r2, [r3, #36]
	ldr	r2, [r3, #32]
	add	r2, r2, #1
	str	r2, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L94:
	ldr	r0, [r3, #12]
	ldr	r1, [r3, #24]
	add	r1, r0, r1
	cmp	r1, #239
	ldrle	r1, [r3, #20]
	addle	r0, r1, r0
	str	r2, [r3, #36]
	strle	r0, [r3, #12]
	b	.L95
.L91:
	mov	r1, #4
	ldr	r3, .L104+4
	ldr	r2, [r3, #12]
	cmp	r2, #0
	str	r1, [r3, #36]
	ldrgt	r1, .L104+24
	ldrgt	r1, [r1, #20]
	subgt	r2, r2, r1
	strgt	r2, [r3, #12]
	b	.L92
.L105:
	.align	2
.L104:
	.word	67109120
	.word	iceman1
	.word	oldButtons
	.word	buttons
	.word	lives
	.word	icees
	.word	iceman
	.size	updatePlayer1, .-updatePlayer1
	.align	2
	.global	animatePlayer1
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer1, %function
animatePlayer1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L109
	ldr	r3, .L109+4
	ldrh	r1, [r2, #48]
	ldr	r2, [r3, #36]
	tst	r1, #32
	str	r2, [r3, #40]
	moveq	r2, #4
	streq	r2, [r3, #36]
	ldr	r2, .L109
	ldrh	r2, [r2, #48]
	ands	r2, r2, #16
	streq	r2, [r3, #36]
	ldr	r2, [r3, #32]
	add	r2, r2, #1
	str	r2, [r3, #32]
	bx	lr
.L110:
	.align	2
.L109:
	.word	67109120
	.word	iceman1
	.size	animatePlayer1, .-animatePlayer1
	.align	2
	.global	updateHealth1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHealth1, %function
updateHealth1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L133
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L123
	cmp	r3, #2
	beq	.L124
	cmp	r3, #3
	beq	.L125
	cmp	r3, #4
	beq	.L126
	cmp	r3, #5
	beq	.L127
	cmp	r3, #6
	beq	.L128
	cmp	r3, #7
	beq	.L129
	cmp	r3, #8
	beq	.L130
	cmp	r3, #9
	beq	.L131
	cmp	r3, #10
	beq	.L132
	cmp	r3, #0
	moveq	r1, #24
	ldreq	r2, .L133+4
	streq	r1, [r2, #36]
	streq	r3, [r2, #48]
	bx	lr
.L124:
	mov	r2, #16
	ldr	r3, .L133+4
	str	r2, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L123:
	mov	r1, #20
	mov	r2, #16
	ldr	r3, .L133+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L127:
	mov	r1, #20
	mov	r2, #4
	ldr	r3, .L133+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L125:
	mov	r1, #20
	mov	r2, #12
	ldr	r3, .L133+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L126:
	mov	r1, #20
	mov	r2, #8
	ldr	r3, .L133+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L131:
	mov	r1, #16
	mov	r2, #4
	ldr	r3, .L133+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L128:
	mov	r1, #20
	mov	r2, #0
	ldr	r3, .L133+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L129:
	mov	r1, #16
	mov	r2, #12
	ldr	r3, .L133+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L130:
	mov	r1, #16
	ldr	r2, .L133+4
	str	r1, [r2, #36]
	str	r3, [r2, #48]
	bx	lr
.L132:
	mov	r1, #16
	mov	r2, #0
	ldr	r3, .L133+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L134:
	.align	2
.L133:
	.word	collect
	.word	iceHealth
	.size	updateHealth1, .-updateHealth1
	.align	2
	.global	updateHealth2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHealth2, %function
updateHealth2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L155
	ldr	r3, [r3]
	cmp	r3, #11
	beq	.L146
	cmp	r3, #12
	beq	.L147
	cmp	r3, #13
	beq	.L148
	cmp	r3, #14
	beq	.L149
	cmp	r3, #15
	beq	.L150
	cmp	r3, #16
	beq	.L151
	cmp	r3, #17
	beq	.L152
	cmp	r3, #18
	beq	.L153
	cmp	r3, #19
	beq	.L154
	cmp	r3, #20
	moveq	r1, #16
	moveq	r2, #0
	ldreq	r3, .L155+4
	streq	r1, [r3, #36]
	streq	r2, [r3, #48]
	bx	lr
.L147:
	mov	r2, #16
	ldr	r3, .L155+4
	str	r2, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L146:
	mov	r1, #20
	mov	r2, #16
	ldr	r3, .L155+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L150:
	mov	r1, #20
	mov	r2, #4
	ldr	r3, .L155+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L148:
	mov	r1, #20
	mov	r2, #12
	ldr	r3, .L155+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L149:
	mov	r1, #20
	mov	r2, #8
	ldr	r3, .L155+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L154:
	mov	r0, #16
	mov	r2, #4
	ldr	r1, .L155+8
	ldr	r3, .L155+4
	str	r0, [r1, #36]
	str	r2, [r3, #48]
	bx	lr
.L151:
	mov	r1, #20
	mov	r2, #0
	ldr	r3, .L155+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L152:
	mov	r1, #16
	mov	r2, #12
	ldr	r3, .L155+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L153:
	mov	r1, #16
	mov	r2, #8
	ldr	r3, .L155+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L156:
	.align	2
.L155:
	.word	collect
	.word	iceHealth1
	.word	iceHealth
	.size	updateHealth2, .-updateHealth2
	.align	2
	.global	updateLevel
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLevel, %function
updateLevel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer1
	bl	updateCream1
	bl	updateHealth2
	pop	{r4, lr}
	b	updateHealth1
	.size	updateLevel, .-updateLevel
	.align	2
	.global	updateLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLives, %function
updateLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #1
	ldr	r3, .L160
	ldr	r3, [r3]
	ldr	r2, .L160+4
	rsb	r3, r3, r3, lsl #4
	add	r3, r2, r3, lsl #2
	str	r1, [r3, #56]
	bx	lr
.L161:
	.align	2
.L160:
	.word	icees
	.word	lives
	.size	updateLives, .-updateLives
	.comm	collect,4,4
	.comm	icees,4,4
	.comm	iceHealth1,60,4
	.comm	iceHealth,60,4
	.comm	lives,360,4
	.comm	iceman1,60,4
	.comm	iceCream1,1200,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
