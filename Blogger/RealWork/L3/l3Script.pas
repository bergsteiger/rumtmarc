unit l3Script;

{ Библиотека "L3 (Low Level Library)" }
{ Автор: Люлин А.В. ©                 }
{ Модуль: l3Script -                  }
{ Начат: 03.10.2007 16:59             }
{ $Id: l3Script.pas,v 1.12 2007/10/04 16:30:13 lulin Exp $ }

// $Log: l3Script.pas,v $
// Revision 1.12  2007/10/04 16:30:13  lulin
// - определяем количество параметров.
//
// Revision 1.11  2007/10/04 15:47:01  lulin
// - добавлены параметры команд.
//
// Revision 1.10  2007/10/04 14:48:57  lulin
// - добавлены алиасы.
//
// Revision 1.9  2007/10/04 14:30:18  lulin
// - сделана передача строкового параметра.
//
// Revision 1.8  2007/10/04 14:04:55  lulin
// - определяем пространства имен.
//
// Revision 1.7  2007/10/03 17:30:00  lulin
// - проверяем существование объекта.
//
// Revision 1.6  2007/10/03 17:09:17  lulin
// - выводим список команд.
//
// Revision 1.5  2007/10/03 16:37:18  lulin
// - теперь в операцию передается консоль.
//
// Revision 1.4  2007/10/03 16:12:57  lulin
// - не добавляем перевод строки - консоль сама должна это сделать.
//
// Revision 1.3  2007/10/03 16:10:37  lulin
// - типизируем объекты, которые могут выполнять команды.
//
// Revision 1.2  2007/10/03 15:36:19  lulin
// - сделано определение команд.
//
// Revision 1.1  2007/10/03 13:22:59  lulin
// - добавлен файл.
//

{$Include l3Define.inc }

interface

uses
  l3Chars,
  l3Interfaces,
  l3Types,
  l3Base
  ;

type
  Tl3ParamDef = record
    rSep  : Char;
    rMax  : Integer;
    rFill : Integer;
  end;//Tl3ParamDef

  Tl3OpContext = object
    public
      rTarget : TObject;
      rCmd    : Il3CString;
      rTail   : Il3CString;
      rCon    : Il3Console;
    protected
      rParam  : Tl3ParamDef;
    public
      function Params: Tl3CStringArray;
        {-}
      function IntParams: TLongArray;
        {-}
  end;//Tl3OpContext

  Tl3OpProc = procedure (const aTarget: Tl3OpContext);

  Tl3Script = class;

  Tl3OpString = class(Tl3String)
    private
    // internal fields
      f_Op     : Tl3OpProc;
      f_Class  : TClass;
      f_Script : Tl3Script;
      f_Param  : Tl3ParamDef;
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      function  DefParams(aParamMax  : Integer;
                          aParamFill : Integer;
                          aSep       : Char = cc_Comma): Tl3OpString;
        {-}
      function  Alias(const anAlias: String): Tl3OpString;
        {-}
  end;//Tl3OpString

  Tl3Script = class(Tl3Base, Il3Console)
    private
    // internal fields
      f_Ops    : Tl3StringList;
      f_Spaces : Tl3StringList;
      f_Parent : Tl3Script;
    protected
    // internal methods
      procedure Shift(aDelta: Integer);
        {-}
      procedure Say(const aStr: Il3CString);
        {-}
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      function  Space(const aName: Tl3WString; DoAdd: Boolean): Tl3Script;
        overload;
      function  Space(const aName: String): Tl3Script;
        overload;
        {-}
      function  Add(const aCmd   : String;
                    anOp         : Tl3OpProc;
                    aTargetClass : TClass): Tl3OpString;
        {-}
      function  Cmd(const aCmd    : Il3CString;
                    const aTarget : array of TObject;
                    const aCon    : Il3Console): Boolean;
        {-}
      procedure Help(const aCon   : Il3Console;
                     const aStart : Il3CString);
        {-}
  end;//Tl3Script

implementation

uses
  SysUtils,

  l3String
  ;

// start class Tl3OpContext

