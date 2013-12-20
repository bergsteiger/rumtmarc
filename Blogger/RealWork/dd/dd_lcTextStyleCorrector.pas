unit dd_lcTextStyleCorrector;
{ Преобразование стилей и замена опечаток }

{ $Id: dd_lcTextStyleCorrector.pas,v 1.6 2013/04/12 15:02:04 lulin Exp $ }

// $Log: dd_lcTextStyleCorrector.pas,v $
// Revision 1.6  2013/04/12 15:02:04  lulin
// - расставляем const.
//
// Revision 1.5  2013/04/11 16:46:29  lulin
// - отлаживаем под XE3.
//
// Revision 1.4  2011/11/23 13:55:58  narry
// В таблицу с датой-номером попадает левая информация (300028178)
//
// Revision 1.3  2011/10/28 13:13:35  narry
// Рефакторинг процедуры форматирования текстов (294595287)
//
// Revision 1.2  2011/10/25 13:16:26  narry
// Рефакторинг процедуры форматирования текстов (294595287)
//
// Revision 1.1  2011/10/25 05:31:16  narry
// Рефакторинг процедуры форматирования текстов (294595287)
//

interface

uses
  dd_lcTextFormatter2, k2Interfaces, l3Types;

type
 Tdd_lcTextStyleCorrector = class(Tdd_lcBaseFormatter)
 private
  procedure CorrectNumber(const aPara: Ik2Tag);
 protected
  function ValidEmptyPara(const aPara: Ik2Tag): Boolean;
  procedure ClearParameters; override;
  procedure CorrectTextAndStyle(const aLeaf: Ik2Tag);
  function EnableWrite(const aPara: Ik2Tag): Tdd_lcTextReaction; override;
 public
 end;

implementation

uses
  k2tags, evdStyles, StrUtils, Table_Const, SysUtils, l3Chars;

function Tdd_lcTextStyleCorrector.ValidEmptyPara(const aPara: Ik2Tag): Boolean;
begin
 // Можно удалить пустой только, если он не в таблице
 if InTable then // для таблиц пропускам все
  Result:= True
 else
  Result:= aPara.Attr[k2_tiText].IsValid and (aPara.StrA[k2_tiText] <> '');
end;

procedure Tdd_lcTextStyleCorrector.ClearParameters;
begin
 inherited ClearParameters;
 CheckEmptyPara:= True;
end;

procedure Tdd_lcTextStyleCorrector.CorrectNumber(const aPara: Ik2Tag);
var
 l_Pos: Integer;
 l_Str: AnsiString;
 l_Update: Boolean;
begin
 l_Str:= aPara.StrA[k2_tiText];
 l_Pos:= Pos('№', l_Str);
 l_Update:= False;
 while l_Pos > 0 do
 begin
  if (Succ(l_Pos) <= Length(l_Str)) and not (l_Str[Succ(l_pos)] in [cc_HardSpace, cc_SoftSpace]) then
  begin
   Insert(cc_SoftSpace, l_Str, Succ(l_pos));
   l_Update:= True;
   l_Pos:= PosEx('№', l_Str, Succ(l_pos));
  end // (Succ(l_Pos) <= Length(l_Str)) and not (l_Str[Succ(l_pos)] in [cc_Space, cc_SoftSpace])
  else
   break
 end; // while l_Pos
 if l_Update then
  aPara.StrA[k2_tiText]:= l_Str;
end;

procedure Tdd_lcTextStyleCorrector.CorrectTextAndStyle(const aLeaf: Ik2Tag);
var
 l_Str: AnsiString;
begin
 if not aLeaf.Attr[k2_tiStyle].IsNull and aLeaf.Attr[k2_tiStyle].IsValid
    and (aLeaf.IntA[k2_tiStyle] <> ev_saNormalTable) then
  aLeaf.IntA[k2_tiStyle]:= ev_saTxtNormalANSI;
 // нужно найти и заменить неправильные сочетания пробел-запятая
 l_Str:= aLeaf.StrA[k2_tiText];
 l_Str:= AnsiReplaceStr(l_Str, ' ,', ',');
 l_Str:= AnsiReplaceStr(l_Str, ' .', '.');
 aLeaf.StrW[k2_tiText, nil]:= l_Str;
end;

function Tdd_lcTextStyleCorrector.EnableWrite(const aPara: Ik2Tag):
    Tdd_lcTextReaction;
begin
 if ValidEmptyPara(aPara) then
 begin
  Result:= lcWrite;
  CorrectNumber(aPara);
  CorrectTextAndStyle(aPara);
 end
 else
  Result:= lcDelete;
end;

end.
