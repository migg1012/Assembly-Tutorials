;****************************************************************************
;   Author:  Marcor Santos
;   No warranty.  Use at your own risk.
;****************************************************************************
;
;  FOR LOOP in C:
;	for(i=0; i<n;n++) {
;	    c[i] = a[i] + b[i]
;


	mov rdx, [n]
	xor ecx, ecx
for:    cmp rcx, rdx
	je end_for
	mov rax, [a+rcx*8]
	add rax, [b+rcx*8]
	mov [c+rcx*8], rax
	inc rcx
	jmp for
end_for:
