	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L6:
	bl getint
	mov r10, r0
	str r10, [fp, #-12]
	bl getint
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-12]
	str r10, [fp, #-4]
	ldr r10, [fp, #-8]
	str r10, [fp, #-12]
	ldr r10, [fp, #-4]
	str r10, [fp, #-8]
	ldr r10, [fp, #-12]
	mov r0, r10
	bl putint
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl putch
	ldr r10, [fp, #-8]
	mov r0, r10
	bl putint
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl putch
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #12
	pop {r10, fp, lr}
	bx lr

addr_n_0:
	.word n
