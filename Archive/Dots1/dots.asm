	.file "dots.bas"
	.stabs "D:\\GitHub\\Dots\\Archive\\Dots\\",100,0,0,.Lt_0002
	.stabs "dots.bas",100,0,0,.Lt_0002

.section .text
.Lt_0002:
	.stabs "integer:t1=-1",128,0,0,0
	.stabs "void:t7=-11",128,0,0,0
	.stabs "byte:t2=-6",128,0,0,0
	.stabs "ubyte:t3=-5",128,0,0,0
	.stabs "char:t4=-2",128,0,0,0
	.stabs "short:t5=-3",128,0,0,0
	.stabs "ushort:t6=-7",128,0,0,0
	.stabs "uinteger:t8=-8",128,0,0,0
	.stabs "longint:t9=-31",128,0,0,0
	.stabs "ulongint:t10=-32",128,0,0,0
	.stabs "single:t11=-12",128,0,0,0
	.stabs "double:t12=-13",128,0,0,0
	.stabs "string:t13=s12data:15,0,32;len:1,32,32;size:1,64,32;;",128,0,0,0
	.stabs "fixstr:t14=-2",128,0,0,0
	.stabs "pchar:t15=*4;",128,0,0,0
	.stabs "boolean:t16=@s8;-16",128,0,0,0

	.stabs "dots.bas",130,0,0,0
	.intel_syntax noprefix
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\SYS.BAS",130,0,0,0
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\SYS.BAS",132,0,0,.Lt_0013
.Lt_0013:
	.stabs "ECHO:F7",36,0,3,_ECHO@4
	.stabs "S:v13",160,0,0,8
.balign 16

.globl _ECHO@4
_ECHO@4:
	push ebp
	mov ebp, esp
	sub esp, 24
	.stabn 68,0,3,_ECHO@4-_ECHO@4
.Lt_000E:
	call _mcount
.Lt_0014:
	mov dword ptr [ebp-24], 0
	mov dword ptr [ebp-20], 0
	mov dword ptr [ebp-16], 0
	push 0
	push -1
	push 2
	push offset _Lt_0010
	push -1
	push dword ptr [ebp+8]
	mov dword ptr [ebp-12], 0
	mov dword ptr [ebp-8], 0
	mov dword ptr [ebp-4], 0
	lea eax, [ebp-12]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-24]
	push eax
	call _fb_StrAssign@20
	push dword ptr [ebp-24]
	call _printf
	add esp, 4
	lea eax, [ebp-24]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,4,.Lt_0014-_ECHO@4
.Lt_0015:
.Lt_000F:
	mov esp, ebp
	pop ebp
	ret 4
	.stabn 68,0,5,.Lt_000F-_ECHO@4
	.stabn 192,0,0,.Lt_000E-_ECHO@4
	.stabn 224,0,0,.Lt_000F-_ECHO@4
.Lt_0016:
	.stabs "",36,0,0,.Lt_0016-_ECHO@4
	.stabs "",162,0,0,0
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\FORM.BAS",130,0,0,0
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\FORM.BAS",132,0,0,.Lt_001B
.Lt_001B:
	.stabs "PNT:Tt19=s8X:1,0,32;Y:1,32,32;;",128,0,0,0
	.stabs "RECT:Tt18=s16POSITION:19,0,64;SIZE:19,64,64;;",128,0,0,0
	.stabs "FORM:Tt17=s36AREA:18,0,128;BCKCLR:8,128,32;BORCLR:8,160,32;TXTCLR:8,192,32;MARGIN:1,224,32;CURRENTLINE:1,256,32;;",128,0,0,0
	.stabs "FORM_CREATE:F17",36,0,8,_FORM_CREATE@28
	.stabs "Lt_0019:v17",160,0,0,8
	.stabs "X:p1",160,0,0,12
	.stabs "Y:p1",160,0,0,16
	.stabs "W:p1",160,0,0,20
	.stabs "H:p1",160,0,0,24
	.stabs "BCKCLR:p8",160,0,0,28
	.stabs "BORCLR:p8",160,0,0,32
	.stabs "TXTCLR:p8",160,0,0,36
.balign 16

.globl _FORM_CREATE@28
_FORM_CREATE@28:
	push ebp
	mov ebp, esp
	sub esp, 52
	.stabn 68,0,8,_FORM_CREATE@28-_FORM_CREATE@28
.Lt_0017:
	call _mcount
.Lt_001C:
	lea eax, [ebp-36]
	push eax
	push edi
	mov edi, eax
	xor eax, eax
	mov ecx, 9
	rep stosd
	pop edi
	pop eax
.stabn 68,0,9,.Lt_001C-_FORM_CREATE@28
.Lt_001D:
	push dword ptr [ebp+24]
	push dword ptr [ebp+20]
	push dword ptr [ebp+16]
	push dword ptr [ebp+12]
	mov dword ptr [ebp-52], 0
	mov dword ptr [ebp-48], 0
	mov dword ptr [ebp-44], 0
	mov dword ptr [ebp-40], 0
	lea eax, [ebp-52]
	push eax
	call _RECT_CREATE@16
	mov eax, dword ptr [ebp-52]
	mov dword ptr [ebp-36], eax
	mov eax, dword ptr [ebp-48]
	mov dword ptr [ebp-32], eax
	mov eax, dword ptr [ebp-44]
	mov dword ptr [ebp-28], eax
	mov eax, dword ptr [ebp-40]
	mov dword ptr [ebp-24], eax
.stabn 68,0,10,.Lt_001D-_FORM_CREATE@28
.Lt_001E:
	mov eax, dword ptr [ebp+28]
	mov dword ptr [ebp-20], eax
.stabn 68,0,11,.Lt_001E-_FORM_CREATE@28
.Lt_001F:
	mov eax, dword ptr [ebp+32]
	mov dword ptr [ebp-16], eax
.stabn 68,0,12,.Lt_001F-_FORM_CREATE@28
.Lt_0020:
	mov eax, dword ptr [ebp+36]
	mov dword ptr [ebp-12], eax
.stabn 68,0,13,.Lt_0020-_FORM_CREATE@28
.Lt_0021:
	mov dword ptr [ebp-8], 4
.stabn 68,0,14,.Lt_0021-_FORM_CREATE@28
.Lt_0022:
	lea eax, [ebp-36]
	push edi
	push esi
	mov edi, dword ptr [ebp+8]
	mov esi, eax
	mov ecx, 9
	rep movsd
	pop esi
	pop edi
.stabn 68,0,15,.Lt_0022-_FORM_CREATE@28
.Lt_0023:
.Lt_0018:
	mov eax, dword ptr [ebp+8]
	mov esp, ebp
	pop ebp
	ret 32
	.stabn 68,0,16,.Lt_0018-_FORM_CREATE@28
	.stabs "F:17",128,0,0,-36
	.stabn 192,0,0,.Lt_0017-_FORM_CREATE@28
	.stabn 224,0,0,.Lt_0018-_FORM_CREATE@28
.Lt_0024:
	.stabs "",36,0,0,.Lt_0024-_FORM_CREATE@28
	.stabs "FORM_SETPOSITION:F7",36,0,18,_FORM_SETPOSITION@12
	.stabs "F:p20=*17",160,0,0,8
	.stabs "X:p1",160,0,0,12
	.stabs "Y:p1",160,0,0,16
.balign 16

.globl _FORM_SETPOSITION@12
_FORM_SETPOSITION@12:
	push ebp
	mov ebp, esp
	push ebx
	.stabn 68,0,18,_FORM_SETPOSITION@12-_FORM_SETPOSITION@12
.Lt_0025:
	call _mcount
.Lt_0027:
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp+12]
	mov dword ptr [eax], ebx
	mov ebx, dword ptr [ebp+8]
	mov eax, dword ptr [ebp+16]
	mov dword ptr [ebx+4], eax
.stabn 68,0,19,.Lt_0027-_FORM_SETPOSITION@12
.Lt_0028:
.Lt_0026:
	pop ebx
	mov esp, ebp
	pop ebp
	ret 12
	.stabn 68,0,20,.Lt_0026-_FORM_SETPOSITION@12
	.stabn 192,0,0,.Lt_0025-_FORM_SETPOSITION@12
	.stabn 224,0,0,.Lt_0026-_FORM_SETPOSITION@12
.Lt_0029:
	.stabs "",36,0,0,.Lt_0029-_FORM_SETPOSITION@12
	.stabs "FORM_SETSIZE:F7",36,0,22,_FORM_SETSIZE@12
	.stabs "F:p21=*17",160,0,0,8
	.stabs "W:p1",160,0,0,12
	.stabs "H:p1",160,0,0,16
.balign 16

.globl _FORM_SETSIZE@12
_FORM_SETSIZE@12:
	push ebp
	mov ebp, esp
	push ebx
	.stabn 68,0,22,_FORM_SETSIZE@12-_FORM_SETSIZE@12
.Lt_002A:
	call _mcount
.Lt_002C:
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp+12]
	mov dword ptr [eax+8], ebx
	mov ebx, dword ptr [ebp+8]
	mov eax, dword ptr [ebp+16]
	mov dword ptr [ebx+12], eax
.stabn 68,0,23,.Lt_002C-_FORM_SETSIZE@12
.Lt_002D:
.Lt_002B:
	pop ebx
	mov esp, ebp
	pop ebp
	ret 12
	.stabn 68,0,24,.Lt_002B-_FORM_SETSIZE@12
	.stabn 192,0,0,.Lt_002A-_FORM_SETSIZE@12
	.stabn 224,0,0,.Lt_002B-_FORM_SETSIZE@12
.Lt_002E:
	.stabs "",36,0,0,.Lt_002E-_FORM_SETSIZE@12
	.stabs "FORM_RENDER:F7",36,0,26,_FORM_RENDER@4
	.stabs "F:p22=*17",160,0,0,8
.balign 16

.globl _FORM_RENDER@4
_FORM_RENDER@4:
	push ebp
	mov ebp, esp
	sub esp, 4
	push ebx
	.stabn 68,0,26,_FORM_RENDER@4-_FORM_RENDER@4
.Lt_002F:
	call _mcount
.Lt_0031:
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [eax+28]
	sal ebx, 1
	mov dword ptr [ebp-4], ebx
.stabn 68,0,31,.Lt_0031-_FORM_RENDER@4
.Lt_0032:
	mov ebx, dword ptr [ebp+8]
	mov dword ptr [ebx+32], 0
.stabn 68,0,32,.Lt_0032-_FORM_RENDER@4
.Lt_0033:
	push 1
	push 65535
	push 2
	mov ebx, dword ptr [ebp+8]
	push dword ptr [ebx+16]
	mov ebx, dword ptr [ebp+8]
	mov eax, dword ptr [ebx+12]
	sal eax, 3
	add eax, dword ptr [ebp-4]
	push eax
	fild dword ptr [esp]
	add esp, 4
	sub esp,4
	fstp dword ptr [esp]
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [eax+8]
	sal ebx, 3
	add ebx, dword ptr [ebp-4]
	push ebx
	fild dword ptr [esp]
	add esp, 4
	sub esp,4
	fstp dword ptr [esp]
	mov ebx, dword ptr [ebp+8]
	fild dword ptr [ebx+4]
	sub esp,4
	fstp dword ptr [esp]
	mov ebx, dword ptr [ebp+8]
	fild dword ptr [ebx]
	sub esp,4
	fstp dword ptr [esp]
	push 0
	call _fb_GfxLine@36
.stabn 68,0,33,.Lt_0033-_FORM_RENDER@4
.Lt_0034:
	push 1
	push 65535
	push 1
	mov ebx, dword ptr [ebp+8]
	push dword ptr [ebx+20]
	mov ebx, dword ptr [ebp+8]
	mov eax, dword ptr [ebx+12]
	sal eax, 3
	add eax, dword ptr [ebp-4]
	push eax
	fild dword ptr [esp]
	add esp, 4
	sub esp,4
	fstp dword ptr [esp]
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [eax+8]
	sal ebx, 3
	add ebx, dword ptr [ebp-4]
	push ebx
	fild dword ptr [esp]
	add esp, 4
	sub esp,4
	fstp dword ptr [esp]
	mov ebx, dword ptr [ebp+8]
	fild dword ptr [ebx+4]
	sub esp,4
	fstp dword ptr [esp]
	mov ebx, dword ptr [ebp+8]
	fild dword ptr [ebx]
	sub esp,4
	fstp dword ptr [esp]
	push 0
	call _fb_GfxLine@36
.stabn 68,0,34,.Lt_0034-_FORM_RENDER@4
.Lt_0035:
.Lt_0030:
	pop ebx
	mov esp, ebp
	pop ebp
	ret 4
	.stabn 68,0,35,.Lt_0030-_FORM_RENDER@4
	.stabs "RM:1",128,0,0,-4
	.stabn 192,0,0,.Lt_002F-_FORM_RENDER@4
	.stabn 224,0,0,.Lt_0030-_FORM_RENDER@4
.Lt_0036:
	.stabs "",36,0,0,.Lt_0036-_FORM_RENDER@4
	.stabs "FORM_PRINT:F7",36,0,37,_FORM_PRINT@8
	.stabs "F:p23=*17",160,0,0,8
	.stabs "TXT:v13",160,0,0,12
.balign 16

.globl _FORM_PRINT@8
_FORM_PRINT@8:
	push ebp
	mov ebp, esp
	push ebx
	.stabn 68,0,37,_FORM_PRINT@8-_FORM_PRINT@8
.Lt_0037:
	call _mcount
.Lt_003B:
	push 0
	push 0
	push 0
	push 0
	push 0
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+24]
	push dword ptr [ebp+12]
	push 4
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp+8]
	mov ecx, dword ptr [ebx+28]
	add ecx, dword ptr [eax+4]
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [eax+32]
	sal ebx, 3
	add ecx, ebx
	push ecx
	fild dword ptr [esp]
	add esp, 4
	sub esp,4
	fstp dword ptr [esp]
	mov ecx, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp+8]
	mov eax, dword ptr [ebx+28]
	add eax, dword ptr [ecx]
	push eax
	fild dword ptr [esp]
	add esp, 4
	sub esp,4
	fstp dword ptr [esp]
	push 0
	call _fb_GfxDrawString@44
	test eax, eax
	je .Lt_0039
	push 0
	push 0
	push offset _Lt_003A
	push 42
	call _fb_ErrorThrowAt
	add esp, 16
	jmp eax
.Lt_0039:
.stabn 68,0,42,.Lt_003B-_FORM_PRINT@8
.Lt_003C:
	mov eax, dword ptr [ebp+8]
	inc dword ptr [eax+32]
.stabn 68,0,43,.Lt_003C-_FORM_PRINT@8
.Lt_003D:
.Lt_0038:
	pop ebx
	mov esp, ebp
	pop ebp
	ret 8
	.stabn 68,0,44,.Lt_0038-_FORM_PRINT@8
	.stabn 192,0,0,.Lt_0037-_FORM_PRINT@8
	.stabn 224,0,0,.Lt_0038-_FORM_PRINT@8
.Lt_003E:
	.stabs "",36,0,0,.Lt_003E-_FORM_PRINT@8
	.stabs "",162,0,0,0
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\PNT.BAS",130,0,0,0
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\PNT.BAS",132,0,0,.Lt_0042
.Lt_0042:
	.stabs "PNT_OFFSET:F7",36,0,15,_PNT_OFFSET@12
	.stabs "P:p24=*19",160,0,0,8
	.stabs "DX:p1",160,0,0,12
	.stabs "DY:p1",160,0,0,16
.balign 16

.globl _PNT_OFFSET@12
_PNT_OFFSET@12:
	push ebp
	mov ebp, esp
	push ebx
	.stabn 68,0,15,_PNT_OFFSET@12-_PNT_OFFSET@12
.Lt_0040:
	call _mcount
.Lt_0043:
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp+12]
	add dword ptr [eax], ebx
.stabn 68,0,16,.Lt_0043-_PNT_OFFSET@12
.Lt_0044:
	mov ebx, dword ptr [ebp+8]
	mov eax, dword ptr [ebp+16]
	add dword ptr [ebx+4], eax
.stabn 68,0,17,.Lt_0044-_PNT_OFFSET@12
.Lt_0045:
.Lt_0041:
	pop ebx
	mov esp, ebp
	pop ebp
	ret 12
	.stabn 68,0,18,.Lt_0041-_PNT_OFFSET@12
	.stabn 192,0,0,.Lt_0040-_PNT_OFFSET@12
	.stabn 224,0,0,.Lt_0041-_PNT_OFFSET@12
.Lt_0046:
	.stabs "",36,0,0,.Lt_0046-_PNT_OFFSET@12
	.stabs "__Z8TOSTRINGP3PNT@4:F13",36,0,20,__Z8TOSTRINGP3PNT@4
	.stabs "P:p25=*19",160,0,0,8
.balign 16

.globl __Z8TOSTRINGP3PNT@4
__Z8TOSTRINGP3PNT@4:
	push ebp
	mov ebp, esp
	sub esp, 16
	.stabn 68,0,20,__Z8TOSTRINGP3PNT@4-__Z8TOSTRINGP3PNT@4
	mov dword ptr [ebp-12], 0
	mov dword ptr [ebp-8], 0
	mov dword ptr [ebp-4], 0
	call _mcount
.Lt_0047:
.Lt_004A:
	mov dword ptr [ebp-16], 0
.stabn 68,0,21,.Lt_004A-__Z8TOSTRINGP3PNT@4
.Lt_004B:
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+4]
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax]
	push offset _Lt_0049
	push dword ptr [ebp-16]
	call _sprintf
	add esp, 16
.stabn 68,0,22,.Lt_004B-__Z8TOSTRINGP3PNT@4
.Lt_004C:
	push 0
	push 0
	push dword ptr [ebp-16]
	push -1
	lea eax, [ebp-12]
	push eax
	call _fb_StrInit@20
.stabn 68,0,23,.Lt_004C-__Z8TOSTRINGP3PNT@4
.Lt_004D:
.Lt_0048:
	lea eax, [ebp-12]
	push eax
	call _fb_StrAllocTempResult@4
	mov esp, ebp
	pop ebp
	ret 4
	.stabn 68,0,24,.Lt_0048-__Z8TOSTRINGP3PNT@4
	.stabs "RESULT:26=*4",128,0,0,-16
	.stabn 192,0,0,.Lt_0047-__Z8TOSTRINGP3PNT@4
	.stabn 224,0,0,.Lt_0048-__Z8TOSTRINGP3PNT@4
.Lt_004E:
	.stabs "",36,0,0,.Lt_004E-__Z8TOSTRINGP3PNT@4
	.stabs "",162,0,0,0
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\RECT.BAS",130,0,0,0
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\RECT.BAS",132,0,0,.Lt_0055
.Lt_0055:
	.stabs "RECT_CREATE:F18",36,0,4,_RECT_CREATE@16
	.stabs "Lt_0051:v18",160,0,0,8
	.stabs "X:p1",160,0,0,12
	.stabs "Y:p1",160,0,0,16
	.stabs "W:p1",160,0,0,20
	.stabs "H:p1",160,0,0,24
.balign 16

.globl _RECT_CREATE@16
_RECT_CREATE@16:
	push ebp
	mov ebp, esp
	push ebx
	.stabn 68,0,4,_RECT_CREATE@16-_RECT_CREATE@16
.Lt_004F:
	call _mcount
.Lt_0056:
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp+12]
	mov dword ptr [eax], ebx
	mov ebx, dword ptr [ebp+8]
	add ebx, 4
	mov eax, dword ptr [ebp+16]
	mov dword ptr [ebx], eax
	mov eax, dword ptr [ebp+8]
	add eax, 8
	mov ebx, dword ptr [ebp+20]
	mov dword ptr [eax], ebx
	mov ebx, dword ptr [ebp+8]
	add ebx, 12
	mov eax, dword ptr [ebp+24]
	mov dword ptr [ebx], eax
.stabn 68,0,5,.Lt_0056-_RECT_CREATE@16
.Lt_0057:
.Lt_0050:
	mov eax, dword ptr [ebp+8]
	pop ebx
	mov esp, ebp
	pop ebp
	ret 20
	.stabn 68,0,6,.Lt_0050-_RECT_CREATE@16
	.stabn 192,0,0,.Lt_004F-_RECT_CREATE@16
	.stabn 224,0,0,.Lt_0050-_RECT_CREATE@16
.Lt_0058:
	.stabs "",36,0,0,.Lt_0058-_RECT_CREATE@16
	.stabs "RECT_GETNW:F18",36,0,8,_RECT_GETNW@4
	.stabs "Lt_005B:v18",160,0,0,8
	.stabs "R:p27=*18",160,0,0,12
.balign 16

.globl _RECT_GETNW@4
_RECT_GETNW@4:
	push ebp
	mov ebp, esp
	sub esp, 16
	push ebx
	.stabn 68,0,8,_RECT_GETNW@4-_RECT_GETNW@4
.Lt_0059:
	call _mcount
.Lt_005D:
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp+12]
	mov ecx, dword ptr [ebx+12]
	push ecx
	mov ecx, 2
	xchg eax, [esp]
	cdq
	idiv ecx
	mov ecx, eax
	pop eax
	push ecx
	mov ecx, dword ptr [ebp+12]
	mov ebx, dword ptr [ecx+8]
	mov ecx, 2
	push eax
	mov eax, ebx
	cdq
	idiv ecx
	mov ebx, eax
	pop eax
	push ebx
	mov ebx, dword ptr [ebp+12]
	push dword ptr [ebx+4]
	mov ebx, dword ptr [ebp+12]
	push dword ptr [ebx]
	mov dword ptr [ebp-16], 0
	mov dword ptr [ebp-12], 0
	mov dword ptr [ebp-8], 0
	mov dword ptr [ebp-4], 0
	lea ebx, [ebp-16]
	push ebx
	mov ebx, eax
	call _RECT_CREATE@16
	mov eax, dword ptr [ebp-16]
	mov dword ptr [ebx], eax
	mov eax, dword ptr [ebp-12]
	mov dword ptr [ebx+4], eax
	mov eax, dword ptr [ebp-8]
	mov dword ptr [ebx+8], eax
	mov eax, dword ptr [ebp-4]
	mov dword ptr [ebx+12], eax
.stabn 68,0,9,.Lt_005D-_RECT_GETNW@4
.Lt_005E:
.Lt_005A:
	mov eax, dword ptr [ebp+8]
	pop ebx
	mov esp, ebp
	pop ebp
	ret 8
	.stabn 68,0,10,.Lt_005A-_RECT_GETNW@4
	.stabn 192,0,0,.Lt_0059-_RECT_GETNW@4
	.stabn 224,0,0,.Lt_005A-_RECT_GETNW@4
.Lt_005F:
	.stabs "",36,0,0,.Lt_005F-_RECT_GETNW@4
	.stabs "RECT_GETNE:F18",36,0,12,_RECT_GETNE@4
	.stabs "Lt_0062:v18",160,0,0,8
	.stabs "R:p28=*18",160,0,0,12
.balign 16

.globl _RECT_GETNE@4
_RECT_GETNE@4:
	push ebp
	mov ebp, esp
	sub esp, 20
	push ebx
	.stabn 68,0,12,_RECT_GETNE@4-_RECT_GETNE@4
.Lt_0060:
	call _mcount
.Lt_0064:
	mov eax, dword ptr [ebp+12]
	mov ebx, dword ptr [eax+8]
	mov ecx, 2
	mov eax, ebx
	cdq
	idiv ecx
	mov ebx, eax
	mov dword ptr [ebp-4], ebx
.stabn 68,0,13,.Lt_0064-_RECT_GETNE@4
.Lt_0065:
	mov ebx, dword ptr [ebp+8]
	mov eax, dword ptr [ebp+12]
	mov ecx, dword ptr [eax+12]
	push ecx
	mov ecx, 2
	pop eax
	cdq
	idiv ecx
	mov ecx, eax
	push ecx
	push dword ptr [ebp-4]
	mov ecx, dword ptr [ebp+12]
	push dword ptr [ecx+4]
	mov ecx, dword ptr [ebp+12]
	mov eax, dword ptr [ebp-4]
	add eax, dword ptr [ecx]
	push eax
	mov dword ptr [ebp-20], 0
	mov dword ptr [ebp-16], 0
	mov dword ptr [ebp-12], 0
	mov dword ptr [ebp-8], 0
	lea eax, [ebp-20]
	push eax
	call _RECT_CREATE@16
	mov eax, dword ptr [ebp-20]
	mov dword ptr [ebx], eax
	mov eax, dword ptr [ebp-16]
	mov dword ptr [ebx+4], eax
	mov eax, dword ptr [ebp-12]
	mov dword ptr [ebx+8], eax
	mov eax, dword ptr [ebp-8]
	mov dword ptr [ebx+12], eax
