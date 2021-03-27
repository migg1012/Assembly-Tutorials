;****************************************************************************
;   Author:  Marcor Santos
;   No warranty.  Use at your own risk.
;****************************************************************************
;
;  IF statement in C:
;	if ( a < b ) {
;		temp = a;
;		a = b;
;		b = temp;
;	}
;


	mov rax, [a]
	mov rbx, [b]
	cmp rax, rbx
	jge failedif
	mov [temp], rax
	mov [a], rbx
	mov [b], rax
failedif:
