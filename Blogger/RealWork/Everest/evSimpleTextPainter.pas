unit evSimpleTextPainter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evSimpleTextPainter.pas"
// Начат: 23.05.2008 17:20
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Generators::TevSimpleTextPainter
//
// Класс для раскраски строк текста. Без нарезки на строки. И без форматирования таблиц в
// псевдографику. Для решения задачи [$91848978].
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2DocumentGenerator,
  evCustomTextFormatter,
  k2Types
  ;

type
 TevSimpleTextPainter = class(TevCustomTextFormatter)
  {* Класс для раскраски строк текста. Без нарезки на строки. И без форматирования таблиц в псевдографику. Для решения задачи [$91848978]. }
 private
 // private fields
   f_InCell : Integer;
   f_OldNSRC : Integer;
    {* Пишем таблицы в старом формате NSRC}
   f_TableType : Integer;
    {* Тип таблицы}
   f_Zoom : Integer;
    {* Масштаб}
 private
 // private methods
   function NeedTranslateToNext(const anAtom: Tk2StackAtom): Boolean;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure DoStartAtom(var Atom: Tk2StackAtom); override;
   procedure DoFinishAtom(var anAtom: Tk2StackAtom); override;
   function DoBeforeFinishAtom(var Atom: Tk2StackAtom): Boolean; override;
   procedure DoAddAtom(const Atom: Tk2StackAtom;
    Prop: Integer;
    TK: Tk2TypeKind;
    const Source); override;
   procedure AddAtom(AtomIndex: Integer;
    TK: Tk2TypeKind;
    const Value); override;
   procedure StartChild(TypeID: Integer); override;
   procedure StartTag(TagID: Integer); override;
   procedure CloseStructure(NeedUndo: Boolean); override;
     {* вызывается на закрывающуюся "скобку". Для перекрытия в потомках. }
   function NeedAddSpaces: Boolean; override;
 protected
 // protected methods
   function OpenTableIfNeeded: Boolean;
 end;//TevSimpleTextPainter

implementation

uses
  k2Tags,
  TextPara_Const,
  Document_Const,
  ObjectSegment_Const,
  TableCell_Const,
  k2Const,
  Table_Const,
  evParaTools,
  k2Facade,
  k2Base,
  l3CustomString,
  evNSRCConst,
  l3String,
  l3Chars,
  SBS_Const
  ;

// start class TevSimpleTextPainter

function TevSimpleTextPainter.OpenTableIfNeeded: Boolean;
//#UC START# *4AFAD5860039_4836C450038D_var*
var
 l_TableType : Integer;
//#UC END# *4AFAD5860039_4836C450038D_var*
begin
//#UC START# *4AFAD5860039_4836C450038D_impl*
 Result := (f_TableType <> k2_idEmpty);
 if Result then
 begin
  l_TableType := f_TableType;
  f_TableType := k2_idEmpty;
  inherited StartChild(l_TableType);
  if (f_Zoom <> 0) then
  begin
   Generator.AddIntegerAtom(k2_tiZoom, f_Zoom);
   f_Zoom := 0;
  end;//f_Zoom <> 0
 end;//Result
//#UC END# *4AFAD5860039_4836C450038D_impl*
end;//TevSimpleTextPainter.OpenTableIfNeeded

function TevSimpleTextPainter.NeedTranslateToNext(const anAtom: Tk2StackAtom): Boolean;
//#UC START# *4836E100028A_4836C450038D_var*
//#UC END# *4836E100028A_4836C450038D_var*
begin
//#UC START# *4836E100028A_4836C450038D_impl*
 if anAtom.InheritsFrom(k2_idTextPara) then
 begin
  with anAtom do
   if ((Parent = nil) OR not Parent.InheritsFrom(k2_idObjectSegment)) then
    Result := false
   else
    Result := true; 
 end
 else
  Result := true;
//#UC END# *4836E100028A_4836C450038D_impl*
end;//TevSimpleTextPainter.NeedTranslateToNext

procedure TevSimpleTextPainter.Cleanup;
//#UC START# *479731C50290_4836C450038D_var*
//#UC END# *479731C50290_4836C450038D_var*
begin
//#UC START# *479731C50290_4836C450038D_impl*
 f_InCell := 0;
 f_OldNSRC := 0;
 f_TableType := k2_idEmpty;
 f_Zoom := 0;
 inherited;
//#UC END# *479731C50290_4836C450038D_impl*
end;//TevSimpleTextPainter.Cleanup