.stabn 68,0,14,.Lt_0065-_RECT_GETNE@4
.Lt_0066:
.Lt_0061:
	mov eax, dword ptr [ebp+8]
	pop ebx
	mov esp, ebp
	pop ebp
	ret 8
	.stabn 68,0,15,.Lt_0061-_RECT_GETNE@4
	.stabs "HALFSIZEX:1",128,0,0,-4
	.stabn 192,0,0,.Lt_0060-_RECT_GETNE@4
	.stabn 224,0,0,.Lt_0061-_RECT_GETNE@4
.Lt_0067:
	.stabs "",36,0,0,.Lt_0067-_RECT_GETNE@4
	.stabs "RECT_GETSW:F18",36,0,17,_RECT_GETSW@4
	.stabs "Lt_006A:v18",160,0,0,8
	.stabs "R:p29=*18",160,0,0,12
.balign 16

.globl _RECT_GETSW@4
_RECT_GETSW@4:
	push ebp
	mov ebp, esp
	sub esp, 20
	push ebx
	.stabn 68,0,17,_RECT_GETSW@4-_RECT_GETSW@4
.Lt_0068:
	call _mcount
.Lt_006C:
	mov eax, dword ptr [ebp+12]
	mov ebx, dword ptr [eax+12]
	mov ecx, 2
	mov eax, ebx
	cdq
	idiv ecx
	mov ebx, eax
	mov dword ptr [ebp-4], ebx
.stabn 68,0,18,.Lt_006C-_RECT_GETSW@4
.Lt_006D:
	mov ebx, dword ptr [ebp+8]
	push dword ptr [ebp-4]
	mov eax, dword ptr [ebp+12]
	mov ecx, dword ptr [eax+8]
	push ecx
	mov ecx, 2
	pop eax
	cdq
	idiv ecx
	mov ecx, eax
	push ecx
	mov ecx, dword ptr [ebp+12]
	mov eax, dword ptr [ebp-4]
	add eax, dword ptr [ecx+4]
	push eax
	mov eax, dword ptr [ebp+12]
	push dword ptr [eax]
	mov dword ptr [ebp-20], 0
	mov dword ptr [ebp-16], 0
	mov dword ptr [ebp-12], 0
	mov dword ptr [ebp-8], 0
	lea eax, [ebp-20]
	push eax
	call _RECT_CREATE@16
	mov eax, dword ptr [ebp-20]
	mov dword ptr [ebx], eax
	mov eax, dword ptr [ebp-16]
	mov dword ptr [ebx+4], eax
	mov eax, dword ptr [ebp-12]
	mov dword ptr [ebx+8], eax
	mov eax, dword ptr [ebp-8]
	mov dword ptr [ebx+12], eax
.stabn 68,0,19,.Lt_006D-_RECT_GETSW@4
.Lt_006E:
.Lt_0069:
	mov eax, dword ptr [ebp+8]
	pop ebx
	mov esp, ebp
	pop ebp
	ret 8
	.stabn 68,0,20,.Lt_0069-_RECT_GETSW@4
	.stabs "HALFSIZEY:1",128,0,0,-4
	.stabn 192,0,0,.Lt_0068-_RECT_GETSW@4
	.stabn 224,0,0,.Lt_0069-_RECT_GETSW@4
.Lt_006F:
	.stabs "",36,0,0,.Lt_006F-_RECT_GETSW@4
	.stabs "RECT_GETSE:F18",36,0,22,_RECT_GETSE@4
	.stabs "Lt_0072:v18",160,0,0,8
	.stabs "R:p30=*18",160,0,0,12
.balign 16

.globl _RECT_GETSE@4
_RECT_GETSE@4:
	push ebp
	mov ebp, esp
	sub esp, 24
	push ebx
	.stabn 68,0,22,_RECT_GETSE@4-_RECT_GETSE@4
.Lt_0070:
	call _mcount
.Lt_0074:
	mov eax, dword ptr [ebp+12]
	mov ebx, dword ptr [eax+8]
	mov ecx, 2
	mov eax, ebx
	cdq
	idiv ecx
	mov ebx, eax
	mov dword ptr [ebp-4], ebx
.stabn 68,0,23,.Lt_0074-_RECT_GETSE@4
.Lt_0075:
	mov ebx, dword ptr [ebp+12]
	mov eax, dword ptr [ebx+12]
	mov ecx, 2
	cdq
	idiv ecx
	mov dword ptr [ebp-8], eax
.stabn 68,0,24,.Lt_0075-_RECT_GETSE@4
.Lt_0076:
	mov eax, dword ptr [ebp+8]
	push dword ptr [ebp-8]
	push dword ptr [ebp-4]
	mov ebx, dword ptr [ebp+12]
	mov ecx, dword ptr [ebp-8]
	add ecx, dword ptr [ebx+4]
	push ecx
	mov ecx, dword ptr [ebp+12]
	mov ebx, dword ptr [ebp-4]
	add ebx, dword ptr [ecx]
	push ebx
	mov dword ptr [ebp-24], 0
	mov dword ptr [ebp-20], 0
	mov dword ptr [ebp-16], 0
	mov dword ptr [ebp-12], 0
	lea ebx, [ebp-24]
	push ebx
	mov ebx, eax
	call _RECT_CREATE@16
	mov eax, dword ptr [ebp-24]
	mov dword ptr [ebx], eax
	mov eax, dword ptr [ebp-20]
	mov dword ptr [ebx+4], eax
	mov eax, dword ptr [ebp-16]
	mov dword ptr [ebx+8], eax
	mov eax, dword ptr [ebp-12]
	mov dword ptr [ebx+12], eax
.stabn 68,0,25,.Lt_0076-_RECT_GETSE@4
.Lt_0077:
.Lt_0071:
	mov eax, dword ptr [ebp+8]
	pop ebx
	mov esp, ebp
	pop ebp
	ret 8
	.stabn 68,0,26,.Lt_0071-_RECT_GETSE@4
	.stabs "HALFSIZEX:1",128,0,0,-4
	.stabs "HALFSIZEY:1",128,0,0,-8
	.stabn 192,0,0,.Lt_0070-_RECT_GETSE@4
	.stabn 224,0,0,.Lt_0071-_RECT_GETSE@4
.Lt_0078:
	.stabs "",36,0,0,.Lt_0078-_RECT_GETSE@4
	.stabs "RECT_INTERSECTS:F3",36,0,36,_RECT_INTERSECTS@8
	.stabs "R1:p31=*18",160,0,0,8
	.stabs "R2:p32=*18",160,0,0,12
.balign 16

.globl _RECT_INTERSECTS@8
_RECT_INTERSECTS@8:
	push ebp
	mov ebp, esp
	sub esp, 12
	push ebx
	push esi
	.stabn 68,0,36,_RECT_INTERSECTS@8-_RECT_INTERSECTS@8
	mov byte ptr [ebp-4], 0
	call _mcount
.Lt_0079:
.Lt_0089:
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp+12]
	mov ecx, dword ptr [ebp+12]
	mov esi, dword ptr [ecx+8]
	add esi, dword ptr [ebx]
	cmp dword ptr [eax], esi
	jg .Lt_007B
	mov esi, dword ptr [ebp+8]
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [eax+8]
	add ebx, dword ptr [esi]
	mov esi, dword ptr [ebp+12]
	cmp ebx, dword ptr [esi]
	setl bl
	shr ebx, 1
	sbb ebx, ebx
	mov dword ptr [ebp-8], ebx
	jmp .Lt_0087
.Lt_007B:
	mov dword ptr [ebp-8], -1
.Lt_0087:
	cmp dword ptr [ebp-8], 0
	je .Lt_007E
.Lt_007F:
	mov byte ptr [ebp-4], 0
	jmp .Lt_007A
.Lt_007E:
.Lt_0080:
.stabn 68,0,41,.Lt_0089-_RECT_INTERSECTS@8
.Lt_008B:
	mov ebx, dword ptr [ebp+8]
	mov esi, dword ptr [ebp+12]
	mov eax, dword ptr [ebp+12]
	mov ecx, dword ptr [eax+12]
	add ecx, dword ptr [esi+4]
	cmp dword ptr [ebx+4], ecx
	jg .Lt_0081
	mov ecx, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp+8]
	mov esi, dword ptr [ebx+12]
	add esi, dword ptr [ecx+4]
	mov ecx, dword ptr [ebp+12]
	cmp esi, dword ptr [ecx+4]
	setl dl
	mov esi, edx
	shr esi, 1
	sbb esi, esi
	mov dword ptr [ebp-12], esi
	jmp .Lt_0088
.Lt_0081:
	mov dword ptr [ebp-12], -1
.Lt_0088:
	cmp dword ptr [ebp-12], 0
	je .Lt_0084
.Lt_0085:
	mov byte ptr [ebp-4], 0
	jmp .Lt_007A
.Lt_0084:
.Lt_0086:
.stabn 68,0,42,.Lt_008B-_RECT_INTERSECTS@8
.Lt_008D:
	mov byte ptr [ebp-4], 1
.stabn 68,0,43,.Lt_008D-_RECT_INTERSECTS@8
.Lt_008E:
.Lt_007A:
	mov al, byte ptr [ebp-4]
	pop esi
	pop ebx
	mov esp, ebp
	pop ebp
	ret 8
	.stabn 68,0,44,.Lt_007A-_RECT_INTERSECTS@8
	.stabn 192,0,0,.Lt_0079-_RECT_INTERSECTS@8
	.stabn 192,0,0,.Lt_007F-_RECT_INTERSECTS@8
	.stabn 224,0,0,.Lt_0080-_RECT_INTERSECTS@8
	.stabn 192,0,0,.Lt_0085-_RECT_INTERSECTS@8
	.stabn 224,0,0,.Lt_0086-_RECT_INTERSECTS@8
	.stabn 224,0,0,.Lt_007A-_RECT_INTERSECTS@8
.Lt_008F:
	.stabs "",36,0,0,.Lt_008F-_RECT_INTERSECTS@8
	.stabs "RECT_CONTAINS:F3",36,0,46,_RECT_CONTAINS@8
	.stabs "R:p33=*18",160,0,0,8
	.stabs "P:p34=*19",160,0,0,12
.balign 16

.globl _RECT_CONTAINS@8
_RECT_CONTAINS@8:
	push ebp
	mov ebp, esp
	sub esp, 4
	push ebx
	push esi
	push edi
	.stabn 68,0,46,_RECT_CONTAINS@8-_RECT_CONTAINS@8
	mov byte ptr [ebp-4], 0
	call _mcount
.Lt_0090:
.Lt_009A:
	mov eax, dword ptr [ebp+12]
	mov ebx, dword ptr [ebp+8]
	mov ecx, dword ptr [eax]
	cmp ecx, dword ptr [ebx]
	setl cl
	shr ecx, 1
	sbb ecx, ecx
	mov ebx, dword ptr [ebp+12]
	mov eax, dword ptr [ebp+8]
	mov esi, dword ptr [ebp+8]
	mov edi, dword ptr [esi+8]
	add edi, dword ptr [eax]
	mov eax, dword ptr [ebx]
	cmp eax, edi
	setg al
	shr eax, 1
	sbb eax, eax
	or ecx, eax
	je .Lt_0093
.Lt_0094:
	mov byte ptr [ebp-4], 0
	jmp .Lt_0091
.Lt_0093:
.Lt_0095:
.stabn 68,0,47,.Lt_009A-_RECT_CONTAINS@8
.Lt_009D:
	mov eax, dword ptr [ebp+12]
	mov ecx, dword ptr [ebp+8]
	mov edi, dword ptr [eax+4]
	cmp edi, dword ptr [ecx+4]
	setl dl
	mov edi, edx
	shr edi, 1
	sbb edi, edi
	mov ecx, dword ptr [ebp+12]
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp+8]
	mov esi, dword ptr [ebx+12]
	add esi, dword ptr [eax+4]
	mov eax, dword ptr [ecx+4]
	cmp eax, esi
	setg al
	shr eax, 1
	sbb eax, eax
	or edi, eax
	je .Lt_0097
.Lt_0098:
	mov byte ptr [ebp-4], 0
	jmp .Lt_0091
.Lt_0097:
.Lt_0099:
.stabn 68,0,48,.Lt_009D-_RECT_CONTAINS@8
.Lt_00A0:
	mov byte ptr [ebp-4], 1
.stabn 68,0,49,.Lt_00A0-_RECT_CONTAINS@8
.Lt_00A1:
.Lt_0091:
	mov al, byte ptr [ebp-4]
	pop edi
	pop esi
	pop ebx
	mov esp, ebp
	pop ebp
	ret 8
	.stabn 68,0,50,.Lt_0091-_RECT_CONTAINS@8
	.stabn 192,0,0,.Lt_0090-_RECT_CONTAINS@8
	.stabn 192,0,0,.Lt_0094-_RECT_CONTAINS@8
	.stabn 224,0,0,.Lt_0095-_RECT_CONTAINS@8
	.stabn 192,0,0,.Lt_0098-_RECT_CONTAINS@8
	.stabn 224,0,0,.Lt_0099-_RECT_CONTAINS@8
	.stabn 224,0,0,.Lt_0091-_RECT_CONTAINS@8
.Lt_00A2:
	.stabs "",36,0,0,.Lt_00A2-_RECT_CONTAINS@8
	.stabs "RECT_GETRANDOMPOINT:F19",36,0,52,_RECT_GETRANDOMPOINT@4
	.stabs "R:p35=*18",160,0,0,8
.balign 16

.globl _RECT_GETRANDOMPOINT@4
_RECT_GETRANDOMPOINT@4:
	push ebp
	mov ebp, esp
	sub esp, 40
	.stabn 68,0,52,_RECT_GETRANDOMPOINT@4-_RECT_GETRANDOMPOINT@4
	mov dword ptr [ebp-8], 0
	mov dword ptr [ebp-4], 0
	call _mcount
.Lt_00A3:
.Lt_00AB:
	mov eax, dword ptr [ebp+8]
	fild dword ptr [eax]
	mov eax, dword ptr [ebp+8]
	fild dword ptr [eax+8]
	push dword ptr [_Lt_00A6]
	fstp qword ptr [ebp-16]
	fstp qword ptr [ebp-24]
	call _fb_Rnd@4
	fmul qword ptr [ebp-16]
	fadd qword ptr [ebp-24]
	fistp dword ptr [ebp-8]
	mov eax, dword ptr [ebp+8]
	fild dword ptr [eax+4]
	mov eax, dword ptr [ebp+8]
	fild dword ptr [eax+12]
	push dword ptr [_Lt_00A6]
	fstp qword ptr [ebp-32]
	fstp qword ptr [ebp-40]
	call _fb_Rnd@4
	fmul qword ptr [ebp-32]
	fadd qword ptr [ebp-40]
	fistp dword ptr [ebp-4]
.stabn 68,0,53,.Lt_00AB-_RECT_GETRANDOMPOINT@4
.Lt_00AC:
.Lt_00A4:
	mov eax, dword ptr [ebp-8]
	mov edx, dword ptr [ebp-4]
	mov esp, ebp
	pop ebp
	ret 4
	.stabn 68,0,54,.Lt_00A4-_RECT_GETRANDOMPOINT@4
	.stabn 192,0,0,.Lt_00A3-_RECT_GETRANDOMPOINT@4
	.stabn 224,0,0,.Lt_00A4-_RECT_GETRANDOMPOINT@4
.Lt_00AD:
	.stabs "",36,0,0,.Lt_00AD-_RECT_GETRANDOMPOINT@4
	.stabs "__Z8TOSTRINGP4RECT@4:F13",36,0,56,__Z8TOSTRINGP4RECT@4
	.stabs "R:p36=*18",160,0,0,8
.balign 16

.globl __Z8TOSTRINGP4RECT@4
__Z8TOSTRINGP4RECT@4:
	push ebp
	mov ebp, esp
	sub esp, 16
	push ebx
	.stabn 68,0,56,__Z8TOSTRINGP4RECT@4-__Z8TOSTRINGP4RECT@4
	mov dword ptr [ebp-12], 0
	mov dword ptr [ebp-8], 0
	mov dword ptr [ebp-4], 0
	call _mcount
.Lt_00AE:
.Lt_00B1:
	mov dword ptr [ebp-16], 0
.stabn 68,0,57,.Lt_00B1-__Z8TOSTRINGP4RECT@4
.Lt_00B2:
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp+8]
	mov ecx, dword ptr [ebx+12]
	add ecx, dword ptr [eax+4]
	push ecx
	mov ecx, dword ptr [ebp+8]
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [eax+8]
	add ebx, dword ptr [ecx]
	push ebx
	mov ebx, dword ptr [ebp+8]
	push dword ptr [ebx+4]
	mov ebx, dword ptr [ebp+8]
	push dword ptr [ebx]
	push offset _Lt_00B0
	push dword ptr [ebp-16]
	call _sprintf
	add esp, 24
.stabn 68,0,58,.Lt_00B2-__Z8TOSTRINGP4RECT@4
.Lt_00B3:
	push 0
	push 0
	push dword ptr [ebp-16]
	push -1
	lea ebx, [ebp-12]
	push ebx
	call _fb_StrInit@20
.stabn 68,0,59,.Lt_00B3-__Z8TOSTRINGP4RECT@4
.Lt_00B4:
.Lt_00AF:
	lea ebx, [ebp-12]
	push ebx
	call _fb_StrAllocTempResult@4
	pop ebx
	mov esp, ebp
	pop ebp
	ret 4
	.stabn 68,0,60,.Lt_00AF-__Z8TOSTRINGP4RECT@4
	.stabs "RESULT:37=*4",128,0,0,-16
	.stabn 192,0,0,.Lt_00AE-__Z8TOSTRINGP4RECT@4
	.stabn 224,0,0,.Lt_00AF-__Z8TOSTRINGP4RECT@4
.Lt_00B5:
	.stabs "",36,0,0,.Lt_00B5-__Z8TOSTRINGP4RECT@4
	.stabs "",162,0,0,0
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\MOUSE.BAS",130,0,0,0
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\MOUSE.BAS",132,0,0,.Lt_00BB
.Lt_00BB:
	.stabs "MOUSE_UPDATE:F7",36,0,3,_MOUSE_UPDATE@4
	.stabs "MOUSE:Tt39=s36STATE:1,0,32;X:1,32,32;Y:1,64,32;DX:1,96,32;DY:1,128,32;BUTTONS:1,160,32;WHEEL:1,192,32;DWHEEL:1,224,32;CLIP:1,256,32;;",128,0,0,0
	.stabs "M:p38=*39",160,0,0,8
.balign 16

.globl _MOUSE_UPDATE@4
_MOUSE_UPDATE@4:
	push ebp
	mov ebp, esp
	sub esp, 16
	push ebx
	.stabn 68,0,3,_MOUSE_UPDATE@4-_MOUSE_UPDATE@4
.Lt_00B6:
	call _mcount
.Lt_00BC:
.Lt_00B8:
	mov eax, dword ptr [ebp+8]
	mov dword ptr [ebp-4], eax
.stabn 68,0,4,.Lt_00BC-_MOUSE_UPDATE@4
.Lt_00BD:
	mov eax, dword ptr [ebp-4]
	mov ebx, dword ptr [eax+4]
	mov dword ptr [ebp-8], ebx
.stabn 68,0,5,.Lt_00BD-_MOUSE_UPDATE@4
.Lt_00BE:
	mov ebx, dword ptr [ebp-4]
	mov eax, dword ptr [ebx+8]
	mov dword ptr [ebp-12], eax
.stabn 68,0,6,.Lt_00BE-_MOUSE_UPDATE@4
.Lt_00BF:
	mov eax, dword ptr [ebp-4]
	mov ebx, dword ptr [eax+24]
	mov dword ptr [ebp-16], ebx
.stabn 68,0,7,.Lt_00BF-_MOUSE_UPDATE@4
.Lt_00C0:
	mov ebx, dword ptr [ebp-4]
	lea eax, [ebx+32]
	push eax
	mov eax, dword ptr [ebp-4]
	lea ebx, [eax+20]
	push ebx
	mov ebx, dword ptr [ebp-4]
	lea eax, [ebx+24]
	push eax
	mov eax, dword ptr [ebp-4]
	lea ebx, [eax+8]
	push ebx
	mov ebx, dword ptr [ebp-4]
	lea eax, [ebx+4]
	push eax
	call _fb_GetMouse@20
	mov ebx, dword ptr [ebp-4]
	mov dword ptr [ebx], eax
.stabn 68,0,8,.Lt_00C0-_MOUSE_UPDATE@4
.Lt_00C1:
	mov eax, dword ptr [ebp-4]
	mov ebx, dword ptr [eax+4]
	sub ebx, dword ptr [ebp-8]
	mov eax, dword ptr [ebp-4]
	mov dword ptr [eax+12], ebx
.stabn 68,0,9,.Lt_00C1-_MOUSE_UPDATE@4
.Lt_00C2:
	mov ebx, dword ptr [ebp-4]
	mov eax, dword ptr [ebx+8]
	sub eax, dword ptr [ebp-12]
	mov ebx, dword ptr [ebp-4]
	mov dword ptr [ebx+16], eax
.stabn 68,0,10,.Lt_00C2-_MOUSE_UPDATE@4
.Lt_00C3:
	mov eax, dword ptr [ebp-4]
	mov ebx, dword ptr [eax+24]
	sub ebx, dword ptr [ebp-16]
	mov eax, dword ptr [ebp-4]
	mov dword ptr [eax+28], ebx
.stabn 68,0,11,.Lt_00C3-_MOUSE_UPDATE@4
.Lt_00C4:
.Lt_00BA:
.Lt_00B7:
	pop ebx
	mov esp, ebp
	pop ebp
	ret 4
	.stabn 68,0,13,.Lt_00B7-_MOUSE_UPDATE@4
	.stabn 192,0,0,.Lt_00B6-_MOUSE_UPDATE@4
	.stabs "PX:1",128,0,0,-8
	.stabs "PY:1",128,0,0,-12
	.stabs "PW:1",128,0,0,-16
	.stabn 192,0,0,.Lt_00B8-_MOUSE_UPDATE@4
	.stabn 224,0,0,.Lt_00BA-_MOUSE_UPDATE@4
	.stabn 224,0,0,.Lt_00B7-_MOUSE_UPDATE@4
.Lt_00C5:
	.stabs "",36,0,0,.Lt_00C5-_MOUSE_UPDATE@4
	.stabs "",162,0,0,0
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\STOPWATCH.BAS",130,0,0,0
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\STOPWATCH.BAS",132,0,0,.Lt_00C8
.Lt_00C8:
	.stabs "SW_START:F7",36,0,3,_SW_START@4
	.stabs "STOPWATCH:Tt41=s24START:12,0,64;RESULT:12,64,64;RUNNING:3,128,8;;",128,0,0,0
	.stabs "W:p40=*41",160,0,0,8
.balign 16

.globl _SW_START@4
_SW_START@4:
	push ebp
	mov ebp, esp
	.stabn 68,0,3,_SW_START@4-_SW_START@4
.Lt_00C6:
	call _mcount
.Lt_00C9:
	call _fb_Timer@0
	mov eax, dword ptr [ebp+8]
	fstp qword ptr [eax]
.stabn 68,0,4,.Lt_00C9-_SW_START@4
.Lt_00CA:
	mov eax, dword ptr [ebp+8]
	mov byte ptr [eax+16], 1
.stabn 68,0,5,.Lt_00CA-_SW_START@4
.Lt_00CB:
.Lt_00C7:
	mov esp, ebp
	pop ebp
	ret 4
	.stabn 68,0,6,.Lt_00C7-_SW_START@4
	.stabn 192,0,0,.Lt_00C6-_SW_START@4
	.stabn 224,0,0,.Lt_00C7-_SW_START@4
.Lt_00CC:
	.stabs "",36,0,0,.Lt_00CC-_SW_START@4
	.stabs "SW_STOP:F7",36,0,8,_SW_STOP@4
	.stabs "W:p42=*41",160,0,0,8
.balign 16

.globl _SW_STOP@4
_SW_STOP@4:
	push ebp
	mov ebp, esp
	.stabn 68,0,8,_SW_STOP@4-_SW_STOP@4
.Lt_00CD:
	call _mcount
.Lt_00D0:
	call _fb_Timer@0
	mov eax, dword ptr [ebp+8]
	fsub qword ptr [eax]
	fmul qword ptr [_Lt_00CF]
	mov eax, dword ptr [ebp+8]
	fstp qword ptr [eax+8]
