
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <gencookie>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 20          	sub    $0x20,%rsp
   c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  10:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <gencookie+0x1c>
  1c:	48 83 f8 0a          	cmp    $0xa,%rax
  20:	74 19                	je     3b <gencookie+0x3b>
  22:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 29 <gencookie+0x29>
  29:	48 89 c7             	mov    %rax,%rdi
  2c:	e8 00 00 00 00       	call   31 <gencookie+0x31>
  31:	b8 00 00 00 00       	mov    $0x0,%eax
  36:	e9 90 00 00 00       	jmp    cb <gencookie+0xcb>
  3b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  3f:	0f b6 00             	movzbl (%rax),%eax
  42:	3c 55                	cmp    $0x55,%al
  44:	74 21                	je     67 <gencookie+0x67>
  46:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4a:	0f b6 00             	movzbl (%rax),%eax
  4d:	3c 75                	cmp    $0x75,%al
  4f:	74 16                	je     67 <gencookie+0x67>
  51:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 58 <gencookie+0x58>
  58:	48 89 c7             	mov    %rax,%rdi
  5b:	e8 00 00 00 00       	call   60 <gencookie+0x60>
  60:	b8 00 00 00 00       	mov    $0x0,%eax
  65:	eb 64                	jmp    cb <gencookie+0xcb>
  67:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  6e:	eb 42                	jmp    b2 <gencookie+0xb2>
  70:	8b 45 fc             	mov    -0x4(%rbp),%eax
  73:	48 63 d0             	movslq %eax,%rdx
  76:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  7a:	48 01 d0             	add    %rdx,%rax
  7d:	0f b6 00             	movzbl (%rax),%eax
  80:	3c 2f                	cmp    $0x2f,%al
  82:	7e 14                	jle    98 <gencookie+0x98>
  84:	8b 45 fc             	mov    -0x4(%rbp),%eax
  87:	48 63 d0             	movslq %eax,%rdx
  8a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  8e:	48 01 d0             	add    %rdx,%rax
  91:	0f b6 00             	movzbl (%rax),%eax
  94:	3c 39                	cmp    $0x39,%al
  96:	7e 16                	jle    ae <gencookie+0xae>
  98:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 9f <gencookie+0x9f>
  9f:	48 89 c7             	mov    %rax,%rdi
  a2:	e8 00 00 00 00       	call   a7 <gencookie+0xa7>
  a7:	b8 00 00 00 00       	mov    $0x0,%eax
  ac:	eb 1d                	jmp    cb <gencookie+0xcb>
  ae:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  b2:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
  b6:	7e b8                	jle    70 <gencookie+0x70>
  b8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  bc:	48 83 c0 09          	add    $0x9,%rax
  c0:	48 89 c7             	mov    %rax,%rdi
  c3:	e8 00 00 00 00       	call   c8 <gencookie+0xc8>
  c8:	83 c0 05             	add    $0x5,%eax
  cb:	c9                   	leave  
  cc:	c3                   	ret    

00000000000000cd <main>:
  cd:	f3 0f 1e fa          	endbr64 
  d1:	55                   	push   %rbp
  d2:	48 89 e5             	mov    %rsp,%rbp
  d5:	48 83 ec 30          	sub    $0x30,%rsp
  d9:	89 7d dc             	mov    %edi,-0x24(%rbp)
  dc:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  e0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  e7:	00 00 
  e9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  ed:	31 c0                	xor    %eax,%eax
  ef:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # f6 <main+0x29>
  f6:	48 89 c7             	mov    %rax,%rdi
  f9:	b8 00 00 00 00       	mov    $0x0,%eax
  fe:	e8 00 00 00 00       	call   103 <main+0x36>
 103:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
 107:	48 89 c6             	mov    %rax,%rsi
 10a:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 111 <main+0x44>
 111:	48 89 c7             	mov    %rax,%rdi
 114:	b8 00 00 00 00       	mov    $0x0,%eax
 119:	e8 00 00 00 00       	call   11e <main+0x51>
 11e:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
 122:	48 89 c7             	mov    %rax,%rdi
 125:	e8 00 00 00 00       	call   12a <main+0x5d>
 12a:	89 45 e8             	mov    %eax,-0x18(%rbp)
 12d:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 134 <main+0x67>
 134:	48 85 c0             	test   %rax,%rax
 137:	74 10                	je     149 <main+0x7c>
 139:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 140 <main+0x73>
 140:	8b 45 e8             	mov    -0x18(%rbp),%eax
 143:	89 c7                	mov    %eax,%edi
 145:	ff d2                	call   *%rdx
 147:	eb 3c                	jmp    185 <main+0xb8>
 149:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 150 <main+0x83>
 150:	48 89 c7             	mov    %rax,%rdi
 153:	e8 00 00 00 00       	call   158 <main+0x8b>
 158:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 15f <main+0x92>
 15f:	48 89 c7             	mov    %rax,%rdi
 162:	e8 00 00 00 00       	call   167 <main+0x9a>
 167:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 16e <main+0xa1>
 16e:	48 89 c7             	mov    %rax,%rdi
 171:	e8 00 00 00 00       	call   176 <main+0xa9>
 176:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 17d <main+0xb0>
 17d:	48 89 c7             	mov    %rax,%rdi
 180:	e8 00 00 00 00       	call   185 <main+0xb8>
 185:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 18c <main+0xbf>
 18c:	48 89 c7             	mov    %rax,%rdi
 18f:	e8 00 00 00 00       	call   194 <main+0xc7>
 194:	b8 00 00 00 00       	mov    $0x0,%eax
 199:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 19d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 1a4:	00 00 
 1a6:	74 05                	je     1ad <main+0xe0>
 1a8:	e8 00 00 00 00       	call   1ad <main+0xe0>
 1ad:	c9                   	leave  
 1ae:	c3                   	ret    
