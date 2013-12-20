unit m0U32Lib;

(*
//
// module:  m0u32lib.pas
// author:  Mickael P. Golovin
//
// Copyright (c) 1997-2000 by Archivarius Team, free for non commercial use.
//
// $Id: m0u32lib.pas,v 1.2 2009/03/19 16:28:26 lulin Exp $
//
*)

{$I m0Define.inc}

interface

uses
  Windows,
  Messages,
  SysUtils,
  Consts,
  Classes,

  m0Const,
  m0AddTyp
  ;

function m0U32Min(AParamA: LongWord; AParamB: LongWord): LongWord;

function m0U32Max(AParamA: LongWord; AParamB: LongWord): LongWord;

function m0U32Compare(AParamA: LongWord; AParamB: LongWord): Integer;

implementation

 { -- unit.public -- }

function m0U32Min(AParamA: LongWord; AParamB: LongWord): LongWord;
asm

  cmp   eax,edx
  jbe   @@01
  mov   eax,edx
  @@01:

end;

function m0U32Max(AParamA: LongWord; AParamB: LongWord): LongWord;
asm

  cmp   eax,edx
  jnbe  @@01
  mov   eax,edx
  @@01:

end;

function m0U32Compare(AParamA: LongWord; AParamB: LongWord): Integer;
asm

  mov   ecx,eax
  xor   eax,eax
  cmp   ecx,edx
  je    @@02
  jb    @@01
  inc   eax
  jmp   @@02
  @@01:         dec   eax
  @@02:

end;

end.
