
	global memcpy:

	section .text

memcpy:
	push rcx
	mov rcx, rdx

count:
	cmp rdi, byte 0
	je return
	cmp rsi, byte 0
	je return
	mov r8b, [rsi]
	mov [rdi], r8b
	dec rdx
	cmp rdx, 0
	je return
	inc rdi
	inc rsi
	jmp count
	
return:
	mov rax, rdi
	pop rcx
	ret
