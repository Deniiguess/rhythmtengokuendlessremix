asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tram_pauline_cue_miss \n\
LDR R1, =0x030002A4 \n\
LDR R0, [R1] \n\
CMP R0, 0x00 \n\
BNE dont_set_fail_check \n\
MOVS R0, 0x01 \n\
STR R0, [R1] \n\
dont_set_fail_check: \n\
/* 08040b14 */ PUSH {LR} \n\
/* 08040b16 */ BL beatscript_enable_loops \n\
/* 08040b1a */ POP {R0} \n\
/* 08040b1c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
