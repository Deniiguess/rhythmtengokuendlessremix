asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tram_pauline_cue_barely \n\
LDR R2, =0x030002A4 \n\
LDR R0, [R2] \n\
CMP R0, 0x00 \n\
BNE dont_set_fail_check_TPb \n\
MOVS R0, 0x01 \n\
STR R0, [R2] \n\
dont_set_fail_check_TPb: \n\
/* 08040b04 */ PUSH {LR} \n\
/* 08040b06 */ LDRB R0, [R1] \n\
/* 08040b08 */ BL func_08040314 \n\
/* 08040b0c */ BL beatscript_enable_loops \n\
/* 08040b10 */ POP {R0} \n\
/* 08040b12 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
