; Hc/NtGdiDdDDIWaitForVerticalBlankEvent2
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDIWaitForVerticalBlankEvent2:DWORD

.DATA
.CODE

HcGdiDdDDIWaitForVerticalBlankEvent2 PROC
	mov r10, rcx
	mov eax, sciGdiDdDDIWaitForVerticalBlankEvent2
	syscall
	ret
HcGdiDdDDIWaitForVerticalBlankEvent2 ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDIWaitForVerticalBlankEvent2:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDIWaitForVerticalBlankEvent2 PROC
	mov eax, sciGdiDdDDIWaitForVerticalBlankEvent2
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcGdiDdDDIWaitForVerticalBlankEvent2 ENDP

ENDIF

END