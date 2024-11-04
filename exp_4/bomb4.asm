
bomb4:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 72 2f 00 00    	push   0x2f72(%rip)        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 73 2f 00 00 	bnd jmp *0x2f73(%rip)        # 3fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop

Disassembly of section .plt.got:

0000000000001090 <__cxa_finalize@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 5d 2f 00 00 	bnd jmp *0x2f5d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010a0 <puts@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 fd 2e 00 00 	bnd jmp *0x2efd(%rip)        # 3fa8 <puts@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <strlen@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 f5 2e 00 00 	bnd jmp *0x2ef5(%rip)        # 3fb0 <strlen@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <__stack_chk_fail@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 ed 2e 00 00 	bnd jmp *0x2eed(%rip)        # 3fb8 <__stack_chk_fail@GLIBC_2.4>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <printf@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 e5 2e 00 00 	bnd jmp *0x2ee5(%rip)        # 3fc0 <printf@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <atoi@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 dd 2e 00 00 	bnd jmp *0x2edd(%rip)        # 3fc8 <atoi@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <__isoc99_scanf@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 d5 2e 00 00 	bnd jmp *0x2ed5(%rip)        # 3fd0 <__isoc99_scanf@GLIBC_2.7>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001100 <_start>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	31 ed                	xor    %ebp,%ebp
    1106:	49 89 d1             	mov    %rdx,%r9
    1109:	5e                   	pop    %rsi
    110a:	48 89 e2             	mov    %rsp,%rdx
    110d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1111:	50                   	push   %rax
    1112:	54                   	push   %rsp
    1113:	45 31 c0             	xor    %r8d,%r8d
    1116:	31 c9                	xor    %ecx,%ecx
    1118:	48 8d 3d 97 01 00 00 	lea    0x197(%rip),%rdi        # 12b6 <main>
    111f:	ff 15 b3 2e 00 00    	call   *0x2eb3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1125:	f4                   	hlt    
    1126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    112d:	00 00 00 

