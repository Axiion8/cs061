;=================================================
; Name: Casey Le
; Email: cle125@ucr.edu
; 
; Lab: lab 3, ex 4
; Lab section: 24
; TA: Daniel Tan
; 
;=================================================

.ORIG x3000
LEA R0, PROMPT
PUTS

LD R2, ARRAY_PTR
LD R0, NEWLINE
OUT

DO_WHILE_LOOP
    GETC
    OUT
    STR R0, R2, #0
    ADD R2, R2, #1
    ADD R1, R0, #-10
    BRnp DO_WHILE_LOOP
END_DO_WHILE_LOOP

LD R2, ARRAY_PTR

DO_WHILE_LOOP_2
    LDR R0, R2, #0
    OUT
    ADD R2, R2, #1
    ADD R1, R2, #-10
    BRnp DO_WHILE_LOOP_2
END_DO_WHILE_LOOP_2

LD R0, NEWLINE
OUT


HALT


PROMPT .STRINGZ "Enter up to 100 Characters: \n"
NEWLINE .FILL x10a
DEC_10 .FILL #10
ARRAY_PTR .FILL x4000
.END

.ORIG x4000
.BLKW #100
.END
