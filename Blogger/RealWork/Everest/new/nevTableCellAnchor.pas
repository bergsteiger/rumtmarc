unit nevTableCellAnchor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ������ �.�.
// ������: "w:/common/components/gui/Garant/Everest/new/nevTableCellAnchor.pas"
// �����: 2009/04/28 09:56:30
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Anchors::TnevTableCellAnchor
//
// ����� ��� ������ �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\new\nevDefine.inc}

interface

uses
  nevParaListAnchor,
  nevTools,
  nevParaListAnchorModifyTypes
  ;

type
 TnevTableCellAnchor = class(TnevParaListAnchor)
  {* ����� ��� ������ ������� }
 protected
 // overridden property methods
   function pm_GetHasInner: Boolean; override;
 protected
 // overridden protected methods
   function DoIncLine(const aView: InevView;
    var theLine: Integer;
    aSmall: Boolean;
    const aChildrenInfo: TnevChildrenInfo): Integer; override;
 end;//TnevTableCellAnchor

implementation

uses
  evdTypes,
  k2Tags
  ;

// start class TnevTableCellAnchor

function TnevTableCellAnchor.pm_GetHasInner: Boolean;
//#UC START# *4A58BA550111_4A5D82380323get_var*
//#UC END# *4A58BA550111_4A5D82380323get_var*
begin
//#UC START# *4A58BA550111_4A5D82380323get_impl*
 Result := TevMergeStatus(IntA[k2_tiMergeStatus]) <> ev_msContinue;
 if Result then
  Result := inherited pm_GetHasInner;
//#UC END# *4A58BA550111_4A5D82380323get_impl*
end;//TnevTableCellAnchor.pm_GetHasInner

function TnevTableCellAnchor.DoIncLine(const aView: InevView;
  var theLine: Integer;
  aSmall: Boolean;
  const aChildrenInfo: TnevChildrenInfo): Integer;
//#UC START# *4B1D18650208_4A5D82380323_var*
//#UC END# *4B1D18650208_4A5D82380323_var*
begin
//#UC START# *4B1D18650208_4A5D82380323_impl*
 if TevMergeStatus(IntA[k2_tiMergeStatus]) = ev_msContinue then
 begin
  // ���� �� ������� �� ������!
  Result := 0;
  Assert(false);
 end
 else
  Result := inherited DoIncLine(aView, theLine, aSmall, aChildrenInfo);
//#UC END# *4B1D18650208_4A5D82380323_impl*
end;//TnevTableCellAnchor.DoIncLine

end.