function Tl3OpContext.Params: Tl3CStringArray;
  {-}
begin
 Result := l3Split(rTail, rParam.rSep);
end;

function Tl3OpContext.IntParams: TLongArray;
  {-}
var
 l_S : Tl3CStringArray;
 l_I : Integer;
 l_V : Integer;
begin
 l_S := Params;
 SetLength(Result, rParam.rMax);
 for l_I := 0 to Pred(rParam.rMax) do
  Result[l_I] := rParam.rFill;
 for l_I := Low(l_S) to High(l_S) do
  if TryStrToInt(Trim(l3PCharLen2String(l3PCharLen(l_S[l_I]))), l_V) then
   Result[l_I] := l_V;
end;

// start class Tl3OpString

procedure Tl3OpString.Cleanup;
  //override;
  {-}
begin
 f_Script := nil;
 inherited;
end;

function Tl3OpString.DefParams(aParamMax  : Integer;
                               aParamFill : Integer;
                               aSep       : Char = cc_Comma): Tl3OpString;
  {-}
begin
 Result := Self;
 f_Param.rSep := aSep;
 f_Param.rMax := aParamMax;
 f_Param.rFill := aParamFill;
end;

function Tl3OpString.Alias(const anAlias: String): Tl3OpString;
  {-}
begin
 Result := f_Script.Add(anAlias, f_Op, f_Class);
 Result.f_Param := f_Param;
end;

// start class Tl3Script

procedure Tl3Script.Cleanup;
  //override;
  {-}
begin
 f_Parent := nil;
 l3Free(f_Spaces);
 l3Free(f_Ops);
 inherited;
end;

procedure Tl3Script.Shift(aDelta: Integer);
  {-}
begin
end;
  
procedure Tl3Script.Say(const aStr: Il3CString);
  {-}
begin
end;

type
  Tl3SpaceString = class(Tl3String)
    private
    // internal fields
      f_Script: Tl3Script;
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
  end;//Tl3SpaceString

procedure Tl3SpaceString.Cleanup;
  //override;
  {-}
begin
 l3Free(f_Script);
 inherited;
end;

function Tl3Script.Space(const aName: Tl3WString; DoAdd: Boolean): Tl3Script;
  //overload;
var
 l_Index : Integer;
 l_S     : Tl3SpaceString;
begin
 if (f_Spaces = nil) then
 begin
  if DoAdd then
  begin
   f_Spaces := Tl3StringList.MakeSorted;
   f_Spaces.Duplicates := l3_dupError;
  end//DoAdd
  else
  begin
   Result := nil;
   Exit;
  end;//DoAdd
 end;//f_Ops = nil
 if f_Spaces.Find(aName, l_Index) then
  Result := Tl3SpaceString(f_Spaces.Items[l_Index]).f_Script
 else
 if DoAdd then
 begin
  l_S := Tl3SpaceString.Make(aName);
  try
   l_S.f_Script := Tl3Script.Create;
   l_S.f_Script.f_Parent := Self;
   Result := l_S.f_Script;
   f_Spaces.Insert(l_Index, l_S);
  finally
   l3Free(l_S);
  end;//try.finally
 end//not f_Spaces.Find..
 else
  Result := nil;
end;

function Tl3Script.Space(const aName: String): Tl3Script;
  {-}
begin
 Result := Space(l3PCharLen(aName), true);
end;

function Tl3Script.Add(const aCmd   : String;
                       anOp         : Tl3OpProc;
                       aTargetClass : TClass): Tl3OpString;
  {-}
var
 l_Index : Integer;
 l_S     : Tl3OpString;
begin
 if (f_Ops = nil) then
 begin
  f_Ops := Tl3StringList.MakeSorted;
  f_Ops.Duplicates := l3_dupError;
 end;//f_Ops = nil
 if f_Ops.Find(aCmd, l_Index) then
  raise Exception.CreateFmt('Команда %s уже существует', [aCmd])
 else
 begin
  l_S := Tl3OpString.Make(l3PCharLen(aCmd));
  try
   l_S.f_Op := anOp;
   l_S.f_Class := aTargetClass;
   l_S.f_Script := Self;
   l3FillChar(l_S.f_Param, SizeOf(l_S.f_Param));
   Result := l_S;
   f_Ops.Insert(l_Index, l_S);
  finally
   l3Free(l_S);
  end;//try.finally
 end;//not f_Ops.Find..
