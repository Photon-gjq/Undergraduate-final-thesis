%%
%% This is file `fduthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% fduthesis.dtx  (with options: `class')
%% 
%%     Copyright (C) 2017--2022 by Xiangdong Zeng <xdzeng96@gmail.com>
%% 
%%     This work may be distributed and/or modified under the
%%     conditions of the LaTeX Project Public License, either
%%     version 1.3c of this license or (at your option) any later
%%     version. The latest version of this license is in:
%% 
%%       http://www.latex-project.org/lppl.txt
%% 
%%     and version 1.3 or later is part of all distributions of
%%     LaTeX version 2005/12/01 or later.
%% 
%%     This work has the LPPL maintenance status `maintained'.
%% 
%%     The Current Maintainer of this work is Xiangdong Zeng.
%% 
%%     This work consists of the files fduthesis.dtx,
%%                                     fduthesis-doc.dtx,
%%                                     fduthesis-logo.dtx,
%%                                     fduthesis-template.tex,
%%               and the derived files fduthesis.ins,
%%                                     fduthesis.cls,
%%                                     fduthesis-en.cls,
%%                                     fduthesis.def,
%%                                     fdudoc.cls,
%%                                     fdulogo.sty,
%%                                     fdulogo-example.tex,
%%                                     fduthesis-cover.tex,
%%                                     fduthesis-en.tex,
%%                                     fudan-emblem.pdf,
%%                                     fudan-emblem-new.pdf,
%%                                     fudan-name.pdf,
%%                                     fduthesis.pdf,
%%                                     fduthesis-en.pdf,
%%                                     fduthesis-code.pdf,
%%                                 and README.md.
%% 
\NeedsTeXFormat{LaTeX2e}[2020/10/01]
\GetIdInfo $Id: fduthesis.dtx 0.7e 2020-08-30 12:00:00Z Xiangdong Zeng <xdzeng96@gmail.com> $
  {Thesis template for Fudan University}
\ProvidesExplClass{\ExplFileName}
  {\ExplFileDate}{\ExplFileVersion}{\ExplFileDescription}
\RequirePackage { xtemplate, l3keys2e }
\msg_new:nnn { fduthesis } { l3-too-old }
  {
    Package~ "#1"~ is~ too~ old. \\\\
    Please~ update~ an~ up-to-date~ version~ of~ the~ bundles \\
    "l3kernel"~ and~ "l3packages"~ using~ your~ TeX~ package \\
    manager~ or~ from~ CTAN.
  }
\clist_map_inline:nn { xtemplate, l3keys2e }
  {
    \@ifpackagelater {#1} { 2020/07/17 }
      { } { \msg_error:nnn { fduthesis } { l3-too-old } {#1} }
  }
\msg_new:nnn { fduthesis } { unsupported-engine }
  {
    The~ fduthesis~ class~ requires~ either~ XeTeX~ or~ LuaTeX. \\\\
    "#1"~ is~ not~ supported~ at~ present.~ You~ must~ change \\
    your~ typesetting~ engine~ to~ "xelatex"~ or~ "lualatex".
  }
\sys_if_engine_xetex:F
  {
    \sys_if_engine_luatex:F
      {
        \msg_fatal:nnx { fduthesis } { unsupported-engine }
          { \c_sys_engine_str }
      }
  }
\box_new:N   \l__fdu_tmpa_box
\clist_new:N \l__fdu_tmpa_clist
\clist_new:N \l__fdu_tmpb_clist
\dim_new:N   \l__fdu_tmpa_dim
\dim_new:N   \l__fdu_tmpb_dim
\skip_new:N  \l__fdu_tmpa_skip
\tl_new:N    \l__fdu_tmpa_tl
\tl_new:N    \l__fdu_tmpb_tl
\int_new:N \g__fdu_thesis_type_int
\clist_new:N \g__fdu_to_ctexbook_clist
\clist_new:N \g__fdu_to_hyperref_clist
\bool_new:N \g__fdu_twoside_bool
\bool_set_true:N \g__fdu_twoside_bool
\bool_new:N \g__fdu_draft_bool
\tl_new:N \g__fdu_config_tl
\cs_generate_variant:Nn \file_input:n     { V  }
\cs_generate_variant:Nn \int_to_arabic:n  { v  }
\cs_generate_variant:Nn \keys_define:nn   { nx }
\cs_generate_variant:Nn \tl_map_inline:nn { xn }
\prg_generate_conditional_variant:Nnn \tl_if_eq:nn { Vn } { T, TF }
\cs_new:Npn \__fdu_quad:  { \skip_horizontal:n { 1 em } }
\cs_new:Npn \__fdu_qquad: { \skip_horizontal:n { 2 em } }
\cs_new_protected:Npn \__fdu_vspace:N #1
  {
    \dim_set_eq:NN \l__fdu_tmpa_dim \prevdepth
    \hrule height \c_zero_dim
    \nobreak
    \skip_vertical:N #1
    \skip_vertical:N \c_zero_skip
    \dim_set_eq:NN \prevdepth \l__fdu_tmpa_dim
  }
\cs_new_protected:Npn \__fdu_vspace:n #1
  {
    \skip_set:Nn \l__fdu_tmpa_skip {#1}
    \__fdu_vspace:N \l__fdu_tmpa_skip
  }
\cs_generate_variant:Nn \__fdu_vspace:N { c }
\cs_new:Npn \__fdu_symbol:n #1 { \tex_char:D #1 \scan_stop: }
\cs_new:Npn \__fdu_arabic:n #1
  { \int_to_arabic:v { c@ #1 } }
\cs_new_protected:Npn \__fdu_gadd_ltxhook:nn #1#2
  { \hook_gput_code:nnn {#1} { . } {#2} }
\hook_gset_rule:nnnn { begindocument/before } { . } { < } { xeCJK }
\cs_new_protected:Npn \__fdu_patch_cmd:Nnn #1#2#3
  {
    \ctex_patch_cmd_once:NnnnTF #1 { } {#2} {#3}
      { } { \ctex_patch_failure:N #1 }
  }
\cs_new_protected:Npn \__fdu_appto_cmd:Nn #1#2
  {
    \ctex_appto_cmd:NnnTF #1 { } {#2}
      { } { \ctex_patch_failure:N #1 }
  }
\cs_new_protected:Npn \__fdu_define_fn_style:nn #1#2
  { \tl_const:cn { c__fdu_fn_style_ #1 _tl } {#2} }
\cs_new_protected:Npn \__fdu_define_punct:nn #1#2
  { \tl_const:cn { c__fdu_ #1 _tl } {#2} }
\cs_new_protected:Npn \__fdu_define_name:nn #1#2
  { \tl_const:cn { c__fdu_name_ #1 _tl } {#2} }
\cs_new_protected:Npn \__fdu_define_name:nnn #1#2#3
  {
    \tl_const:cn { c__fdu_name_ #1    _tl } {#2}
    \tl_const:cn { c__fdu_name_ #1 _en_tl } {#3}
  }
\cs_new:Npn \__fdu_msg_new:nn  { \msg_new:nnn      { fduthesis } }
\cs_new:Npn \__fdu_error:n     { \msg_error:nn     { fduthesis } }
\cs_new:Npn \__fdu_error:nn    { \msg_error:nnn    { fduthesis } }
\cs_new:Npn \__fdu_error:nx    { \msg_error:nnx    { fduthesis } }
\cs_new:Npn \__fdu_error:nnn   { \msg_error:nnnn   { fduthesis } }
\cs_new:Npn \__fdu_error:nnnn  { \msg_error:nnnnn  { fduthesis } }
\cs_new:Npn \__fdu_warning:n   { \msg_warning:nn   { fduthesis } }
\cs_new:Npn \__fdu_warning:nn  { \msg_warning:nnn  { fduthesis } }
\cs_new:Npn \__fdu_warning:nxx { \msg_warning:nnxx { fduthesis } }
\cs_new:Npn \__fdu_info:nx     { \msg_info:nnx     { fduthesis } }
\keys_define:nn { fdu / option }
  {
    type .choice:,
    type .value_required:n = true,
    type .choices:nn =
      { doctor, master, bachelor }
      { \int_set_eq:NN \g__fdu_thesis_type_int \l_keys_choice_int },
    type .initial:n = bachelor,
    oneside .value_forbidden:n = true,
    twoside .value_forbidden:n = true,
    oneside .code:n =
      {
        \clist_gput_right:Nn \g__fdu_to_ctexbook_clist { oneside }
        \bool_set_false:N    \g__fdu_twoside_bool
      },
    twoside .code:n =
      {
        \clist_gput_right:Nn \g__fdu_to_ctexbook_clist { twoside }
        \bool_set_true:N     \g__fdu_twoside_bool
      },
    draft .choice:,
    draft / true  .code:n =
      {
        \bool_set_true:N     \g__fdu_draft_bool
        \clist_gput_right:Nn \g__fdu_to_ctexbook_clist { draft }
      },
    draft / false .code:n =
      { \bool_set_false:N    \g__fdu_draft_bool },
    draft .default:n = true,
    draft .initial:n = false,
    config .tl_set:N = \g__fdu_config_tl,
    unknown .code:n = { \__fdu_error:n { unknown-option } }
  }
\__fdu_msg_new:nn { unknown-option }
  { Class~ option~ "\l_keys_key_str"~ is~ unknown. }
\ProcessKeysOptions { fdu / option }
\file_input:n { fduthesis.def }
\__fdu_msg_new:nn { load-config-file }
  { You~ are~ loading~ config~ file~ "#1". }
\tl_if_empty:NF \g__fdu_config_tl
  {
    \__fdu_info:nx { load-config-file } { \g__fdu_config_tl }
    \file_input:V \g__fdu_config_tl
  }
\PassOptionsToClass
  {
    UTF8,
    heading    = true,
    fontset    = none,
    zihao      = -4,
    linespread = \c__fdu_line_spread_fp,
    \g__fdu_to_ctexbook_clist
  }
  { ctexbook }
\clist_map_inline:nn
  {
    { no-math           } { fontspec },
    { perpage           } { footmisc },
    { amsmath, thmmarks } { ntheorem }
  }
  { \PassOptionsToPackage #1 }
\RequirePackage { etoolbox }
\LoadClass { ctexbook }
\RequirePackage
  {
    amsmath,
    unicode-math,
    geometry,
    fancyhdr,
    footmisc,
    ntheorem,
    graphicx,
    longtable,
    caption,
    xcolor,
    pdfpages,
  }
\cs_new_protected:Npn \__fdu_check_package:nnn #1#2#3
  {
    \@ifpackagelater {#1} {#2}
      { } { \__fdu_error:nnnn { package-too-old } { Package } {#1} {#3} }
  }
\cs_new_protected:Npn \__fdu_check_class:nnn #1#2#3
  {
    \@ifclasslater {#1} {#2}
      { } { \__fdu_error:nnnn { package-too-old } { Class } {#1} {#3} }
  }
\__fdu_msg_new:nn { package-too-old }
  {
    #1~ "#2"~ is~ too~ old. \\
    The~ fduthesis~ class~ only~ supports~ "#2" \\
    with~ a~ version~ higher~ than~ v#3. \\\\
    Please~ update~ an~ up-to-date~ version~ of~ it \\
    using~ your~ TeX~ package~ manager~ or~ from~ CTAN.
  }
\__fdu_check_class:nnn { ctexbook } { 2021/03/14 } { 2.5.6 }
\sys_if_engine_xetex:T
  { \__fdu_check_package:nnn { xeCJK } { 2020/05/01 } { 3.8.3 } }
\geometry
  {
    paper      = a4paper,
    vmargin    = 2.54 cm,
    hmargin    = 3.18 cm,
    headheight = 15 pt
  }
\bool_if:NT \g__fdu_draft_bool { \geometry { showframe } }
\tl_new:N \g__fdu_fontset_tl
\tl_new:N \g__fdu_cjk_fontset_tl
\keys_define:nn { fdu / style }
  {
    font .choices:nn =
      { garamond, libertinus, lm, palatino, times, times*, none }
      { \tl_set_eq:NN \g__fdu_fontset_tl \l_keys_choice_tl }
  }
\keys_define:nn { fdu / style }
  {
    cjk-font .choices:nn =
      { adobe, fandol, founder, mac, sinotype, sourcehan, windows, none }
      { \tl_set_eq:NN \g__fdu_cjk_fontset_tl \l_keys_choice_tl }
  }
\cs_new_protected:Npn \__fdu_setmainfont:nn #1#2
  { \__fontspec_main_setmainfont:nn {#2} {#1} }
\cs_new_protected:Npn \__fdu_setsansfont:nn #1#2
  { \__fontspec_main_setsansfont:nn {#2} {#1} }
\cs_new_protected:Npn \__fdu_setmonofont:nn #1#2
  { \__fontspec_main_setmonofont:nn {#2} {#1} }
\cs_new_protected:Npn \__fdu_setmathfont:nn #1#2
  { \__um_setmathfont:nn {#2} {#1} }
\cs_new_protected:Npn \__fdu_setCJKmainfont:nn #1#2
  { \__fdu_set_family:xnn { \CJKrmdefault } {#2} {#1} }
\cs_new_protected:Npn \__fdu_setCJKsansfont:nn #1#2
  { \__fdu_set_family:xnn { \CJKsfdefault } {#2} {#1} }
\cs_new_protected:Npn \__fdu_setCJKmonofont:nn #1#2
  { \__fdu_set_family:xnn { \CJKttdefault } {#2} {#1} }
\cs_new_protected:Npn \__fdu_set_cjk_font_kai:nn #1#2
  { \__fdu_set_family:nnn { fdu@kai } {#2} {#1} }
\cs_new_protected:Npn \fdu@kai
  { \__fdu_switch_family:n { fdu@kai } }
\tl_const:Nn \__fdu_cjk_font_options:
 { UprightFont = *, ItalicFont = *, AutoFakeBold = true }
\cs_new_protected:Npx \__fdu_setCJKmainfont:n   #1
  { \__fdu_setCJKmainfont:nn   {#1} { \__fdu_cjk_font_options: } }
\cs_new_protected:Npx \__fdu_setCJKsansfont:n   #1
  { \__fdu_setCJKsansfont:nn   {#1} { \__fdu_cjk_font_options: } }
\cs_new_protected:Npx \__fdu_setCJKmonofont:n   #1
  { \__fdu_setCJKmonofont:nn   {#1} { \__fdu_cjk_font_options: } }
\cs_new_protected:Npx \__fdu_set_cjk_font_kai:n #1
  { \__fdu_set_cjk_font_kai:nn {#1} { \__fdu_cjk_font_options: } }
\sys_if_engine_xetex:TF
  {
    \cs_new_eq:NN \__fdu_set_family:nnn  \xeCJK_set_family:nnn
    \cs_new_eq:NN \__fdu_switch_family:n \xeCJK_switch_family:n
  }
  {
    \cs_new_eq:NN \__fdu_set_family:nnn  \ctex_ltj_set_family:nnn
    \cs_new_eq:NN \__fdu_switch_family:n \ctex_ltj_switch_family:n
  }
\cs_generate_variant:Nn \__fdu_set_family:nnn { x }
\cs_new_protected:Npn \__fdu_set_font_helper:n #1
  {
    \exp_args:Nc \RenewDocumentCommand { set #1 font } { O { } m O { } }
      {
        \ctex_at_end_preamble:n
          { \use:c { __fdu_set #1 font:nn } {##2} { ##1, ##3 } }
      }
  }
\clist_map_inline:nn { main, sans, mono, math    } { \__fdu_set_font_helper:n {#1} }
\clist_map_inline:nn { CJKmain, CJKsans, CJKmono } { \__fdu_set_font_helper:n {#1} }
\tl_new:N \g__fdu_font_family_libertinus_serif_tl
\tl_new:N \g__fdu_font_family_libertinus_sans_tl
\tl_new:N \g__fdu_font_style_libertinus_rm_tl
\tl_new:N \g__fdu_font_style_libertinus_bf_tl
\tl_new:N \g__fdu_font_style_libertinus_it_tl
\tl_new:N \g__fdu_font_style_libertinus_bfit_tl
\tl_new:N \g__fdu_font_style_libertinus_bfsl_tl
\tl_new:N \g__fdu_font_family_xits_tl
\tl_new:N \g__fdu_font_style_xits_rm_tl
\tl_new:N \g__fdu_font_style_xits_bf_tl
\tl_new:N \g__fdu_font_style_xits_it_tl
\tl_new:N \g__fdu_font_style_xits_bfit_tl
\tl_new:N \g__fdu_font_name_libertinus_serif_tl
\tl_new:N \g__fdu_font_name_libertinus_sans_tl
\tl_new:N \g__fdu_font_name_libertinus_math_tl
\tl_new:N \g__fdu_font_name_xits_tl
\tl_new:N \g__fdu_font_name_xits_math_rm_tl
\tl_new:N \g__fdu_font_name_xits_math_bf_tl
\fontspec_font_if_exist:nTF { LibertinusSerif-Regular.otf }
  {
    \tl_set:Nn \g__fdu_font_family_libertinus_serif_tl { LibertinusSerif }
    \tl_set:Nn \g__fdu_font_family_libertinus_sans_tl  { LibertinusSans  }
    \tl_set:Nn \g__fdu_font_family_libertinus_math_tl  { LibertinusMath  }
    \tl_set:Nn \g__fdu_font_style_libertinus_rm_tl     { Regular         }
    \tl_set:Nn \g__fdu_font_style_libertinus_bf_tl     { Bold            }
    \tl_set:Nn \g__fdu_font_style_libertinus_it_tl     { Italic          }
    \tl_set:Nn \g__fdu_font_style_libertinus_bfit_tl   { BoldItalic      }
    \fontspec_font_if_exist:nTF { LibertinusSans-BoldOblique.otf }
      { \tl_set:Nn \g__fdu_font_style_libertinus_bfsl_tl { BoldOblique } }
      { \tl_set:Nn \g__fdu_font_style_libertinus_bfsl_tl { Bold        } }
  }
  {
    \tl_set:Nn \g__fdu_font_family_libertinus_serif_tl { libertinusserif }
    \tl_set:Nn \g__fdu_font_family_libertinus_sans_tl  { libertinussans  }
    \tl_set:Nn \g__fdu_font_family_libertinus_math_tl  { libertinusmath  }
    \tl_set:Nn \g__fdu_font_style_libertinus_rm_tl     { regular         }
    \tl_set:Nn \g__fdu_font_style_libertinus_bf_tl     { bold            }
    \tl_set:Nn \g__fdu_font_style_libertinus_it_tl     { italic          }
    \tl_set:Nn \g__fdu_font_style_libertinus_bfit_tl   { bolditalic      }
    \tl_set:Nn \g__fdu_font_style_libertinus_bfsl_tl   { bolditalic      }
  }
\fontspec_font_if_exist:nTF { XITS-Regular.otf }
  {
    \tl_set:Nn \g__fdu_font_family_xits_tl        { XITS             }
    \tl_set:Nn \g__fdu_font_style_xits_rm_tl      { Regular          }
    \tl_set:Nn \g__fdu_font_style_xits_bf_tl      { Bold             }
    \tl_set:Nn \g__fdu_font_style_xits_it_tl      { Italic           }
    \tl_set:Nn \g__fdu_font_style_xits_bfit_tl    { BoldItalic       }
    \tl_set:Nn \g__fdu_font_name_xits_math_rm_tl  { XITSMath-Regular }
    \tl_set:Nn \g__fdu_font_name_xits_math_bf_tl  { XITSMath-Bold    }
  }
  {
    \tl_set:Nn \g__fdu_font_family_xits_tl        { xits          }
    \tl_set:Nn \g__fdu_font_style_xits_rm_tl      { regular       }
    \tl_set:Nn \g__fdu_font_style_xits_bf_tl      { bold          }
    \tl_set:Nn \g__fdu_font_style_xits_it_tl      { italic        }
    \tl_set:Nn \g__fdu_font_style_xits_bfit_tl    { bolditalic    }
    \tl_set:Nn \g__fdu_font_name_xits_math_rm_tl  { xits-math     }
    \tl_set:Nn \g__fdu_font_name_xits_math_bf_tl  { xits-mathbold }
  }
\tl_set:Nx \g__fdu_font_name_libertinus_serif_tl
  { \g__fdu_font_family_libertinus_serif_tl - \g__fdu_font_style_libertinus_rm_tl }
\tl_set:Nx \g__fdu_font_name_libertinus_sans_tl
  { \g__fdu_font_family_libertinus_sans_tl  - \g__fdu_font_style_libertinus_rm_tl }
\tl_set:Nx \g__fdu_font_name_libertinus_math_tl
  { \g__fdu_font_family_libertinus_math_tl  - \g__fdu_font_style_libertinus_rm_tl }
\tl_set:Nx \g__fdu_font_name_xits_tl
  { \g__fdu_font_family_xits_tl - \g__fdu_font_style_xits_rm_tl }
\cs_new_protected:Npn \__fdu_load_font_garamond:
  {
    \__fdu_setmainfont:nn { EBGaramond }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Italic,
        BoldItalicFont = *-BoldItalic
      }
    \__fdu_setsansfont:nn { \g__fdu_font_family_libertinus_sans_tl }
      {
        Extension      = .otf,
        UprightFont    = *-\g__fdu_font_style_libertinus_rm_tl,
        BoldFont       = *-\g__fdu_font_style_libertinus_bf_tl,
        ItalicFont     = *-\g__fdu_font_style_libertinus_it_tl,
        BoldItalicFont = *-\g__fdu_font_style_libertinus_bfsl_tl
      }
    \__fdu_setmonofont:nn { lmmonolt10 }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-oblique,
        BoldItalicFont = *-boldoblique
      }
    \__fdu_setmathfont:nn { Garamond-Math.otf } { }
  }
\cs_new_protected:Npn \__fdu_load_font_libertinus:
  {
    \__fdu_setmainfont:nn { \g__fdu_font_family_libertinus_serif_tl }
      {
        Extension      = .otf,
        UprightFont    = *-\g__fdu_font_style_libertinus_rm_tl,
        BoldFont       = *-\g__fdu_font_style_libertinus_bf_tl,
        ItalicFont     = *-\g__fdu_font_style_libertinus_it_tl,
        BoldItalicFont = *-\g__fdu_font_style_libertinus_bfit_tl
      }
    \__fdu_setsansfont:nn { \g__fdu_font_family_libertinus_sans_tl }
      {
        Extension      = .otf,
        UprightFont    = *-\g__fdu_font_style_libertinus_rm_tl,
        BoldFont       = *-\g__fdu_font_style_libertinus_bf_tl,
        ItalicFont     = *-\g__fdu_font_style_libertinus_it_tl,
        BoldItalicFont = *-\g__fdu_font_style_libertinus_bfsl_tl
      }
    \__fdu_setmonofont:nn { lmmonolt10 }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-oblique,
        BoldItalicFont = *-boldoblique
      }
    \__fdu_setmathfont:nn { \g__fdu_font_name_libertinus_math_tl .otf } { }
  }
\cs_new_protected:Npn \__fdu_load_font_lm:
  { \__fdu_setmathfont:nn { latinmodern-math.otf } { } }
\cs_new_protected:Npn \__fdu_load_font_palatino:
  {
    \__fdu_setmainfont:nn { texgyrepagella }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-italic,
        BoldItalicFont = *-bolditalic
      }
    \__fdu_setsansfont:nn { \g__fdu_font_family_libertinus_sans_tl }
      {
        Extension      = .otf,
        UprightFont    = *-\g__fdu_font_style_libertinus_rm_tl,
        BoldFont       = *-\g__fdu_font_style_libertinus_bf_tl,
        ItalicFont     = *-\g__fdu_font_style_libertinus_it_tl,
        BoldItalicFont = *-\g__fdu_font_style_libertinus_bfsl_tl,
        Scale          = MatchUppercase
      }
    \__fdu_setmonofont:nn { lmmonolt10 }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-oblique,
        BoldItalicFont = *-boldoblique
      }
    \__fdu_setmathfont:nn { texgyrepagella-math.otf } { }
  }
\cs_new_protected:Npn \__fdu_load_font_times:
  {
    \__fdu_setmainfont:nn { \g__fdu_font_family_xits_tl }
      {
        Extension          = .otf,
        UprightFont        = *-\g__fdu_font_style_xits_rm_tl,
        BoldFont           = *-\g__fdu_font_style_xits_bf_tl,
        ItalicFont         = *-\g__fdu_font_style_xits_it_tl,
        BoldItalicFont     = *-\g__fdu_font_style_xits_bfit_tl
      }
    \__fdu_setsansfont:nn { texgyreheros }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-italic,
        BoldItalicFont = *-bolditalic
      }
    \__fdu_setmonofont:nn { texgyrecursor }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-italic,
        BoldItalicFont = *-bolditalic,
        Ligatures      = CommonOff
      }
    \__fdu_setmathfont:nn { \g__fdu_font_name_xits_math_rm_tl .otf }
      { BoldFont = \g__fdu_font_name_xits_math_bf_tl .otf }
  }
\cs_new_protected:cpn { __fdu_load_font_ times* : }
  {
    \__fdu_setmainfont:nn { Times~ New~ Roman    } { }
    \__fdu_setsansfont:nn { Arial                } { }
    \__fdu_setmonofont:nn { Courier~ New         } { }
    \__fdu_setmathfont:nn { \g__fdu_font_name_xits_math_rm_tl .otf }
      { BoldFont = \g__fdu_font_name_xits_math_bf_tl .otf }
  }
\cs_new_protected:Npn \__fdu_load_cjk_font_adobe:
  {
    \__fdu_setCJKmainfont:n   { AdobeSongStd-Light       }
    \__fdu_setCJKsansfont:n   { AdobeHeitiStd-Regular    }
    \__fdu_setCJKmonofont:n   { AdobeFangsongStd-Regular }
    \__fdu_set_cjk_font_kai:n { AdobeKaitiStd-Regular    }
  }
\cs_new_protected:Npn \__fdu_load_cjk_font_fandol:
  {
    \__fdu_setCJKmainfont:nn   { FandolSong }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Bold
      }
    \__fdu_setCJKsansfont:nn   { FandolHei  }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Bold
      }
    \__fdu_setCJKmonofont:nn   { FandolFang }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Regular,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Regular
      }
    \__fdu_set_cjk_font_kai:nn { FandolKai  }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Regular,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Regular
      }
  }
\cs_new_protected:Npn \__fdu_load_cjk_font_founder:
  {
    \__fdu_setCJKmainfont:n   { FZShuSong-Z01  }
    \__fdu_setCJKsansfont:n   { FZHei-B01      }
    \__fdu_setCJKmonofont:n   { FZFangSong-Z02 }
    \__fdu_set_cjk_font_kai:n { FZKai-Z03      }
  }
\cs_new_protected:Npn \__fdu_load_cjk_font_mac:
  {
    \__fdu_setCJKmainfont:nn   { STSongti-SC }
      {
        UprightFont    = *-Light,
        BoldFont       = *-Bold,
        ItalicFont     = *-Light,
        BoldItalicFont = *-Bold
      }
    \__fdu_setCJKsansfont:nn   { STHeitiSC   }
      {
        UprightFont    = *-Medium,
        BoldFont       = *-Medium,
        ItalicFont     = *-Medium,
        BoldItalicFont = *-Medium
      }
    \__fdu_setCJKmonofont:n    { STFangsong  }
    \__fdu_set_cjk_font_kai:nn { STKaitiSC   }
      {
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Bold
      }
  }
\cs_new_protected:Npn \__fdu_load_cjk_font_sinotype:
  {
    \__fdu_setCJKmainfont:n   { STSong     }
    \__fdu_setCJKsansfont:n   { STHeiti    }
    \__fdu_setCJKmonofont:n   { STFangsong }
    \__fdu_set_cjk_font_kai:n { STKaiti    }
  }
\cs_new_protected:Npn \__fdu_load_cjk_font_sourcehan:
  {
    \__fdu_setCJKmainfont:nn { SourceHanSerifSC }
      {
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Bold
      }
    \__fdu_setCJKsansfont:nn { SourceHanSansSC  }
      {
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Bold
      }
    \__fdu_warning:n { source-han }
  }
\__fdu_msg_new:nn { source-han }
  { Font~ set~ "sourcehan"~ does~ not~ contain~ kaiti~ and~ fangsong. }
\cs_new_protected:Npn \__fdu_load_cjk_font_windows:
  {
    \__fdu_setCJKmainfont:n   { SimSun   }
    \__fdu_setCJKsansfont:n   { SimHei   }
    \__fdu_setCJKmonofont:n   { FangSong }
    \__fdu_set_cjk_font_kai:n { KaiTi    }
  }
\cs_new_protected:Npn \__fdu_load_font:
  {
    \use:c { __fdu_load_font_     \g__fdu_fontset_tl     : }
    \use:c { __fdu_load_cjk_font_ \g__fdu_cjk_fontset_tl : }
  }
\ctex_at_end_preamble:n { \__fdu_load_font: }
\keys_set:nn { unicode-math }
  {
    math-style = ISO,
    bold-style = ISO,
  }
\keys_define:nn { fdu / style }
  {
    font-size .choice:,
    font-size .value_required:n = true,
    font-size / -4 .code:n = { },
    font-size /  5 .code:n =
      {
        \RenewDocumentCommand \tiny         { } { \zihao {  7 } }
        \RenewDocumentCommand \scriptsize   { } { \zihao { -6 } }
        \RenewDocumentCommand \footnotesize { } { \zihao {  6 } }
        \RenewDocumentCommand \small        { } { \zihao { -5 } }
        \RenewDocumentCommand \normalsize   { } { \zihao {  5 } }
        \RenewDocumentCommand \large        { } { \zihao { -4 } }
        \RenewDocumentCommand \Large        { } { \zihao { -3 } }
        \RenewDocumentCommand \LARGE        { } { \zihao { -2 } }
        \RenewDocumentCommand \huge         { } { \zihao {  2 } }
        \RenewDocumentCommand \Huge         { } { \zihao {  1 } }
      },
    fullwidth-stop .choice:,
    fullwidth-stop .value_required:n = true,
    fullwidth-stop / catcode .code:n =
      { \__fdu_set_fullwidth_stop_catcode: },
    fullwidth-stop / mapping .code:n =
      {
        \sys_if_engine_xetex:TF
          {
            \clist_gset:Nn \g__xeCJK_default_features_clist
              { Mapping = fullwidth-stop }
          }
          {
            \sys_if_engine_luatex:T
              {
                \__fdu_warning:n { mapping-not-available }
                \__fdu_set_fullwidth_stop_catcode:
              }
          }
      },
    fullwidth-stop / false .code:n = { }
  }
\__fdu_msg_new:nn { mapping-not-available }
  {
    Option~ "fullwidth-stop = mapping"~ is~ not~ available~ in~ LuaTeX. \\
    "fullwidth-stop = catcode"~ will~ be~ set~ instead.
  }
\cs_new:Npn \__fdu_set_fullwidth_stop_catcode:
  {
    \char_set_active_eq:NN ^^^^3002 \c__fdu_fwid_full_stop_tl
    \char_set_catcode_active:N ^^^^3002
    \clist_map_inline:nn
      { \c__fdu_orig_decl_text_tl, \c__fdu_auth_decl_text_tl }
      { \tl_set_rescan:Nno ##1 { } {##1} }
  }
\DeclareEmphSequence
  {
    \itshape \fdu@kai,
    \upshape \CJKfamily { \CJKfamilydefault },
  }
\fancyhf { }
\tl_new:N \l__fdu_header_center_mark_tl
\fancyhead [ C ] { \small \c__fdu_name_head_tl }
\fancyfoot [ C ] { \small \thepage }
\RenewDocumentCommand \cleardoublepage { }
  {
    \clearpage
    \bool_if:NT \g__fdu_twoside_bool
      {
        \int_if_odd:nF \c@page
          { \hbox:n { } \thispagestyle { empty } \newpage }
      }
    \tl_gset:Nn \l__fdu_header_center_mark_tl { }
  }
\pagestyle { fancy }
\int_set:cn { c@secnumdepth } { 3 }
\clist_map_inline:nn { 5, -4, 3 }
  {
    \group_begin:
      \zihao {#1}
      \skip_const:cn { c__fdu_zihao_ #1 _base_line_skip } { \baselineskip }
    \group_end:
  }
\cs_new:Npn \__fdu_base_line_skip:n #1
  { \use:c { c__fdu_zihao_ #1 _base_line_skip } }
\keys_set:nn { ctex }
  {
    chapter =
      {
        format      = \zihao { 3 } \normalfont \sffamily \centering,
        number      = \__fdu_arabic:n { chapter },
        beforeskip  =
          \skip_eval:n
            { 1.5 \__fdu_base_line_skip:n { 5 } - 0.5 \__fdu_base_line_skip:n { 3 } },
        afterskip   =
          \skip_eval:n
            { 1.5 \__fdu_base_line_skip:n { 5 } - 0.5 \__fdu_base_line_skip:n { 3 } },
      },
    section =
      {
        format      = \zihao { 4 } \normalfont \bfseries \raggedright,
        beforeskip  =
          \skip_eval:n
            { \__fdu_base_line_skip:n { 5 } - 0.5 \__fdu_base_line_skip:n { 3 } },
        afterskip   =
          \skip_eval:n
            { \__fdu_base_line_skip:n { 5 } - 0.5 \__fdu_base_line_skip:n { 3 } },
      },
    subsection =
      {
        format      = \normalfont \sffamily \raggedright,
        beforeskip  = \skip_eval:n { 0.5 \__fdu_base_line_skip:n { 5 } },
        afterskip   = \skip_eval:n { 0.5 \__fdu_base_line_skip:n { 5 } },
      },
    subsubsection =
      {
        format      = \normalfont \fdu_cjk_font_kai: \raggedright,
        number      = \__fdu_arabic:n { subsubsection },
        indent      = 2 \ccwd,
        beforeskip  = \c_zero_skip,
        afterskip   = \c_zero_skip,
      }
  }
\cs_new_protected:Npn \__fdu_chapter:n #1
  {
    \group_begin:
      \ctexset { chapter / numbering = false }
      \chapter {#1}
      \__fdu_chapter_header:n {#1}
    \group_end:
  }
\cs_generate_variant:Nn \__fdu_chapter:n { V }
\cs_new_protected:Npn \__fdu_chapter_no_toc:n #1
  {
    \chapter *           {#1}
    \__fdu_chapter_header:n {#1}
    \pdfbookmark [0] {#1} { toc }
  }
\cs_generate_variant:Nn \__fdu_chapter_no_toc:n { V }
\cs_new_protected:Npn \__fdu_chapter_header:n #1
  {
    \bool_if:NTF \g__fdu_twoside_bool
      { \markboth {#1} {#1} }
      {
        \markboth { } { }
        \tl_gset:Nn \l__fdu_header_center_mark_tl {#1}
      }
  }
\clist_map_inline:nn
  {
    { plain           } { plain           },
    { libertinus      } { libertinus      },
    { libertinus_neg  } { libertinus*     },
    { libertinus_sans } { libertinus-sans },
    { pifont          } { pifont          },
    { pifont_neg      } { pifont*         },
    { pifont_sans     } { pifont-sans     },
    { pifont_sans_neg } { pifont-sans*    },
    { xits            } { xits            },
    { xits_sans       } { xits-sans       },
    { xits_sans_neg   } { xits-sans*      }
  }
  { \__fdu_define_fn_style:nn #1 }
\tl_new:N \l__fdu_fn_style_tl
\keys_define:nn { fdu / style }
  {
    footnote-style .choices:nn =
      {
        plain,
        libertinus, libertinus*, libertinus-sans,
        pifont,     pifont*,     pifont-sans,     pifont-sans*,
        xits,                    xits-sans,       xits-sans*
      }
      {
        \tl_gset_eq:NN \l__fdu_fn_style_tl \l_keys_choice_tl
        \int_compare:nT { 5 <= \l_keys_choice_int <= 8 }
          { \RequirePackage { pifont } }
      },
    footnote-style .value_required:n = true
  }
\cs_new:Npn \__fdu_fn_symbol_libertinus:n #1
  {
    \int_compare:nTF { #1 >= 21 }
      {
        \int_compare:nTF { #1 >= 47 }
          { \__fdu_symbol:n { \int_eval:n { "24B6 - 47 + #1 } } }
          { \__fdu_symbol:n { \int_eval:n { "24D0 - 21 + #1 } } }
      }
      { \__fdu_symbol:n { \int_eval:n { "2460 - 1 + #1 } } }
  }
\cs_new:Npn \__fdu_fn_symbol_libertinus_neg:n #1
  {
    \int_compare:nTF { #1 >= 11 }
      { \__fdu_symbol:n { \int_eval:n { "24EB - 11 + #1 } } }
      { \__fdu_symbol:n { \int_eval:n { "2776 -  1 + #1 } } }
  }
\cs_new_eq:NN \__fdu_fn_symbol_libertinus_sans:n \__fdu_fn_symbol_libertinus:n
\cs_new:Npn \__fdu_fn_symbol_pifont:n #1
  { \ding { \int_eval:n { 171 + #1 } } }
\cs_new:Npn \__fdu_fn_symbol_pifont_neg:n #1
  { \ding { \int_eval:n { 181 + #1 } } }
\cs_new:Npn \__fdu_fn_symbol_pifont_sans:n #1
  { \ding { \int_eval:n { 191 + #1 } } }
\cs_new:Npn \__fdu_fn_symbol_pifont_sans_neg:n #1
  { \ding { \int_eval:n { 201 + #1 } } }
\cs_new:Npn \__fdu_fn_symbol_xits:n #1
  {
    \int_compare:nTF { #1 >= 10 }
      {
        \int_compare:nTF { #1 >= 36 }
          { \__fdu_symbol:n { \int_eval:n { "24B6 - 36 + #1 } } }
          { \__fdu_symbol:n { \int_eval:n { "24D0 - 10 + #1 } } }
      }
      { \__fdu_symbol:n { \int_eval:n { "2460 - 1 + #1 } } }
  }
\cs_new:Npn \__fdu_fn_symbol_xits_sans:n #1
  { \__fdu_symbol:n { \int_eval:n { "2780 - 1 + #1 } } }
\cs_new:Npn \__fdu_fn_symbol_xits_sans_neg:n #1
  { \__fdu_symbol:n { \int_eval:n { "278A - 1 + #1 } } }
\cs_set:Npn \thefootnote { \fdu_footnote_number:N \c@footnote }
\cs_new:Npn \fdu_footnote_number:N #1
  {
    \tl_case:NnF \l__fdu_fn_style_tl
      {
        \c__fdu_fn_style_plain_tl
          { \int_use:N #1 }
        \c__fdu_fn_style_libertinus_tl
          {
            \fontspec { \g__fdu_font_name_libertinus_serif_tl .otf }
            \__fdu_fn_symbol_libertinus:n {#1}
          }
        \c__fdu_fn_style_libertinus_neg_tl
          {
            \fontspec { \g__fdu_font_name_libertinus_serif_tl .otf }
            \__fdu_fn_symbol_libertinus_neg:n {#1}
          }
        \c__fdu_fn_style_libertinus_sans_tl
          {
            \fontspec { \g__fdu_font_name_libertinus_sans_tl .otf }
            \__fdu_fn_symbol_libertinus_sans:n {#1}
          }
        \c__fdu_fn_style_pifont_tl
          { \__fdu_fn_symbol_pifont:n {#1} }
        \c__fdu_fn_style_pifont_neg_tl
          { \__fdu_fn_symbol_pifont_neg:n {#1} }
        \c__fdu_fn_style_pifont_sans_tl
          { \__fdu_fn_symbol_pifont_sans:n {#1} }
        \c__fdu_fn_style_pifont_sans_neg_tl
          { \__fdu_fn_symbol_pifont_sans_neg:n {#1} }
        \c__fdu_fn_style_xits_tl
          {
            \fontspec { \g__fdu_font_name_xits_tl .otf }
            \__fdu_fn_symbol_xits:n {#1}
          }
        \c__fdu_fn_style_xits_sans_tl
          {
            \fontspec { \g__fdu_font_name_xits_tl .otf }
            \__fdu_fn_symbol_xits_sans:n {#1}
          }
        \c__fdu_fn_style_xits_sans_neg_tl
          {
            \fontspec { \g__fdu_font_name_xits_tl .otf }
            \__fdu_fn_symbol_xits_sans_neg:n {#1}
          }
      }
      { \int_use:N #1 }
  }
\cs_set:Npn \@makefntext #1
  {
    \mode_leave_vertical:
    \hbox_to_wd:nn { 1.5 em } { \@thefnmark \hfil }
    #1
  }
\clist_const:Nn \c__fdu_thm_style_plain_clist
  { plain, margin, change }
\clist_const:Nn \c__fdu_thm_style_break_clist
  { break, marginbreak, changebreak }
\tl_new:N \l__fdu_thm_style_tl
\tl_new:N \l__fdu_thm_header_font_tl
\tl_new:N \l__fdu_thm_body_font_tl
\tl_new:N \l__fdu_thm_qed_tl
\tl_new:N \l__fdu_thm_counter_tl
\keys_define:nn { fdu / theorem }
  {
    style       .tl_set:N  = \l__fdu_thm_style_tl,
    header-font .tl_set:N  = \l__fdu_thm_header_font_tl,
    body-font   .tl_set:N  = \l__fdu_thm_body_font_tl,
    qed         .tl_set:N  = \l__fdu_thm_qed_tl,
    counter     .tl_set:N  = \l__fdu_thm_counter_tl
  }
\cs_new_eq:NN \__fdu_thm_ntheorem_style:n \theoremstyle
\cs_new_eq:NN \__fdu_thm_ntheorem_new:w   \newtheorem
\RenewDocumentCommand \newtheorem { s o m m }
  {
    \IfBooleanTF {#1}
      { \tl_set:Nn \l__fdu_thm_qed_tl { \ensuremath { \QED } } }
      { \tl_set:Nn \l__fdu_thm_qed_tl { } }
    \tl_set:Nn \l__fdu_thm_style_tl { plain }
    \IfValueT {#2} { \keys_set:nn { fdu / theorem } {#2} }
    \fdu_thm_set_header_font:V \l__fdu_thm_header_font_tl
    \fdu_thm_set_body_font:V   \l__fdu_thm_body_font_tl
    \fdu_thm_set_qed:V         \l__fdu_thm_qed_tl
    \IfBooleanTF {#1}
      {
        \clist_if_in:nVF { plain, break } \l__fdu_thm_style_tl
          {
            \clist_if_in:NVTF
              \c__fdu_thm_style_plain_clist \l__fdu_thm_style_tl
              { \__fdu_thm_redefine_style:n { plain } }
              {
                \clist_if_in:NVTF
                  \c__fdu_thm_style_break_clist \l__fdu_thm_style_tl
                  { \__fdu_thm_redefine_style:n { break } }
                  {
                    \__fdu_error:nx { unknown-theorem-style }
                      { \l__fdu_thm_style_tl }
                  }
              }
          }
        \tl_put_left:Nn \l__fdu_thm_style_tl { nonumber }
        \fdu_thm_new_no_number:Vxx \l__fdu_thm_style_tl {#3} {#4}
      }
      {
        \clist_clear:N \l__fdu_tmpa_clist
        \clist_concat:NNN \l__fdu_tmpa_clist
          \c__fdu_thm_style_plain_clist \c__fdu_thm_style_break_clist
        \clist_if_in:NVF \l__fdu_tmpa_clist \l__fdu_thm_style_tl
          {
            \__fdu_error:nx { unknown-theorem-style }
              { \l__fdu_thm_style_tl }
          }
        \fdu_thm_new:VVxx \l__fdu_thm_style_tl \l__fdu_thm_counter_tl
          {#3} {#4}
      }
  }
\cs_new:Npn \__fdu_thm_redefine_style:n #1
  {
    \__fdu_warning:nxx { redefine-theorem-style }
      {#1} { \l__fdu_thm_style_tl }
    \tl_set:Nn \l__fdu_thm_style_tl {#1}
  }
\__fdu_msg_new:nn { redefine-theorem-style }
  { Theorem~ style~ "#2"~ will~ be~ redefined~ as~ "#1". }
\__fdu_msg_new:nn { unknown-theorem-style }
  { Theorem~ style~ "#1"~ is~ unknown. }
\cs_new:Npn \fdu_thm_new:nnnn #1#2#3#4
  {
    \__fdu_thm_ntheorem_style:n {#1}
    \__fdu_thm_ntheorem_new:w   {#3} {#4} [#2]
  }
\cs_generate_variant:Nn \fdu_thm_new:nnnn { VVxx }
\cs_new:Npn \fdu_thm_new_no_number:nnn #1#2#3
  {
    \__fdu_thm_ntheorem_style:n {#1}
    \__fdu_thm_ntheorem_new:w   {#2} {#3}
  }
\cs_generate_variant:Nn \fdu_thm_new_no_number:nnn { Vxx }
\cs_new:Npn \fdu_thm_set_qed:n         #1 { \theoremsymbol     {#1} }
\cs_new:Npn \fdu_thm_set_header_font:n #1 { \theoremheaderfont {#1} }
\cs_new:Npn \fdu_thm_set_body_font:n   #1 { \theorembodyfont   {#1} }
\cs_generate_variant:Nn \fdu_thm_set_qed:n         { V }
\cs_generate_variant:Nn \fdu_thm_set_header_font:n { V }
\cs_generate_variant:Nn \fdu_thm_set_body_font:n   { V }
\captionsetup [ figure ]
  {
    font     = small,
    labelsep = quad
  }
\captionsetup [ table  ]
  {
    font     = small,
    labelsep = quad
  }
\clist_map_inline:nn
  {
    title, date, author, supervisor, supervisor_title, department, affiliation,
    major, student_id, school_id, clc
  }
  { \tl_new:c { l__fdu_info_ #1 _tl } }
\clist_new:N \l__fdu_info_instructors_clist
\clist_new:N \l__fdu_info_keywords_clist
\clist_map_inline:nn
  { title, author, supervisor, department, major }
  { \tl_new:c { l__fdu_info_ #1 _en_tl } }
\clist_new:N \l__fdu_info_keywords_en_clist
\int_new:N \l__fdu_info_degree_type_int
\keys_define:nn { fdu / info }
  {
    degree      .choices:nn  =
      { academic, professional }
      { \int_set_eq:NN \l__fdu_info_degree_type_int \l_keys_choice_int },
    title       .tl_set:N    = \l__fdu_info_title_tl,
    title*      .tl_set:N    = \l__fdu_info_title_en_tl,
    date        .tl_set:N    = \l__fdu_info_date_tl,
    author      .tl_set:N    = \l__fdu_info_author_tl,
    author*     .tl_set:N    = \l__fdu_info_author_en_tl,
    supervisor  .tl_set:N    = \l__fdu_info_supervisor_tl,
    supervisor-title .tl_set:N    = \l__fdu_info_supervisor_title_tl,
    instructors .clist_set:N = \l__fdu_info_instructors_clist,
    department  .tl_set:N    = \l__fdu_info_department_tl,
    affiliation .tl_set:N    = \l__fdu_info_affiliation_tl,
    major       .tl_set:N    = \l__fdu_info_major_tl,
    student-id  .tl_set:N    = \l__fdu_info_student_id_tl,
    school-id   .tl_set:N    = \l__fdu_info_school_id_tl,
    keywords    .clist_set:N = \l__fdu_info_keywords_clist,
    keywords*   .clist_set:N = \l__fdu_info_keywords_en_clist,
    clc         .tl_set:N    = \l__fdu_info_clc_tl
  }
\tl_new:N \l__fdu_logo_name_tl
\tl_new:N \l__fdu_logo_emblem_tl
\keys_define:nn { fdu / style }
  {
    logo-name   .tl_set:N = \l__fdu_logo_name_tl,
    logo-emblem .tl_set:N = \l__fdu_logo_emblem_tl,
  }
\bool_new:N \l__fdu_secret_bool
\tl_new:N \l__fdu_info_secret_level_tl
\keys_define:nn { fdu / info }
  {
    secret-level .choices:nn  =
      { none, i, ii, iii }
      {
        \int_compare:nTF { \l_keys_choice_int >= 2 }
          {
            \bool_set_true:N \l__fdu_secret_bool
            \tl_set:Nn \l__fdu_info_secret_level_tl
              {
                \clist_item:Nn \c__fdu_secret_clist
                  { \l_keys_choice_int - 1 }
              }
          }
          { \bool_set_false:N \l__fdu_secret_bool }
      },
    secret-level .value_required:n = true,
    secret-year  .tl_set:N = \l__fdu_info_secret_year_tl
  }
\cs_new_protected:Npn \__fdu_spread_box:nn #1#2
  {
    \mode_leave_vertical:
    \hbox_to_wd:nn {#1}
      { \tl_map_inline:xn {#2} { ##1 \hfil } \unskip }
  }
\cs_new_protected:Npn \__fdu_center_box:nn #1#2
  {
    \mode_leave_vertical:
    \hbox_to_wd:nn {#1} { \hfil #2 \hfil }
  }
\cs_generate_variant:Nn \__fdu_center_box:nn  { Vn }
\cs_new:Npn \__fdu_fixed_width_box:nn #1#2
  { \parbox [t] {#1} {#2} }
\cs_new:Npn \__fdu_fixed_width_center_box:nn #1#2
  { \parbox [t] {#1} { \centering #2 } }
\cs_new:Npn \__fdu_get_text_width:Nn #1#2
  {
    \hbox_set:Nn \l__fdu_tmpa_box {#2}
    \dim_set:Nn #1 { \box_wd:N \l__fdu_tmpa_box }
  }
\cs_generate_variant:Nn \__fdu_get_text_width:Nn { NV }
\cs_new:Npn \__fdu_get_max_text_width:NN #1#2
  {
    \group_begin:
      \clist_set_eq:NN \l__fdu_tmpa_clist #2
      \bool_until_do:nn { \clist_if_empty_p:N \l__fdu_tmpa_clist }
        {
          \clist_pop:NN \l__fdu_tmpa_clist \l__fdu_tmpa_tl
          \__fdu_get_text_width:NV \l__fdu_tmpa_dim \l__fdu_tmpa_tl
          \dim_gset:Nn #1 { \dim_max:nn {#1} { \l__fdu_tmpa_dim } }
        }
    \group_end:
  }
\cs_new:Npn \__fdu_blank_underline:n #1
  { \rule [ -0.5 ex ] {#1} { 0.4 pt } }
\cs_new:Npn \__fdu_line_spread:N #1
  { \linespread { \fp_use:N #1 } \selectfont }
\cs_new:Npn \__fdu_line_spread:n #1
  { \linespread {#1} \selectfont }
\DeclareObjectType { fdu / cover } { \c_zero_int }
\NewDocumentCommand \DeclareCoverTemplate { m m }
  { \fdu_cover_declare_template:nn {#1} {#2} }
\cs_new_protected:Npn \fdu_cover_declare_template:nn #1#2
  {
    \tl_set:Nn \l__fdu_cover_template_tl {#1}
    \__fdu_cover_declare_template_interface:nx {#1}
      {
        format      : tokenlist,
        top-skip    : skip,
        bottom-skip : skip,
        \clist_map_function:nN {#2} \__fdu_cover_key_type:n
      }
    \tl_new:c   { l__fdu_cover / #1 / format_tl   }
    \skip_new:c { l__fdu_cover / #1 / top_skip    }
    \skip_new:c { l__fdu_cover / #1 / bottom_skip }
    \clist_map_inline:nn {#2}
      {
        \tl_new:c   { l__fdu_cover / #1 / ##1 / content_tl  }
        \tl_new:c   { l__fdu_cover / #1 / ##1 / format_tl   }
        \skip_new:c { l__fdu_cover / #1 / ##1 / bottom_skip }
      }
    \__fdu_cover_declare_template_code:nxn {#1}
      {
        format      = \exp_not:c { l__fdu_cover / #1 / format_tl   },
        top-skip    = \use:c     { l__fdu_cover / #1 / top_skip    },
        bottom-skip = \use:c     { l__fdu_cover / #1 / bottom_skip },
        \clist_map_function:nN {#2} \__fdu_cover_key_binding:n
      }
      {
        \AssignTemplateKeys
        \tl_use:c       { l__fdu_cover / #1 / format_tl }
        \__fdu_vspace:c { l__fdu_cover / #1 / top_skip  }
        \clist_map_inline:nn {#2}
          {
            \use:c { __fdu_cover / #1 / ####1 / align:n }
              {
                \tl_use:c { l__fdu_cover / #1 / ####1 / format_tl  }
                \tl_use:c { l__fdu_cover / #1 / ####1 / content_tl }
                \par
              }
            \__fdu_vspace:c { l__fdu_cover / #1 / ####1 / bottom_skip }
          }
        \__fdu_vspace:c { l__fdu_cover / #1 / bottom_skip }
      }
  }
\tl_new:N \l__fdu_cover_template_tl
\cs_new_protected:Npn \__fdu_cover_declare_template_interface:nn #1#2
  { \DeclareTemplateInterface { fdu / cover } {#1} { \c_zero_int } {#2} }
\cs_new_protected:Npn \__fdu_cover_declare_template_code:nnn #1#2#3
  { \DeclareTemplateCode { fdu / cover } {#1} { \c_zero_int } {#2} {#3} }
\cs_generate_variant:Nn \__fdu_cover_declare_template_interface:nn { nx  }
\cs_generate_variant:Nn \__fdu_cover_declare_template_code:nnn     { nxn }
\cs_new:Npn \__fdu_cover_key_type:n #1
  {
    #1 / content     : tokenlist,
    #1 / format      : tokenlist,
    #1 / bottom-skip : skip,
    #1 / align       : choice { left, right, center, normal } = normal,
  }
\cs_new:Npn \__fdu_cover_key_binding:n #1
  {
    #1 / content     =
      \exp_not:c
        { l__fdu_cover / \l__fdu_cover_template_tl / #1 / content_tl  },
    #1 / format      =
      \exp_not:c
        { l__fdu_cover / \l__fdu_cover_template_tl / #1 / format_tl   },
    #1 / bottom-skip =
      \exp_not:c
        { l__fdu_cover / \l__fdu_cover_template_tl / #1 / bottom_skip },
    #1 / align       =
      {
        left   =
          \exp_not:N \cs_set_protected:cpn
            { __fdu_cover / \l__fdu_cover_template_tl / #1 / align:n }
            \exp_not:n {##1}
            {
              \exp_not:n
                {
                  \group_begin:
                    \flushleft ##1 \endflushleft
                  \group_end:
                }
            },
        right  =
          \exp_not:N \cs_set_protected:cpn
            { __fdu_cover / \l__fdu_cover_template_tl / #1 / align:n }
            \exp_not:n {##1}
            {
              \exp_not:n
                {
                  \group_begin:
                    \flushright ##1 \endflushright
                  \group_end:
                }
            },
        center =
          \exp_not:N \cs_set_protected:cpn
            { __fdu_cover / \l__fdu_cover_template_tl / #1 / align:n }
            \exp_not:n {##1}
            {
              \exp_not:n
                {
                  \group_begin:
                    \center ##1 \endcenter
                  \group_end:
                }
            },
        normal =
          \exp_not:N \cs_set_protected:cpn
            { __fdu_cover / \l__fdu_cover_template_tl / #1 / align:n }
            \exp_not:n {##1}
            { \exp_not:n { \group_begin: ##1 \group_end: } }
      },
  }
\NewDocumentCommand \makecoveri { }
  {
    \thispagestyle { empty }
    \UseInstance { fdu / cover } { cover-phys-default }
  }
\DeclareCoverTemplate { cover-phys } { logo-i, title, logo-ii, info }
\DeclareInstance { fdu / cover } { cover-phys-default } { cover-phys }
  {
    top-skip              = 0 pt plus 0.1fill,
    bottom-skip           = 0 pt plus 0.4 fill,
    logo-i  / content     = \__fdu_cover_logo_i:,
    title   / content     = \c__fdu_name_thesis_title_tl,
    logo-ii / content     = \__fdu_cover_logo_ii:,
    info    / content     = \__fdu_cover_info:,
    title   / format      = \fontsize { 35 } { 35 } \selectfont \sffamily,
    info    / format      = \__fdu_line_spread:n { 1.8 },
    title   / bottom-skip = 0 pt plus 0.1 fill,
    logo-ii / bottom-skip = 0 pt plus 0.2 fill,
    logo-i  / align       = center,
    title   / align       = center,
    logo-ii / align       = center,
    info    / align       = center,
  }
\cs_new_protected:Npn \__fdu_cover_logo_i:
  { \includegraphics [ width = 6.60 cm ] { \l__fdu_logo_name_tl   } }
\cs_new_protected:Npn \__fdu_cover_logo_ii:
  { \includegraphics [ width = 3.70 cm ] { \l__fdu_logo_emblem_tl } }
\cs_new_protected:Npn \__fdu_cover_info:
  {
    \__fdu_cover_title:n       {  20 }
    \__fdu_cover_info_aux_i:nn { 7.5 } { author           }
    \__fdu_cover_info_aux_i:nn { 7.5 } { student_id       } \__fdu_cover_info_skip:
    \__fdu_cover_info_aux_i:nn {  20 } { department       } \__fdu_cover_info_skip:
    \__fdu_cover_info_aux_i:nn {  20 } { major            } \__fdu_cover_info_skip:
    \__fdu_cover_info_aux_i:nn { 7.5 } { supervisor       }
    \__fdu_cover_info_aux_i:nn { 7.5 } { supervisor_title } \__fdu_cover_info_skip:
    \__fdu_cover_info_aux_i:nn {  20 } { affiliation      } \__fdu_cover_info_skip:
    \__fdu_cover_info_aux_i:nn {  20 } { date             }
  }
\cs_new_protected:Npn \__fdu_cover_title:n #1
  {
    \exp_args:NNV \clist_set:Nn \l__fdu_tmpa_clist \l__fdu_info_title_tl
    \clist_pop:NN  \l__fdu_tmpa_clist \l__fdu_tmpa_tl
    \clist_pop:NNF \l__fdu_tmpa_clist \l__fdu_tmpb_tl
      { \tl_set_eq:NN \l__fdu_tmpb_tl \c_empty_tl }
    \tl_if_empty:NTF \l__fdu_tmpb_tl
      {
        \__fdu_cover_info_aux_ii:nnnn {#1}
          { \c__fdu_name_title_tl } { \l__fdu_tmpa_tl } { \c__fdu_fwid_colon_tl }
        \__fdu_cover_info_skip:
      }
      {
        \__fdu_cover_info_aux_ii:nnnn {#1}
          { \c__fdu_name_title_tl } { \l__fdu_tmpa_tl } { \c__fdu_fwid_colon_tl }
        \__fdu_cover_info_skip:
        \__fdu_cover_info_aux_ii:nnnn {#1}
          { } { \l__fdu_tmpb_tl } { \phantom { \c__fdu_fwid_colon_tl } }
        \__fdu_cover_info_skip:
      }
  }
\cs_new_protected:Npn \__fdu_cover_info_aux_i:nn #1#2
  {
    \__fdu_cover_info_aux_ii:nnnn {#1}
      { \tl_use:c { c__fdu_name_ #2 _tl } }
      { \tl_use:c { l__fdu_info_ #2 _tl } }
      { \c__fdu_fwid_colon_tl }
  }
\cs_new_protected:Npn \__fdu_cover_info_aux_ii:nnnn #1#2#3#4
  {
    \__fdu_cover_info_format:
    \__fdu_spread_box:nn { 4 \ccwd } {#2}
    #4
    % \hbox_overlap_right:n { #1 \ccwd }
    % \hbox_overlap_right:n { \__fdu_blank_underline:n { #1 \ccwd } }
    \__fdu_fixed_width_center_box:nn { #1 \ccwd } {#3}
  }
\cs_new_protected:Npn \__fdu_cover_info_format:
  { \zihao { -3 } \sffamily }
\cs_new_protected:Npn \__fdu_cover_info_skip:
  { \skip_vertical:n { 0.2 ex } }
\bool_new:N \l__fdu_auto_make_cover_bool
\keys_define:nn { fdu / style }
  {
    auto-make-cover .bool_set:N = \l__fdu_auto_make_cover_bool,
    auto-make-cover .default:n  = true
  }
\AtBeginDocument
  {
    \bool_if:NT \l__fdu_auto_make_cover_bool
      {
        \begin{titlepage}
          \makecoveri
          \newpage
          \includepdf { cover-2 }
        \end{titlepage}
      }
  }
\AtEndDocument
  { \includepdf { cover-3 } }
\keys_set:nn { ctex }
  {
    contentsname   = \c__fdu_name_toc_tl,
    listfigurename = \c__fdu_name_lof_tl,
    listtablename  = \c__fdu_name_lot_tl,
    chapter / tocline =
      {
        \normalfont \sffamily
        \CTEXnumberline {#1} #2
      },
    section / tocline =
      {
        \CTEXnumberline {#1} #2
      },
    subsection / tocline =
      {
        \fdu@kai
        \CTEXnumberline {#1} #2
      }
  }
\__fdu_patch_cmd:Nnn \tableofcontents
  {
    \chapter*{\contentsname
      \@mkboth{\MakeUppercase\contentsname}
              {\MakeUppercase\contentsname}}
  }
  { \__fdu_chapter_no_toc:V \contentsname }
\__fdu_patch_cmd:Nnn \listoffigures
  {
    \chapter*{\listfigurename}
    \@mkboth{\MakeUppercase\listfigurename}
            {\MakeUppercase\listfigurename}
  }
  { \__fdu_chapter:V \listfigurename }
\__fdu_patch_cmd:Nnn \listoftables
  {
    \chapter*{\listtablename}
    \@mkboth{\MakeUppercase\listtablename}
            {\MakeUppercase\listtablename}
  }
  { \__fdu_chapter:V \listtablename }
\NewDocumentEnvironment { abstract  } { }
  { \__fdu_abstract_begin:    } { \__fdu_abstract_end:      }
\NewDocumentEnvironment { abstract* } { }
  { \__fdu_abstract_en_begin: } { \__fdu_abstract_en_end:   }
\cs_new_protected:Npn \__fdu_abstract_begin:
  { \__fdu_chapter:V \c__fdu_name_abstract_tl    }
\cs_new_protected:Npn \__fdu_abstract_en_begin:
  { \__fdu_chapter:V \c__fdu_name_abstract_en_tl }
\cs_new_protected:Npn \__fdu_abstract_end:
  {
    \__fdu_keywords:nNn
      { \large \sffamily \c__fdu_name_keywords_tl \c__fdu_fwid_colon_tl }
      \l__fdu_info_keywords_clist { \c__fdu_fwid_semicolon_tl }
    % \__fdu_clc:nn
    %   { \sffamily \c__fdu_name_clc_tl \c__fdu_fwid_colon_tl }
    %   { \l__fdu_info_clc_tl }
  }
\cs_new_protected:Npn \__fdu_abstract_en_end:
  {
    \__fdu_keywords:nNn
      { \large \bfseries \c__fdu_name_keywords_en_tl \__fdu_quad: }
      \l__fdu_info_keywords_en_clist { ; ~ }
    % \__fdu_clc:nn
    %   { \bfseries \c__fdu_name_clc_en_tl \__fdu_quad: }
    %   { \l__fdu_info_clc_tl }
  }
\cs_new_protected:Npn \__fdu_keywords:nNn #1#2#3
  {
    \par \mode_leave_vertical: \par \noindent
    \__fdu_get_text_width:Nn \l__fdu_tmpa_dim {#1}
    \group_begin: #1 \group_end:
    \parbox [t] { \dim_eval:n { \textwidth - \l__fdu_tmpa_dim } }
      {
        \clist_use:Nn #2 {#3} \par
        \cs_gset:Npx \__fdu_keywords_prevdepth: { \dim_use:N \tex_prevdepth:D }
      }
  }
\cs_new_protected:Npn \__fdu_clc:nn #1#2
  {
    \par \tex_prevdepth:D \__fdu_keywords_prevdepth: \noindent
    \group_begin: #1 \group_end:
    #2
  }
\NewDocumentEnvironment { notation } { O { l p { 7.5 cm } } }
  {
    \__fdu_notation_begin:
    \group_begin:
      \__fdu_notation_long_table_setup:
      \longtable {#1}
  }
  {
      \endlongtable
    \group_end:
  }
\cs_new_protected:Npn \__fdu_notation_begin:
  {
    \__fdu_chapter:V \c__fdu_name_notation_tl
  }
\cs_new_protected:Npn \__fdu_notation_long_table_setup:
  {
    \dim_set_eq:NN \LTpre  \c_zero_dim
    \dim_set_eq:NN \LTpost \c_zero_dim
  }
\bool_new:N \l__fdu_bibtex_bool
\tl_new:N \l__fdu_bib_style_tl
\tl_new:N \l__fdu_bib_gb_style_tl
\tl_new:N \l__fdu_cite_style_tl
\clist_new:N \l__fdu_bib_resource_clist
\keys_define:nn { fdu / style }
  {
    bib-backend .choice:,
    bib-backend .value_required:n = true,
    bib-backend / bibtex   .code:n =
      { \bool_set_true:N  \l__fdu_bibtex_bool },
    bib-backend / biblatex .code:n =
      { \bool_set_false:N \l__fdu_bibtex_bool },
    bib-style .choice:,
    bib-style .value_required:n = true,
    bib-style / numerical    .code:n =
      {
        \tl_set:Nn  \l__fdu_bib_gb_style_tl { numerical  }
        \tl_clear:N \l__fdu_bib_style_tl
      },
    bib-style / author-year .code:n =
      {
        \tl_set:Nn  \l__fdu_bib_gb_style_tl { author-year }
        \tl_clear:N \l__fdu_bib_style_tl
      },
    bib-style / unknown     .code:n =
      {
        \tl_set_eq:NN \l__fdu_bib_style_tl \l_keys_value_tl
        \tl_clear:N   \l__fdu_bib_gb_style_tl
      },
    cite-style .tl_set:N = \l__fdu_cite_style_tl,
    bib-resource .clist_set:N = \l__fdu_bib_resource_clist
  }
\ctex_at_end_preamble:n
  {
    \bool_if:NT \l__fdu_bibtex_bool
      {
        \tl_if_empty:NTF \l__fdu_bib_style_tl
          {
            \RequirePackage [ sort & compress ] { gbt7714 }
            \exp_args:No \bibliographystyle { gbt7714- \l__fdu_bib_gb_style_tl }
          }
          {
            \RequirePackage [ sort & compress ] { natbib }
            \exp_args:NV \bibliographystyle \l__fdu_bib_style_tl
          }
        \__fdu_bibtex_setup:
      }
  }
\__fdu_gadd_ltxhook:nn { env/document/begin }
  {
    \bool_if:NF \l__fdu_bibtex_bool
      {
        \__fdu_biblatex_pre_setup:
        \RequirePackage { biblatex }
        \__fdu_biblatex_post_setup:
      }
  }
\cs_new_protected:Npn \__fdu_bibtex_setup:
  {
    \tl_if_eq:VnTF \l__fdu_bib_gb_style_tl { numerical }
      {
        \exp_args:NNx \DeclareRobustCommand \parencite
          { \exp_args:No \exp_not:o { \cs:w cite ~ \cs_end: } }
        \exp_args:Nc \ctex_patch_cmd:Nnn { parencite ~ }
          { \begingroup }
          { \begingroup \bibstyle@numbers }
      }
      { \cs_set_eq:NN \parencite \cite }
    \tl_if_empty:NF \l__fdu_cite_style_tl
      { \exp_args:NV \citestyle \l__fdu_cite_style_tl }
    \ctex_patch_cmd:Nnn \NAT@citexnum
      { - \NAT@penalty }
      { \textendash \NAT@penalty }
    \cs_set:Npn \bibsection { \__fdu_chapter:V \bibname }
    \NewDocumentCommand \printbibliography { o }
      {
        \exp_args:NV \bibliography \l__fdu_bib_resource_clist
        \IfValueT {##1}
          { \__fdu_warning:nn { invalid-option-in-bibtex } {##1} }
      }
  }
\__fdu_msg_new:nn { invalid-option-in-bibtex }
  { Option(s)~ "#1"~ are~ invalid~ in~ BibTeX. }
\bool_if:NF \l__fdu_bibtex_bool
  {
    \NewDocumentCommand \addbibresource { m }
      { \clist_gput_right:Nn \l__fdu_bib_resource_clist {#1} }
  }
\cs_new_protected:Npn \__fdu_biblatex_pre_setup:
  {
    \cs_undefine:N \addbibresource
    \clist_new:N \l__fdu_biblatex_options_clist
    \clist_put_right:Nn \l__fdu_biblatex_options_clist { hyperref = manual }
    \clist_put_right:Nx \l__fdu_biblatex_options_clist
      {
        style =
        \tl_if_empty:NTF \l__fdu_bib_style_tl
          {
            \str_if_eq:VnTF \l__fdu_bib_gb_style_tl { numerical }
              { gb7714-2015 } { gb7714-2015ay }
          }
          { \l__fdu_bib_style_tl }
      }
    \tl_if_empty:NF \l__fdu_cite_style_tl
      {
        \clist_put_right:Nx \l__fdu_biblatex_options_clist
          { citestyle = \l__fdu_cite_style_tl }
      }
    \exp_args:NV \PassOptionsToPackage \l__fdu_biblatex_options_clist
      { biblatex }
  }
\cs_new_protected:Npn \__fdu_biblatex_post_setup:
  {
    \clist_map_function:NN \l__fdu_bib_resource_clist \addbibresource
    \__fdu_biblatex_allow_url_break:
    \__fdu_biblatex_use_en_dash:
    \defbibheading { bibliography } [ \bibname ] { \__fdu_chapter:n {##1} }
  }
\cs_new:Npn \__fdu_biblatex_allow_url_break:
  {
    \int_set_eq:NN \c@biburlucpenalty  \c_one_int
    \int_set_eq:NN \c@biburlnumpenalty \c_one_int
    \int_set_eq:NN \c@biburllcpenalty  \c_one_int
  }
\cs_new:Npn \__fdu_biblatex_use_en_dash:
  {
    \DefineBibliographyExtras { english }
      {
        \cs_set_nopar:Npn \bibrangedash
          { \textendash \penalty \hyphenpenalty }
      }
    \DefineBibliographyExtras { russian }
      {
        \cs_set_nopar:Npn \bibrangedash
          { \textendash \penalty \hyphenpenalty }
      }
  }
\NewDocumentCommand \hypersetup { m }
  { \fdu_hyperref_setup:n {#1} }
\cs_new_protected:Npn \fdu_hyperref_setup:n #1
  { \clist_gput_right:Nn \g__fdu_to_hyperref_clist {#1} }
\cs_new:Npn \__fdu_set_hyperlink_color_key:n #1
  {
    hyperlink-color / \clist_item:nn {#1} {1} .code:n =
      {
        \__fdu_define_hyperlink_color:nnn
          { \clist_item:nn {#1} {2} }
          { \clist_item:nn {#1} {3} }
          { \clist_item:nn {#1} {4} }
        \fdu_hyperref_setup:n
          {
            linkcolor = fdu@link, linkbordercolor = fdu@link,
            urlcolor  = fdu@url,  urlbordercolor  = fdu@url,
            citecolor = fdu@cite, citebordercolor = fdu@cite
          }
      },
  }
\cs_new_protected:Npn \__fdu_define_hyperlink_color:nnn #1#2#3
  {
    \definecolorset { HTML } { fdu@ } { }
      { link, #1; url, #2; cite, #3 }
  }
\keys_define:nx { fdu / style }
  {
    hyperlink .choice:,
    hyperlink .value_required:n = true,
    hyperlink / border .code:n =
      { \fdu_hyperref_setup:n { colorlinks = false } },
    hyperlink / color  .code:n =
      { \fdu_hyperref_setup:n { colorlinks = true  } },
    hyperlink / none   .code:n =
      { \fdu_hyperref_setup:n { hidelinks } },
    hyperlink-color .choice:,
    hyperlink-color .value_required:n = true,
    \clist_map_function:nN
      {
        { classic,   FF0000, 0000FF, 00FF00 },
        { default,   990000, 0000B2, 007F00 },
        { material,  E91E63, 009688, 4CAF50 },
        { graylevel, 616161, 616161, 616161 },
        { prl,       2D3092, 2D3092, 2D3092 },
        { june,      662B1F, 106898, 2A663F },
      }
      \__fdu_set_hyperlink_color_key:n
  }
\cs_new:Npn \fdu_allow_url_break:
  {
    \cs_new:Npn \__fdu_add_url_break_points:
      { \tl_map_function:NN \c__fdu_url_break_points_tl \do }
    \__fdu_appto_cmd:Nn \UrlBreaks
      { \UrlOrds \__fdu_add_url_break_points: }
  }
\tl_const:Nn \c__fdu_url_break_points_tl
  {
    abcdefghijklmnopqrstuvwxyz
    ABCDEFGHIJKLMNOPQRSTUVWXYZ
    0123456789
  }
\ctex_at_end_preamble:n
  {
    \tl_new:N \l__fdu_pdf_title_tl
    \tl_set_eq:NN \l__fdu_pdf_title_tl \l__fdu_info_title_tl
    \tl_remove_all:Nn \l__fdu_pdf_title_tl { , }
    \RequirePackage { hyperref }
    \hypersetup
      {
        bookmarksnumbered = true,
        psdextra          = true,
        unicode           = true,
        pdftitle    = \l__fdu_pdf_title_tl,
        pdfauthor   = \l__fdu_info_author_tl,
        pdfkeywords = \l__fdu_info_keywords_clist,
        pdfcreator  = \c__fdu_name_pdf_creator_tl
      }
    \exp_args:NV \hypersetup \g__fdu_to_hyperref_clist
    \fdu_allow_url_break:
    \bool_if:NF \l__fdu_bibtex_bool { \BiblatexManualHyperrefOn }
  }
\ctex_at_end_package:nn { hyperref }
  {
    \pdfstringdefDisableCommands
      {
        \cs_set_eq:NN \fdu@kai \prg_do_nothing:
        \cs_set_eq:NN \quad    \c_space_tl
        \cs_set_eq:NN \qquad   \c_space_tl
      }
  }
\keys_define:nn { fdu }
  {
    info  .meta:nn = { fdu / info  } {#1},
    style .meta:nn = { fdu / style } {#1}
  }
\keys_set:nn { fdu }
  {
    style   / font            = times,
    style   / cjk-font        = fandol,
    style   / font-size       = -4,
    style   / fullwidth-stop  = false,
    style   / auto-make-cover = true,
    style   / logo-name       = { fudan-name.pdf   },
    style   / logo-emblem     = { fudan-emblem-new.pdf },
    style   / hyperlink       = color,
    style   / hyperlink-color = default,
    style   / bib-style       = numerical,
    info    / date            = { \zhtoday },
    theorem / header-font     = { \sffamily },
    theorem / body-font       = { \fdu@kai },
    theorem / counter         = { chapter }
  }
\NewDocumentCommand \fdusetup { m }
  { \keys_set:nn { fdu } {#1} }
\newtheorem* { proof       } { \c__fdu_name_proof_tl      }
\newtheorem  { axiom       } { \c__fdu_name_axiom_tl      }
\newtheorem  { corollary   } { \c__fdu_name_corollary_tl  }
\newtheorem  { definition  } { \c__fdu_name_definition_tl }
\newtheorem  { example     } { \c__fdu_name_example_tl    }
\newtheorem  { lemma       } { \c__fdu_name_lemma_tl      }
\newtheorem  { theorem     } { \c__fdu_name_theorem_tl    }
\endinput
%%
%% End of file `fduthesis.cls'.
