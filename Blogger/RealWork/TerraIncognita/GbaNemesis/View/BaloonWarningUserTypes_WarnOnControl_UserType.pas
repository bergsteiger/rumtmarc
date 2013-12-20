unit BaloonWarningUserTypes_WarnOnControl_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_WarnOnControl_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::WarnOnControl
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
  BaloonWarningUserTypes_WarnIsAbolished_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { ��������� ��� ���� ����� WarnOnControl }
  WarnOnControlName = 'WarnOnControl';
   { ��������� ������������� ����������������� ���� "" }
  WarnOnControl = TvcmUserType(WarnIsAbolished + 1);

type
  Tkw_FormUserType_WarnOnControl = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� WarnOnControl }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_WarnOnControl
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_WarnOnControl

{$If not defined(NoScripts)}
function Tkw_FormUserType_WarnOnControl.GetInteger: Integer;
 {-}
begin
 Result := WarnOnControl;
end;//Tkw_FormUserType_WarnOnControl.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_WarnOnControl
 Tkw_FormUserType_WarnOnControl.Register('���_�����::WarnOnControl');
{$IfEnd} //not Admin AND not Monitorings

end.