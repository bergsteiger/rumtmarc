unit FromWithPanel_ut_FromWithPanel_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Forms"
// �����: ������ �.�.
// ������: "w:/common/components/gui/Garant/Daily/Forms/FromWithPanel_ut_FromWithPanel_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> Shared Delphi Operations For Tests::TestForms::Forms::FormWithPanel::FromWithPanel::ut_FromWithPanel
//
// FromWithPanel
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

interface

{$If defined(nsTest) AND not defined(NoVCM)}
uses
  vcmUserControls
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� ut_FromWithPanel }
  ut_FromWithPanelName = 'ut_FromWithPanel';
   { ��������� ������������� ����������������� ���� "FromWithPanel" }
  ut_FromWithPanel = TvcmUserType(0);
   { FromWithPanel }

type
  Tkw_FormUserType_ut_FromWithPanel = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� ut_FromWithPanel }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_ut_FromWithPanel
{$IfEnd} //nsTest AND not NoVCM

implementation

{$If defined(nsTest) AND not defined(NoVCM)}
// start class Tkw_FormUserType_ut_FromWithPanel

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_FromWithPanel.GetInteger: Integer;
 {-}
begin
 Result := ut_FromWithPanel;
end;//Tkw_FormUserType_ut_FromWithPanel.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_FormUserType_ut_FromWithPanel
 Tkw_FormUserType_ut_FromWithPanel.Register('���_�����::ut_FromWithPanel');
{$IfEnd} //nsTest AND not NoVCM

end.