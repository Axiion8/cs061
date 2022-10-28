;=================================================
; Name: Casey Le
; Email: cle125@ucr.edu
; 
; Lab: lab 4, ex 1
; Lab section: 24
; TA: Daniel Tan
; 
;=================================================

.ORIG x3000

LD R3, ARRAY1
LD R1, ZERO
LD R4, POPULATE_CNT

POPULATE_LOOP
    STR R1, R3, #0
    ADD R1, R1, #1
    ADD R3, R3, #1
    ADD R4, R4, #-1
    BRp POPULATE_LOOP
    
LD R3, ARRAY1

LDR R2, R3, #6

PRINT_NEWLINE
    LD R0, NEWLINE
    OUT

HALT

ZERO .FILL #0
NEWLINE .FILL x0A
POPULATE_CNT .FILL #10
ARRAY1 .FILL x4000
.END

.ORIG x4000
ARRAY .BLKW #10
.END