procedure TevSimpleTextPainter.DoStartAtom(var Atom: Tk2StackAtom);
//#UC START# *4836B39C025E_4836C450038D_var*
//#UC END# *4836B39C025E_4836C450038D_var*
begin
//#UC START# *4836B39C025E_4836C450038D_impl*
 if (f_OldNSRC > 0) then
  inherited
 else
 begin
  if Atom.InheritsFrom(k2_idTableCell) then
   Inc(f_InCell);
  if not f_InTextPara then
  begin
   if Atom.InheritsFrom(k2_idDocument) then
   begin
    f_SectionWidth := CharsInLine;
    f_InCell := 0;
   end
   else
    f_InTextPara := not NeedTranslateToNext(Atom);
   if not f_InTextPara then
   begin
    if Atom.IsChild then
     Generator.StartChild(Atom.TagType.ID)
    else
     Generator.StartTag(Atom.TagID);
   end;//not f_InTextPara
  end;//not f_InTextPara
 end;//f_OldNSRC
//#UC END# *4836B39C025E_4836C450038D_impl*
end;//TevSimpleTextPainter.DoStartAtom

procedure TevSimpleTextPainter.DoFinishAtom(var anAtom: Tk2StackAtom);
//#UC START# *4836B3A70291_4836C450038D_var*
//#UC END# *4836B3A70291_4836C450038D_var*
begin
//#UC START# *4836B3A70291_4836C450038D_impl*
 if (f_OldNSRC > 0) then
  inherited
 else
 begin
  if anAtom.InheritsFrom(k2_idTableCell) then
   Dec(f_InCell);
  if not f_InTextPara AND NeedTranslateToNext(anAtom) then
   Generator.Finish;
 end;//f_OldNSRC
//#UC END# *4836B3A70291_4836C450038D_impl*
end;//TevSimpleTextPainter.DoFinishAtom

function TevSimpleTextPainter.DoBeforeFinishAtom(var Atom: Tk2StackAtom): Boolean;
//#UC START# *4836B3B80074_4836C450038D_var*
//#UC END# *4836B3B80074_4836C450038D_var*
begin
//#UC START# *4836B3B80074_4836C450038D_impl*
 if (f_OldNSRC > 0) then
  Result := inherited DoBeforeFinishAtom(Atom)
 else
 begin
  Result := NeedTranslateToNext(Atom);
  if not Result then
   DoFinishTextPara(Atom);
 end;//f_OldNSRC
//#UC END# *4836B3B80074_4836C450038D_impl*
end;//TevSimpleTextPainter.DoBeforeFinishAtom

procedure TevSimpleTextPainter.DoAddAtom(const Atom: Tk2StackAtom;
  Prop: Integer;
  TK: Tk2TypeKind;
  const Source);
//#UC START# *4836B3DB01C9_4836C450038D_var*
//#UC END# *4836B3DB01C9_4836C450038D_var*
begin
//#UC START# *4836B3DB01C9_4836C450038D_impl*
 if (f_OldNSRC > 0) then
  inherited
 else
 if not f_InTextPara then
  Generator.AddAtom(Prop, TK, Source);
//#UC END# *4836B3DB01C9_4836C450038D_impl*
end;//TevSimpleTextPainter.DoAddAtom

procedure TevSimpleTextPainter.AddAtom(AtomIndex: Integer;
  TK: Tk2TypeKind;
  const Value);
//#UC START# *4836D26F0055_4836C450038D_var*
var
 l_Text : Tl3CustomString;
//#UC END# *4836D26F0055_4836C450038D_var*
begin
//#UC START# *4836D26F0055_4836C450038D_impl*
 if (f_OldNSRC > 0) then
  inherited
 else
 begin
  if (AtomIndex = k2_tiOldNSRC) then
  begin
   if  (f_TableType <> k2_idEmpty) then
   begin
    Case TK of
     k2_tkObject :
     begin
      {$IFNDEF evOldNSRCTableOff}
      if (Tk2Type(k2.TypeTable[f_TableType].Prop[AtomIndex].AtomType).ObjToTag(TObject(Value)).AsLong <> 0) then
       Inc(f_OldNSRC);
      {$ENDIF evOldNSRCTableOff}
     end;//k2_tkObject
     else
     begin
      Assert(TK in [k2_tkInteger, k2_tkBool]);
      {$IFNDEF evOldNSRCTableOff}
      if (Integer(Value) <> 0) then
       Inc(f_OldNSRC);
      {$ENDIF evOldNSRCTableOff}
     end;//else
    end;//Case TK of
    if (f_OldNSRC > 0) then
     OpenTableIfNeeded;
   end;//f_TableType <> k2_idEmpty
  end//AtomIndex = k2_tiOldNSRC
  else
  if (AtomIndex = k2_tiZoom) then
  begin
   if (f_TableType <> k2_idEmpty) then
   begin
    Case TK of
     k2_tkObject :
      f_Zoom := Tk2Type(k2.TypeTable[f_TableType].Prop[AtomIndex].AtomType).ObjToTag(TObject(Value)).AsLong;
     else
     begin
      Assert(TK = k2_tkInteger);
      f_Zoom := Integer(Value);
     end;//else
    end;//Case TK of
   end;//f_TableType <> k2_idEmpty
  end//(AtomIndex = k2_tiZoom)
  else
  begin
   OpenTableIfNeeded;
   // - любой другой атом открывает отложенную таблицу
   if (AtomIndex = k2_tiData) then
   begin
   // - пусть картинки обрабатывает предок
    inherited;
    Exit;
   end//AtomIndex = k2_tiData
   else
   if (AtomIndex = k2_tiText) then
   begin
    if not (f_OldNSRC > 0) AND (f_InCell > 0) then
    begin
     Assert(TK = k2_tkObject);
     l_Text := TObject(Value) As Tl3CustomString;
     l3Replace(l_Text.AsWStr, [cc_SoftEnter], ev_NSRCSoftEnter);
    end;//not f_OldNSRC AND (f_InCell > 0)
   end;//AtomIndex = k2_tiText
   if not f_InTextPara then
    Generator.AddAtom(AtomIndex, TK, Value)
   else
    AddAtomToDocument(AtomIndex, TK, Value);
  end;//AtomIndex = k2_tiOldNSRC
 end;//f_OldNSRC
