unit TurnOffTimeMachine_ut_TurnOffTimeMachine_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/TurnOffTimeMachine_ut_TurnOffTimeMachine_UserType.pas"
// �����: 24.08.2009 20:35
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Common::View::Common::PrimF1Common::TurnOffTimeMachine::ut_TurnOffTimeMachine
//
// TurnOffTimeMachine
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
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
    { ��������� ��� ���� ����� ut_TurnOffTimeMachine }
   ut_TurnOffTimeMachineName = 'ut_TurnOffTimeMachine';
    { ��������� ������������� ����������������� ���� "TurnOffTimeMachine" }
   ut_TurnOffTimeMachine = TvcmUserType(0);
    { TurnOffTimeMachine }

type
   Tkw_FormUserType_ut_TurnOffTimeMachine = class(TtfwInteger)
    {* ����� ������� ��� ���� ����� ut_TurnOffTimeMachine }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_TurnOffTimeMachine
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_TurnOffTimeMachine

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_TurnOffTimeMachine.GetInteger: Integer;
 {-}
begin
 Result := ut_TurnOffTimeMachine;
end;//Tkw_FormUserType_ut_TurnOffTimeMachine.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_ut_TurnOffTimeMachine
 Tkw_FormUserType_ut_TurnOffTimeMachine.Register('���_�����::ut_TurnOffTimeMachine');
{$IfEnd} //not Admin AND not Monitorings

end.