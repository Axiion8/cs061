;=========================================================================
; Name & Email must be EXACTLY as in Gradescope roster!
; Name: Casey Le
; Email: cle125@ucr.edu
; 
; Assignment name: Assignment 2
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

;----------------------------------------------
;output prompt
;----------------------------------------------	
LEA R0, intro			; get starting address of prompt string
PUTS			    	; Invokes BIOS routine to output string

;-------------------------------
;INSERT YOUR CODE here
;--------------------------------

GETC
OUT
ADD R1, R0, #0
LD R0, newline
OUT

GETC
OUT
ADD R2, R0, #0
LD R0, newline
OUT

ADD R0, R1, #0
OUT
LEA R0, SUBTRACT
PUTS

ADD R0, R2, #0
OUT
LEA R0, EQUAL_SIGN
PUTS

ADD R1, R1, #-15
ADD R1, R1, #-15 
ADD R1, R1, #-15
ADD R1, R1, #-3
ADD R2, R2, #-15
ADD R2, R2, #-15
ADD R2, R2, #-15
ADD R2, R2, #-3

NOT R3, R2
ADD R3, R3,#1
ADD R4, R1, R3

BRn negative
ADD R4,R4,#0
BRzp positive

negative
    NOT R4,R4
    ADD R4, R4, #1
    ADD R4, R4, #15
    ADD R4, R4, #15
    ADD R4, R4, #15
    ADD R4, R4, #3
    LD R0, NEG_SIGN
    OUT
    ADD R0, R4, #0
    OUT
BRp end

positive
    ADD R4, R4, #15
    ADD R4, R4, #15
    ADD R4, R4, #15
    ADD R4, R4, #3
    ADD R0, R4, #0
    OUT
end

LD R0, newline
OUT

HALT				; Stop execution of program
;------	
;Data
;------
; String to prompt user. Note: already includes terminating newline!
intro 	.STRINGZ	"ENTER two numbers (i.e '0'....'9')\n" 		; prompt string - use with LEA, followed by PUTS.
newline .FILL x0A	; newline character - use with LD followed by OUT

NEG_SIGN .STRINGZ "-"
EQUAL_SIGN .STRINGZ " = "
SUBTRACT .STRINGZ " - "

;---------------	
;END of PROGRAM
;---------------	
.END

