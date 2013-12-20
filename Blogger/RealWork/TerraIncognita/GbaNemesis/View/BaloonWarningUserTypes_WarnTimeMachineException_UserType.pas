unit BaloonWarningUserTypes_WarnTimeMachineException_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_WarnTimeMachineException_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::WarnTimeMachineException
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
  BaloonWarningUserTypes_WarnTimeMachineWarning_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { ��������� ��� ���� ����� WarnTimeMachineException }
  WarnTimeMachineExceptionName = 'WarnTimeMachineException';
   { ��������� ������������� ����������������� ���� "" }
  WarnTimeMachineException = TvcmUserType(WarnTimeMachineWarning + 1);

type
  Tkw_FormUserType_WarnTimeMachineException = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� WarnTimeMachineException }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_WarnTimeMachineException
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_WarnTimeMachineException

{$If not defined(NoScripts)}
function Tkw_FormUserType_WarnTimeMachineException.GetInteger: Integer;
 {-}
begin
 Result := WarnTimeMachineException;
end;//Tkw_FormUserType_WarnTimeMachineException.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_WarnTimeMachineException
 Tkw_FormUserType_WarnTimeMachineException.Register('���_�����::WarnTimeMachineException');
{$IfEnd} //not Admin AND not Monitorings

end.