0000000000001130 <deregister_tm_clones>:
    1130:	48 8d 3d e1 2e 00 00 	lea    0x2ee1(%rip),%rdi        # 4018 <__TMC_END__>
    1137:	48 8d 05 da 2e 00 00 	lea    0x2eda(%rip),%rax        # 4018 <__TMC_END__>
    113e:	48 39 f8             	cmp    %rdi,%rax
    1141:	74 15                	je     1158 <deregister_tm_clones+0x28>
    1143:	48 8b 05 96 2e 00 00 	mov    0x2e96(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    114a:	48 85 c0             	test   %rax,%rax
    114d:	74 09                	je     1158 <deregister_tm_clones+0x28>
    114f:	ff e0                	jmp    *%rax
    1151:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1158:	c3                   	ret    
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <register_tm_clones>:
    1160:	48 8d 3d b1 2e 00 00 	lea    0x2eb1(%rip),%rdi        # 4018 <__TMC_END__>
    1167:	48 8d 35 aa 2e 00 00 	lea    0x2eaa(%rip),%rsi        # 4018 <__TMC_END__>
    116e:	48 29 fe             	sub    %rdi,%rsi
    1171:	48 89 f0             	mov    %rsi,%rax
    1174:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1178:	48 c1 f8 03          	sar    $0x3,%rax
    117c:	48 01 c6             	add    %rax,%rsi
    117f:	48 d1 fe             	sar    %rsi
    1182:	74 14                	je     1198 <register_tm_clones+0x38>
    1184:	48 8b 05 65 2e 00 00 	mov    0x2e65(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    118b:	48 85 c0             	test   %rax,%rax
    118e:	74 08                	je     1198 <register_tm_clones+0x38>
    1190:	ff e0                	jmp    *%rax
    1192:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1198:	c3                   	ret    
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <__do_global_dtors_aux>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	80 3d 6d 2e 00 00 00 	cmpb   $0x0,0x2e6d(%rip)        # 4018 <__TMC_END__>
    11ab:	75 2b                	jne    11d8 <__do_global_dtors_aux+0x38>
    11ad:	55                   	push   %rbp
    11ae:	48 83 3d 42 2e 00 00 	cmpq   $0x0,0x2e42(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11b5:	00 
    11b6:	48 89 e5             	mov    %rsp,%rbp
    11b9:	74 0c                	je     11c7 <__do_global_dtors_aux+0x27>
    11bb:	48 8b 3d 46 2e 00 00 	mov    0x2e46(%rip),%rdi        # 4008 <__dso_handle>
    11c2:	e8 c9 fe ff ff       	call   1090 <__cxa_finalize@plt>
    11c7:	e8 64 ff ff ff       	call   1130 <deregister_tm_clones>
    11cc:	c6 05 45 2e 00 00 01 	movb   $0x1,0x2e45(%rip)        # 4018 <__TMC_END__>
    11d3:	5d                   	pop    %rbp
    11d4:	c3                   	ret    
    11d5:	0f 1f 00             	nopl   (%rax)
    11d8:	c3                   	ret    
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <frame_dummy>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	e9 77 ff ff ff       	jmp    1160 <register_tm_clones>

00000000000011e9 <gencookie>:
    11e9:	f3 0f 1e fa          	endbr64 
    11ed:	55                   	push   %rbp
    11ee:	48 89 e5             	mov    %rsp,%rbp
    11f1:	48 83 ec 20          	sub    $0x20,%rsp
    11f5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    11f9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11fd:	48 89 c7             	mov    %rax,%rdi
    1200:	e8 ab fe ff ff       	call   10b0 <strlen@plt>
    1205:	48 83 f8 0a          	cmp    $0xa,%rax
    1209:	74 19                	je     1224 <gencookie+0x3b>
    120b:	48 8d 05 f6 0d 00 00 	lea    0xdf6(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    1212:	48 89 c7             	mov    %rax,%rdi
    1215:	e8 86 fe ff ff       	call   10a0 <puts@plt>
    121a:	b8 00 00 00 00       	mov    $0x0,%eax
    121f:	e9 90 00 00 00       	jmp    12b4 <gencookie+0xcb>
    1224:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1228:	0f b6 00             	movzbl (%rax),%eax
    122b:	3c 55                	cmp    $0x55,%al
    122d:	74 21                	je     1250 <gencookie+0x67>
    122f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1233:	0f b6 00             	movzbl (%rax),%eax
    1236:	3c 75                	cmp    $0x75,%al
    1238:	74 16                	je     1250 <gencookie+0x67>
    123a:	48 8d 05 e6 0d 00 00 	lea    0xde6(%rip),%rax        # 2027 <_IO_stdin_used+0x27>
    1241:	48 89 c7             	mov    %rax,%rdi
    1244:	e8 57 fe ff ff       	call   10a0 <puts@plt>
    1249:	b8 00 00 00 00       	mov    $0x0,%eax
    124e:	eb 64                	jmp    12b4 <gencookie+0xcb>
    1250:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    1257:	eb 42                	jmp    129b <gencookie+0xb2>
    1259:	8b 45 fc             	mov    -0x4(%rbp),%eax
    125c:	48 63 d0             	movslq %eax,%rdx
    125f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1263:	48 01 d0             	add    %rdx,%rax
    1266:	0f b6 00             	movzbl (%rax),%eax
    1269:	3c 2f                	cmp    $0x2f,%al
    126b:	7e 14                	jle    1281 <gencookie+0x98>
    126d:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1270:	48 63 d0             	movslq %eax,%rdx
    1273:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1277:	48 01 d0             	add    %rdx,%rax
    127a:	0f b6 00             	movzbl (%rax),%eax
    127d:	3c 39                	cmp    $0x39,%al
    127f:	7e 16                	jle    1297 <gencookie+0xae>
    1281:	48 8d 05 ba 0d 00 00 	lea    0xdba(%rip),%rax        # 2042 <_IO_stdin_used+0x42>
    1288:	48 89 c7             	mov    %rax,%rdi
    128b:	e8 10 fe ff ff       	call   10a0 <puts@plt>
    1290:	b8 00 00 00 00       	mov    $0x0,%eax
    1295:	eb 1d                	jmp    12b4 <gencookie+0xcb>
    1297:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    129b:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
    129f:	7e b8                	jle    1259 <gencookie+0x70>
    12a1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12a5:	48 83 c0 09          	add    $0x9,%rax
    12a9:	48 89 c7             	mov    %rax,%rdi
    12ac:	e8 2f fe ff ff       	call   10e0 <atoi@plt>
    12b1:	83 c0 05             	add    $0x5,%eax
    12b4:	c9                   	leave  
    12b5:	c3                   	ret    

00000000000012b6 <main>:
    12b6:	f3 0f 1e fa          	endbr64 
    12ba:	55                   	push   %rbp
    12bb:	48 89 e5             	mov    %rsp,%rbp
    12be:	48 83 ec 30          	sub    $0x30,%rsp
    12c2:	89 7d dc             	mov    %edi,-0x24(%rbp)
    12c5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    12c9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    12d0:	00 00 
    12d2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12d6:	31 c0                	xor    %eax,%eax
    12d8:	48 8d 05 7c 0d 00 00 	lea    0xd7c(%rip),%rax        # 205b <_IO_stdin_used+0x5b>
    12df:	48 89 c7             	mov    %rax,%rdi
    12e2:	b8 00 00 00 00       	mov    $0x0,%eax
    12e7:	e8 e4 fd ff ff       	call   10d0 <printf@plt>
    12ec:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
    12f0:	48 89 c6             	mov    %rax,%rsi
    12f3:	48 8d 05 7b 0d 00 00 	lea    0xd7b(%rip),%rax        # 2075 <_IO_stdin_used+0x75>
    12fa:	48 89 c7             	mov    %rax,%rdi
    12fd:	b8 00 00 00 00       	mov    $0x0,%eax
    1302:	e8 e9 fd ff ff       	call   10f0 <__isoc99_scanf@plt>
    1307:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
    130b:	48 89 c7             	mov    %rax,%rdi
    130e:	e8 d6 fe ff ff       	call   11e9 <gencookie>
    1313:	89 45 e8             	mov    %eax,-0x18(%rbp)
    1316:	48 8b 05 f3 2c 00 00 	mov    0x2cf3(%rip),%rax        # 4010 <phase>
    131d:	48 85 c0             	test   %rax,%rax
    1320:	74 10                	je     1332 <main+0x7c>
    1322:	48 8b 15 e7 2c 00 00 	mov    0x2ce7(%rip),%rdx        # 4010 <phase>
    1329:	8b 45 e8             	mov    -0x18(%rbp),%eax
    132c:	89 c7                	mov    %eax,%edi
    132e:	ff d2                	call   *%rdx
    1330:	eb 3c                	jmp    136e <main+0xb8>
    1332:	48 8d 05 3f 0d 00 00 	lea    0xd3f(%rip),%rax        # 2078 <_IO_stdin_used+0x78>
    1339:	48 89 c7             	mov    %rax,%rdi
    133c:	e8 5f fd ff ff       	call   10a0 <puts@plt>
    1341:	48 8d 05 48 0d 00 00 	lea    0xd48(%rip),%rax        # 2090 <_IO_stdin_used+0x90>
    1348:	48 89 c7             	mov    %rax,%rdi
    134b:	e8 50 fd ff ff       	call   10a0 <puts@plt>
    1350:	48 8d 05 69 0d 00 00 	lea    0xd69(%rip),%rax        # 20c0 <_IO_stdin_used+0xc0>
    1357:	48 89 c7             	mov    %rax,%rdi
    135a:	e8 41 fd ff ff       	call   10a0 <puts@plt>
    135f:	48 8d 05 8f 0d 00 00 	lea    0xd8f(%rip),%rax        # 20f5 <_IO_stdin_used+0xf5>
    1366:	48 89 c7             	mov    %rax,%rdi
    1369:	e8 32 fd ff ff       	call   10a0 <puts@plt>
    136e:	48 8d 05 98 0d 00 00 	lea    0xd98(%rip),%rax        # 210d <_IO_stdin_used+0x10d>
    1375:	48 89 c7             	mov    %rax,%rdi
    1378:	e8 23 fd ff ff       	call   10a0 <puts@plt>
    137d:	b8 00 00 00 00       	mov    $0x0,%eax
    1382:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1386:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    138d:	00 00 
    138f:	74 05                	je     1396 <main+0xe0>
    1391:	e8 2a fd ff ff       	call   10c0 <__stack_chk_fail@plt>
    1396:	c9                   	leave  
    1397:	c3                   	ret    

0000000000001398 <myfunc>:
    1398:	f3 0f 1e fa          	endbr64 
    139c:	55                   	push   %rbp
    139d:	48 89 e5             	mov    %rsp,%rbp
    13a0:	48 83 ec 10          	sub    $0x10,%rsp
    13a4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    13a8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    13ac:	48 89 c6             	mov    %rax,%rsi
    13af:	48 8d 3d 61 0d 00 00 	lea    0xd61(%rip),%rdi        # 2117 <_IO_stdin_used+0x117>
    13b6:	b8 00 00 00 00       	mov    $0x0,%eax
    13bb:	e8 10 fd ff ff       	call   10d0 <printf@plt>
    13c0:	90                   	nop
    13c1:	c9                   	leave  
    13c2:	c3                   	ret    

00000000000013c3 <do_phase>:
    13c3:	f3 0f 1e fa          	endbr64 
    13c7:	55                   	push   %rbp
    13c8:	48 89 e5             	mov    %rsp,%rbp
    13cb:	48 83 ec 30          	sub    $0x30,%rsp
    13cf:	89 7d dc             	mov    %edi,-0x24(%rbp)
    13d2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    13d9:	00 00 
    13db:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    13df:	31 c0                	xor    %eax,%eax
    13e1:	48 b8 55 32 30 32 32 	movabs $0x3332313232303255,%rax
    13e8:	31 32 33 
    13eb:	48 89 45 ed          	mov    %rax,-0x13(%rbp)
    13ef:	66 c7 45 f5 34 35    	movw   $0x3534,-0xb(%rbp)
    13f5:	c6 45 f7 00          	movb   $0x0,-0x9(%rbp)
    13f9:	90                   	nop
    13fa:	90                   	nop
    13fb:	90                   	nop
    13fc:	90                   	nop
    13fd:	90                   	nop
    13fe:	90                   	nop
    13ff:	90                   	nop
    1400:	90                   	nop
    1401:	90                   	nop
    1402:	90                   	nop
    1403:	90                   	nop
    1404:	90                   	nop
    1405:	90                   	nop
    1406:	90                   	nop
    1407:	90                   	nop
    1408:	90                   	nop
    1409:	90                   	nop
    140a:	90                   	nop
    140b:	90                   	nop
    140c:	90                   	nop
    140d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1411:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1418:	00 00 
    141a:	74 05                	je     1421 <do_phase+0x5e>
    141c:	e8 9f fc ff ff       	call   10c0 <__stack_chk_fail@plt>
    1421:	c9                   	leave  
    1422:	c3                   	ret    

Disassembly of section .fini:

0000000000001424 <_fini>:
    1424:	f3 0f 1e fa          	endbr64 
    1428:	48 83 ec 08          	sub    $0x8,%rsp
    142c:	48 83 c4 08          	add    $0x8,%rsp
    1430:	c3                   	ret    
