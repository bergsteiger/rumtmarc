unit CustomizeTasksPanel_ut_CustomizeTasksPanel_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/VCM/View/TasksPanel/Forms/CustomizeTasksPanel_ut_CustomizeTasksPanel_UserType.pas"
// �����: 13.09.2010 20:12
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> Shared Delphi Operations::VCMCustomization::View::TasksPanel::PrimTasksPanelMenu::CustomizeTasksPanel::ut_CustomizeTasksPanel
//
// CustomizeTasksPanel
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

interface

uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
    { ��������� ��� ���� ����� ut_CustomizeTasksPanel }
   ut_CustomizeTasksPanelName = 'ut_CustomizeTasksPanel';
    { ��������� ������������� ����������������� ���� "CustomizeTasksPanel" }
   ut_CustomizeTasksPanel = TvcmUserType(0);
    { CustomizeTasksPanel }

type
   Tkw_FormUserType_ut_CustomizeTasksPanel = class(TtfwInteger)
    {* ����� ������� ��� ���� ����� ut_CustomizeTasksPanel }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_CustomizeTasksPanel

implementation

// start class Tkw_FormUserType_ut_CustomizeTasksPanel

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_CustomizeTasksPanel.GetInteger: Integer;
 {-}
begin
 Result := ut_CustomizeTasksPanel;
end;//Tkw_FormUserType_ut_CustomizeTasksPanel.GetInteger
{$IfEnd} //not NoScripts

initialization
// ����������� Tkw_FormUserType_ut_CustomizeTasksPanel
 Tkw_FormUserType_ut_CustomizeTasksPanel.Register('���_�����::ut_CustomizeTasksPanel');

end.