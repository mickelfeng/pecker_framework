; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	F:\codes\pecker_framework_git\pecker_src\pecker_framework\vertex_index_test.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	?MAX_VERTEXT_ATTRIBUTE_COUNT@pecker_vertex_buffer_gles2@pecker_sdk@@2IB ; pecker_sdk::pecker_vertex_buffer_gles2::MAX_VERTEXT_ATTRIBUTE_COUNT
;	COMDAT ?MAX_VERTEXT_ATTRIBUTE_COUNT@pecker_vertex_buffer_gles2@pecker_sdk@@2IB
CONST	SEGMENT
?MAX_VERTEXT_ATTRIBUTE_COUNT@pecker_vertex_buffer_gles2@pecker_sdk@@2IB DD 08H ; pecker_sdk::pecker_vertex_buffer_gles2::MAX_VERTEXT_ATTRIBUTE_COUNT
CONST	ENDS
PUBLIC	__$ArrayPad$
PUBLIC	?vertex_test@@YAXXZ				; vertex_test
EXTRN	??1pecker_vertex_buffer_gles2@pecker_sdk@@UAE@XZ:PROC ; pecker_sdk::pecker_vertex_buffer_gles2::~pecker_vertex_buffer_gles2
EXTRN	??1pecker_index_buffer_gles2@pecker_sdk@@UAE@XZ:PROC ; pecker_sdk::pecker_index_buffer_gles2::~pecker_index_buffer_gles2
EXTRN	??0pecker_index_buffer_gles2@pecker_sdk@@QAE@XZ:PROC ; pecker_sdk::pecker_index_buffer_gles2::pecker_index_buffer_gles2
EXTRN	??0pecker_vertex_buffer_gles2@pecker_sdk@@QAE@XZ:PROC ; pecker_sdk::pecker_vertex_buffer_gles2::pecker_vertex_buffer_gles2
EXTRN	___security_cookie:DWORD
EXTRN	___CxxFrameHandler3:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT xdata$x
; File f:\codes\pecker_framework_git\pecker_src\pecker_framework\vertex_index_test.cpp
xdata$x	SEGMENT
__unwindtable$?vertex_test@@YAXXZ DD 0ffffffffH
	DD	FLAT:__unwindfunclet$?vertex_test@@YAXXZ$0
__ehfuncinfo$?vertex_test@@YAXXZ DD 019930522H
	DD	01H
	DD	FLAT:__unwindtable$?vertex_test@@YAXXZ
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
xdata$x	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT ?vertex_test@@YAXXZ
_TEXT	SEGMENT
tv88 = -556						; size = 4
tv75 = -556						; size = 4
_index_buf_obj$ = -356					; size = 4
_index_buffer$ = -344					; size = 4
_index_buf_gl$ = -332					; size = 40
_vex_buff_obj$ = -284					; size = 4
_vex_buffer$ = -272					; size = 4
_vex_buf_gl$ = -260					; size = 240
__$ArrayPad$ = -16					; size = 4
__$EHRec$ = -12						; size = 12
?vertex_test@@YAXXZ PROC				; vertex_test, COMDAT

; 6    : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$?vertex_test@@YAXXZ
	mov	eax, DWORD PTR fs:0
	push	eax
	sub	esp, 544				; 00000220H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-556]
	mov	ecx, 136				; 00000088H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax

; 7    : 	pecker_vertex_buffer_gles2 vex_buf_gl;

	lea	ecx, DWORD PTR _vex_buf_gl$[ebp]
	call	??0pecker_vertex_buffer_gles2@pecker_sdk@@QAE@XZ ; pecker_sdk::pecker_vertex_buffer_gles2::pecker_vertex_buffer_gles2
	mov	DWORD PTR __$EHRec$[ebp+8], 0

; 8    : 	Ipecker_vertex_buffer* vex_buffer = &vex_buf_gl;

	lea	eax, DWORD PTR _vex_buf_gl$[ebp]
	mov	DWORD PTR _vex_buffer$[ebp], eax

