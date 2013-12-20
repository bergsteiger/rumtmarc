unit evTableFilter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Инишев Д.А.
// Модуль: "w:/common/components/gui/Garant/Everest/evTableFilter.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Generators::TevTableFilter
//
// Удаляет из ячеек-продолжений дочерние параграфы.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evdTypes,
  evdBufferedFilter,
  k2Types,
  k2Interfaces
  ;

type
 TevTableFilter = class(TevdCustomChildBufferedFilter)
  {* Удаляет из ячеек-продолжений дочерние параграфы. }
 private
 // private fields
   f_MergeStatus : TevMergeStatus;
 protected
 // overridden protected methods
   procedure DoStartChild(TypeID: Integer); override;
   procedure DoAddAtomEx(AtomIndex: Integer;
    const Value: Tk2Variant); override;
   function NeedStartBuffering(aID: Integer): Boolean; override;
   function NeedFlushBuffer(const aLeaf: Ik2Tag;
     aTagId: Integer): Boolean; override;
   procedure DoCloseStructure(NeedUndo: Boolean); override;
 end;//TevTableFilter

implementation

uses
  TableCell_Const,
  TableRow_Const,
  k2Tags
  ;

// start class TevTableFilter

procedure TevTableFilter.DoStartChild(TypeID: Integer);
//#UC START# *4A2D1217037A_4E48B5AE01E3_var*
//#UC END# *4A2D1217037A_4E48B5AE01E3_var*
begin
//#UC START# *4A2D1217037A_4E48B5AE01E3_impl*
 if (TypeID = k2_idTableCell) or (TypeID = k2_idTableRow) then
  f_MergeStatus := ev_msNone;
 inherited;
//#UC END# *4A2D1217037A_4E48B5AE01E3_impl*
end;//TevTableFilter.DoStartChild

procedure TevTableFilter.DoAddAtomEx(AtomIndex: Integer;
  const Value: Tk2Variant);
//#UC START# *4A2D1634025B_4E48B5AE01E3_var*
//#UC END# *4A2D1634025B_4E48B5AE01E3_var*
begin
//#UC START# *4A2D1634025B_4E48B5AE01E3_impl*
 if AtomIndex = k2_tiMergeStatus then
  f_MergeStatus := TevMergeStatus(VariantAsInteger(AtomIndex, Value));
 inherited;
//#UC END# *4A2D1634025B_4E48B5AE01E3_impl*
end;//TevTableFilter.DoAddAtomEx

function TevTableFilter.NeedStartBuffering(aID: Integer): Boolean;
//#UC START# *4C56D54B002A_4E48B5AE01E3_var*
//#UC END# *4C56D54B002A_4E48B5AE01E3_var*
begin
//#UC START# *4C56D54B002A_4E48B5AE01E3_impl*
 Result := (aID < 0) AND TypeTable.TypeByHandle[-aID].InheritsFrom(ChildTypeForFiltering);
 if Result then
  Result := f_MergeStatus = ev_msContinue;
//#UC END# *4C56D54B002A_4E48B5AE01E3_impl*
end;//TevTableFilter.NeedStartBuffering

function TevTableFilter.NeedFlushBuffer(const aLeaf: Ik2Tag;
  aTagId: Integer): Boolean;
//#UC START# *4CF7BC520161_4E48B5AE01E3_var*
//#UC END# *4CF7BC520161_4E48B5AE01E3_var*
begin
//#UC START# *4CF7BC520161_4E48B5AE01E3_impl*
 Result := not NeedStartBuffering(aTagId);
//#UC END# *4CF7BC520161_4E48B5AE01E3_impl*
end;//TevTableFilter.NeedFlushBuffer

procedure TevTableFilter.DoCloseStructure(NeedUndo: Boolean);
//#UC START# *4E45166B0156_4E48B5AE01E3_var*
//#UC END# *4E45166B0156_4E48B5AE01E3_var*
begin
//#UC START# *4E45166B0156_4E48B5AE01E3_impl*
 if CurrentType.InheritsFrom(k2_idTableCell) then
  f_MergeStatus := ev_msNone;
 inherited;
//#UC END# *4E45166B0156_4E48B5AE01E3_impl*
end;//TevTableFilter.DoCloseStructure

end.