; Hc/NtDCompositionSetResourceBufferProperty
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciDCompositionSetResourceBufferProperty:DWORD

.DATA
.CODE

HcDCompositionSetResourceBufferProperty PROC
	mov r10, rcx
	mov eax, sciDCompositionSetResourceBufferProperty
	syscall
	ret
HcDCompositionSetResourceBufferProperty ENDP

ELSE
; 32bit

EXTERNDEF C sciDCompositionSetResourceBufferProperty:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcDCompositionSetResourceBufferProperty PROC
	mov eax, sciDCompositionSetResourceBufferProperty
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
HcDCompositionSetResourceBufferProperty ENDP

ENDIF

END