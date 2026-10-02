asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rat_race_cue_miss \n\
LDR R1, =0x030002A4 \n\
LDR R0, [R1] \n\
CMP R0, 0x00 \n\
BNE dont_set_fail_check_RR \n\
MOVS R0, 0x01 \n\
STR R0, [R1] \n\
dont_set_fail_check_RR: \n\
/* 0803a644 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
