/* tc-flare32.c -- Assemble code for flare32
   Copyright (C) 2023 Free Software Foundation, Inc.

   This file is part of GAS, the GNU Assembler.

   GAS is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3, or (at your option)
   any later version.

   GAS is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with GAS; see the file COPYING.  If not, write to
   the Free Software Foundation, 51 Franklin Street - Fifth Floor,
   Boston, MA 02110-1301, USA.  */

#ifndef __TC_FLARE32_H__
#define __TC_FLARE32_H__

/* Contributed by Andrew Clark (FL4SHK) */
#define TC_FLARE32 1
#define TARGET_BYTES_BIG_ENDIAN 1

/* Words are big enough to hold addresses.  */
#define WORKING_DOT_WORD

/* This macro is the BFD architecture to pass to `bfd_set_arch_mach'.  */
#define TARGET_FORMAT "elf32-flare32"
#define TARGET_ARCH bfd_arch_flare32

#define md_undefined_symbol(NAME)           0

/* If this macro is defined and evaluates to zero then GAS will not fold 
  expressions that add or subtract a constant to/from a register to give 
  another register.
  For example GAS’s default behaviour is to fold
  the expression "r8 + 1" into "r9",
  which is probably not the result intended by the programmer. The 
  default is to allow such folding, since this maintains backwards   
  compatibility with earlier releases of GAS. */
//#define md_register_arithmetic 0


extern void
flare32_md_end (void);
#define md_end flare32_md_end

/* These macros must be defined, but is will be a fatal assembler
   error if we ever hit them.  */
#define md_estimate_size_before_relax(A, B) \
  (as_fatal (_("estimate size\n")), 0)
#define md_convert_frag(B, S, F) \
  as_fatal (_("convert_frag\n"))

#define GAS_SORT_RELOCS 1

/* If you define this macro, and the global variable ‘linkrelax’ is set 
  (because of a command-line option, or unconditionally in md_begin),
  a ‘.align’ directive will cause extra space to be allocated.
  The linker can then discard this space when relaxing the section. */
//#define LINKER_RELAXING_SHRINKS_ONLY

#define md_section_align(SEGMENT, SIZE)     (SIZE)

/* We always relax during linking, so we don't need `TC_VALIDATE_FIX`. */
/* This macro is evaluated for each fixup (when linkrelax is not set).
  It may be used to change the fixup in struct fix *fixP before the generic 
  code sees it, or to fully process the fixup. In the latter case, a goto 
  skip will bypass the generic code. 

  Check also that `fx_addsy` is not `NULL`, to make sure the fixup refers 
  to some sort of label. */
//#define TC_VALIDATE_FIX(fixP, valP, seg)
//  if ((fixP->fx_r_type == BFD_RELOC_FLARE32_G1G5G6_S5
//    || fixP->fx_r_type == BFD_RELOC_FLARE32_G1G5G6_S17
//    || fixP->fx_r_type == BFD_RELOC_FLARE32_G1G5G6_S32
//    || fixP->fx_r_type == BFD_RELOC_FLARE32_G3_S9_PCREL
//    || fixP->fx_r_type == BFD_RELOC_FLARE32_G3_S21_PCREL
//    || fixP->fx_r_type == BFD_RELOC_FLARE32_G3_S32_PCREL)
//    && fixP->fx_addsy != NULL
//    && fixP->fx_subsy != NULL)
//  {
//    symbol_mark_used_in_reloc (fixP->fx_addsy);
//    goto SKIP;
//  }

/* We always relax during linking, so we don't need
  `TC_VALIDATE_FIX_SUB`. */
/* This macro is evaluated for any fixup with a fx_subsy that
  fixup_segment cannot reduce to a number.  If the macro returns
  false an error will be reported.  */
//#define TC_VALIDATE_FIX_SUB(fix, seg) flare32_validate_fix_sub (fix)
//extern int flare32_validate_fix_sub (fixS *fix);

/* Because we evaluate relocs in the linker, we don't need
  `TC_FORCE_RELOCATION` and friends. */
/* If this macro returns non-zero, it guarantees that a relocation will be 
  emitted even when the value can be resolved locally, as fixup_segment 
  tries to reduce the number of relocations emitted. For example, a fixup 
  expression against an absolute symbol will normally not require a reloc.
  If undefined, a default of (S_FORCE_RELOC ((fix)->fx_addsy)) is used. */
/* If this macro returns non-zero, it guarantees that a relocation will be
  emitted even when the value can be resolved locally.  Do that if
  linkrelax is turned on.  */
//#define TC_FORCE_RELOCATION(fix) 1
//#define TC_FORCE_RELOCATION(fix)
//  flare32_force_relocation (fix)
//#define TC_FORCE_RELOCATION_SUB_SAME(fix, seg)
//  (GENERIC_FORCE_RELOCATION_SUB_SAME (fix, seg)
//    || flare32_force_relocation (fix))
//extern int flare32_force_relocation (fixS *fix);


/* Do not use PC relative fixups and relocations for
  anything but real PCREL relocations.  */
//#define TC_FORCE_RELOCATION_SUB_LOCAL(FIX, SEG)
//  (((FIX)->fx_r_type != BFD_RELOC_FLARE32_G3_S9_PCREL)
//  && ((FIX)->fx_r_type != BFD_RELOC_FLARE32_G3_S21_PCREL)
//  && ((FIX)->fx_r_type != BFD_RELOC_FLARE32_G3_S32_PCREL))


/* Let the linker resolve all the relocs due to relaxation. */
//#define tc_fix_adjustable(fixP) 0
#define md_allow_local_subtract(l, r, s) 0
// flare32_allow_local_subtract (l, r, s)
//extern bool flare32_allow_local_subtract
//  (expressionS *left, expressionS *right, segT section);

/* No shared lib support, so we don't need to ensure externally
  visible symbols can be overridden.  */
#define EXTERN_FORCE_RELOC 1

/* Used to generate fixups during data allocation pseudo-ops */  
#define TC_CONS_FIX_NEW flare32_cons_fix_new
extern void
flare32_cons_fix_new (struct frag *frag,
                      int where,
                      unsigned int nbytes,
                      struct expressionS *ex,
                      const int unused_arg ATTRIBUTE_UNUSED);

#define tc_regname_to_dw2regnum \
  flare32_regname_to_dw2regnum
extern int
flare32_regname_to_dw2regnum (char *name);
#define tc_cfi_frame_initial_instructions \
  flare32_frame_initial_instructions
extern void
flare32_frame_initial_instructions (void);

#endif    /* __TC_FLARE32_H__ */
