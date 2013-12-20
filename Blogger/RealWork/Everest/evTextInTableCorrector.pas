unit evTextInTableCorrector;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/evTextInTableCorrector.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Generators::TevTextInTableCorrector
//
// Вычищает всякую "кривизну" из текста в таблицах: стиль "обычный", отрицательные отступы, рамки
// вокруг текста.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2TagFilter,
  k2Types
  ;

type
 TevTextInTableCorrector = class(Tk2TagFilter)
  {* Вычищает всякую "кривизну" из текста в таблицах: стиль "обычный", отрицательные отступы, рамки вокруг текста. }
 private
 // private fields
   f_NeedCheckStyle : Boolean;
   f_InCell : Boolean;
   f_WasStyle : Boolean;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure InitFields; override;
   procedure DoStartChild(TypeID: Integer); override;
   procedure DoAddAtomEx(AtomIndex: Integer;
    const Value: Tk2Variant); override;
   procedure DoCloseStructure(NeedUndo: Boolean); override;
 end;//TevTextInTableCorrector

implementation

uses
  TableCell_Const,
  TextPara_Const,
  k2Tags,
  evdStyles
  ;

// start class TevTextInTableCorrector

procedure TevTextInTableCorrector.Cleanup;
//#UC START# *479731C50290_502B789B03CA_var*
//#UC END# *479731C50290_502B789B03CA_var*
begin
//#UC START# *479731C50290_502B789B03CA_impl*
 f_NeedCheckStyle := False;
 f_InCell := False;
 f_WasStyle := False;
 inherited;
//#UC END# *479731C50290_502B789B03CA_impl*
end;//TevTextInTableCorrector.Cleanup

procedure TevTextInTableCorrector.InitFields;
//#UC START# *47A042E100E2_502B789B03CA_var*
//#UC END# *47A042E100E2_502B789B03CA_var*
begin
//#UC START# *47A042E100E2_502B789B03CA_impl*
 inherited;
 f_NeedCheckStyle := False;
 f_WasStyle := False;
 f_InCell := False;
//#UC END# *47A042E100E2_502B789B03CA_impl*
end;//TevTextInTableCorrector.InitFields

procedure TevTextInTableCorrector.DoStartChild(TypeID: Integer);
//#UC START# *4A2D1217037A_502B789B03CA_var*
//#UC END# *4A2D1217037A_502B789B03CA_var*
begin
//#UC START# *4A2D1217037A_502B789B03CA_impl*
 if CurrentType.InheritsFrom(k2_idTableCell) then
  f_InCell := True;
 if f_InCell and (TypeID = k2_idTextPara) then
  f_NeedCheckStyle := True;
 inherited DoStartChild(TypeID);
//#UC END# *4A2D1217037A_502B789B03CA_impl*
end;//TevTextInTableCorrector.DoStartChild

procedure TevTextInTableCorrector.DoAddAtomEx(AtomIndex: Integer;
  const Value: Tk2Variant);
//#UC START# *4A2D1634025B_502B789B03CA_var*
const cnMaxIndent = 1000;
var
 l_NewValue: Tk2Variant;
//#UC END# *4A2D1634025B_502B789B03CA_var*
begin
//#UC START# *4A2D1634025B_502B789B03CA_impl*
 if f_NeedCheckStyle then
  case AtomIndex of
   k2_tiFrame: Exit;
   k2_tiStyle: if (Value.AsInteger = ev_saTxtNormalANSI) then
               begin
                l_NewValue.Kind := k2_vkInteger;
                l_NewValue.AsInteger := ev_saNormalTable;
                f_WasStyle := True;
                inherited DoAddAtomEx(AtomIndex, l_NewValue);
                Exit;
               end // if Value.AsInteger = ev_saTxtNormalANSI then
               else
                f_WasStyle := True;
   k2_tiLeftIndent: if Value.AsInteger < 0 then Exit;
  end;
 if (AtomIndex = k2_tiRightIndent) and (Abs(Value.AsInteger) > cnMaxIndent) then Exit;
 inherited;
//#UC END# *4A2D1634025B_502B789B03CA_impl*
end;//TevTextInTableCorrector.DoAddAtomEx

procedure TevTextInTableCorrector.DoCloseStructure(NeedUndo: Boolean);
//#UC START# *4E45166B0156_502B789B03CA_var*
//#UC END# *4E45166B0156_502B789B03CA_var*
begin
//#UC START# *4E45166B0156_502B789B03CA_impl*
 if CurrentType.InheritsFrom(k2_idTextPara) then
  if f_NeedCheckStyle and not f_WasStyle then
   Generator.AddIntegerAtom(k2_tiStyle, ev_saNormalTable);
 if CurrentType.InheritsFrom(k2_idTableCell) then
 begin
  f_InCell := False;
  f_WasStyle := False;
  f_NeedCheckStyle := False;
 end; // if CurrentType.InheritsFrom(k2_idTableCell) then
 inherited;
//#UC END# *4E45166B0156_502B789B03CA_impl*
end;//TevTextInTableCorrector.DoCloseStructure

end.