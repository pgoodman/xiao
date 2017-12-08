	.section	__TEXT,__text,regular,pure_instructions
	.file	1 "xiao/lib/function.cc"
	.file	2 "./xiao/include/function.h"
	.file	3 "./xiao/include/globals.h"
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
	.globl	__ZN4xiao8FunctionC1Ej
	.align	4, 0x90
__ZN4xiao8FunctionC1Ej:                 ## @_ZN4xiao8FunctionC1Ej
	.cfi_startproc
Lfunc_begin0:
	.loc	1 15 0                  ## xiao/lib/function.cc:15:0
## BB#0:                                ## %entry
	pushq	%rbp
Ltmp2:
	.cfi_def_cfa_offset 16
Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp4:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	.loc	1 15 3 prologue_end     ## xiao/lib/function.cc:15:3
Ltmp5:
	movl	-12(%rbp), %esi
	callq	__ZN4xiao8FunctionC2Ej
	addq	$16, %rsp
	popq	%rbp
	ret
Ltmp6:
Lfunc_end0:
	.cfi_endproc

	.globl	__ZN4xiao8FunctionC2Ej
	.align	4, 0x90
__ZN4xiao8FunctionC2Ej:                 ## @_ZN4xiao8FunctionC2Ej
	.cfi_startproc
Lfunc_begin1:
	.loc	1 15 0                  ## xiao/lib/function.cc:15:0
## BB#0:                                ## %entry
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	.loc	1 15 1 prologue_end     ## xiao/lib/function.cc:15:1
Ltmp12:
	movl	-12(%rbp), %esi
	movl	%esi, 32(%rdi)
	.loc	1 15 3                  ## xiao/lib/function.cc:15:3
Ltmp13:
	popq	%rbp
	ret
Ltmp14:
Lfunc_end1:
	.cfi_endproc

	.globl	__ZN4xiao8FunctionD1Ev
	.align	4, 0x90
__ZN4xiao8FunctionD1Ev:                 ## @_ZN4xiao8FunctionD1Ev
	.cfi_startproc
Lfunc_begin2:
	.loc	1 17 0                  ## xiao/lib/function.cc:17:0
## BB#0:                                ## %entry
	pushq	%rbp
Ltmp17:
	.cfi_def_cfa_offset 16
Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	.loc	1 17 35 prologue_end    ## xiao/lib/function.cc:17:35
Ltmp20:
	callq	__ZN4xiao8FunctionD2Ev
	.loc	1 17 37                 ## xiao/lib/function.cc:17:37
	addq	$16, %rsp
	popq	%rbp
	ret
Ltmp21:
Lfunc_end2:
	.cfi_endproc

	.globl	__ZN4xiao8FunctionD2Ev
	.align	4, 0x90
__ZN4xiao8FunctionD2Ev:                 ## @_ZN4xiao8FunctionD2Ev
	.cfi_startproc
Lfunc_begin3:
	.loc	1 17 0                  ## xiao/lib/function.cc:17:0
## BB#0:                                ## %entry
	pushq	%rbp
Ltmp24:
	.cfi_def_cfa_offset 16
Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp26:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	.loc	1 17 37 prologue_end    ## xiao/lib/function.cc:17:37
Ltmp27:
	popq	%rbp
	ret
Ltmp28:
Lfunc_end3:
	.cfi_endproc

	.globl	__ZN4xiao8Function5EnterEPNS_14MachineContextE
	.align	4, 0x90
__ZN4xiao8Function5EnterEPNS_14MachineContextE: ## @_ZN4xiao8Function5EnterEPNS_14MachineContextE
	.cfi_startproc
Lfunc_begin4:
	.loc	1 19 0                  ## xiao/lib/function.cc:19:0
## BB#0:                                ## %entry
	pushq	%rbp
Ltmp31:
	.cfi_def_cfa_offset 16
Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp33:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc	1 19 50 prologue_end    ## xiao/lib/function.cc:19:50
Ltmp34:
	popq	%rbp
	ret
Ltmp35:
Lfunc_end4:
	.cfi_endproc

	.globl	__ZN4xiao8Function6ReturnEPNS_14MachineContextE
	.align	4, 0x90
__ZN4xiao8Function6ReturnEPNS_14MachineContextE: ## @_ZN4xiao8Function6ReturnEPNS_14MachineContextE
	.cfi_startproc
Lfunc_begin5:
	.loc	1 20 0                  ## xiao/lib/function.cc:20:0
