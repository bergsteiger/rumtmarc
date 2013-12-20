unit BaloonWarningUserTypes_WarnTimeMachineOn_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_WarnTimeMachineOn_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::WarnTimeMachineOn
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  BaloonWarningUserTypes_WarnInactualDocument_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { ��������� ��� ���� ����� WarnTimeMachineOn }
  WarnTimeMachineOnName = 'WarnTimeMachineOn';
   { ��������� ������������� ����������������� ���� "" }
  WarnTimeMachineOn = TvcmUserType(WarnInactualDocument + 1);

type
  Tkw_FormUserType_WarnTimeMachineOn = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� WarnTimeMachineOn }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_WarnTimeMachineOn
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_WarnTimeMachineOn

{$If not defined(NoScripts)}
function Tkw_FormUserType_WarnTimeMachineOn.GetInteger: Integer;
 {-}
begin
 Result := WarnTimeMachineOn;
end;//Tkw_FormUserType_WarnTimeMachineOn.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_WarnTimeMachineOn
 Tkw_FormUserType_WarnTimeMachineOn.Register('���_�����::WarnTimeMachineOn');
{$IfEnd} //not Admin AND not Monitorings

end.