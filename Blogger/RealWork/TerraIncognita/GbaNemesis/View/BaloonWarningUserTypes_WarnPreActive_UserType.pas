unit BaloonWarningUserTypes_WarnPreActive_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_WarnPreActive_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::WarnPreActive
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
  BaloonWarningUserTypes_WarnJuror_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { ��������� ��� ���� ����� WarnPreActive }
  WarnPreActiveName = 'WarnPreActive';
   { ��������� ������������� ����������������� ���� "" }
  WarnPreActive = TvcmUserType(WarnJuror + 1);

type
  Tkw_FormUserType_WarnPreActive = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� WarnPreActive }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_WarnPreActive
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_WarnPreActive

{$If not defined(NoScripts)}
function Tkw_FormUserType_WarnPreActive.GetInteger: Integer;
 {-}
begin
 Result := WarnPreActive;
end;//Tkw_FormUserType_WarnPreActive.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_WarnPreActive
 Tkw_FormUserType_WarnPreActive.Register('���_�����::WarnPreActive');
{$IfEnd} //not Admin AND not Monitorings

end.