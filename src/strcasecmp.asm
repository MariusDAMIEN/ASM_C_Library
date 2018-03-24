	global strcasecmp:

	section .text

strcasecmp:
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
	cmp r8b, 97
	jge up
	jmp continue

continue:
	cmp r9b, 97
	jge upother
	jmp nextcontinue

nextcontinue:
	cmp r8b, r9b
	jne return
	inc rdi
	inc rsi
	jmp loop

upconfirm:
	sub r8b, 32
	jmp continue

upotherconfirm:
	sub r9b, 32
	jmp nextcontinue

up:
	cmp r8b, 122
	jle upconfirm
	jmp continue

upother:
	cmp r9b, 122
	jle upotherconfirm
	jmp nextcontinue

return:
	movzx rcx, r8b
	movzx rbx, r9b
	sub rcx, rbx
	mov rax, rcx
	pop rbx
	pop rcx
	ret
