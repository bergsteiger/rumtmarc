unit RegistrationForm_ut_RegistrationForm_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/RegistrationForm_ut_RegistrationForm_UserType.pas"
// �����: 24.08.2009 20:35
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Common::View::Common::PrimF1Common::RegistrationForm::ut_RegistrationForm
//
// RegistrationForm
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
    { ��������� ��� ���� ����� ut_RegistrationForm }
   ut_RegistrationFormName = 'ut_RegistrationForm';
    { ��������� ������������� ����������������� ���� "RegistrationForm" }
   ut_RegistrationForm = TvcmUserType(0);
    { RegistrationForm }

type
   Tkw_FormUserType_ut_RegistrationForm = class(TtfwInteger)
    {* ����� ������� ��� ���� ����� ut_RegistrationForm }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_RegistrationForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_RegistrationForm

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_RegistrationForm.GetInteger: Integer;
 {-}
begin
 Result := ut_RegistrationForm;
end;//Tkw_FormUserType_ut_RegistrationForm.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_ut_RegistrationForm
 Tkw_FormUserType_ut_RegistrationForm.Register('���_�����::ut_RegistrationForm');
{$IfEnd} //not Admin AND not Monitorings

end.