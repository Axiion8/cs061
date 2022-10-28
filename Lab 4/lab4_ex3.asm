;=================================================
; Name: Casey Le
; Email: cle125@ucr.edu
; 
; Lab: lab 4, ex 3
; Lab section: 24
; TA: Daniel Tan
; 
;=================================================

.ORIG x3000

LD R1, ARRAY
AND R2, R2, #0
ADD R2, R2, #1
STR R2, R1, #0
LD R3, DEC_9

DO_WHILE
    ADD R1, R1, #1
    ADD R2, R2, R2
    STR R2, R1, #0

    ADD R3, R3, #-1
    BRnp DO_WHILE

LD R1, ARRAY
ADD R1, R1, #6
LDR R2, R1, #0


HALT


ARRAY .FILL x4000
DEC_9 .FILL #9
.END

.ORIG x4000
    .BLKW #10

.END