	.section	__TEXT,__text,regular,pure_instructions
	.file	1 "xiao/lib/patch.cc"
	.file	2 "./xiao/include/patch.h"
	.file	3 "./xiao/include/globals.h"
	.file	4 "./xiao/include/function.h"
	.file	5 "./xiao/include/unsafe_cast.h"
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.section	__DWARF,__debug_aranges,regular,debug
	.section	__DWARF,__debug_macinfo,regular,debug
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
	.section	__DWARF,__debug_loc,regular,debug
	.section	__DWARF,__debug_pubtypes,regular,debug
	.section	__DWARF,__debug_str,regular,debug
Lsection_str:
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
	.section	__TEXT,__text,regular,pure_instructions
Ltext_begin:
	.section	__DATA,__data
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4xiao10EntryPatchC1EPNS_8FunctionEPh
	.align	4, 0x90
__ZN4xiao10EntryPatchC1EPNS_8FunctionEPh: ## @_ZN4xiao10EntryPatchC1EPNS_8FunctionEPh
	.cfi_startproc
Lfunc_begin0:
	.loc	1 32 0                  ## xiao/lib/patch.cc:32:0
## BB#0:                                ## %entry
	subq	$24, %rsp
Ltmp1:
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	16(%rsp), %rdi
	.loc	1 32 1 prologue_end     ## xiao/lib/patch.cc:32:1
Ltmp2:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdx
	callq	__ZN4xiao10EntryPatchC2EPNS_8FunctionEPh
	addq	$24, %rsp
	ret
Ltmp3:
Lfunc_end0:
	.cfi_endproc

	.globl	__ZN4xiao10EntryPatchC2EPNS_8FunctionEPh
	.align	4, 0x90
__ZN4xiao10EntryPatchC2EPNS_8FunctionEPh: ## @_ZN4xiao10EntryPatchC2EPNS_8FunctionEPh
	.cfi_startproc
Lfunc_begin1:
	.loc	1 32 0                  ## xiao/lib/patch.cc:32:0
## BB#0:                                ## %entry
	subq	$40, %rsp
Ltmp5:
	.cfi_def_cfa_offset 48
	movl	$0, %eax
	movabsq	$48, %rcx
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	32(%rsp), %rdx
	.loc	1 32 1 prologue_end     ## xiao/lib/patch.cc:32:1
Ltmp6:
	movq	%rdx, %rsi
	movq	%rsi, %rdi
	movq	%rsi, 8(%rsp)           ## 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, (%rsp)            ## 8-byte Spill
	movq	%rcx, %rdx
	callq	_memset
	movq	8(%rsp), %rdi           ## 8-byte Reload
	callq	__ZN4xiao13AbstractPatchC2Ev
	movq	__ZTVN4xiao10EntryPatchE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	(%rsp), %rdx            ## 8-byte Reload
	movq	%rcx, (%rdx)
	.loc	1 32 1                  ## xiao/lib/patch.cc:32:1
Ltmp7:
	movq	24(%rsp), %rcx
	movq	%rcx, 32(%rdx)
	movq	16(%rsp), %rcx
	movq	%rcx, 16(%rdx)
	movl	$0, 8(%rdx)
	addq	$40, %rsp
	ret
Ltmp8:
Lfunc_end1:
	.cfi_endproc

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN4xiao13AbstractPatchC2Ev
	.weak_definition	__ZN4xiao13AbstractPatchC2Ev
	.align	4, 0x90
__ZN4xiao13AbstractPatchC2Ev:           ## @_ZN4xiao13AbstractPatchC2Ev
	.cfi_startproc
Lfunc_begin2:
	.loc	2 51 0                  ## ./xiao/include/patch.h:51:0
## BB#0:                                ## %entry
	movq	__ZTVN4xiao13AbstractPatchE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rdi
	.loc	2 51 5 prologue_end     ## ./xiao/include/patch.h:51:5
Ltmp9:
	movq	%rax, (%rdi)
	.loc	2 51 5                  ## ./xiao/include/patch.h:51:5
Ltmp10:
	ret
Ltmp11:
Lfunc_end2:
	.cfi_endproc

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4xiao11ReturnPatchC1EPNS_8FunctionEPh
	.align	4, 0x90
__ZN4xiao11ReturnPatchC1EPNS_8FunctionEPh: ## @_ZN4xiao11ReturnPatchC1EPNS_8FunctionEPh
	.cfi_startproc
Lfunc_begin3:
	.loc	1 33 0                  ## xiao/lib/patch.cc:33:0
## BB#0:                                ## %entry
	subq	$24, %rsp
Ltmp13:
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	16(%rsp), %rdi
	.loc	1 33 1 prologue_end     ## xiao/lib/patch.cc:33:1
Ltmp14:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdx
	callq	__ZN4xiao11ReturnPatchC2EPNS_8FunctionEPh
	addq	$24, %rsp
	ret
Ltmp15:
Lfunc_end3:
	.cfi_endproc

	.globl	__ZN4xiao11ReturnPatchC2EPNS_8FunctionEPh
	.align	4, 0x90
__ZN4xiao11ReturnPatchC2EPNS_8FunctionEPh: ## @_ZN4xiao11ReturnPatchC2EPNS_8FunctionEPh
	.cfi_startproc
Lfunc_begin4:
	.loc	1 33 0                  ## xiao/lib/patch.cc:33:0
## BB#0:                                ## %entry
	subq	$40, %rsp
Ltmp17:
	.cfi_def_cfa_offset 48
	movl	$0, %eax
	movabsq	$48, %rcx
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	32(%rsp), %rdx
	.loc	1 33 1 prologue_end     ## xiao/lib/patch.cc:33:1
Ltmp18:
	movq	%rdx, %rsi
	movq	%rsi, %rdi
	movq	%rsi, 8(%rsp)           ## 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, (%rsp)            ## 8-byte Spill
	movq	%rcx, %rdx
	callq	_memset
	movq	8(%rsp), %rdi           ## 8-byte Reload
	callq	__ZN4xiao13AbstractPatchC2Ev
	movq	__ZTVN4xiao11ReturnPatchE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	(%rsp), %rdx            ## 8-byte Reload
	movq	%rcx, (%rdx)
	.loc	1 33 1                  ## xiao/lib/patch.cc:33:1
Ltmp19:
	movq	24(%rsp), %rcx
	movq	%rcx, 32(%rdx)
	movq	16(%rsp), %rcx
	movq	%rcx, 16(%rdx)
	movl	$1, 8(%rdx)
	addq	$40, %rsp
	ret
Ltmp20:
Lfunc_end4:
	.cfi_endproc

	.globl	__ZN4xiao17NonLocalJumpPatchC1EPNS_8FunctionEPh
	.align	4, 0x90
__ZN4xiao17NonLocalJumpPatchC1EPNS_8FunctionEPh: ## @_ZN4xiao17NonLocalJumpPatchC1EPNS_8FunctionEPh
	.cfi_startproc
Lfunc_begin5:
	.loc	1 34 0                  ## xiao/lib/patch.cc:34:0
## BB#0:                                ## %entry
	subq	$24, %rsp
Ltmp22:
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	16(%rsp), %rdi
	.loc	1 34 1 prologue_end     ## xiao/lib/patch.cc:34:1
Ltmp23:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdx
	callq	__ZN4xiao17NonLocalJumpPatchC2EPNS_8FunctionEPh
	addq	$24, %rsp
	ret
Ltmp24:
Lfunc_end5:
	.cfi_endproc

	.globl	__ZN4xiao17NonLocalJumpPatchC2EPNS_8FunctionEPh
	.align	4, 0x90
__ZN4xiao17NonLocalJumpPatchC2EPNS_8FunctionEPh: ## @_ZN4xiao17NonLocalJumpPatchC2EPNS_8FunctionEPh
	.cfi_startproc
Lfunc_begin6:
	.loc	1 34 0                  ## xiao/lib/patch.cc:34:0
## BB#0:                                ## %entry
	subq	$40, %rsp
Ltmp26:
	.cfi_def_cfa_offset 48
	movl	$0, %eax
	movabsq	$48, %rcx
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	32(%rsp), %rdx
	.loc	1 34 1 prologue_end     ## xiao/lib/patch.cc:34:1
Ltmp27:
	movq	%rdx, %rsi
	movq	%rsi, %rdi
	movq	%rsi, 8(%rsp)           ## 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, (%rsp)            ## 8-byte Spill
	movq	%rcx, %rdx
	callq	_memset
	movq	8(%rsp), %rdi           ## 8-byte Reload
	callq	__ZN4xiao13AbstractPatchC2Ev
	movq	__ZTVN4xiao17NonLocalJumpPatchE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	(%rsp), %rdx            ## 8-byte Reload
	movq	%rcx, (%rdx)
	.loc	1 34 1                  ## xiao/lib/patch.cc:34:1
Ltmp28:
	movq	24(%rsp), %rcx
	movq	%rcx, 32(%rdx)
	movq	16(%rsp), %rcx
	movq	%rcx, 16(%rdx)
	movl	$2, 8(%rdx)
	addq	$40, %rsp
	ret
Ltmp29:
Lfunc_end6:
	.cfi_endproc

	.globl	__ZN4xiao14LocalJumpPatchC1EPNS_8FunctionEPh
	.align	4, 0x90
__ZN4xiao14LocalJumpPatchC1EPNS_8FunctionEPh: ## @_ZN4xiao14LocalJumpPatchC1EPNS_8FunctionEPh
	.cfi_startproc
Lfunc_begin7:
	.loc	1 35 0                  ## xiao/lib/patch.cc:35:0
## BB#0:                                ## %entry
	subq	$24, %rsp
Ltmp31:
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	16(%rsp), %rdi
	.loc	1 35 1 prologue_end     ## xiao/lib/patch.cc:35:1
Ltmp32:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdx
	callq	__ZN4xiao14LocalJumpPatchC2EPNS_8FunctionEPh
	addq	$24, %rsp
	ret
Ltmp33:
Lfunc_end7:
	.cfi_endproc

	.globl	__ZN4xiao14LocalJumpPatchC2EPNS_8FunctionEPh
	.align	4, 0x90
__ZN4xiao14LocalJumpPatchC2EPNS_8FunctionEPh: ## @_ZN4xiao14LocalJumpPatchC2EPNS_8FunctionEPh
	.cfi_startproc
Lfunc_begin8:
	.loc	1 35 0                  ## xiao/lib/patch.cc:35:0
## BB#0:                                ## %entry
	subq	$40, %rsp
Ltmp35:
	.cfi_def_cfa_offset 48
	movl	$0, %eax
	movabsq	$48, %rcx
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	32(%rsp), %rdx
	.loc	1 35 1 prologue_end     ## xiao/lib/patch.cc:35:1
Ltmp36:
	movq	%rdx, %rsi
	movq	%rsi, %rdi
	movq	%rsi, 8(%rsp)           ## 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, (%rsp)            ## 8-byte Spill
	movq	%rcx, %rdx
	callq	_memset
	movq	8(%rsp), %rdi           ## 8-byte Reload
	callq	__ZN4xiao13AbstractPatchC2Ev
	movq	__ZTVN4xiao14LocalJumpPatchE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	(%rsp), %rdx            ## 8-byte Reload
	movq	%rcx, (%rdx)
	.loc	1 35 1                  ## xiao/lib/patch.cc:35:1
Ltmp37:
	movq	24(%rsp), %rcx
	movq	%rcx, 32(%rdx)
	movq	16(%rsp), %rcx
	movq	%rcx, 16(%rdx)
	movl	$3, 8(%rdx)
	addq	$40, %rsp
	ret
Ltmp38:
Lfunc_end8:
	.cfi_endproc

	.globl	__ZN4xiao10EntryPatch5applyEv
	.align	4, 0x90
__ZN4xiao10EntryPatch5applyEv:          ## @_ZN4xiao10EntryPatch5applyEv
	.cfi_startproc
Lfunc_begin9:
	.loc	1 41 0                  ## xiao/lib/patch.cc:41:0
## BB#0:                                ## %entry
	subq	$24, %rsp
Ltmp40:
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	.loc	1 42 23 prologue_end    ## xiao/lib/patch.cc:42:23
Ltmp41:
	movq	16(%rdi), %rax
	.loc	1 42 53                 ## xiao/lib/patch.cc:42:53
	movq	32(%rdi), %rdi
	movq	%rax, 8(%rsp)           ## 8-byte Spill
	callq	__ZN4xiaoL5imm32EPNS_8FunctionE
	movq	8(%rsp), %rdi           ## 8-byte Reload
	movl	%eax, %esi
	callq	__ZN4xiao4emit10push_imm32EPhj
	movq	__ZN4xiao9EntryStubEv@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZN4xiao4emit11call_addr32EPhPFvvE
	.loc	1 44 1                  ## xiao/lib/patch.cc:44:1
	movq	%rax, (%rsp)            ## 8-byte Spill
	addq	$24, %rsp
	ret
Ltmp42:
Lfunc_end9:
	.cfi_endproc

	.align	4, 0x90
__ZN4xiaoL5imm32EPNS_8FunctionE:        ## @_ZN4xiaoL5imm32EPNS_8FunctionE
	.cfi_startproc
Lfunc_begin10:
	.loc	1 37 0                  ## xiao/lib/patch.cc:37:0
## BB#0:                                ## %entry
	leaq	-32(%rsp), %rax
	movq	%rdi, -40(%rsp)
	.loc	1 38 34 prologue_end    ## xiao/lib/patch.cc:38:34
Ltmp43:
	movq	-40(%rsp), %rdi
	movq	%rdi, -24(%rsp)
	.loc	5 27 12                 ## ./xiao/include/unsafe_cast.h:27:12
Ltmp44:
	movq	-24(%rsp), %rdi
	movq	%rdi, -32(%rsp)
	movq	%rax, -8(%rsp)
	.loc	5 21 5                  ## ./xiao/include/unsafe_cast.h:21:5
Ltmp45:
	movq	-8(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)
	.loc	5 22 5                  ## ./xiao/include/unsafe_cast.h:22:5
	movq	-16(%rsp), %rax
Ltmp46:
	.loc	1 38 34                 ## xiao/lib/patch.cc:38:34
	movl	%eax, %ecx
	movl	%ecx, %eax
	ret
Ltmp47:
Lfunc_end10:
	.cfi_endproc

	.globl	__ZN4xiao10EntryPatch6revertEv
	.align	4, 0x90
__ZN4xiao10EntryPatch6revertEv:         ## @_ZN4xiao10EntryPatch6revertEv
	.cfi_startproc
Lfunc_begin11:
	.loc	1 46 0                  ## xiao/lib/patch.cc:46:0
## BB#0:                                ## %entry
	subq	$24, %rsp
