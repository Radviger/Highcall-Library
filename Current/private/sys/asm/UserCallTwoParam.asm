; Hc/NtUserCallTwoParam
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserCallTwoParam:DWORD

.DATA
.CODE

HcUserCallTwoParam PROC
	mov r10, rcx
	mov eax, sciUserCallTwoParam
	syscall
	ret
HcUserCallTwoParam ENDP

ELSE
; 32bit

EXTERNDEF C sciUserCallTwoParam:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserCallTwoParam PROC
	mov eax, sciUserCallTwoParam
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
HcUserCallTwoParam ENDP

ENDIF

END