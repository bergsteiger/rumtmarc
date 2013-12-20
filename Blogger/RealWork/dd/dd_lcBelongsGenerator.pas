unit dd_lcBelongsGenerator;
{ Генерация Группы документов для постановлений от различных источников }

{ $Id: dd_lcBelongsGenerator.pas,v 1.7 2013/04/11 16:46:29 lulin Exp $ }
// $Log: dd_lcBelongsGenerator.pas,v $
// Revision 1.7  2013/04/11 16:46:29  lulin
// - отлаживаем под XE3.
//
// Revision 1.6  2012/10/03 07:43:45  fireton
// - отвязываем от HyTech
//
// Revision 1.5  2011/04/01 12:15:54  narry
// 259885188 Справка для ФАС
//

interface
Uses
 Classes,
 l3LongintList, l3Types,
 k2TagFilter,k2Types, k2TagGen, ddTypes, DT_Types, dd_lcBaseFilter;

type
 TlcBelongsGenerator = class(Tdd_lcBaseFilter)
 private
  f_BelongsWritten: Boolean;
  f_PrefixesWritten: Boolean;
  f_Source: AnsiString;
  procedure AddBelongs;
  procedure AddBelongsAndPrefix;
  procedure AddPrefix;
  procedure ClearParameters;
  function pm_GetInfoAdded: Boolean;
  function SourceToBelongs(const aSource: AnsiString): AnsiString;
  property InfoAdded: Boolean read pm_GetInfoAdded;
 protected
        {-}
  procedure DoAddAtomEx(AtomIndex: Long; const Value: Tk2Variant); override;
        {-}
  procedure DoStartChild(TypeID: Long); override;
 public
 end;

implementation

uses
 SysUtils, StrUtils, l3LingLib, l3Date, k2Tags, l3BAse, Document_Const, DictItem_Const, NumAndDate_Const,
 Participant_Const, TextPara_Const, Block_Const, l3DateSt, l3Chars, l3String, Table_Const,
 dd_lcSourceUtils;



procedure TlcBelongsGenerator.AddBelongs;
var
 l_Belongs: AnsiString;
 l_AccGroups: AnsiString;
 l_Msg: AnsiString;
begin
 if not f_BelongsWritten then
 begin
  f_BelongsWritten:= True;
  l_Belongs:= SourceToBelongs(f_Source);
  if l_Belongs <> '' then
  begin
   Generator.StartTag(k2_tiGroups);
   try
    Generator.StartChild(k2_idDictItem);
    try
     Generator.AddStringAtom(k2_tiShortName, l_Belongs);
    finally
     Generator.Finish;
    end;
   finally
     Generator.Finish;
   end;
   l_AccGroups:= IfThen(AnsiStartsText('Apell', l_Belongs), 'APPEL', l_Belongs);
   Generator.StartTag(k2_tiAccGroups);
   try
    Generator.StartChild(k2_idDictItem);
    try
     Generator.AddStringAtom(k2_tiShortName, l_AccGroups);
    finally
     Generator.Finish;
    end;
   finally
    Generator.Finish;
   end;
  end
  else
   ErrorReaction(Format('Не удалось вычислить Группу документов для %s', [f_Source]));
 end;
end;

procedure TlcBelongsGenerator.AddBelongsAndPrefix;
begin
 AddBelongs;
 AddPrefix;
end;

procedure TlcBelongsGenerator.AddPrefix;
begin
 if not f_PrefixesWritten then
 begin
  f_PrefixesWritten:= True;
  Generator.StartTag(k2_tiPrefix);
  try
   Generator.StartChild(k2_idDictItem);
   try
    Generator.AddStringAtom(k2_tiName, 'Судебная практика');
   finally
    Generator.Finish;
   end;
  finally
   Generator.Finish;
  end;
 end;
end;

procedure TlcBelongsGenerator.ClearParameters;
begin
 f_Source:= '';
 f_BelongsWritten:= False;
 f_PrefixesWritten:= False;
end;

procedure TlcBelongsGenerator.DoAddAtomEx(AtomIndex: Long; const Value: Tk2Variant);
  //virtual;
  {-}
begin
 if CurrentType.InheritsFrom(k2_idDictItem) and (TopObject[1].isProp) then
  case TopObject[1].AsProp.TagIndex of
   k2_tiSources:
    if AtomIndex = k2_tiName then
     f_Source:= Value.AsString.AsString;
   k2_tiGroups: f_BelongsWritten:= True;
   k2_tiPrefix: f_PrefixesWritten:= True;
  end;
 inherited;
end;

procedure TlcBelongsGenerator.DoStartChild(TypeID: Long);
begin
 if not InfoAdded and
   (TypeTable[TypeID].InheritsFrom(k2_idTextPara) or TypeTable[TypeID].InheritsFrom(k2_idBlock, [k2_idDocument]) or
    TypeTable[TypeID].InheritsFrom(k2_idTable)) then
  AddBelongsAndPrefix;
 inherited;
 if CurrentType.InheritsFrom(k2_idDocument) then
  ClearParameters;
end;

function TlcBelongsGenerator.pm_GetInfoAdded: Boolean;
begin
 Result := f_BelongsWritten and f_PrefixesWritten;
end;

function TlcBelongsGenerator.SourceToBelongs(const aSource: AnsiString): AnsiString;
begin
 Result := Source2Base(aSource);
end;

end.
