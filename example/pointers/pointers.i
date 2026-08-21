start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
start </home/kali/tryc/c1/libstd/stdio.txt>
start </home/kali/tryc/c1/libstd/macro.txt>













































end </home/kali/tryc/c1/libstd/macro.txt>
start </home/kali/tryc/c1/libstd/string.txt>

def strlen(stringa: str) -> int:
    asminline (
        xor rax, rax
        .loop:
            movdqu xmm0, [rdi + rax]
            pxor xmm1, xmm1
            pcmpeqb xmm0, xmm1
            pmovmskb ecx, xmm0
            test ecx, ecx
            jnz .found
            add rax, 16
            jmp .loop
        .found:
            tzcnt ecx, ecx
            add eax, ecx
    ) endasm


def findsubstr(stringa: str, character: str) -> int:
    length_str = strlen(stringa)
    length_sub_str = strlen(character)
    val = 0
    while val <= length_str - length_sub_str:
        num_char_match = 0
        while num_char_match < length_sub_str:
            if stringa[val + num_char_match] != character[num_char_match]:
                break
            num_char_match++
        if num_char_match == length_sub_str:
            return val
        val++
    return -1


def substrget(stringa: str, num_char_to_get: int) -> str:
    substring = rt_alloc_up(num_char_to_get + 1)
    val = 0
    while val < num_char_to_get:
        substring[val] = stringa[val]
        val++
    substring[val] = '\0'
    return substring

end </home/kali/tryc/c1/libstd/string.txt>






def sys_write(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 1
        syscall
    ) endasm


def sys_read(fd: int, start_offs: str, length: long) -> int:
    asminline(
        mov rax, 0
        syscall
    ) endasm


def print(stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(1, stringa, len_str)
    return num_char_printed


def input(start_offs: str) -> int:
    return sys_read(0, start_offs, 1)


def fprint(fd: int, stringa: str) -> int:
    len_str = strlen(stringa)
    num_char_printed = sys_write(fd, stringa, len_str)
    return num_char_printed


def freadc(fd: int) -> int:
    asminline(
        mov rsi, 0x00
        mov rdx, 1
        mov rax, 0
        syscall
    ) endasm

end </home/kali/tryc/c1/libstd/stdio.txt>






























def scrivi_su(dest: &int) -> int:
    return 0


x = 5


p = &x



come_long = p as long
come_ptr_int = p as ptr int
come_str = p as str


risultato = scrivi_su(&x)
print("puntatori: fatto\n")
