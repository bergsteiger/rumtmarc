unit TurnOnTimeMachine_ut_TurnOnTimeMachine_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/TurnOnTimeMachine_ut_TurnOnTimeMachine_UserType.pas"
// �����: 05.02.2009 19:28
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������ � ���������� � ������� ����������::Document::View::Document::Document::TurnOnTimeMachine::ut_TurnOnTimeMachine
//
// TurnOnTimeMachine
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
    { ��������� ��� ���� ����� ut_TurnOnTimeMachine }
   ut_TurnOnTimeMachineName = 'ut_TurnOnTimeMachine';
    { ��������� ������������� ����������������� ���� "TurnOnTimeMachine" }
   ut_TurnOnTimeMachine = TvcmUserType(0);
    { TurnOnTimeMachine }

type
   Tkw_FormUserType_ut_TurnOnTimeMachine = class(TtfwInteger)
    {* ����� ������� ��� ���� ����� ut_TurnOnTimeMachine }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_TurnOnTimeMachine
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_TurnOnTimeMachine

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_TurnOnTimeMachine.GetInteger: Integer;
 {-}
begin
 Result := ut_TurnOnTimeMachine;
end;//Tkw_FormUserType_ut_TurnOnTimeMachine.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_ut_TurnOnTimeMachine
 Tkw_FormUserType_ut_TurnOnTimeMachine.Register('���_�����::ut_TurnOnTimeMachine');
{$IfEnd} //not Admin AND not Monitorings

end.