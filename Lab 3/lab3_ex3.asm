;=================================================
; Name: Casey Le
; Email: cle125@ucr.edu
; 
; Lab: lab 3, ex 3
; Lab section: 24
; TA: Daniel Tan
; 
;=================================================

.ORIG x3000

LEA R2, ARRAY_PTR
LD R3, DEC_10

LEA R0, PROMPT
PUTS

DO_WHILE_LOOP_1
    GETC
    STR R0, R2, #0
    ADD R2, R2, #1
    ADD R3, R3, #-1
    BRp DO_WHILE_LOOP_1
END_DO_WHILE_LOOP_1

LEA R2, ARRAY_PTR
LD R3, DEC_10

DO_WHILE_LOOP_2
    LDR R0, R2, #0
    OUT
    LD R0, NEWLINE
    OUT
    ADD R2, R2, #1
    ADD R3, R3, #-1
    BRp DO_WHILE_LOOP_2
END_DO_WHILE_LOOP_2

 
HALT

; Local data
PROMPT .STRINGZ "Enter 10 Characters:\n"
DEC_10 .FILL #10
ARRAY_PTR .BLKW #10
NEWLINE .FILL x0A

.END