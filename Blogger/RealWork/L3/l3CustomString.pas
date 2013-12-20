unit l3CustomString;

{ Библиотека "L3 (Low Level Library)" }
{ Автор: Люлин А.В. ©                 }
{ Модуль: l3CustomString -            }
{ Начат: 05.02.2008 15:53             }
{ $Id: l3CustomString.pas,v 1.19 2013/05/24 15:59:50 lulin Exp $ }

// $Log: l3CustomString.pas,v $
// Revision 1.19  2013/05/24 15:59:50  lulin
// - пытаемся портироваться под XE4.
//
// Revision 1.18  2013/03/28 17:25:04  lulin
// - портируем.
//
// Revision 1.17  2013/03/28 16:13:50  lulin
// - портируем.
//
// Revision 1.16  2012/05/15 12:13:25  dinishev
// {Requestlink:363571851}
//
// Revision 1.15  2011/12/20 13:35:14  fireton
// - предупреждения о правильном использовании поиска без учёта регистра
//
// Revision 1.14  2010/05/14 11:52:30  lulin
// {RequestLink:211879983}.
//
// Revision 1.13  2009/07/23 08:15:07  lulin
// - вычищаем ненужное использование процессора операций.
//
// Revision 1.12  2009/07/21 12:24:40  lulin
// {RequestLink:141264340}. №35.
//
// Revision 1.11  2009/02/05 13:28:53  lulin
// - <K>: 125895391. Используем уже посчитанные длины, а не считаем их заново.
//
// Revision 1.10  2009/02/05 13:02:45  lulin
// - <K>: 125895391.
//
// Revision 1.9  2009/02/05 11:58:31  lulin
// - <K>: 125895391. Передаём кодировку, а не флажок.
//
// Revision 1.8  2009/01/15 09:07:47  lulin
// - поддерживаем преобразование регистра символов в татарском.
//
// Revision 1.7  2008/12/18 13:45:10  lulin
// - <K>: 132222370. Поддерживаем работу с кодировкой TatarOEM.
//
// Revision 1.6  2008/12/18 12:39:02  lulin
// - <K>: 132222370. Поддерживаем работу с кодировкой TatarOEM.
//
// Revision 1.5  2008/12/15 16:06:19  lulin
// - <K>: 131137753.
//
// Revision 1.4  2008/12/12 19:19:30  lulin
// - <K>: 129762414.
//
// Revision 1.3  2008/02/21 12:51:20  mmorozov
// - bugfix: не собирался проект без директивы l3Requires_m0;
//
// Revision 1.2  2008/02/20 17:23:09  lulin
// - упрощаем строки.
//
// Revision 1.1  2008/02/12 10:31:25  lulin
// - избавляемся от излишнего метода на базовом классе.
//
// Revision 1.7  2008/02/06 13:28:19  lulin
// - каждому базовому объекту по собственному модулю.
//
// Revision 1.6  2008/02/05 18:55:11  lulin
// - запрещаем напрямую устанавливать буфер строке.
//
// Revision 1.5  2008/02/05 18:20:42  lulin
// - удалено ненужное свойство строк.
//
// Revision 1.4  2008/02/05 17:39:39  lulin
// - избавляемся от ненужного именованного объекта.
//
// Revision 1.3  2008/02/05 16:13:19  lulin
// - избавляем базовый объект от лишнего свойства.
//
// Revision 1.2  2008/02/05 15:25:21  lulin
// - переносим на модель самые базовые объекты.
//
// Revision 1.1  2008/02/05 13:09:16  lulin
// - базовая строка переехала в отжельный файл.
//

{$Include l3Define.inc }

interface

uses
  Classes,
  
  l3Interfaces,
  l3IID,
  l3Types,
  l3PrimString
  ;

