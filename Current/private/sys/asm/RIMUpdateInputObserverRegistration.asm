; Hc/NtRIMUpdateInputObserverRegistration
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciRIMUpdateInputObserverRegistration:DWORD

.DATA
.CODE

HcRIMUpdateInputObserverRegistration PROC
	mov r10, rcx
	mov eax, sciRIMUpdateInputObserverRegistration
	syscall
	ret
HcRIMUpdateInputObserverRegistration ENDP

ELSE
; 32bit

EXTERNDEF C sciRIMUpdateInputObserverRegistration:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcRIMUpdateInputObserverRegistration PROC
	mov eax, sciRIMUpdateInputObserverRegistration
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
HcRIMUpdateInputObserverRegistration ENDP

ENDIF

END