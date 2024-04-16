section .data
    digit db 0, 10

section .text
    global _start

_start:

    mov rax, 6
    mov rbx, 2
    div rbx
    call _printRAXDigit

    mov rax, 60
    mov rdi, 0
    syscall

; if the rax register is divided, it merges with the rdx register and then gets divided giving a 128-bit register

_printRAXDigit:

    add rax, 48
    mov [digit], al
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 2
    syscall
    ret
