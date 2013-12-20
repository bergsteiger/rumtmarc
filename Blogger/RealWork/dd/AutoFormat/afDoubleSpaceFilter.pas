unit afDoubleSpaceFilter;
{ Удаляет двойные пробелы из текста }
// $Id: afDoubleSpaceFilter.pas,v 1.2 2013/04/16 09:30:55 fireton Exp $

// $Log: afDoubleSpaceFilter.pas,v $
// Revision 1.2  2013/04/16 09:30:55  fireton
// - не собиралось
//
// Revision 1.1  2013/04/16 08:09:55  narry
// Автоматические форматировщики
//


interface

uses
 k2TagFilter, k2Types,
 l3Types, l3Base,
 dt_Types,
 ddTypes, dd_lcTextFormatter2, k2Interfaces;

type
 TafDoubleSpaceFilter = class(Tdd_lcBaseFormatter)
 private
 protected
  function EnableWrite(const aPara: Ik2Tag): Tdd_lcTextReaction; override;

 published
 end;

implementation

uses
 k2Tags,
 StrUtils, SysUtils, l3Chars, l3String;

function TafDoubleSpaceFilter.EnableWrite(const aPara: Ik2Tag): Tdd_lcTextReaction;
var
 l_Str: String;
begin
 Result:= lcWrite;
 l_Str:= l3DeleteDoubleSpace(aPara.StrA[k2_tiText]);
 l_Str:= AnsiReplaceStr(l_Str, cc_SoftSpace+cc_SoftSpace, cc_SoftSpace);
 //if l3AllCharsInCharSet(PAnsiChar(l_Str), Length(l_Str), ['_']) then
 // l_Str:= '';
 aPara.StrW[k2_tiText, nil]:= l_Str;
end;

end.
