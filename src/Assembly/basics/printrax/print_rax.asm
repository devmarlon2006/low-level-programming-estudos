global _start

section .data
codes: db '123456789ABCDEF', 10

section .text
_start:
     ; Numero 1122... exadecimal
     mov rax, 0x1122334455667788

     mov rdi , 1
     mov rdx , 1
     mov rcx , 64
     ; cada 4 bits devem ser exibidos como um digito hexadecimal
     ; Use o deslocamento (shift) e a operação bt a bit AND para isola-los
     ; o resultado no offset no array 'codes'


.loop:
    push rax
    sub rcx , 4
    ; cl e um registrador , aparte menos de rcx
    ; rax -- eax -- ax -- ah + al
    ; rcx -- ecx -- cx -- ch +cl
    sar rax , cl
    and rax , 0xF

    lea rsi , [codes + rax]
    mov rax , 1

    ; syscall deixa rcx e r11 alterados
    push rcx
    syscall
    pop rcx

    pop rax

    test rcx, rcx
    jnz .loop

    mov rax, 0x3C ; faz a chamada do sistema 'exit'
    xor rdi, rdi

    syscall
