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
; def foo() -> int:
; main()
	call main
call arena_exit

	mov rdi, 0
	call exit