.stabn 68,0,9,.Lt_00D0-_SW_STOP@4
.Lt_00D1:
	mov eax, dword ptr [ebp+8]
	mov byte ptr [eax+16], 0
.stabn 68,0,10,.Lt_00D1-_SW_STOP@4
.Lt_00D2:
.Lt_00CE:
	mov esp, ebp
	pop ebp
	ret 4
	.stabn 68,0,11,.Lt_00CE-_SW_STOP@4
	.stabn 192,0,0,.Lt_00CD-_SW_STOP@4
	.stabn 224,0,0,.Lt_00CE-_SW_STOP@4
.Lt_00D3:
	.stabs "",36,0,0,.Lt_00D3-_SW_STOP@4
	.stabs "SW_GET:F12",36,0,13,_SW_GET@4
	.stabs "W:p43=*41",160,0,0,8
.balign 16

.globl _SW_GET@4
_SW_GET@4:
	push ebp
	mov ebp, esp
	sub esp, 8
	.stabn 68,0,13,_SW_GET@4-_SW_GET@4
	mov dword ptr [ebp-8], 0
	mov dword ptr [ebp-4], 0
	call _mcount
.Lt_00D4:
.Lt_00D6:
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+8]
	push dword ptr [eax+12]
	pop dword ptr [ebp-4]
	pop dword ptr [ebp-8]
.stabn 68,0,14,.Lt_00D6-_SW_GET@4
.Lt_00D7:
.Lt_00D5:
	fld qword ptr [ebp-8]
	mov esp, ebp
	pop ebp
	ret 4
	.stabn 68,0,15,.Lt_00D5-_SW_GET@4
	.stabn 192,0,0,.Lt_00D4-_SW_GET@4
	.stabn 224,0,0,.Lt_00D5-_SW_GET@4
.Lt_00D8:
	.stabs "",36,0,0,.Lt_00D8-_SW_GET@4
	.stabs "SW_RESET:F7",36,0,17,_SW_RESET@4
	.stabs "W:p44=*41",160,0,0,8
.balign 16

.globl _SW_RESET@4
_SW_RESET@4:
	push ebp
	mov ebp, esp
	.stabn 68,0,17,_SW_RESET@4-_SW_RESET@4
.Lt_00D9:
	call _mcount
.Lt_00DD:
	mov eax, dword ptr [ebp+8]
	push dword ptr [_Lt_00DC]
	push dword ptr [_Lt_00DC+4]
	pop dword ptr [eax+4]
	pop dword ptr [eax]
	mov eax, dword ptr [ebp+8]
	add eax, 8
	push dword ptr [_Lt_00DC]
	push dword ptr [_Lt_00DC+4]
	pop dword ptr [eax+4]
	pop dword ptr [eax]
	mov eax, dword ptr [ebp+8]
	add eax, 16
	mov byte ptr [eax], 0
	mov eax, dword ptr [ebp+8]
	add eax, 17
	mov dword ptr [eax], 0
	mov word ptr [eax+4], 0
	mov byte ptr [eax+6], 0
.stabn 68,0,18,.Lt_00DD-_SW_RESET@4
.Lt_00DE:
.Lt_00DA:
	mov esp, ebp
	pop ebp
	ret 4
	.stabn 68,0,19,.Lt_00DA-_SW_RESET@4
	.stabn 192,0,0,.Lt_00D9-_SW_RESET@4
	.stabn 224,0,0,.Lt_00DA-_SW_RESET@4
.Lt_00DF:
	.stabs "",36,0,0,.Lt_00DF-_SW_RESET@4
	.stabs "",162,0,0,0
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\QUADTREE.BAS",130,0,0,0
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\QUADTREE.BAS",132,0,0,.Lt_00E4
.Lt_00E4:
	.stabs "QTNODE:Tt45=s12P:19,0,64;D:46=*7,64,32;;",128,0,0,0
	.stabs "QTN_CREATE:F45",36,0,5,_QTN_CREATE@8
	.stabs "Lt_00E2:v45",160,0,0,8
	.stabs "P:v19",160,0,0,12
	.stabs "D:p47=*7",160,0,0,16
.balign 16

.globl _QTN_CREATE@8
_QTN_CREATE@8:
	push ebp
	mov ebp, esp
	push ebx
	.stabn 68,0,5,_QTN_CREATE@8-_QTN_CREATE@8
.Lt_00E0:
	call _mcount
.Lt_00E5:
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp+12]
	mov ecx, dword ptr [ebx]
	mov dword ptr [eax], ecx
	mov ecx, dword ptr [ebx+4]
	mov dword ptr [eax+4], ecx
	mov ebx, dword ptr [ebp+8]
	add ebx, 8
	mov eax, dword ptr [ebp+16]
	mov dword ptr [ebx], eax
.stabn 68,0,6,.Lt_00E5-_QTN_CREATE@8
.Lt_00E6:
.Lt_00E1:
	mov eax, dword ptr [ebp+8]
	pop ebx
	mov esp, ebp
	pop ebp
	ret 12
	.stabn 68,0,7,.Lt_00E1-_QTN_CREATE@8
	.stabn 192,0,0,.Lt_00E0-_QTN_CREATE@8
	.stabn 224,0,0,.Lt_00E1-_QTN_CREATE@8
.Lt_00E7:
	.stabs "",36,0,0,.Lt_00E7-_QTN_CREATE@8
	.stabs "QUADTREE:Tt48=s56DEPTH:1,0,32;CAPACITY:1,32,32;PARENT:49=*48,64,32;BOUNDARY:18,96,128;COUNT:1,224,32;N:50=*45,256,32;DIVIDED:1,288,32;NW:51=*48,320,32;NE:52=*48,352,32;SW:53=*48,384,32;SE:54=*48,416,32;;",128,0,0,0
	.stabs "QT_CREATE:F48",36,0,9,_QT_CREATE@16
	.stabs "Lt_00EA:v48",160,0,0,8
	.stabs "R:v18",160,0,0,12
	.stabs "C:p1",160,0,0,16
	.stabs "D:p1",160,0,0,20
	.stabs "P:p55=*48",160,0,0,24
.balign 16

.globl _QT_CREATE@16
_QT_CREATE@16:
	push ebp
	mov ebp, esp
	sub esp, 60
	.stabn 68,0,9,_QT_CREATE@16-_QT_CREATE@16
.Lt_00E8:
	call _mcount
.Lt_00EC:
	lea eax, [ebp-56]
	push eax
	push edi
	mov edi, eax
	xor eax, eax
	mov ecx, 14
	rep stosd
	pop edi
	pop eax
.stabn 68,0,10,.Lt_00EC-_QT_CREATE@16
.Lt_00ED:
	mov eax, dword ptr [ebp+12]
	mov ecx, dword ptr [eax]
	mov dword ptr [ebp-44], ecx
	mov ecx, dword ptr [eax+4]
	mov dword ptr [ebp-40], ecx
	mov ecx, dword ptr [eax+8]
	mov dword ptr [ebp-36], ecx
	mov ecx, dword ptr [eax+12]
	mov dword ptr [ebp-32], ecx
.stabn 68,0,11,.Lt_00ED-_QT_CREATE@16
.Lt_00EE:
	mov eax, dword ptr [ebp+16]
	mov dword ptr [ebp-52], eax
.stabn 68,0,12,.Lt_00EE-_QT_CREATE@16
.Lt_00EF:
	mov eax, dword ptr [ebp+20]
	mov dword ptr [ebp-56], eax
.stabn 68,0,13,.Lt_00EF-_QT_CREATE@16
.Lt_00F0:
	mov eax, dword ptr [ebp+24]
	mov dword ptr [ebp-48], eax
.stabn 68,0,14,.Lt_00F0-_QT_CREATE@16
.Lt_00F1:
	mov eax, dword ptr [ebp-52]
	imul eax, 12
	push eax
	call _malloc
	add esp, 4
	mov dword ptr [ebp-60], eax
	mov eax, dword ptr [ebp-52]
	imul eax, 12
	push eax
	push edi
	mov edi, dword ptr [ebp-60]
	mov ecx, eax
	xor eax, eax
	push ecx
	shr ecx, 2
	rep stosd
	pop ecx
	and ecx, 3
	rep stosb
	pop edi
	pop eax
	mov eax, dword ptr [ebp-60]
	mov dword ptr [ebp-24], eax
.stabn 68,0,15,.Lt_00F1-_QT_CREATE@16
.Lt_00F2:
	lea eax, [ebp-56]
	push edi
	push esi
	mov edi, dword ptr [ebp+8]
	mov esi, eax
	mov ecx, 14
	rep movsd
	pop esi
	pop edi
.stabn 68,0,16,.Lt_00F2-_QT_CREATE@16
.Lt_00F3:
.Lt_00E9:
	mov eax, dword ptr [ebp+8]
	mov esp, ebp
	pop ebp
	ret 20
	.stabn 68,0,17,.Lt_00E9-_QT_CREATE@16
	.stabs "QT:48",128,0,0,-56
	.stabn 192,0,0,.Lt_00E8-_QT_CREATE@16
	.stabn 224,0,0,.Lt_00E9-_QT_CREATE@16
.Lt_00F4:
	.stabs "",36,0,0,.Lt_00F4-_QT_CREATE@16
	.stabs "QT_SUBDIVIDE:F7",36,0,19,_QT_SUBDIVIDE@4
	.stabs "QT:p56=*48",160,0,0,8
.balign 16

.globl _QT_SUBDIVIDE@4
_QT_SUBDIVIDE@4:
	push ebp
	mov ebp, esp
	sub esp, 304
	push ebx
	.stabn 68,0,19,_QT_SUBDIVIDE@4-_QT_SUBDIVIDE@4
.Lt_00F5:
	call _mcount
.Lt_0103:
	push 56
	call _malloc
	add esp, 4
	mov dword ptr [ebp-4], eax
	push dword ptr [ebp+8]
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [eax]
	inc ebx
	push ebx
	mov ebx, dword ptr [ebp+8]
	push dword ptr [ebx+4]
	mov ebx, dword ptr [ebp+8]
	lea eax, [ebx+12]
	push eax
	mov dword ptr [ebp-76], 0
	mov dword ptr [ebp-72], 0
	mov dword ptr [ebp-68], 0
	mov dword ptr [ebp-64], 0
	lea eax, [ebp-76]
	push eax
	call _RECT_GETNW@4
	push eax
	lea eax, [ebp-60]
	push eax
	push edi
	mov edi, eax
	xor eax, eax
	mov ecx, 14
	rep stosd
	pop edi
	pop eax
	lea eax, [ebp-60]
	push eax
	call _QT_CREATE@16
	lea eax, [ebp-60]
	push edi
	push esi
	mov edi, dword ptr [ebp-4]
	mov esi, eax
	mov ecx, 14
	rep movsd
	pop esi
	pop edi
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp-4]
	mov dword ptr [eax+40], ebx
.stabn 68,0,20,.Lt_0103-_QT_SUBDIVIDE@4
.Lt_0104:
	push 56
	call _malloc
	add esp, 4
	mov dword ptr [ebp-80], eax
	push dword ptr [ebp+8]
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [eax]
	inc ebx
	push ebx
	mov ebx, dword ptr [ebp+8]
	push dword ptr [ebx+4]
	mov ebx, dword ptr [ebp+8]
	lea eax, [ebx+12]
	push eax
	mov dword ptr [ebp-152], 0
	mov dword ptr [ebp-148], 0
	mov dword ptr [ebp-144], 0
	mov dword ptr [ebp-140], 0
	lea eax, [ebp-152]
	push eax
	call _RECT_GETNE@4
	push eax
	lea eax, [ebp-136]
	push eax
	push edi
	mov edi, eax
	xor eax, eax
	mov ecx, 14
	rep stosd
	pop edi
	pop eax
	lea eax, [ebp-136]
	push eax
	call _QT_CREATE@16
	lea eax, [ebp-136]
	push edi
	push esi
	mov edi, dword ptr [ebp-80]
	mov esi, eax
	mov ecx, 14
	rep movsd
	pop esi
	pop edi
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp-80]
	mov dword ptr [eax+44], ebx
.stabn 68,0,21,.Lt_0104-_QT_SUBDIVIDE@4
.Lt_0105:
	push 56
	call _malloc
	add esp, 4
	mov dword ptr [ebp-156], eax
	push dword ptr [ebp+8]
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [eax]
	inc ebx
	push ebx
	mov ebx, dword ptr [ebp+8]
	push dword ptr [ebx+4]
	mov ebx, dword ptr [ebp+8]
	lea eax, [ebx+12]
	push eax
	mov dword ptr [ebp-228], 0
	mov dword ptr [ebp-224], 0
	mov dword ptr [ebp-220], 0
	mov dword ptr [ebp-216], 0
	lea eax, [ebp-228]
	push eax
	call _RECT_GETSW@4
	push eax
	lea eax, [ebp-212]
	push eax
	push edi
	mov edi, eax
	xor eax, eax
	mov ecx, 14
	rep stosd
	pop edi
	pop eax
	lea eax, [ebp-212]
	push eax
	call _QT_CREATE@16
	lea eax, [ebp-212]
	push edi
	push esi
	mov edi, dword ptr [ebp-156]
	mov esi, eax
	mov ecx, 14
	rep movsd
	pop esi
	pop edi
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp-156]
	mov dword ptr [eax+48], ebx
.stabn 68,0,22,.Lt_0105-_QT_SUBDIVIDE@4
.Lt_0106:
	push 56
	call _malloc
	add esp, 4
	mov dword ptr [ebp-232], eax
	push dword ptr [ebp+8]
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [eax]
	inc ebx
	push ebx
	mov ebx, dword ptr [ebp+8]
	push dword ptr [ebx+4]
	mov ebx, dword ptr [ebp+8]
	lea eax, [ebx+12]
	push eax
	mov dword ptr [ebp-304], 0
	mov dword ptr [ebp-300], 0
	mov dword ptr [ebp-296], 0
	mov dword ptr [ebp-292], 0
	lea eax, [ebp-304]
	push eax
	call _RECT_GETSE@4
	push eax
	lea eax, [ebp-288]
	push eax
	push edi
	mov edi, eax
	xor eax, eax
	mov ecx, 14
	rep stosd
	pop edi
	pop eax
	lea eax, [ebp-288]
	push eax
	call _QT_CREATE@16
	lea eax, [ebp-288]
	push edi
	push esi
	mov edi, dword ptr [ebp-232]
	mov esi, eax
	mov ecx, 14
	rep movsd
	pop esi
	pop edi
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp-232]
	mov dword ptr [eax+52], ebx
.stabn 68,0,23,.Lt_0106-_QT_SUBDIVIDE@4
.Lt_0107:
	mov ebx, dword ptr [ebp+8]
	mov dword ptr [ebx+36], 1
.stabn 68,0,24,.Lt_0107-_QT_SUBDIVIDE@4
.Lt_0108:
.Lt_00F6:
	pop ebx
	mov esp, ebp
	pop ebp
	ret 4
	.stabn 68,0,25,.Lt_00F6-_QT_SUBDIVIDE@4
	.stabn 192,0,0,.Lt_00F5-_QT_SUBDIVIDE@4
	.stabn 224,0,0,.Lt_00F6-_QT_SUBDIVIDE@4
.Lt_0109:
	.stabs "",36,0,0,.Lt_0109-_QT_SUBDIVIDE@4
	.stabs "QT_INSERT:F3",36,0,27,_QT_INSERT@8
	.stabs "QT:p57=*48",160,0,0,8
	.stabs "QTN:v45",160,0,0,12
.balign 16

.globl _QT_INSERT@8
_QT_INSERT@8:
	push ebp
	mov ebp, esp
	sub esp, 4
	push ebx
	.stabn 68,0,27,_QT_INSERT@8-_QT_INSERT@8
	mov byte ptr [ebp-4], 0
	call _mcount
.Lt_010A:
.Lt_012E:
	mov eax, dword ptr [ebp+12]
	lea ebx, [eax]
	push ebx
	mov ebx, dword ptr [ebp+8]
	lea eax, [ebx+12]
	push eax
	call _RECT_CONTAINS@8
	movzx ebx, al
	test ebx, ebx
	je .Lt_010D
.Lt_010E:
.stabn 68,0,28,.Lt_012E-_QT_INSERT@8
.Lt_012F:
	mov ebx, dword ptr [ebp+8]
	mov eax, dword ptr [ebp+8]
	mov ecx, dword ptr [eax+4]
	cmp dword ptr [ebx+28], ecx
	jge .Lt_0110
.Lt_0111:
.stabn 68,0,29,.Lt_012F-_QT_INSERT@8
.Lt_0130:
	mov ecx, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp+8]
	mov eax, dword ptr [ebx+28]
	imul eax, 12
	mov ebx, dword ptr [ecx+32]
	add ebx, eax
	mov eax, dword ptr [ebp+12]
	mov ecx, dword ptr [eax]
	mov dword ptr [ebx], ecx
	mov ecx, dword ptr [eax+4]
	mov dword ptr [ebx+4], ecx
	mov ecx, dword ptr [eax+8]
	mov dword ptr [ebx+8], ecx
.stabn 68,0,30,.Lt_0130-_QT_INSERT@8
.Lt_0131:
	mov eax, dword ptr [ebp+8]
	inc dword ptr [eax+28]
.stabn 68,0,31,.Lt_0131-_QT_INSERT@8
.Lt_0132:
	mov byte ptr [ebp-4], 1
	jmp .Lt_010B
.stabn 68,0,32,.Lt_0132-_QT_INSERT@8
.Lt_0133:
.Lt_0112:
	jmp .Lt_010F
.Lt_0110:
.Lt_0113:
.stabn 68,0,33,.Lt_0133-_QT_INSERT@8
.Lt_0134:
	mov eax, dword ptr [ebp+8]
	cmp dword ptr [eax+20], 1
	jle .Lt_0115
.Lt_0116:
.stabn 68,0,34,.Lt_0134-_QT_INSERT@8
.Lt_0135:
	mov eax, dword ptr [ebp+8]
	cmp dword ptr [eax+36], 0
	jne .Lt_0118
.Lt_0119:
	push dword ptr [ebp+8]
	call _QT_SUBDIVIDE@4
.Lt_0118:
.Lt_011A:
.stabn 68,0,35,.Lt_0135-_QT_INSERT@8
.Lt_0136:
	push dword ptr [ebp+12]
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+40]
	call _QT_INSERT@8
	movzx ebx, al
	test ebx, ebx
	je .Lt_011C
.Lt_011D:
	mov byte ptr [ebp-4], 1
	jmp .Lt_010B
.Lt_011C:
.Lt_011E:
.stabn 68,0,36,.Lt_0136-_QT_INSERT@8
.Lt_0137:
	push dword ptr [ebp+12]
	mov ebx, dword ptr [ebp+8]
	push dword ptr [ebx+44]
	call _QT_INSERT@8
	movzx ebx, al
	test ebx, ebx
	je .Lt_0120
.Lt_0121:
	mov byte ptr [ebp-4], 1
	jmp .Lt_010B
.Lt_0120:
.Lt_0122:
.stabn 68,0,37,.Lt_0137-_QT_INSERT@8
.Lt_0138:
	push dword ptr [ebp+12]
	mov ebx, dword ptr [ebp+8]
	push dword ptr [ebx+48]
	call _QT_INSERT@8
	movzx ebx, al
	test ebx, ebx
	je .Lt_0124
.Lt_0125:
	mov byte ptr [ebp-4], 1
	jmp .Lt_010B
.Lt_0124:
.Lt_0126:
.stabn 68,0,38,.Lt_0138-_QT_INSERT@8
.Lt_0139:
	push dword ptr [ebp+12]
	mov ebx, dword ptr [ebp+8]
	push dword ptr [ebx+52]
	call _QT_INSERT@8
	movzx ebx, al
	test ebx, ebx
	je .Lt_0128
.Lt_0129:
	mov byte ptr [ebp-4], 1
	jmp .Lt_010B
.Lt_0128:
.Lt_012A:
.stabn 68,0,39,.Lt_0139-_QT_INSERT@8
.Lt_013A:
.Lt_012B:
.Lt_0115:
.Lt_0114:
.Lt_012C:
.Lt_010F:
.Lt_012D:
.Lt_010D:
.Lt_010C:
	mov byte ptr [ebp-4], 0
.stabn 68,0,43,.Lt_013A-_QT_INSERT@8
.Lt_013B:
.Lt_010B:
	mov al, byte ptr [ebp-4]
	pop ebx
	mov esp, ebp
	pop ebp
	ret 8
	.stabn 68,0,44,.Lt_010B-_QT_INSERT@8
	.stabn 192,0,0,.Lt_010A-_QT_INSERT@8
	.stabn 192,0,0,.Lt_010E-_QT_INSERT@8
	.stabn 192,0,0,.Lt_0111-_QT_INSERT@8
	.stabn 224,0,0,.Lt_0112-_QT_INSERT@8
	.stabn 192,0,0,.Lt_0113-_QT_INSERT@8
	.stabn 192,0,0,.Lt_0116-_QT_INSERT@8
	.stabn 192,0,0,.Lt_0119-_QT_INSERT@8
	.stabn 224,0,0,.Lt_011A-_QT_INSERT@8
	.stabn 192,0,0,.Lt_011D-_QT_INSERT@8
	.stabn 224,0,0,.Lt_011E-_QT_INSERT@8
	.stabn 192,0,0,.Lt_0121-_QT_INSERT@8
	.stabn 224,0,0,.Lt_0122-_QT_INSERT@8
	.stabn 192,0,0,.Lt_0125-_QT_INSERT@8
	.stabn 224,0,0,.Lt_0126-_QT_INSERT@8
	.stabn 192,0,0,.Lt_0129-_QT_INSERT@8
	.stabn 224,0,0,.Lt_012A-_QT_INSERT@8
	.stabn 224,0,0,.Lt_012B-_QT_INSERT@8
	.stabn 224,0,0,.Lt_012C-_QT_INSERT@8
	.stabn 224,0,0,.Lt_012D-_QT_INSERT@8
	.stabn 224,0,0,.Lt_010B-_QT_INSERT@8
.Lt_013C:
	.stabs "",36,0,0,.Lt_013C-_QT_INSERT@8
	.stabs "QT_SEARCHAREA:F1",36,0,46,_QT_SEARCHAREA@12
	.stabs "QT:p58=*48",160,0,0,8
	.stabs "QTRESULT:Tt60=s12CAPACITY:1,0,32;COUNT:1,32,32;N:61=*62=*45,64,32;;",128,0,0,0
	.stabs "RESULT:p59=*60",160,0,0,12
	.stabs "AREA:v18",160,0,0,16
.balign 16

.globl _QT_SEARCHAREA@12
_QT_SEARCHAREA@12:
	push ebp
	mov ebp, esp
	sub esp, 16
	push ebx
	push esi
	.stabn 68,0,46,_QT_SEARCHAREA@12-_QT_SEARCHAREA@12
	mov dword ptr [ebp-4], 0
	call _mcount
.Lt_013D:
.Lt_015F:
	mov dword ptr [ebp-8], 0
.stabn 68,0,47,.Lt_015F-_QT_SEARCHAREA@12
.Lt_0160:
	mov eax, dword ptr [ebp+8]
	lea ebx, [eax+12]
	push ebx
	push dword ptr [ebp+16]
	call _RECT_INTERSECTS@8
	movzx ebx, al
	test ebx, ebx
	je .Lt_0140
.Lt_0141:
.stabn 68,0,49,.Lt_0160-_QT_SEARCHAREA@12
.Lt_0161:
	cmp dword ptr [ebp+12], 0
	jne .Lt_0143
.Lt_0144:
	mov dword ptr [ebp-4], 0
	jmp .Lt_013E
.Lt_0143:
.Lt_0145:
.stabn 68,0,50,.Lt_0161-_QT_SEARCHAREA@12
.Lt_0162:
	mov ebx, dword ptr [ebp+12]
	cmp dword ptr [ebx+8], 0
	jne .Lt_0147
.Lt_0148:
.stabn 68,0,53,.Lt_0162-_QT_SEARCHAREA@12
.Lt_0163:
	push 4096
	call _malloc
	add esp, 4
	mov dword ptr [ebp-12], eax
	push edi
	mov edi, dword ptr [ebp-12]
	xor eax, eax
	mov ecx, 1024
	rep stosd
	pop edi
	mov eax, dword ptr [ebp+12]
	mov ebx, dword ptr [ebp-12]
	mov dword ptr [eax+8], ebx
.stabn 68,0,55,.Lt_0163-_QT_SEARCHAREA@12
.Lt_0164:
	mov ebx, dword ptr [ebp+12]
	mov dword ptr [ebx], 1024