type
  Tl3CustomString = class(Tl3PrimString)
   {* Базовый класс для "строк". Определяет операции и свойства, но не способ хранения данных. }
    protected
    // property methods
      function  pm_GetSt: PAnsiChar;
        {-}
      function  pm_GetLen: Integer;
      procedure pm_SetLen(Value: Integer);
        virtual;
        {-}
      function  pm_GetCodePage: Integer;
      procedure pm_SetCodePage(Value: Integer);
        {-}
      function  pm_GetIsOEM: Boolean;
        {-}
      function  pm_GetIsOEMEx: Boolean;
        {-}
      function  pm_GetIsANSI: Boolean;
        {-}
      procedure DoSetCodePage(Value: Integer);
        virtual;
        {-}
      function  pm_GetAsPCharLen: Tl3PCharLen;
      procedure pm_SetAsPCharLen(const Value: Tl3PCharLen);
        {-}
      function  pm_GetFirst: AnsiChar;
        {-}
      function  pm_GetLast: AnsiChar;
        {-}
      function  pm_GetCh(aPos: Integer): AnsiChar;
      procedure pm_SetCh(aPos: Integer; Value: AnsiChar);
        {-}
      function  pm_GetRTrimLen: Integer;
        {-}
      function  pm_GetLTrimLen: Integer;
        {-}
      function  pm_GetAsChar: AnsiChar;
      procedure pm_SetAsChar(Value: AnsiChar);
        {-}
      function  pm_GetAsPWideChar: PWideChar;
      procedure pm_SetAsPWideChar(aValue: PWideChar);
        {-}
      function  pm_GetAsWideString: WideString;
      procedure pm_SetAsWideString(const aValue: WideString);
        {-}
    protected
    // internal methods
      procedure DoSetAsPCharLen(const Value: Tl3PCharLen);
        override;
        {-}
      procedure CheckUnicode;
        {-}
    public
    // public methods
      function  AssignSt(aSt       : PAnsiChar;
                         O1, O2    : Integer;
                         aCodePage : Integer): Tl3CustomString;
        {-}
      procedure LPad(aCh       : AnsiChar;
                     aCodePage : Integer = CP_ANSI;
                     aRepeat   : Integer = 1);
        {* - добавляет к строке слева символ aCh aRepeat раз. }
      procedure Append(const aSt: Tl3WString; aRepeat: Integer = 1);
        overload;
        virtual;
        {* - добавляет строку aSt к данной строке aRepeat раз. }
      procedure Append(const aCh: Tl3Char; aRepeat: Integer = 1);
        overload;
        {* - добавляет символ aCh к данной строке aRepeat раз. }
      procedure Append(aCh       : AnsiChar;
                       aRepeat   : Integer = 1;
                       aCodePage : Integer = CP_ANSI);
        overload;
        {* - добавляет символ aCh к данной строке aRepeat раз. }
      procedure Insert(const aSt       : Tl3WString;
                       aPos            : Integer;
                       aRepeat         : Integer = 1);
        overload;
        virtual;
        {* - вставляет строку aSt в позицию aPos, aRepeat раз. }
      procedure Insert(aCh             : AnsiChar;
                       aPos            : Integer;
                       aRepeat         : Integer = 1);
        overload;
        {* - вставляет символ aCh в позицию aPos, aRepeat раз. }
      procedure Insert(S               : Tl3CustomString;
                       aPos            : Integer;
                       aRepeat         : Integer = 1);
        overload;
        {* - вставляет строку S в позицию aPos, aRepeat раз. }
      function  Offset(Delta: Integer): Tl3CustomString;
        virtual;
        {-}
      function  Trim: Tl3CustomString;
        {* - удаляет конечные и начальные пробелы. }
      function  TrimAll: Tl3CustomString;
        {* - удаляет конечные, начальные и дублирующиеся пробелы. }
      procedure LTrim;
        virtual;
        {* - удаляет из строки ведущие пробелы. }
      function  RTrim: Tl3CustomString;
        {* - удаляет из строки конечные пробелы. }
      procedure TrimEOL;
        {* - удаляет из строки конечные cc_SoftEnter и cc_HardEnter. }
      function  DeleteDoubleSpace: Tl3CustomString;
        virtual;
        {* - удаляет из строки дублирующиеся пробелы. }
      function  DeleteAllChars(aChar: AnsiChar): Integer;
        {* - удаляет из строки все символы aChar и возвращает количество удаленных. }
      function  ReplaceNonReadable: Tl3CustomString;
        virtual;
        {* - заменяет "нечитаемые" символы пробелами. }
      function  FindChar(Pos: Integer; C: AnsiChar): Integer;
        {* - ищет символ в строке с позиции Pos и возвращает позицию найденного символа или -1. }
      procedure FindCharEx(C: AnsiChar; aSt: Tl3CustomString);
        {-}
      function  Indent: Integer;
        {* - возвращает левый отступ строки. }
      function  COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
        override;
        {-}
      procedure Assign(P: TPersistent);
        override;
        {-}
      procedure MakeBMTable(var BT : Tl3BMTable);
        {* - создает таблицу Boyer-Moore для строки. }
      function  BMSearch(S: Tl3CustomString; const BT : Tl3BMTable;
                         var Pos : Cardinal) : Boolean;
        {* - ищет данную строку в строке S с учетом регистра. }

      function  BMSearchUC(S: Tl3CustomString; const BT : Tl3BMTable;
                           var Pos : Cardinal) : Boolean;
        {* - ищет данную строку в строке S без учета регистра. }
        // ВНИМАНИЕ! Для успешного поиска без учёта регистра подстрока (S) должна быть в ВЕРХНЕМ РЕГИСТРЕ!
        // И таблица (BT) должна быть построена для этой строки в верхнем регистре!

      procedure MakeUpper;
        {* - преобразует строку к верхнему регистру. }
      procedure MakeLower;
        {* - преобразует строку к нижнему регистру. }
      function  Delete(aPos, aCount: Integer): PAnsiChar;
        virtual;
        {* - удаляет aCount символов с позиции aPos. }
      procedure SetSt(aStr: PAnsiChar; aLen: Integer = -1);
        {* - присваивает новое значение строке, считая, что aStr имеет ту же кодировку, что и строка. }
   function JoinWith(P: Tl3PrimString): Integer; virtual;
     {* операция объединения двух объектов. }
    public
    // public properties
      property St: PAnsiChar
        read pm_GetSt;
        {* - указатель на строку. }
      property Len: Integer
        read pm_GetLen
        write pm_SetLen;
        {* - длина строки. }
      property CodePage: Integer
        read pm_GetCodePage
        write pm_SetCodePage;
        {* - кодовая страница для символов строки. }
      property IsOEM: Boolean
        read pm_GetIsOEM;
        {* - строка в кодировке OEM? }
      property IsOEMEx: Boolean
        read pm_GetIsOEMEx;
        {* - строка в кодировке OEM? В обобщённом смысле, например CP_TatarOem. }
      property IsANSI: Boolean
        read pm_GetIsANSI;
        {* - строка в кодировке ANSI? }
      property AsPCharLen: Tl3PCharLen
        read pm_GetAsPCharLen
        write pm_SetAsPCharLen;
        {* - свойство для преобразования к типу Tl3PCharLen и обратно. }
      property First: AnsiChar
        read pm_GetFirst;
        {* - первый символ строки. }
      property Last: AnsiChar
        read pm_GetLast;
        {* - последний символ строки. }
      property Ch[aPos: Integer]: AnsiChar
        read pm_GetCh
        write pm_SetCh;
        {* - символ строки на позиции aPos. }
      property RTrimLen: Integer
        read pm_GetRTrimLen;
        {* - длина строки без учета конечных пробелов. }
      property LTrimLen: Integer
        read pm_GetLTrimLen;
        {* - длина строки без учета начальных пробелов. }
      property AsChar: AnsiChar
        read pm_GetAsChar
        write pm_SetAsChar;
        {* - преобразует строку к символу. }
      property AsPWideChar: PWideChar
        read pm_GetAsPWideChar
        write pm_SetAsPWideChar;
        {-}
      property AsWideString: WideString
        read pm_GetAsWideString
        write pm_SetAsWideString;
        {-}
  end;//Tl3CustomString

