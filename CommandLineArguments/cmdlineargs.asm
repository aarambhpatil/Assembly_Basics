%include "linux64.inc"

section .data
    newline db 0, 10

section .text
    gloabl _start

_start:

    pop rax
    printVal rax
    print newline
    exit