;=================================================
; Name: Casey Le
; Email: cle125@ucr.edu
; 
; Lab: lab 4, ex 2
; Lab section: 24
; TA: Daniel Tan
; 
;=================================================

.ORIG x3000

LD R1, ARRAY
AND R2, R2, #0
STR R2, R1, #0
LD R3, DEC_9

DO_FILL
    ADD R1, R1, #1
    ADD R2, R2, #1
    STR R2, R1, #0

    ADD R3, R3, #-1
    BRnp DO_FILL

LD R1, ARRAY
ADD R1, R1, #6
LDR R2, R1, #0

LD R1, ARRAY
LD R3, ASCII_0
LD R4, DEC_9
    ADD R4, R4, #1
DO_PRINT
    LDR R0, R1, #0
    ADD R0, R0, R3
    OUT

    LD R0, NEWLINE
    OUT

    ADD R1, R1, #1

    ADD R4, R4, #-1
    BRnp DO_PRINT


HALT

ARRAY .FILL x4000
DEC_9 .FILL #9
ASCII_0 .FILL #48
NEWLINE .FILL x0A
.END

.ORIG x4000
    .BLKW #10

.END
