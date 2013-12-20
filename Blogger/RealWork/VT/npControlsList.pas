unit npControlsList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "VT"
// ������: "w:/common/components/gui/Garant/VT/npControlsList.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VT::vtNavigator::TnpControlsList
//
// ������ ����������� �� �����, �� ������� ���� ����������� ����������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\VT\vtDefine.inc}

interface

uses
  npControlsListPrim
  ;

type
 TnpControlsList = class(TnpControlsListPrim)
  {* ������ ����������� �� �����, �� ������� ���� ����������� ����������. }
 public
 // singleton factory method
   class function Instance: TnpControlsList;
    {- ���������� ��������� ����������. }
 end;//TnpControlsList

implementation

uses
  l3Base {a}
  ;


// start class TnpControlsList

var g_TnpControlsList : TnpControlsList = nil;

procedure TnpControlsListFree;
begin
 l3Free(g_TnpControlsList);
end;

class function TnpControlsList.Instance: TnpControlsList;
begin
 if (g_TnpControlsList = nil) then
 begin
  l3System.AddExitProc(TnpControlsListFree);
  g_TnpControlsList := Create;
 end;
 Result := g_TnpControlsList;
end;


end.