%include "/home/kali/tryc/c1/dirty_test/extern.asm"
%include "/home/kali/tryc/c1/dirty_test/bss.asm"
%include "/home/kali/tryc/c1/dirty_test/data.asm"
%include "/home/kali/tryc/c1/dirty_test/rodata.asm"
%include "/home/kali/tryc/c1/dirty_test/foo.asm"

section .text
	global _start

_start:
	call arena_enter
call init_protect_segv
; start </home/kali/tryc/c1/libstd/stdio.txt>
; start </home/kali/tryc/c1/libstd/macro.txt>
; end </home/kali/tryc/c1/libstd/macro.txt>
; start </home/kali/tryc/c1/libstd/string.txt>
; def strlen(stringa: str) -> int:
; end </home/kali/tryc/c1/libstd/string.txt>
; def sys_write(fd: int, start_offs: str, length: long) -> int:
; end </home/kali/tryc/c1/libstd/stdio.txt>
; def somma(num: int) -> int:
; z = somma(5)
mov rax, 5

	push rax
	pop rdi
	call somma

	mov dword [z], eax
; print("valore di z dopo funzione somma: " + itoa(z) + "\n")
	lea rax, [rodata_var_1]
	push rax
		movsxd rax, dword [z]
	push rax
	pop rdi
	call itoa

	push rax
		lea rax, [rodata_var_0]
	pop rdx
	mov rdi, rax
	mov rsi, rdx
	call rt_strcat

	pop rdx
	mov rdi, rax
	mov rsi, rdx
	call rt_strcat

	push rax
	pop rdi
	call print

; while z > 0:
.while_start_14:
	call arena_enter
mov rax, 0

	push rax
	movsxd rax, dword [z]
	pop rdx
	cmp rax, rdx
	jle .while_end_14
;     z--
	dec dword[z]
	call arena_exit
	jmp .while_start_14
.while_end_14:
; print("valore di z dopo primo ciclo while: " + itoa(z) + "\n")
	lea rax, [rodata_var_1]
	push rax
		movsxd rax, dword [z]
	push rax
	pop rdi
	call itoa

	push rax
		lea rax, [rodata_var_2]
	pop rdx
	mov rdi, rax
	mov rsi, rdx
	call rt_strcat

	pop rdx
	mov rdi, rax
	mov rsi, rdx
	call rt_strcat

	push rax
	pop rdi
	call print

; while (z < 20):
.while_start_20:
	call arena_enter
	movsxd rax, dword [z]
	cmp rax, 0

	je .while_end_20
;     z--
	dec dword[z]
	call arena_exit
	jmp .while_start_20
.while_end_20:
; print("valore di z dopo primo ciclo while: " + itoa(z) + "\n")
	lea rax, [rodata_var_1]
	push rax
		movsxd rax, dword [z]
	push rax
	pop rdi
	call itoa

	push rax
		lea rax, [rodata_var_2]
	pop rdx
	mov rdi, rax
	mov rsi, rdx
	call rt_strcat

	pop rdx
	mov rdi, rax
	mov rsi, rdx
	call rt_strcat

	push rax
	pop rdi
	call print

call arena_exit

	mov rdi, 0
	call exit
