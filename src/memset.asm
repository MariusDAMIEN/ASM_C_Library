
	global memset:

	section .text

memset:
	push rcx
	mov rcx, rdx

count:
	cmp BYTE [rdi], byte 0
	je return
	cmp rcx, 0
	je return
	mov [rdi], sil
	inc rdi
	dec rcx
	jmp count
	
return:
	mov rax, rdi
	pop rcx
	ret
