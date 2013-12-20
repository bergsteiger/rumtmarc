unit    mgLngLst;

(*
//
// module:  mglnglst.pas
// author:  Mickael P. Golovin
//
// Copyright (c) 1997-2000 by Archivarius Team, free for non commercial use.
//
// $Id: mglnglst.pas,v 1.7 2013/04/05 12:04:42 lulin Exp $
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

 l3Types,
 l3Base,

 m0Const,
 m0AddTyp,
 m0MEMLib,
 m0IDPLib,
 mgConst,
 mgBasLst
 ;

type
 TmgLangFormHandle = class(TmgBaseHandle)
 private


  FStatus: longint;
  FValue: string;


 protected
    // internal methods
  class function IsCacheable: Bool;
   override;
        {-}
 public


  property Status: longint Read FStatus Write FStatus;
  property Value: string Read FValue Write FValue;


  procedure AssignHandle(AItem: TmgBaseHandle);
   override;


 end;


 PmgLangFormHandleKey = ^TmgLangFormHandleKey;

 TmgLangFormHandleKey = packed record

  RBuff: PAnsiChar;
  RSize: longint;

 end;

 TmgLangFormHandleList = class(TmgBaseHandleList)
 private


  function pm_GetHandle(AIndex: longint): TmgLangFormHandle; reintroduce;

(*  procedure pm_SetHandle(AIndex: longint; AHandle: TmgLangFormHandle);
   reintroduce;*)


 protected


  procedure AllocItem(var AItem: Pointer); override;

  function CompareKeyByItem(AKey: Pointer; AItem: Pointer): integer;
   override;


 public


  property Handles[AIndex: longint]: TmgLangFormHandle Read pm_GetHandle(* Write pm_SetHandle*);


  function BinSearchByKey(ABuff: PAnsiChar; ASize: longint; var AIndex: longint): longbool;


 end;


(* TmgLangTokenHandle = class(TmgBaseHandle)
 private
  FPrefix: string;
  FSource: string;
  FSuffix: string;
  FSents: longint;
  FChars: longint;
  FBegPos: longint;
  FEndPos: longint;
  FLangFormList: TmgLangFormHandleList;

  function ClaInitProc0001(ADoneProc: Tm0IDPLibDoneProc): Tm0IDPLibDoneProc;
  procedure ClaDoneProc0001();
  procedure pm_SetFormList(AFormList: TmgLangFormHandleList);

 public
  property Prefix: string Read FPrefix Write FPrefix;
  property Source: string Read FSource Write FSource;
  property Suffix: string Read FSuffix Write FSuffix;

  property Sents: longint Read FSents Write FSents;
  property Chars: longint Read FChars Write FChars;

  property BegPos: longint Read FBegPos Write FBegPos;
  property EndPos: longint Read FEndPos Write FEndPos;

  property LangFormList: TmgLangFormHandleList Read FLangFormList Write pm_SetFormList;

  constructor Create();

  procedure AssignHandle(AItem: TmgBaseHandle);
   override;
 end;*)


(* TmgLangTokenHandleList = class(TmgBaseHandleList)
 private


  function pm_GetHandle(AIndex: longint): TmgLangTokenHandle; reintroduce;

  procedure pm_SetHandle(AIndex: longint; AHandle: TmgLangTokenHandle);
   reintroduce;


 protected


  procedure AllocItem(var AItem: Pointer); override;

 public


  property Handles[AIndex: longint]: TmgLangTokenHandle Read pm_GetHandle Write pm_SetHandle;


 end;*)


(* TmgDMYNTokenHandle = class(TmgBaseHandle)
 private


  FDay: longint;
  FMonth: longint;
  FYear: longint;
  FNumber: PAnsiChar;
  FNumberLength: longint;
  FSents: longint;
  FChars: longint;
  FBegPos: longint;
  FEndPos: longint;


 protected


 public


  property Day: longint Read FDay Write FDay;
  property Month: longint Read FMonth Write FMonth;
  property Year: longint Read FYear Write FYear;

  property Number: PAnsiChar Read FNumber Write FNumber;
  property NumberLength: longint Read FNumberLength Write FNumberLength;

  property Sents: longint Read FSents Write FSents;
  property Chars: longint Read FChars Write FChars;

  property BegPos: longint Read FBegPos Write FBegPos;
  property EndPos: longint Read FEndPos Write FEndPos;


  constructor Create();

  procedure AssignHandle(AItem: TmgBaseHandle);
   override;


 end;


 TmgDMYNTokenHandleList = class(TmgBaseHandleList)
 private


  function pm_GetHandle(AIndex: longint): TmgDMYNTokenHandle; reintroduce;

  procedure pm_SetHandle(AIndex: longint; AHandle: TmgDMYNTokenHandle);
   reintroduce;


 protected


  procedure AllocItem(var AItem: Pointer); override;

 public

  property Handles[AIndex: longint]: TmgDMYNTokenHandle Read pm_GetHandle Write pm_SetHandle;


 end;*)

implementation


// start class TmgLangFormHandle

class function TmgLangFormHandle.IsCacheable: Bool;
  //override;
  {-}
begin
 Result := True;
end;

procedure TmgLangFormHandle.AssignHandle(AItem: TmgBaseHandle);
var
 LItem: TmgLangFormHandle absolute AItem;
begin

 Status := LItem.Status;
 Value  := LItem.Value;

end;


 { -- TmgLangFormHandleList.private -- }

function TmgLangFormHandleList.pm_GetHandle(AIndex: longint): TmgLangFormHandle;
begin

 Result := TmgLangFormHandle(GetItem(AIndex));

end;

(*procedure TmgLangFormHandleList.pm_SetHandle(AIndex: longint; AHandle: TmgLangFormHandle);
begin

 DoSetItem(AIndex, AHandle);

end;*)


 { -- TmgLangFormHandleList.protected -- }

procedure TmgLangFormHandleList.AllocItem(var AItem: Pointer);
var
 LItem: TmgLangFormHandle absolute AItem;
begin

 LItem := TmgLangFormHandle.Create();

end;

function TmgLangFormHandleList.CompareKeyByItem(AKey: Pointer; AItem: Pointer): integer;
var
 LItem: TmgLangFormHandle absolute AItem;
 LKey:  PmgLangFormHandleKey absolute AKey;
begin

 with LKey^ do
 begin

  with LItem do
  begin

   Result := m0MEMCompareEx(Pointer(RBuff), RSize, Pointer(Value), Length(Value));

  end;

 end;

end;


 { -- TmgLangFormHandleList.public -- }

function TmgLangFormHandleList.BinSearchByKey(ABuff: PAnsiChar; ASize: longint; var AIndex: longint): longbool;
var
 LKey: TmgLangFormHandleKey;
begin

 with LKey do
 begin

  RBuff := ABuff;
  RSize := ASize;

 end;

 Result := FindItemByKey( @LKey, AIndex);

end;


(* { -- TmgLangTokenHandle.private -- }

function TmgLangTokenHandle.ClaInitProc0001(ADoneProc: Tm0IDPLibDoneProc): Tm0IDPLibDoneProc;
begin

 Result := ADoneProc;

end;

procedure TmgLangTokenHandle.ClaDoneProc0001();
begin

 l3Free(FLangFormList);

end;

procedure TmgLangTokenHandle.pm_SetFormList(AFormList: TmgLangFormHandleList);
begin
 l3Set(FLangFormList, AFormList);
end;


 { -- TmgLangTokenHandle.protected -- }


 { -- TmgLangTokenHandle.public -- }

constructor TmgLangTokenHandle.Create();
begin
 inherited Create();
 m0IDPAddDoneProc(FClaDoneProcHandle, ClaInitProc0001(ClaDoneProc0001));
end;

procedure TmgLangTokenHandle.AssignHandle(AItem: TmgBaseHandle);
var
 LItem: TmgLangTokenHandle absolute AItem;
begin

 Prefix := LItem.Prefix;
 Source := LItem.Source;
 Suffix := LItem.Suffix;

 Sents := LItem.Sents;
 Chars := LItem.Chars;

 BegPos := LItem.BegPos;
 EndPos := LItem.EndPos;

 LangFormList := LItem.LangFormList;

end;*)


(* { -- TmgLangTokenHandleList.private -- }

function TmgLangTokenHandleList.pm_GetHandle(AIndex: longint): TmgLangTokenHandle;
begin

 Result := TmgLangTokenHandle(GetItem(AIndex));

end;

procedure TmgLangTokenHandleList.pm_SetHandle(AIndex: longint; AHandle: TmgLangTokenHandle);
begin

 DoSetItem(AIndex, AHandle);

end;


 { -- TmgLangTokenHandleList.protected -- }

procedure TmgLangTokenHandleList.AllocItem(var AItem: Pointer);
var
 LItem: TmgLangTokenHandle absolute AItem;
begin

 LItem := TmgLangTokenHandle.Create();

end;*)

(*{ -- TmgDMYNTokenHandle.public -- }

constructor TmgDMYNTokenHandle.Create();
begin

 inherited Create();

 FDay   := -1;
 FMonth := -1;
 FYear  := -1;

end;

procedure TmgDMYNTokenHandle.AssignHandle(AItem: TmgBaseHandle);
var
 LItem: TmgDMYNTokenHandle absolute AItem;
begin

 Day   := LItem.Day;
 Month := LItem.Month;
 Year  := LItem.Year;

 Number := LItem.Number;
 NumberLength := LItem.NumberLength;

 Sents := LItem.Sents;
 Chars := LItem.Chars;

 BegPos := LItem.BegPos;
 EndPos := LItem.EndPos;

end;


 { -- TmgDMYNTokenHandleList.private -- }

function TmgDMYNTokenHandleList.pm_GetHandle(AIndex: longint): TmgDMYNTokenHandle;
begin

 Result := TmgDMYNTokenHandle(GetItem(AIndex));

end;

procedure TmgDMYNTokenHandleList.pm_SetHandle(AIndex: longint; AHandle: TmgDMYNTokenHandle);
begin

 DoSetItem(AIndex, AHandle);

end;

{ -- TmgDMYNTokenHandleList.protected -- }

procedure TmgDMYNTokenHandleList.AllocItem(var AItem: Pointer);
var
 LItem: TmgDMYNTokenHandle absolute AItem;
begin
 LItem := TmgDMYNTokenHandle.Create();
end;*)

end.
