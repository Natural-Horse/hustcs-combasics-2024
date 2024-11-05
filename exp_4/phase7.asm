
phase7.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <do_phase>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	89 7d fc             	mov    %edi,-0x4(%rbp)
   f:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 16 <do_phase+0x16>
  16:	e8 00 00 00 00       	call   1b <do_phase+0x1b>
  1b:	90                   	nop
  1c:	c9                   	leave  
  1d:	c3                   	ret    
