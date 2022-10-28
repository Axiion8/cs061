.orig 3000

lea r2, label1
ld r3, label2
ldr r4, r3, #0
ldi r5, label3
halt

label1 .fill xb100
label2 .fill xc100
label3 .fill xc000

.end