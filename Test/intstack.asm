section .data
    digit db 0,10

section .text
    global _start

_start:

    push 4
    push 5
    push 6
    
    mov rax, 1
    call _printRAXDigit

    pop rax
    call _printRAXDigit
    pop rax
    call _printRAXDigit
    pop rax
    call _printRAXDigit

    mov rax, 60
    mov rdi, 0
    syscall

_printRAXDigit:

    add rax, 48
    mov [digit], al
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 2
    syscall
    ret

_printdigit:

    mov rdi, 1
    mov rsi, digit
    mov rdx, 2
    syscall
    ret
