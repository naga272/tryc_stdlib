# TryC

## Description

E' un linguaggio di programmazione compilato che vuole essere simili alla scrittura di python, ma che possa essere usato in tutti gli ambiti, compreso quello della programmazione di sistemi operativi.

Il problema dei linguaggi full OOP è che per funzionare hanno bisogno di avere gia' configurato la sezione heap del kernel. Questo significa che finchè il kernel non ha preparato quella sezione non si possono creare oggetti.

L'obbiettivo di questo linguaggio è di provare a risolvere questo problema permettendo sia l'uso della memoria statica in modo sicuro (usando un algoritmo chiamato scoped allocator) che uso dell'heap.

*NB*: Questa repository non contiene il compilatore TryC ma solo il codice sorgente delle librerie standard e degli esempi di codice

## Requirements

```
- Python > 3.12
- TryC compiler (in questa repo non e' presente perche' ancora da finire)
- OS Linux-like
- cpu arch x86_64
- Supporto istruzioni SSSE4.2 e AVX2
- libs in requirements.txt (pip install -r requirements.txt)
```

## Esecuzione
```sh
python3 main.py <nome_file> <flags> 
```

### Flags

- `--first_run`: Permette l'installazione delle dipendenze
- `-o <name_file_out>`: e' come si dovra' chiamare il file prodotto e a quale path lo si vuole
- `--no_stdlib`: Non si possono includere librerie standard che usano syscall di os. Utile per la programmazione di kernel
- `--dbi`: Permette la visualizzazione del file generato dal precompilatore
- `--dba`: Permette la visualizzazione del file asm generato dal compilatore

## Steps

Pipeline:

```
---------------------------------------------
|   file.txt                                |
|      | -> Precompiler (.txt to .i)        |
|      v                                    |
| ------------------------------------------|
| | Compiler                                |
| |-----------------------------------------|
| |  file.i                                 |
| |    | --> Translator (.i to nasm code)   |
| |    v                                    |
| |  file.asm                               |
| |    | --> nasm                           |
| |    v                                    |
| |  file.o                                 |
| |    | --> ld                             |
| |    v                                    |
| |  file.exe                               |
| ------------------------------------------|
--------------------------------------------|
```

## Syntax

Per visualizzare tutte le funzionalita', guarda all'interno della cartella /example del progetto.
In ogni directory è presente una funzionalità specifica del linguaggio

### Author

- naga272
