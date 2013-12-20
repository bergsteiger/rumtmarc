unit evReqRowPainter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// ������: "w:/common/components/gui/Garant/Everest/evReqRowPainter.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ParaList Painters::TevReqRowPainter
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

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
     {* �������� �������� ������� ������� ������� ����� ��� ��. }
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