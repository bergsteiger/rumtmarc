unit RememberPassword_ut_RememberPassword_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/RememberPassword_ut_RememberPassword_UserType.pas"
// �����: 24.08.2009 20:35
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Common::View::Common::PrimF1Common::RememberPassword::ut_RememberPassword
//
// RememberPassword
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
    { ��������� ��� ���� ����� ut_RememberPassword }
   ut_RememberPasswordName = 'ut_RememberPassword';
    { ��������� ������������� ����������������� ���� "RememberPassword" }
   ut_RememberPassword = TvcmUserType(0);
    { RememberPassword }

type
   Tkw_FormUserType_ut_RememberPassword = class(TtfwInteger)
    {* ����� ������� ��� ���� ����� ut_RememberPassword }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_RememberPassword
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_RememberPassword

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_RememberPassword.GetInteger: Integer;
 {-}
begin
 Result := ut_RememberPassword;
end;//Tkw_FormUserType_ut_RememberPassword.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_ut_RememberPassword
 Tkw_FormUserType_ut_RememberPassword.Register('���_�����::ut_RememberPassword');
{$IfEnd} //not Admin AND not Monitorings

end.