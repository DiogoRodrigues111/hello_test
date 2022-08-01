global start

section .text

start:
    MOV ECX, __msg
    MOV EDX, __msg_len
    MOV EAX, 4 ; output (sys_write)
    MOV EBX, 1
    int 80h

    MOV EAX, 1  ; select always for next iterations.
    int 80h

    ; :D <( work ) zZzZzZzZ
section .data

; create an variables.
__msg: DB "Hello, world!", 0xF
__msg_len EQU $ - __msg