; Hc/NtUserGetKeyboardState
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetKeyboardState:DWORD

.DATA
.CODE

HcUserGetKeyboardState PROC
	mov r10, rcx
	mov eax, sciUserGetKeyboardState
	syscall
	ret
HcUserGetKeyboardState ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetKeyboardState:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetKeyboardState PROC
	mov eax, sciUserGetKeyboardState
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
HcUserGetKeyboardState ENDP

ENDIF

END