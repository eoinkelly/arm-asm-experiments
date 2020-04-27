
@ Hello world test

@ * Tell the linker that it should make the _start label available outside the compiled object
@ * Effectively this makes _start a global variable - it is available outside
@   of this file. labels (variable) are ".o file private" by default in assembler

.data
helloworld: .ascii  "Hello there\n"

.text

.global _start

@ for system calls;
@ params go in registers R0 -> R4
@ system call num is put in R7
@ return code is put in R0
_start:
    # write to stdout
    mov R0, #1 @ load the file descriptor that we want to write to (fd 1 is stdout)
    ldr R1, =helloworld @load the address of the first byte of the string
    mov R2, #13 @ lenght of string
    mov R7, #4 @ write is syscall 4
    svc 0

    # exit
    mov R0, #11 @ load the number we want to exit with
    mov R7, #1 @ exit is syscall 1
    svc 0