implementation

uses
  SysUtils,
  
  l3BMSearch
  {$IfDef l3Requires_m0}
  ,
  m2XLtLib
  {$Else l3Requires_m0}
  ,
  Windows
  {$EndIf l3Requires_m0}
  ,
  l3String,
  l3Chars,
  l3StringEx,
  l3StringAdapter,
  l3Memory,
  l3Base
  ;

// start class Tl3CustomString

procedure Tl3CustomString.Assign(P: TPersistent);
  {override;}
  {-}
begin
 if (P = nil) then
  Clear
 else
 if (P Is Tl3PrimString) then
  AssignString(Tl3PrimString(P))
 else
  inherited;
end;

procedure Tl3CustomString.MakeBMTable(var BT : Tl3BMTable);
  {-Build a Boyer-Moore link table}
var
 l_S : Tl3PCharLen;
begin
 l_S := AsPCharLen;
 if (l_S.SCodePage = CP_Unicode) then
  l3FillChar(BT, SizeOf(BT))
 else
  l3BMSearch.BMMakeTable(l_S.S, BT, l_S.SLen);
end;

function Tl3CustomString.BMSearch(S: Tl3CustomString; const BT : Tl3BMTable;
                                  var Pos : Cardinal) : Boolean;
  {-Use the Boyer-Moore search method to search a buffer for a string}
