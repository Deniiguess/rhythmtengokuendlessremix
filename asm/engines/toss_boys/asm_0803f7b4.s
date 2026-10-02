asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start toss_boys_cue_hit \n\
LDR R3, =0x030002A4 \n\
LDR R4, [R3] \n\
CMP R4, 0x00 \n\
BNE dont_inc_point \n\
LDR R3, =0x030002AA \n\
LDRB R4, [R3] \n\
ADDS R4, 0x01 \n\
STRB R4, [R3] \n\
dont_inc_point: \n\
/* 0803f7b4 */ PUSH {LR} \n\
/* 0803f7b6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f7b8 */ BL func_0803f59c \n\
/* 0803f7bc */ POP {R0} \n\
/* 0803f7be */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
