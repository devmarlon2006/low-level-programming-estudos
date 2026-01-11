global _start

section .data
message: db 'Hello hord!!', 10

section .text
_start:
     call .imprimir_name



.imprimir_name:
      mov rax, 0x01        ; O número 1 no RAX representa a syscall 'sys_write' (escrever)
      mov rdi, 0x01        ; O número 1 no RDI representa onde escrever (1 = saída padrão/terminal)
      mov rsi, message  ; O RSI recebe o endereço da nossa mensagem
      mov rdx, 14       ; O RDX recebe o tamanho da mensagem (quantos bytes ler)
      syscall           ; Pede ao kernel para executar a ação configurada acima

      mov rax, 60
      xor rdi, rdi
      syscall
