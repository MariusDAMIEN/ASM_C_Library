
	global rindex:

	section .text

rindex:
	push rcx
	xor rcx, rcx
len:
 	cmp BYTE [rdi + rcx], byte 0
	je search
	inc rcx
	jmp len
	
search:
	dec rcx
	cmp BYTE [rdi + rcx], byte 0
	je search
	cmp byte [rdi + rcx], sil
	je return
	jmp search
		
return:
	add rdi, rcx
	mov rax, rdi
	pop rcx
	ret
