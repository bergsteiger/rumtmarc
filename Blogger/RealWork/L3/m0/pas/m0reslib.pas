unit m0RESLib;

(*
//
// module:  m0reslib.pas
// author:  Mickael P. Golovin
//
// Copyright (c) 1997-2000 by Archivarius Team, free for non commercial use.
//
// $Id: m0reslib.pas,v 1.1 2008/02/07 09:54:24 lulin Exp $
//
*)

{$Include m0Define.inc}

interface

uses
  Windows,
  Messages,
  SysUtils,
  Consts,
  Classes,

  l3Except,
  
  m0Const,
  m0AddTyp,
  m0STRLib
  ;

type
  Em0RESLibGeneral = class(El3Exception);

function m0RESAllocRCDATA(var AHandle: THandle; const ARCName: string): Pointer;

function m0RESFreeRCDATA(var AHandle: THandle): Pointer;

implementation

 { -- unit.private -- }

resourcestring
{$IFDEF _m0LANGUAGE_ENG}

  SECannotFindRes           = 'Cannot find resource: %s';
  SECannotLoadRes           = 'Cannot load resource: %s';
  SECannotLockRes           = 'Cannot lock resource: %s';
{$ENDIF}
{$IFDEF _m0LANGUAGE_RUS}

  SECannotFindRes           = 'Не могу найти ресурс: %s';
  SECannotLoadRes           = 'Не могу загрузить ресурс: %s';
  SECannotLockRes           = 'Не могу захватить ресурс: %s';
{$ENDIF}


 { -- unit.public -- }

function m0RESAllocRCDATA(var AHandle: THandle; const ARCName: string): Pointer;
var
  LInfo1: THandle;
  LInfo2: THandle;
begin
  LInfo1 := FindResource(FindResourceHInstance(HInstance),
    PChar(UpperCase(ARCName)), RT_RCDATA);
  if (LInfo1 = 0) then
    raise Em0RESLibGeneral.Create(Format(SECannotFindRes, [ARCName]));
  LInfo2 := LoadResource(HInstance, LInfo1);
  if (LInfo2 = 0) then
    raise Em0RESLibGeneral.Create(Format(SECannotLoadRes, [ARCName]));
  try
    Result := Pointer(LockResource(LInfo2));
    if (Result = nil) then
      raise Em0RESLibGeneral.Create(Format(SECannotLockRes, [ARCName]));
  except
    FreeResource(LInfo2);
    raise;
  end;
  AHandle := LInfo2;
end;

function m0RESFreeRCDATA(var AHandle: THandle): Pointer;
begin
  Result := nil;
  if (AHandle <> 0) then
  begin
    if not (UnlockResource(AHandle)) then
      FreeResource(AHandle);
    AHandle := 0;
  end;
end;


end.
