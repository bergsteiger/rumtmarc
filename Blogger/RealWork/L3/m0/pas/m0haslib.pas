unit    m0HASLib;

(*
//
// module:  m0haslib.pas
// author:  Mickael P. Golovin
//
// Copyright (c) 1997-2000 by Archivarius Team, free for non commercial use.
//
// $Id: m0haslib.pas,v 1.6 2013/04/12 16:25:07 lulin Exp $
//
*)

{$R *.res}


{$I m0Define.inc}


interface


uses
  Windows,
  Messages,
  SysUtils,
  Consts,
  Classes,

  m0Const,
  m0AddTyp,
  m0RESLib
  ;

const
  Cm0HASLibVersion    = $0001;
  Cm0HASLibVersionCRC = $0001;

  Cm0HASLibDefCount   = $4000;
  Cm0HASLibDefSize    = 4;
  Cm0HASLibDefMaxSize = Cm0MaxLongInt;


type
  Pm0HASLibTable16 = ^Tm0HASLibTable16;
  Tm0HASLibTable16 = packed array[$00..$ff] of Word;

  Pm0HASLibTable32 = ^Tm0HASLibTable32;
  Tm0HASLibTable32 = packed array[$00..$ff] of LongInt;

  Tm0HASLibUpdateProc16 = function(AHash: Word; ABuff: PAnsiChar;
    ASize: LongInt; ATable: Pm0HASLibTable16): Word;

  Tm0HASLibUpdateProc32 = function(AHash: LongInt; ABuff: PAnsiChar;
    ASize: LongInt; ATable: Pm0HASLibTable32): LongInt;

  Pm0HASLibVerItem = ^Tm0HASLibVerItem;

  Tm0HASLibVerItem = packed record

    RRHnd16: THandle;
    RSeed16: Pm0HASLibTable16;
    RProc16: Tm0HASLibUpdateProc16;

    RRHnd32: THandle;
    RSeed32: Pm0HASLibTable32;
    RProc32: Tm0HASLibUpdateProc32;

  end;

  Pm0HASLibVerArray = ^Tm0HASLibVerArray;
  Tm0HASLibVerArray = packed array [1..Cm0HASLibVersion] of
    Tm0HASLibVerItem;


function m0HASCheckVersion(AVersion: Word): LongBool;

function m0HASUpdate16(AHash: Word; ABuff: PAnsiChar; ASize: LongInt;
  AVersion: Word): Word;

function m0HASUpdate32(AHash: LongInt; ABuff: PAnsiChar; ASize: LongInt;
  AVersion: Word): LongInt;


implementation


 { -- unit.forward -- }

function _UpdateProc160001(AHash: Word; ABuff: PAnsiChar; ASize: LongInt;
  ATable: Pm0HASLibTable16): Word; forward;

function _UpdateProc320001(AHash: LongInt; ABuff: PAnsiChar; ASize: LongInt;
  ATable: Pm0HASLibTable32): LongInt; forward;


 { -- unit.private -- }

const
  CMagic16Seed = Cm0MaxWord;
  CMagic32Seed = Cm0MaxLongWord;

  CTable16Name = 'm0HASLib_16_';
  CTable32Name = 'm0HASLib_32_';

var
  CVersionArray: Tm0HASLibVerArray = ((RRHnd16: 0;
    RSeed16: nil; RProc16: _UpdateProc160001; RRHnd32: 0; RSeed32: nil;
    RProc32: _UpdateProc320001)
    );


function _UpdateProc160001(AHash: Word; ABuff: PAnsiChar; ASize: LongInt;
  ATable: Pm0HASLibTable16): Word;
var
  LHash: Word;
begin

  if ((ABuff <> nil) and (ASize <> 0) and (ATable <> nil)) then
  begin

    AHash := AHash xor CMagic16Seed;

    while (ASize <> 0) do
    begin

      LHash := Word(ABuff^);

      P16to08( @LHash)^.RLoByte :=
        P16to08( @LHash)^.RLoByte xor P16to08( @AHash)^.RHiByte;

      P16to08( @AHash)^.RHiByte := P16to08( @AHash)^.RLoByte;
      P16to08( @AHash)^.RLoByte := P16to08( @LHash)^.RHiByte;

      AHash := AHash xor ATable^[P16to08( @LHash)^.RLoByte];

      Inc(LongInt(ABuff));

      Dec(ASize);

    end;

    AHash := AHash xor CMagic16Seed;

  end;

  Result := AHash;

end;

function _UpdateProc320001(AHash: LongInt; ABuff: PAnsiChar; ASize: LongInt;
  ATable: Pm0HASLibTable32): LongInt;
var
  LHash: LongInt;
begin

  if ((ABuff <> nil) and (ASize <> 0) and (ATable <> nil)) then
  begin

    AHash := AHash xor CMagic32Seed;

    while (ASize <> 0) do
    begin

      LHash := LongInt(ABuff^);

      P32to16( @LHash)^.RLoWord :=
        P32to16( @LHash)^.RLoWord xor P32to16( @AHash)^.RHiWord;

      P32to16( @AHash)^.RHiWord := P32to16( @AHash)^.RLoWord;
      P32to16( @AHash)^.RLoWord := P32to16( @LHash)^.RHiWord;

      AHash := AHash xor ATable^[P16to08( @LHash)^.RLoByte];

      Inc(LongInt(ABuff));

      Dec(ASize);

    end;

    AHash := AHash xor CMagic32Seed;

  end;

  Result := AHash;

end;

procedure _Initialization();
var
  LVersion: Word;
begin

  for LVersion := 1 to Cm0HASLibVersion do
  begin

    with CVersionArray[LVersion] do
    begin

      RSeed16 := Pm0HASLibTable16(m0RESAllocRCDATA(
        RRHnd16, CTable16Name + Format('%.4x', [LVersion])));
      RSeed32 := Pm0HASLibTable32(m0RESAllocRCDATA(
        RRHnd32, CTable32Name + Format('%.4x', [LVersion])));

    end;

  end;

end;

procedure _Finalization();
var
  LVersion: Word;
begin

  for LVersion := Cm0HASLibVersion downto 1 do
  begin

    with CVersionArray[LVersion] do
    begin

      RSeed16 := Pm0HASLibTable16(m0RESFreeRCDATA(RRHnd16));
      RSeed32 := Pm0HASLibTable32(m0RESFreeRCDATA(RRHnd32));

    end;

  end;

end;


 { -- unit.public -- }

function m0HASCheckVersion(AVersion: Word): LongBool;
begin

  Result := ((AVersion > 0) and (AVersion <= Cm0HASLibVersion));

end;

function m0HASUpdate16(AHash: Word; ABuff: PAnsiChar; ASize: LongInt;
  AVersion: Word): Word;
begin

  if m0HASCheckVersion(AVersion) then
  begin

    with CVersionArray[AVersion] do
    begin

      Result := RProc16(AHash, ABuff, ASize, RSeed16);

    end;

  end
  else
  begin

    Result := 0;

  end;

end;

function m0HASUpdate32(AHash: LongInt; ABuff: PAnsiChar; ASize: LongInt;
  AVersion: Word): LongInt;
begin

  if m0HASCheckVersion(AVersion) then
  begin

    with CVersionArray[AVersion] do
    begin

      Result := RProc32(AHash, ABuff, ASize, RSeed32);

    end;

  end
  else
  begin

    Result := 0;

  end;

end;


initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\L3\m0\pas\m0haslib.pas initialization enter'); {$EndIf}
  _Initialization();

{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\L3\m0\pas\m0haslib.pas initialization leave'); {$EndIf}
finalization
  _Finalization();


end.
