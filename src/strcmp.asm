	global strcmp:

	section .text

strcmp:
	push rcx
	push rbx
	xor rcx, rcx
	
loop:
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
	jmp loop

return:
	movzx rcx, r8b
	movzx rbx, r9b
	sub rcx, rbx
	mov rax, rcx
	pop rbx
	pop rcx
	ret
	