.stabn 68,0,56,.Lt_0164-_QT_SEARCHAREA@12
.Lt_0165:
	mov ebx, dword ptr [ebp+12]
	mov dword ptr [ebx+4], 0
.stabn 68,0,57,.Lt_0165-_QT_SEARCHAREA@12
.Lt_0166:
.Lt_014A:
.Lt_0147:
.Lt_0146:
	mov ebx, dword ptr [ebp+8]
	mov eax, dword ptr [ebx+28]
	mov dword ptr [ebp-8], eax
.stabn 68,0,60,.Lt_0166-_QT_SEARCHAREA@12
.Lt_0167:
	mov eax, dword ptr [ebp+12]
	mov ebx, dword ptr [ebp+8]
	mov ecx, dword ptr [ebx+28]
	add ecx, dword ptr [eax+4]
	mov eax, dword ptr [ebp+12]
	mov ebx, dword ptr [eax]
	cmp ecx, ebx
	jle .Lt_014C
.Lt_014D:
.stabn 68,0,62,.Lt_0167-_QT_SEARCHAREA@12
.Lt_0168:
	mov ebx, dword ptr [ebp+12]
	add dword ptr [ebx], 1024
.stabn 68,0,63,.Lt_0168-_QT_SEARCHAREA@12
.Lt_0169:
	mov ebx, dword ptr [ebp+12]
	mov ecx, dword ptr [ebx]
	shl ecx, 2
	push ecx
	call _malloc
	add esp, 4
	mov dword ptr [ebp-16], eax
	mov eax, dword ptr [ebp+12]
	mov ecx, dword ptr [eax]
	shl ecx, 2
	push ecx
	push edi
	mov edi, dword ptr [ebp-16]
	xor eax, eax
	push ecx
	shr ecx, 2
	rep stosd
	pop ecx
	and ecx, 3
	rep stosb
	pop edi
	pop ecx
	mov ecx, dword ptr [ebp-16]
	mov dword ptr [ebp-12], ecx
.stabn 68,0,64,.Lt_0169-_QT_SEARCHAREA@12
.Lt_016A:
	mov ecx, dword ptr [ebp+12]
	mov eax, dword ptr [ecx+4]
	sal eax, 2
	mov ecx, eax
	push ecx
	mov ecx, dword ptr [ebp+12]
	push dword ptr [ecx+8]
	push dword ptr [ebp-12]
	call _memcpy
	add esp, 12
.stabn 68,0,65,.Lt_016A-_QT_SEARCHAREA@12
.Lt_016B:
	mov ecx, dword ptr [ebp+12]
	cmp dword ptr [ecx+8], 0
	je .Lt_014F
	mov ecx, dword ptr [ebp+12]
	push dword ptr [ecx+8]
	call _free
	add esp, 4
.Lt_014F:
.stabn 68,0,66,.Lt_016B-_QT_SEARCHAREA@12
.Lt_016C:
	mov ecx, dword ptr [ebp+12]
	mov eax, dword ptr [ebp-12]
	mov dword ptr [ecx+8], eax
.stabn 68,0,67,.Lt_016C-_QT_SEARCHAREA@12
.Lt_016D:
.Lt_0150:
.Lt_014C:
.Lt_014B:
.Lt_0151:
	mov dword ptr [ebp-12], 0
	mov eax, dword ptr [ebp+8]
	mov ecx, dword ptr [eax+28]
	dec ecx
	mov dword ptr [ebp-16], ecx
	jmp .Lt_0153
.Lt_0156:
.Lt_0157:
.stabn 68,0,70,.Lt_016D-_QT_SEARCHAREA@12
.Lt_016E:
	mov ecx, dword ptr [ebp+8]
	mov eax, dword ptr [ebp-12]
	imul eax, 12
	mov ebx, dword ptr [ecx+32]
	add ebx, eax
	lea eax, [ebx]
	push eax
	push dword ptr [ebp+16]
	call _RECT_CONTAINS@8
	movzx ebx, al
	test ebx, ebx
	je .Lt_0159
.Lt_015A:
.stabn 68,0,71,.Lt_016E-_QT_SEARCHAREA@12
.Lt_016F:
	mov ebx, dword ptr [ebp+8]
	mov eax, dword ptr [ebp-12]
	imul eax, 12
	mov ecx, dword ptr [ebx+32]
	add ecx, eax
	mov eax, dword ptr [ebp+12]
	mov ebx, dword ptr [ebp+12]
	mov esi, dword ptr [ebx+4]
	sal esi, 2
	mov ebx, dword ptr [eax+8]
	add ebx, esi
	mov dword ptr [ebx], ecx
.stabn 68,0,72,.Lt_016F-_QT_SEARCHAREA@12
.Lt_0170:
	mov ecx, dword ptr [ebp+12]
	inc dword ptr [ecx+4]
.stabn 68,0,73,.Lt_0170-_QT_SEARCHAREA@12
.Lt_0171:
	inc dword ptr [ebp-8]
.stabn 68,0,74,.Lt_0171-_QT_SEARCHAREA@12
.Lt_0172:
.Lt_015B:
.Lt_0159:
.Lt_0158:
.Lt_015C:
.Lt_0154:
	inc dword ptr [ebp-12]
.Lt_0153:
	mov ecx, dword ptr [ebp-16]
	cmp dword ptr [ebp-12], ecx
	jle .Lt_0156
.Lt_0155:
.Lt_015D:
.stabn 68,0,76,.Lt_0172-_QT_SEARCHAREA@12
.Lt_0173:
.Lt_015E:
.Lt_0140:
.Lt_013F:
	mov ecx, dword ptr [ebp-8]
	mov dword ptr [ebp-4], ecx
.stabn 68,0,84,.Lt_0173-_QT_SEARCHAREA@12
.Lt_0174:
.Lt_013E:
	mov eax, dword ptr [ebp-4]
	pop esi
	pop ebx
	mov esp, ebp
	pop ebp
	ret 12
	.stabn 68,0,85,.Lt_013E-_QT_SEARCHAREA@12
	.stabs "FOUND:1",128,0,0,-8
	.stabn 192,0,0,.Lt_013D-_QT_SEARCHAREA@12
	.stabn 192,0,0,.Lt_0141-_QT_SEARCHAREA@12
	.stabn 192,0,0,.Lt_0144-_QT_SEARCHAREA@12
	.stabn 224,0,0,.Lt_0145-_QT_SEARCHAREA@12
	.stabn 192,0,0,.Lt_0148-_QT_SEARCHAREA@12
	.stabn 224,0,0,.Lt_014A-_QT_SEARCHAREA@12
	.stabs "TEMP:63=*64=*45",128,0,0,-12
	.stabn 192,0,0,.Lt_014D-_QT_SEARCHAREA@12
	.stabn 224,0,0,.Lt_0150-_QT_SEARCHAREA@12
	.stabs "I:1",128,0,0,-12
	.stabn 192,0,0,.Lt_0151-_QT_SEARCHAREA@12
	.stabn 192,0,0,.Lt_0157-_QT_SEARCHAREA@12
	.stabn 192,0,0,.Lt_015A-_QT_SEARCHAREA@12
	.stabn 224,0,0,.Lt_015B-_QT_SEARCHAREA@12
	.stabn 224,0,0,.Lt_015C-_QT_SEARCHAREA@12
	.stabn 224,0,0,.Lt_015D-_QT_SEARCHAREA@12
	.stabn 224,0,0,.Lt_015E-_QT_SEARCHAREA@12
	.stabn 224,0,0,.Lt_013E-_QT_SEARCHAREA@12
.Lt_0175:
	.stabs "",36,0,0,.Lt_0175-_QT_SEARCHAREA@12
	.stabs "QT_GETCOUNT:F1",36,0,87,_QT_GETCOUNT@4
	.stabs "QT:p65=*48",160,0,0,8
.balign 16

.globl _QT_GETCOUNT@4
_QT_GETCOUNT@4:
	push ebp
	mov ebp, esp
	sub esp, 8
	push ebx
	.stabn 68,0,87,_QT_GETCOUNT@4-_QT_GETCOUNT@4
	mov dword ptr [ebp-4], 0
	call _mcount
.Lt_0176:
.Lt_017C:
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [eax+28]
	mov dword ptr [ebp-8], ebx
.stabn 68,0,88,.Lt_017C-_QT_GETCOUNT@4
.Lt_017D:
	mov ebx, dword ptr [ebp+8]
	cmp dword ptr [ebx+36], 0
	je .Lt_0179
.Lt_017A:
.stabn 68,0,89,.Lt_017D-_QT_GETCOUNT@4
.Lt_017E:
	mov ebx, dword ptr [ebp+8]
	push dword ptr [ebx+40]
	call _QT_GETCOUNT@4
	add dword ptr [ebp-8], eax
.stabn 68,0,90,.Lt_017E-_QT_GETCOUNT@4
.Lt_017F:
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+44]
	call _QT_GETCOUNT@4
	add dword ptr [ebp-8], eax
.stabn 68,0,91,.Lt_017F-_QT_GETCOUNT@4
.Lt_0180:
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+48]
	call _QT_GETCOUNT@4
	add dword ptr [ebp-8], eax
.stabn 68,0,92,.Lt_0180-_QT_GETCOUNT@4
.Lt_0181:
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+52]
	call _QT_GETCOUNT@4
	add dword ptr [ebp-8], eax
.stabn 68,0,93,.Lt_0181-_QT_GETCOUNT@4
.Lt_0182:
.Lt_017B:
.Lt_0179:
.Lt_0178:
	mov eax, dword ptr [ebp-8]
	mov dword ptr [ebp-4], eax
.stabn 68,0,95,.Lt_0182-_QT_GETCOUNT@4
.Lt_0183:
.Lt_0177:
	mov eax, dword ptr [ebp-4]
	pop ebx
	mov esp, ebp
	pop ebp
	ret 4
	.stabn 68,0,96,.Lt_0177-_QT_GETCOUNT@4
	.stabs "RESULT:1",128,0,0,-8
	.stabn 192,0,0,.Lt_0176-_QT_GETCOUNT@4
	.stabn 192,0,0,.Lt_017A-_QT_GETCOUNT@4
	.stabn 224,0,0,.Lt_017B-_QT_GETCOUNT@4
	.stabn 224,0,0,.Lt_0177-_QT_GETCOUNT@4
.Lt_0184:
	.stabs "",36,0,0,.Lt_0184-_QT_GETCOUNT@4
	.stabs "QT_DELETECHILDREN:F7",36,0,98,_QT_DELETECHILDREN@4
	.stabs "QT:p66=*48",160,0,0,8
.balign 16

.globl _QT_DELETECHILDREN@4
_QT_DELETECHILDREN@4:
	push ebp
	mov ebp, esp
	push ebx
	.stabn 68,0,98,_QT_DELETECHILDREN@4-_QT_DELETECHILDREN@4
.Lt_0185:
	call _mcount
.Lt_0193:
	mov eax, dword ptr [ebp+8]
	cmp dword ptr [eax+36], 0
	je .Lt_0188
.Lt_0189:
.stabn 68,0,99,.Lt_0193-_QT_DELETECHILDREN@4
.Lt_0194:
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+40]
	call _QT_DELETECHILDREN@4
.stabn 68,0,100,.Lt_0194-_QT_DELETECHILDREN@4
.Lt_0195:
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [eax+40]
	cmp dword ptr [ebx+32], 0
	je .Lt_018A
	mov ebx, dword ptr [ebp+8]
	mov eax, dword ptr [ebx+40]
	push dword ptr [eax+32]
	call _free
	add esp, 4
.Lt_018A:
.stabn 68,0,101,.Lt_0195-_QT_DELETECHILDREN@4
.Lt_0196:
	mov eax, dword ptr [ebp+8]
	cmp dword ptr [eax+40], 0
	je .Lt_018B
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+40]
	call _free
	add esp, 4
.Lt_018B:
.stabn 68,0,102,.Lt_0196-_QT_DELETECHILDREN@4
.Lt_0197:
	mov eax, dword ptr [ebp+8]
	mov dword ptr [eax+40], 0
.stabn 68,0,103,.Lt_0197-_QT_DELETECHILDREN@4
.Lt_0198:
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+44]
	call _QT_DELETECHILDREN@4
.stabn 68,0,105,.Lt_0198-_QT_DELETECHILDREN@4
.Lt_0199:
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [eax+44]
	cmp dword ptr [ebx+32], 0
	je .Lt_018C
	mov ebx, dword ptr [ebp+8]
	mov eax, dword ptr [ebx+44]
	push dword ptr [eax+32]
	call _free
	add esp, 4
.Lt_018C:
.stabn 68,0,106,.Lt_0199-_QT_DELETECHILDREN@4
.Lt_019A:
	mov eax, dword ptr [ebp+8]
	cmp dword ptr [eax+44], 0
	je .Lt_018D
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+44]
	call _free
	add esp, 4
.Lt_018D:
.stabn 68,0,107,.Lt_019A-_QT_DELETECHILDREN@4
.Lt_019B:
	mov eax, dword ptr [ebp+8]
	mov dword ptr [eax+44], 0
.stabn 68,0,108,.Lt_019B-_QT_DELETECHILDREN@4
.Lt_019C:
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+48]
	call _QT_DELETECHILDREN@4
.stabn 68,0,110,.Lt_019C-_QT_DELETECHILDREN@4
.Lt_019D:
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [eax+48]
	cmp dword ptr [ebx+32], 0
	je .Lt_018E
	mov ebx, dword ptr [ebp+8]
	mov eax, dword ptr [ebx+48]
	push dword ptr [eax+32]
	call _free
	add esp, 4
.Lt_018E:
.stabn 68,0,111,.Lt_019D-_QT_DELETECHILDREN@4
.Lt_019E:
	mov eax, dword ptr [ebp+8]
	cmp dword ptr [eax+48], 0
	je .Lt_018F
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+48]
	call _free
	add esp, 4
.Lt_018F:
.stabn 68,0,112,.Lt_019E-_QT_DELETECHILDREN@4
.Lt_019F:
	mov eax, dword ptr [ebp+8]
	mov dword ptr [eax+48], 0
.stabn 68,0,113,.Lt_019F-_QT_DELETECHILDREN@4
.Lt_01A0:
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+52]
	call _QT_DELETECHILDREN@4
.stabn 68,0,115,.Lt_01A0-_QT_DELETECHILDREN@4
.Lt_01A1:
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [eax+52]
	cmp dword ptr [ebx+32], 0
	je .Lt_0190
	mov ebx, dword ptr [ebp+8]
	mov eax, dword ptr [ebx+52]
	push dword ptr [eax+32]
	call _free
	add esp, 4
.Lt_0190:
.stabn 68,0,116,.Lt_01A1-_QT_DELETECHILDREN@4
.Lt_01A2:
	mov eax, dword ptr [ebp+8]
	cmp dword ptr [eax+52], 0
	je .Lt_0191
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+52]
	call _free
	add esp, 4
.Lt_0191:
.stabn 68,0,117,.Lt_01A2-_QT_DELETECHILDREN@4
.Lt_01A3:
	mov eax, dword ptr [ebp+8]
	mov dword ptr [eax+52], 0
.stabn 68,0,118,.Lt_01A3-_QT_DELETECHILDREN@4
.Lt_01A4:
.Lt_0192:
.Lt_0188:
.Lt_0187:
	mov eax, dword ptr [ebp+8]
	mov dword ptr [eax+36], 0
.stabn 68,0,120,.Lt_01A4-_QT_DELETECHILDREN@4
.Lt_01A5:
.Lt_0186:
	pop ebx
	mov esp, ebp
	pop ebp
	ret 4
	.stabn 68,0,121,.Lt_0186-_QT_DELETECHILDREN@4
	.stabn 192,0,0,.Lt_0185-_QT_DELETECHILDREN@4
	.stabn 192,0,0,.Lt_0189-_QT_DELETECHILDREN@4
	.stabn 224,0,0,.Lt_0192-_QT_DELETECHILDREN@4
	.stabn 224,0,0,.Lt_0186-_QT_DELETECHILDREN@4
.Lt_01A6:
	.stabs "",36,0,0,.Lt_01A6-_QT_DELETECHILDREN@4
	.stabs "QT_RESET:F7",36,0,123,_QT_RESET@4
	.stabs "QT:p67=*48",160,0,0,8
.balign 16

.globl _QT_RESET@4
_QT_RESET@4:
	push ebp
	mov ebp, esp
	sub esp, 4
	push ebx
	.stabn 68,0,123,_QT_RESET@4-_QT_RESET@4
.Lt_01A7:
	call _mcount
.Lt_01AB:
	push dword ptr [ebp+8]
	call _QT_DELETECHILDREN@4
.stabn 68,0,124,.Lt_01AB-_QT_RESET@4
.Lt_01AC:
	mov eax, dword ptr [ebp+8]
	cmp dword ptr [eax+32], 0
	je .Lt_01A9
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+32]
	call _free
	add esp, 4
.Lt_01A9:
.stabn 68,0,125,.Lt_01AC-_QT_RESET@4
.Lt_01AD:
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [eax+4]
	imul ebx, 12
	push ebx
	call _malloc
	add esp, 4
	mov dword ptr [ebp-4], eax
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [eax+4]
	imul ebx, 12
	push edi
	mov edi, dword ptr [ebp-4]
	mov ecx, ebx
	xor eax, eax
	push ecx
	shr ecx, 2
	rep stosd
	pop ecx
	and ecx, 3
	rep stosb
	pop edi
	mov ebx, dword ptr [ebp+8]
	mov eax, dword ptr [ebp-4]
	mov dword ptr [ebx+32], eax
.stabn 68,0,126,.Lt_01AD-_QT_RESET@4
.Lt_01AE:
	mov eax, dword ptr [ebp+8]
	mov dword ptr [eax+28], 0
.stabn 68,0,127,.Lt_01AE-_QT_RESET@4
.Lt_01AF:
.Lt_01A8:
	pop ebx
	mov esp, ebp
	pop ebp
	ret 4
	.stabn 68,0,128,.Lt_01A8-_QT_RESET@4
	.stabn 192,0,0,.Lt_01A7-_QT_RESET@4
	.stabn 224,0,0,.Lt_01A8-_QT_RESET@4
.Lt_01B0:
	.stabs "",36,0,0,.Lt_01B0-_QT_RESET@4
	.stabs "QT_DELETE:F7",36,0,130,_QT_DELETE@4
	.stabs "QT:p68=*48",160,0,0,8
.balign 16

.globl _QT_DELETE@4
_QT_DELETE@4:
	push ebp
	mov ebp, esp
	.stabn 68,0,130,_QT_DELETE@4-_QT_DELETE@4
.Lt_01B1:
	call _mcount
.Lt_01B4:
	push dword ptr [ebp+8]
	call _QT_DELETECHILDREN@4
.stabn 68,0,131,.Lt_01B4-_QT_DELETE@4
.Lt_01B5:
	mov eax, dword ptr [ebp+8]
	cmp dword ptr [eax+32], 0
	je .Lt_01B3
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+32]
	call _free
	add esp, 4
.Lt_01B3:
.stabn 68,0,132,.Lt_01B5-_QT_DELETE@4
.Lt_01B6:
	mov dword ptr [ebp+8], 0
.stabn 68,0,133,.Lt_01B6-_QT_DELETE@4
.Lt_01B7:
.Lt_01B2:
	mov esp, ebp
	pop ebp
	ret 4
	.stabn 68,0,134,.Lt_01B2-_QT_DELETE@4
	.stabn 192,0,0,.Lt_01B1-_QT_DELETE@4
	.stabn 224,0,0,.Lt_01B2-_QT_DELETE@4
.Lt_01B8:
	.stabs "",36,0,0,.Lt_01B8-_QT_DELETE@4
	.stabs "",162,0,0,0
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\DOT.BAS",130,0,0,0
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\DOT.BAS",132,0,0,.Lt_01BC
.Lt_01BC:
	.stabs "DOT:Tt69=s12POSITION:19,0,64;V:1,64,32;;",128,0,0,0
	.stabs "DOT_CREATE:F69",36,0,4,_DOT_CREATE@8
	.stabs "Lt_01BB:v69",160,0,0,8
	.stabs "P:v19",160,0,0,12
	.stabs "V:p1",160,0,0,16
.balign 16

.globl _DOT_CREATE@8
_DOT_CREATE@8:
	push ebp
	mov ebp, esp
	sub esp, 12
	.stabn 68,0,4,_DOT_CREATE@8-_DOT_CREATE@8
.Lt_01B9:
	call _mcount
.Lt_01BD:
	mov eax, dword ptr [ebp+12]
	mov ecx, dword ptr [eax]
	mov dword ptr [ebp-12], ecx
	mov ecx, dword ptr [eax+4]
	mov dword ptr [ebp-8], ecx
.stabn 68,0,6,.Lt_01BD-_DOT_CREATE@8
.Lt_01BE:
	mov eax, dword ptr [ebp+16]
	mov dword ptr [ebp-4], eax
.stabn 68,0,7,.Lt_01BE-_DOT_CREATE@8
.Lt_01BF:
	mov eax, dword ptr [ebp+8]
	mov ecx, dword ptr [ebp-12]
	mov dword ptr [eax], ecx
	mov ecx, dword ptr [ebp-8]
	mov dword ptr [eax+4], ecx
	mov ecx, dword ptr [ebp-4]
	mov dword ptr [eax+8], ecx
.stabn 68,0,8,.Lt_01BF-_DOT_CREATE@8
.Lt_01C0:
.Lt_01BA:
	mov eax, dword ptr [ebp+8]
	mov esp, ebp
	pop ebp
	ret 12
	.stabn 68,0,9,.Lt_01BA-_DOT_CREATE@8
	.stabs "D:69",128,0,0,-12
	.stabn 192,0,0,.Lt_01B9-_DOT_CREATE@8
	.stabn 224,0,0,.Lt_01BA-_DOT_CREATE@8
.Lt_01C1:
	.stabs "",36,0,0,.Lt_01C1-_DOT_CREATE@8
	.stabs "__Z8TOSTRINGP3DOT@4:F13",36,0,11,__Z8TOSTRINGP3DOT@4
	.stabs "D:p70=*69",160,0,0,8
.balign 16

.globl __Z8TOSTRINGP3DOT@4
__Z8TOSTRINGP3DOT@4:
	push ebp
	mov ebp, esp
	sub esp, 28
	push ebx
	.stabn 68,0,11,__Z8TOSTRINGP3DOT@4-__Z8TOSTRINGP3DOT@4
	mov dword ptr [ebp-12], 0
	mov dword ptr [ebp-8], 0
	mov dword ptr [ebp-4], 0
	call _mcount
.Lt_01C2:
.Lt_01C6:
	mov dword ptr [ebp-16], 0
.stabn 68,0,12,.Lt_01C6-__Z8TOSTRINGP3DOT@4
.Lt_01C7:
	mov eax, dword ptr [ebp+8]
	push dword ptr [eax+8]
	mov dword ptr [ebp-28], 0
	mov dword ptr [ebp-24], 0
	mov dword ptr [ebp-20], 0
	push 0
	push -1
	mov eax, dword ptr [ebp+8]
	lea ebx, [eax]
	push ebx
	call __Z8TOSTRINGP3PNT@4
	push eax
	push -1
	lea eax, [ebp-28]
	push eax
	call _fb_StrAssign@20
	push dword ptr [ebp-28]
	push offset _Lt_01C4
	push dword ptr [ebp-16]
	call _sprintf
	add esp, 16
	lea eax, [ebp-28]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,13,.Lt_01C7-__Z8TOSTRINGP3DOT@4
.Lt_01C8:
	push 0
	push 0
	push dword ptr [ebp-16]
	push -1
	lea eax, [ebp-12]
	push eax
	call _fb_StrInit@20
.stabn 68,0,14,.Lt_01C8-__Z8TOSTRINGP3DOT@4
.Lt_01C9:
.Lt_01C3:
	lea eax, [ebp-12]
	push eax
	call _fb_StrAllocTempResult@4
	pop ebx
	mov esp, ebp
	pop ebp
	ret 4
	.stabn 68,0,15,.Lt_01C3-__Z8TOSTRINGP3DOT@4
	.stabs "RESULT:71=*4",128,0,0,-16
	.stabn 192,0,0,.Lt_01C2-__Z8TOSTRINGP3DOT@4
	.stabn 224,0,0,.Lt_01C3-__Z8TOSTRINGP3DOT@4
