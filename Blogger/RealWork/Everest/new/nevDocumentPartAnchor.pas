unit nevDocumentPartAnchor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// ������: "w:/common/components/gui/Garant/Everest/new/nevDocumentPartAnchor.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Anchors::TnevDocumentPartAnchor
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\new\nevDefine.inc}

interface

uses
  nevParaListAnchor
  ;

type
 TnevDocumentPartAnchor = class(TnevParaListAnchor)
 protected
 // overridden protected methods
   procedure CheckInner; override;
 end;//TnevDocumentPartAnchor

implementation

uses
  k2Tags
  ;

// start class TnevDocumentPartAnchor

procedure TnevDocumentPartAnchor.CheckInner;
//#UC START# *4A58C42A029C_4ED8C0B600A4_var*
//#UC END# *4A58C42A029C_4ED8C0B600A4_var*
begin
//#UC START# *4A58C42A029C_4ED8C0B600A4_impl*
 if not ParaX.BoolA[k2_tiCollapsed] then
  inherited CheckInner;
//#UC END# *4A58C42A029C_4ED8C0B600A4_impl*
end;//TnevDocumentPartAnchor.CheckInner

end.