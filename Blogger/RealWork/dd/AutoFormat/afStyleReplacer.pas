unit afStyleReplacer;
{ Заменяет оформление на стили }

// $Id: afStyleReplacer.pas,v 1.2 2013/04/16 09:30:55 fireton Exp $

// $Log: afStyleReplacer.pas,v $
// Revision 1.2  2013/04/16 09:30:55  fireton
// - не собиралось
//
// Revision 1.1  2013/04/16 08:09:55  narry
// Автоматические форматировщики
//

interface

uses
  k2Interfaces, dd_lcTextFormatter2;

type
 TafStyleRelpacer = class(Tdd_lcBaseFormatter)
 protected
  procedure ClearParameters; override;
  procedure CorrectTextAndStyle(aLeaf: Ik2Tag);
  function EnableWrite(const aPara: Ik2Tag): Tdd_lcTextReaction; override;
 end;

implementation

uses
  evdStyles, k2Tags, StrUtils, k2Base, l3Chars, evdTypes;

procedure TafStyleRelpacer.ClearParameters;
begin
 inherited ClearParameters;
 CheckEmptyPara:= True;
end;

procedure TafStyleRelpacer.CorrectTextAndStyle(aLeaf: Ik2Tag);
var
 l_Str: String;
 l_Style: Integer;
begin
 
 if not InTable then
 begin
  //if aLeaf.Attr[k2_tiStyle].IsNull then
  begin
   if aLeaf.Attr[k2_tiFont].BoolA[k2_tiBold] and (aLeaf.IntA[k2_tiJustification] = ord(ev_itCenter)) then
    l_Style:= ev_saTxtHeader1
   else
    l_Style:= ev_saTxtNormalANSI;
   aLeaf.IntW[k2_tiStyle, nil]:= l_Style;
  end;
 end;
 aLeaf.AttrW[k2_tiFont, nil]:= k2NullTag;
 aLeaf.AttrW[k2_tiSegments, nil]:= k2NullTag;
 // нужно найти и заменить неправильные сочетания пробел-запятая
 l_Str:= aLeaf.StrA[k2_tiText];
 l_Str:= AnsiReplaceStr(l_Str, ' ,', ',');
 l_Str:= AnsiReplaceStr(l_Str, ' .', '.');
 l_Str:= AnsiReplaceStr(l_Str, ' :', ':');
 l_Str:= AnsiReplaceStr(l_Str, cc_SoftSpace+',', ',');
 l_Str:= AnsiReplaceStr(l_Str, cc_SoftSpace+'.', '.');
 l_Str:= AnsiReplaceStr(l_Str, cc_SoftSpace+':', ':');
 aLeaf.StrW[k2_tiText, nil]:= l_Str;
 
end;

function TafStyleRelpacer.EnableWrite(const aPara: Ik2Tag): Tdd_lcTextReaction;
begin
 Result:= lcWrite;
 CorrectTextAndStyle(aPara);
end;

end.
