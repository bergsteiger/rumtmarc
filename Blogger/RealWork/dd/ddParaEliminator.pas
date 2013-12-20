unit ddParaEliminator;
{ $Id: ddParaEliminator.pas,v 1.10 2009/03/04 16:25:56 lulin Exp $ }

// $Log: ddParaEliminator.pas,v $
// Revision 1.10  2009/03/04 16:25:56  lulin
// - <K>: 137470629. Bug fix: не собирался Архивариус.
//
// Revision 1.9  2009/02/26 12:25:08  lulin
// - <K>: 137465982. №1
//
// Revision 1.8  2008/06/20 14:49:11  lulin
// - используем префиксы элементов.
//
// Revision 1.7  2007/09/17 07:09:20  lulin
// - bug fix: не собирался Архивариус.
//
// Revision 1.6  2007/08/09 18:05:21  lulin
// - избавляемся от излишнего использования интерфейсов, т.к. переносимость может быть достигнута другими методами.
//
// Revision 1.5  2005/11/09 16:24:15  narry
// - новое: обработка вложенных блоков
//
// Revision 1.4  2005/10/18 09:06:45  lulin
// - исправлено, то что не компилировалось в связи с переездом модулей.
//
// Revision 1.3  2005/07/26 10:46:17  narry
// - update: расширение функциональности экспорта - только структура документа
//
// Revision 1.2  2004/07/02 12:41:09  narry
// - update:
//
// Revision 1.1  2004/01/20 10:13:52  narry
// - new unit
//

interface

Uses

 evdLeafParaFilter,
 
 l3Types,
 k2Base, k2Interfaces, k2Types;

type
 TddParaEliminator = class(TevdLeafParaFilter)
 private
  f_FirstPara: Boolean;
  f_GhostParaCount: Integer;
  f_IsBlock: Integer;
 protected
  procedure DoWritePara(const aLeaf: Ik2Tag); override;
 public
        {-}
  procedure CloseStructure(NeedUndo: Bool); override;
        {-}
  procedure StartChild(TypeID: Long); override;
 end;

implementation

Uses
 k2BaseTypes,
 k2Tags,
 evTypes, evdStyles,

 Block_Const,
 Document_Const,
 TextPara_Const
 ;

{ TddParaEliminator }

procedure TddParaEliminator.CloseStructure(NeedUndo: Bool);
begin
 if CurrentType.InheritsFrom(k2_idBlock) and not CurrentType.InheritsFrom(k2_idDocument) then
 begin
  Dec(f_IsBlock);
  if f_IsBlock = 0 then
   f_GhostParaCount := 0;
 end;
 inherited;
end;

procedure TddParaEliminator.DoWritePara(const aLeaf: Ik2Tag);
var
 l_TextAtom, l_StyleAtom: Ik2Tag;
 l_WritePara: Boolean;
begin
 
 if f_FirstPara and (f_IsBlock = 0) then // первый абзац документа
 begin
  f_FirstPara := False;
  f_GhostParaCount := 0;
  Generator.StartChild(aLeaf.TagType.ID);
  try
   l_StyleAtom := aLeaf.Attr[k2_tiStyle];
   if (not l_StyleAtom.IsNull) and (l_StyleAtom.AsLong = ev_saTxtHeader1) then
    aLeaf.Write(Generator, l3_spfAll)
   else
    aLeaf.Write(Generator, l3_spfAll, [k2_tiText, k2_tiSegments, k2_tiJustification,
                                       k2_tiStyle, k2_tiFirstIndent, k2_tiLeftIndent]);
  finally
   Generator.Finish;
  end;
 end
 else
 if (f_FirstPara and (f_IsBlock > 0)) or (not aLeaf.Attr[k2_tiSubs].IsNull) then // Только абзацы, у которых есть метки
 begin

  f_FirstPara := False;
  f_GhostParaCount := 0;
  Generator.StartChild(aLeaf.TagType.ID);
  try
   { нужно пропустить метки, классы и т.д. }
   if aLeaf.InheritsFrom(k2_idTextPara) then
   begin
     // нужно укоротить текст абзаца
     l_TextAtom := aLeaf.Attr[k2_tiText];
     if not l_textAtom.IsNull then
     begin
      Generator.AddStringAtom(k2_tiText, Copy(l_TextAtom.AsString, 1, 70)+'...');
     end;
    end;
    aLeaf.Write(Generator, l3_spfAll, [k2_tiText, k2_tiSegments, k2_tiJustification,
                                       k2_tiStyle, k2_tiFirstIndent, k2_tiLeftIndent]);
  finally
   Generator.Finish;
  end;
 end // not aLeaf.rAtom(k2_tiSubs).IsNull
 else
 begin
  if f_GhostParaCount = 0 then
  begin
   Generator.StartChild(k2_idTextPara);
   try
    Generator.AddStringAtom(k2_tiText, '...');
   finally
    Generator.Finish;
   end;
  end; // f_GhostParaCount > 0
  Inc(f_GhostParaCount);
 end;
end;

procedure TddParaEliminator.StartChild(TypeID: Long);
var
 CT : Tk2Type;
begin
 CT := TypeTable[TypeID];
 if CT.InheritsFrom(k2_idBlock) then
 begin;
  f_FirstPara := True;
  if CT.InheritsFrom(k2_idDocument) then
  begin
   f_IsBlock := 0;
   f_GhostParaCount := 0;
  end // CT.InheritsFrom(k2_idDocument)
  else
   Inc(f_IsBlock);
 end; // CT.InheritsFrom(k2_idBlock)
 inherited;
end;

end.