## BB#0:                                ## %entry
	pushq	%rbp
Ltmp38:
	.cfi_def_cfa_offset 16
Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp40:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc	1 20 51 prologue_end    ## xiao/lib/function.cc:20:51
Ltmp41:
	popq	%rbp
	ret
Ltmp42:
Lfunc_end5:
	.cfi_endproc

	.globl	__ZN4xiao8Function12NonLocalJumpEPNS_14MachineContextE
	.align	4, 0x90
__ZN4xiao8Function12NonLocalJumpEPNS_14MachineContextE: ## @_ZN4xiao8Function12NonLocalJumpEPNS_14MachineContextE
	.cfi_startproc
Lfunc_begin6:
	.loc	1 21 0                  ## xiao/lib/function.cc:21:0
## BB#0:                                ## %entry
	pushq	%rbp
Ltmp45:
	.cfi_def_cfa_offset 16
Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp47:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc	1 21 57 prologue_end    ## xiao/lib/function.cc:21:57
Ltmp48:
	popq	%rbp
	ret
Ltmp49:
Lfunc_end6:
	.cfi_endproc

	.globl	__ZN4xiao8Function9LocalJumpEPNS_14MachineContextE
	.align	4, 0x90
__ZN4xiao8Function9LocalJumpEPNS_14MachineContextE: ## @_ZN4xiao8Function9LocalJumpEPNS_14MachineContextE
	.cfi_startproc
Lfunc_begin7:
	.loc	1 22 0                  ## xiao/lib/function.cc:22:0
## BB#0:                                ## %entry
	pushq	%rbp
Ltmp52:
	.cfi_def_cfa_offset 16
Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp54:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc	1 22 54 prologue_end    ## xiao/lib/function.cc:22:54
Ltmp55:
	popq	%rbp
	ret
Ltmp56:
Lfunc_end7:
	.cfi_endproc

Ltext_end:
	.section	__DATA,__data
Ldata_end:
	.section	__TEXT,__text,regular,pure_instructions
Lsection_end1:
	.section	__DWARF,__debug_info,regular,debug
Linfo_begin1:
	.long	790                     ## Length of Compilation Unit Info
	.short	2                       ## DWARF version number
Lset0 = Labbrev_begin-Lsection_abbrev   ## Offset Into Abbrev. Section
	.long	Lset0
	.byte	8                       ## Address Size (in bytes)
	.byte	1                       ## Abbrev [1] 0xb:0x30f DW_TAG_compile_unit
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
	.byte	2                       ## DW_AT_encoding
	.byte	1                       ## DW_AT_byte_size
	.byte	2                       ## Abbrev [2] 0x2d:0x7 DW_TAG_base_type
Lset5 = Lstring6-Lsection_str           ## DW_AT_name
	.long	Lset5
	.byte	8                       ## DW_AT_encoding
	.byte	1                       ## DW_AT_byte_size
	.byte	3                       ## Abbrev [3] 0x34:0xb DW_TAG_typedef
	.long	45                      ## DW_AT_type
Lset6 = Lstring7-Lsection_str           ## DW_AT_name
	.long	Lset6
	.byte	2                       ## DW_AT_decl_file
	.byte	40                      ## DW_AT_decl_line
	.byte	4                       ## Abbrev [4] 0x3f:0x5 DW_TAG_pointer_type
	.long	52                      ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x44:0x13 DW_TAG_namespace
Lset7 = Lstring9-Lsection_str           ## DW_AT_name
	.long	Lset7
	.byte	3                       ## DW_AT_decl_file
	.byte	16                      ## DW_AT_decl_line
	.byte	3                       ## Abbrev [3] 0x4b:0xb DW_TAG_typedef
	.long	63                      ## DW_AT_type
Lset8 = Lstring8-Lsection_str           ## DW_AT_name
	.long	Lset8
	.byte	2                       ## DW_AT_decl_file
	.byte	19                      ## DW_AT_decl_line
	.byte	0                       ## End Of Children Mark
	.byte	6                       ## Abbrev [6] 0x57:0x6 DW_TAG_class_type
Lset9 = Lstring12-Lsection_str          ## DW_AT_name
	.long	Lset9
	.byte	1                       ## DW_AT_declaration
	.byte	4                       ## Abbrev [4] 0x5d:0x5 DW_TAG_pointer_type
	.long	87                      ## DW_AT_type
	.byte	2                       ## Abbrev [2] 0x62:0x7 DW_TAG_base_type
