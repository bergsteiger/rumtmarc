unit BaloonWarningUserTypes_remTimeMachineWarning_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_remTimeMachineWarning_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::remTimeMachineWarning
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
  BaloonWarningUserTypes_remListFiltered_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { ��������� ��� ���� ����� remTimeMachineWarning }
  remTimeMachineWarningName = 'remTimeMachineWarning';
   { ��������� ������������� ����������������� ���� "" }
  remTimeMachineWarning = TvcmUserType(remListFiltered + 1);

type
  Tkw_FormUserType_remTimeMachineWarning = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� remTimeMachineWarning }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_remTimeMachineWarning
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_remTimeMachineWarning

{$If not defined(NoScripts)}
function Tkw_FormUserType_remTimeMachineWarning.GetInteger: Integer;
 {-}
begin
 Result := remTimeMachineWarning;
end;//Tkw_FormUserType_remTimeMachineWarning.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_remTimeMachineWarning
 Tkw_FormUserType_remTimeMachineWarning.Register('���_�����::remTimeMachineWarning');
{$IfEnd} //not Admin AND not Monitorings

end.