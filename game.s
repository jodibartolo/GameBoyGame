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
	.file	"game.c"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	jumpman.part.3, %function
jumpman.part.3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	lr, .L5
	ldr	r2, [lr]
	ldr	r3, .L5+4
	add	r2, r2, #1
	smull	r4, r5, r2, r3
	asr	r3, r2, #31
	ldr	r1, .L5+8
	rsb	r3, r3, r5, asr #2
	add	r0, r3, r3, lsl #2
	add	r3, r3, r0, lsl #1
	ldr	ip, [r1, #16]
	ldr	r0, [r1, #8]
	subs	r3, r2, r3, lsl #1
	str	r2, [lr]
	asr	ip, ip, #3
	ldreq	r2, .L5+12
	sub	r0, r0, ip, lsl #1
	str	r0, [r1, #8]
	streq	r3, [r2]
	pop	{r4, r5, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	uptime
	.word	780903145
	.word	iceman
	.word	jumping
	.size	jumpman.part.3, .-jumpman.part.3
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	shootMe.part.5, %function
shootMe.part.5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L15
	ldr	r1, .L15+4
	ldr	r3, [r2]
	ldr	r1, [r1]
	add	r3, r3, #1
	cmp	r1, #2
	str	r3, [r2]
	beq	.L14
	cmp	r1, #4
	bxne	lr
	ldr	r2, .L15+8
	smull	r0, r1, r3, r2
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #3
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, lsl #2
	bxne	lr
.L10:
	mov	r2, #0
	ldr	r3, .L15+12
	str	r2, [r3]
	bx	lr
.L14:
	ldr	r2, .L15+16
	smull	r0, r1, r3, r2
	asr	r2, r3, #31
	add	r1, r3, r1
	rsb	r2, r2, r1, asr #4
	rsb	r2, r2, r2, lsl #4
	cmp	r3, r2, lsl #1
	bxne	lr
	b	.L10
.L16:
	.align	2
.L15:
	.word	shootcount
	.word	.LANCHOR0
	.word	1717986919
	.word	shooting
	.word	-2004318071
	.size	shootMe.part.5, .-shootMe.part.5
	.align	2
	.global	initZombie
	.syntax unified
	.arm
	.fpu softvfp
	.type	initZombie, %function
initZombie:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L21
	mov	r7, #16
	mov	r3, r5
	mov	r6, #32
	mov	r2, #1
	mov	lr, #100
	mov	ip, #220
	mov	r4, #0
	mov	r1, #8
	add	r0, r5, #600
.L18:
	str	r7, [r3, #24]
	str	r6, [r3, #28]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	lr, [r3, #8]
	str	ip, [r3, #12]
	str	r4, [r3, #32]
	str	r4, [r3, #48]
	str	r1, [r3, #52]
	str	r1, [r3, #36]
	str	r2, [r3, #56]
	add	r3, r3, #60
	cmp	r3, r0
	bne	.L18
	ldr	r6, .L21+4
	mov	r3, #16384
	ldr	r2, .L21+8
	ldr	r1, .L21+12
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #256
	ldr	r2, .L21+16
	ldr	r1, .L21+20
	mov	r0, #3
	mov	lr, pc
	bx	r6
	str	r4, [r5, #56]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	zombies
	.word	DMANow
	.word	100728832
	.word	FinalSheetTiles
	.word	83886592
	.word	FinalSheetPal
	.size	initZombie, .-initZombie
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r6, #16
	mov	r5, #32
	mov	r4, #12
	mov	lr, #2
	mov	ip, #100
	mov	r0, #10
	mov	r1, #8
	ldr	r3, .L25
	str	r6, [r3, #24]
	str	r5, [r3, #28]
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #48]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	pop	{r4, r5, r6, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	iceman
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initCream
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCream, %function
initCream:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r0, #4
	mov	r2, #0
	mov	r1, #1
	mov	r5, #12
	ldr	lr, .L31
	ldr	r3, .L31+4
	ldr	ip, [lr, #8]
	ldr	r4, [lr, #12]
	add	ip, ip, #20
	add	lr, r3, #300
.L28:
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r2, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #8]
	str	r4, [r3, #12]
	str	r2, [r3, #32]
	str	r5, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #36]
	str	r1, [r3, #56]
	add	r3, r3, #60
	cmp	r3, lr
	bne	.L28
	pop	{r4, r5, lr}
	bx	lr
.L32:
	.align	2
.L31:
	.word	iceman
	.word	iceCream
	.size	initCream, .-initCream
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r10, #21
	mov	r5, #1
	mov	r2, #0
	mov	lr, #10
	mov	ip, #8
	mov	r4, #16
	mov	r6, #2
	mov	r9, #32
	mov	r8, #12
	mov	r7, #100
	mov	r0, #96
	mov	r1, #9
	ldr	r3, .L37
	str	r10, [r3]
	ldr	r3, .L37+4
	str	r5, [r3]
	ldr	r3, .L37+8
	str	r2, [r3]
	ldr	r3, .L37+12
	str	r2, [r3]
	ldr	r3, .L37+16
	str	r2, [r3, #32]
	str	r2, [r3, #48]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	str	r9, [r3, #28]
	str	r8, [r3, #16]
	str	r7, [r3, #8]
	str	lr, [r3, #12]
	str	ip, [r3, #52]
	ldr	r2, .L37+20
	str	r4, [r3, #24]
	str	r6, [r3, #20]
	ldr	r3, .L37+24
	str	r0, [r2]
	str	r1, [r3]
	bl	initZombie
	mov	r2, #38
	ldr	r3, .L37+28
	ldr	r1, [r3]
	ldr	r3, .L37+32
	cmp	r1, #4
	str	r2, [r3, #24]
	moveq	r2, #3
	streq	r2, [r3, #20]
	mov	r2, #200
	mov	lr, #24
	str	r4, [r3, #28]
	mov	r4, #90
	mov	r0, #8
	mov	r1, #0
	mov	ip, #32
	str	r2, [r3, #12]
	ldr	r2, .L37+36
	str	r5, [r3, #16]
	strne	r6, [r3, #20]
	str	r4, [r3, #8]
	str	lr, [r2, #36]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r0, [r3, #48]
	str	r0, [r3, #52]
	str	r0, [r3, #36]
	str	ip, [r2, #24]
	str	ip, [r2, #28]
	str	r1, [r2, #48]
	str	r1, [r2, #12]
	str	r1, [r2, #8]
	b	initCream
.L38:
	.align	2
.L37:
	.word	a
	.word	run
	.word	dead
	.word	selfDrive
	.word	iceman
	.word	vOff
	.word	hOff
	.word	.LANCHOR0
	.word	zombieCar
	.word	iceHealth
	.size	initGame, .-initGame
	.align	2
	.global	initCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCar, %function
initCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	ldr	r3, .L42
	ldr	ip, [r3]
	ldr	r3, .L42+4
	cmp	ip, #4
	str	r2, [r3, #16]
	mov	r0, #38
	mov	r1, #16
	moveq	r2, #3
	movne	r2, #2
	str	r0, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3, #20]
	mov	r0, #90
	mov	r2, #8
	mov	r1, #200
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #36]
	bx	lr
.L43:
	.align	2
.L42:
	.word	.LANCHOR0
	.word	zombieCar
	.size	initCar, .-initCar
	.align	2
	.global	initHealth
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHealth, %function
initHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #32
	mov	r0, #24
	ldr	r3, .L45
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r0, [r3, #36]
	str	r2, [r3, #48]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L46:
	.align	2
.L45:
	.word	iceHealth
	.size	initHealth, .-initHealth
	.align	2
	.global	drawHealth
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHealth, %function
drawHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L49
	ldr	r3, [r2, #12]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	str	lr, [sp, #-4]!
	ldr	r0, [r2, #36]
	ldr	lr, [r2, #48]
	ldr	r1, .L49+4
	ldr	ip, [r2, #8]
	add	r2, r0, lr, lsl #5
	strh	r3, [r1, #130]	@ movhi
	strh	ip, [r1, #128]	@ movhi
	strh	r2, [r1, #132]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L50:
	.align	2
.L49:
	.word	iceHealth
	.word	shadowOAM
	.size	drawHealth, .-drawHealth
	.align	2
	.global	drawCream
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCream, %function
drawCream:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #512
	ldr	r3, .L57
	ldr	r2, .L57+4
	add	ip, r3, #300
.L54:
	ldr	r1, [r3, #56]
	cmp	r1, #0
	ldreq	r0, [r3, #12]
	ldreq	r1, [r3, #36]
	ldreq	r4, [r3, #48]
	ldreq	lr, [r3, #8]
	orreq	r0, r0, #16384
	addeq	r1, r1, r4, lsl #5
	add	r3, r3, #60
	strhne	r5, [r2, #144]	@ movhi
	strheq	r0, [r2, #146]	@ movhi
	strheq	r1, [r2, #148]	@ movhi
	strheq	lr, [r2, #144]	@ movhi
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L54
	pop	{r4, r5, lr}
	bx	lr
.L58:
	.align	2
.L57:
	.word	iceCream
	.word	shadowOAM
	.size	drawCream, .-drawCream
	.align	2
	.global	updateCream
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCream, %function
updateCream:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	lr, #1
	ldr	r2, .L67
	ldr	r3, .L67+4
	ldr	r2, [r2, #32]
	smull	r4, r5, r2, r3
	asr	r1, r2, #31
	add	r3, r2, r5
	rsb	r1, r1, r3, asr #4
	ldr	r3, .L67+8
	rsb	r1, r1, r1, lsl #4
	ldr	r6, .L67+12
	sub	r1, r2, r1, lsl lr
	add	ip, r3, #300
.L64:
	ldr	r2, [r3, #12]
	cmp	r2, #246
	cmpne	r2, #0
	streq	lr, [r3, #56]
	beq	.L61
	ldr	r0, [r3, #56]
	cmp	r0, #0
	bne	.L61
	ldr	r0, [r3, #20]
	cmp	r1, #0
	add	r2, r0, r2
	str	r2, [r3, #12]
	bne	.L61
	ldr	r2, [r3, #36]
	add	r2, r2, #2
	smull	r4, r5, r2, r6
	sub	r0, r5, r2, asr #31
	add	r0, r0, r0, lsl #1
	sub	r2, r2, r0, lsl #1
	str	r2, [r3, #36]
.L61:
	add	r3, r3, #60
	cmp	r3, ip
	bne	.L64
	pop	{r4, r5, r6, lr}
	bx	lr
.L68:
	.align	2
.L67:
	.word	iceman
	.word	-2004318071
	.word	iceCream
	.word	715827883
	.size	updateCream, .-updateCream
	.align	2
	.global	shootCream
	.syntax unified
	.arm
	.fpu softvfp
	.type	shootCream, %function
shootCream:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L73
	ldr	r1, [r3, #36]
	cmp	r1, r2
	str	r2, [r0, #56]
	ldr	r2, [r3, #12]
	beq	.L72
	cmp	r2, #20
	mvngt	r3, #0
	strgt	r2, [r0, #12]
	strgt	r3, [r0, #20]
	bx	lr
.L72:
	mov	r1, #1
	ldr	r3, [r3, #24]
	add	r2, r3, r2
	str	r2, [r0, #12]
	str	r1, [r0, #20]
	bx	lr
.L74:
	.align	2
.L73:
	.word	iceman
	.size	shootCream, .-shootCream
	.align	2
	.global	updateHealth
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHealth, %function
updateHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L97
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L87
	cmp	r3, #2
	beq	.L88
	cmp	r3, #3
	beq	.L89
	cmp	r3, #4
	beq	.L90
	cmp	r3, #5
	beq	.L91
	cmp	r3, #6
	beq	.L92
	cmp	r3, #7
	beq	.L93
	cmp	r3, #8
	beq	.L94
	cmp	r3, #9
	beq	.L95
	cmp	r3, #10
	beq	.L96
	cmp	r3, #0
	moveq	r1, #24
	ldreq	r2, .L97+4
	streq	r1, [r2, #36]
	streq	r3, [r2, #48]
	bx	lr
.L88:
	mov	r2, #16
	ldr	r3, .L97+4
	str	r2, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L87:
	mov	r1, #20
	mov	r2, #16
	ldr	r3, .L97+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L91:
	mov	r1, #20
	mov	r2, #4
	ldr	r3, .L97+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L89:
	mov	r1, #20
	mov	r2, #12
	ldr	r3, .L97+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L90:
	mov	r1, #20
	mov	r2, #8
	ldr	r3, .L97+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L95:
	mov	r1, #16
	mov	r2, #4
	ldr	r3, .L97+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L92:
	mov	r1, #20
	mov	r2, #0
	ldr	r3, .L97+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L93:
	mov	r1, #16
	mov	r2, #12
	ldr	r3, .L97+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L94:
	mov	r1, #16
	ldr	r2, .L97+4
	str	r1, [r2, #36]
	str	r3, [r2, #48]
	bx	lr
.L96:
	mov	r1, #16
	mov	r2, #0
	ldr	r3, .L97+4
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	bx	lr
.L98:
	.align	2
.L97:
	.word	hits
	.word	iceHealth
	.size	updateHealth, .-updateHealth
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L106
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L105
	ldr	r2, [r3, #12]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	str	lr, [sp, #-4]!
	ldr	r0, [r3, #36]
	ldr	lr, [r3, #48]
	ldr	r1, .L106+4
	ldr	ip, [r3, #8]
	add	r3, r0, lr, lsl #5
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L105:
	ldr	r2, .L106+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L107:
	.align	2
.L106:
	.word	iceman
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawZombie
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawZombie, %function
drawZombie:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L116
	push	{r4, r5, lr}
	ldr	r2, .L116+4
	ldr	r5, .L116+8
	add	ip, r3, #600
	b	.L111
.L115:
	ldrh	r1, [r2, #16]
	add	r3, r3, #60
	orr	r1, r1, #512
	cmp	r3, ip
	strh	r1, [r2, #16]	@ movhi
	add	r2, r2, #8
	beq	.L114
.L111:
	ldr	r1, [r3, #56]
	cmp	r1, #0
	bne	.L115
	ldr	r0, [r3, #12]
	ldr	r4, [r3, #48]
	ldr	r1, [r3, #36]
	ldr	lr, [r3, #8]
	add	r3, r3, #60
	orr	r0, r0, r5
	add	r1, r1, r4, lsl #5
	cmp	r3, ip
	strh	r0, [r2, #18]	@ movhi
	strh	r1, [r2, #20]	@ movhi
	strh	lr, [r2, #16]	@ movhi
	add	r2, r2, #8
	bne	.L111
.L114:
	pop	{r4, r5, lr}
	bx	lr
.L117:
	.align	2
.L116:
	.word	zombies
	.word	shadowOAM
	.word	-32768
	.size	drawZombie, .-drawZombie
	.align	2
	.global	drawCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCar, %function
drawCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L122
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L121
	ldr	r2, .L122+4
	ldr	r3, [r2, #12]
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, [r2, #8]
	ldr	ip, [r2, #48]
	ldr	r1, [r2, #36]
	ldr	r2, .L122+8
	orr	r0, r0, #16384
	add	r1, r1, ip, lsl #5
	strh	r3, [r2, #114]	@ movhi
	strh	r0, [r2, #112]	@ movhi
	strh	r1, [r2, #116]	@ movhi
	bx	lr
.L121:
	ldr	r2, .L122+8
	ldrh	r3, [r2, #112]
	orr	r3, r3, #512
	strh	r3, [r2, #112]	@ movhi
	bx	lr
.L123:
	.align	2
.L122:
	.word	dead
	.word	zombieCar
	.word	shadowOAM
	.size	drawCar, .-drawCar
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #67108864
	ldr	r3, .L126
	ldr	r0, .L126+4
	ldr	r3, [r3]
	ldr	r2, .L126+8
	push	{r4, r5, r6, r7, r8, lr}
	smull	r6, r7, r3, r0
	smull	r4, r5, r3, r2
	asr	r3, r3, #31
	sub	r2, r7, r3
	rsb	r3, r3, r5, asr #1
	lsl	r2, r2, #16
	lsl	r3, r3, #16
	lsr	r2, r2, #16
	lsr	r3, r3, #16
	strh	r2, [r1, #20]	@ movhi
	strh	r3, [r1, #28]	@ movhi
	bl	drawPlayer
	bl	drawZombie
	bl	drawCar
	ldr	r2, .L126+12
	ldr	r3, [r2, #12]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	lr, [r2, #48]
	ldr	r0, [r2, #36]
	ldr	r1, .L126+16
	ldr	ip, [r2, #8]
	add	r2, r0, lr, lsl #5
	strh	r3, [r1, #130]	@ movhi
	strh	ip, [r1, #128]	@ movhi
	strh	r2, [r1, #132]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawCream
.L127:
	.align	2
.L126:
	.word	hOff
	.word	1431655766
	.word	1717986919
	.word	iceHealth
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.global	__aeabi_idivmod
	.align	2
	.global	updateZombie
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateZombie, %function
updateZombie:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r10, .L184
	ldr	r3, [r10]
	add	r3, r3, #1
	sub	sp, sp, #20
	mov	r8, #0
	ldr	r4, .L184+4
	str	r3, [r10]
	ldr	fp, .L184+8
	ldr	r9, .L184+12
	b	.L157
.L129:
	ldr	r5, [fp]
	ldr	r0, [r10]
	add	r1, r5, #58
	ldr	r3, .L184+16
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	beq	.L176
.L146:
	add	r8, r8, #1
	cmp	r8, #10
	add	r4, r4, #60
	beq	.L128
.L157:
	ldr	r6, [r4, #56]
	cmp	r6, #0
	bne	.L129
	ldr	r3, [r4, #12]
	ldr	r2, [r4, #20]
	cmp	r3, #0
	addeq	r3, r8, #240
	sub	r3, r3, r2
	ldr	r1, [r4, #8]
	str	r3, [r4, #12]
	ldr	r3, [r4, #16]
	sub	r1, r1, r3
	cmp	r1, #110
	cmpne	r1, #80
	rsbeq	r3, r3, #0
	streq	r3, [r4, #16]
	ldr	r3, .L184+20
	ldr	r3, [r3]
	cmp	r3, #0
	str	r1, [r4, #8]
	beq	.L134
	ldr	r5, .L184+24
	ldr	r3, [r5, #48]
	cmp	r3, #8
	beq	.L177
.L135:
	cmp	r3, #12
	beq	.L178
.L134:
	ldr	r3, [r9, #56]
	cmp	r3, #0
	bne	.L139
	ldr	r3, [r9, #48]
	ldr	r0, [r4, #12]
	cmp	r3, #8
	add	r2, r4, #24
	add	r5, r9, #24
	add	r0, r0, #2
	ldr	r1, [r4, #8]
	ldm	r2, {r2, r3}
	ldr	ip, [r9, #12]
	ldr	lr, [r9, #8]
	ldm	r5, {r5, r7}
	beq	.L179
.L140:
	stm	sp, {ip, lr}
	str	r7, [sp, #12]
	str	r5, [sp, #8]
	ldr	ip, .L184+28
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L180
.L139:
	ldr	r7, .L184+32
	mov	r5, r7
	ldr	r3, [r5, #56]
	cmp	r3, #0
	beq	.L181
.L145:
	add	r6, r6, #1
	cmp	r6, #5
	add	r5, r5, #60
	beq	.L146
	ldr	r3, [r5, #56]
	cmp	r3, #0
	bne	.L145
.L181:
	add	ip, r5, #24
	ldm	ip, {ip, lr}
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	str	lr, [sp, #12]
	ldr	lr, [r5, #8]
	str	ip, [sp, #8]
	ldr	ip, [r5, #12]
	ldr	r1, [r4, #8]
	stm	sp, {ip, lr}
	ldr	r0, [r4, #12]
	ldr	ip, .L184+28
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L145
	mov	r1, #1
	mov	r0, #240
	ldr	r2, .L184+36
	ldr	r3, [r2]
	rsb	r6, r6, r6, lsl #4
	add	r8, r8, #1
	add	r6, r7, r6, lsl #2
	add	r3, r3, r1
	cmp	r8, #10
	str	r1, [r4, #56]
	str	r0, [r4, #12]
	str	r1, [r6, #56]
	str	r3, [r2]
	add	r4, r4, #60
	bne	.L157
.L128:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L180:
	ldr	r3, [r9, #12]
	cmp	r3, #6
	movle	r3, #240
	ldr	r2, .L184+36
	subgt	r3, r3, #4
	strgt	r3, [r9, #12]
	strle	r3, [r4, #12]
	ldr	r3, [r2]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r2]
	b	.L139
.L176:
	ldr	r3, .L184+40
	cmp	r5, #0
	str	r1, [r10]
	ldr	r3, [r3]
	ble	.L149
	cmp	r3, #2
	subeq	r5, r5, #3
	streq	r5, [fp]
	beq	.L151
.L150:
	sub	r5, r5, #1
	str	r5, [fp]
.L151:
	cmp	r5, #0
	addgt	r5, r5, #3
	strgt	r5, [fp]
.L153:
	mov	r1, #0
	ldr	r3, .L184+4
	rsb	r8, r8, r8, lsl #4
	add	r8, r3, r8, lsl #2
	ldr	r2, [r8, #8]
	ldr	r3, [r8, #28]
	add	r3, r2, r3
	cmp	r3, #120
	str	r1, [r8, #56]
	beq	.L182
	cmp	r2, #90
	mvneq	r2, #0
	moveq	r3, #89
	streq	r2, [r8, #16]
	streq	r3, [r8, #8]
	b	.L128
.L179:
	stm	sp, {ip, lr}
	str	r7, [sp, #12]
	str	r5, [sp, #8]
	ldr	ip, .L184+28
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L141
	mov	r0, #240
	mov	r1, #1
	ldr	r2, .L184+36
	ldr	r3, [r2]
	add	r3, r3, #2
	str	r3, [r2]
	str	r0, [r4, #12]
	str	r1, [r4, #56]
	b	.L139
.L177:
	mov	ip, #4
	ldr	lr, [r5, #8]
	add	r2, r4, #24
	add	lr, lr, #10
	ldm	r2, {r2, r3}
	str	lr, [sp, #4]
	ldr	lr, [r5, #28]
	str	ip, [sp, #8]
	ldr	ip, [r5, #12]
	ldr	r0, [r4, #12]
	str	ip, [sp]
	str	lr, [sp, #12]
	ldr	ip, .L184+28
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L183
	mov	r1, #1
	mov	r0, #240
	ldr	r2, .L184+36
	ldr	r3, [r2]
	add	r3, r3, r1
	str	r3, [r2]
	str	r0, [r4, #12]
	str	r1, [r4, #56]
	b	.L134
.L178:
	mov	ip, #4
	ldr	r3, [r5, #24]
	ldr	r2, [r5, #8]
	ldr	r1, [r5, #12]
	ldr	r0, [r5, #28]
	add	r1, r1, r3
	add	r2, r2, #10
	str	r2, [sp, #4]
	str	r1, [sp]
	str	r0, [sp, #12]
	str	ip, [sp, #8]
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #24]
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	ldr	ip, .L184+28
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L134
	mov	r0, #1
	mov	r1, #240
	ldr	r2, .L184+36
	ldr	r3, [r2]
	add	r3, r3, r0
	str	r3, [r2]
	str	r0, [r4, #56]
	str	r1, [r4, #12]
	b	.L134
.L183:
	ldr	r3, [r5, #48]
	b	.L135
.L141:
	ldr	r3, [r9, #56]
	cmp	r3, #0
	bne	.L139
	ldr	r0, [r4, #12]
	add	r2, r4, #24
	add	r5, r9, #24
	ldr	r1, [r4, #8]
	ldm	r2, {r2, r3}
	ldr	ip, [r9, #12]
	ldr	lr, [r9, #8]
	ldm	r5, {r5, r7}
	add	r0, r0, #2
	b	.L140
.L149:
	cmp	r3, #2
	beq	.L153
	b	.L150
.L182:
	mov	r3, #1
	add	r2, r2, r3
	str	r2, [r8, #8]
	str	r3, [r8, #16]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L185:
	.align	2
.L184:
	.word	zombietime
	.word	zombies
	.word	a
	.word	iceman
	.word	__aeabi_idivmod
	.word	selfDrive
	.word	zombieCar
	.word	collision
	.word	iceCream
	.word	hits
	.word	.LANCHOR0
	.size	updateZombie, .-updateZombie
	.align	2
	.global	updateCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCar, %function
updateCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L206
	ldr	r3, [r6]
	cmp	r3, #0
	sub	sp, sp, #20
	bne	.L187
	mov	r3, #8
	ldr	r4, .L206+4
	ldr	r0, [r4, #12]
	cmp	r0, #2
	str	r3, [r4, #48]
	movle	r3, #220
	ldr	r5, .L206+8
	add	r1, r5, #24
	ldm	r1, {r1, r2}
	ldrgt	r3, [r4, #20]
	ldr	lr, [r5, #8]
	ldr	ip, [r5, #12]
	str	r2, [sp, #12]
	str	r1, [sp, #8]
	ldr	r2, [r4, #24]
	ldr	r1, [r4, #8]
	subgt	r0, r0, r3
	movle	r0, r3
	strle	r3, [r4, #12]
	stm	sp, {ip, lr}
	ldr	r3, [r4, #28]
	sub	r2, r2, #26
	add	r1, r1, #20
	ldr	r7, .L206+12
	strgt	r0, [r4, #12]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L191
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L192
	ldr	r2, [r5, #12]
	cmp	r2, #6
	movle	r1, #240
	ldrgt	r1, .L206+16
	ldrle	r2, .L206+16
	subgt	r2, r2, #4
	strgt	r2, [r5, #12]
	strgt	r3, [r1]
	strle	r1, [r4, #12]
	strle	r3, [r2]
.L192:
	ldr	r3, .L206+20
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L191
	ldr	r3, .L206+24
	ldrh	r3, [r3]
	tst	r3, #512
	moveq	r3, #1
	streq	r3, [r6]
	streq	r3, [r5, #56]
.L191:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L187:
	ldr	r3, .L206+28
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L195
	ldr	r3, .L206+4
	mov	r1, #8
	ldr	r2, [r3, #12]
	cmp	r2, #2
	movle	r2, #220
	str	r1, [r3, #48]
	ldrgt	r1, [r3, #20]
	subgt	r2, r2, r1
	str	r2, [r3, #12]
.L195:
	ldr	r3, .L206+28
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L197
	ldr	r3, .L206+4
	ldr	r2, [r3, #24]
	ldr	r1, [r3, #12]
	rsb	r2, r2, #240
	cmp	r1, r2
	mov	r0, #12
	movge	r2, #2
	ldrlt	r2, [r3, #20]
	addlt	r1, r2, r1
	str	r0, [r3, #48]
	strlt	r1, [r3, #12]
	strge	r2, [r3, #12]
.L197:
	ldr	r3, .L206+20
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L191
	ldr	r3, .L206+24
	ldrh	r3, [r3]
	ands	r3, r3, #512
	ldreq	r2, .L206+8
	streq	r3, [r6]
	streq	r3, [r2, #56]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L207:
	.align	2
.L206:
	.word	selfDrive
	.word	zombieCar
	.word	iceman
	.word	collision
	.word	hits
	.word	oldButtons
	.word	buttons
	.word	67109120
	.size	updateCar, .-updateCar
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r8, .L220
	ldr	r1, .L220+4
	ldr	r7, [r8, #32]
	smull	r2, r3, r7, r1
	asr	r5, r7, #31
	rsb	r3, r5, r3, asr #3
	ldr	r2, [r8, #36]
	add	r3, r3, r3, lsl #2
	cmp	r7, r3, lsl #2
	str	r2, [r8, #40]
	bne	.L209
	ldr	r3, .L220+8
	ldrh	r2, [r3, #48]
	ldrh	r3, [r3, #48]
	mvn	r2, r2
	mvn	r3, r3
	and	r2, r2, #32
	and	r3, r3, #16
	orrs	r3, r2, r3
	bne	.L219
.L209:
	ldr	r1, .L220+12
	smull	r2, r3, r7, r1
	add	r3, r7, r3
	rsb	r5, r5, r3, asr #4
	ldr	r4, .L220+16
	rsb	r5, r5, r5, lsl #4
	ldr	r9, .L220+20
	sub	r5, r7, r5, lsl #1
	add	r6, r4, #600
.L211:
	cmp	r5, #0
	bne	.L210
	add	r0, r4, #48
	ldm	r0, {r0, r1}
	add	r0, r0, #4
	mov	lr, pc
	bx	r9
	str	r1, [r4, #48]
.L210:
	add	r4, r4, #60
	cmp	r4, r6
	bne	.L211
	ldr	r3, .L220+8
	ldrh	r3, [r3, #48]
	tst	r3, #32
	moveq	r3, #4
	streq	r3, [r8, #36]
	ldr	r3, .L220+8
	ldrh	r3, [r3, #48]
	add	r7, r7, #1
	ands	r3, r3, #16
	streq	r3, [r8, #36]
	str	r7, [r8, #32]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L219:
	ldr	r0, [r8, #48]
	ldr	r3, .L220+20
	add	r0, r0, #4
	ldr	r1, [r8, #52]
	mov	lr, pc
	bx	r3
	str	r1, [r8, #48]
	b	.L209
.L221:
	.align	2
.L220:
	.word	iceman
	.word	1717986919
	.word	67109120
	.word	-2004318071
	.word	zombies
	.word	__aeabi_idivmod
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L252
	ldrh	r2, [r4]
	tst	r2, #2
	beq	.L223
	ldr	r3, .L252+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L249
.L223:
	ldr	r1, .L252+8
	ldr	r3, [r1]
	cmp	r3, #0
	bne	.L226
	ldr	r0, .L252+12
	ldr	r3, [r0, #8]
	cmp	r3, #100
	ldrne	ip, [r0, #16]
	addne	r3, r3, ip, asr #3
	strne	r3, [r0, #8]
.L226:
	tst	r2, #64
	beq	.L227
	ldr	r3, .L252+4
	ldrh	r3, [r3]
	ands	r3, r3, #64
	beq	.L250
.L227:
	ldr	r3, .L252+16
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L229
	mov	r0, #4
	ldr	r3, .L252+12
	ldr	r1, [r3, #12]
	cmp	r1, #0
	str	r0, [r3, #36]
	ldrgt	r0, [r3, #20]
	ldr	ip, [r3, #48]
	subgt	r1, r1, r0
	str	ip, [r3, #44]
	strgt	r1, [r3, #12]
.L229:
	ldr	r3, .L252+16
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	bne	.L232
	ldr	r1, .L252+12
	ldr	ip, [r1, #12]
	ldr	r0, [r1, #24]
	add	r0, ip, r0
	cmp	r0, #239
	str	r3, [r1, #36]
	ldrle	r3, [r1, #20]
	ldr	lr, [r1, #48]
	addle	ip, r3, ip
	str	lr, [r1, #44]
	strle	ip, [r1, #12]
.L232:
	tst	r2, #1
	beq	.L234
	ldr	r3, .L252+4
	ldrh	r3, [r3]
	ands	r3, r3, #1
	bne	.L234
	mov	lr, #8
	mov	r0, #1
	ldr	ip, .L252+12
	ldr	r1, .L252+20
	ldr	r2, .L252+24
	str	lr, [ip, #48]
	str	r0, [r1]
	str	r3, [r2]
.L234:
	pop	{r4, r5, r6, lr}
	b	animatePlayer
.L250:
	ldr	r0, .L252+12
	ldr	r0, [r0, #8]
	cmp	r0, #100
	moveq	ip, #1
	ldreq	r0, .L252+28
	streq	ip, [r1]
	streq	r3, [r0]
	b	.L227
.L249:
	ldr	r6, .L252+32
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L223
	ldr	r0, .L252+36
	mov	r1, r0
.L225:
	ldr	r5, [r1, #56]
	cmp	r5, #1
	beq	.L251
	add	r3, r3, #1
	cmp	r3, #5
	add	r1, r1, #60
	bne	.L225
	b	.L223
.L251:
	ldr	r2, .L252+12
	ldr	r2, [r2, #8]
	rsb	r3, r3, r3, lsl #4
	add	r3, r0, r3, lsl #2
	add	r2, r2, #8
	str	r2, [r3, #8]
	mov	r0, r3
	bl	shootCream
	str	r5, [r6]
	ldrh	r2, [r4]
	b	.L223
.L253:
	.align	2
.L252:
	.word	oldButtons
	.word	buttons
	.word	jumping
	.word	iceman
	.word	67109120
	.word	butting
	.word	buttime
	.word	uptime
	.word	shooting
	.word	iceCream
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	timerCount
	.syntax unified
	.arm
	.fpu softvfp
	.type	timerCount, %function
timerCount:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L255
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	bx	lr
.L256:
	.align	2
.L255:
	.word	zombietime
	.size	timerCount, .-timerCount
	.align	2
	.global	jumpman
	.syntax unified
	.arm
	.fpu softvfp
	.type	jumpman, %function
jumpman:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L259
	ldr	r3, [r3]
	cmp	r3, #0
	bxeq	lr
	b	jumpman.part.3
.L260:
	.align	2
.L259:
	.word	jumping
	.size	jumpman, .-jumpman
	.align	2
	.global	headButt
	.syntax unified
	.arm
	.fpu softvfp
	.type	headButt, %function
headButt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L270
	ldr	r3, [r1]
	cmp	r3, #0
	bxeq	lr
	ldr	r0, .L270+4
	ldr	r2, [r0]
	ldr	r3, .L270+8
	add	r2, r2, #1
	push	{r4, r5}
	smull	r4, r5, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r5, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	str	r2, [r0]
	bne	.L261
	ldr	r0, .L270+12
	ldr	r2, [r0, #44]
	cmp	r2, #8
	moveq	r2, r3
	str	r3, [r1]
	str	r2, [r0, #48]
.L261:
	pop	{r4, r5}
	bx	lr
.L271:
	.align	2
.L270:
	.word	butting
	.word	buttime
	.word	1717986919
	.word	iceman
	.size	headButt, .-headButt
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L282
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r2, .L282+4
	ldreq	r3, [r2]
	push	{r4, lr}
	addeq	r3, r3, #1
	streq	r3, [r2]
	bl	updatePlayer
	bl	updateZombie
	bl	updateCar
	bl	updateHealth
	bl	updateCream
	ldr	r3, .L282+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L280
.L274:
	bl	headButt
	ldr	r3, .L282+12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L281
	pop	{r4, lr}
	bx	lr
.L281:
	pop	{r4, lr}
	b	shootMe.part.5
.L280:
	bl	jumpman.part.3
	b	.L274
.L283:
	.align	2
.L282:
	.word	selfDrive
	.word	hOff
	.word	jumping
	.word	shooting
	.size	updateGame, .-updateGame
	.align	2
	.global	shootMe
	.syntax unified
	.arm
	.fpu softvfp
	.type	shootMe, %function
shootMe:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L286
	ldr	r3, [r3]
	cmp	r3, #0
	bxeq	lr
	b	shootMe.part.5
.L287:
	.align	2
.L286:
	.word	shooting
	.size	shootMe, .-shootMe
	.comm	shooting,4,4
	.comm	shootcount,4,4
	.comm	butting,4,4
	.comm	buttime,4,4
	.comm	uptime,4,4
	.comm	jumping,4,4
	.comm	a,4,4
	.comm	zombietime,4,4
	.comm	run,4,4
	.global	level
	.comm	selfDrive,4,4
	.comm	position,4,4
	.comm	velocity,4,4
	.global	acceleration
	.comm	dt,4,4
	.comm	iceCream,300,4
	.comm	iceHealth,60,4
	.comm	zombieCar,60,4
	.comm	zombies,600,4
	.comm	iceman,60,4
	.comm	dead,4,4
	.comm	hits,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	level, %object
	.size	level, 4
level:
	.word	2
	.type	acceleration, %object
	.size	acceleration, 4
acceleration:
	.word	1
	.ident	"GCC: (devkitARM release 47) 7.1.0"