Lset10 = Lstring14-Lsection_str         ## DW_AT_name
	.long	Lset10
	.byte	7                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	3                       ## Abbrev [3] 0x69:0xb DW_TAG_typedef
	.long	98                      ## DW_AT_type
Lset11 = Lstring15-Lsection_str         ## DW_AT_name
	.long	Lset11
	.byte	2                       ## DW_AT_decl_file
	.byte	50                      ## DW_AT_decl_line
	.byte	7                       ## Abbrev [7] 0x74:0x5 DW_TAG_const_type
	.long	105                     ## DW_AT_type
	.byte	4                       ## Abbrev [4] 0x79:0x5 DW_TAG_pointer_type
	.long	168                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x7e:0x6 DW_TAG_class_type
Lset12 = Lstring19-Lsection_str         ## DW_AT_name
	.long	Lset12
	.byte	1                       ## DW_AT_declaration
	.byte	4                       ## Abbrev [4] 0x84:0x5 DW_TAG_pointer_type
	.long	126                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x89:0x6 DW_TAG_class_type
Lset13 = Lstring26-Lsection_str         ## DW_AT_name
	.long	Lset13
	.byte	1                       ## DW_AT_declaration
	.byte	6                       ## Abbrev [6] 0x8f:0x6 DW_TAG_class_type
Lset14 = Lstring27-Lsection_str         ## DW_AT_name
	.long	Lset14
	.byte	1                       ## DW_AT_declaration
	.byte	6                       ## Abbrev [6] 0x95:0x6 DW_TAG_class_type
Lset15 = Lstring28-Lsection_str         ## DW_AT_name
	.long	Lset15
	.byte	1                       ## DW_AT_declaration
	.byte	6                       ## Abbrev [6] 0x9b:0x6 DW_TAG_class_type
Lset16 = Lstring29-Lsection_str         ## DW_AT_name
	.long	Lset16
	.byte	1                       ## DW_AT_declaration
	.byte	5                       ## Abbrev [5] 0xa1:0x273 DW_TAG_namespace
Lset17 = Lstring9-Lsection_str          ## DW_AT_name
	.long	Lset17
	.byte	2                       ## DW_AT_decl_file
	.byte	14                      ## DW_AT_decl_line
	.byte	8                       ## Abbrev [8] 0xa8:0xf7 DW_TAG_class_type
Lset18 = Lstring30-Lsection_str         ## DW_AT_name
	.long	Lset18
	.byte	40                      ## DW_AT_byte_size
	.byte	2                       ## DW_AT_decl_file
	.byte	25                      ## DW_AT_decl_line
	.byte	9                       ## Abbrev [9] 0xb0:0xf DW_TAG_member
Lset19 = Lstring3-Lsection_str          ## DW_AT_name
	.long	Lset19
	.long	38                      ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	2                       ## DW_AT_accessibility
                                        ## DW_ACCESS_protected
	.byte	9                       ## Abbrev [9] 0xbf:0xf DW_TAG_member
Lset20 = Lstring5-Lsection_str          ## DW_AT_name
	.long	Lset20
	.long	75                      ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	37                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	2                       ## DW_AT_accessibility
                                        ## DW_ACCESS_protected
	.byte	9                       ## Abbrev [9] 0xce:0xf DW_TAG_member
Lset21 = Lstring10-Lsection_str         ## DW_AT_name
	.long	Lset21
	.long	75                      ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	38                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	2                       ## DW_AT_accessibility
                                        ## DW_ACCESS_protected
	.byte	9                       ## Abbrev [9] 0xdd:0xf DW_TAG_member
Lset22 = Lstring11-Lsection_str         ## DW_AT_name
	.long	Lset22
	.long	93                      ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	41                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	24
	.byte	2                       ## DW_AT_accessibility
                                        ## DW_ACCESS_protected
	.byte	9                       ## Abbrev [9] 0xec:0xf DW_TAG_member
Lset23 = Lstring13-Lsection_str         ## DW_AT_name
	.long	Lset23
	.long	116                     ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	46                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	32
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	10                      ## Abbrev [10] 0xfb:0x16 DW_TAG_subprogram
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
Lset24 = Lstring30-Lsection_str         ## DW_AT_name
	.long	Lset24
	.byte	2                       ## DW_AT_decl_file
	.byte	48                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	11                      ## Abbrev [11] 0x105:0x6 DW_TAG_formal_parameter
	.long	121                     ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	12                      ## Abbrev [12] 0x10b:0x5 DW_TAG_formal_parameter
	.long	105                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	13                      ## Abbrev [13] 0x111:0x11 DW_TAG_subprogram
