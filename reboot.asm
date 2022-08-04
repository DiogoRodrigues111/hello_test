global start

section .text

start:
    MOV ds, ax
    MOV ax, 0000
    MOV [0472], ax
    JMP 0xFFFF:000

section .data