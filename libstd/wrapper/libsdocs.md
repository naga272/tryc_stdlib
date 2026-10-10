# Gestione libstd cross-platform


Stesso front end indipendentemente se Windows o Linux, cambia solo il be:

All'interno delle librerie standard:

`#include \<libstd/*\>`

sono inserite delle API che eseguono determinate azioni in base all'os che si sta usando.


Prendiamo come esempio la funzione fork() dichiarata in `#include \<libstd/process\>`.

Il programmatore vede (sia su windows che linux) la chiamata fork(), al momento della compilazione però le strade all'interno della chiamata si dividono.


se os `linux`:

```txt
fork()
    |
    +---- sys_fork() // libstd/wrapper/linux/process
            |
            + mov rax, 60 // syscall fork
```

Nel caso di os `Windows`:

```txt
fork()
    |
    +---- sys_fork() // libstd/wrapper/windows/process
            |
            + rt_fork()
```


rt_fork() viene inclusa in std_foo.o durante la compilazione di std_foo.c in fase di setup.

In fase di compilazione il compilatore usa uno o l'altro in base al fatto se è stata dichiarata la macro \_\_unix\_\_ o \_WIN64 (definite automaticamente dal compiler):

```txt

#ifdef __unix__
#include <libstd/wrapper/linux/process>
#else
#include <libstd/wrapper/windows/process>
#endif


def fork() -> int:
    pid = sys_fork()
    if pid < 0:
        print("error, pid value: " + itoa(pid) + "\n")
    return pid
```

I back-end delle librerie si trovano quindi nelle cartelle `libstd/wrapper/*/*`


## Costanti che dipendono dal sistema

Una costante che il programmatore usa (es. un'opzione dei socket) ha lo stesso nome su Linux e su Windows, ma il valore lo sceglie il back-end: sta in `wrapper/linux/*` con il numero di Linux e in `wrapper/windows/*` con quello di Windows. Il numero dell'altro sistema non va mai riusato: il 9 di `TCP_DEFER_ACCEPT` su Windows e' `TCP_NOSYNRETRIES`, un'altra opzione.

```txt
set_sockopt(fd, IPPROTO_TCP, TCP_KEEPIDLE, 30)     // libstd/net, uguale ovunque
    |
    +---- sys_setsockopt()   // linux: syscall setsockopt, TCP_KEEPIDLE = 4
    +---- sys_setsockopt()   // windows: setsockopt di ws2_32.dll, TCP_KEEPIDLE = 3
```

Se una cosa esiste su un sistema solo:

- se l'altro ha un equivalente, lo stesso nome prende quel valore (`TCP_USER_TIMEOUT` su Windows e' `TCP_MAXRTMS`);
- se e' solo un'ottimizzazione, sull'altro sistema non fa niente: `TCP_DEFER_ACCEPT`, `TCP_CORK` e `TCP_QUICKACK` su Windows hanno valori della libreria (negativi, non di Winsock) che `sys_setsockopt` accetta senza fare niente;
- se ignorarla cambierebbe cosa fa il programma, resta su quel sistema e sull'altro e' un errore di compilazione (`SO_REUSEPORT`, `libstd/xlib`).

Anche `exit()` e' una sola: su Linux usa `exit_group` (tutto il processo, anche i thread che una libreria come il driver Vulkan ha creato), su Windows `ExitProcess`.

La documentazione HTML (`esempio/docgen/build_docs.py`) legge anche i back-end: le funzioni `sys_*` e le costanti compaiono nella pagina del modulo, con una colonna per Linux e una per Windows.

