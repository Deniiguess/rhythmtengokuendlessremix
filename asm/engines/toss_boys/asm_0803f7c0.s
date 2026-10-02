asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start toss_boys_cue_barely \n\
LDR R3, =0x030002A4 \n\
LDR R2, [R3] \n\
CMP R2, 0x00 \n\
BNE dont_set_barely \n\
LDR R3, =0x030002AB \n\
MOVS R2, 0x0B \n\
STRB R2, [R3] \n\
dont_set_barely: \n\
/* 0803f7c0 */ PUSH {LR} \n\
/* 0803f7c2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803f7c4 */ BL func_0803f59c \n\
/* 0803f7c8 */ POP {R0} \n\
/* 0803f7ca */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
