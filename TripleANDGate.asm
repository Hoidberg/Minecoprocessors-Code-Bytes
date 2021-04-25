mov ports, 1110b
start:
mov a, pl
mov b, pr
mov c, pb
add a, b
add a, c
cmp a, 0xFD
jmp compare
true:
mov pf, 0xFF
jmp start
false:
mov pf, 0x00
jmp start
compare:	; Prevent it from looping
jz true
jmp false
