# WLP4-Compiler

This is a compiler written in C++ for a subset of the C language, known as WLP4. A full specification, featuring formal language theory, of the WLP4 language can be found at https://student.cs.uwaterloo.ca/~cs241/wlp4/WLP4.html. The compiler, referred to as ``wlp4c``, accepts a ``.wlp4`` file and targets a corresponding ``.asm`` MIPS assembly file. 

Particularly, the compilation of the corresponding ``.asm`` file is a result of the ``.wlp4`` file being sequentially passed into a scanner, LR(1) parser, and code generator. These components can be found in the ``Compiler`` subdirectory, along with an assembler that can be used to generate a ``.mips`` machine code file from a simple ``.asm`` file. Unfortunately, it is not likely that this assembler will support the ``.asm`` files you generate. However, one can certainly find and use an appropriate assembler to generate a corresponding ``.mips`` file. 

Note: Do not remove any files from the ``Compiler`` subdirectory. The removal of any file will result in the ``wlp4c`` program to not function correctly. 

# Usage

Run ``./wlp4c`` with the desired ``.wlp4`` file as an operand. The ``wlp4c`` progam will produce a corresponding ``.asm`` file in the ``WLP4-Compiler`` directory. Ensure that you run the ``wlp4c`` program in the ``WLP4-Compiler`` directory. 

Provided is ``foo.wlp4`` along with its correspnding ``foo.asm`` file. The invocation of ``wlp4c`` to compile ``foo.wlp4`` would be 

```sh
./wlp4c foo.wlp4
```
