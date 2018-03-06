	global strlen:

	section .text

strlen:
	push rcx
	xor rcx, rcx

incre:
 	cmp BYTE [rdi], byte 0
	je return
	inc rcx
	inc rdi
	jmp incre

return:
	mov rax, rcx
	pop rcx
	ret
