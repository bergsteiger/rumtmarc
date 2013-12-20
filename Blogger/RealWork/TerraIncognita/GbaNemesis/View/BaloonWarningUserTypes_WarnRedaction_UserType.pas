unit BaloonWarningUserTypes_WarnRedaction_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_WarnRedaction_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::WarnRedaction
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
  BaloonWarningUserTypes_WarnTimeMachineOn_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { ��������� ��� ���� ����� WarnRedaction }
  WarnRedactionName = 'WarnRedaction';
   { ��������� ������������� ����������������� ���� "" }
  WarnRedaction = TvcmUserType(WarnTimeMachineOn + 1);

type
  Tkw_FormUserType_WarnRedaction = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� WarnRedaction }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_WarnRedaction
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_WarnRedaction

{$If not defined(NoScripts)}
function Tkw_FormUserType_WarnRedaction.GetInteger: Integer;
 {-}
begin
 Result := WarnRedaction;
end;//Tkw_FormUserType_WarnRedaction.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_WarnRedaction
 Tkw_FormUserType_WarnRedaction.Register('���_�����::WarnRedaction');
{$IfEnd} //not Admin AND not Monitorings

end.