.Lt_01CA:
	.stabs "",36,0,0,.Lt_01CA-__Z8TOSTRINGP3DOT@4
	.stabs "",162,0,0,0
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\RENDER.BAS",130,0,0,0
	.stabs "D:\\GITHUB\\DOTS\\ARCHIVE\\DOTS\\RENDER.BAS",132,0,0,.Lt_01CF
.Lt_01CF:
	.stabs "PNT_RENDER:F7",36,0,14,_PNT_RENDER@12
	.stabs "P:p72=*19",160,0,0,8
	.stabs "R:p1",160,0,0,12
	.stabs "C:p8",160,0,0,16
.balign 16

.globl _PNT_RENDER@12
_PNT_RENDER@12:
	push ebp
	mov ebp, esp
	.stabn 68,0,14,_PNT_RENDER@12-_PNT_RENDER@12
.Lt_01CB:
	call _mcount
.Lt_01D0:
	push 4
	push 0
	push dword ptr [_Lt_01CD]
	push dword ptr [_Lt_01CE]
	push dword ptr [_Lt_01CE]
	push dword ptr [ebp+16]
	fild dword ptr [ebp+12]
	sub esp,4
	fstp dword ptr [esp]
	mov eax, dword ptr [ebp+8]
	fild dword ptr [eax+4]
	sub esp,4
	fstp dword ptr [esp]
	mov eax, dword ptr [ebp+8]
	fild dword ptr [eax]
	sub esp,4
	fstp dword ptr [esp]
	push 0
	call _fb_GfxEllipse@40
.stabn 68,0,15,.Lt_01D0-_PNT_RENDER@12
.Lt_01D1:
.Lt_01CC:
	mov esp, ebp
	pop ebp
	ret 12
	.stabn 68,0,16,.Lt_01CC-_PNT_RENDER@12
	.stabn 192,0,0,.Lt_01CB-_PNT_RENDER@12
	.stabn 224,0,0,.Lt_01CC-_PNT_RENDER@12
.Lt_01D2:
	.stabs "",36,0,0,.Lt_01D2-_PNT_RENDER@12
	.stabs "RENDERDOTS:F7",36,0,18,_RENDERDOTS@12
	.stabs "D:p73=*69",160,0,0,8
	.stabs "COUNT:p1",160,0,0,12
	.stabs "DOTCLR:p8",160,0,0,16
.balign 16

.globl _RENDERDOTS@12
_RENDERDOTS@12:
	push ebp
	mov ebp, esp
	sub esp, 8
	push ebx
	.stabn 68,0,18,_RENDERDOTS@12-_RENDERDOTS@12
.Lt_01D3:
	call _mcount
.Lt_01DE:
.Lt_01D5:
	mov dword ptr [ebp-4], 0
	mov eax, dword ptr [ebp+12]
	dec eax
	mov dword ptr [ebp-8], eax
	jmp .Lt_01D7
.Lt_01DA:
.Lt_01DB:
.stabn 68,0,19,.Lt_01DE-_RENDERDOTS@12
.Lt_01DF:
	push dword ptr [ebp+16]
	push 2
	mov eax, dword ptr [ebp-4]
	imul eax, 12
	mov ebx, dword ptr [ebp+8]
	add ebx, eax
	lea eax, [ebx]
	push eax
	call _PNT_RENDER@12
.stabn 68,0,20,.Lt_01DF-_RENDERDOTS@12
.Lt_01E0:
.Lt_01DC:
.Lt_01D8:
	inc dword ptr [ebp-4]
.Lt_01D7:
	mov eax, dword ptr [ebp-8]
	cmp dword ptr [ebp-4], eax
	jle .Lt_01DA
.Lt_01D9:
.Lt_01DD:
.stabn 68,0,21,.Lt_01E0-_RENDERDOTS@12
.Lt_01E1:
.Lt_01D4:
	pop ebx
	mov esp, ebp
	pop ebp
	ret 12
	.stabn 68,0,22,.Lt_01D4-_RENDERDOTS@12
	.stabn 192,0,0,.Lt_01D3-_RENDERDOTS@12
	.stabs "I:1",128,0,0,-4
	.stabn 192,0,0,.Lt_01D5-_RENDERDOTS@12
	.stabn 192,0,0,.Lt_01DB-_RENDERDOTS@12
	.stabn 224,0,0,.Lt_01DC-_RENDERDOTS@12
	.stabn 224,0,0,.Lt_01DD-_RENDERDOTS@12
	.stabn 224,0,0,.Lt_01D4-_RENDERDOTS@12
.Lt_01E2:
	.stabs "",36,0,0,.Lt_01E2-_RENDERDOTS@12
	.stabs "RECT_RENDER:F7",36,0,24,_RECT_RENDER@8
	.stabs "R:p74=*18",160,0,0,8
	.stabs "C:p8",160,0,0,12
.balign 16

.globl _RECT_RENDER@8
_RECT_RENDER@8:
	push ebp
	mov ebp, esp
	.stabn 68,0,24,_RECT_RENDER@8-_RECT_RENDER@8
.Lt_01E3:
	call _mcount
.Lt_01E5:
	push 1
	push 65535
	push 1
	push dword ptr [ebp+12]
	mov eax, dword ptr [ebp+8]
	fild dword ptr [eax+12]
	sub esp,4
	fstp dword ptr [esp]
	mov eax, dword ptr [ebp+8]
	fild dword ptr [eax+8]
	sub esp,4
	fstp dword ptr [esp]
	mov eax, dword ptr [ebp+8]
	fild dword ptr [eax+4]
	sub esp,4
	fstp dword ptr [esp]
	mov eax, dword ptr [ebp+8]
	fild dword ptr [eax]
	sub esp,4
	fstp dword ptr [esp]
	push 0
	call _fb_GfxLine@36
.stabn 68,0,27,.Lt_01E5-_RECT_RENDER@8
.Lt_01E6:
.Lt_01E4:
	mov esp, ebp
	pop ebp
	ret 8
	.stabn 68,0,28,.Lt_01E4-_RECT_RENDER@8
	.stabn 192,0,0,.Lt_01E3-_RECT_RENDER@8
	.stabn 224,0,0,.Lt_01E4-_RECT_RENDER@8
.Lt_01E7:
	.stabs "",36,0,0,.Lt_01E7-_RECT_RENDER@8
	.stabs "QT_RENDER:F7",36,0,30,_QT_RENDER@16
	.stabs "QT:p75=*48",160,0,0,8
	.stabs "DOTCLR:p8",160,0,0,12
	.stabs "RENDERDOT:p3",160,0,0,16
	.stabs "RENDERQT:p3",160,0,0,20
.balign 16

.globl _QT_RENDER@16
_QT_RENDER@16:
	push ebp
	mov ebp, esp
	sub esp, 12
	push ebx
	.stabn 68,0,30,_QT_RENDER@16-_QT_RENDER@16
.Lt_01E8:
	call _mcount
.Lt_0206:
	movzx eax, byte ptr [ebp+16]
	test eax, eax
	je .Lt_01EA
	movzx eax, byte ptr [ebp+20]
	test eax, eax
	setne al
	shr eax, 1
	sbb eax, eax
	mov dword ptr [ebp-4], eax
	jmp .Lt_0205
.Lt_01EA:
	mov dword ptr [ebp-4], 0
.Lt_0205:
	cmp dword ptr [ebp-4], 0
	je .Lt_01ED
.Lt_01EE:
.stabn 68,0,31,.Lt_0206-_QT_RENDER@16
.Lt_0208:
	movzx eax, byte ptr [ebp+20]
	test eax, eax
	je .Lt_01F0
.Lt_01F1:
	push 4294967295
	mov eax, dword ptr [ebp+8]
	lea ebx, [eax+12]
	push ebx
	call _RECT_RENDER@8
.Lt_01F0:
.Lt_01F2:
.stabn 68,0,32,.Lt_0208-_QT_RENDER@16
.Lt_0209:
	mov ebx, dword ptr [ebp+8]
	cmp dword ptr [ebx+36], 0
	je .Lt_01F4
.Lt_01F5:
.stabn 68,0,33,.Lt_0209-_QT_RENDER@16
.Lt_020A:
	movzx eax, byte ptr [ebp+20]
	push eax
	movzx eax, byte ptr [ebp+16]
	push eax
	push dword ptr [ebp+12]
	mov ebx, dword ptr [ebp+8]
	push dword ptr [ebx+40]
	call _QT_RENDER@16
.stabn 68,0,34,.Lt_020A-_QT_RENDER@16
.Lt_020B:
	movzx eax, byte ptr [ebp+20]
	push eax
	movzx eax, byte ptr [ebp+16]
	push eax
	push dword ptr [ebp+12]
	mov ebx, dword ptr [ebp+8]
	push dword ptr [ebx+44]
	call _QT_RENDER@16
.stabn 68,0,35,.Lt_020B-_QT_RENDER@16
.Lt_020C:
	movzx eax, byte ptr [ebp+20]
	push eax
	movzx eax, byte ptr [ebp+16]
	push eax
	push dword ptr [ebp+12]
	mov ebx, dword ptr [ebp+8]
	push dword ptr [ebx+48]
	call _QT_RENDER@16
.stabn 68,0,36,.Lt_020C-_QT_RENDER@16
.Lt_020D:
	movzx eax, byte ptr [ebp+20]
	push eax
	movzx eax, byte ptr [ebp+16]
	push eax
	push dword ptr [ebp+12]
	mov ebx, dword ptr [ebp+8]
	push dword ptr [ebx+52]
	call _QT_RENDER@16
.stabn 68,0,37,.Lt_020D-_QT_RENDER@16
.Lt_020E:
.Lt_01F6:
.Lt_01F4:
.Lt_01F3:
	movzx ebx, byte ptr [ebp+16]
	test ebx, ebx
	je .Lt_01F8
.Lt_01F9:
.stabn 68,0,40,.Lt_020E-_QT_RENDER@16
.Lt_020F:
.Lt_01FA:
	mov dword ptr [ebp-8], 0
	mov ebx, dword ptr [ebp+8]
	mov eax, dword ptr [ebx+28]
	dec eax
	mov dword ptr [ebp-12], eax
	jmp .Lt_01FC
.Lt_01FF:
.Lt_0200:
.stabn 68,0,41,.Lt_020F-_QT_RENDER@16
.Lt_0210:
	push dword ptr [ebp+12]
	push 2
	mov eax, dword ptr [ebp+8]
	mov ebx, dword ptr [ebp-8]
	imul ebx, 12
	mov ecx, dword ptr [eax+32]
	add ecx, ebx
	lea ebx, [ecx]
	push ebx
	call _PNT_RENDER@12
.stabn 68,0,42,.Lt_0210-_QT_RENDER@16
.Lt_0211:
.Lt_0201:
.Lt_01FD:
	inc dword ptr [ebp-8]
.Lt_01FC:
	mov ebx, dword ptr [ebp-12]
	cmp dword ptr [ebp-8], ebx
	jle .Lt_01FF
.Lt_01FE:
.Lt_0202:
.stabn 68,0,43,.Lt_0211-_QT_RENDER@16
.Lt_0212:
.Lt_0203:
.Lt_01F8:
.Lt_01F7:
.Lt_0204:
.Lt_01ED:
.Lt_01EC:
.Lt_01E9:
	pop ebx
	mov esp, ebp
	pop ebp
	ret 16
	.stabn 68,0,46,.Lt_01E9-_QT_RENDER@16
	.stabn 192,0,0,.Lt_01E8-_QT_RENDER@16
	.stabn 192,0,0,.Lt_01EE-_QT_RENDER@16
	.stabn 192,0,0,.Lt_01F1-_QT_RENDER@16
	.stabn 224,0,0,.Lt_01F2-_QT_RENDER@16
	.stabn 192,0,0,.Lt_01F5-_QT_RENDER@16
	.stabn 224,0,0,.Lt_01F6-_QT_RENDER@16
	.stabn 192,0,0,.Lt_01F9-_QT_RENDER@16
	.stabs "I:1",128,0,0,-8
	.stabn 192,0,0,.Lt_01FA-_QT_RENDER@16
	.stabn 192,0,0,.Lt_0200-_QT_RENDER@16
	.stabn 224,0,0,.Lt_0201-_QT_RENDER@16
	.stabn 224,0,0,.Lt_0202-_QT_RENDER@16
	.stabn 224,0,0,.Lt_0203-_QT_RENDER@16
	.stabn 224,0,0,.Lt_0204-_QT_RENDER@16
	.stabn 224,0,0,.Lt_01E9-_QT_RENDER@16
.Lt_0213:
	.stabs "",36,0,0,.Lt_0213-_QT_RENDER@16
	.stabs "FORM_QTDEBUG:F7",36,0,48,_FORM_QTDEBUG@8
	.stabs "F:p76=*17",160,0,0,8
	.stabs "QT:p77=*48",160,0,0,12
.balign 16

.globl _FORM_QTDEBUG@8
_FORM_QTDEBUG@8:
	push ebp
	mov ebp, esp
	sub esp, 216
	push ebx
	.stabn 68,0,48,_FORM_QTDEBUG@8-_FORM_QTDEBUG@8
.Lt_0214:
	call _mcount
.Lt_0231:
	push dword ptr [ebp+8]
	call _FORM_RENDER@4
.stabn 68,0,49,.Lt_0231-_FORM_QTDEBUG@8
.Lt_0232:
	mov dword ptr [ebp-24], 0
	mov dword ptr [ebp-20], 0
	mov dword ptr [ebp-16], 0
	push 0
	push -1
	push -1
	push dword ptr [ebp+12]
	call _QT_GETCOUNT@4
	push eax
	call _fb_IntToStr@4
	push eax
	push 15
	push offset _Lt_0216
	mov dword ptr [ebp-12], 0
	mov dword ptr [ebp-8], 0
	mov dword ptr [ebp-4], 0
	lea eax, [ebp-12]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-24]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-24]
	push eax
	push dword ptr [ebp+8]
	call _FORM_PRINT@8
	lea eax, [ebp-24]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,50,.Lt_0232-_FORM_QTDEBUG@8
.Lt_0233:
	mov dword ptr [ebp-48], 0
	mov dword ptr [ebp-44], 0
	mov dword ptr [ebp-40], 0
	push 0
	push -1
	push -1
	mov eax, dword ptr [ebp+12]
	push dword ptr [eax+28]
	call _fb_IntToStr@4
	push eax
	push 15
	push offset _Lt_0219
	mov dword ptr [ebp-36], 0
	mov dword ptr [ebp-32], 0
	mov dword ptr [ebp-28], 0
	lea eax, [ebp-36]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-48]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-48]
	push eax
	push dword ptr [ebp+8]
	call _FORM_PRINT@8
	lea eax, [ebp-48]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,51,.Lt_0233-_FORM_QTDEBUG@8
.Lt_0234:
	mov dword ptr [ebp-72], 0
	mov dword ptr [ebp-68], 0
	mov dword ptr [ebp-64], 0
	push 0
	push -1
	push -1
	mov eax, dword ptr [ebp+12]
	push dword ptr [eax]
	call _fb_IntToStr@4
	push eax
	push 8
	push offset _Lt_021C
	mov dword ptr [ebp-60], 0
	mov dword ptr [ebp-56], 0
	mov dword ptr [ebp-52], 0
	lea eax, [ebp-60]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-72]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-72]
	push eax
	push dword ptr [ebp+8]
	call _FORM_PRINT@8
	lea eax, [ebp-72]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,52,.Lt_0234-_FORM_QTDEBUG@8
.Lt_0235:
	mov dword ptr [ebp-96], 0
	mov dword ptr [ebp-92], 0
	mov dword ptr [ebp-88], 0
	push 0
	push -1
	push -1
	mov eax, dword ptr [ebp+12]
	lea ebx, [eax+12]
	push ebx
	call __Z8TOSTRINGP4RECT@4
	push eax
	push 11
	push offset _Lt_021F
	mov dword ptr [ebp-84], 0
	mov dword ptr [ebp-80], 0
	mov dword ptr [ebp-76], 0
	lea eax, [ebp-84]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-96]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-96]
	push eax
	push dword ptr [ebp+8]
	call _FORM_PRINT@8
	lea eax, [ebp-96]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,53,.Lt_0235-_FORM_QTDEBUG@8
.Lt_0236:
	mov dword ptr [ebp-120], 0
	mov dword ptr [ebp-116], 0
	mov dword ptr [ebp-112], 0
	push 0
	push -1
	push -1
	mov eax, dword ptr [ebp+12]
	push dword ptr [eax+8]
	call _fb_UIntToStr@4
	push eax
	push 9
	push offset _Lt_0222
	mov dword ptr [ebp-108], 0
	mov dword ptr [ebp-104], 0
	mov dword ptr [ebp-100], 0
	lea eax, [ebp-108]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-120]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-120]
	push eax
	push dword ptr [ebp+8]
	call _FORM_PRINT@8
	lea eax, [ebp-120]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,54,.Lt_0236-_FORM_QTDEBUG@8
.Lt_0237:
	mov dword ptr [ebp-144], 0
	mov dword ptr [ebp-140], 0
	mov dword ptr [ebp-136], 0
	push 0
	push -1
	push -1
	mov eax, dword ptr [ebp+12]
	push dword ptr [eax+44]
	call _fb_UIntToStr@4
	push eax
	push 5
	push offset _Lt_0225
	mov dword ptr [ebp-132], 0
	mov dword ptr [ebp-128], 0
	mov dword ptr [ebp-124], 0
	lea eax, [ebp-132]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-144]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-144]
	push eax
	push dword ptr [ebp+8]
	call _FORM_PRINT@8
	lea eax, [ebp-144]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,55,.Lt_0237-_FORM_QTDEBUG@8
.Lt_0238:
	mov dword ptr [ebp-168], 0
	mov dword ptr [ebp-164], 0
	mov dword ptr [ebp-160], 0
	push 0
	push -1
	push -1
	mov eax, dword ptr [ebp+12]
	push dword ptr [eax+40]
	call _fb_UIntToStr@4
	push eax
	push 5
	push offset _Lt_0228
	mov dword ptr [ebp-156], 0
	mov dword ptr [ebp-152], 0
	mov dword ptr [ebp-148], 0
	lea eax, [ebp-156]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-168]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-168]
	push eax
	push dword ptr [ebp+8]
	call _FORM_PRINT@8
	lea eax, [ebp-168]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,56,.Lt_0238-_FORM_QTDEBUG@8
.Lt_0239:
	mov dword ptr [ebp-192], 0
	mov dword ptr [ebp-188], 0
	mov dword ptr [ebp-184], 0
	push 0
	push -1
	push -1
	mov eax, dword ptr [ebp+12]
	push dword ptr [eax+52]
	call _fb_UIntToStr@4
	push eax
	push 5
	push offset _Lt_022B
	mov dword ptr [ebp-180], 0
	mov dword ptr [ebp-176], 0
	mov dword ptr [ebp-172], 0
	lea eax, [ebp-180]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-192]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-192]
	push eax
	push dword ptr [ebp+8]
	call _FORM_PRINT@8
	lea eax, [ebp-192]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,57,.Lt_0239-_FORM_QTDEBUG@8
.Lt_023A:
	mov dword ptr [ebp-216], 0
	mov dword ptr [ebp-212], 0
	mov dword ptr [ebp-208], 0
	push 0
	push -1
	push -1
	mov eax, dword ptr [ebp+12]
	push dword ptr [eax+48]
	call _fb_UIntToStr@4
	push eax
	push 5
	push offset _Lt_022E
	mov dword ptr [ebp-204], 0
	mov dword ptr [ebp-200], 0
	mov dword ptr [ebp-196], 0
	lea eax, [ebp-204]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-216]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-216]
	push eax
	push dword ptr [ebp+8]
	call _FORM_PRINT@8
	lea eax, [ebp-216]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,58,.Lt_023A-_FORM_QTDEBUG@8
.Lt_023B:
.Lt_0215:
	pop ebx
	mov esp, ebp
	pop ebp
	ret 8
	.stabn 68,0,59,.Lt_0215-_FORM_QTDEBUG@8
	.stabn 192,0,0,.Lt_0214-_FORM_QTDEBUG@8
	.stabn 224,0,0,.Lt_0215-_FORM_QTDEBUG@8
.Lt_023C:
	.stabs "",36,0,0,.Lt_023C-_FORM_QTDEBUG@8
	.stabs "FORM_MOUSEDEBUG:F7",36,0,61,_FORM_MOUSEDEBUG@8
	.stabs "F:p78=*17",160,0,0,8
	.stabs "MS:p79=*39",160,0,0,12
.balign 16

.globl _FORM_MOUSEDEBUG@8
_FORM_MOUSEDEBUG@8:
	push ebp
	mov ebp, esp
	sub esp, 156
	.stabn 68,0,61,_FORM_MOUSEDEBUG@8-_FORM_MOUSEDEBUG@8
.Lt_023D:
	call _mcount
.Lt_0253:
	push dword ptr [ebp+8]
	call _FORM_RENDER@4
.stabn 68,0,62,.Lt_0253-_FORM_MOUSEDEBUG@8
.Lt_0254:
	mov dword ptr [ebp-24], 0
	mov dword ptr [ebp-20], 0
	mov dword ptr [ebp-16], 0
	push 0
	push -1
	push -1
	mov eax, dword ptr [ebp+12]
	push dword ptr [eax]
	call _fb_IntToStr@4
	push eax
	push 8
	push offset _Lt_023F
	mov dword ptr [ebp-12], 0
	mov dword ptr [ebp-8], 0
	mov dword ptr [ebp-4], 0
	lea eax, [ebp-12]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-24]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-24]
	push eax
	push dword ptr [ebp+8]
	call _FORM_PRINT@8
	lea eax, [ebp-24]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,63,.Lt_0254-_FORM_MOUSEDEBUG@8
.Lt_0255:
	mov dword ptr [ebp-48], 0
	mov dword ptr [ebp-44], 0
	mov dword ptr [ebp-40], 0
	push 0
	push -1
	push -1
	mov eax, dword ptr [ebp+12]
	push dword ptr [eax+20]
	call _fb_IntToStr@4
	push eax
	push 10
	push offset _Lt_0242
	mov dword ptr [ebp-36], 0
	mov dword ptr [ebp-32], 0
	mov dword ptr [ebp-28], 0
	lea eax, [ebp-36]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-48]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-48]
	push eax
	push dword ptr [ebp+8]
	call _FORM_PRINT@8
	lea eax, [ebp-48]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,64,.Lt_0255-_FORM_MOUSEDEBUG@8
.Lt_0256:
	mov dword ptr [ebp-72], 0
	mov dword ptr [ebp-68], 0
	mov dword ptr [ebp-64], 0
	push 0
	push -1
	push -1
	mov eax, dword ptr [ebp+12]
	push dword ptr [eax+24]
	call _fb_IntToStr@4
	push eax
	push 8
	push offset _Lt_0245
	mov dword ptr [ebp-60], 0
	mov dword ptr [ebp-56], 0
	mov dword ptr [ebp-52], 0
	lea eax, [ebp-60]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-72]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-72]
	push eax
	push dword ptr [ebp+8]
	call _FORM_PRINT@8
	lea eax, [ebp-72]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,65,.Lt_0256-_FORM_MOUSEDEBUG@8
.Lt_0257:
	mov dword ptr [ebp-96], 0
	mov dword ptr [ebp-92], 0
	mov dword ptr [ebp-88], 0
	push 0
	push -1
	push -1
	mov eax, dword ptr [ebp+12]
	push dword ptr [eax+32]
	call _fb_IntToStr@4
	push eax
	push 7
	push offset _Lt_0248
	mov dword ptr [ebp-84], 0
	mov dword ptr [ebp-80], 0
	mov dword ptr [ebp-76], 0
	lea eax, [ebp-84]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-96]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-96]
	push eax
	push dword ptr [ebp+8]
	call _FORM_PRINT@8
	lea eax, [ebp-96]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,66,.Lt_0257-_FORM_MOUSEDEBUG@8
