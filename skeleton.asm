segment data
    ;
    ;  initialized data
    ;

segment bss
    ; bss =  block started by symbol
    ; uninitialized data
    ;

segment text
    global func

func:
    enter n, 0    ;replaced n with number of bytes to allocate for local variables or 0 if no variable
    push          ;save registers
    ;
    ;body of the function
    ;
    pop
    mov eax, 0   ; restore registers
    leave
    ret