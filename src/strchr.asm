	global strchr:

	section .text

strchr:
	push rcx
	xor rcx, rcx

incre:
	add rdi, rcx
 	cmp BYTE [rdi], byte 0
	je return
	cmp sil, BYTE [rdi]
	je return
	inc rcx
	jmp incre

return:
	mov rax, rdi
	pop rcx
	ret
