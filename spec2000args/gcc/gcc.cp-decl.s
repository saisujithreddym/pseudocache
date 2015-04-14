	file	 "gcc.lgred.cp-decl.i"
data

; cc1 (2.7.2.2) arguments: -O -fdefer-pop -fomit-frame-pointer
; -fcse-follow-jumps -fcse-skip-blocks -fexpensive-optimizations
; -fthread-jumps -fstrength-reduce -funroll-loops -fwritable-strings
; -fpeephole -fforce-mem -ffunction-cse -finline-functions -finline
; -freg-struct-return -fdelayed-branch -frerun-cse-after-loop
; -fschedule-insns -fschedule-insns2 -fcommon -fgnu-linker -m88110 -m88100
; -m88000 -mno-ocs-debug-info -mno-ocs-frame-position -mcheck-zero-division

gcc2_compiled.:
	global	 _language_string
	align	 8
@LC0:
	string	 "GNU C++\000"
	align	 4
_language_string:
	word	 @LC0
text
	align	 8
	global	 _push_decl_level
_push_decl_level:
	subu	 r31,r31,64
	or	 r4,r0,16
	st	 r2,r31,40
	or	 r2,r0,r3
	st	 r1,r31,36
@Ltb0:
	bsr.n	 _push_stack_level
	addu	 r3,r31,40
@Lte0:
	ld	 r1,r31,36
	jmp.n	 r1
	addu	 r31,r31,64

	align	 8
	global	 _global_bindings_p
_global_bindings_p:
@Ltb1:
	or.u	 r9,r0,hi16(_current_binding_level)
	ld	 r2,r9,lo16(_current_binding_level)
	or.u	 r9,r0,hi16(_global_binding_level)
	ld	 r9,r9,lo16(_global_binding_level)
	cmp	 r2,r2,r9
	jmp.n	 r1
	extu	 r2,r2,1<eq>
@Lte1:

	align	 8
	global	 _keep_next_level
_keep_next_level:
@Ltb2:
	or.u	 r8,r0,hi16(_keep_next_level_flag)
	or	 r9,r0,1
	jmp.n	 r1
	st	 r9,r8,lo16(_keep_next_level_flag)
@Lte2:

