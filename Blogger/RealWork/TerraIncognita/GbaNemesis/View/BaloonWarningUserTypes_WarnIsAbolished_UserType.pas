unit BaloonWarningUserTypes_WarnIsAbolished_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_WarnIsAbolished_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::WarnIsAbolished
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
  BaloonWarningUserTypes_WarnPreActive_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { ��������� ��� ���� ����� WarnIsAbolished }
  WarnIsAbolishedName = 'WarnIsAbolished';
   { ��������� ������������� ����������������� ���� "" }
  WarnIsAbolished = TvcmUserType(WarnPreActive + 1);

type
  Tkw_FormUserType_WarnIsAbolished = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� WarnIsAbolished }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_WarnIsAbolished
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_WarnIsAbolished

{$If not defined(NoScripts)}
function Tkw_FormUserType_WarnIsAbolished.GetInteger: Integer;
 {-}
begin
 Result := WarnIsAbolished;
end;//Tkw_FormUserType_WarnIsAbolished.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_WarnIsAbolished
 Tkw_FormUserType_WarnIsAbolished.Register('���_�����::WarnIsAbolished');
{$IfEnd} //not Admin AND not Monitorings

end.