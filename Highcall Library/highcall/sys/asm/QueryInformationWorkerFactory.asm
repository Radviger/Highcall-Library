; Hc/NtQueryInformationWorkerFactory
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciQueryInformationWorkerFactory:DWORD

.DATA
.CODE

HcQueryInformationWorkerFactory PROC
	mov r10, rcx
	mov eax, sciQueryInformationWorkerFactory
	syscall
	ret
HcQueryInformationWorkerFactory ENDP

ELSE
; 32bit

EXTERNDEF C sciQueryInformationWorkerFactory:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcQueryInformationWorkerFactory PROC
	mov eax, sciQueryInformationWorkerFactory
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
HcQueryInformationWorkerFactory ENDP

ENDIF

END