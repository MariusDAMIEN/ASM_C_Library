	global strcspn:

	section .text

strcspn:
	push rcx
	xor rcx, rcx
	mov r10, rsi
	
core:
	cmp byte [rdi], 0
	je return
	movzx r8d, byte [rdi + rcx]
	mov rsi, r10
	jmp next
	inc rcx
	jmp core

incre:
	inc rcx
	jmp core

next:
	movzx r9d, byte [rsi]
	cmp r9d, 0
	je incre
	cmp r9d, r8d
	je return
	inc rsi
	jmp next

return:
	mov rax, rcx
	pop rcx
	ret