end;

function Tl3Script.Cmd(const aCmd    : Il3CString;
                       const aTarget : array of TObject;
                       const aCon    : Il3Console): Boolean;
  {-}
var
 l_Index : Integer;
 l_I     : Integer;
 l_S     : Tl3OpString;
 l_C     : Tl3OpContext;
 l_Pref  : Il3CString;
 l_Space : Tl3Script;
 l_Cmd   : Il3CString;
begin
 if (aCon = nil) then
  l_C.rCon := Self
 else
  l_C.rCon := aCon;
 if (f_Spaces <> nil) then
 begin
  l3Split(aCmd, cc_Dot, l_Pref, l_Cmd);
  if not l3IsNil(l_Cmd) then
  begin
   l_Space := Space(l_Pref.AsWStr, false);
   if (l_Space <> nil) then
    if l_Space.Cmd(l_Cmd, aTarget, aCon) then
     Exit;
  end;//not l3IsNil(l_Cmd)
 end;//f_Spaces <> nil
 l3Split(aCmd, cc_HardSpace, l_Pref, l_Cmd);
 Result := (f_Ops <> nil) AND f_Ops.Find(l3PCharLen(l_Pref), l_Index);
 if Result then
 begin
  l_S := Tl3OpString(f_Ops.Items[l_Index]);
  for l_I := Low(aTarget) to High(aTarget) do
  begin
   l_C.rTarget := aTarget[l_I];
   if (l_C.rTarget <> nil) AND l_C.rTarget.InheritsFrom(l_S.f_Class) then
   begin
    l_C.rTarget := aTarget[l_I];
    l_C.rCmd := l_Pref;
    l_C.rTail := l_Cmd;
    l_C.rParam := l_S.f_Param;
    l_S.f_Op(l_C);
    Exit;
   end;//aTarget[l_I].InheritsFrom(l_S.f_Class)
  end;//for l_I
  Result := false;
  l_C.rCon.Say(l3Fmt('No target for command: %s', [aCmd]));
 end//Result
 else
 if (f_Parent = nil) then
  l_C.rCon.Say(l3Fmt('Bad command: %s', [aCmd]));
end;

procedure Tl3Script.Help(const aCon   : Il3Console;
                         const aStart : Il3CString);
  {-}
var
 l_I  : Integer;
 l_S  : Il3CString;
 l_P  : Il3CString;
 l_T  : Il3CString;
 l_Op : Tl3OpString;
begin
 if (aCon <> nil) then
 begin
  if (f_Spaces <> nil) then
   for l_I := f_Spaces.Lo to f_Spaces.Hi do
   begin
    l3Split(aStart, cc_Dot, l_P, l_T); 
    l_S := l3CStr(f_Spaces.Items[l_I]);
    if l3Starts(l_P, l_S) then
    begin
     aCon.Say(l_S);
     aCon.Shift(+1);
     Tl3SpaceString(f_Spaces.Items[l_I]).f_Script.Help(aCon, l_T);
     aCon.Shift(-1);
    end;//l3Starts(l_P, l_S)
   end;//for l_I
  if (f_Ops <> nil) then
   for l_I := f_Ops.Lo to f_Ops.Hi do
   begin
    l_Op := Tl3OpString(f_Ops.Items[l_I]);
    l_S := l3CStr(l_Op);
    if l3Starts(aStart, l_S) then
    begin
     with l_Op.f_Param do
      if (rMax > 0) then
       l_S := l3Cat(l_S, ' [' + l3Dup(IntToStr(rFill), rMax, rSep) + ']');
     aCon.Say(l_S);
    end;//l3Starts(aStart, l_S)
   end;//for l_I
 end;//aCon <> nil
end;

end.

