unit About_ut_About_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/About_ut_About_UserType.pas"
// �����: 24.08.2009 20:35
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Common::View::Common::PrimF1Common::About::ut_About
//
// � ���������
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
    { ��������� ��� ���� ����� ut_About }
   ut_AboutName = 'ut_About';
    { ��������� ������������� ����������������� ���� "� ���������" }
   ut_About = TvcmUserType(0);
    { � ��������� }

type
   Tkw_FormUserType_ut_About = class(TtfwInteger)
    {* ����� ������� ��� ���� ����� ut_About }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_About
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_About

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_About.GetInteger: Integer;
 {-}
begin
 Result := ut_About;
end;//Tkw_FormUserType_ut_About.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_ut_About
 Tkw_FormUserType_ut_About.Register('���_�����::ut_About');
{$IfEnd} //not Admin AND not Monitorings

end.