.Lt_0258:
	mov dword ptr [ebp-156], 0
	mov dword ptr [ebp-152], 0
	mov dword ptr [ebp-148], 0
	push 0
	push -1
	push 2
	push offset _Lt_024D
	push -1
	push -1
	mov eax, dword ptr [ebp+12]
	push dword ptr [eax+8]
	call _fb_IntToStr@4
	push eax
	push -1
	push 2
	push offset _Lt_024C
	push -1
	push -1
	mov eax, dword ptr [ebp+12]
	push dword ptr [eax+4]
	call _fb_IntToStr@4
	push eax
	push 12
	push offset _Lt_024B
	mov dword ptr [ebp-108], 0
	mov dword ptr [ebp-104], 0
	mov dword ptr [ebp-100], 0
	lea eax, [ebp-108]
	push eax
	call _fb_StrConcat@20
	push eax
	mov dword ptr [ebp-120], 0
	mov dword ptr [ebp-116], 0
	mov dword ptr [ebp-112], 0
	lea eax, [ebp-120]
	push eax
	call _fb_StrConcat@20
	push eax
	mov dword ptr [ebp-132], 0
	mov dword ptr [ebp-128], 0
	mov dword ptr [ebp-124], 0
	lea eax, [ebp-132]
	push eax
	call _fb_StrConcat@20
	push eax
	mov dword ptr [ebp-144], 0
	mov dword ptr [ebp-140], 0
	mov dword ptr [ebp-136], 0
	lea eax, [ebp-144]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-156]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-156]
	push eax
	push dword ptr [ebp+8]
	call _FORM_PRINT@8
	lea eax, [ebp-156]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,67,.Lt_0258-_FORM_MOUSEDEBUG@8
.Lt_0259:
.Lt_023E:
	mov esp, ebp
	pop ebp
	ret 8
	.stabn 68,0,68,.Lt_023E-_FORM_MOUSEDEBUG@8
	.stabn 192,0,0,.Lt_023D-_FORM_MOUSEDEBUG@8
	.stabn 224,0,0,.Lt_023E-_FORM_MOUSEDEBUG@8
.Lt_025A:
	.stabs "",36,0,0,.Lt_025A-_FORM_MOUSEDEBUG@8
	.stabs "",162,0,0,0
	.stabs "dots.bas",132,0,0,.Lt_0282
.Lt_0282:
	.stabs "DISPLAYINSTRUCTIONS:F7",36,0,44,_DISPLAYINSTRUCTIONS@0
.balign 16

.globl _DISPLAYINSTRUCTIONS@0
_DISPLAYINSTRUCTIONS@0:
	push ebp
	mov ebp, esp
	sub esp, 252
	.stabn 68,0,44,_DISPLAYINSTRUCTIONS@0-_DISPLAYINSTRUCTIONS@0
.Lt_025B:
	call _mcount
.Lt_0283:
##    echo("A - Spam single dot in the corner")
	mov dword ptr [ebp-12], 0
	mov dword ptr [ebp-8], 0
	mov dword ptr [ebp-4], 0
	push 0
	push 34
	push offset _Lt_025D
	push -1
	lea eax, [ebp-12]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-12]
	push eax
	call _ECHO@4
	lea eax, [ebp-12]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,45,.Lt_0283-_DISPLAYINSTRUCTIONS@0
.Lt_0284:
##    echo("S - Spam 10 dots in the corner")
	mov dword ptr [ebp-24], 0
	mov dword ptr [ebp-20], 0
	mov dword ptr [ebp-16], 0
	push 0
	push 31
	push offset _Lt_025F
	push -1
	lea eax, [ebp-24]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-24]
	push eax
	call _ECHO@4
	lea eax, [ebp-24]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,46,.Lt_0284-_DISPLAYINSTRUCTIONS@0
.Lt_0285:
##    echo("D - Spam 100 dots in the corner")
	mov dword ptr [ebp-36], 0
	mov dword ptr [ebp-32], 0
	mov dword ptr [ebp-28], 0
	push 0
	push 32
	push offset _Lt_0261
	push -1
	lea eax, [ebp-36]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-36]
	push eax
	call _ECHO@4
	lea eax, [ebp-36]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,47,.Lt_0285-_DISPLAYINSTRUCTIONS@0
.Lt_0286:
##    echo("Q - Spam 1000 dots randomly")
	mov dword ptr [ebp-48], 0
	mov dword ptr [ebp-44], 0
	mov dword ptr [ebp-40], 0
	push 0
	push 28
	push offset _Lt_0263
	push -1
	lea eax, [ebp-48]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-48]
	push eax
	call _ECHO@4
	lea eax, [ebp-48]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,48,.Lt_0286-_DISPLAYINSTRUCTIONS@0
.Lt_0287:
##    echo("W - Spam 10000 Dots randomly")
	mov dword ptr [ebp-60], 0
	mov dword ptr [ebp-56], 0
	mov dword ptr [ebp-52], 0
	push 0
	push 29
	push offset _Lt_0265
	push -1
	lea eax, [ebp-60]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-60]
	push eax
	call _ECHO@4
	lea eax, [ebp-60]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,49,.Lt_0287-_DISPLAYINSTRUCTIONS@0
.Lt_0288:
##    echo("")
	mov dword ptr [ebp-72], 0
	mov dword ptr [ebp-68], 0
	mov dword ptr [ebp-64], 0
	push 0
	push 1
	push offset _Lt_0000
	push -1
	lea eax, [ebp-72]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-72]
	push eax
	call _ECHO@4
	lea eax, [ebp-72]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,50,.Lt_0288-_DISPLAYINSTRUCTIONS@0
.Lt_0289:
##    echo("C - Reset the QuadTree from the root down")
	mov dword ptr [ebp-84], 0
	mov dword ptr [ebp-80], 0
	mov dword ptr [ebp-76], 0
	push 0
	push 42
	push offset _Lt_0268
	push -1
	lea eax, [ebp-84]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-84]
	push eax
	call _ECHO@4
	lea eax, [ebp-84]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,51,.Lt_0289-_DISPLAYINSTRUCTIONS@0
.Lt_028A:
##    echo("")
	mov dword ptr [ebp-96], 0
	mov dword ptr [ebp-92], 0
	mov dword ptr [ebp-88], 0
	push 0
	push 1
	push offset _Lt_0000
	push -1
	lea eax, [ebp-96]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-96]
	push eax
	call _ECHO@4
	lea eax, [ebp-96]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,52,.Lt_028A-_DISPLAYINSTRUCTIONS@0
.Lt_028B:
##    echo("Left click - Spawn dot at cursor")
	mov dword ptr [ebp-108], 0
	mov dword ptr [ebp-104], 0
	mov dword ptr [ebp-100], 0
	push 0
	push 33
	push offset _Lt_026B
	push -1
	lea eax, [ebp-108]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-108]
	push eax
	call _ECHO@4
	lea eax, [ebp-108]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,53,.Lt_028B-_DISPLAYINSTRUCTIONS@0
.Lt_028C:
##    echo("Right click - rapidly spawn dots at cursor")
	mov dword ptr [ebp-120], 0
	mov dword ptr [ebp-116], 0
	mov dword ptr [ebp-112], 0
	push 0
	push 43
	push offset _Lt_026D
	push -1
	lea eax, [ebp-120]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-120]
	push eax
	call _ECHO@4
	lea eax, [ebp-120]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,54,.Lt_028C-_DISPLAYINSTRUCTIONS@0
.Lt_028D:
##    echo("Mouse wheel - zoom in/out")
	mov dword ptr [ebp-132], 0
	mov dword ptr [ebp-128], 0
	mov dword ptr [ebp-124], 0
	push 0
	push 26
	push offset _Lt_026F
	push -1
	lea eax, [ebp-132]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-132]
	push eax
	call _ECHO@4
	lea eax, [ebp-132]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,55,.Lt_028D-_DISPLAYINSTRUCTIONS@0
.Lt_028E:
##    echo("")
	mov dword ptr [ebp-144], 0
	mov dword ptr [ebp-140], 0
	mov dword ptr [ebp-136], 0
	push 0
	push 1
	push offset _Lt_0000
	push -1
	lea eax, [ebp-144]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-144]
	push eax
	call _ECHO@4
	lea eax, [ebp-144]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,56,.Lt_028E-_DISPLAYINSTRUCTIONS@0
.Lt_028F:
##    echo("1 - Select north west quadtree")
	mov dword ptr [ebp-156], 0
	mov dword ptr [ebp-152], 0
	mov dword ptr [ebp-148], 0
	push 0
	push 31
	push offset _Lt_0272
	push -1
	lea eax, [ebp-156]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-156]
	push eax
	call _ECHO@4
	lea eax, [ebp-156]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,57,.Lt_028F-_DISPLAYINSTRUCTIONS@0
.Lt_0290:
##    echo("2 - Select north east quadtree")
	mov dword ptr [ebp-168], 0
	mov dword ptr [ebp-164], 0
	mov dword ptr [ebp-160], 0
	push 0
	push 31
	push offset _Lt_0274
	push -1
	lea eax, [ebp-168]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-168]
	push eax
	call _ECHO@4
	lea eax, [ebp-168]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,58,.Lt_0290-_DISPLAYINSTRUCTIONS@0
.Lt_0291:
##    echo("3 - Select south west quadtree")
	mov dword ptr [ebp-180], 0
	mov dword ptr [ebp-176], 0
	mov dword ptr [ebp-172], 0
	push 0
	push 31
	push offset _Lt_0276
	push -1
	lea eax, [ebp-180]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-180]
	push eax
	call _ECHO@4
	lea eax, [ebp-180]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,59,.Lt_0291-_DISPLAYINSTRUCTIONS@0
.Lt_0292:
##    echo("4 - Select south east quadtree")
	mov dword ptr [ebp-192], 0
	mov dword ptr [ebp-188], 0
	mov dword ptr [ebp-184], 0
	push 0
	push 31
	push offset _Lt_0278
	push -1
	lea eax, [ebp-192]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-192]
	push eax
	call _ECHO@4
	lea eax, [ebp-192]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,60,.Lt_0292-_DISPLAYINSTRUCTIONS@0
.Lt_0293:
##    echo("")
	mov dword ptr [ebp-204], 0
	mov dword ptr [ebp-200], 0
	mov dword ptr [ebp-196], 0
	push 0
	push 1
	push offset _Lt_0000
	push -1
	lea eax, [ebp-204]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-204]
	push eax
	call _ECHO@4
	lea eax, [ebp-204]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,61,.Lt_0293-_DISPLAYINSTRUCTIONS@0
.Lt_0294:
##    echo("Backspace - go up a parent")
	mov dword ptr [ebp-216], 0
	mov dword ptr [ebp-212], 0
	mov dword ptr [ebp-208], 0
	push 0
	push 27
	push offset _Lt_027B
	push -1
	lea eax, [ebp-216]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-216]
	push eax
	call _ECHO@4
	lea eax, [ebp-216]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,62,.Lt_0294-_DISPLAYINSTRUCTIONS@0
.Lt_0295:
##    echo("R - Go to root quadtree")
	mov dword ptr [ebp-228], 0
	mov dword ptr [ebp-224], 0
	mov dword ptr [ebp-220], 0
	push 0
	push 24
	push offset _Lt_027D
	push -1
	lea eax, [ebp-228]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-228]
	push eax
	call _ECHO@4
	lea eax, [ebp-228]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,63,.Lt_0295-_DISPLAYINSTRUCTIONS@0
.Lt_0296:
##    echo("")
	mov dword ptr [ebp-240], 0
	mov dword ptr [ebp-236], 0
	mov dword ptr [ebp-232], 0
	push 0
	push 1
	push offset _Lt_0000
	push -1
	lea eax, [ebp-240]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-240]
	push eax
	call _ECHO@4
	lea eax, [ebp-240]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,64,.Lt_0296-_DISPLAYINSTRUCTIONS@0
.Lt_0297:
##    echo("Escape - Exit application")
	mov dword ptr [ebp-252], 0
	mov dword ptr [ebp-248], 0
	mov dword ptr [ebp-244], 0
	push 0
	push 26
	push offset _Lt_0280
	push -1
	lea eax, [ebp-252]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-252]
	push eax
	call _ECHO@4
	lea eax, [ebp-252]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,65,.Lt_0297-_DISPLAYINSTRUCTIONS@0
.Lt_0298:
.Lt_025C:
	mov esp, ebp
	pop ebp
	ret
	.stabn 68,0,66,.Lt_025C-_DISPLAYINSTRUCTIONS@0
	.stabn 192,0,0,.Lt_025B-_DISPLAYINSTRUCTIONS@0
	.stabn 224,0,0,.Lt_025C-_DISPLAYINSTRUCTIONS@0
.Lt_0299:
	.stabs "",36,0,0,.Lt_0299-_DISPLAYINSTRUCTIONS@0
	.stabs "QT_BUILD:F7",36,0,68,_QT_BUILD@12
	.stabs "QT:p80=*48",160,0,0,8
	.stabs "D:p81=*69",160,0,0,12
	.stabs "SIZE:p1",160,0,0,16
.balign 16

.globl _QT_BUILD@12
_QT_BUILD@12:
	push ebp
	mov ebp, esp
	sub esp, 20
	push ebx
	.stabn 68,0,68,_QT_BUILD@12-_QT_BUILD@12
.Lt_029A:
	call _mcount
.Lt_02AA:
##    if(qt) then qt_reset(qt)
	cmp dword ptr [ebp+8], 0
	je .Lt_029D
.Lt_029E:
	push dword ptr [ebp+8]
	call _QT_RESET@4
.Lt_029D:
.Lt_029F:
.stabn 68,0,69,.Lt_02AA-_QT_BUILD@12
.Lt_02AB:
##    for i as integer = 0 to size-1
.Lt_02A0:
	mov dword ptr [ebp-4], 0
	mov eax, dword ptr [ebp+16]
	dec eax
	mov dword ptr [ebp-8], eax
	jmp .Lt_02A2
.Lt_02A5:
.Lt_02A6:
.stabn 68,0,70,.Lt_02AB-_QT_BUILD@12
.Lt_02AC:
##        qt_insert(qt, qtn_create(d[i].position, 0))
	push 0
	mov eax, dword ptr [ebp-4]
	imul eax, 12
	mov ebx, dword ptr [ebp+12]
	add ebx, eax
	lea eax, [ebx]
	push eax
	mov dword ptr [ebp-20], 0
	mov dword ptr [ebp-16], 0
	mov dword ptr [ebp-12], 0
	lea eax, [ebp-20]
	push eax
	call _QTN_CREATE@8
	push eax
	push dword ptr [ebp+8]
	call _QT_INSERT@8
.stabn 68,0,71,.Lt_02AC-_QT_BUILD@12
.Lt_02AD:
##        'qt_insert(qt, qtn_create(d[i].position, @d[i]))
##    next i
.Lt_02A8:
.Lt_02A3:
	inc dword ptr [ebp-4]
.Lt_02A2:
	mov eax, dword ptr [ebp-8]
	cmp dword ptr [ebp-4], eax
	jle .Lt_02A5
.Lt_02A4:
.Lt_02A9:
.stabn 68,0,73,.Lt_02AD-_QT_BUILD@12
.Lt_02AE:
.Lt_029B:
	pop ebx
	mov esp, ebp
	pop ebp
	ret 12
	.stabn 68,0,74,.Lt_029B-_QT_BUILD@12
	.stabn 192,0,0,.Lt_029A-_QT_BUILD@12
	.stabn 192,0,0,.Lt_029E-_QT_BUILD@12
	.stabn 224,0,0,.Lt_029F-_QT_BUILD@12
	.stabs "I:1",128,0,0,-4
	.stabn 192,0,0,.Lt_02A0-_QT_BUILD@12
	.stabn 192,0,0,.Lt_02A6-_QT_BUILD@12
	.stabn 224,0,0,.Lt_02A8-_QT_BUILD@12
	.stabn 224,0,0,.Lt_02A9-_QT_BUILD@12
	.stabn 224,0,0,.Lt_029B-_QT_BUILD@12
.Lt_02AF:
	.stabs "",36,0,0,.Lt_02AF-_QT_BUILD@12
	.stabs "GENERATEDOTS:F82=*69",36,0,76,_GENERATEDOTS@12
	.stabs "COUNT:p1",160,0,0,8
	.stabs "AREA:v18",160,0,0,12
	.stabs "V:p1",160,0,0,16
.balign 16

.globl _GENERATEDOTS@12
_GENERATEDOTS@12:
	push ebp
	mov ebp, esp
	sub esp, 48
	push ebx
	.stabn 68,0,76,_GENERATEDOTS@12-_GENERATEDOTS@12
	mov dword ptr [ebp-4], 0
	call _mcount
.Lt_02B0:
.Lt_02BF:
##    dim as Dot ptr d = new Dot[count]
	mov eax, dword ptr [ebp+8]
	imul eax, 12
	push eax
	call _malloc
	add esp, 4
	mov dword ptr [ebp-12], eax
	mov eax, dword ptr [ebp+8]
	imul eax, 12
	push eax
	push edi
	mov edi, dword ptr [ebp-12]
	mov ecx, eax
	xor eax, eax
	push ecx
	shr ecx, 2
	rep stosd
	pop ecx
	and ecx, 3
	rep stosb
	pop edi
	pop eax
	mov eax, dword ptr [ebp-12]
	mov dword ptr [ebp-8], eax
.stabn 68,0,77,.Lt_02BF-_GENERATEDOTS@12
.Lt_02C0:
##    for i as integer = 0 to count-1
.Lt_02B3:
	mov dword ptr [ebp-16], 0
	mov eax, dword ptr [ebp+8]
	dec eax
	mov dword ptr [ebp-20], eax
	jmp .Lt_02B5
.Lt_02B8:
.Lt_02B9:
.stabn 68,0,78,.Lt_02C0-_GENERATEDOTS@12
.Lt_02C1:
##        d[i] = dot_create(rect_getRandomPoint(@area),v*rnd())
	mov eax, dword ptr [ebp-16]
	imul eax, 12
	mov ebx, dword ptr [ebp-8]
	add ebx, eax
	fild dword ptr [ebp+16]
	push dword ptr [_Lt_00A6]
	fstp qword ptr [ebp-48]
	call _fb_Rnd@4
	fmul qword ptr [ebp-48]
	sub esp, 4
	fistp dword ptr [esp]
	pop eax
	push eax
	push dword ptr [ebp+12]
	call _RECT_GETRANDOMPOINT@4
	mov dword ptr [ebp-40], eax
	mov dword ptr [ebp-36], edx
	lea eax, [ebp-40]
	push eax
	mov dword ptr [ebp-32], 0
	mov dword ptr [ebp-28], 0
	mov dword ptr [ebp-24], 0
	lea eax, [ebp-32]
	push eax
	call _DOT_CREATE@8
	mov eax, dword ptr [ebp-32]
	mov dword ptr [ebx], eax
	mov eax, dword ptr [ebp-28]
	mov dword ptr [ebx+4], eax
	mov eax, dword ptr [ebp-24]
	mov dword ptr [ebx+8], eax
.stabn 68,0,79,.Lt_02C1-_GENERATEDOTS@12
.Lt_02C2:
##    next i
.Lt_02BC:
.Lt_02B6:
	inc dword ptr [ebp-16]
.Lt_02B5:
	mov ebx, dword ptr [ebp-20]
	cmp dword ptr [ebp-16], ebx
	jle .Lt_02B8
.Lt_02B7:
.Lt_02BD:
.stabn 68,0,80,.Lt_02C2-_GENERATEDOTS@12
.Lt_02C3:
##    return d
	mov ebx, dword ptr [ebp-8]
	mov dword ptr [ebp-4], ebx
.stabn 68,0,81,.Lt_02C3-_GENERATEDOTS@12
.Lt_02C4:
.Lt_02B1:
	mov eax, dword ptr [ebp-4]
	pop ebx
	mov esp, ebp
	pop ebp
	ret 12
	.stabn 68,0,82,.Lt_02B1-_GENERATEDOTS@12
	.stabs "D:83=*69",128,0,0,-8
	.stabn 192,0,0,.Lt_02B0-_GENERATEDOTS@12
	.stabs "I:1",128,0,0,-16
	.stabn 192,0,0,.Lt_02B3-_GENERATEDOTS@12
	.stabn 192,0,0,.Lt_02B9-_GENERATEDOTS@12
	.stabn 224,0,0,.Lt_02BC-_GENERATEDOTS@12
	.stabn 224,0,0,.Lt_02BD-_GENERATEDOTS@12
	.stabn 224,0,0,.Lt_02B1-_GENERATEDOTS@12
.Lt_02C5:
	.stabs "",36,0,0,.Lt_02C5-_GENERATEDOTS@12
	.stabs "SPAMDOTS:F1",36,0,84,_SPAMDOTS@24
	.stabs "QT:p84=*48",160,0,0,8
	.stabs "COUNT:p1",160,0,0,12
	.stabs "X:p1",160,0,0,16
	.stabs "Y:p1",160,0,0,20
	.stabs "W:p1",160,0,0,24
	.stabs "H:p1",160,0,0,28
.balign 16

.globl _SPAMDOTS@24
_SPAMDOTS@24:
	push ebp
	mov ebp, esp
	sub esp, 68
	push ebx
	.stabn 68,0,84,_SPAMDOTS@24-_SPAMDOTS@24
	mov dword ptr [ebp-4], 0
	call _mcount
.Lt_02C6:
.Lt_02DC:
##    dim as integer added
	mov dword ptr [ebp-8], 0
.stabn 68,0,85,.Lt_02DC-_SPAMDOTS@24
.Lt_02DD:
##    for i as integer = 0 to count-1
.Lt_02C8:
	mov dword ptr [ebp-12], 0
	mov eax, dword ptr [ebp+12]
	dec eax
	mov dword ptr [ebp-16], eax
	jmp .Lt_02CA
.Lt_02CD:
.Lt_02CE:
.stabn 68,0,86,.Lt_02DD-_SPAMDOTS@24
.Lt_02DE:
##        added+=qt_insert(qt, qtn_create(pnt_create(iif(w,w*rnd()+x,x),iif(h,h*rnd()+y,y)) [Macro Expansion: type<Pnt>((iif(w,w*rnd()+x,x)),(iif(h,h*rnd()+y,y))) ] ,0))
	cmp dword ptr [ebp+24], 0
	je .Lt_02D1
	fild dword ptr [ebp+24]
	push dword ptr [_Lt_00A6]
	fstp qword ptr [ebp-60]
	call _fb_Rnd@4
	fmul qword ptr [ebp-60]
	fiadd dword ptr [ebp+16]
	fstp qword ptr [ebp-36]
	jmp .Lt_02D8
.Lt_02D1:
	fild dword ptr [ebp+16]
	fstp qword ptr [ebp-36]
.Lt_02D8:
	fld qword ptr [ebp-36]
	fistp dword ptr [ebp-52]
	cmp dword ptr [ebp+28], 0
	je .Lt_02D3
	fild dword ptr [ebp+28]
	push dword ptr [_Lt_00A6]
	fstp qword ptr [ebp-68]
	call _fb_Rnd@4
	fmul qword ptr [ebp-68]
	fiadd dword ptr [ebp+20]
	fstp qword ptr [ebp-44]
	jmp .Lt_02D9
.Lt_02D3:
	fild dword ptr [ebp+20]
	fstp qword ptr [ebp-44]
.Lt_02D9:
	fld qword ptr [ebp-44]
	fistp dword ptr [ebp-48]
	push 0
	lea eax, [ebp-52]
	push eax
	mov dword ptr [ebp-28], 0
	mov dword ptr [ebp-24], 0
	mov dword ptr [ebp-20], 0
	lea eax, [ebp-28]
	push eax
	call _QTN_CREATE@8
	push eax
	push dword ptr [ebp+8]
	call _QT_INSERT@8
	movzx ebx, al
	add dword ptr [ebp-8], ebx
.stabn 68,0,87,.Lt_02DE-_SPAMDOTS@24
.Lt_02DF:
##    next i
.Lt_02D6:
.Lt_02CB:
	inc dword ptr [ebp-12]
.Lt_02CA:
	mov ebx, dword ptr [ebp-16]
	cmp dword ptr [ebp-12], ebx
	jle .Lt_02CD
.Lt_02CC:
.Lt_02D7:
.stabn 68,0,88,.Lt_02DF-_SPAMDOTS@24
.Lt_02E0:
##    return added
	mov ebx, dword ptr [ebp-8]
	mov dword ptr [ebp-4], ebx
.stabn 68,0,89,.Lt_02E0-_SPAMDOTS@24
.Lt_02E1:
.Lt_02C7:
	mov eax, dword ptr [ebp-4]
	pop ebx
	mov esp, ebp
	pop ebp
	ret 24
	.stabn 68,0,90,.Lt_02C7-_SPAMDOTS@24
	.stabs "ADDED:1",128,0,0,-8
	.stabn 192,0,0,.Lt_02C6-_SPAMDOTS@24
	.stabs "I:1",128,0,0,-12
	.stabn 192,0,0,.Lt_02C8-_SPAMDOTS@24
	.stabn 192,0,0,.Lt_02CE-_SPAMDOTS@24
	.stabn 224,0,0,.Lt_02D6-_SPAMDOTS@24
	.stabn 224,0,0,.Lt_02D7-_SPAMDOTS@24
	.stabn 224,0,0,.Lt_02C7-_SPAMDOTS@24
