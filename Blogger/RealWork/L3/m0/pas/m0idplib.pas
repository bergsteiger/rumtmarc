unit m0IDPLib;

(*
//
// module:  m0idplib.pas
// author:  Mickael P. Golovin
//
// Copyright (c) 1997-2000 by Archivarius Team, free for non commercial use.
//
// $Id: m0idplib.pas,v 1.3 2012/11/01 09:43:03 lulin Exp $
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
  m0Const,
  m0AddTyp,
  m0MEMLib
  ;

type
  Tm0IDPLibDoneProc = procedure() of object;

  Pm0IDPLibDoneProcHandle = ^Tm0IDPLibDoneProcHandle;

  Tm0IDPLibDoneProcHandle = packed record
    RDoneProc: Tm0IDPLibDoneProc;
    RDoneProcHandle: Pm0IDPLibDoneProcHandle;
  end;

procedure m0IDPAddDoneProc(var ADoneProcHandle: Pm0IDPLibDoneProcHandle;
  ADoneProc: Tm0IDPLibDoneProc);

procedure m0IDPDelDoneProc(var ADoneProcHandle: Pm0IDPLibDoneProcHandle);

implementation

uses
  l3Memory,
  l3ExceptionsLog
  ;

var
  g_DoneProcBuffers: Pl3MemoryChain = nil;

 { -- unit.public -- }

procedure m0IDPAddDoneProc(var ADoneProcHandle: Pm0IDPLibDoneProcHandle; ADoneProc: Tm0IDPLibDoneProc);
var
  LHandle: Pm0IDPLibDoneProcHandle;
begin
  if Assigned(ADoneProc) then
  begin
    g_DoneProcBuffers.AllocItem(Pointer(LHandle));
//     m0MEMAlloc(Pointer(LHandle),SizeOf(LHandle^),#000);
    with LHandle^ do
    begin
      RDoneProc := ADoneProc;
      RDoneProcHandle := ADoneProcHandle;
    end;
    ADoneProcHandle := LHandle;
  end;
end;

procedure m0IDPDelDoneProc(var ADoneProcHandle: Pm0IDPLibDoneProcHandle);
var
  LHandle: Pm0IDPLibDoneProcHandle;
begin
  while (ADoneProcHandle <> nil) do
  begin
    with ADoneProcHandle^ do
    begin
      LHandle := RDoneProcHandle;
      try
        RDoneProc();
      except
        m0EXCHandleException();
      end;
    end;
    g_DoneProcBuffers.FreeItem(Pointer(ADoneProcHandle));
//    m0MEMFree(Pointer(ADoneProcHandle));
    ADoneProcHandle := LHandle;
  end;
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\L3\m0\pas\m0idplib.pas initialization enter'); {$EndIf}
  g_DoneProcBuffers := l3NewMemoryChain(SizeOf(Tm0IDPLibDoneProcHandle));

{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\L3\m0\pas\m0idplib.pas initialization leave'); {$EndIf}
end.
