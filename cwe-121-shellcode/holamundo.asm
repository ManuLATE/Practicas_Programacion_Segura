section .data
mensaje db "Ganaste Manuel", 0x0a

section .text
global _start

_start:

;syscall write(1, mensaje, 15)
    mov eax, 4
    mov ebx, 1
    mov ecx, mensaje
    mov edx, 15
    int 0x80

;syscall exit(0)
    mov eax, 1
    mov ebx, 0
    int 0x80