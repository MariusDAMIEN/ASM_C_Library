	global strcspn:

	section .text

strcspn:
	xor rcx, rcx
	mov r10, rsi
	
loop:
	cmp byte [rdi], 0
	je return
	movzx r8d, BYTE [rdi + rcx]
	mov rsi, r10
	jmp next
	inc rcx
	jmp loop

incre:
	inc rcx
	jmp loop

next:
	movzx r9d, BYTE [rsi]
	cmp r9d, 0
	je incre
	cmp r9d, r8d
	je return
	inc rsi
	jmp next

return:
	mov rax, rcx
	ret
