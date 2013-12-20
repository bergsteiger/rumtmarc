unit nsWindowsList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "UserInteraction"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/VCM/UserInteraction/nsWindowsList.pas"
// �����: 19.10.2009 15:46
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Operations::OfficeLike::UserInteraction::WindowsListSupport::TnsWindowsList
//
// ����� ����������� ������� ����
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

interface

uses
  nsWindowsListPrim
  ;

type
 TnsWindowsList = class(TnsWindowsListPrim)
  {* ����� ����������� ������� ���� }
 public
 // singleton factory method
   class function Instance: TnsWindowsList;
    {- ���������� ��������� ����������. }
 end;//TnsWindowsList

implementation

uses
  l3Base {a}
  ;


// start class TnsWindowsList

var g_TnsWindowsList : TnsWindowsList = nil;

procedure TnsWindowsListFree;
begin
 l3Free(g_TnsWindowsList);
end;

class function TnsWindowsList.Instance: TnsWindowsList;
begin
 if (g_TnsWindowsList = nil) then
 begin
  l3System.AddExitProc(TnsWindowsListFree);
  g_TnsWindowsList := Create;
 end;
 Result := g_TnsWindowsList;
end;


end.