var
 l_S  : Tl3PCharLen;
 l_SS : Tl3PCharLen;
begin
 l_S := S.AsPCharLen;
 l_SS := AsPCharLen;
 if l3IsNil(l_SS) then
  Result := false
 else
  Result := l3SearchStr(l_S, BT, l_SS, Pos);
end;

function Tl3CustomString.BMSearchUC(S: Tl3CustomString; const BT : Tl3BMTable;
                                    var Pos : Cardinal) : Boolean;
  {-Use the Boyer-Moore search method to search a buffer for a string. This
    search is not _case sensitive}
var
 l_S  : Tl3PCharLen;
 l_SS : Tl3PCharLen;
begin
 l_S := S.AsPCharLen;
 l_SS := AsPCharLen;
 if l3IsNil(l_SS) then
  Result := false
 else
  Result := l3SearchStrUC(l_S, BT, l_SS, Pos);
end;

procedure Tl3CustomString.MakeUpper;
  {-}
begin
 l3MakeUpperCase(St, Len, CodePage);
end;

procedure Tl3CustomString.MakeLower;
  {-}
begin
 l3MakeLowerCase(St, Len, CodePage);
end;

function Tl3CustomString.Delete(aPos, aCount: Integer): PAnsiChar;
  //virtual;
  {-}
begin
 Result := St;
end;

procedure Tl3CustomString.SetSt(aStr: PAnsiChar; aLen: Integer = -1);
  {* - присваивает новое значение строке, считая, что aStr имеет ту же кодировку, что и строка. }
begin
 AsPCharLen := l3PCharLen(aStr, aLen, CodePage);
end;

function Tl3CustomString.JoinWith(P: Tl3PrimString): Integer;
begin
 Result := -1;
end;

function Tl3CustomString.pm_GetSt: PAnsiChar;
  {virtual;}
begin
 if (Self = nil) then
  Result := nil
 else
  Result := GetAsPCharLen.S;
end;

function Tl3CustomString.pm_GetLen: Integer;
begin
 if (Self = nil) then
  Result := 0
 else
  Result := GetAsPCharLen.SLen;
end;