; 9    : 	pecker_opengles_v2_object* vex_buff_obj = &vex_buf_gl;

	lea	eax, DWORD PTR _vex_buf_gl$[ebp]
	test	eax, eax
	je	SHORT $LN3@vertex_tes
	lea	ecx, DWORD PTR _vex_buf_gl$[ebp]
	add	ecx, 4
	mov	DWORD PTR tv75[ebp], ecx
	jmp	SHORT $LN4@vertex_tes
$LN3@vertex_tes:
	mov	DWORD PTR tv75[ebp], 0
$LN4@vertex_tes:
	mov	edx, DWORD PTR tv75[ebp]
	mov	DWORD PTR _vex_buff_obj$[ebp], edx

; 10   : 
; 11   : 
; 12   : 	pecker_index_buffer_gles2 index_buf_gl;

	lea	ecx, DWORD PTR _index_buf_gl$[ebp]
	call	??0pecker_index_buffer_gles2@pecker_sdk@@QAE@XZ ; pecker_sdk::pecker_index_buffer_gles2::pecker_index_buffer_gles2

; 13   : 	Ipecker_index_buffer* index_buffer = &index_buf_gl;

	lea	eax, DWORD PTR _index_buf_gl$[ebp]
	mov	DWORD PTR _index_buffer$[ebp], eax

; 14   : 	pecker_opengles_v2_object* index_buf_obj = &index_buf_gl;

	lea	eax, DWORD PTR _index_buf_gl$[ebp]
	test	eax, eax
	je	SHORT $LN5@vertex_tes
	lea	ecx, DWORD PTR _index_buf_gl$[ebp]
	add	ecx, 4
	mov	DWORD PTR tv88[ebp], ecx
	jmp	SHORT $LN6@vertex_tes
$LN5@vertex_tes:
	mov	DWORD PTR tv88[ebp], 0
$LN6@vertex_tes:
	mov	edx, DWORD PTR tv88[ebp]
	mov	DWORD PTR _index_buf_obj$[ebp], edx

; 15   : }

	lea	ecx, DWORD PTR _index_buf_gl$[ebp]
	call	??1pecker_index_buffer_gles2@pecker_sdk@@UAE@XZ ; pecker_sdk::pecker_index_buffer_gles2::~pecker_index_buffer_gles2
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR _vex_buf_gl$[ebp]
	call	??1pecker_vertex_buffer_gles2@pecker_sdk@@UAE@XZ ; pecker_sdk::pecker_vertex_buffer_gles2::~pecker_vertex_buffer_gles2
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN13@vertex_tes
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 556				; 0000022cH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	2
$LN13@vertex_tes:
	DD	2
	DD	$LN12@vertex_tes
$LN12@vertex_tes:
	DD	-260					; fffffefcH
	DD	240					; 000000f0H
	DD	$LN9@vertex_tes
	DD	-332					; fffffeb4H
	DD	40					; 00000028H
	DD	$LN10@vertex_tes
$LN10@vertex_tes:
	DB	105					; 00000069H
	DB	110					; 0000006eH
	DB	100					; 00000064H
	DB	101					; 00000065H
	DB	120					; 00000078H
	DB	95					; 0000005fH
	DB	98					; 00000062H
	DB	117					; 00000075H
	DB	102					; 00000066H
	DB	95					; 0000005fH
	DB	103					; 00000067H
	DB	108					; 0000006cH
	DB	0
$LN9@vertex_tes:
	DB	118					; 00000076H
	DB	101					; 00000065H
	DB	120					; 00000078H
	DB	95					; 0000005fH
	DB	98					; 00000062H
	DB	117					; 00000075H
	DB	102					; 00000066H
	DB	95					; 0000005fH
	DB	103					; 00000067H
	DB	108					; 0000006cH
	DB	0
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$?vertex_test@@YAXXZ$0:
	lea	ecx, DWORD PTR _vex_buf_gl$[ebp]
	jmp	??1pecker_vertex_buffer_gles2@pecker_sdk@@UAE@XZ ; pecker_sdk::pecker_vertex_buffer_gles2::~pecker_vertex_buffer_gles2
__ehhandler$?vertex_test@@YAXXZ:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-560]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	ecx, DWORD PTR [edx-4]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$?vertex_test@@YAXXZ
	jmp	___CxxFrameHandler3
text$x	ENDS
?vertex_test@@YAXXZ ENDP				; vertex_test
END