.Lt_02E2:
	.stabs "",36,0,0,.Lt_02E2-_SPAMDOTS@24
	.stabs "MAIN:F1",36,0,92,_MAIN@8
	.stabs "ARGC:p1",160,0,0,8
	.stabs "ARGV:p85=*86=*4",160,0,0,12
.balign 16

.globl _MAIN@8
_MAIN@8:
	push ebp
	mov ebp, esp
	sub esp, 716
	push ebx
	.stabn 68,0,92,_MAIN@8-_MAIN@8
	mov dword ptr [ebp-4], 0
	call _mcount
.Lt_02E3:
.Lt_0368:
##    screenRes(800, 600, 32, 1, 0)
	push 0
	push 0
	push 1
	push 32
	push 600
	push 800
	call _fb_GfxScreenRes@24
	test eax, eax
	je .Lt_02E5
	push 0
	push 0
	push offset _Lt_02E6
	push 93
	call _fb_ErrorThrowAt
	add esp, 16
	jmp eax
.Lt_02E5:
.stabn 68,0,93,.Lt_0368-_MAIN@8
.Lt_0369:
##    dim as any ptr scrnBuff = screenPtr()
	call _fb_GfxScreenPtr@0
	mov dword ptr [ebp-8], eax
.stabn 68,0,94,.Lt_0369-_MAIN@8
.Lt_036A:
##    
##    #IF(_SYS_SOUND_) [Macro Expansion: FALSE ] ) [Macro Expansion: 0 ] )
##    sound_init(0,0)    #ENDIF
##
##    
##    displayInstructions()
	call _DISPLAYINSTRUCTIONS@0
.stabn 68,0,100,.Lt_036A-_MAIN@8
.Lt_036B:
##    
##    dim as QuadTree qt = qt_create(rect_create(0, 0, QT_SIZE, [Macro Expansion: 512 ] , QT_SIZE) [Macro Expansion: 512 ] ), QT_CAP, [Macro Expansion: 8 ] , 0)
	lea eax, [ebp-64]
	push 0
	push 0
	push 8
	push 512
	push 512
	push 0
	push 0
	mov dword ptr [ebp-136], 0
	mov dword ptr [ebp-132], 0
	mov dword ptr [ebp-128], 0
	mov dword ptr [ebp-124], 0
	lea ebx, [ebp-136]
	push ebx
	mov ebx, eax
	call _RECT_CREATE@16
	push eax
	lea eax, [ebp-120]
	push eax
	push edi
	mov edi, eax
	xor eax, eax
	mov ecx, 14
	rep stosd
	pop edi
	pop eax
	lea eax, [ebp-120]
	push eax
	call _QT_CREATE@16
	lea eax, [ebp-120]
	push edi
	push esi
	mov edi, ebx
	mov esi, eax
	mov ecx, 14
	rep movsd
	pop esi
	pop edi
.stabn 68,0,102,.Lt_036B-_MAIN@8
.Lt_036C:
##    dim as QuadTree ptr qt_dbg = @qt
	lea eax, [ebp-64]
	mov dword ptr [ebp-140], eax
.stabn 68,0,103,.Lt_036C-_MAIN@8
.Lt_036D:
##    dim as QTresult searchResults
	mov dword ptr [ebp-152], 0
	mov dword ptr [ebp-148], 0
	mov dword ptr [ebp-144], 0
.stabn 68,0,104,.Lt_036D-_MAIN@8
.Lt_036E:
##    dim as Rect searchArea = rect_create(0,0,50,50)
	push 50
	push 50
	push 0
	push 0
	mov dword ptr [ebp-184], 0
	mov dword ptr [ebp-180], 0
	mov dword ptr [ebp-176], 0
	mov dword ptr [ebp-172], 0
	lea eax, [ebp-184]
	push eax
	call _RECT_CREATE@16
	mov eax, dword ptr [ebp-184]
	mov dword ptr [ebp-168], eax
	mov eax, dword ptr [ebp-180]
	mov dword ptr [ebp-164], eax
	mov eax, dword ptr [ebp-176]
	mov dword ptr [ebp-160], eax
	mov eax, dword ptr [ebp-172]
	mov dword ptr [ebp-156], eax
.stabn 68,0,105,.Lt_036E-_MAIN@8
.Lt_036F:
##    
##    
##    dim as Form fQTDebug = form_create(520, 6, 31, 9, BACKGROUNDCOLOR, [Macro Expansion: color.silver ] , BORDERCOLOR, [Macro Expansion: color.dimGray ] , TEXTCOLOR) [Macro Expansion: color.dimGray ] )
	lea eax, [ebp-220]
	push 4285098345
	push 4285098345
	push 4290822336
	push 9
	push 31
	push 6
	push 520
	lea ebx, [ebp-256]
	push eax
	push edi
	mov edi, ebx
	xor eax, eax
	mov ecx, 9
	rep stosd
	pop edi
	pop eax
	lea ebx, [ebp-256]
	push ebx
	mov ebx, eax
	call _FORM_CREATE@28
	lea eax, [ebp-256]
	push edi
	push esi
	mov edi, ebx
	mov esi, eax
	mov ecx, 9
	rep movsd
	pop esi
	pop edi
.stabn 68,0,108,.Lt_036F-_MAIN@8
.Lt_0370:
##    dim as Form fMouseDebug = form_create(520, 90, 22, 5, BACKGROUNDCOLOR, [Macro Expansion: color.silver ] , BORDERCOLOR, [Macro Expansion: color.dimGray ] , TEXTCOLOR) [Macro Expansion: color.dimGray ] )
	lea eax, [ebp-292]
	push 4285098345
	push 4285098345
	push 4290822336
	push 5
	push 22
	push 90
	push 520
	lea ebx, [ebp-328]
	push eax
	push edi
	mov edi, ebx
	xor eax, eax
	mov ecx, 9
	rep stosd
	pop edi
	pop eax
	lea ebx, [ebp-328]
	push ebx
	mov ebx, eax
	call _FORM_CREATE@28
	lea eax, [ebp-328]
	push edi
	push esi
	mov edi, ebx
	mov esi, eax
	mov ecx, 9
	rep movsd
	pop esi
	pop edi
.stabn 68,0,109,.Lt_0370-_MAIN@8
.Lt_0371:
##    dim as Form fOther = form_create(520, 145, 30, 4, BACKGROUNDCOLOR, [Macro Expansion: color.silver ] , BORDERCOLOR, [Macro Expansion: color.dimGray ] , TEXTCOLOR) [Macro Expansion: color.dimGray ] )
	lea eax, [ebp-364]
	push 4285098345
	push 4285098345
	push 4290822336
	push 4
	push 30
	push 145
	push 520
	lea ebx, [ebp-400]
	push eax
	push edi
	mov edi, ebx
	xor eax, eax
	mov ecx, 9
	rep stosd
	pop edi
	pop eax
	lea ebx, [ebp-400]
	push ebx
	mov ebx, eax
	call _FORM_CREATE@28
	lea eax, [ebp-400]
	push edi
	push esi
	mov edi, ebx
	mov esi, eax
	mov ecx, 9
	rep movsd
	pop esi
	pop edi
.stabn 68,0,110,.Lt_0371-_MAIN@8
.Lt_0372:
##    
##    dim as StopWatch w_loop
	lea eax, [ebp-424]
	push eax
	push edi
	mov edi, eax
	xor eax, eax
	mov ecx, 6
	rep stosd
	pop edi
	pop eax
.stabn 68,0,112,.Lt_0372-_MAIN@8
.Lt_0373:
##    dim as StopWatch w_build
	lea eax, [ebp-448]
	push eax
	push edi
	mov edi, eax
	xor eax, eax
	mov ecx, 6
	rep stosd
	pop edi
	pop eax
.stabn 68,0,113,.Lt_0373-_MAIN@8
.Lt_0374:
##    dim as StopWatch w_search
	lea eax, [ebp-472]
	push eax
	push edi
	mov edi, eax
	xor eax, eax
	mov ecx, 6
	rep stosd
	pop edi
	pop eax
.stabn 68,0,114,.Lt_0374-_MAIN@8
.Lt_0375:
##    dim as StopWatch w_qtRender
	lea eax, [ebp-496]
	push eax
	push edi
	mov edi, eax
	xor eax, eax
	mov ecx, 6
	rep stosd
	pop edi
	pop eax
.stabn 68,0,115,.Lt_0375-_MAIN@8
.Lt_0376:
##    
##    dim as Mouse ms_new, ms
	lea eax, [ebp-532]
	push eax
	push edi
	mov edi, eax
	xor eax, eax
	mov ecx, 9
	rep stosd
	pop edi
	pop eax
	lea eax, [ebp-568]
	push eax
	push edi
	mov edi, eax
	xor eax, eax
	mov ecx, 9
	rep stosd
	pop edi
	pop eax
.stabn 68,0,117,.Lt_0376-_MAIN@8
.Lt_0377:
##    dim as EVENT e
	lea eax, [ebp-588]
	push eax
	push edi
	mov edi, eax
	xor eax, eax
	mov ecx, 5
	rep stosd
	pop edi
	pop eax
.stabn 68,0,118,.Lt_0377-_MAIN@8
.Lt_0378:
##    dim as boolean  [Macro Expansion: UBYTE ]  runApp = true [Macro Expansion: 1 ] 
	mov byte ptr [ebp-592], 1
.stabn 68,0,119,.Lt_0378-_MAIN@8
.Lt_0379:
##    
##    dim as integer maxDots = 25
	mov dword ptr [ebp-596], 25
.stabn 68,0,121,.Lt_0379-_MAIN@8
.Lt_037A:
##    dim as Dot ptr dots = generateDots(maxDots, qt.boundary, 100)
	push 100
	lea eax, [ebp-52]
	push eax
	push dword ptr [ebp-596]
	call _GENERATEDOTS@12
	mov dword ptr [ebp-600], eax
.stabn 68,0,122,.Lt_037A-_MAIN@8
.Lt_037B:
##    
##    'spamDots(@qt, 9, 0, 0, QT_SIZE, QT_SIZE)
##    
##    ' ===== Main loop =====
##    while(runApp)
.Lt_02ED:
	movzx eax, byte ptr [ebp-592]
	test eax, eax
	je .Lt_02EE
.Lt_02EF:
.stabn 68,0,127,.Lt_037B-_MAIN@8
.Lt_037C:
##        sw_start(@w_loop)
	lea eax, [ebp-424]
	push eax
	call _SW_START@4
.stabn 68,0,128,.Lt_037C-_MAIN@8
.Lt_037D:
##        
##        ' ===== Updates =====
##        if(ms_new.state = 0) then
	cmp dword ptr [ebp-532], 0
	jne .Lt_02F1
.Lt_02F2:
.stabn 68,0,131,.Lt_037D-_MAIN@8
.Lt_037E:
##            ms = ms_new
	lea eax, [ebp-568]
	lea ebx, [ebp-532]
	push edi
	push esi
	mov edi, eax
	mov esi, ebx
	mov ecx, 9
	rep movsd
	pop esi
	pop edi
.stabn 68,0,132,.Lt_037E-_MAIN@8
.Lt_037F:
##            'zoom+=ms.dWheel
##        end if
.Lt_02F3:
.Lt_02F1:
.Lt_02F0:
##        mouse_update(@ms_new)
	lea ebx, [ebp-532]
	push ebx
	call _MOUSE_UPDATE@4
.stabn 68,0,135,.Lt_037F-_MAIN@8
.Lt_0380:
##        searchArea.position = pnt_create(ms.x-searchArea.size.x, ms.y-searchArea.size.x) [Macro Expansion: type<Pnt>((ms.x-searchArea.size.x),(ms.y-searchArea.size.x)) ] 
	mov ebx, dword ptr [ebp-564]
	sub ebx, dword ptr [ebp-160]
	mov dword ptr [ebp-168], ebx
	mov ebx, dword ptr [ebp-560]
	sub ebx, dword ptr [ebp-160]
	mov dword ptr [ebp-164], ebx
.stabn 68,0,136,.Lt_0380-_MAIN@8
.Lt_0381:
##        
##        sw_start(@w_build)
	lea ebx, [ebp-448]
	push ebx
	call _SW_START@4
.stabn 68,0,138,.Lt_0381-_MAIN@8
.Lt_0382:
##        qt_build(@qt, dots, maxDots)
	push dword ptr [ebp-596]
	push dword ptr [ebp-600]
	lea ebx, [ebp-64]
	push ebx
	call _QT_BUILD@12
.stabn 68,0,139,.Lt_0382-_MAIN@8
.Lt_0383:
##        sw_stop(@w_build)
	lea ebx, [ebp-448]
	push ebx
	call _SW_STOP@4
.stabn 68,0,140,.Lt_0383-_MAIN@8
.Lt_0384:
##        
##        ' ===== Events ======
##        if(screenEvent(@e)) then
	lea ebx, [ebp-588]
	push ebx
	call _fb_GfxEvent@4
	test eax, eax
	je .Lt_02F6
.Lt_02F7:
.stabn 68,0,143,.Lt_0384-_MAIN@8
.Lt_0385:
##            select case e.type
.Lt_02F8:
	mov eax, dword ptr [ebp-588]
	mov dword ptr [ebp-700], eax
.stabn 68,0,144,.Lt_0385-_MAIN@8
.Lt_0386:
##            ' ===== Key press =====
##            case EVENT_KEY_PRESS
	cmp dword ptr [ebp-700], 1
	jne .Lt_02FB
.Lt_02FC:
.Lt_02FD:
.stabn 68,0,146,.Lt_0386-_MAIN@8
.Lt_0387:
##                ' ===== ESCAPE - close application =====
##                if(e.scancode = SC_ESCAPE) then runApp = false [Macro Expansion: 0 ] 
	cmp dword ptr [ebp-584], 1
	jne .Lt_02FF
.Lt_0300:
	mov byte ptr [ebp-592], 0
.Lt_02FF:
.Lt_0301:
.stabn 68,0,148,.Lt_0387-_MAIN@8
.Lt_0388:
##                
##                ' ===== R =====
##                if(e.scancode = SC_R) then qt_dbg = @qt
	cmp dword ptr [ebp-584], 19
	jne .Lt_0303
.Lt_0304:
	lea eax, [ebp-64]
	mov dword ptr [ebp-140], eax
.Lt_0303:
.Lt_0305:
.stabn 68,0,151,.Lt_0388-_MAIN@8
.Lt_0389:
##                
##                ' ===== 1 - 4 - Step into children =====
##                if(qt_dbg->divided) then
	mov eax, dword ptr [ebp-140]
	cmp dword ptr [eax+36], 0
	je .Lt_0307
.Lt_0308:
.stabn 68,0,154,.Lt_0389-_MAIN@8
.Lt_038A:
##                    if(e.scancode = SC_1) then qt_dbg = qt_dbg->nw
	cmp dword ptr [ebp-584], 2
	jne .Lt_030A
.Lt_030B:
	mov eax, dword ptr [ebp-140]
	mov ebx, dword ptr [eax+40]
	mov dword ptr [ebp-140], ebx
.Lt_030A:
.Lt_030C:
.stabn 68,0,155,.Lt_038A-_MAIN@8
.Lt_038B:
##                    if(e.scancode = SC_2) then qt_dbg = qt_dbg->ne
	cmp dword ptr [ebp-584], 3
	jne .Lt_030E
.Lt_030F:
	mov ebx, dword ptr [ebp-140]
	mov eax, dword ptr [ebx+44]
	mov dword ptr [ebp-140], eax
.Lt_030E:
.Lt_0310:
.stabn 68,0,156,.Lt_038B-_MAIN@8
.Lt_038C:
##                    if(e.scancode = SC_3) then qt_dbg = qt_dbg->sw
	cmp dword ptr [ebp-584], 4
	jne .Lt_0312
.Lt_0313:
	mov eax, dword ptr [ebp-140]
	mov ebx, dword ptr [eax+48]
	mov dword ptr [ebp-140], ebx
.Lt_0312:
.Lt_0314:
.stabn 68,0,157,.Lt_038C-_MAIN@8
.Lt_038D:
##                    if(e.scancode = SC_4) then qt_dbg = qt_dbg->se
	cmp dword ptr [ebp-584], 5
	jne .Lt_0316
.Lt_0317:
	mov ebx, dword ptr [ebp-140]
	mov eax, dword ptr [ebx+52]
	mov dword ptr [ebp-140], eax
.Lt_0316:
.Lt_0318:
.stabn 68,0,158,.Lt_038D-_MAIN@8
.Lt_038E:
##                end if
.Lt_0319:
.Lt_0307:
.Lt_0306:
##                
##                if(e.scancode = SC_BACKSPACE AND qt_dbg->parent <> 0) then qt_dbg = qt_dbg->parent
	mov eax, dword ptr [ebp-584]
	cmp eax, 14
	sete al
	shr eax, 1
	sbb eax, eax
	mov ebx, dword ptr [ebp-140]
	cmp dword ptr [ebx+8], 0
	setne cl
	shr ecx, 1
	sbb ecx, ecx
	and eax, ecx
	je .Lt_031B
.Lt_031C:
	mov ecx, dword ptr [ebp-140]
	mov eax, dword ptr [ecx+8]
	mov dword ptr [ebp-140], eax
.Lt_031B:
.Lt_031D:
.stabn 68,0,161,.Lt_038E-_MAIN@8
.Lt_0391:
##                
##                ' ===== A - Spam dot in corner =====
##                if(e.scancode = SC_A) then spamDots(@qt, 1)
	cmp dword ptr [ebp-584], 30
	jne .Lt_031F
.Lt_0320:
	push 0
	push 0
	push 0
	push 0
	push 1
	lea eax, [ebp-64]
	push eax
	call _SPAMDOTS@24
.Lt_031F:
.Lt_0321:
.stabn 68,0,164,.Lt_0391-_MAIN@8
.Lt_0392:
##                
##                ' ===== S - Spam dots in corner =====
##                if(e.scancode = SC_S) then spamDots(@qt, 10)
	cmp dword ptr [ebp-584], 31
	jne .Lt_0323
.Lt_0324:
	push 0
	push 0
	push 0
	push 0
	push 10
	lea eax, [ebp-64]
	push eax
	call _SPAMDOTS@24
.Lt_0323:
.Lt_0325:
.stabn 68,0,167,.Lt_0392-_MAIN@8
.Lt_0393:
##                
##                ' ===== D - Spam dots in corner =====
##                if(e.scancode = SC_D) then spamDots(@qt, 100)
	cmp dword ptr [ebp-584], 32
	jne .Lt_0327
.Lt_0328:
	push 0
	push 0
	push 0
	push 0
	push 100
	lea eax, [ebp-64]
	push eax
	call _SPAMDOTS@24
.Lt_0327:
.Lt_0329:
.stabn 68,0,170,.Lt_0393-_MAIN@8
.Lt_0394:
##                
##                ' ===== Q - Spam dots randomly=====
##                if(e.scancode = SC_Q) then spamDots(@qt, 1000, 0, 0, QT_SIZE, [Macro Expansion: 512 ] , QT_SIZE) [Macro Expansion: 512 ] )
	cmp dword ptr [ebp-584], 16
	jne .Lt_032B
.Lt_032C:
	push 512
	push 512
	push 0
	push 0
	push 1000
	lea eax, [ebp-64]
	push eax
	call _SPAMDOTS@24
.Lt_032B:
.Lt_032D:
.stabn 68,0,173,.Lt_0394-_MAIN@8
.Lt_0395:
##                
##                ' ===== W - Spam dots randomly=====
##                if(e.scancode = SC_W) then spamDots(@qt, 10000, 0, 0, QT_SIZE, [Macro Expansion: 512 ] , QT_SIZE) [Macro Expansion: 512 ] )
	cmp dword ptr [ebp-584], 17
	jne .Lt_032F
.Lt_0330:
	push 512
	push 512
	push 0
	push 0
	push 10000
	lea eax, [ebp-64]
	push eax
	call _SPAMDOTS@24
.Lt_032F:
.Lt_0331:
.stabn 68,0,176,.Lt_0395-_MAIN@8
.Lt_0396:
##                
##                ' ===== C - Clear =====
##                if(e.scancode = SC_C) then
	cmp dword ptr [ebp-584], 46
	jne .Lt_0333
.Lt_0334:
.stabn 68,0,179,.Lt_0396-_MAIN@8
.Lt_0397:
##                    qt_reset(@qt)
	lea eax, [ebp-64]
	push eax
	call _QT_RESET@4
.stabn 68,0,180,.Lt_0397-_MAIN@8
.Lt_0398:
##                end if
.Lt_0335:
.Lt_0333:
.Lt_0332:
##                
##            ' ===== Mouse =====
##            case EVENT_MOUSE_BUTTON_PRESS
.Lt_0336:
	jmp .Lt_02F9
.Lt_02FB:
	cmp dword ptr [ebp-700], 5
	jne .Lt_0337
.Lt_0338:
.Lt_0339:
.stabn 68,0,184,.Lt_0398-_MAIN@8
.Lt_0399:
##                ' ===== Left button - Add dot where mouse is =====
##                if(e.button = BUTTON_LEFT) then
	cmp dword ptr [ebp-584], 1
	jne .Lt_033B
.Lt_033C:
.stabn 68,0,186,.Lt_0399-_MAIN@8
.Lt_039A:
##                    sw_start(@w_search)
	lea eax, [ebp-472]
	push eax
	call _SW_START@4
.stabn 68,0,187,.Lt_039A-_MAIN@8
.Lt_039B:
##                    qt_searchArea(@qt, @searchResults, rect_create(ms.x-5, ms.y-5, ms.x+5, ms.y+5))
	mov eax, dword ptr [ebp-560]
	add eax, 5
	push eax
	mov eax, dword ptr [ebp-564]
	add eax, 5
	push eax
	mov eax, dword ptr [ebp-560]
	add eax, -5
	push eax
	mov eax, dword ptr [ebp-564]
	add eax, -5
	push eax
	mov dword ptr [ebp-716], 0
	mov dword ptr [ebp-712], 0
	mov dword ptr [ebp-708], 0
	mov dword ptr [ebp-704], 0
	lea eax, [ebp-716]
	push eax
	call _RECT_CREATE@16
	push eax
	lea eax, [ebp-152]
	push eax
	lea eax, [ebp-64]
	push eax
	call _QT_SEARCHAREA@12
.stabn 68,0,188,.Lt_039B-_MAIN@8
.Lt_039C:
##                    sw_stop(@w_search)
	lea eax, [ebp-472]
	push eax
	call _SW_STOP@4
.stabn 68,0,189,.Lt_039C-_MAIN@8
.Lt_039D:
##                end if
.Lt_033E:
.Lt_033B:
.Lt_033A:
##            
##            case EVENT_MOUSE_WHEEL
.Lt_033F:
	jmp .Lt_02F9
.Lt_0337:
	cmp dword ptr [ebp-700], 8
	jne .Lt_0340
.Lt_0341:
.Lt_0342:
.stabn 68,0,192,.Lt_039D-_MAIN@8
.Lt_039E:
##'                zoom += e.z-oldWheel
##'                oldWheel = e.z
##            end select
.Lt_0343:
.Lt_0340:
.Lt_02F9:
.Lt_0344:
##        end if
.Lt_0345:
.Lt_02F6:
.Lt_02F5:
##        
##'        sw_start(@w_search)
##'        qt_searchArea(@qt, @searchResults, searchArea)
##'        sw_stop(@w_search)
##        
##        if(ms.buttons = BUTTON_RIGHT) then
	cmp dword ptr [ebp-548], 2
	jne .Lt_0347
.Lt_0348:
.stabn 68,0,202,.Lt_039E-_MAIN@8
.Lt_039F:
##            dim as Pnt p = type<Pnt>(ms.x, ms.y)
	mov eax, dword ptr [ebp-564]
	mov dword ptr [ebp-704], eax
	mov eax, dword ptr [ebp-560]
	mov dword ptr [ebp-700], eax
.stabn 68,0,203,.Lt_039F-_MAIN@8
.Lt_03A0:
##            sw_start(@w_search)
	lea eax, [ebp-472]
	push eax
	call _SW_START@4
.stabn 68,0,204,.Lt_03A0-_MAIN@8
.Lt_03A1:
##            qt_insert(@qt, qtn_create(p))
	push 0
	lea eax, [ebp-704]
	push eax
	mov dword ptr [ebp-716], 0
	mov dword ptr [ebp-712], 0
	mov dword ptr [ebp-708], 0
	lea eax, [ebp-716]
	push eax
	call _QTN_CREATE@8
	push eax
	lea eax, [ebp-64]
	push eax
	call _QT_INSERT@8