procedure Tl3CustomString.pm_SetLen(Value: Integer);
  {virtual;}
  {-}
begin
end;

function  Tl3CustomString.pm_GetAsChar: AnsiChar;
begin
 Result := Ch[0];
end;

procedure Tl3CustomString.pm_SetAsChar(Value: AnsiChar);
begin
 AsPCharLen := l3PCharLen(@Value, 1, CodePage);
end;

procedure Tl3CustomString.DoSetAsPCharLen(const Value: Tl3PCharLen);
  //virtual;
  {-}
begin
 Assert(false);
end;

procedure Tl3CustomString.CheckUnicode;
  {-}
const
 cCodePages : array [0..4] of Integer = (CP_RussianWin, CP_WesternWin, CP_Tatar, CP_TatarOEM, CP_RussianDOS);
var
 l_Index : Integer;
 l_S     : Tl3Str;
 l_W     : Tl3WString;
begin
 l_W := GetAsPCharLen;
 if (l_W.SCodePage = CP_Unicode) then
 begin
  for l_Index := Low(cCodePages) to High(cCodePages) do
  begin
   l_S.Init(l_W, cCodePages[l_Index]);
   try
    if l3Same(l_W, l_S) then
    begin
     CodePage := cCodePages[l_Index];
     break;
    end;//l3Same(l_S, l_S)
   finally
    l_S.Clear;
   end;//try..finally
  end;//for l_Index
 end;//l_W.SCodePage = CP_Unicode
end;

procedure Tl3CustomString.LPad(aCh       : AnsiChar;
                                aCodePage : Integer = CP_ANSI;
                                aRepeat   : Integer = 1);
  {-}
begin
 Insert(l3PCharLen(@aCh, 1, aCodePage), 0, aRepeat);
end;

procedure Tl3CustomString.Append(const aSt: Tl3WString; aRepeat: Integer = 1);
  {virtual;}
  {overload;}
  {-}
begin
end;

procedure Tl3CustomString.Append(const aCh: Tl3Char; aRepeat: Integer = 1);
  //overload;
  {* - добавляет символ aCh к данной строке aRepeat раз. }
begin
 Append(l3PCharLen(@aCh.rWC, 1, aCh.rCodePage), aRepeat);
end;

procedure Tl3CustomString.Append(aCh       : AnsiChar;
                                  aRepeat   : Integer = 1;
                                  aCodePage : Integer = CP_ANSI);
  {overload;}
  {-}
begin
 Append(l3PCharLen(@aCh, 1, aCodePage), aRepeat);
end;

procedure Tl3CustomString.Insert(S               : Tl3CustomString;
                                 aPos            : Integer;
                                 aRepeat         : Integer = 1);
  {-}
begin
 if not S.Empty then
  Insert(S.AsPCharLen, aPos, aRepeat);
end;

procedure l3SayConstString;
  {-}
begin
 raise Exception.Create('Данный тип строки не может быть модифицирован');
end;

function Tl3CustomString.ReplaceNonReadable: Tl3CustomString;
  //virtual;
  {* - заменяет "нечитаемые" символы пробелами. }
begin
 Result := Self;
 l3SayConstString;
end;

procedure Tl3CustomString.Insert(const aSt       : Tl3WString;
                                  aPos            : Integer;
                                  aRepeat         : Integer = 1);
  //overload;
  //virtual;
begin
 l3SayConstString;
end;

procedure Tl3CustomString.Insert(aCh             : AnsiChar;
                                 aPos            : Integer;
                                 aRepeat         : Integer = 1);
  {overload;}
  {-}
begin
 Insert(l3PCharLen(PAnsiChar(@aCh), 1), aPos, aRepeat);
end;

