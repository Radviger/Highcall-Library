; Hc/NtUserEnumDisplayDevices
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserEnumDisplayDevices:DWORD

.DATA
.CODE

HcUserEnumDisplayDevices PROC
	mov r10, rcx
	mov eax, sciUserEnumDisplayDevices
	syscall
	ret
HcUserEnumDisplayDevices ENDP

ELSE
; 32bit

EXTERNDEF C sciUserEnumDisplayDevices:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserEnumDisplayDevices PROC
	mov eax, sciUserEnumDisplayDevices
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
HcUserEnumDisplayDevices ENDP

ENDIF

END