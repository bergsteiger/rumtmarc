unit BaloonWarningUserTypes_remUnreadConsultations_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_remUnreadConsultations_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::remUnreadConsultations
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
  BaloonWarningUserTypes_remTimeMachineWarning_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { ��������� ��� ���� ����� remUnreadConsultations }
  remUnreadConsultationsName = 'remUnreadConsultations';
   { ��������� ������������� ����������������� ���� "" }
  remUnreadConsultations = TvcmUserType(remTimeMachineWarning + 1);

type
  Tkw_FormUserType_remUnreadConsultations = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� remUnreadConsultations }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_remUnreadConsultations
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_remUnreadConsultations

{$If not defined(NoScripts)}
function Tkw_FormUserType_remUnreadConsultations.GetInteger: Integer;
 {-}
begin
 Result := remUnreadConsultations;
end;//Tkw_FormUserType_remUnreadConsultations.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_remUnreadConsultations
 Tkw_FormUserType_remUnreadConsultations.Register('���_�����::remUnreadConsultations');
{$IfEnd} //not Admin AND not Monitorings

end.