Ltmp49:
	.cfi_def_cfa_offset 32
	movl	$10, %esi
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	.loc	1 47 17 prologue_end    ## xiao/lib/patch.cc:47:17
Ltmp50:
	movq	16(%rdi), %rdi
	callq	__ZN4xiao4emit11jmp_offset8EPhh
	movq	%rax, 8(%rsp)
	.loc	1 48 23                 ## xiao/lib/patch.cc:48:23
Ltmp51:
	movl	$0, 4(%rsp)
LBB11_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpl	$10, 4(%rsp)
	jae	LBB11_4
## BB#2:                                ## %for.body
                                        ##   in Loop: Header=BB11_1 Depth=1
	.loc	1 49 16                 ## xiao/lib/patch.cc:49:16
Ltmp52:
	movq	8(%rsp), %rdi
	callq	__ZN4xiao4emit3nopEPh
	movq	%rax, 8(%rsp)
Ltmp53:
## BB#3:                                ## %for.inc
                                        ##   in Loop: Header=BB11_1 Depth=1
	.loc	1 48 43                 ## xiao/lib/patch.cc:48:43
	movl	4(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 4(%rsp)
	jmp	LBB11_1
Ltmp54:
LBB11_4:                                ## %for.end
	.loc	1 51 1                  ## xiao/lib/patch.cc:51:1
	addq	$24, %rsp
	ret
Ltmp55:
Lfunc_end11:
	.cfi_endproc

	.globl	__ZN4xiao11ReturnPatch5applyEv
	.align	4, 0x90
__ZN4xiao11ReturnPatch5applyEv:         ## @_ZN4xiao11ReturnPatch5applyEv
	.cfi_startproc
Lfunc_begin12:
	.loc	1 53 0                  ## xiao/lib/patch.cc:53:0
## BB#0:                                ## %entry
	subq	$24, %rsp
Ltmp57:
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	.loc	1 54 22 prologue_end    ## xiao/lib/patch.cc:54:22
Ltmp58:
	movq	16(%rdi), %rax
	.loc	1 54 52                 ## xiao/lib/patch.cc:54:52
	movq	32(%rdi), %rdi
	movq	%rax, 8(%rsp)           ## 8-byte Spill
	callq	__ZN4xiaoL5imm32EPNS_8FunctionE
	movq	8(%rsp), %rdi           ## 8-byte Reload
	movl	%eax, %esi
	callq	__ZN4xiao4emit10push_imm32EPhj
	movq	__ZN4xiao10ReturnStubEv@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZN4xiao4emit10jmp_addr32EPhPFvvE
	.loc	1 56 1                  ## xiao/lib/patch.cc:56:1
	movq	%rax, (%rsp)            ## 8-byte Spill
	addq	$24, %rsp
	ret
Ltmp59:
Lfunc_end12:
	.cfi_endproc

	.globl	__ZN4xiao11ReturnPatch6revertEv
	.align	4, 0x90
__ZN4xiao11ReturnPatch6revertEv:        ## @_ZN4xiao11ReturnPatch6revertEv
	.cfi_startproc
Lfunc_begin13:
	.loc	1 58 0                  ## xiao/lib/patch.cc:58:0
## BB#0:                                ## %entry
	subq	$24, %rsp
Ltmp61:
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	.loc	1 59 17 prologue_end    ## xiao/lib/patch.cc:59:17
Ltmp62:
	movq	16(%rdi), %rdi
	callq	__ZN4xiao4emit3retEPh
	movq	%rax, 8(%rsp)
	.loc	1 60 23                 ## xiao/lib/patch.cc:60:23
Ltmp63:
	movl	$0, 4(%rsp)
LBB13_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpl	$10, 4(%rsp)
	jae	LBB13_4
## BB#2:                                ## %for.body
                                        ##   in Loop: Header=BB13_1 Depth=1
	.loc	1 61 16                 ## xiao/lib/patch.cc:61:16
Ltmp64:
	movq	8(%rsp), %rdi
	callq	__ZN4xiao4emit3nopEPh
	movq	%rax, 8(%rsp)
Ltmp65:
## BB#3:                                ## %for.inc
                                        ##   in Loop: Header=BB13_1 Depth=1
	.loc	1 60 43                 ## xiao/lib/patch.cc:60:43
	movl	4(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 4(%rsp)
	jmp	LBB13_1
Ltmp66:
LBB13_4:                                ## %for.end
	.loc	1 63 1                  ## xiao/lib/patch.cc:63:1
	addq	$24, %rsp
	ret
Ltmp67:
Lfunc_end13:
	.cfi_endproc

	.globl	__ZN4xiao17NonLocalJumpPatch5applyEv
	.align	4, 0x90
__ZN4xiao17NonLocalJumpPatch5applyEv:   ## @_ZN4xiao17NonLocalJumpPatch5applyEv
	.cfi_startproc
Lfunc_begin14:
	.loc	1 65 0                  ## xiao/lib/patch.cc:65:0
## BB#0:                                ## %entry
	movq	%rdi, -8(%rsp)
	.loc	1 67 1 prologue_end     ## xiao/lib/patch.cc:67:1
Ltmp68:
	ret
Ltmp69:
Lfunc_end14:
	.cfi_endproc

	.globl	__ZN4xiao17NonLocalJumpPatch6revertEv
	.align	4, 0x90
__ZN4xiao17NonLocalJumpPatch6revertEv:  ## @_ZN4xiao17NonLocalJumpPatch6revertEv
	.cfi_startproc
Lfunc_begin15:
	.loc	1 69 0                  ## xiao/lib/patch.cc:69:0
## BB#0:                                ## %entry
	movq	%rdi, -8(%rsp)
	.loc	1 71 1 prologue_end     ## xiao/lib/patch.cc:71:1
Ltmp70:
	ret
Ltmp71:
Lfunc_end15:
	.cfi_endproc

	.globl	__ZN4xiao14LocalJumpPatch5applyEv
	.align	4, 0x90
__ZN4xiao14LocalJumpPatch5applyEv:      ## @_ZN4xiao14LocalJumpPatch5applyEv
	.cfi_startproc
Lfunc_begin16:
	.loc	1 73 0                  ## xiao/lib/patch.cc:73:0
## BB#0:                                ## %entry
	movq	%rdi, -8(%rsp)
	.loc	1 75 1 prologue_end     ## xiao/lib/patch.cc:75:1
Ltmp72:
	ret
Ltmp73:
Lfunc_end16:
	.cfi_endproc

	.globl	__ZN4xiao14LocalJumpPatch6revertEv
	.align	4, 0x90
__ZN4xiao14LocalJumpPatch6revertEv:     ## @_ZN4xiao14LocalJumpPatch6revertEv
	.cfi_startproc
Lfunc_begin17:
	.loc	1 77 0                  ## xiao/lib/patch.cc:77:0
## BB#0:                                ## %entry
	movq	%rdi, -8(%rsp)
	.loc	1 79 1 prologue_end     ## xiao/lib/patch.cc:79:1
Ltmp74:
	ret
Ltmp75:
Lfunc_end17:
	.cfi_endproc

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN4xiao13AbstractPatchD1Ev
	.weak_definition	__ZN4xiao13AbstractPatchD1Ev
	.align	4, 0x90
__ZN4xiao13AbstractPatchD1Ev:           ## @_ZN4xiao13AbstractPatchD1Ev
	.cfi_startproc
Lfunc_begin18:
	.loc	2 52 0                  ## ./xiao/include/patch.h:52:0
## BB#0:                                ## %entry
	pushq	%rax
Ltmp77:
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	.loc	2 52 13 prologue_end    ## ./xiao/include/patch.h:52:13
Ltmp78:
	callq	__ZN4xiao13AbstractPatchD2Ev
	popq	%rax
	ret
Ltmp79:
Lfunc_end18:
	.cfi_endproc

	.globl	__ZN4xiao13AbstractPatchD0Ev
	.weak_definition	__ZN4xiao13AbstractPatchD0Ev
	.align	4, 0x90
__ZN4xiao13AbstractPatchD0Ev:           ## @_ZN4xiao13AbstractPatchD0Ev
	.cfi_startproc
Lfunc_begin19:
	.loc	2 52 0                  ## ./xiao/include/patch.h:52:0
## BB#0:                                ## %entry
	subq	$24, %rsp
Ltmp81:
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	.loc	2 52 13 prologue_end    ## ./xiao/include/patch.h:52:13
Ltmp82:
	movq	%rdi, 8(%rsp)           ## 8-byte Spill
	callq	__ZN4xiao13AbstractPatchD1Ev
	movq	8(%rsp), %rdi           ## 8-byte Reload
	callq	__ZdlPv
	addq	$24, %rsp
	ret
Ltmp83:
Lfunc_end19:
	.cfi_endproc

	.globl	__ZN4xiao13AbstractPatchD2Ev
	.weak_definition	__ZN4xiao13AbstractPatchD2Ev
	.align	4, 0x90
__ZN4xiao13AbstractPatchD2Ev:           ## @_ZN4xiao13AbstractPatchD2Ev
	.cfi_startproc
Lfunc_begin20:
	.loc	2 52 0                  ## ./xiao/include/patch.h:52:0
## BB#0:                                ## %entry
	movq	%rdi, -8(%rsp)
	.loc	2 52 13 prologue_end    ## ./xiao/include/patch.h:52:13
Ltmp84:
	ret
Ltmp85:
Lfunc_end20:
	.cfi_endproc

	.section	__DATA,__datacoal_nt,coalesced
	.globl	__ZTVN4xiao13AbstractPatchE ## @_ZTVN4xiao13AbstractPatchE
	.weak_definition	__ZTVN4xiao13AbstractPatchE
	.align	4
__ZTVN4xiao13AbstractPatchE:
	.quad	0
	.quad	0
	.quad	__ZN4xiao13AbstractPatchD1Ev
	.quad	__ZN4xiao13AbstractPatchD0Ev
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual

	.section	__TEXT,__text,regular,pure_instructions
Ltext_end:
	.section	__DATA,__data
Ldata_end:
	.section	__TEXT,__text,regular,pure_instructions
Lsection_end1:
	.section	__DWARF,__debug_info,regular,debug
Linfo_begin1:
	.long	2848                    ## Length of Compilation Unit Info
	.short	2                       ## DWARF version number
Lset0 = Labbrev_begin-Lsection_abbrev   ## Offset Into Abbrev. Section
	.long	Lset0
	.byte	8                       ## Address Size (in bytes)
	.byte	1                       ## Abbrev [1] 0xb:0xb19 DW_TAG_compile_unit
Lset1 = Lstring0-Lsection_str           ## DW_AT_producer
	.long	Lset1
	.short	4                       ## DW_AT_language
Lset2 = Lstring1-Lsection_str           ## DW_AT_name
	.long	Lset2
	.quad	0                       ## DW_AT_low_pc
	.long	0                       ## DW_AT_stmt_list
Lset3 = Lstring2-Lsection_str           ## DW_AT_comp_dir
	.long	Lset3
	.byte	2                       ## Abbrev [2] 0x26:0x7 DW_TAG_base_type
Lset4 = Lstring4-Lsection_str           ## DW_AT_name
	.long	Lset4
	.byte	5                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	3                       ## Abbrev [3] 0x2d:0x5 DW_TAG_subroutine_type
	.long	38                      ## DW_AT_type
	.byte	4                       ## Abbrev [4] 0x32:0x9 DW_TAG_pointer_type
	.long	45                      ## DW_AT_type
Lset5 = Lstring5-Lsection_str           ## DW_AT_name
	.long	Lset5
	.byte	5                       ## Abbrev [5] 0x3b:0x5 DW_TAG_pointer_type
	.long	50                      ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x40:0x833 DW_TAG_namespace
Lset6 = Lstring12-Lsection_str          ## DW_AT_name
	.long	Lset6
	.byte	2                       ## DW_AT_decl_file
	.byte	14                      ## DW_AT_decl_line
	.byte	7                       ## Abbrev [7] 0x47:0x21 DW_TAG_enumeration_type
Lset7 = Lstring11-Lsection_str          ## DW_AT_name
	.long	Lset7
	.byte	4                       ## DW_AT_byte_size
	.byte	2                       ## DW_AT_decl_file
	.byte	17                      ## DW_AT_decl_line
	.byte	8                       ## Abbrev [8] 0x4f:0x6 DW_TAG_enumerator
Lset8 = Lstring7-Lsection_str           ## DW_AT_name
	.long	Lset8
	.byte	0                       ## DW_AT_const_value
	.byte	8                       ## Abbrev [8] 0x55:0x6 DW_TAG_enumerator
Lset9 = Lstring8-Lsection_str           ## DW_AT_name
	.long	Lset9
	.byte	1                       ## DW_AT_const_value
	.byte	8                       ## Abbrev [8] 0x5b:0x6 DW_TAG_enumerator
Lset10 = Lstring9-Lsection_str          ## DW_AT_name
	.long	Lset10
	.byte	2                       ## DW_AT_const_value
	.byte	8                       ## Abbrev [8] 0x61:0x6 DW_TAG_enumerator
Lset11 = Lstring10-Lsection_str         ## DW_AT_name
	.long	Lset11
	.byte	3                       ## DW_AT_const_value
	.byte	0                       ## End Of Children Mark
	.byte	9                       ## Abbrev [9] 0x68:0x9b DW_TAG_class_type
	.long	569                     ## DW_AT_containing_type
Lset12 = Lstring36-Lsection_str         ## DW_AT_name
	.long	Lset12
	.byte	48                      ## DW_AT_byte_size
	.byte	2                       ## DW_AT_decl_file
	.byte	104                     ## DW_AT_decl_line
	.byte	10                      ## Abbrev [10] 0x74:0x9 DW_TAG_inheritance
	.long	569                     ## DW_AT_type
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	11                      ## Abbrev [11] 0x7d:0x1b DW_TAG_subprogram
Lset13 = Lstring36-Lsection_str         ## DW_AT_name
	.long	Lset13
	.byte	2                       ## DW_AT_decl_file
	.byte	112                     ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	12                      ## Abbrev [12] 0x87:0x6 DW_TAG_formal_parameter
	.long	2233                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	13                      ## Abbrev [13] 0x8d:0x5 DW_TAG_formal_parameter
	.long	2509                    ## DW_AT_type
	.byte	13                      ## Abbrev [13] 0x92:0x5 DW_TAG_formal_parameter
	.long	2193                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	14                      ## Abbrev [14] 0x98:0x19 DW_TAG_subprogram
Lset14 = Lstring37-Lsection_str         ## DW_AT_name
	.long	Lset14
	.byte	2                       ## DW_AT_decl_file
	.byte	113                     ## DW_AT_decl_line
	.byte	1                       ## DW_AT_virtuality
	.byte	2                       ## DW_AT_vtable_elem_location
	.byte	16
	.byte	0
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.long	104                     ## DW_AT_containing_type
	.byte	12                      ## Abbrev [12] 0xaa:0x6 DW_TAG_formal_parameter
	.long	2233                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	15                      ## Abbrev [15] 0xb1:0x1d DW_TAG_subprogram
Lset15 = Lstring38-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset15
Lset16 = Lstring39-Lsection_str         ## DW_AT_name
	.long	Lset16
	.byte	2                       ## DW_AT_decl_file
	.byte	115                     ## DW_AT_decl_line
	.byte	1                       ## DW_AT_virtuality
	.byte	2                       ## DW_AT_vtable_elem_location
	.byte	16
	.byte	2
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.long	104                     ## DW_AT_containing_type
	.byte	12                      ## Abbrev [12] 0xc7:0x6 DW_TAG_formal_parameter
	.long	2233                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	15                      ## Abbrev [15] 0xce:0x1d DW_TAG_subprogram
Lset17 = Lstring40-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset17
Lset18 = Lstring41-Lsection_str         ## DW_AT_name
	.long	Lset18
	.byte	2                       ## DW_AT_decl_file
	.byte	116                     ## DW_AT_decl_line
	.byte	1                       ## DW_AT_virtuality
	.byte	2                       ## DW_AT_vtable_elem_location
	.byte	16
	.byte	3
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.long	104                     ## DW_AT_containing_type
	.byte	12                      ## Abbrev [12] 0xe4:0x6 DW_TAG_formal_parameter
	.long	2233                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	16                      ## Abbrev [16] 0xeb:0x17 DW_TAG_enumeration_type
	.byte	1                       ## DW_AT_byte_size
	.byte	2                       ## DW_AT_decl_file
	.byte	106                     ## DW_AT_decl_line
	.byte	8                       ## Abbrev [8] 0xef:0x6 DW_TAG_enumerator
Lset19 = Lstring82-Lsection_str         ## DW_AT_name
	.long	Lset19
	.byte	10                      ## DW_AT_const_value
	.byte	8                       ## Abbrev [8] 0xf5:0x6 DW_TAG_enumerator
Lset20 = Lstring83-Lsection_str         ## DW_AT_name
	.long	Lset20
	.byte	10                      ## DW_AT_const_value
	.byte	8                       ## Abbrev [8] 0xfb:0x6 DW_TAG_enumerator
Lset21 = Lstring84-Lsection_str         ## DW_AT_name
	.long	Lset21
	.byte	3                       ## DW_AT_const_value
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	9                       ## Abbrev [9] 0x103:0x9b DW_TAG_class_type
	.long	569                     ## DW_AT_containing_type
Lset22 = Lstring42-Lsection_str         ## DW_AT_name
	.long	Lset22
	.byte	48                      ## DW_AT_byte_size
	.byte	2                       ## DW_AT_decl_file
	.byte	89                      ## DW_AT_decl_line
	.byte	10                      ## Abbrev [10] 0x10f:0x9 DW_TAG_inheritance
	.long	569                     ## DW_AT_type
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	11                      ## Abbrev [11] 0x118:0x1b DW_TAG_subprogram
Lset23 = Lstring42-Lsection_str         ## DW_AT_name
	.long	Lset23
	.byte	2                       ## DW_AT_decl_file
	.byte	97                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	12                      ## Abbrev [12] 0x122:0x6 DW_TAG_formal_parameter
	.long	2238                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	13                      ## Abbrev [13] 0x128:0x5 DW_TAG_formal_parameter
	.long	2509                    ## DW_AT_type
	.byte	13                      ## Abbrev [13] 0x12d:0x5 DW_TAG_formal_parameter
	.long	2193                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	14                      ## Abbrev [14] 0x133:0x19 DW_TAG_subprogram
Lset24 = Lstring43-Lsection_str         ## DW_AT_name
	.long	Lset24
	.byte	2                       ## DW_AT_decl_file
	.byte	98                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_virtuality
	.byte	2                       ## DW_AT_vtable_elem_location
	.byte	16
	.byte	0
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.long	259                     ## DW_AT_containing_type
	.byte	12                      ## Abbrev [12] 0x145:0x6 DW_TAG_formal_parameter
	.long	2238                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	15                      ## Abbrev [15] 0x14c:0x1d DW_TAG_subprogram
Lset25 = Lstring44-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset25
Lset26 = Lstring39-Lsection_str         ## DW_AT_name
	.long	Lset26
	.byte	2                       ## DW_AT_decl_file
	.byte	100                     ## DW_AT_decl_line
	.byte	1                       ## DW_AT_virtuality
	.byte	2                       ## DW_AT_vtable_elem_location
	.byte	16
	.byte	2
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.long	259                     ## DW_AT_containing_type
	.byte	12                      ## Abbrev [12] 0x162:0x6 DW_TAG_formal_parameter
	.long	2238                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	15                      ## Abbrev [15] 0x169:0x1d DW_TAG_subprogram
Lset27 = Lstring45-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset27
Lset28 = Lstring41-Lsection_str         ## DW_AT_name
	.long	Lset28
	.byte	2                       ## DW_AT_decl_file
	.byte	101                     ## DW_AT_decl_line
	.byte	1                       ## DW_AT_virtuality
	.byte	2                       ## DW_AT_vtable_elem_location
	.byte	16
	.byte	3
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.long	259                     ## DW_AT_containing_type
	.byte	12                      ## Abbrev [12] 0x17f:0x6 DW_TAG_formal_parameter
	.long	2238                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	16                      ## Abbrev [16] 0x186:0x17 DW_TAG_enumeration_type
	.byte	1                       ## DW_AT_byte_size
	.byte	2                       ## DW_AT_decl_file
	.byte	91                      ## DW_AT_decl_line
	.byte	8                       ## Abbrev [8] 0x18a:0x6 DW_TAG_enumerator
Lset29 = Lstring82-Lsection_str         ## DW_AT_name
	.long	Lset29
	.byte	10                      ## DW_AT_const_value
	.byte	8                       ## Abbrev [8] 0x190:0x6 DW_TAG_enumerator
Lset30 = Lstring83-Lsection_str         ## DW_AT_name
	.long	Lset30
	.byte	10                      ## DW_AT_const_value
	.byte	8                       ## Abbrev [8] 0x196:0x6 DW_TAG_enumerator
Lset31 = Lstring84-Lsection_str         ## DW_AT_name
	.long	Lset31
	.byte	2                       ## DW_AT_const_value
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	9                       ## Abbrev [9] 0x19e:0x9b DW_TAG_class_type
	.long	569                     ## DW_AT_containing_type
Lset32 = Lstring46-Lsection_str         ## DW_AT_name
	.long	Lset32
	.byte	48                      ## DW_AT_byte_size
	.byte	2                       ## DW_AT_decl_file
	.byte	74                      ## DW_AT_decl_line
	.byte	10                      ## Abbrev [10] 0x1aa:0x9 DW_TAG_inheritance
	.long	569                     ## DW_AT_type
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	11                      ## Abbrev [11] 0x1b3:0x1b DW_TAG_subprogram
Lset33 = Lstring46-Lsection_str         ## DW_AT_name
	.long	Lset33
	.byte	2                       ## DW_AT_decl_file
	.byte	82                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	12                      ## Abbrev [12] 0x1bd:0x6 DW_TAG_formal_parameter
	.long	2243                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	13                      ## Abbrev [13] 0x1c3:0x5 DW_TAG_formal_parameter
	.long	2509                    ## DW_AT_type
	.byte	13                      ## Abbrev [13] 0x1c8:0x5 DW_TAG_formal_parameter
	.long	2193                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	14                      ## Abbrev [14] 0x1ce:0x19 DW_TAG_subprogram
Lset34 = Lstring47-Lsection_str         ## DW_AT_name
	.long	Lset34
	.byte	2                       ## DW_AT_decl_file
	.byte	83                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_virtuality
	.byte	2                       ## DW_AT_vtable_elem_location
	.byte	16
	.byte	0
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.long	414                     ## DW_AT_containing_type
	.byte	12                      ## Abbrev [12] 0x1e0:0x6 DW_TAG_formal_parameter
	.long	2243                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	15                      ## Abbrev [15] 0x1e7:0x1d DW_TAG_subprogram
Lset35 = Lstring48-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset35
Lset36 = Lstring39-Lsection_str         ## DW_AT_name
	.long	Lset36
	.byte	2                       ## DW_AT_decl_file
	.byte	85                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_virtuality
	.byte	2                       ## DW_AT_vtable_elem_location
	.byte	16
	.byte	2
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.long	414                     ## DW_AT_containing_type
	.byte	12                      ## Abbrev [12] 0x1fd:0x6 DW_TAG_formal_parameter
	.long	2243                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	15                      ## Abbrev [15] 0x204:0x1d DW_TAG_subprogram
Lset37 = Lstring49-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset37
Lset38 = Lstring41-Lsection_str         ## DW_AT_name
	.long	Lset38
	.byte	2                       ## DW_AT_decl_file
	.byte	86                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_virtuality
	.byte	2                       ## DW_AT_vtable_elem_location
	.byte	16
	.byte	3
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.long	414                     ## DW_AT_containing_type
	.byte	12                      ## Abbrev [12] 0x21a:0x6 DW_TAG_formal_parameter
	.long	2243                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	16                      ## Abbrev [16] 0x221:0x17 DW_TAG_enumeration_type
	.byte	1                       ## DW_AT_byte_size
	.byte	2                       ## DW_AT_decl_file
	.byte	76                      ## DW_AT_decl_line
	.byte	8                       ## Abbrev [8] 0x225:0x6 DW_TAG_enumerator
Lset39 = Lstring82-Lsection_str         ## DW_AT_name
	.long	Lset39
	.byte	10                      ## DW_AT_const_value
	.byte	8                       ## Abbrev [8] 0x22b:0x6 DW_TAG_enumerator
Lset40 = Lstring83-Lsection_str         ## DW_AT_name
	.long	Lset40
	.byte	10                      ## DW_AT_const_value
	.byte	8                       ## Abbrev [8] 0x231:0x6 DW_TAG_enumerator
Lset41 = Lstring84-Lsection_str         ## DW_AT_name
	.long	Lset41
	.byte	1                       ## DW_AT_const_value
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	9                       ## Abbrev [9] 0x239:0xce DW_TAG_class_type
	.long	569                     ## DW_AT_containing_type
Lset42 = Lstring51-Lsection_str         ## DW_AT_name
	.long	Lset42
	.byte	48                      ## DW_AT_byte_size
	.byte	2                       ## DW_AT_decl_file
	.byte	35                      ## DW_AT_decl_line
	.byte	17                      ## Abbrev [17] 0x245:0xd DW_TAG_member
Lset43 = Lstring3-Lsection_str          ## DW_AT_name
	.long	Lset43
	.long	59                      ## DW_AT_type
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	18                      ## Abbrev [18] 0x252:0xf DW_TAG_member
Lset44 = Lstring6-Lsection_str          ## DW_AT_name
	.long	Lset44
	.long	71                      ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	40                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	2                       ## DW_AT_accessibility
                                        ## DW_ACCESS_protected
	.byte	18                      ## Abbrev [18] 0x261:0xf DW_TAG_member
Lset45 = Lstring13-Lsection_str         ## DW_AT_name
	.long	Lset45
	.long	2193                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	42                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	2                       ## DW_AT_accessibility
                                        ## DW_ACCESS_protected
	.byte	18                      ## Abbrev [18] 0x270:0xf DW_TAG_member
Lset46 = Lstring17-Lsection_str         ## DW_AT_name
	.long	Lset46
	.long	2205                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	44                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	24
	.byte	2                       ## DW_AT_accessibility
                                        ## DW_ACCESS_protected
	.byte	18                      ## Abbrev [18] 0x27f:0xf DW_TAG_member
Lset47 = Lstring18-Lsection_str         ## DW_AT_name
	.long	Lset47
	.long	2509                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	46                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	32
	.byte	2                       ## DW_AT_accessibility
                                        ## DW_ACCESS_protected
	.byte	18                      ## Abbrev [18] 0x28e:0xf DW_TAG_member
Lset48 = Lstring50-Lsection_str         ## DW_AT_name
	.long	Lset48
	.long	2205                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	47                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	40
	.byte	2                       ## DW_AT_accessibility
                                        ## DW_ACCESS_protected
	.byte	11                      ## Abbrev [11] 0x29d:0x11 DW_TAG_subprogram
Lset49 = Lstring51-Lsection_str         ## DW_AT_name
	.long	Lset49
	.byte	2                       ## DW_AT_decl_file
	.byte	51                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	12                      ## Abbrev [12] 0x2a7:0x6 DW_TAG_formal_parameter
	.long	2514                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	14                      ## Abbrev [14] 0x2ae:0x19 DW_TAG_subprogram
Lset50 = Lstring52-Lsection_str         ## DW_AT_name
	.long	Lset50
	.byte	2                       ## DW_AT_decl_file
	.byte	52                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_virtuality
	.byte	2                       ## DW_AT_vtable_elem_location
	.byte	16
	.byte	0
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.long	569                     ## DW_AT_containing_type
	.byte	12                      ## Abbrev [12] 0x2c0:0x6 DW_TAG_formal_parameter
	.long	2514                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	15                      ## Abbrev [15] 0x2c7:0x1d DW_TAG_subprogram
Lset51 = Lstring53-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset51
Lset52 = Lstring39-Lsection_str         ## DW_AT_name
	.long	Lset52
	.byte	2                       ## DW_AT_decl_file
	.byte	54                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_virtuality
	.byte	2                       ## DW_AT_vtable_elem_location
	.byte	16
	.byte	2
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.long	569                     ## DW_AT_containing_type
	.byte	12                      ## Abbrev [12] 0x2dd:0x6 DW_TAG_formal_parameter
	.long	2514                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	15                      ## Abbrev [15] 0x2e4:0x1d DW_TAG_subprogram
Lset53 = Lstring54-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset53
Lset54 = Lstring41-Lsection_str         ## DW_AT_name
	.long	Lset54
	.byte	2                       ## DW_AT_decl_file
	.byte	55                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_virtuality
	.byte	2                       ## DW_AT_vtable_elem_location
	.byte	16
	.byte	3
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.long	569                     ## DW_AT_containing_type
	.byte	12                      ## Abbrev [12] 0x2fa:0x6 DW_TAG_formal_parameter
	.long	2514                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	19                      ## Abbrev [19] 0x301:0x5 DW_TAG_friend
	.long	2255                    ## DW_AT_friend
	.byte	0                       ## End Of Children Mark
	.byte	9                       ## Abbrev [9] 0x307:0x9b DW_TAG_class_type
	.long	569                     ## DW_AT_containing_type
Lset55 = Lstring58-Lsection_str         ## DW_AT_name
	.long	Lset55
	.byte	48                      ## DW_AT_byte_size
	.byte	2                       ## DW_AT_decl_file
	.byte	59                      ## DW_AT_decl_line
	.byte	10                      ## Abbrev [10] 0x313:0x9 DW_TAG_inheritance
	.long	569                     ## DW_AT_type
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	20                      ## Abbrev [20] 0x31c:0x1b DW_TAG_subprogram
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
Lset56 = Lstring58-Lsection_str         ## DW_AT_name
	.long	Lset56
	.byte	2                       ## DW_AT_decl_file
	.byte	67                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	12                      ## Abbrev [12] 0x326:0x6 DW_TAG_formal_parameter
	.long	2519                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	13                      ## Abbrev [13] 0x32c:0x5 DW_TAG_formal_parameter
	.long	2509                    ## DW_AT_type
	.byte	13                      ## Abbrev [13] 0x331:0x5 DW_TAG_formal_parameter
	.long	2193                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	14                      ## Abbrev [14] 0x337:0x19 DW_TAG_subprogram
Lset57 = Lstring55-Lsection_str         ## DW_AT_name
	.long	Lset57
	.byte	2                       ## DW_AT_decl_file
	.byte	68                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_virtuality
	.byte	2                       ## DW_AT_vtable_elem_location
	.byte	16
	.byte	0
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.long	775                     ## DW_AT_containing_type
	.byte	12                      ## Abbrev [12] 0x349:0x6 DW_TAG_formal_parameter
	.long	2519                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	15                      ## Abbrev [15] 0x350:0x1d DW_TAG_subprogram
Lset58 = Lstring56-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset58
Lset59 = Lstring39-Lsection_str         ## DW_AT_name
	.long	Lset59
	.byte	2                       ## DW_AT_decl_file
	.byte	70                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_virtuality
	.byte	2                       ## DW_AT_vtable_elem_location
	.byte	16
	.byte	2
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.long	775                     ## DW_AT_containing_type
	.byte	12                      ## Abbrev [12] 0x366:0x6 DW_TAG_formal_parameter
	.long	2519                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	15                      ## Abbrev [15] 0x36d:0x1d DW_TAG_subprogram
Lset60 = Lstring57-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset60
Lset61 = Lstring41-Lsection_str         ## DW_AT_name
	.long	Lset61
	.byte	2                       ## DW_AT_decl_file
	.byte	71                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_virtuality
	.byte	2                       ## DW_AT_vtable_elem_location
	.byte	16
	.byte	3
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.long	775                     ## DW_AT_containing_type
	.byte	12                      ## Abbrev [12] 0x383:0x6 DW_TAG_formal_parameter
	.long	2519                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	16                      ## Abbrev [16] 0x38a:0x17 DW_TAG_enumeration_type
	.byte	1                       ## DW_AT_byte_size
	.byte	2                       ## DW_AT_decl_file
	.byte	61                      ## DW_AT_decl_line
	.byte	8                       ## Abbrev [8] 0x38e:0x6 DW_TAG_enumerator
Lset62 = Lstring82-Lsection_str         ## DW_AT_name
	.long	Lset62
	.byte	12                      ## DW_AT_const_value
	.byte	8                       ## Abbrev [8] 0x394:0x6 DW_TAG_enumerator
Lset63 = Lstring83-Lsection_str         ## DW_AT_name
	.long	Lset63
	.byte	10                      ## DW_AT_const_value
	.byte	8                       ## Abbrev [8] 0x39a:0x6 DW_TAG_enumerator
Lset64 = Lstring84-Lsection_str         ## DW_AT_name
	.long	Lset64
	.byte	0                       ## DW_AT_const_value
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x3a2:0x48 DW_TAG_subprogram
Lset65 = Lstring59-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset65
	.long	796                     ## DW_AT_specification
	.quad	Lfunc_begin0            ## DW_AT_low_pc
	.quad	Lfunc_end0              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x3be:0xf DW_TAG_formal_parameter
Lset66 = Lstring85-Lsection_str         ## DW_AT_name
	.long	Lset66
	.byte	1                       ## DW_AT_decl_file
	.byte	32                      ## DW_AT_decl_line
	.long	2697                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	16
	.byte	23                      ## Abbrev [23] 0x3cd:0xe DW_TAG_formal_parameter
Lset67 = Lstring86-Lsection_str         ## DW_AT_name
	.long	Lset67
	.byte	1                       ## DW_AT_decl_file
	.byte	32                      ## DW_AT_decl_line
	.long	2509                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	8
	.byte	23                      ## Abbrev [23] 0x3db:0xe DW_TAG_formal_parameter
Lset68 = Lstring87-Lsection_str         ## DW_AT_name
	.long	Lset68
	.byte	1                       ## DW_AT_decl_file
	.byte	32                      ## DW_AT_decl_line
	.long	2193                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x3ea:0x48 DW_TAG_subprogram
Lset69 = Lstring60-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset69
	.long	796                     ## DW_AT_specification
	.quad	Lfunc_begin1            ## DW_AT_low_pc
	.quad	Lfunc_end1              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x406:0xf DW_TAG_formal_parameter
Lset70 = Lstring85-Lsection_str         ## DW_AT_name
	.long	Lset70
	.byte	1                       ## DW_AT_decl_file
	.byte	32                      ## DW_AT_decl_line
	.long	2697                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	32
	.byte	23                      ## Abbrev [23] 0x415:0xe DW_TAG_formal_parameter
Lset71 = Lstring86-Lsection_str         ## DW_AT_name
	.long	Lset71
	.byte	1                       ## DW_AT_decl_file
	.byte	32                      ## DW_AT_decl_line
	.long	2509                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	24
	.byte	23                      ## Abbrev [23] 0x423:0xe DW_TAG_formal_parameter
Lset72 = Lstring87-Lsection_str         ## DW_AT_name
	.long	Lset72
	.byte	1                       ## DW_AT_decl_file
	.byte	32                      ## DW_AT_decl_line
	.long	2193                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	16
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x432:0x48 DW_TAG_subprogram
Lset73 = Lstring61-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset73
	.long	435                     ## DW_AT_specification
	.quad	Lfunc_begin3            ## DW_AT_low_pc
	.quad	Lfunc_end3              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x44e:0xf DW_TAG_formal_parameter
Lset74 = Lstring85-Lsection_str         ## DW_AT_name
	.long	Lset74
	.byte	1                       ## DW_AT_decl_file
	.byte	33                      ## DW_AT_decl_line
	.long	2702                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	16
	.byte	23                      ## Abbrev [23] 0x45d:0xe DW_TAG_formal_parameter
Lset75 = Lstring86-Lsection_str         ## DW_AT_name
	.long	Lset75
	.byte	1                       ## DW_AT_decl_file
	.byte	33                      ## DW_AT_decl_line
	.long	2509                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	8
	.byte	23                      ## Abbrev [23] 0x46b:0xe DW_TAG_formal_parameter
Lset76 = Lstring87-Lsection_str         ## DW_AT_name
	.long	Lset76
	.byte	1                       ## DW_AT_decl_file
	.byte	33                      ## DW_AT_decl_line
	.long	2193                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x47a:0x48 DW_TAG_subprogram
Lset77 = Lstring62-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset77
	.long	435                     ## DW_AT_specification
	.quad	Lfunc_begin4            ## DW_AT_low_pc
	.quad	Lfunc_end4              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x496:0xf DW_TAG_formal_parameter
Lset78 = Lstring85-Lsection_str         ## DW_AT_name
	.long	Lset78
	.byte	1                       ## DW_AT_decl_file
	.byte	33                      ## DW_AT_decl_line
	.long	2702                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	32
	.byte	23                      ## Abbrev [23] 0x4a5:0xe DW_TAG_formal_parameter
Lset79 = Lstring86-Lsection_str         ## DW_AT_name
	.long	Lset79
	.byte	1                       ## DW_AT_decl_file
	.byte	33                      ## DW_AT_decl_line
	.long	2509                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	24
	.byte	23                      ## Abbrev [23] 0x4b3:0xe DW_TAG_formal_parameter
Lset80 = Lstring87-Lsection_str         ## DW_AT_name
	.long	Lset80
	.byte	1                       ## DW_AT_decl_file
	.byte	33                      ## DW_AT_decl_line
	.long	2193                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	16
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x4c2:0x48 DW_TAG_subprogram
Lset81 = Lstring63-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset81
	.long	280                     ## DW_AT_specification
	.quad	Lfunc_begin5            ## DW_AT_low_pc
	.quad	Lfunc_end5              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x4de:0xf DW_TAG_formal_parameter
Lset82 = Lstring85-Lsection_str         ## DW_AT_name
	.long	Lset82
	.byte	1                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.long	2707                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	16
	.byte	23                      ## Abbrev [23] 0x4ed:0xe DW_TAG_formal_parameter
Lset83 = Lstring86-Lsection_str         ## DW_AT_name
	.long	Lset83
	.byte	1                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.long	2509                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	8
	.byte	23                      ## Abbrev [23] 0x4fb:0xe DW_TAG_formal_parameter
Lset84 = Lstring87-Lsection_str         ## DW_AT_name
	.long	Lset84
	.byte	1                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.long	2193                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x50a:0x48 DW_TAG_subprogram
Lset85 = Lstring64-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset85
	.long	280                     ## DW_AT_specification
	.quad	Lfunc_begin6            ## DW_AT_low_pc
	.quad	Lfunc_end6              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x526:0xf DW_TAG_formal_parameter
Lset86 = Lstring85-Lsection_str         ## DW_AT_name
	.long	Lset86
	.byte	1                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.long	2707                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	32
	.byte	23                      ## Abbrev [23] 0x535:0xe DW_TAG_formal_parameter
Lset87 = Lstring86-Lsection_str         ## DW_AT_name
	.long	Lset87
	.byte	1                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.long	2509                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	24
	.byte	23                      ## Abbrev [23] 0x543:0xe DW_TAG_formal_parameter
Lset88 = Lstring87-Lsection_str         ## DW_AT_name
	.long	Lset88
	.byte	1                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.long	2193                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	16
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x552:0x48 DW_TAG_subprogram
Lset89 = Lstring65-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset89
	.long	125                     ## DW_AT_specification
	.quad	Lfunc_begin7            ## DW_AT_low_pc
	.quad	Lfunc_end7              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x56e:0xf DW_TAG_formal_parameter
Lset90 = Lstring85-Lsection_str         ## DW_AT_name
	.long	Lset90
	.byte	1                       ## DW_AT_decl_file
	.byte	35                      ## DW_AT_decl_line
	.long	2712                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	16
	.byte	23                      ## Abbrev [23] 0x57d:0xe DW_TAG_formal_parameter
Lset91 = Lstring86-Lsection_str         ## DW_AT_name
	.long	Lset91
	.byte	1                       ## DW_AT_decl_file
	.byte	35                      ## DW_AT_decl_line
	.long	2509                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	8
	.byte	23                      ## Abbrev [23] 0x58b:0xe DW_TAG_formal_parameter
Lset92 = Lstring87-Lsection_str         ## DW_AT_name
	.long	Lset92
	.byte	1                       ## DW_AT_decl_file
	.byte	35                      ## DW_AT_decl_line
	.long	2193                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x59a:0x48 DW_TAG_subprogram
Lset93 = Lstring66-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset93
	.long	125                     ## DW_AT_specification
	.quad	Lfunc_begin8            ## DW_AT_low_pc
	.quad	Lfunc_end8              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x5b6:0xf DW_TAG_formal_parameter
Lset94 = Lstring85-Lsection_str         ## DW_AT_name
	.long	Lset94
	.byte	1                       ## DW_AT_decl_file
	.byte	35                      ## DW_AT_decl_line
	.long	2712                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	32
	.byte	23                      ## Abbrev [23] 0x5c5:0xe DW_TAG_formal_parameter
Lset95 = Lstring86-Lsection_str         ## DW_AT_name
	.long	Lset95
	.byte	1                       ## DW_AT_decl_file
	.byte	35                      ## DW_AT_decl_line
	.long	2509                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	24
	.byte	23                      ## Abbrev [23] 0x5d3:0xe DW_TAG_formal_parameter
Lset96 = Lstring87-Lsection_str         ## DW_AT_name
	.long	Lset96
	.byte	1                       ## DW_AT_decl_file
	.byte	35                      ## DW_AT_decl_line
	.long	2193                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	16
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x5e2:0x2c DW_TAG_subprogram
Lset97 = Lstring56-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset97
	.long	848                     ## DW_AT_specification
	.quad	Lfunc_begin9            ## DW_AT_low_pc
	.quad	Lfunc_end9              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x5fe:0xf DW_TAG_formal_parameter
Lset98 = Lstring85-Lsection_str         ## DW_AT_name
	.long	Lset98
	.byte	1                       ## DW_AT_decl_file
	.byte	41                      ## DW_AT_decl_line
	.long	2697                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	16
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x60e:0x6c DW_TAG_subprogram
Lset99 = Lstring57-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset99
	.long	877                     ## DW_AT_specification
	.quad	Lfunc_begin11           ## DW_AT_low_pc
	.quad	Lfunc_end11             ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x62a:0xf DW_TAG_formal_parameter
Lset100 = Lstring85-Lsection_str        ## DW_AT_name
	.long	Lset100
	.byte	1                       ## DW_AT_decl_file
	.byte	46                      ## DW_AT_decl_line
	.long	2697                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	16
	.byte	24                      ## Abbrev [24] 0x639:0x40 DW_TAG_lexical_block
	.quad	Ltmp50                  ## DW_AT_low_pc
	.quad	Ltmp55                  ## DW_AT_high_pc
	.byte	25                      ## Abbrev [25] 0x64a:0xe DW_TAG_variable
Lset101 = Lstring90-Lsection_str        ## DW_AT_name
	.long	Lset101
	.byte	1                       ## DW_AT_decl_file
	.byte	47                      ## DW_AT_decl_line
	.long	2193                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	8
	.byte	24                      ## Abbrev [24] 0x658:0x20 DW_TAG_lexical_block
	.quad	Ltmp51                  ## DW_AT_low_pc
	.quad	Ltmp54                  ## DW_AT_high_pc
	.byte	25                      ## Abbrev [25] 0x669:0xe DW_TAG_variable
Lset102 = Lstring91-Lsection_str        ## DW_AT_name
	.long	Lset102
	.byte	1                       ## DW_AT_decl_file
	.byte	48                      ## DW_AT_decl_line
	.long	2550                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	4
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x67a:0x2c DW_TAG_subprogram
Lset103 = Lstring48-Lsection_str        ## DW_AT_MIPS_linkage_name
	.long	Lset103
	.long	487                     ## DW_AT_specification
	.quad	Lfunc_begin12           ## DW_AT_low_pc
	.quad	Lfunc_end12             ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x696:0xf DW_TAG_formal_parameter
Lset104 = Lstring85-Lsection_str        ## DW_AT_name
	.long	Lset104
	.byte	1                       ## DW_AT_decl_file
	.byte	53                      ## DW_AT_decl_line
	.long	2702                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	16
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x6a6:0x6c DW_TAG_subprogram
Lset105 = Lstring49-Lsection_str        ## DW_AT_MIPS_linkage_name
	.long	Lset105
	.long	516                     ## DW_AT_specification
	.quad	Lfunc_begin13           ## DW_AT_low_pc
	.quad	Lfunc_end13             ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x6c2:0xf DW_TAG_formal_parameter
Lset106 = Lstring85-Lsection_str        ## DW_AT_name
	.long	Lset106
	.byte	1                       ## DW_AT_decl_file
	.byte	58                      ## DW_AT_decl_line
	.long	2702                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	16
	.byte	24                      ## Abbrev [24] 0x6d1:0x40 DW_TAG_lexical_block
	.quad	Ltmp62                  ## DW_AT_low_pc
	.quad	Ltmp67                  ## DW_AT_high_pc
	.byte	25                      ## Abbrev [25] 0x6e2:0xe DW_TAG_variable
Lset107 = Lstring90-Lsection_str        ## DW_AT_name
	.long	Lset107
	.byte	1                       ## DW_AT_decl_file
	.byte	59                      ## DW_AT_decl_line
	.long	2193                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	8
	.byte	24                      ## Abbrev [24] 0x6f0:0x20 DW_TAG_lexical_block
	.quad	Ltmp63                  ## DW_AT_low_pc
	.quad	Ltmp66                  ## DW_AT_high_pc
	.byte	25                      ## Abbrev [25] 0x701:0xe DW_TAG_variable
Lset108 = Lstring91-Lsection_str        ## DW_AT_name
	.long	Lset108
	.byte	1                       ## DW_AT_decl_file
	.byte	60                      ## DW_AT_decl_line
	.long	2550                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	4
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x712:0x2c DW_TAG_subprogram
Lset109 = Lstring44-Lsection_str        ## DW_AT_MIPS_linkage_name
	.long	Lset109
	.long	332                     ## DW_AT_specification
	.quad	Lfunc_begin14           ## DW_AT_low_pc
	.quad	Lfunc_end14             ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x72e:0xf DW_TAG_formal_parameter
Lset110 = Lstring85-Lsection_str        ## DW_AT_name
	.long	Lset110
	.byte	1                       ## DW_AT_decl_file
	.byte	65                      ## DW_AT_decl_line
	.long	2707                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x73e:0x2c DW_TAG_subprogram
Lset111 = Lstring45-Lsection_str        ## DW_AT_MIPS_linkage_name
	.long	Lset111
	.long	361                     ## DW_AT_specification
	.quad	Lfunc_begin15           ## DW_AT_low_pc
	.quad	Lfunc_end15             ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x75a:0xf DW_TAG_formal_parameter
Lset112 = Lstring85-Lsection_str        ## DW_AT_name
	.long	Lset112
	.byte	1                       ## DW_AT_decl_file
	.byte	69                      ## DW_AT_decl_line
	.long	2707                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x76a:0x2c DW_TAG_subprogram
Lset113 = Lstring38-Lsection_str        ## DW_AT_MIPS_linkage_name
	.long	Lset113
	.long	177                     ## DW_AT_specification
	.quad	Lfunc_begin16           ## DW_AT_low_pc
	.quad	Lfunc_end16             ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x786:0xf DW_TAG_formal_parameter
Lset114 = Lstring85-Lsection_str        ## DW_AT_name
	.long	Lset114
	.byte	1                       ## DW_AT_decl_file
	.byte	73                      ## DW_AT_decl_line
	.long	2712                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x796:0x2c DW_TAG_subprogram
Lset115 = Lstring40-Lsection_str        ## DW_AT_MIPS_linkage_name
	.long	Lset115
	.long	206                     ## DW_AT_specification
	.quad	Lfunc_begin17           ## DW_AT_low_pc
	.quad	Lfunc_end17             ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x7b2:0xf DW_TAG_formal_parameter
Lset116 = Lstring85-Lsection_str        ## DW_AT_name
	.long	Lset116
	.byte	1                       ## DW_AT_decl_file
	.byte	77                      ## DW_AT_decl_line
	.long	2712                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x7c2:0x2c DW_TAG_subprogram
Lset117 = Lstring78-Lsection_str        ## DW_AT_MIPS_linkage_name
	.long	Lset117
	.long	669                     ## DW_AT_specification
	.quad	Lfunc_begin2            ## DW_AT_low_pc
	.quad	Lfunc_end2              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x7de:0xf DW_TAG_formal_parameter
Lset118 = Lstring85-Lsection_str        ## DW_AT_name
	.long	Lset118
	.byte	2                       ## DW_AT_decl_file
	.byte	51                      ## DW_AT_decl_line
	.long	2205                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x7ee:0x2c DW_TAG_subprogram
Lset119 = Lstring79-Lsection_str        ## DW_AT_MIPS_linkage_name
	.long	Lset119
	.long	686                     ## DW_AT_specification
	.quad	Lfunc_begin19           ## DW_AT_low_pc
	.quad	Lfunc_end19             ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x80a:0xf DW_TAG_formal_parameter
Lset120 = Lstring85-Lsection_str        ## DW_AT_name
	.long	Lset120
	.byte	2                       ## DW_AT_decl_file
	.byte	52                      ## DW_AT_decl_line
	.long	2205                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	16
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x81a:0x2c DW_TAG_subprogram
Lset121 = Lstring80-Lsection_str        ## DW_AT_MIPS_linkage_name
	.long	Lset121
	.long	686                     ## DW_AT_specification
	.quad	Lfunc_begin18           ## DW_AT_low_pc
	.quad	Lfunc_end18             ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x836:0xf DW_TAG_formal_parameter
Lset122 = Lstring85-Lsection_str        ## DW_AT_name
	.long	Lset122
	.byte	2                       ## DW_AT_decl_file
	.byte	52                      ## DW_AT_decl_line
	.long	2205                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x846:0x2c DW_TAG_subprogram
Lset123 = Lstring81-Lsection_str        ## DW_AT_MIPS_linkage_name
	.long	Lset123
	.long	686                     ## DW_AT_specification
	.quad	Lfunc_begin20           ## DW_AT_low_pc
	.quad	Lfunc_end20             ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	22                      ## Abbrev [22] 0x862:0xf DW_TAG_formal_parameter
Lset124 = Lstring85-Lsection_str        ## DW_AT_name
	.long	Lset124
	.byte	2                       ## DW_AT_decl_file
	.byte	52                      ## DW_AT_decl_line
	.long	2205                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	2                       ## Abbrev [2] 0x873:0x7 DW_TAG_base_type
Lset125 = Lstring14-Lsection_str        ## DW_AT_name
	.long	Lset125
	.byte	8                       ## DW_AT_encoding
	.byte	1                       ## DW_AT_byte_size
	.byte	26                      ## Abbrev [26] 0x87a:0xb DW_TAG_typedef
	.long	2163                    ## DW_AT_type
Lset126 = Lstring15-Lsection_str        ## DW_AT_name
	.long	Lset126
	.byte	2                       ## DW_AT_decl_file
	.byte	40                      ## DW_AT_decl_line
	.byte	5                       ## Abbrev [5] 0x885:0x5 DW_TAG_pointer_type
	.long	2170                    ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x88a:0x13 DW_TAG_namespace
Lset127 = Lstring12-Lsection_str        ## DW_AT_name
	.long	Lset127
	.byte	3                       ## DW_AT_decl_file
	.byte	16                      ## DW_AT_decl_line
	.byte	26                      ## Abbrev [26] 0x891:0xb DW_TAG_typedef
	.long	2181                    ## DW_AT_type
Lset128 = Lstring16-Lsection_str        ## DW_AT_name
	.long	Lset128
	.byte	2                       ## DW_AT_decl_file
	.byte	19                      ## DW_AT_decl_line
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0x89d:0x5 DW_TAG_pointer_type
	.long	569                     ## DW_AT_type
	.byte	2                       ## Abbrev [2] 0x8a2:0x7 DW_TAG_base_type
Lset129 = Lstring20-Lsection_str        ## DW_AT_name
	.long	Lset129
	.byte	2                       ## DW_AT_encoding
	.byte	1                       ## DW_AT_byte_size
	.byte	5                       ## Abbrev [5] 0x8a9:0x5 DW_TAG_pointer_type
	.long	2255                    ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x8ae:0x6 DW_TAG_class_type
Lset130 = Lstring29-Lsection_str        ## DW_AT_name
	.long	Lset130
	.byte	1                       ## DW_AT_declaration
	.byte	5                       ## Abbrev [5] 0x8b4:0x5 DW_TAG_pointer_type
	.long	2222                    ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x8b9:0x5 DW_TAG_pointer_type
	.long	104                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x8be:0x5 DW_TAG_pointer_type
	.long	259                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x8c3:0x5 DW_TAG_pointer_type
	.long	414                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x8c8:0x105 DW_TAG_namespace
Lset131 = Lstring12-Lsection_str        ## DW_AT_name
	.long	Lset131
	.byte	4                       ## DW_AT_decl_file
	.byte	14                      ## DW_AT_decl_line
	.byte	28                      ## Abbrev [28] 0x8cf:0xfd DW_TAG_class_type
Lset132 = Lstring23-Lsection_str        ## DW_AT_name
	.long	Lset132
	.byte	32                      ## DW_AT_byte_size
	.byte	4                       ## DW_AT_decl_file
	.byte	25                      ## DW_AT_decl_line
	.byte	18                      ## Abbrev [18] 0x8d7:0xf DW_TAG_member
Lset133 = Lstring19-Lsection_str        ## DW_AT_name
	.long	Lset133
	.long	2210                    ## DW_AT_type
	.byte	4                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	2                       ## DW_AT_accessibility
                                        ## DW_ACCESS_protected
	.byte	18                      ## Abbrev [18] 0x8e6:0xf DW_TAG_member
Lset134 = Lstring13-Lsection_str        ## DW_AT_name
	.long	Lset134
	.long	2193                    ## DW_AT_type
	.byte	4                       ## DW_AT_decl_file
	.byte	37                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	2                       ## DW_AT_accessibility
                                        ## DW_ACCESS_protected
	.byte	18                      ## Abbrev [18] 0x8f5:0xf DW_TAG_member
Lset135 = Lstring21-Lsection_str        ## DW_AT_name
	.long	Lset135
	.long	2193                    ## DW_AT_type
	.byte	4                       ## DW_AT_decl_file
	.byte	38                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	2                       ## DW_AT_accessibility
                                        ## DW_ACCESS_protected
	.byte	18                      ## Abbrev [18] 0x904:0xf DW_TAG_member
Lset136 = Lstring22-Lsection_str        ## DW_AT_name
	.long	Lset136
	.long	2205                    ## DW_AT_type
	.byte	4                       ## DW_AT_decl_file
	.byte	41                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	24
	.byte	2                       ## DW_AT_accessibility
                                        ## DW_ACCESS_protected
	.byte	11                      ## Abbrev [11] 0x913:0x11 DW_TAG_subprogram
Lset137 = Lstring23-Lsection_str        ## DW_AT_name
	.long	Lset137
	.byte	4                       ## DW_AT_decl_file
	.byte	45                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	12                      ## Abbrev [12] 0x91d:0x6 DW_TAG_formal_parameter
	.long	2217                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	11                      ## Abbrev [11] 0x924:0x11 DW_TAG_subprogram
Lset138 = Lstring24-Lsection_str        ## DW_AT_name
	.long	Lset138
	.byte	4                       ## DW_AT_decl_file
	.byte	46                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	12                      ## Abbrev [12] 0x92e:0x6 DW_TAG_formal_parameter
	.long	2217                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	29                      ## Abbrev [29] 0x935:0x1a DW_TAG_subprogram
Lset139 = Lstring25-Lsection_str        ## DW_AT_MIPS_linkage_name
	.long	Lset139
Lset140 = Lstring26-Lsection_str        ## DW_AT_name
	.long	Lset140
	.byte	4                       ## DW_AT_decl_file
	.byte	48                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	12                      ## Abbrev [12] 0x943:0x6 DW_TAG_formal_parameter
	.long	2217                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	13                      ## Abbrev [13] 0x949:0x5 DW_TAG_formal_parameter
	.long	2205                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	29                      ## Abbrev [29] 0x94f:0x1a DW_TAG_subprogram
Lset141 = Lstring27-Lsection_str        ## DW_AT_MIPS_linkage_name
	.long	Lset141
Lset142 = Lstring28-Lsection_str        ## DW_AT_name
	.long	Lset142
	.byte	4                       ## DW_AT_decl_file
	.byte	50                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	12                      ## Abbrev [12] 0x95d:0x6 DW_TAG_formal_parameter
	.long	2217                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	13                      ## Abbrev [13] 0x963:0x5 DW_TAG_formal_parameter
	.long	2228                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	29                      ## Abbrev [29] 0x969:0x1a DW_TAG_subprogram
Lset143 = Lstring30-Lsection_str        ## DW_AT_MIPS_linkage_name
	.long	Lset143
Lset144 = Lstring31-Lsection_str        ## DW_AT_name
	.long	Lset144
	.byte	4                       ## DW_AT_decl_file
	.byte	51                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	12                      ## Abbrev [12] 0x977:0x6 DW_TAG_formal_parameter
	.long	2217                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	13                      ## Abbrev [13] 0x97d:0x5 DW_TAG_formal_parameter
	.long	2228                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	29                      ## Abbrev [29] 0x983:0x1a DW_TAG_subprogram
Lset145 = Lstring32-Lsection_str        ## DW_AT_MIPS_linkage_name
	.long	Lset145
Lset146 = Lstring33-Lsection_str        ## DW_AT_name
	.long	Lset146
	.byte	4                       ## DW_AT_decl_file
	.byte	52                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	12                      ## Abbrev [12] 0x991:0x6 DW_TAG_formal_parameter
	.long	2217                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	13                      ## Abbrev [13] 0x997:0x5 DW_TAG_formal_parameter
	.long	2228                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	29                      ## Abbrev [29] 0x99d:0x1a DW_TAG_subprogram
Lset147 = Lstring34-Lsection_str        ## DW_AT_MIPS_linkage_name
	.long	Lset147
Lset148 = Lstring35-Lsection_str        ## DW_AT_name
	.long	Lset148
	.byte	4                       ## DW_AT_decl_file
	.byte	53                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	12                      ## Abbrev [12] 0x9ab:0x6 DW_TAG_formal_parameter
	.long	2217                    ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	13                      ## Abbrev [13] 0x9b1:0x5 DW_TAG_formal_parameter
	.long	2228                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	19                      ## Abbrev [19] 0x9b7:0x5 DW_TAG_friend
	.long	104                     ## DW_AT_friend
	.byte	19                      ## Abbrev [19] 0x9bc:0x5 DW_TAG_friend
	.long	259                     ## DW_AT_friend
	.byte	19                      ## Abbrev [19] 0x9c1:0x5 DW_TAG_friend
	.long	414                     ## DW_AT_friend
	.byte	19                      ## Abbrev [19] 0x9c6:0x5 DW_TAG_friend
	.long	775                     ## DW_AT_friend
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0x9cd:0x5 DW_TAG_pointer_type
	.long	2255                    ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x9d2:0x5 DW_TAG_pointer_type
	.long	569                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x9d7:0x5 DW_TAG_pointer_type
	.long	775                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x9dc:0x1a DW_TAG_namespace
Lset149 = Lstring12-Lsection_str        ## DW_AT_name
	.long	Lset149
	.byte	1                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.byte	30                      ## Abbrev [30] 0x9e3:0x12 DW_TAG_subprogram
Lset150 = Lstring67-Lsection_str        ## DW_AT_name
	.long	Lset150
	.byte	1                       ## DW_AT_decl_file
	.byte	37                      ## DW_AT_decl_line
	.long	2557                    ## DW_AT_type
	.byte	1                       ## DW_AT_declaration
	.byte	13                      ## Abbrev [13] 0x9ef:0x5 DW_TAG_formal_parameter
	.long	2509                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	2                       ## Abbrev [2] 0x9f6:0x7 DW_TAG_base_type
Lset151 = Lstring68-Lsection_str        ## DW_AT_name
	.long	Lset151
	.byte	7                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	26                      ## Abbrev [26] 0x9fd:0xb DW_TAG_typedef
	.long	2550                    ## DW_AT_type
Lset152 = Lstring69-Lsection_str        ## DW_AT_name
	.long	Lset152
	.byte	1                       ## DW_AT_decl_file
	.byte	50                      ## DW_AT_decl_line
	.byte	6                       ## Abbrev [6] 0xa08:0x73 DW_TAG_namespace
Lset153 = Lstring12-Lsection_str        ## DW_AT_name
	.long	Lset153
	.byte	5                       ## DW_AT_decl_file
	.byte	16                      ## DW_AT_decl_line
	.byte	31                      ## Abbrev [31] 0xa0f:0x2f DW_TAG_subprogram
Lset154 = Lstring73-Lsection_str        ## DW_AT_MIPS_linkage_name
	.long	Lset154
Lset155 = Lstring74-Lsection_str        ## DW_AT_name
	.long	Lset155
	.byte	5                       ## DW_AT_decl_file
	.byte	26                      ## DW_AT_decl_line
	.long	2683                    ## DW_AT_type
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_inline
	.byte	32                      ## Abbrev [32] 0xa20:0x9 DW_TAG_template_type_parameter
	.long	2683                    ## DW_AT_type
Lset156 = Lstring71-Lsection_str        ## DW_AT_name
	.long	Lset156
	.byte	32                      ## Abbrev [32] 0xa29:0x9 DW_TAG_template_type_parameter
	.long	2255                    ## DW_AT_type
Lset157 = Lstring72-Lsection_str        ## DW_AT_name
	.long	Lset157
	.byte	33                      ## Abbrev [33] 0xa32:0xb DW_TAG_formal_parameter
Lset158 = Lstring88-Lsection_str        ## DW_AT_name
	.long	Lset158
	.byte	5                       ## DW_AT_decl_file
	.byte	26                      ## DW_AT_decl_line
	.long	2509                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	31                      ## Abbrev [31] 0xa3e:0x3c DW_TAG_subprogram
Lset159 = Lstring76-Lsection_str        ## DW_AT_MIPS_linkage_name
	.long	Lset159
Lset160 = Lstring77-Lsection_str        ## DW_AT_name
	.long	Lset160
	.byte	5                       ## DW_AT_decl_file
	.byte	19                      ## DW_AT_decl_line
	.long	2683                    ## DW_AT_type
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_inline
	.byte	32                      ## Abbrev [32] 0xa4f:0x9 DW_TAG_template_type_parameter
	.long	2683                    ## DW_AT_type
Lset161 = Lstring71-Lsection_str        ## DW_AT_name
	.long	Lset161
	.byte	32                      ## Abbrev [32] 0xa58:0x9 DW_TAG_template_type_parameter
	.long	2690                    ## DW_AT_type
Lset162 = Lstring72-Lsection_str        ## DW_AT_name
	.long	Lset162
	.byte	33                      ## Abbrev [33] 0xa61:0xb DW_TAG_formal_parameter
Lset163 = Lstring88-Lsection_str        ## DW_AT_name
	.long	Lset163
	.byte	5                       ## DW_AT_decl_file
	.byte	19                      ## DW_AT_decl_line
	.long	2717                    ## DW_AT_type
	.byte	34                      ## Abbrev [34] 0xa6c:0xd DW_TAG_lexical_block
	.byte	35                      ## Abbrev [35] 0xa6d:0xb DW_TAG_variable
Lset164 = Lstring89-Lsection_str        ## DW_AT_name
	.long	Lset164
	.byte	5                       ## DW_AT_decl_file
	.byte	20                      ## DW_AT_decl_line
	.long	2683                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	2                       ## Abbrev [2] 0xa7b:0x7 DW_TAG_base_type
Lset165 = Lstring70-Lsection_str        ## DW_AT_name
	.long	Lset165
	.byte	7                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	2                       ## Abbrev [2] 0xa82:0x7 DW_TAG_base_type
Lset166 = Lstring75-Lsection_str        ## DW_AT_name
	.long	Lset166
	.byte	7                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	5                       ## Abbrev [5] 0xa89:0x5 DW_TAG_pointer_type
	.long	775                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0xa8e:0x5 DW_TAG_pointer_type
	.long	414                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0xa93:0x5 DW_TAG_pointer_type
	.long	259                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0xa98:0x5 DW_TAG_pointer_type
	.long	104                     ## DW_AT_type
	.byte	36                      ## Abbrev [36] 0xa9d:0x5 DW_TAG_reference_type
	.long	2690                    ## DW_AT_type
	.byte	37                      ## Abbrev [37] 0xaa2:0x81 DW_TAG_subprogram
	.long	2531                    ## DW_AT_specification
	.quad	Lfunc_begin10           ## DW_AT_low_pc
	.quad	Lfunc_end10             ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	87
	.byte	1                       ## DW_AT_APPLE_omit_frame_ptr
	.byte	23                      ## Abbrev [23] 0xaba:0xe DW_TAG_formal_parameter
Lset167 = Lstring18-Lsection_str        ## DW_AT_name
	.long	Lset167
	.byte	1                       ## DW_AT_decl_file
	.byte	37                      ## DW_AT_decl_line
	.long	2509                    ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	88
	.byte	24                      ## Abbrev [24] 0xac8:0x5a DW_TAG_lexical_block
	.quad	Ltmp43                  ## DW_AT_low_pc
	.quad	Ltmp47                  ## DW_AT_high_pc
	.byte	38                      ## Abbrev [38] 0xad9:0x48 DW_TAG_inlined_subroutine
	.long	2575                    ## DW_AT_abstract_origin
	.quad	Ltmp44                  ## DW_AT_low_pc
	.quad	Ltmp46                  ## DW_AT_high_pc
	.byte	1                       ## DW_AT_call_file
	.byte	38                      ## DW_AT_call_line
	.byte	39                      ## Abbrev [39] 0xaf0:0x8 DW_TAG_formal_parameter
	.long	2610                    ## DW_AT_abstract_origin
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	104
	.byte	38                      ## Abbrev [38] 0xaf8:0x28 DW_TAG_inlined_subroutine
	.long	2622                    ## DW_AT_abstract_origin
	.quad	Ltmp45                  ## DW_AT_low_pc
	.quad	Ltmp46                  ## DW_AT_high_pc
	.byte	5                       ## DW_AT_call_file
	.byte	27                      ## DW_AT_call_line
	.byte	39                      ## Abbrev [39] 0xb0f:0x8 DW_TAG_formal_parameter
	.long	2657                    ## DW_AT_abstract_origin
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.byte	40                      ## Abbrev [40] 0xb17:0x8 DW_TAG_variable
	.long	2669                    ## DW_AT_abstract_origin
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	112
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
Linfo_end1:
	.section	__DWARF,__debug_abbrev,regular,debug
Labbrev_begin:
	.byte	1                       ## Abbreviation Code
	.byte	17                      ## DW_TAG_compile_unit
	.byte	1                       ## DW_CHILDREN_yes
	.byte	37                      ## DW_AT_producer
	.byte	14                      ## DW_FORM_strp
	.byte	19                      ## DW_AT_language
	.byte	5                       ## DW_FORM_data2
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	16                      ## DW_AT_stmt_list
	.byte	6                       ## DW_FORM_data4
	.byte	27                      ## DW_AT_comp_dir
	.byte	14                      ## DW_FORM_strp
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	2                       ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	3                       ## Abbreviation Code
	.byte	21                      ## DW_TAG_subroutine_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	4                       ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	5                       ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	6                       ## Abbreviation Code
	.byte	57                      ## DW_TAG_namespace
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	7                       ## Abbreviation Code
	.byte	4                       ## DW_TAG_enumeration_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	8                       ## Abbreviation Code
	.byte	40                      ## DW_TAG_enumerator
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	28                      ## DW_AT_const_value
	.byte	13                      ## DW_FORM_sdata
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	9                       ## Abbreviation Code
	.byte	2                       ## DW_TAG_class_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	29                      ## DW_AT_containing_type
	.byte	19                      ## DW_FORM_ref4
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	10                      ## Abbreviation Code
	.byte	28                      ## DW_TAG_inheritance
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	56                      ## DW_AT_data_member_location
	.byte	10                      ## DW_FORM_block1
	.byte	50                      ## DW_AT_accessibility
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	11                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	60                      ## DW_AT_declaration
	.byte	12                      ## DW_FORM_flag
	.byte	63                      ## DW_AT_external
	.byte	12                      ## DW_FORM_flag
	.byte	50                      ## DW_AT_accessibility
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	12                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	52                      ## DW_AT_artificial
	.byte	12                      ## DW_FORM_flag
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	13                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	14                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	76                      ## DW_AT_virtuality
	.byte	11                      ## DW_FORM_data1
	.byte	77                      ## DW_AT_vtable_elem_location
	.byte	10                      ## DW_FORM_block1
	.byte	60                      ## DW_AT_declaration
	.byte	12                      ## DW_FORM_flag
	.byte	63                      ## DW_AT_external
	.byte	12                      ## DW_FORM_flag
	.byte	50                      ## DW_AT_accessibility
	.byte	11                      ## DW_FORM_data1
	.byte	29                      ## DW_AT_containing_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	15                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.ascii	 "\207@"                ## DW_AT_MIPS_linkage_name
	.byte	14                      ## DW_FORM_strp
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	76                      ## DW_AT_virtuality
	.byte	11                      ## DW_FORM_data1
	.byte	77                      ## DW_AT_vtable_elem_location
	.byte	10                      ## DW_FORM_block1
	.byte	60                      ## DW_AT_declaration
	.byte	12                      ## DW_FORM_flag
	.byte	63                      ## DW_AT_external
	.byte	12                      ## DW_FORM_flag
	.byte	50                      ## DW_AT_accessibility
	.byte	11                      ## DW_FORM_data1
	.byte	29                      ## DW_AT_containing_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	16                      ## Abbreviation Code
	.byte	4                       ## DW_TAG_enumeration_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	17                      ## Abbreviation Code
	.byte	13                      ## DW_TAG_member
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	56                      ## DW_AT_data_member_location
	.byte	10                      ## DW_FORM_block1
	.byte	50                      ## DW_AT_accessibility
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	18                      ## Abbreviation Code
	.byte	13                      ## DW_TAG_member
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	56                      ## DW_AT_data_member_location
	.byte	10                      ## DW_FORM_block1
	.byte	50                      ## DW_AT_accessibility
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	19                      ## Abbreviation Code
	.byte	42                      ## DW_TAG_friend
	.byte	0                       ## DW_CHILDREN_no
	.byte	65                      ## DW_AT_friend
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	20                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	50                      ## DW_AT_accessibility
	.byte	11                      ## DW_FORM_data1
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	60                      ## DW_AT_declaration
	.byte	12                      ## DW_FORM_flag
	.byte	63                      ## DW_AT_external
	.byte	12                      ## DW_FORM_flag
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	21                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.ascii	 "\207@"                ## DW_AT_MIPS_linkage_name
	.byte	14                      ## DW_FORM_strp
	.byte	71                      ## DW_AT_specification
	.byte	19                      ## DW_FORM_ref4
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	64                      ## DW_AT_frame_base
	.byte	10                      ## DW_FORM_block1
	.ascii	 "\347\177"             ## DW_AT_APPLE_omit_frame_ptr
	.byte	12                      ## DW_FORM_flag
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	22                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	52                      ## DW_AT_artificial
	.byte	12                      ## DW_FORM_flag
	.byte	2                       ## DW_AT_location
	.byte	10                      ## DW_FORM_block1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	23                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	2                       ## DW_AT_location
	.byte	10                      ## DW_FORM_block1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	24                      ## Abbreviation Code
	.byte	11                      ## DW_TAG_lexical_block
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	25                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	2                       ## DW_AT_location
	.byte	10                      ## DW_FORM_block1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	26                      ## Abbreviation Code
	.byte	22                      ## DW_TAG_typedef
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	27                      ## Abbreviation Code
	.byte	2                       ## DW_TAG_class_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	60                      ## DW_AT_declaration
	.byte	12                      ## DW_FORM_flag
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	28                      ## Abbreviation Code
	.byte	2                       ## DW_TAG_class_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	29                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.ascii	 "\207@"                ## DW_AT_MIPS_linkage_name
	.byte	14                      ## DW_FORM_strp
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	60                      ## DW_AT_declaration
	.byte	12                      ## DW_FORM_flag
	.byte	63                      ## DW_AT_external
	.byte	12                      ## DW_FORM_flag
	.byte	50                      ## DW_AT_accessibility
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	30                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	60                      ## DW_AT_declaration
	.byte	12                      ## DW_FORM_flag
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	31                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.ascii	 "\207@"                ## DW_AT_MIPS_linkage_name
	.byte	14                      ## DW_FORM_strp
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	12                      ## DW_FORM_flag
	.byte	32                      ## DW_AT_inline
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	32                      ## Abbreviation Code
	.byte	47                      ## DW_TAG_template_type_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	33                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	34                      ## Abbreviation Code
	.byte	11                      ## DW_TAG_lexical_block
	.byte	1                       ## DW_CHILDREN_yes
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	35                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	36                      ## Abbreviation Code
	.byte	16                      ## DW_TAG_reference_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	37                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	71                      ## DW_AT_specification
	.byte	19                      ## DW_FORM_ref4
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	64                      ## DW_AT_frame_base
	.byte	10                      ## DW_FORM_block1
	.ascii	 "\347\177"             ## DW_AT_APPLE_omit_frame_ptr
	.byte	12                      ## DW_FORM_flag
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	38                      ## Abbreviation Code
	.byte	29                      ## DW_TAG_inlined_subroutine
	.byte	1                       ## DW_CHILDREN_yes
	.byte	49                      ## DW_AT_abstract_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	88                      ## DW_AT_call_file
	.byte	11                      ## DW_FORM_data1
	.byte	89                      ## DW_AT_call_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	39                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	49                      ## DW_AT_abstract_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	2                       ## DW_AT_location
	.byte	10                      ## DW_FORM_block1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	40                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	49                      ## DW_AT_abstract_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	2                       ## DW_AT_location
	.byte	10                      ## DW_FORM_block1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	0                       ## EOM(3)
Labbrev_end:
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	16                      ## Header Bucket Count
	.long	33                      ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## eAtomTypeDIEOffset
	.short	6                       ## DW_FORM_data4
	.long	0                       ## Bucket 0
	.long	1                       ## Bucket 1
	.long	4                       ## Bucket 2
	.long	5                       ## Bucket 3
	.long	6                       ## Bucket 4
	.long	8                       ## Bucket 5
	.long	9                       ## Bucket 6
	.long	10                      ## Bucket 7
	.long	14                      ## Bucket 8
	.long	17                      ## Bucket 9
	.long	22                      ## Bucket 10
	.long	24                      ## Bucket 11
	.long	26                      ## Bucket 12
	.long	28                      ## Bucket 13
	.long	-1                      ## Bucket 14
	.long	31                      ## Bucket 15
	.long	-1249173888             ## Hash in Bucket 0
	.long	-1363045711             ## Hash in Bucket 1
	.long	568481329               ## Hash in Bucket 1
	.long	-1145574399             ## Hash in Bucket 1
	.long	-1663585070             ## Hash in Bucket 2
	.long	-1590244413             ## Hash in Bucket 3
	.long	1103447972              ## Hash in Bucket 4
	.long	-147180556              ## Hash in Bucket 4
	.long	1269165781              ## Hash in Bucket 5
	.long	-1415024778             ## Hash in Bucket 6
	.long	-815655097              ## Hash in Bucket 7
	.long	-399557305              ## Hash in Bucket 7
	.long	1292860839              ## Hash in Bucket 7
	.long	357787143               ## Hash in Bucket 7
	.long	814840168               ## Hash in Bucket 8
	.long	-700096664              ## Hash in Bucket 8
	.long	-842765544              ## Hash in Bucket 8
	.long	1280074793              ## Hash in Bucket 9
	.long	814841257               ## Hash in Bucket 9
	.long	-1143304903             ## Hash in Bucket 9
	.long	814806409               ## Hash in Bucket 9
	.long	-698705895              ## Hash in Bucket 9
	.long	1541492362              ## Hash in Bucket 10
	.long	814842346               ## Hash in Bucket 10
	.long	-2113419157             ## Hash in Bucket 11
	.long	253337163               ## Hash in Bucket 11
	.long	-2059024756             ## Hash in Bucket 12
	.long	-1340430852             ## Hash in Bucket 12
	.long	422656221               ## Hash in Bucket 13
	.long	262711501               ## Hash in Bucket 13
	.long	-1146926307             ## Hash in Bucket 13
	.long	-948634529              ## Hash in Bucket 15
	.long	918827359               ## Hash in Bucket 15
	.long	LNames30-Lnames_begin   ## Offset in Bucket 0
	.long	LNames10-Lnames_begin   ## Offset in Bucket 1
	.long	LNames11-Lnames_begin   ## Offset in Bucket 1
	.long	LNames31-Lnames_begin   ## Offset in Bucket 1
	.long	LNames22-Lnames_begin   ## Offset in Bucket 2
	.long	LNames32-Lnames_begin   ## Offset in Bucket 3
	.long	LNames17-Lnames_begin   ## Offset in Bucket 4
	.long	LNames23-Lnames_begin   ## Offset in Bucket 4
	.long	LNames24-Lnames_begin   ## Offset in Bucket 5
	.long	LNames12-Lnames_begin   ## Offset in Bucket 6
	.long	LNames0-Lnames_begin    ## Offset in Bucket 7
	.long	LNames1-Lnames_begin    ## Offset in Bucket 7
	.long	LNames6-Lnames_begin    ## Offset in Bucket 7
	.long	LNames14-Lnames_begin   ## Offset in Bucket 7
	.long	LNames7-Lnames_begin    ## Offset in Bucket 8
	.long	LNames18-Lnames_begin   ## Offset in Bucket 8
	.long	LNames25-Lnames_begin   ## Offset in Bucket 8
	.long	LNames2-Lnames_begin    ## Offset in Bucket 9
	.long	LNames8-Lnames_begin    ## Offset in Bucket 9
	.long	LNames13-Lnames_begin   ## Offset in Bucket 9
	.long	LNames19-Lnames_begin   ## Offset in Bucket 9
	.long	LNames26-Lnames_begin   ## Offset in Bucket 9
	.long	LNames3-Lnames_begin    ## Offset in Bucket 10
	.long	LNames9-Lnames_begin    ## Offset in Bucket 10
	.long	LNames4-Lnames_begin    ## Offset in Bucket 11
	.long	LNames20-Lnames_begin   ## Offset in Bucket 11
	.long	LNames5-Lnames_begin    ## Offset in Bucket 12
	.long	LNames27-Lnames_begin   ## Offset in Bucket 12
	.long	LNames15-Lnames_begin   ## Offset in Bucket 13
	.long	LNames21-Lnames_begin   ## Offset in Bucket 13
	.long	LNames28-Lnames_begin   ## Offset in Bucket 13
	.long	LNames16-Lnames_begin   ## Offset in Bucket 15
	.long	LNames29-Lnames_begin   ## Offset in Bucket 15
LNames30:
Lset168 = Lstring64-Lsection_str        ## _ZN4xiao17NonLocalJumpPatchC2EPNS_8FunctionEPh
	.long	Lset168
	.long	1                       ## Num DIEs
	.long	1290
	.long	0
LNames10:
Lset169 = Lstring65-Lsection_str        ## _ZN4xiao14LocalJumpPatchC1EPNS_8FunctionEPh
	.long	Lset169
	.long	1                       ## Num DIEs
	.long	1362
	.long	0
LNames11:
Lset170 = Lstring44-Lsection_str        ## _ZN4xiao17NonLocalJumpPatch5applyEv
	.long	Lset170
	.long	1                       ## Num DIEs
	.long	1810
	.long	0
LNames31:
Lset171 = Lstring77-Lsection_str        ## unsafe_cast<unsigned long long, unsigned long>
	.long	Lset171
	.long	1                       ## Num DIEs
	.long	2808
	.long	0
LNames22:
Lset172 = Lstring66-Lsection_str        ## _ZN4xiao14LocalJumpPatchC2EPNS_8FunctionEPh
	.long	Lset172
	.long	1                       ## Num DIEs
	.long	1434
	.long	0
LNames32:
Lset173 = Lstring38-Lsection_str        ## _ZN4xiao14LocalJumpPatch5applyEv
	.long	Lset173
	.long	1                       ## Num DIEs
	.long	1898
	.long	0
LNames17:
Lset174 = Lstring45-Lsection_str        ## _ZN4xiao17NonLocalJumpPatch6revertEv
	.long	Lset174
	.long	1                       ## Num DIEs
	.long	1854
	.long	0
LNames23:
Lset175 = Lstring73-Lsection_str        ## _ZN4xiao11unsafe_castIyNS_8FunctionEEET_PT0_
	.long	Lset175
	.long	1                       ## Num DIEs
	.long	2777
	.long	0
LNames24:
Lset176 = Lstring46-Lsection_str        ## ReturnPatch
	.long	Lset176
	.long	2                       ## Num DIEs
	.long	1074
	.long	1146
	.long	0
LNames12:
Lset177 = Lstring40-Lsection_str        ## _ZN4xiao14LocalJumpPatch6revertEv
	.long	Lset177
	.long	1                       ## Num DIEs
	.long	1942
	.long	0
LNames0:
Lset178 = Lstring58-Lsection_str        ## EntryPatch
	.long	Lset178
	.long	2                       ## Num DIEs
	.long	930
	.long	1002
	.long	0
LNames1:
Lset179 = Lstring61-Lsection_str        ## _ZN4xiao11ReturnPatchC1EPNS_8FunctionEPh
	.long	Lset179
	.long	1                       ## Num DIEs
	.long	1074
	.long	0
LNames6:
Lset180 = Lstring42-Lsection_str        ## NonLocalJumpPatch
	.long	Lset180
	.long	2                       ## Num DIEs
	.long	1218
	.long	1290
	.long	0
LNames14:
Lset181 = Lstring52-Lsection_str        ## ~AbstractPatch
	.long	Lset181
	.long	3                       ## Num DIEs
	.long	2030
	.long	2074
	.long	2118
	.long	0
LNames7:
Lset182 = Lstring79-Lsection_str        ## _ZN4xiao13AbstractPatchD0Ev
	.long	Lset182
	.long	1                       ## Num DIEs
	.long	2030
	.long	0
LNames18:
Lset183 = Lstring62-Lsection_str        ## _ZN4xiao11ReturnPatchC2EPNS_8FunctionEPh
	.long	Lset183
	.long	1                       ## Num DIEs
	.long	1146
	.long	0
LNames25:
Lset184 = Lstring59-Lsection_str        ## _ZN4xiao10EntryPatchC1EPNS_8FunctionEPh
	.long	Lset184
	.long	1                       ## Num DIEs
	.long	930
	.long	0
LNames2:
Lset185 = Lstring51-Lsection_str        ## AbstractPatch
	.long	Lset185
	.long	1                       ## Num DIEs
	.long	1986
	.long	0
LNames8:
Lset186 = Lstring80-Lsection_str        ## _ZN4xiao13AbstractPatchD1Ev
	.long	Lset186
	.long	1                       ## Num DIEs
	.long	2074
	.long	0
LNames13:
Lset187 = Lstring60-Lsection_str        ## _ZN4xiao10EntryPatchC2EPNS_8FunctionEPh
	.long	Lset187
	.long	1                       ## Num DIEs
	.long	1002
	.long	0
LNames19:
Lset188 = Lstring78-Lsection_str        ## _ZN4xiao13AbstractPatchC2Ev
	.long	Lset188
	.long	1                       ## Num DIEs
	.long	1986
	.long	0
LNames26:
Lset189 = Lstring48-Lsection_str        ## _ZN4xiao11ReturnPatch5applyEv
	.long	Lset189
	.long	1                       ## Num DIEs
	.long	1658
	.long	0
LNames3:
Lset190 = Lstring56-Lsection_str        ## _ZN4xiao10EntryPatch5applyEv
	.long	Lset190
	.long	1                       ## Num DIEs
	.long	1506
	.long	0
LNames9:
Lset191 = Lstring81-Lsection_str        ## _ZN4xiao13AbstractPatchD2Ev
	.long	Lset191
	.long	1                       ## Num DIEs
	.long	2118
	.long	0
LNames4:
Lset192 = Lstring76-Lsection_str        ## _ZN4xiao11unsafe_castIymEET_RKT0_
	.long	Lset192
	.long	1                       ## Num DIEs
	.long	2808
	.long	0
LNames20:
Lset193 = Lstring39-Lsection_str        ## apply
	.long	Lset193
	.long	4                       ## Num DIEs
	.long	1506
	.long	1658
	.long	1810
	.long	1898
	.long	0
LNames5:
Lset194 = Lstring49-Lsection_str        ## _ZN4xiao11ReturnPatch6revertEv
	.long	Lset194
	.long	1                       ## Num DIEs
	.long	1702
	.long	0
LNames27:
Lset195 = Lstring36-Lsection_str        ## LocalJumpPatch
	.long	Lset195
	.long	2                       ## Num DIEs
	.long	1362
	.long	1434
	.long	0
LNames15:
Lset196 = Lstring41-Lsection_str        ## revert
	.long	Lset196
	.long	4                       ## Num DIEs
	.long	1550
	.long	1702
	.long	1854
	.long	1942
	.long	0
LNames21:
Lset197 = Lstring67-Lsection_str        ## imm32
	.long	Lset197
	.long	1                       ## Num DIEs
	.long	2722
	.long	0
LNames28:
Lset198 = Lstring57-Lsection_str        ## _ZN4xiao10EntryPatch6revertEv
	.long	Lset198
	.long	1                       ## Num DIEs
	.long	1550
	.long	0
LNames16:
Lset199 = Lstring63-Lsection_str        ## _ZN4xiao17NonLocalJumpPatchC1EPNS_8FunctionEPh
	.long	Lset199
	.long	1                       ## Num DIEs
	.long	1218
	.long	0
LNames29:
Lset200 = Lstring74-Lsection_str        ## unsafe_cast<unsigned long long, xiao::Function>
	.long	Lset200
	.long	1                       ## Num DIEs
	.long	2777
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## eAtomTypeDIEOffset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	1                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## eAtomTypeDIEOffset
	.short	6                       ## DW_FORM_data4
	.long	0                       ## Bucket 0
	.long	2090903702              ## Hash in Bucket 0
	.long	Lnamespac0-Lnamespac_begin ## Offset in Bucket 0
Lnamespac0:
Lset201 = Lstring12-Lsection_str        ## xiao
	.long	Lset201
	.long	5                       ## Num DIEs
	.long	64
	.long	2186
	.long	2248
	.long	2524
	.long	2568
	.long	0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	8                       ## Header Bucket Count
	.long	17                      ## Header Hash Count
	.long	20                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	3                       ## HeaderData Atom Count
	.short	1                       ## eAtomTypeDIEOffset
	.short	6                       ## DW_FORM_data4
	.short	3                       ## eAtomTypeTag
	.short	5                       ## DW_FORM_data2
	.short	5                       ## eAtomTypeTypeFlags
	.short	11                      ## DW_FORM_data1
	.long	0                       ## Bucket 0
	.long	3                       ## Bucket 1
	.long	6                       ## Bucket 2
	.long	7                       ## Bucket 3
	.long	9                       ## Bucket 4
	.long	10                      ## Bucket 5
	.long	-1                      ## Bucket 6
	.long	15                      ## Bucket 7
	.long	789719536               ## Hash in Bucket 0
	.long	193495088               ## Hash in Bucket 0
	.long	-104093792              ## Hash in Bucket 0
	.long	1280074793              ## Hash in Bucket 1
	.long	1019679825              ## Hash in Bucket 1
	.long	2090120081              ## Hash in Bucket 1
	.long	-375769414              ## Hash in Bucket 2
	.long	1273601067              ## Hash in Bucket 3
	.long	-153162957              ## Hash in Bucket 3
	.long	-1340430852             ## Hash in Bucket 4
	.long	-1304652851             ## Hash in Bucket 5
	.long	-69895251               ## Hash in Bucket 5
	.long	1269165781              ## Hash in Bucket 5
	.long	290711645               ## Hash in Bucket 5
	.long	-80380739               ## Hash in Bucket 5
	.long	1292860839              ## Hash in Bucket 7
	.long	-815655097              ## Hash in Bucket 7
	.long	Ltypes6-Ltypes_begin    ## Offset in Bucket 0
	.long	Ltypes7-Ltypes_begin    ## Offset in Bucket 0
	.long	Ltypes16-Ltypes_begin   ## Offset in Bucket 0
	.long	Ltypes2-Ltypes_begin    ## Offset in Bucket 1
	.long	Ltypes8-Ltypes_begin    ## Offset in Bucket 1
	.long	Ltypes10-Ltypes_begin   ## Offset in Bucket 1
	.long	Ltypes12-Ltypes_begin   ## Offset in Bucket 2
	.long	Ltypes3-Ltypes_begin    ## Offset in Bucket 3
	.long	Ltypes9-Ltypes_begin    ## Offset in Bucket 3
	.long	Ltypes13-Ltypes_begin   ## Offset in Bucket 4
	.long	Ltypes4-Ltypes_begin    ## Offset in Bucket 5
	.long	Ltypes5-Ltypes_begin    ## Offset in Bucket 5
	.long	Ltypes11-Ltypes_begin   ## Offset in Bucket 5
	.long	Ltypes14-Ltypes_begin   ## Offset in Bucket 5
	.long	Ltypes15-Ltypes_begin   ## Offset in Bucket 5
	.long	Ltypes0-Ltypes_begin    ## Offset in Bucket 7
	.long	Ltypes1-Ltypes_begin    ## Offset in Bucket 7
Ltypes6:
Lset202 = Lstring15-Lsection_str        ## uint8_t
	.long	Lset202
	.long	1                       ## Num DIEs
	.long	2170
	.short	22
	.byte	0
	.long	0
Ltypes7:
Lset203 = Lstring4-Lsection_str         ## int
	.long	Lset203
	.long	1                       ## Num DIEs
	.long	38
	.short	36
	.byte	0
	.long	0
Ltypes16:
Lset204 = Lstring14-Lsection_str        ## unsigned char
	.long	Lset204
	.long	1                       ## Num DIEs
	.long	2163
	.short	36
	.byte	0
	.long	0
Ltypes2:
Lset205 = Lstring51-Lsection_str        ## AbstractPatch
	.long	Lset205
	.long	1                       ## Num DIEs
	.long	569
	.short	2
	.byte	2
	.long	0
Ltypes8:
Lset206 = Lstring5-Lsection_str         ## __vtbl_ptr_type
	.long	Lset206
	.long	1                       ## Num DIEs
	.long	50
	.short	15
	.byte	0
	.long	0
Ltypes10:
Lset207 = Lstring20-Lsection_str        ## bool
	.long	Lset207
	.long	1                       ## Num DIEs
	.long	2210
	.short	36
	.byte	0
	.long	0
Ltypes12:
Lset208 = Lstring11-Lsection_str        ## patch_kind
	.long	Lset208
	.long	1                       ## Num DIEs
	.long	71
	.short	4
	.byte	2
	.long	0
Ltypes3:
Lset209 = Lstring23-Lsection_str        ## Function
	.long	Lset209
	.long	1                       ## Num DIEs
	.long	2255
	.short	2
	.byte	2
	.long	0
Ltypes9:
Lset210 = Lstring16-Lsection_str        ## code_t
	.long	Lset210
	.long	1                       ## Num DIEs
	.long	2193
	.short	22
	.byte	0
	.long	0
Ltypes13:
Lset211 = Lstring36-Lsection_str        ## LocalJumpPatch
	.long	Lset211
	.long	1                       ## Num DIEs
	.long	104
	.short	2
	.byte	2
	.long	0
Ltypes4:
Lset212 = Lstring68-Lsection_str        ## unsigned int
	.long	Lset212
	.long	1                       ## Num DIEs
	.long	2550
	.short	36
	.byte	0
	.long	0
Ltypes5:
Lset213 = Lstring70-Lsection_str        ## long long unsigned int
	.long	Lset213
	.long	1                       ## Num DIEs
	.long	2683
	.short	36
	.byte	0
	.long	0
Ltypes11:
Lset214 = Lstring46-Lsection_str        ## ReturnPatch
	.long	Lset214
	.long	1                       ## Num DIEs
	.long	414
	.short	2
	.byte	2
	.long	0
Ltypes14:
Lset215 = Lstring69-Lsection_str        ## uint32_t
	.long	Lset215
	.long	1                       ## Num DIEs
	.long	2557
	.short	22
	.byte	0
	.long	0
Ltypes15:
Lset216 = Lstring75-Lsection_str        ## long unsigned int
	.long	Lset216
	.long	1                       ## Num DIEs
	.long	2690
	.short	36
	.byte	0
	.long	0
Ltypes0:
Lset217 = Lstring42-Lsection_str        ## NonLocalJumpPatch
	.long	Lset217
	.long	1                       ## Num DIEs
	.long	259
	.short	2
	.byte	2
	.long	0
Ltypes1:
Lset218 = Lstring58-Lsection_str        ## EntryPatch
	.long	Lset218
	.long	1                       ## Num DIEs
	.long	775
	.short	2
	.byte	2
	.long	0
	.section	__DWARF,__debug_pubtypes,regular,debug
Lset219 = Lpubtypes_end1-Lpubtypes_begin1 ## Length of Public Types Info
	.long	Lset219
Lpubtypes_begin1:
	.short	2                       ## DWARF Version
Lset220 = Linfo_begin1-Lsection_info    ## Offset of Compilation Unit Info
	.long	Lset220
Lset221 = Linfo_end1-Linfo_begin1       ## Compilation Unit Length
	.long	Lset221
	.long	414                     ## DIE offset
	.asciz	 "ReturnPatch"          ## External Name
	.long	259                     ## DIE offset
	.asciz	 "NonLocalJumpPatch"    ## External Name
	.long	775                     ## DIE offset
	.asciz	 "EntryPatch"           ## External Name
	.long	569                     ## DIE offset
	.asciz	 "AbstractPatch"        ## External Name
	.long	71                      ## DIE offset
	.asciz	 "patch_kind"           ## External Name
	.long	2255                    ## DIE offset
	.asciz	 "Function"             ## External Name
	.long	104                     ## DIE offset
	.asciz	 "LocalJumpPatch"       ## External Name
	.long	0                       ## End Mark
Lpubtypes_end1:
	.section	__DWARF,__debug_aranges,regular,debug
	.section	__DWARF,__debug_ranges,regular,debug
	.section	__DWARF,__debug_macinfo,regular,debug
	.section	__DWARF,__debug_inlined,regular,debug
Lset222 = Ldebug_inlined_end1-Ldebug_inlined_begin1 ## Length of Debug Inlined Information Entry
	.long	Lset222
Ldebug_inlined_begin1:
	.short	2                       ## Dwarf Version
	.byte	8                       ## Address Size (in bytes)
Lset223 = Lstring76-Lsection_str        ## MIPS linkage name
	.long	Lset223
Lset224 = Lstring77-Lsection_str        ## Function name
	.long	Lset224
	.byte	1                       ## Inline count
	.long	2808                    ## DIE offset
	.quad	Ltmp45                  ## low_pc
Lset225 = Lstring73-Lsection_str        ## MIPS linkage name
	.long	Lset225
Lset226 = Lstring74-Lsection_str        ## Function name
	.long	Lset226
	.byte	1                       ## Inline count
	.long	2777                    ## DIE offset
	.quad	Ltmp44                  ## low_pc
Ldebug_inlined_end1:
	.section	__DWARF,__debug_str,regular,debug
Lstring0:
	.asciz	 "clang version 3.1 (trunk 154299)"
Lstring1:
	.asciz	 "xiao/lib/patch.cc"
Lstring2:
	.asciz	 "/Users/petergoodman/Code/xiao"
Lstring3:
	.asciz	 "_vptr$AbstractPatch"
Lstring4:
	.asciz	 "int"
Lstring5:
	.asciz	 "__vtbl_ptr_type"
Lstring6:
	.asciz	 "kind"
Lstring7:
	.asciz	 "PATCH_ENTRY"
Lstring8:
	.asciz	 "PATCH_EXIT_RETURN"
Lstring9:
	.asciz	 "PATCH_EXIT_NON_LOCAL"
Lstring10:
	.asciz	 "PATCH_ENTER_LOCAL"
Lstring11:
	.asciz	 "patch_kind"
Lstring12:
	.asciz	 "xiao"
Lstring13:
	.asciz	 "start"
Lstring14:
	.asciz	 "unsigned char"
Lstring15:
	.asciz	 "uint8_t"
Lstring16:
	.asciz	 "code_t"
Lstring17:
	.asciz	 "next"
Lstring18:
	.asciz	 "func"
Lstring19:
	.asciz	 "can_tail_call"
Lstring20:
	.asciz	 "bool"
Lstring21:
	.asciz	 "end"
Lstring22:
	.asciz	 "patches"
Lstring23:
	.asciz	 "Function"
Lstring24:
	.asciz	 "~Function"
Lstring25:
	.asciz	 "_ZN4xiao8Function9add_patchEPNS_13AbstractPatchE"
Lstring26:
	.asciz	 "add_patch"
Lstring27:
	.asciz	 "_ZN4xiao8Function16instrument_enterEPNS_14MachineContextE"
Lstring28:
	.asciz	 "instrument_enter"
Lstring29:
	.asciz	 "MachineContext"
Lstring30:
	.asciz	 "_ZN4xiao8Function17instrument_returnEPNS_14MachineContextE"
Lstring31:
	.asciz	 "instrument_return"
Lstring32:
	.asciz	 "_ZN4xiao8Function25instrument_non_local_jumpEPNS_14MachineContextE"
Lstring33:
	.asciz	 "instrument_non_local_jump"
Lstring34:
	.asciz	 "_ZN4xiao8Function21instrument_local_jumpEPNS_14MachineContextE"
Lstring35:
	.asciz	 "instrument_local_jump"
Lstring36:
	.asciz	 "LocalJumpPatch"
Lstring37:
	.asciz	 "~LocalJumpPatch"
Lstring38:
	.asciz	 "_ZN4xiao14LocalJumpPatch5applyEv"
Lstring39:
	.asciz	 "apply"
Lstring40:
	.asciz	 "_ZN4xiao14LocalJumpPatch6revertEv"
Lstring41:
	.asciz	 "revert"
Lstring42:
	.asciz	 "NonLocalJumpPatch"
Lstring43:
	.asciz	 "~NonLocalJumpPatch"
Lstring44:
	.asciz	 "_ZN4xiao17NonLocalJumpPatch5applyEv"
Lstring45:
	.asciz	 "_ZN4xiao17NonLocalJumpPatch6revertEv"
Lstring46:
	.asciz	 "ReturnPatch"
Lstring47:
	.asciz	 "~ReturnPatch"
Lstring48:
	.asciz	 "_ZN4xiao11ReturnPatch5applyEv"
Lstring49:
	.asciz	 "_ZN4xiao11ReturnPatch6revertEv"
Lstring50:
	.asciz	 "next_for_func"
Lstring51:
	.asciz	 "AbstractPatch"
Lstring52:
	.asciz	 "~AbstractPatch"
Lstring53:
	.asciz	 "_ZN4xiao13AbstractPatch5applyEv"
Lstring54:
	.asciz	 "_ZN4xiao13AbstractPatch6revertEv"
Lstring55:
	.asciz	 "~EntryPatch"
Lstring56:
	.asciz	 "_ZN4xiao10EntryPatch5applyEv"
Lstring57:
	.asciz	 "_ZN4xiao10EntryPatch6revertEv"
Lstring58:
	.asciz	 "EntryPatch"
Lstring59:
	.asciz	 "_ZN4xiao10EntryPatchC1EPNS_8FunctionEPh"
Lstring60:
	.asciz	 "_ZN4xiao10EntryPatchC2EPNS_8FunctionEPh"
Lstring61:
	.asciz	 "_ZN4xiao11ReturnPatchC1EPNS_8FunctionEPh"
Lstring62:
	.asciz	 "_ZN4xiao11ReturnPatchC2EPNS_8FunctionEPh"
Lstring63:
	.asciz	 "_ZN4xiao17NonLocalJumpPatchC1EPNS_8FunctionEPh"
Lstring64:
	.asciz	 "_ZN4xiao17NonLocalJumpPatchC2EPNS_8FunctionEPh"
Lstring65:
	.asciz	 "_ZN4xiao14LocalJumpPatchC1EPNS_8FunctionEPh"
Lstring66:
	.asciz	 "_ZN4xiao14LocalJumpPatchC2EPNS_8FunctionEPh"
Lstring67:
	.asciz	 "imm32"
Lstring68:
	.asciz	 "unsigned int"
Lstring69:
	.asciz	 "uint32_t"
Lstring70:
	.asciz	 "long long unsigned int"
Lstring71:
	.asciz	 "ToT"
Lstring72:
	.asciz	 "FromT"
Lstring73:
	.asciz	 "_ZN4xiao11unsafe_castIyNS_8FunctionEEET_PT0_"
Lstring74:
	.asciz	 "unsafe_cast<unsigned long long, xiao::Function>"
Lstring75:
	.asciz	 "long unsigned int"
Lstring76:
	.asciz	 "_ZN4xiao11unsafe_castIymEET_RKT0_"
Lstring77:
	.asciz	 "unsafe_cast<unsigned long long, unsigned long>"
Lstring78:
	.asciz	 "_ZN4xiao13AbstractPatchC2Ev"
Lstring79:
	.asciz	 "_ZN4xiao13AbstractPatchD0Ev"
Lstring80:
	.asciz	 "_ZN4xiao13AbstractPatchD1Ev"
Lstring81:
	.asciz	 "_ZN4xiao13AbstractPatchD2Ev"
Lstring82:
	.asciz	 "PATCH_SIZE"
Lstring83:
	.asciz	 "NOP_SEQ_SIZE"
Lstring84:
	.asciz	 "KIND"
Lstring85:
	.asciz	 "this"
Lstring86:
	.asciz	 "func_"
Lstring87:
	.asciz	 "start_"
Lstring88:
	.asciz	 "v"
Lstring89:
	.asciz	 "dest"
Lstring90:
	.asciz	 "code"
Lstring91:
	.asciz	 "i"

.subsections_via_symbols