function Tl3CustomString.pm_GetAsWideString: WideString;
  {-}
{$IfDef XE4}
var
 l_S : Tl3PCharLen;
{$EndIf XE4}
begin
 {$IfDef XE4}
 l_S := AsPCharLen;
 Result := Tl3Str(l_S).AsWideString;
 {$Else  XE4}
 Result := Tl3Str(AsPCharLen).AsWideString;
 {$EndIf XE4}
end;

procedure Tl3CustomString.pm_SetAsWideString(const aValue: WideString);
  {-}
begin
 AsPCharLen := l3PCharLen(aValue);
end;

function Tl3CustomString.pm_GetAsPWideChar: PWideChar;
  {-}
begin
 Result := PWideChar(St);
end;

procedure Tl3CustomString.pm_SetAsPWideChar(aValue: PWideChar);
  {-}
begin
 AsPCharLen := l3PCharLen(PAnsiChar(aValue), -1, CP_Unicode);
end;

function Tl3CustomString.AssignSt(aSt       : PAnsiChar;
                                  O1, O2    : Integer;
                                  aCodePage : Integer): Tl3CustomString;
  {-}
var
 L : Integer;
begin
 if (O2 > O1) then L := O2 - O1 else L := 0;
 AsPCharLen := l3PCharLen(aSt + O1, L, aCodePage);
 Result := Self;
end;

function  Tl3CustomString.pm_GetCodePage: Integer;
begin
 Result := AsPCharLen.SCodePage;
end;

function Tl3CustomString.pm_GetIsOEM: Boolean;
  {-}
begin
 Result := l3IsOEM(CodePage);
end;

function Tl3CustomString.pm_GetIsOEMEx: Boolean;
  {-}
begin
 Result := l3IsOEMEx(CodePage);
end;

function Tl3CustomString.pm_GetIsANSI: Boolean;
  {-}
begin
 Result := l3IsANSI(CodePage);
end;

procedure Tl3CustomString.pm_SetCodePage(Value: Integer);
  {-}
begin
 if (Self <> nil) then DoSetCodePage(Value);
end;

procedure Tl3CustomString.DoSetCodePage(Value: Integer);
  {virtual;}
  {-}
begin
end;

function  Tl3CustomString.pm_GetAsPCharLen: Tl3PCharLen;
begin
 if (Self = nil) then
  l3AssignNil(Result)
 else
  Tl3WString(Result) := GetAsPCharLen;
end;

procedure Tl3CustomString.pm_SetAsPCharLen(const Value: Tl3PCharLen);
begin
 if (Self <> nil) then
 begin
  Changing;
  try
   DoSetAsPCharLen(Value);
  finally
   Changed;
  end;//try..finally
 end;//Self <> nil
end;

function Tl3CustomString.pm_GetFirst: AnsiChar;
  {-}
begin
 if not Empty then Result := Ch[0] else Result := #0;
end;

function Tl3CustomString.pm_GetLast: AnsiChar;
  {-}
begin
 if not Empty then
  Result := Ch[Pred(Len)]
 else
  Result := #0;
end;

function Tl3CustomString.pm_GetCh(aPos: Integer): AnsiChar;
var
 l_S : Tl3WString;
begin
 l_S := AsPCharLen;
 if (l_S.S <> nil) AND (aPos >= 0) AND (aPos < l_S.SLen) then
 begin
  if (l_S.SCodePage = CP_Unicode) then
   Result := AnsiChar(PWideChar(l_S.S)[aPos])
  else
   Result := l_S.S[aPos];
 end//S <> nil
 else
  Result := #0;
end;

procedure Tl3CustomString.pm_SetCh(aPos: Integer; Value: AnsiChar);
var
 l_S : Tl3WString;
begin
 if (aPos >= 0) then
 begin
  l_S := GetAsPCharLen;
  if (l_S.S <> nil) AND (aPos < l_S.SLen) then
  begin
   if (l_S.SCodePage = CP_Unicode) then
    PWideChar(l_S.S)[aPos] := WideChar(Value)
   else
    l_S.S[aPos] := Value;
   CheckUnicode; 
  end//S <> nil
  else
   Insert(l3PCharLen(@Value, 1, CodePage), aPos);
 end;{aPos >= 0}
