;=========================================================================
; Name & Email must be EXACTLY as in Gradescope roster!
; Name: Casey Le
; Email: cle125@ucr.edu
; 
; Assignment name: Assignment 3
; Lab section: 24
; TA: Daniel Tan
; 
; I hereby certify that I have not received assistance on this assignment,
; or used code, from ANY outside source other than the instruction team
; (apart from what was provided in the starter file).
;
;=========================================================================

.ORIG x3000			; Program begins here
;-------------
;Instructions
;-------------
LD R6, Value_ptr		; R6 <-- pointer to value to be displayed as binary
LDR R1, R6, #0			; R1 <-- value to be displayed as binary 
;-------------------------------
;INSERT CODE STARTING FROM HERE
;--------------------------------

LD R2, DEC_15
LD R3, DEC_4
LD R4, DEC_0

DO_WHILE
ADD R1, R1, R4

BRzp POSITIVE
BRn END_POSITIVE
POSITIVE
LD R0, ASCII_48
OUT
END_POSITIVE


BRn NEGATIVE1
BRzp END_NEGATIVE1
NEGATIVE1
LD R0, ASCII_49
OUT
END_NEGATIVE1


ADD R3, R3, #-1
BRnp NO_SPACE
LD R0, SPACE
OUT
LD R3, DEC_4
NO_SPACE


ADD R4, R1, #0
ADD R2, R2, #-1
BRnp DO_WHILE


ADD R1, R1, R4
BRzp POST
BRn END_POST
POST
LD R0, ASCII_48
OUT
END_POST


BRn NEGATIVE2
BRzp END_NEGATIVE2
NEGATIVE2
LD R0, ASCII_49
OUT
END_NEGATIVE2


LEA R0, NEWLINE
PUTS


HALT

;---------------	
;Data
;---------------
Value_ptr	.FILL xCA01	; The address where value to be displayed is stored

DEC_0 .FILL #0
DEC_4 .FILL #4
DEC_15 .FILL #15

ASCII_48 .FILL #48
ASCII_49 .FILL #49

SPACE .FILL #32
NEWLINE .STRINGZ "\n"

.END

.ORIG xCA01					; Remote data
Value .FILL xABCD			; <----!!!NUMBER TO BE DISPLAYED AS BINARY!!! Note: label is redundant.
;---------------	
; END of PROGRAM
;---------------	
.END