.stabn 68,0,205,.Lt_03A1-_MAIN@8
.Lt_03A2:
##            sw_stop(@w_search)
	lea eax, [ebp-472]
	push eax
	call _SW_STOP@4
.stabn 68,0,206,.Lt_03A2-_MAIN@8
.Lt_03A3:
##        end if
.Lt_034B:
.Lt_0347:
.Lt_0346:
##        
##        ' ===== Rendering =====
##        screenLock()
	call _fb_GfxLock@0
.stabn 68,0,210,.Lt_03A3-_MAIN@8
.Lt_03A4:
##        clearScreen(800, 600, CLEARCOLOR) [Macro Expansion: color.slateGray ] ) [Macro Expansion: line(0,0)-((800),(600)),(color.slateGray),bf ] 
	push 0
	push 65535
	push 2
	push 4285563024
	push dword ptr [_Lt_0364]
	push dword ptr [_Lt_0365]
	push dword ptr [_Lt_01CE]
	push dword ptr [_Lt_01CE]
	push 0
	call _fb_GfxLine@36
.stabn 68,0,211,.Lt_03A4-_MAIN@8
.Lt_03A5:
##        
##        'renderDots(dots, maxDots, DOTCOLOR)
##        
##        sw_start(@w_qtRender)
	lea eax, [ebp-496]
	push eax
	call _SW_START@4
.stabn 68,0,215,.Lt_03A5-_MAIN@8
.Lt_03A6:
##        qt_render(@qt, DOTCOLOR, [Macro Expansion: color.yellow ] , true, [Macro Expansion: 1 ] , true) [Macro Expansion: 1 ] )
	push 1
	push 1
	push 4294967040
	lea eax, [ebp-64]
	push eax
	call _QT_RENDER@16
.stabn 68,0,216,.Lt_03A6-_MAIN@8
.Lt_03A7:
##        sw_stop(@w_qtRender)
	lea eax, [ebp-496]
	push eax
	call _SW_STOP@4
.stabn 68,0,217,.Lt_03A7-_MAIN@8
.Lt_03A8:
##        
##        ' Results
##        draw string(5, 550), str(searchResults.count)
	push 0
	push 0
	push 0
	push 0
	push 0
	push 0
	push dword ptr [ebp-148]
	call _fb_IntToStr@4
	push eax
	push -2147483644
	push dword ptr [_Lt_0366]
	push dword ptr [_Lt_0367]
	push 0
	call _fb_GfxDrawString@44
	test eax, eax
	je .Lt_034C
	push 0
	push 0
	push offset _Lt_02E6
	push 220
	call _fb_ErrorThrowAt
	add esp, 16
	jmp eax
.Lt_034C:
.stabn 68,0,220,.Lt_03A8-_MAIN@8
.Lt_03A9:
##        for i as integer = 0 to searchResults.count-1
.Lt_034D:
	mov dword ptr [ebp-700], 0
	mov eax, dword ptr [ebp-148]
	dec eax
	mov dword ptr [ebp-704], eax
	jmp .Lt_034F
.Lt_0352:
.Lt_0353:
.stabn 68,0,221,.Lt_03A9-_MAIN@8
.Lt_03AA:
##            pnt_render(@cptr(dot ptr, searchResults.n[i]->d)->position)
	push 4294967295
	push 1
	mov eax, dword ptr [ebp-700]
	sal eax, 2
	mov ecx, dword ptr [ebp-144]
	add ecx, eax
	mov eax, dword ptr [ecx]
	mov ecx, dword ptr [eax+8]
	lea eax, [ecx]
	push eax
	call _PNT_RENDER@12
.stabn 68,0,222,.Lt_03AA-_MAIN@8
.Lt_03AB:
##        next i
.Lt_0354:
.Lt_0350:
	inc dword ptr [ebp-700]
.Lt_034F:
	mov eax, dword ptr [ebp-704]
	cmp dword ptr [ebp-700], eax
	jle .Lt_0352
.Lt_0351:
.Lt_0355:
.stabn 68,0,223,.Lt_03AB-_MAIN@8
.Lt_03AC:
##        
##        
##        ' Selected boundary
##        rect_render(@qt_dbg->boundary, rgb(82, 216, 136) [Macro Expansion: ((cuint(82) shl 16) or (cuint(216) shl 8) or cuint(136) or &hFF000000) ] )
	push 4283619464
	mov eax, dword ptr [ebp-140]
	lea ecx, [eax+12]
	push ecx
	call _RECT_RENDER@8
.stabn 68,0,227,.Lt_03AC-_MAIN@8
.Lt_03AD:
##        
##        ' Search area
##        rect_render(@searchArea, rgb(255,0,255) [Macro Expansion: ((cuint(255) shl 16) or (cuint(0) shl 8) or cuint(255) or &hFF000000) ] )
	push 4294902015
	lea ecx, [ebp-168]
	push ecx
	call _RECT_RENDER@8
.stabn 68,0,230,.Lt_03AD-_MAIN@8
.Lt_03AE:
##        
##        
##        ' Render forms
##        form_qtDebug(@fQTdebug, qt_dbg)
	push dword ptr [ebp-140]
	lea ecx, [ebp-220]
	push ecx
	call _FORM_QTDEBUG@8
.stabn 68,0,234,.Lt_03AE-_MAIN@8
.Lt_03AF:
##        form_mouseDebug(@fMouseDebug, @ms)
	lea ecx, [ebp-568]
	push ecx
	lea ecx, [ebp-292]
	push ecx
	call _FORM_MOUSEDEBUG@8
.stabn 68,0,235,.Lt_03AF-_MAIN@8
.Lt_03B0:
##        
##        form_render(@fOther)
	lea ecx, [ebp-364]
	push ecx
	call _FORM_RENDER@4
.stabn 68,0,237,.Lt_03B0-_MAIN@8
.Lt_03B1:
##        form_print(@fOther, "w_loop: " & sw_get(@w_loop))
	mov dword ptr [ebp-624], 0
	mov dword ptr [ebp-620], 0
	mov dword ptr [ebp-616], 0
	push 0
	push -1
	push -1
	lea ecx, [ebp-424]
	push ecx
	call _SW_GET@4
	sub esp,8
	fstp qword ptr [esp]
	call _fb_DoubleToStr@8
	push eax
	push 9
	push offset _Lt_0356
	mov dword ptr [ebp-612], 0
	mov dword ptr [ebp-608], 0
	mov dword ptr [ebp-604], 0
	lea eax, [ebp-612]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-624]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-624]
	push eax
	lea eax, [ebp-364]
	push eax
	call _FORM_PRINT@8
	lea eax, [ebp-624]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,238,.Lt_03B1-_MAIN@8
.Lt_03B2:
##        form_print(@fOther, "w_search: " & sw_get(@w_search))
	mov dword ptr [ebp-648], 0
	mov dword ptr [ebp-644], 0
	mov dword ptr [ebp-640], 0
	push 0
	push -1
	push -1
	lea eax, [ebp-472]
	push eax
	call _SW_GET@4
	sub esp,8
	fstp qword ptr [esp]
	call _fb_DoubleToStr@8
	push eax
	push 11
	push offset _Lt_0359
	mov dword ptr [ebp-636], 0
	mov dword ptr [ebp-632], 0
	mov dword ptr [ebp-628], 0
	lea eax, [ebp-636]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-648]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-648]
	push eax
	lea eax, [ebp-364]
	push eax
	call _FORM_PRINT@8
	lea eax, [ebp-648]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,239,.Lt_03B2-_MAIN@8
.Lt_03B3:
##        form_print(@fOther, "w_Build: " & sw_get(@w_build))
	mov dword ptr [ebp-672], 0
	mov dword ptr [ebp-668], 0
	mov dword ptr [ebp-664], 0
	push 0
	push -1
	push -1
	lea eax, [ebp-448]
	push eax
	call _SW_GET@4
	sub esp,8
	fstp qword ptr [esp]
	call _fb_DoubleToStr@8
	push eax
	push 10
	push offset _Lt_035C
	mov dword ptr [ebp-660], 0
	mov dword ptr [ebp-656], 0
	mov dword ptr [ebp-652], 0
	lea eax, [ebp-660]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-672]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-672]
	push eax
	lea eax, [ebp-364]
	push eax
	call _FORM_PRINT@8
	lea eax, [ebp-672]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,240,.Lt_03B3-_MAIN@8
.Lt_03B4:
##        form_print(@fOther, "w_qtRender: " & sw_get(@w_qtRender))
	mov dword ptr [ebp-696], 0
	mov dword ptr [ebp-692], 0
	mov dword ptr [ebp-688], 0
	push 0
	push -1
	push -1
	lea eax, [ebp-496]
	push eax
	call _SW_GET@4
	sub esp,8
	fstp qword ptr [esp]
	call _fb_DoubleToStr@8
	push eax
	push 13
	push offset _Lt_035F
	mov dword ptr [ebp-684], 0
	mov dword ptr [ebp-680], 0
	mov dword ptr [ebp-676], 0
	lea eax, [ebp-684]
	push eax
	call _fb_StrConcat@20
	push eax
	push -1
	lea eax, [ebp-696]
	push eax
	call _fb_StrAssign@20
	lea eax, [ebp-696]
	push eax
	lea eax, [ebp-364]
	push eax
	call _FORM_PRINT@8
	lea eax, [ebp-696]
	push eax
	call _fb_StrDelete@4
.stabn 68,0,241,.Lt_03B4-_MAIN@8
.Lt_03B5:
##        screenUnlock()
	push -1
	push -1
	call _fb_GfxUnlock@8
.stabn 68,0,242,.Lt_03B5-_MAIN@8
.Lt_03B6:
##        
##        sw_stop(@w_loop)
	lea eax, [ebp-424]
	push eax
	call _SW_STOP@4
.stabn 68,0,244,.Lt_03B6-_MAIN@8
.Lt_03B7:
##        sleep(1, 1)
	push 1
	push 1
	call _fb_SleepEx@8
	test eax, eax
	je .Lt_0362
	push 0
	push 0
	push offset _Lt_02E6
	push 245
	call _fb_ErrorThrowAt
	add esp, 16
	jmp eax
.Lt_0362:
.stabn 68,0,245,.Lt_03B7-_MAIN@8
.Lt_03B8:
##    wend
.Lt_0363:
	jmp .Lt_02ED
.Lt_02EE:
.stabn 68,0,246,.Lt_03B8-_MAIN@8
.Lt_03B9:
##    
##    ' Cleanup any messes
##    qt_delete(@qt)
	lea eax, [ebp-64]
	push eax
	call _QT_DELETE@4
.stabn 68,0,249,.Lt_03B9-_MAIN@8
.Lt_03BA:
##    
##    #IF(_SYS_SOUND_) [Macro Expansion: FALSE ] ) [Macro Expansion: 0 ] )
##    sound_exit()    #ENDIF
##
##    
##    return 0
	mov dword ptr [ebp-4], 0
.stabn 68,0,255,.Lt_03BA-_MAIN@8
.Lt_03BB:
.Lt_02E4:
	mov eax, dword ptr [ebp-4]
	pop ebx
	mov esp, ebp
	pop ebp
	ret 8
	.stabn 68,0,256,.Lt_02E4-_MAIN@8
	.stabs "SCRNBUFF:87=*7",128,0,0,-8
	.stabs "QT:48",128,0,0,-64
	.stabs "QT_DBG:88=*48",128,0,0,-140
	.stabs "SEARCHRESULTS:60",128,0,0,-152
	.stabs "SEARCHAREA:18",128,0,0,-168
	.stabs "FQTDEBUG:17",128,0,0,-220
	.stabs "FMOUSEDEBUG:17",128,0,0,-292
	.stabs "FOTHER:17",128,0,0,-364
	.stabs "W_LOOP:41",128,0,0,-424
	.stabs "W_BUILD:41",128,0,0,-448
	.stabs "W_SEARCH:41",128,0,0,-472
	.stabs "W_QTRENDER:41",128,0,0,-496
	.stabs "MS_NEW:39",128,0,0,-532
	.stabs "MS:39",128,0,0,-568
	.stabs "EVENT:Tt89=s20TYPE:1,0,32;SCANCODE:1,32,32;ASCII:1,64,32;X:1,32,32;Y:1,64,32;DX:1,96,32;DY:1,128,32;BUTTON:1,32,32;Z:1,32,32;W:1,32,32;;",128,0,0,0
	.stabs "E:89",128,0,0,-588
	.stabs "RUNAPP:3",128,0,0,-592
	.stabs "MAXDOTS:1",128,0,0,-596
	.stabs "DOTS:90=*69",128,0,0,-600
	.stabn 192,0,0,.Lt_02E3-_MAIN@8
	.stabn 192,0,0,.Lt_02EF-_MAIN@8
	.stabn 192,0,0,.Lt_02F2-_MAIN@8
	.stabn 224,0,0,.Lt_02F3-_MAIN@8
	.stabn 192,0,0,.Lt_02F7-_MAIN@8
	.stabn 192,0,0,.Lt_02F8-_MAIN@8
	.stabn 192,0,0,.Lt_02FD-_MAIN@8
	.stabn 192,0,0,.Lt_0300-_MAIN@8
	.stabn 224,0,0,.Lt_0301-_MAIN@8
	.stabn 192,0,0,.Lt_0304-_MAIN@8
	.stabn 224,0,0,.Lt_0305-_MAIN@8
	.stabn 192,0,0,.Lt_0308-_MAIN@8
	.stabn 192,0,0,.Lt_030B-_MAIN@8
	.stabn 224,0,0,.Lt_030C-_MAIN@8
	.stabn 192,0,0,.Lt_030F-_MAIN@8
	.stabn 224,0,0,.Lt_0310-_MAIN@8
	.stabn 192,0,0,.Lt_0313-_MAIN@8
	.stabn 224,0,0,.Lt_0314-_MAIN@8
	.stabn 192,0,0,.Lt_0317-_MAIN@8
	.stabn 224,0,0,.Lt_0318-_MAIN@8
	.stabn 224,0,0,.Lt_0319-_MAIN@8
	.stabn 192,0,0,.Lt_031C-_MAIN@8
	.stabn 224,0,0,.Lt_031D-_MAIN@8
	.stabn 192,0,0,.Lt_0320-_MAIN@8
	.stabn 224,0,0,.Lt_0321-_MAIN@8
	.stabn 192,0,0,.Lt_0324-_MAIN@8
	.stabn 224,0,0,.Lt_0325-_MAIN@8
	.stabn 192,0,0,.Lt_0328-_MAIN@8
	.stabn 224,0,0,.Lt_0329-_MAIN@8
	.stabn 192,0,0,.Lt_032C-_MAIN@8
	.stabn 224,0,0,.Lt_032D-_MAIN@8
	.stabn 192,0,0,.Lt_0330-_MAIN@8
	.stabn 224,0,0,.Lt_0331-_MAIN@8
	.stabn 192,0,0,.Lt_0334-_MAIN@8
	.stabn 224,0,0,.Lt_0335-_MAIN@8
	.stabn 224,0,0,.Lt_0336-_MAIN@8
	.stabn 192,0,0,.Lt_0339-_MAIN@8
	.stabn 192,0,0,.Lt_033C-_MAIN@8
	.stabn 224,0,0,.Lt_033E-_MAIN@8
	.stabn 224,0,0,.Lt_033F-_MAIN@8
	.stabn 192,0,0,.Lt_0342-_MAIN@8
	.stabn 224,0,0,.Lt_0343-_MAIN@8
	.stabn 224,0,0,.Lt_0344-_MAIN@8
	.stabn 224,0,0,.Lt_0345-_MAIN@8
	.stabs "P:19",128,0,0,-704
	.stabn 192,0,0,.Lt_0348-_MAIN@8
	.stabn 224,0,0,.Lt_034B-_MAIN@8
	.stabs "I:1",128,0,0,-700
	.stabn 192,0,0,.Lt_034D-_MAIN@8
	.stabn 192,0,0,.Lt_0353-_MAIN@8
	.stabn 224,0,0,.Lt_0354-_MAIN@8
	.stabn 224,0,0,.Lt_0355-_MAIN@8
	.stabn 224,0,0,.Lt_0363-_MAIN@8
	.stabn 224,0,0,.Lt_02E4-_MAIN@8
.Lt_03BC:
	.stabs "",36,0,0,.Lt_03BC-_MAIN@8
	.stabs "main",42,0,1,_main
	.stabd 68,0,1
	.stabs "main:F1",36,0,1,_main
	.stabs "__FB_ARGC__:p1",160,0,0,8
	.stabs "__FB_ARGV__:p91=*92=*4",160,0,0,12
.balign 16

.globl _main
_main:
	push ebp
	mov ebp, esp
	and esp, 0xFFFFFFF0
	sub esp, 4
	.stabn 68,0,1,_main-_main
	mov dword ptr [ebp-4], 0
	call _mcount
	call __monstartup
	call ___main
	push 0
	push dword ptr [ebp+12]
	push dword ptr [ebp+8]
	call _fb_Init@12
	call _fb_InitSignals@0
	call _fb_CpuDetect
	shr eax, 28
	cmp eax, 4
	jae .Lt_0005
	push 1
	push 44
	push offset _Lt_0006
	call _fb_StrAllocTempDescZEx@8
	push eax
	push 0
	call _fb_PrintString@12
	push 1
	call _fb_End@4
.Lt_0005:
.Lt_0003:
.Lt_03BE:
##
###define fbc -gen gcc -O 3
##
###undef BOOLEAN
##
###undef TRUE
##
###undef FALSE
##
###define BOOLEAN UBYTE
##
###define TRUE 1
##
###define FALSE 0
##
###define isFalse( _F ) ((_F)=FALSE)
##
##
###define _SYS_SOUND_ FALSE
##
##
###include "fbgfx.bi"
##
###include "color.bi"
##
##
###include "sys.bas"
##
###include "form.bas"
##
###IF(SYS_SOUND)
###include "sound.bas"#ENDIF
##
##
###include "pnt.bas"
##
###include "rect.bas"
##
###include "mouse.bas"
##
###include "stopwatch.bas"
##
###include "quadtree.bas"
##
###include "dot.bas"
##
##
###include "render.bas"
##
##
###define QT_SIZE 512
##
###define QT_CAP 8
##
##
###define CLEARCOLOR color.slateGray
##
###define BACKGROUNDCOLOR color.silver
##
###define BORDERCOLOR color.dimGray
##
###define TEXTCOLOR color.dimGray
##
###define DOTCOLOR color.yellow
##
##
##using fb
##
##randomize(1)
	push 0
	push dword ptr [_Lt_03BD+4]
	push dword ptr [_Lt_03BD]
	call _fb_Randomize@12
.stabn 68,0,42,.Lt_03BE-_main
.Lt_03BF:
##
##end sub
##
##end sub
##
##end function
##
##end function
##
##end function
##
##end(main(__FB_ARGC__, __FB_ARGV__))
	push dword ptr [ebp+12]
	push dword ptr [ebp+8]
	call _MAIN@8
	push eax
	call _fb_End@4
.stabn 68,0,258,.Lt_03BF-_main
.Lt_0004:
	push 0
	call _fb_End@4
	mov eax, dword ptr [ebp-4]
	mov esp, ebp
	pop ebp
	ret
	.stabn 68,0,258,.Lt_0004-_main
	.stabn 192,0,0,.Lt_0003-_main
	.stabn 224,0,0,.Lt_0004-_main
.Lt_03C0:
	.stabs "",36,0,0,.Lt_03C0-_main

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0006:	.ascii	"This program requires at least a 486 to run.\0"

.section .bss
.balign 4
	.lcomm	_Lt_000D,32
	.stabs "_IOBUF:Tt95=s32_PTR:96=*4,0,32;_CNT:1,32,32;_BASE:97=*4,64,32;_FLAG:1,96,32;_FILE:1,128,32;_CHARBUF:1,160,32;_BUFSIZ:1,192,32;_TMPFNAME:98=*4,224,32;;",128,0,0,0
	.stabs "__FB_ARRAYDIMTB$:Tt101=s12ELEMENTS:1,0,32;LBOUND:1,32,32;UBOUND:1,64,32;;",128,0,0,0
	.stabs "FBARRAY1:Tt93=s32DATA:94=*95,0,32;PTR:99=*95,32,32;SIZE:1,64,32;ELEMENT_LEN:1,96,32;DIMENSIONS:1,128,32;DIMTB:100=ar1;0;0;101,160,96;;",128,0,0,0
	.stabs "Lt_000D:S93",40,0,0,_Lt_000D

.section .data
.balign 4
_Lt_0010:	.ascii	"\n\0"
.balign 4
_Lt_003A:	.ascii	"D:\\GitHub\\Dots\\Archive\\Dots\\form.bas\0"
.balign 4
_Lt_0049:	.ascii	"(%i,%i)\0"
.balign 4
_Lt_00A6:	.long	0x3F800000
.balign 4
_Lt_00B0:	.ascii	"(%i,%i)-(%i,%i)\0"
.balign 8
_Lt_00CF:	.quad	0x408F400000000000
.balign 8
_Lt_00DC:	.quad	0x0000000000000000
.balign 4
_Lt_01C4:	.ascii	"%s, %i\0"
.balign 4
_Lt_01CD:	.long	0x40C90FDC
.balign 4
_Lt_01CE:	.long	0x00000000
.balign 4
_Lt_0216:	.ascii	"Count(total): \0"
.balign 4
_Lt_0219:	.ascii	"Count(local): \0"
.balign 4
_Lt_021C:	.ascii	"Depth: \0"
.balign 4
_Lt_021F:	.ascii	"Boundary: \0"
.balign 4
_Lt_0222:	.ascii	"parent: \0"
.balign 4
_Lt_0225:	.ascii	"ne: \0"
.balign 4
_Lt_0228:	.ascii	"nw: \0"
.balign 4
_Lt_022B:	.ascii	"se: \0"
.balign 4
_Lt_022E:	.ascii	"sw: \0"
.balign 4
_Lt_023F:	.ascii	"State: \0"
.balign 4
_Lt_0242:	.ascii	"Buttons: \0"
.balign 4
_Lt_0245:	.ascii	"Wheel: \0"
.balign 4
_Lt_0248:	.ascii	"Clip: \0"
.balign 4
_Lt_024B:	.ascii	"Position: (\0"
.balign 4
_Lt_024C:	.ascii	",\0"
.balign 4
_Lt_024D:	.ascii	")\0"
.balign 4
_Lt_025D:	.ascii	"A - Spam single dot in the corner\0"
.balign 4
_Lt_025F:	.ascii	"S - Spam 10 dots in the corner\0"
.balign 4
_Lt_0261:	.ascii	"D - Spam 100 dots in the corner\0"
.balign 4
_Lt_0263:	.ascii	"Q - Spam 1000 dots randomly\0"
.balign 4
_Lt_0265:	.ascii	"W - Spam 10000 Dots randomly\0"
.balign 4
_Lt_0268:	.ascii	"C - Reset the QuadTree from the root down\0"
.balign 4
_Lt_026B:	.ascii	"Left click - Spawn dot at cursor\0"
.balign 4
_Lt_026D:	.ascii	"Right click - rapidly spawn dots at cursor\0"
.balign 4
_Lt_026F:	.ascii	"Mouse wheel - zoom in/out\0"
.balign 4
_Lt_0272:	.ascii	"1 - Select north west quadtree\0"
.balign 4
_Lt_0274:	.ascii	"2 - Select north east quadtree\0"
.balign 4
_Lt_0276:	.ascii	"3 - Select south west quadtree\0"
.balign 4
_Lt_0278:	.ascii	"4 - Select south east quadtree\0"
.balign 4
_Lt_027B:	.ascii	"Backspace - go up a parent\0"
.balign 4
_Lt_027D:	.ascii	"R - Go to root quadtree\0"
.balign 4
_Lt_0280:	.ascii	"Escape - Exit application\0"
.balign 4
_Lt_02E6:	.ascii	"dots.bas\0"
.balign 4
_Lt_0356:	.ascii	"w_loop: \0"
.balign 4
_Lt_0359:	.ascii	"w_search: \0"
.balign 4
_Lt_035C:	.ascii	"w_Build: \0"
.balign 4
_Lt_035F:	.ascii	"w_qtRender: \0"
.balign 4
_Lt_0364:	.long	0x44160000
.balign 4
_Lt_0365:	.long	0x44480000
.balign 4
_Lt_0366:	.long	0x44098000
.balign 4
_Lt_0367:	.long	0x40A00000
.balign 8
_Lt_03BD:	.quad	0x3FF0000000000000

.section .text
	.stabs "",100,0,0,.Lt_03C1
.Lt_03C1:
