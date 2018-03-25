	global strncmp:

	section .text

strncmp:
	push rcx
	push rbx
	xor rcx, rcx

loop:
	cmp rcx, rdx
	je return
	mov r8b, byte [rdi]
	mov r9b, byte [rsi]
	cmp byte [rdi], byte 0
	je return
	cmp byte [rsi], byte 0
	je return
	cmp r8b, r9b
	jnz return
	inc rdi
	inc rsi
	inc rcx
	jmp loop

return:
	movzx rcx, r8b
	movzx rbx, r9b
	sub rcx, rbx
	mov rax, rcx
	pop rbx
	pop rcx
	ret
	
