
phase2.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <myfunc>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # f <myfunc+0xf>
   f:	e8 00 00 00 00       	call   14 <myfunc+0x14>
  14:	90                   	nop
  15:	5d                   	pop    %rbp
  16:	c3                   	ret    

0000000000000017 <do_phase>:
  17:	f3 0f 1e fa          	endbr64 
  1b:	55                   	push   %rbp
  1c:	48 89 e5             	mov    %rsp,%rbp
  1f:	48 83 ec 10          	sub    $0x10,%rsp
  23:	89 7d fc             	mov    %edi,-0x4(%rbp)
  26:	b8 00 00 00 00       	mov    $0x0,%eax
  2b:	e8 d0 ff ff ff       	call   0 <myfunc>
  30:	90                   	nop
  31:	90                   	nop
  32:	90                   	nop
  33:	90                   	nop
  34:	90                   	nop
  35:	5d                   	pop    %rbp
  36:	c3                   	ret    
