mov ports, 1110b
start:
; Grab the values from all of the ports
mov a, pl
mov b, pr
mov c, pb
; Get the sum of all the values
add a, b
add a, c
; If a equals -3 set the zero flag to true, if it is not equal to -3 set it to false
cmp a, 0xFD
; Jump to the compare address
jmp compare
true:
mov pf, 0xFF
jmp start
false:
mov pf, 0x00
jmp start
compare:    ; Prevent it from looping
; If the zero flag is true return -1, if it is not equal to -1 return 0
jz true
jmp false