//#UC END# *4836D26F0055_4836C450038D_impl*
end;//TevSimpleTextPainter.AddAtom

procedure TevSimpleTextPainter.StartChild(TypeID: Integer);
//#UC START# *4836D4650177_4836C450038D_var*
//#UC END# *4836D4650177_4836C450038D_var*
begin
//#UC START# *4836D4650177_4836C450038D_impl*
 OpenTableIfNeeded;
 if k2.TypeTable[TypeID].InheritsFrom(k2_idTable) AND
    not k2.TypeTable[TypeID].InheritsFrom(k2_idSBS) then
 begin
  if not (f_OldNSRC > 0) then
  begin
   Assert(f_TableType = k2_idEmpty);
   f_TableType := TypeID;
   Exit;
  end;//not (f_OldNSRC > 0)
 end;//k2.TypeTable[TypeID].InheritsFrom(k2_idTable)
 inherited;
//#UC END# *4836D4650177_4836C450038D_impl*
end;//TevSimpleTextPainter.StartChild

procedure TevSimpleTextPainter.StartTag(TagID: Integer);
//#UC START# *4836D477022A_4836C450038D_var*
//#UC END# *4836D477022A_4836C450038D_var*
begin
//#UC START# *4836D477022A_4836C450038D_impl*
 OpenTableIfNeeded;
 inherited;
//#UC END# *4836D477022A_4836C450038D_impl*
end;//TevSimpleTextPainter.StartTag

procedure TevSimpleTextPainter.CloseStructure(NeedUndo: Boolean);
//#UC START# *4836D4C20059_4836C450038D_var*
var
 l_C : PevStackAtom;
 l_ClearOldNSRC : Boolean;
//#UC END# *4836D4C20059_4836C450038D_var*
begin
//#UC START# *4836D4C20059_4836C450038D_impl*
 l_ClearOldNSRC := false;
 if (f_OldNSRC > 0) then
 begin
  l_C := Tags.Top;
  if (l_C <> nil) then
   if l_C.InheritsFrom(k2_idTable) then
//    if not evInPara(l_C.Parent.Box, k2_idTable) then
    if not evInPara(l_C.Parent.Box, k2_idTableCell) then
    // - проверяем не вложенная ли это таблица
     l_ClearOldNSRC := true;
 end;//f_OldNSRC
 if not (f_OldNSRC > 0) AND (f_TableType <> k2_idEmpty) then
 // - наверное это таблица без детей как в http://mdp.garant.ru/pages/viewpage.action?pageId=224135562
 begin
  Assert(f_InCell = 0);
  f_TableType := k2_idEmpty;
  if (CurrentStartLevel = OpenStreamLevel) then
   Inc(f_Starts);
   // - это хак, но иначе падает на пустой таблице в начале документа
  Exit;
 end;//not f_OldNSRC AND (f_TableType <> k2_idEmpty)
 inherited;
 if (f_OldNSRC > 0) AND l_ClearOldNSRC then
 begin
  PrevTable := nil;
  Dec(f_OldNSRC);
 end;//f_OldNSRC
//#UC END# *4836D4C20059_4836C450038D_impl*
end;//TevSimpleTextPainter.CloseStructure

function TevSimpleTextPainter.NeedAddSpaces: Boolean;
//#UC START# *4A116B45039B_4836C450038D_var*
//#UC END# *4A116B45039B_4836C450038D_var*
begin
//#UC START# *4A116B45039B_4836C450038D_impl*
 if (f_OldNSRC > 0) then
  Result := inherited NeedAddSpaces
 else
  Result := (f_InCell = 0);
//#UC END# *4A116B45039B_4836C450038D_impl*
end;//TevSimpleTextPainter.NeedAddSpaces

end.