end;

function Tl3CustomString.pm_GetRTrimLen: Integer;
  {-}
begin
 if Empty then
  Result := 0
 else
  Result := l3RTrim(AsPCharLen).SLen;
end;

function Tl3CustomString.Offset(Delta: Integer): Tl3CustomString;
  {virtual;}
  {-}
var
 l_S : Tl3WString;  
begin
 l_S := AsWStr;
 AsWStr := l3PCharLen(l_S.S + Delta, l_S.SLen - Delta, l_S.SCodePage);
 Result := Self;
end;

procedure Tl3CustomString.LTrim;
  //virtual;
  {-}
begin
 Assert(false);
end;

function Tl3CustomString.RTrim: Tl3CustomString;
  {-}
begin
 if not Empty then
 begin
  Len := l3RTrim(AsPCharLen).SLen;
  if Empty then Clear;
 end;//not Empty
 Result := Self;
end;

procedure Tl3CustomString.TrimEOL;
  {* - удаляет из строки конечные cc_SoftEnter и cc_HardEnter. }
begin
 while (Len > 0) AND (St[Pred(Len)] in [cc_SoftEnter, cc_HardEnter, cc_Null]) do
  Len := Pred(Len);
end;

function Tl3CustomString.Trim: Tl3CustomString;
  {-}
begin
 LTrim;
 Result := RTrim;
end;

function Tl3CustomString.TrimAll: Tl3CustomString;
  {-}
begin
 Result := Trim.DeleteDoubleSpace;
end;

function Tl3CustomString.DeleteDoubleSpace: Tl3CustomString;
  {virtual;}
  {-}
begin
 Result := Self;
end;

function Tl3CustomString.DeleteAllChars(aChar: AnsiChar): Integer;
  {* - удаляет из строки все символы aChar и возвращает количество удаленных. }
var
 l_Pos : Integer;
begin
 Result := 0;
 l_Pos := 0;
 while true do
 begin
  l_Pos := FindChar(l_Pos, aChar);
  if (l_Pos < 0) then
   break
  else
  begin
   Delete(l_Pos, 1);
   Inc(Result);
  end;//l_Pos < 0
 end;//while true
end;

function Tl3CustomString.FindChar(Pos: Integer; C: AnsiChar): Integer;
  {-}
var
 P, P1 : PAnsiChar;
begin
 if Empty OR (Pos >= Len) then
  Result := -1
 else
 begin
  P := St;
  P1 := ev_lpScan(C, P + Pos, Len - Pos);
  if (P1 = nil) then
   Result := -1
  else
   Result := (P1 - P);
 end;//Empty.. 
end;

procedure Tl3CustomString.FindCharEx(C: AnsiChar; aSt: Tl3CustomString);
  {-}
var
 l_S : Tl3PCharLen;
begin
 l_S := AsPCharLen;
 aSt.AsPCharLen := l3FindChar(C, l_S);
 if not aSt.Empty then
  Len := l_S.SLen;
end;

function Tl3CustomString.Indent: Integer;
  {-}
begin
 if Empty then
  Result := 0
 else
  Result := ev_lpIndent(St, Len);
end;

function Tl3CustomString.COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
  {override;}
  {-}
begin
 Result.SetOk;
 if IID.EQ(Il3CString) then
  Il3CString(Obj) := Tl3StringAdapter.MakeS(Self)
 else
 if IID.EQ(IStream) then
  IStream(Obj) := Tl3StringStream.Make(Self)
 else
  Result := inherited COMQueryInterface(IID, Obj);
end;

function Tl3CustomString.pm_GetLTrimLen: Integer;
begin
 if Empty then
  Result := 0
 else
  Result := l3LTrim(Self.AsWStr).SLen;
end;

end.

