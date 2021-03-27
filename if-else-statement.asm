;****************************************************************************
;   Author:  Marcor Santos
;   No warranty.  Use at your own risk.
;****************************************************************************
;
;  IF-ELSE statement in C:
;	if ( a < b ) {
;		max = b;
;   }   else {
;		max = a;
;	}
;


	mov rax, [a]
	mov rbx, [b]
	cmp rax, rbx
	jnl else
	mov [max], rbx
	jmp endif

else:
    mov [max], rax

endif:
