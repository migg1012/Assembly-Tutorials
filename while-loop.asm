;****************************************************************************
;   Author:  Marcor Santos
;   No warranty.  Use at your own risk.
;****************************************************************************
;
;  WHILE LOOP in C:
;	sum - 0;
;	i = 0;
;   while (i <
;		max = a;
;	}
;


segment .data
    data  dq   0xfedcba9876543210
    sum   dq   0

segment .text
	global main

main:
	push rbp
	mov rbp, rsp
	sub rsp, 16

;  Register usage
;
; rax: bits being examined
; rbx: carry bit after bt setc
; rcx:  loop counter 0-63
; rdx: sum of 1 bits
;
	mov rax, [data]
	xor ebx, ebx
	xor ecx, ecx
	xor edx, edx

while:
	mov rcx, 64
	jnl end_while
	bt rax, 0
	setc bl
	add edx, edx
	shr rax, 1
	inc rcx
	jmp while

end_while:
	mov [sum], rdx
	xor eax, eax
	leave
	ret
