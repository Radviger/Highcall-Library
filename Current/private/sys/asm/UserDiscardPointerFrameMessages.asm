; Hc/NtUserDiscardPointerFrameMessages
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserDiscardPointerFrameMessages:DWORD

.DATA
.CODE

HcUserDiscardPointerFrameMessages PROC
	mov r10, rcx
	mov eax, sciUserDiscardPointerFrameMessages
	syscall
	ret
HcUserDiscardPointerFrameMessages ENDP

ELSE
; 32bit

EXTERNDEF C sciUserDiscardPointerFrameMessages:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserDiscardPointerFrameMessages PROC
	mov eax, sciUserDiscardPointerFrameMessages
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
HcUserDiscardPointerFrameMessages ENDP

ENDIF

END