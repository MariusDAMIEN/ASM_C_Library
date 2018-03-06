	global strchr:

	section .text

strchr:
	push rcx
	xor rcx, rcx

incre:
 	cmp BYTE [rdi + rcx], byte 0
	je return
	cmp sil, [rdi, rcx]
	inc rcx
	jmp incre

return:
	mov rax, rdi
	add rax, rcx
	pop rcx
	ret
