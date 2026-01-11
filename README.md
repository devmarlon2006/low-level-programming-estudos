# 📚 Low-Level Programming: Study Journey

Este repositório documenta minha jornada de estudos e exercícios práticos baseados no livro **"Low-Level Programming: C, Assembly, and Program Execution on Intel® 64 Architecture"** de Igor Zhirkov.

O objetivo deste projeto é puramente educacional: entender como o computador funciona "por baixo dos panos", revisando conceitos de arquitetura de computadores, linguagem Assembly (Intel 64) e integração com C.

---

## 🛠️ Tecnologias e Ferramentas

O ambiente de desenvolvimento utilizado foca em sistemas Linux (x86-64).

* **Assembly:** NASM (Netwide Assembler)
* **Linguagem:** C (C11 standard)
* **Compilador:** GCC / Clang
* **Debug:** GDB (GNU Debugger)
* **Build System:** Make
* **Editor:** VS Code

## 📚 Referências e Recursos

### Material do Livro
* **Repositório Oficial:** [izhirkov/low-level-programming](https://github.com/izhirkov/low-level-programming)
    * *Contém todos os exemplos de código do livro, testes e erratas.*

### Documentação Técnica (Essencial)
* **Intel® 64 and IA-32 Architectures Software Developer Manuals:** [Intel SDM](https://www.intel.com/content/www/us/en/developer/articles/technical/intel-sdm.html)
    * *A referência definitiva para todas as instruções de Assembly x86_64.*
* **System V AMD64 ABI:** [PDF Reference](https://refspecs.linuxbase.org/elf/x86_64-abi-0.99.pdf)
    * *Crucial para entender a "Calling Convention" no Linux (quais registos usar para argumentos, retorno, stack alignment, etc).*
* **NASM Documentation:** [NASM Manual](https://www.nasm.us/doc/)
    * *Documentação da sintaxe específica do montador usado no livro.*

### Ferramentas Auxiliares
* **Compiler Explorer (Godbolt):** [godbolt.org](https://godbolt.org/)
    * *Excelente para escrever C e ver, em tempo real, o Assembly gerado pelo compilador.*
* **GNU Debugger (GDB) Docs:** [GDB Documentation](https://www.sourceware.org/gdb/documentation/)
    * *Para aprofundar nos comandos de debug.*
* **Linux Syscall Reference:** [Syscall Table (x64)](https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/)
    * *Tabela rápida para consultar os números das syscalls (rax) e os seus argumentos (rdi, rsi, etc).*

## 🗂️ Estrutura do Projeto

O repositório está organizado conforme a progressão dos tópicos do livro:

```text
.
├── 01-assembly-basics/    # Instruções básicas, registradores, syscalls
├── 02-memory-management/  # Heap, stack, alocação dinâmica, mmap
├── 03-c-integration/      # Chamando C no Assembly e vice-versa
├── 04-compilation/        # Processo de build, linking, object files
├── lib/                   # Biblioteca de rotinas comuns (string length, print, etc.)
└── notes/                 # Anotações teóricas e diagramas
