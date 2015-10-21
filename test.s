.syntax unified
.thumb

.section .isr_vectors
.align
.long __stack_top
.long Reset_Handler

.equ GPIO0DATA, 0x50003FFC
.equ GPIO0DIR, 0x50008000

.text
.align
.thumb_func
.global Reset_Handler
Reset_Handler:
crt0:

ldr r6, =GPIO0DIR
ldr r0, =0x0C
str r0, [r6]

ldr r0, =0x04
ldr r6, =GPIO0DATA
ldr r1, =0x0C

blink:

str r0, [r6]
eors r0, r1
ldr r2, =0x300000
loop:
subs r2, 1
bne loop

b blink

