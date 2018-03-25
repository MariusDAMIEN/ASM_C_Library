
	global strstr:

	section .text

strstr:	
	push rcx
	xor rcx, rcx
	
search:
	cmp BYTE [rdi + rcx], byte 0
	je return
	cmp BYTE [rsi + rcx], byte 0
	je return
	mov r8b, [rdi + rcx]
	mov r9b, [rsi + rcx]
	cmp r8b, r9b
	je allstring
	inc rcx
	jmp search

allstring:
	cmp r9b, byte 0
	jne return
	mov r8b, [rdi + rcx]
	mov r9b, [rsi + rcx]
	cmp r8b, r9b
	je 
	
	
return:
	add rdi, rcx
	mov rax, rdi
	pop rcx
	ret