Lset25 = Lstring16-Lsection_str         ## DW_AT_name
	.long	Lset25
	.byte	2                       ## DW_AT_decl_file
	.byte	49                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	11                      ## Abbrev [11] 0x11b:0x6 DW_TAG_formal_parameter
	.long	121                     ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	0                       ## End Of Children Mark
	.byte	14                      ## Abbrev [14] 0x122:0x1a DW_TAG_subprogram
Lset26 = Lstring17-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset26
Lset27 = Lstring18-Lsection_str         ## DW_AT_name
	.long	Lset27
	.byte	2                       ## DW_AT_decl_file
	.byte	51                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	11                      ## Abbrev [11] 0x130:0x6 DW_TAG_formal_parameter
	.long	121                     ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	12                      ## Abbrev [12] 0x136:0x5 DW_TAG_formal_parameter
	.long	132                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	14                      ## Abbrev [14] 0x13c:0x1a DW_TAG_subprogram
Lset28 = Lstring20-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset28
Lset29 = Lstring21-Lsection_str         ## DW_AT_name
	.long	Lset29
	.byte	2                       ## DW_AT_decl_file
	.byte	52                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	11                      ## Abbrev [11] 0x14a:0x6 DW_TAG_formal_parameter
	.long	121                     ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	12                      ## Abbrev [12] 0x150:0x5 DW_TAG_formal_parameter
	.long	132                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	14                      ## Abbrev [14] 0x156:0x1a DW_TAG_subprogram
Lset30 = Lstring22-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset30
Lset31 = Lstring23-Lsection_str         ## DW_AT_name
	.long	Lset31
	.byte	2                       ## DW_AT_decl_file
	.byte	53                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	11                      ## Abbrev [11] 0x164:0x6 DW_TAG_formal_parameter
	.long	121                     ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	12                      ## Abbrev [12] 0x16a:0x5 DW_TAG_formal_parameter
	.long	132                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	14                      ## Abbrev [14] 0x170:0x1a DW_TAG_subprogram
Lset32 = Lstring24-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset32
Lset33 = Lstring25-Lsection_str         ## DW_AT_name
	.long	Lset33
	.byte	2                       ## DW_AT_decl_file
	.byte	54                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_declaration
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	11                      ## Abbrev [11] 0x17e:0x6 DW_TAG_formal_parameter
	.long	121                     ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	12                      ## Abbrev [12] 0x184:0x5 DW_TAG_formal_parameter
	.long	132                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	15                      ## Abbrev [15] 0x18a:0x5 DW_TAG_friend
	.long	137                     ## DW_AT_friend
	.byte	15                      ## Abbrev [15] 0x18f:0x5 DW_TAG_friend
	.long	143                     ## DW_AT_friend
	.byte	15                      ## Abbrev [15] 0x194:0x5 DW_TAG_friend
	.long	149                     ## DW_AT_friend
	.byte	15                      ## Abbrev [15] 0x199:0x5 DW_TAG_friend
	.long	155                     ## DW_AT_friend
	.byte	0                       ## End Of Children Mark
	.byte	16                      ## Abbrev [16] 0x19f:0x39 DW_TAG_subprogram
Lset34 = Lstring31-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset34
	.long	251                     ## DW_AT_specification
	.quad	Lfunc_begin0            ## DW_AT_low_pc
	.quad	Lfunc_end0              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.byte	17                      ## Abbrev [17] 0x1ba:0xf DW_TAG_formal_parameter
Lset35 = Lstring35-Lsection_str         ## DW_AT_name
	.long	Lset35
	.byte	1                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	788                     ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.byte	18                      ## Abbrev [18] 0x1c9:0xe DW_TAG_formal_parameter
Lset36 = Lstring36-Lsection_str         ## DW_AT_name
	.long	Lset36
	.byte	1                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	105                     ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	116
	.byte	0                       ## End Of Children Mark
	.byte	16                      ## Abbrev [16] 0x1d8:0x39 DW_TAG_subprogram
Lset37 = Lstring32-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset37
	.long	251                     ## DW_AT_specification
	.quad	Lfunc_begin1            ## DW_AT_low_pc
	.quad	Lfunc_end1              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.byte	17                      ## Abbrev [17] 0x1f3:0xf DW_TAG_formal_parameter
