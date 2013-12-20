unit evTextParaStringImpl;

{ Библиотека "Эверест"  }
{ Автор: Люлин А.В. ©   }
{ Модуль: evTextParaStringImpl - }
{ Начат: 11.06.99 12:57 }
{ $Id: evTextParaStringImpl.pas,v 1.21 2013/04/04 11:18:52 lulin Exp $ }

// $Log: evTextParaStringImpl.pas,v $
// Revision 1.21  2013/04/04 11:18:52  lulin
// - портируем.
//
// Revision 1.20  2009/07/20 12:49:32  lulin
// - подготавливаемся к переносу изменений в ветку.
//
// Revision 1.19  2009/07/10 16:15:42  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.18  2009/04/28 07:15:13  fireton
// - библиотека не собиралась
//
// Revision 1.17  2008/02/07 19:12:55  lulin
// - избавляемся от излишне универсальных методов базовых списков.
//
// Revision 1.16  2007/12/24 14:50:47  lulin
// - cleanup.
//
// Revision 1.15  2007/12/04 12:47:06  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.13.8.4  2007/09/14 13:26:07  lulin
// - объединил с веткой B_Tag_Clean.
//
// Revision 1.13.8.3.2.1  2007/09/12 15:23:02  lulin
// - избавляемся от метода, дублирующего функциональность получения атрибута.
//
// Revision 1.13.8.3  2007/02/13 17:32:56  lulin
// - избавляемся от использования стандартной функции поиска подстроки в строке.
//
// Revision 1.13.8.2  2006/11/03 11:00:08  lulin
// - объединил с веткой 6.4.
//
// Revision 1.13.8.1.22.1  2006/10/26 11:24:13  lulin
// - избавляемся от лишних преобразований типов.
//
// Revision 1.13.8.1  2005/11/09 15:28:25  lulin
// - базовые интерфейсы перенесены в правильный модуль.
//
// Revision 1.13  2005/03/15 12:16:09  lulin
// - remove method: k2TagO.
//
// Revision 1.12  2005/01/11 13:04:11  lulin
// - rename interface: _Il3String -> Il3WordsSeq.
//
// Revision 1.11  2004/06/30 11:32:21  law
// - rename proc: _k2Tag(TObject) -> k2TagO.
//
// Revision 1.10  2004/06/04 15:32:57  law
// - убрал прямое обращение к _Tl3PVList (т.к. для оптимизации предполагается, что в теле документа не всегда он может хранится).
//
// Revision 1.9  2002/10/25 13:41:17  law
// - cleanup.
//
// Revision 1.8  2002/10/17 14:52:31  law
// - cleanup.
//
// Revision 1.7  2002/02/11 16:24:09  law
// - rename proc: evIsWordDelim -> l3IsWordDelim.
//
// Revision 1.6  2001/08/28 12:55:12  law
// - rename unit: evUtils -> l3Utils.
//
// Revision 1.5  2001/06/18 14:32:49  law
// - cleanup.
//
// Revision 1.4  2000/12/15 15:10:38  law
// - вставлены директивы Log.
//

{$Include evDefine.inc }

interface

uses
  l3Types,
  l3Core,
  l3Interfaces,

  k2Interfaces,
  k2TagTool
  ;

type
  TevTextParaStringImpl = class(Tk2TagTool, Il3WordsSeq)
    protected
    // internal methods
      function WordStart(aPos: Tl3Position): Tl3Position;
        {-}
      function WordLeft(aPos: Tl3Position): Tl3Position;
        {-}
      function WordFinish(aPos: Tl3Position): Tl3Position;
        {-}
      function WordRight(aPos: Tl3Position): Tl3Position;
        {-}
     public
     // public methods
       class function Make(const aPara: Ik2Tag): Il3WordsSeq;
         reintroduce;
         {-}
  end;//TevTextParaStringImpl

implementation

uses
  l3Base,
  l3String,  {-for l3IsWordDelim}

  k2Base,
  k2Tags,
  k2TagTools
  ;

class function TevTextParaStringImpl.Make(const aPara: Ik2Tag): Il3WordsSeq;
  //reintroduce;
  {-}
var
 l_A : TevTextParaStringImpl;
begin
 l_A := Create(aPara);
 try
  Result := l_A;
 finally
  l3Free(l_A);
 end;//try..finally
end;

function TevTextParaStringImpl.WordStart(aPos: Tl3Position): Tl3Position;
  {-}
var
 _St       : PAnsiChar;
 l_CharSet : Long;
begin
 Result := aPos;
 with GetRedirect.PCharLenA[k2_tiText] do
 begin
  _St := S;
  l_CharSet := SCodePage;
  if (_St = nil) then
   Exit;
 end;//with GetRedirect.PCharLenA[k2_tiText]
 while (Result > 0) and not l3IsWordDelim(_St[Pred(Result)], l_CharSet) do
  Dec(Result);
end;

function TevTextParaStringImpl.WordLeft(aPos: Tl3Position): Tl3Position;
  {-}
var
 _St       : PAnsiChar;
 l_CharSet : Long;
begin
 Result := aPos;
 with GetRedirect.PCharLenA[k2_tiText] do
 begin
  _St := S;
  l_CharSet := SCodePage;
  if (_St = nil) then
   Exit;
 end;//with GetRedirect.PCharLenA[k2_tiText]
 while (Result > 0) and l3IsWordDelim(_St[Pred(Result)], l_CharSet) do
  Dec(Result);
 while (Result > 0) and not l3IsWordDelim(_St[Pred(Result)], l_CharSet) do
  Dec(Result);
end;

function TevTextParaStringImpl.WordFinish(aPos: Tl3Position): Tl3Position;
  {-}
var
 _St       : PAnsiChar;
 _StLen    : Long;
 l_CharSet : Long;
begin
 Result := aPos;
 with GetRedirect.PCharLenA[k2_tiText] do
 begin
  _St := S;
  _StLen := SLen;
  l_CharSet := SCodePage;
  if (_St = nil) then
   Exit;
 end;//with GetRedirect.PCharLenA[k2_tiText]
 while (Result < _StLen) and not l3IsWordDelim(_St[Result], l_CharSet) do
  Inc(Result);
end;

function TevTextParaStringImpl.WordRight(aPos: Tl3Position): Tl3Position;
  {-}
var
 _St       : PAnsiChar;
 _StLen    : Long;
 l_CharSet : Long;
begin
 Result := aPos;
 with GetRedirect.PCharLenA[k2_tiText] do
 begin
  _St := S;
  _StLen := SLen;
  l_CharSet := SCodePage;
  if (_St = nil) then
   Exit;
 end;//GetRedirect.PCharLenA[k2_tiText]
 while (Result < _StLen) and not l3IsWordDelim(_St[Result], l_CharSet) do
  Inc(Result);
 while (Result < _StLen) and l3IsWordDelim(_St[Result], l_CharSet) do
  Inc(Result);
end;

end.

