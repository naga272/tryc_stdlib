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
; def scrivi_su(dest: &int) -> int:
; x = 5
mov rax, 5

	mov dword [x], eax
; p = &x
	lea rax, [x]
	mov qword [p], rax
; come_long = p as long
	mov rax, qword [p]
	mov qword [come_long], rax
; come_ptr_int = p as ptr int
	mov rax, qword [p]
	mov qword [come_ptr_int], rax
; come_str = p as str
	mov rax, qword [p]
	mov qword [come_str], rax
; risultato = scrivi_su(&x)
	lea rax, [x]
	push rax
	pop rdi
	call scrivi_su

	mov dword [risultato], eax
; print("puntatori: fatto\n")
	lea rax, [rodata_var_0]
	push rax
	pop rdi
	call print

call arena_exit

	mov rdi, 0
	call exit