Lset38 = Lstring35-Lsection_str         ## DW_AT_name
	.long	Lset38
	.byte	1                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	788                     ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.byte	18                      ## Abbrev [18] 0x202:0xe DW_TAG_formal_parameter
Lset39 = Lstring36-Lsection_str         ## DW_AT_name
	.long	Lset39
	.byte	1                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	105                     ## DW_AT_type
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	116
	.byte	0                       ## End Of Children Mark
	.byte	16                      ## Abbrev [16] 0x211:0x2b DW_TAG_subprogram
Lset40 = Lstring33-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset40
	.long	273                     ## DW_AT_specification
	.quad	Lfunc_begin2            ## DW_AT_low_pc
	.quad	Lfunc_end2              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.byte	17                      ## Abbrev [17] 0x22c:0xf DW_TAG_formal_parameter
Lset41 = Lstring35-Lsection_str         ## DW_AT_name
	.long	Lset41
	.byte	1                       ## DW_AT_decl_file
	.byte	17                      ## DW_AT_decl_line
	.long	788                     ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.byte	0                       ## End Of Children Mark
	.byte	16                      ## Abbrev [16] 0x23c:0x2b DW_TAG_subprogram
Lset42 = Lstring34-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset42
	.long	273                     ## DW_AT_specification
	.quad	Lfunc_begin3            ## DW_AT_low_pc
	.quad	Lfunc_end3              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.byte	17                      ## Abbrev [17] 0x257:0xf DW_TAG_formal_parameter
Lset43 = Lstring35-Lsection_str         ## DW_AT_name
	.long	Lset43
	.byte	1                       ## DW_AT_decl_file
	.byte	17                      ## DW_AT_decl_line
	.long	788                     ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.byte	0                       ## End Of Children Mark
	.byte	16                      ## Abbrev [16] 0x267:0x2b DW_TAG_subprogram
Lset44 = Lstring17-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset44
	.long	290                     ## DW_AT_specification
	.quad	Lfunc_begin4            ## DW_AT_low_pc
	.quad	Lfunc_end4              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.byte	17                      ## Abbrev [17] 0x282:0xf DW_TAG_formal_parameter
Lset45 = Lstring35-Lsection_str         ## DW_AT_name
	.long	Lset45
	.byte	1                       ## DW_AT_decl_file
	.byte	19                      ## DW_AT_decl_line
	.long	788                     ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.byte	0                       ## End Of Children Mark
	.byte	16                      ## Abbrev [16] 0x292:0x2b DW_TAG_subprogram
Lset46 = Lstring20-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset46
	.long	316                     ## DW_AT_specification
	.quad	Lfunc_begin5            ## DW_AT_low_pc
	.quad	Lfunc_end5              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.byte	17                      ## Abbrev [17] 0x2ad:0xf DW_TAG_formal_parameter
Lset47 = Lstring35-Lsection_str         ## DW_AT_name
	.long	Lset47
	.byte	1                       ## DW_AT_decl_file
	.byte	20                      ## DW_AT_decl_line
	.long	788                     ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.byte	0                       ## End Of Children Mark
	.byte	16                      ## Abbrev [16] 0x2bd:0x2b DW_TAG_subprogram
Lset48 = Lstring22-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset48
	.long	342                     ## DW_AT_specification
	.quad	Lfunc_begin6            ## DW_AT_low_pc
	.quad	Lfunc_end6              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.byte	17                      ## Abbrev [17] 0x2d8:0xf DW_TAG_formal_parameter
Lset49 = Lstring35-Lsection_str         ## DW_AT_name
	.long	Lset49
	.byte	1                       ## DW_AT_decl_file
	.byte	21                      ## DW_AT_decl_line
	.long	788                     ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.byte	0                       ## End Of Children Mark
	.byte	16                      ## Abbrev [16] 0x2e8:0x2b DW_TAG_subprogram
Lset50 = Lstring24-Lsection_str         ## DW_AT_MIPS_linkage_name
	.long	Lset50
	.long	368                     ## DW_AT_specification
	.quad	Lfunc_begin7            ## DW_AT_low_pc
	.quad	Lfunc_end7              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.byte	17                      ## Abbrev [17] 0x303:0xf DW_TAG_formal_parameter
