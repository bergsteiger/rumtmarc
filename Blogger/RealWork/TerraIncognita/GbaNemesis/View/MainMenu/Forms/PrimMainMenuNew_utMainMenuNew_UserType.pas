unit PrimMainMenuNew_utMainMenuNew_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/MainMenu/Forms/PrimMainMenuNew_utMainMenuNew_UserType.pas"
// �����: 29.12.2008 17:43
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������������ ��������::MainMenu::View::MainMenu::PrimMainMenuNew::utMainMenuNew
//
// �������� ����
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
   { ��������� ��� ���� ����� utMainMenuNew }
  utMainMenuNewName = 'utMainMenuNew';
   { ��������� ������������� ����������������� ���� "�������� ����" }
  utMainMenuNew = TvcmUserType(0);
   { �������� ���� }

type
  Tkw_FormUserType_utMainMenuNew = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utMainMenuNew }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utMainMenuNew
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utMainMenuNew

{$If not defined(NoScripts)}
function Tkw_FormUserType_utMainMenuNew.GetInteger: Integer;
 {-}
begin
 Result := utMainMenuNew;
end;//Tkw_FormUserType_utMainMenuNew.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utMainMenuNew
 Tkw_FormUserType_utMainMenuNew.Register('���_�����::utMainMenuNew');
{$IfEnd} //not Admin AND not Monitorings

end.