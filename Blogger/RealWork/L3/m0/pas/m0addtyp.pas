unit m0AddTyp;

(*
//
// module:  m0addtyp.pas
// author:  Mickael P. Golovin
//
// Copyright (c) 1997-2000 by Archivarius Team, free for non commercial use.
//
// $Id: m0addtyp.pas,v 1.1 2008/02/07 09:54:24 lulin Exp $
//
*)

// $Log: m0addtyp.pas,v $
// Revision 1.1  2008/02/07 09:54:24  lulin
// - библиотека m0 переехала внутрь библиотеки L3.
//
// Revision 1.7  2006/04/25 13:17:07  lulin
// - избавляемся от старых архивирующих потоков.
//
// Revision 1.6  2004/09/02 15:36:34  law
// - cleanup.
//

{$Include m0Define.inc}

interface

uses
  l3Types
  ;

type
  PByteBool = ^ByteBool;
  PWordBool = ^WordBool;
  PLongBool = ^LongBool;
  PBoolean  = ^Boolean;

  PShortInt = ^ShortInt;
  PByte     = ^Byte;

  PSmallInt = ^SmallInt;
  PWord     = ^Word;

  PCardinal = ^Cardinal;
  PInteger  = ^Integer;
  PLongInt  = ^LongInt;
  PLongWord = ^LongWord;

  PPointer = l3Types.PPointer;

  PInt64 = ^Int64;

  T16to08 = packed record

    case Integer of

      0: (
        RLoAnsiChar: AnsiChar;
        RHiAnsiChar: AnsiChar;
      );

      1: (
        RLoByteBool: ByteBool;
        RHiByteBool: ByteBool;
      );

      2: (
        RLoShortInt: ShortInt;
        RHiShortInt: ShortInt;
      );

      3: (
        RLoByte: Byte;
        RHiByte: Byte;
      );

  end;
  P16to08 = ^T16to08;

  T32to16 = packed record

    case Integer of

      0: (
        RLoWideChar: WideChar;
        RHiWideChar: WideChar;
      );

      1: (
        RLoWordBool: WordBool;
        RHiWordBool: WordBool;
      );

      2: (
        RLoSmallInt: SmallInt;
        RHiSmallInt: SmallInt;
      );

      3: (
        RLoWord: Word;
        RHiWord: Word;
      );

  end;
  P32to16 = ^T32to16;

  T64to32 = packed record

    case Integer of

      0: (
        RLoLongBool: LongBool;
        RHiLongBool: LongBool;
      );

      1: (
        RLoCardinal: Cardinal;
        RHiCardinal: Cardinal;
      );

      2: (
        RLoInteger: Integer;
        RHiInteger: Integer;
      );

      3: (
        RLoLongInt: LongInt;
        RHiLongInt: LongInt;
      );

      4: (
        RLoLongWord: LongWord;
        RHiLongWord: LongWord;
      );

      5: (
        RLoPointer: Pointer;
        RHiPointer: Pointer;
      );

  end;
  P64to32 = ^T64to32;


implementation


end.