Lset51 = Lstring35-Lsection_str         ## DW_AT_name
	.long	Lset51
	.byte	1                       ## DW_AT_decl_file
	.byte	22                      ## DW_AT_decl_line
	.long	788                     ## DW_AT_type
	.byte	1                       ## DW_AT_artificial
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	4                       ## Abbrev [4] 0x314:0x5 DW_TAG_pointer_type
	.long	168                     ## DW_AT_type
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
	.byte	4                       ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	5                       ## Abbreviation Code
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
	.byte	6                       ## Abbreviation Code
	.byte	2                       ## DW_TAG_class_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	60                      ## DW_AT_declaration
	.byte	12                      ## DW_FORM_flag
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	7                       ## Abbreviation Code
	.byte	38                      ## DW_TAG_const_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	8                       ## Abbreviation Code
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
	.byte	9                       ## Abbreviation Code
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
	.byte	10                      ## Abbreviation Code
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
	.byte	11                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	52                      ## DW_AT_artificial
	.byte	12                      ## DW_FORM_flag
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	12                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	13                      ## Abbreviation Code
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
	.byte	14                      ## Abbreviation Code
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
	.byte	15                      ## Abbreviation Code
	.byte	42                      ## DW_TAG_friend
	.byte	0                       ## DW_CHILDREN_no
	.byte	65                      ## DW_AT_friend
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	16                      ## Abbreviation Code
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
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	17                      ## Abbreviation Code
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
	.byte	18                      ## Abbreviation Code
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
	.byte	0                       ## EOM(3)
Labbrev_end:
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	14                      ## Header Bucket Count
	.long	14                      ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## eAtomTypeDIEOffset
	.short	6                       ## DW_FORM_data4
	.long	0                       ## Bucket 0
	.long	-1                      ## Bucket 1
	.long	-1                      ## Bucket 2
	.long	-1                      ## Bucket 3
	.long	-1                      ## Bucket 4
	.long	1                       ## Bucket 5
	.long	2                       ## Bucket 6
	.long	3                       ## Bucket 7
	.long	-1                      ## Bucket 8
	.long	4                       ## Bucket 9
	.long	8                       ## Bucket 10
	.long	10                      ## Bucket 11
	.long	12                      ## Bucket 12
	.long	13                      ## Bucket 13
	.long	2077526248              ## Hash in Bucket 0
	.long	395475785               ## Hash in Bucket 5
	.long	94716544                ## Hash in Bucket 6
	.long	523583963               ## Hash in Bucket 7
	.long	94680595                ## Hash in Bucket 9
	.long	-2032544873             ## Hash in Bucket 9
	.long	1570547645              ## Hash in Bucket 9
	.long	94715455                ## Hash in Bucket 9
	.long	-1502596404             ## Hash in Bucket 10
	.long	-1651519682             ## Hash in Bucket 10
	.long	-829730811              ## Hash in Bucket 11
	.long	1273601067              ## Hash in Bucket 11
	.long	94679506                ## Hash in Bucket 12
	.long	220063619               ## Hash in Bucket 13
	.long	LNames1-Lnames_begin    ## Offset in Bucket 0
	.long	LNames2-Lnames_begin    ## Offset in Bucket 5
	.long	LNames12-Lnames_begin   ## Offset in Bucket 6
	.long	LNames8-Lnames_begin    ## Offset in Bucket 7
	.long	LNames6-Lnames_begin    ## Offset in Bucket 9
	.long	LNames7-Lnames_begin    ## Offset in Bucket 9
	.long	LNames9-Lnames_begin    ## Offset in Bucket 9
	.long	LNames11-Lnames_begin   ## Offset in Bucket 9
	.long	LNames4-Lnames_begin    ## Offset in Bucket 10
	.long	LNames10-Lnames_begin   ## Offset in Bucket 10
	.long	LNames0-Lnames_begin    ## Offset in Bucket 11
	.long	LNames3-Lnames_begin    ## Offset in Bucket 11
	.long	LNames5-Lnames_begin    ## Offset in Bucket 12
	.long	LNames13-Lnames_begin   ## Offset in Bucket 13
LNames1:
Lset52 = Lstring24-Lsection_str         ## _ZN4xiao8Function9LocalJumpEPNS_14MachineContextE
	.long	Lset52
	.long	1                       ## Num DIEs
	.long	744
	.long	0
LNames2:
Lset53 = Lstring16-Lsection_str         ## ~Function
	.long	Lset53
	.long	2                       ## Num DIEs
	.long	529
	.long	572
	.long	0
LNames12:
Lset54 = Lstring34-Lsection_str         ## _ZN4xiao8FunctionD2Ev
	.long	Lset54
	.long	1                       ## Num DIEs
	.long	572
	.long	0
