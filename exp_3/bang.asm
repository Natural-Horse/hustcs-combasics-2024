
bang.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	c7 04 25 ec 40 40 00 	movl   $0xc0f1dc6,0x4040ec
   7:	c6 1d 0f 0c 
   b:	48 c7 c2 9f 13 40 00 	mov    $0x40139f,%rdx
  12:	48 89 ec             	mov    %rbp,%rsp
  15:	48 83 ec 10          	sub    $0x10,%rsp
  19:	ff e2                	jmp    *%rdx
