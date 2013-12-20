unit evControlParaHotSpotTester;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/evControlParaHotSpotTester.pas"
// �����: 12.11.2004 15:46
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::HotSpots::TevControlParaHotSpotTester
//
// ������, ������� ���������� ���� �������� (����� ������ WM_NCHITTEST)
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evTextParaHotSpotTester,
  nevTools,
  nevGUIInterfaces
  ;

type
 TevControlParaHotSpotTester = class(TevTextParaHotSpotTester)
  {* ������, ������� ���������� ���� �������� (����� ������ WM_NCHITTEST) }
 protected
 // overridden protected methods
   function GetSegmentClass: RevSegmentClass; override;
   function DoGetAdvancedHotSpot(const aView: InevControlView;
    const aState: TevCursorState;
    const aPt: InevBasePoint;
    const aMap: InevMap;
    out theSpot: IevHotSpot): Boolean; override;
 end;//TevControlParaHotSpotTester

implementation

uses
  evControlParaHotSpot,
  evControlSegmentHotSpot
  ;

// start class TevControlParaHotSpotTester

function TevControlParaHotSpotTester.GetSegmentClass: RevSegmentClass;
//#UC START# *4A26B035006A_4A27A8C70359_var*
//#UC END# *4A26B035006A_4A27A8C70359_var*
begin
//#UC START# *4A26B035006A_4A27A8C70359_impl*
 Result := TevControlSegmentHotSpot;
//#UC END# *4A26B035006A_4A27A8C70359_impl*
end;//TevControlParaHotSpotTester.GetSegmentClass

function TevControlParaHotSpotTester.DoGetAdvancedHotSpot(const aView: InevControlView;
  const aState: TevCursorState;
  const aPt: InevBasePoint;
  const aMap: InevMap;
  out theSpot: IevHotSpot): Boolean;
//#UC START# *4A26B4EB02EB_4A27A8C70359_var*
//#UC END# *4A26B4EB02EB_4A27A8C70359_var*
begin
//#UC START# *4A26B4EB02EB_4A27A8C70359_impl*
 Result := inherited DoGetAdvancedHotSpot(aView, aState, aPt, aMap, theSpot);
 if not Result then
 begin
  // - ������ ������ �� ������, � �������� ���������� - ����� �����������
  //   ������� ���� ������� ������� �������.
  Result := true;
  theSpot := TevControlParaHotSpot.Make(aMap, GetRedirect^);
 end;//not Result
//#UC END# *4A26B4EB02EB_4A27A8C70359_impl*
end;//TevControlParaHotSpotTester.DoGetAdvancedHotSpot

end.