LNames8:
Lset55 = Lstring17-Lsection_str         ## _ZN4xiao8Function5EnterEPNS_14MachineContextE
	.long	Lset55
	.long	1                       ## Num DIEs
	.long	615
	.long	0
LNames6:
Lset56 = Lstring32-Lsection_str         ## _ZN4xiao8FunctionC2Ej
	.long	Lset56
	.long	1                       ## Num DIEs
	.long	472
	.long	0
LNames7:
Lset57 = Lstring23-Lsection_str         ## NonLocalJump
	.long	Lset57
	.long	1                       ## Num DIEs
	.long	701
	.long	0
LNames9:
Lset58 = Lstring22-Lsection_str         ## _ZN4xiao8Function12NonLocalJumpEPNS_14MachineContextE
	.long	Lset58
	.long	1                       ## Num DIEs
	.long	701
	.long	0
LNames11:
Lset59 = Lstring33-Lsection_str         ## _ZN4xiao8FunctionD1Ev
	.long	Lset59
	.long	1                       ## Num DIEs
	.long	529
	.long	0
LNames4:
Lset60 = Lstring25-Lsection_str         ## LocalJump
	.long	Lset60
	.long	1                       ## Num DIEs
	.long	744
	.long	0
LNames10:
Lset61 = Lstring20-Lsection_str         ## _ZN4xiao8Function6ReturnEPNS_14MachineContextE
	.long	Lset61
	.long	1                       ## Num DIEs
	.long	658
	.long	0
LNames0:
Lset62 = Lstring21-Lsection_str         ## Return
	.long	Lset62
	.long	1                       ## Num DIEs
	.long	658
	.long	0
LNames3:
Lset63 = Lstring30-Lsection_str         ## Function
	.long	Lset63
	.long	2                       ## Num DIEs
	.long	415
	.long	472
	.long	0
LNames5:
Lset64 = Lstring31-Lsection_str         ## _ZN4xiao8FunctionC1Ej
	.long	Lset64
	.long	1                       ## Num DIEs
	.long	415
	.long	0
LNames13:
Lset65 = Lstring18-Lsection_str         ## Enter
	.long	Lset65
	.long	1                       ## Num DIEs
	.long	615
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
Lset66 = Lstring9-Lsection_str          ## xiao
	.long	Lset66
	.long	2                       ## Num DIEs
	.long	68
	.long	161
	.long	0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	7                       ## Header Bucket Count
	.long	7                       ## Header Hash Count
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
	.long	2                       ## Bucket 1
	.long	-1                      ## Bucket 2
	.long	-1                      ## Bucket 3
	.long	3                       ## Bucket 4
	.long	-1                      ## Bucket 5
	.long	5                       ## Bucket 6
	.long	290711645               ## Hash in Bucket 0
	.long	2090120081              ## Hash in Bucket 0
	.long	-153162957              ## Hash in Bucket 1
	.long	1273601067              ## Hash in Bucket 4
	.long	789719536               ## Hash in Bucket 4
	.long	-1304652851             ## Hash in Bucket 6
	.long	-104093792              ## Hash in Bucket 6
	.long	Ltypes2-Ltypes_begin    ## Offset in Bucket 0
	.long	Ltypes4-Ltypes_begin    ## Offset in Bucket 0
	.long	Ltypes6-Ltypes_begin    ## Offset in Bucket 1
	.long	Ltypes0-Ltypes_begin    ## Offset in Bucket 4
	.long	Ltypes5-Ltypes_begin    ## Offset in Bucket 4
	.long	Ltypes1-Ltypes_begin    ## Offset in Bucket 6
	.long	Ltypes3-Ltypes_begin    ## Offset in Bucket 6
Ltypes2:
Lset67 = Lstring15-Lsection_str         ## uint32_t
	.long	Lset67
	.long	1                       ## Num DIEs
	.long	105
	.short	22
	.byte	0
	.long	0
Ltypes4:
Lset68 = Lstring4-Lsection_str          ## bool
	.long	Lset68
	.long	1                       ## Num DIEs
	.long	38
	.short	36
	.byte	0
	.long	0
Ltypes6:
Lset69 = Lstring8-Lsection_str          ## code_t
	.long	Lset69
	.long	1                       ## Num DIEs
	.long	75
	.short	22
	.byte	0
	.long	0
Ltypes0:
Lset70 = Lstring30-Lsection_str         ## Function
	.long	Lset70
	.long	1                       ## Num DIEs
	.long	168
	.short	2
	.byte	2
	.long	0
