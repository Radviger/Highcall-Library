; Hc/NtRenameTransactionManager
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciRenameTransactionManager:DWORD

.DATA
.CODE

HcRenameTransactionManager PROC
	mov r10, rcx
	mov eax, sciRenameTransactionManager
	syscall
	ret
HcRenameTransactionManager ENDP

ELSE
; 32bit

EXTERNDEF C sciRenameTransactionManager:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcRenameTransactionManager PROC
	mov eax, sciRenameTransactionManager
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
HcRenameTransactionManager ENDP

ENDIF

END