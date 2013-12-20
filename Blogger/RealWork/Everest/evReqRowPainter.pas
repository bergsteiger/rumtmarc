unit evReqRowPainter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/evReqRowPainter.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ParaList Painters::TevReqRowPainter
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evTableRowPainter
  ;

type
 TevReqRowPainter = class(TevTableRowPainter)
 protected
 // overridden protected methods
   procedure CorrectRowHeightByTopSpace(var aDelta: Integer); override;
     {* Добавить величину отступа верхней границы блока для КЗ. }
 end;//TevReqRowPainter

implementation

// start class TevReqRowPainter

procedure TevReqRowPainter.CorrectRowHeightByTopSpace(var aDelta: Integer);
//#UC START# *50D3F47002CA_50D3F54E00A8_var*
//#UC END# *50D3F47002CA_50D3F54E00A8_var*
begin
//#UC START# *50D3F47002CA_50D3F54E00A8_impl*
 if not Area.rCanvas.IsVirtual and ParentPainter.DrawingTopmostChild then
  Inc(aDelta, FormatInfo.ParentInfo.ParentInfo.Spacing.Top + FormatInfo.ParentInfo.Spacing.Top);
//#UC END# *50D3F47002CA_50D3F54E00A8_impl*
end;//TevReqRowPainter.CorrectRowHeightByTopSpace

end.