Ltypes5:
Lset71 = Lstring7-Lsection_str          ## uint8_t
	.long	Lset71
	.long	1                       ## Num DIEs
	.long	52
	.short	22
	.byte	0
	.long	0
Ltypes1:
Lset72 = Lstring14-Lsection_str         ## unsigned int
	.long	Lset72
	.long	1                       ## Num DIEs
	.long	98
	.short	36
	.byte	0
	.long	0
Ltypes3:
Lset73 = Lstring6-Lsection_str          ## unsigned char
	.long	Lset73
	.long	1                       ## Num DIEs
	.long	45
	.short	36
	.byte	0
	.long	0
	.section	__DWARF,__debug_pubtypes,regular,debug
Lset74 = Lpubtypes_end1-Lpubtypes_begin1 ## Length of Public Types Info
	.long	Lset74
Lpubtypes_begin1:
	.short	2                       ## DWARF Version
Lset75 = Linfo_begin1-Lsection_info     ## Offset of Compilation Unit Info
	.long	Lset75
Lset76 = Linfo_end1-Linfo_begin1        ## Compilation Unit Length
	.long	Lset76
	.long	168                     ## DIE offset
	.asciz	 "Function"             ## External Name
	.long	0                       ## End Mark
Lpubtypes_end1:
	.section	__DWARF,__debug_aranges,regular,debug
	.section	__DWARF,__debug_ranges,regular,debug
	.section	__DWARF,__debug_macinfo,regular,debug
	.section	__DWARF,__debug_inlined,regular,debug
Lset77 = Ldebug_inlined_end1-Ldebug_inlined_begin1 ## Length of Debug Inlined Information Entry
	.long	Lset77
Ldebug_inlined_begin1:
	.short	2                       ## Dwarf Version
	.byte	8                       ## Address Size (in bytes)
Ldebug_inlined_end1:
	.section	__DWARF,__debug_str,regular,debug
Lstring0:
	.asciz	 "clang version 3.1 (trunk 154299)"
Lstring1:
	.asciz	 "xiao/lib/function.cc"
Lstring2:
	.asciz	 "/Users/petergoodman/Code/xiao"
Lstring3:
	.asciz	 "can_tail_call"
Lstring4:
	.asciz	 "bool"
Lstring5:
	.asciz	 "start"
Lstring6:
	.asciz	 "unsigned char"
Lstring7:
	.asciz	 "uint8_t"
Lstring8:
	.asciz	 "code_t"
Lstring9:
	.asciz	 "xiao"
Lstring10:
	.asciz	 "end"
Lstring11:
	.asciz	 "patches"
Lstring12:
	.asciz	 "AbstractPatch"
Lstring13:
	.asciz	 "id"
Lstring14:
	.asciz	 "unsigned int"
Lstring15:
	.asciz	 "uint32_t"
Lstring16:
	.asciz	 "~Function"
Lstring17:
	.asciz	 "_ZN4xiao8Function5EnterEPNS_14MachineContextE"
Lstring18:
	.asciz	 "Enter"
Lstring19:
	.asciz	 "MachineContext"
Lstring20:
	.asciz	 "_ZN4xiao8Function6ReturnEPNS_14MachineContextE"
Lstring21:
	.asciz	 "Return"
Lstring22:
	.asciz	 "_ZN4xiao8Function12NonLocalJumpEPNS_14MachineContextE"
Lstring23:
	.asciz	 "NonLocalJump"
Lstring24:
	.asciz	 "_ZN4xiao8Function9LocalJumpEPNS_14MachineContextE"
Lstring25:
	.asciz	 "LocalJump"
Lstring26:
	.asciz	 "LocalJumpPatch"
Lstring27:
	.asciz	 "NonLocalJumpPatch"
Lstring28:
	.asciz	 "ReturnPatch"
Lstring29:
	.asciz	 "EntryPatch"
Lstring30:
	.asciz	 "Function"
Lstring31:
	.asciz	 "_ZN4xiao8FunctionC1Ej"
Lstring32:
	.asciz	 "_ZN4xiao8FunctionC2Ej"
Lstring33:
	.asciz	 "_ZN4xiao8FunctionD1Ev"
Lstring34:
	.asciz	 "_ZN4xiao8FunctionD2Ev"
Lstring35:
	.asciz	 "this"
Lstring36:
	.asciz	 "id_"

.subsections_via_symbols
