unit InpharmMainMenu_ut_mmmMain_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Inpharm/Forms/InpharmMainMenu_ut_mmmMain_UserType.pas"
// �����: 29.12.2008 18:10
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������� ��������::Inpharm::View::Inpharm::InpharmMainMenu::ut_mmmMain
//
// ���������� ������-������: ��������� � �����
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
   { ��������� ��� ���� ����� ut_mmmMain }
  ut_mmmMainName = 'ut_mmmMain';
   { ��������� ������������� ����������������� ���� "���������� ������-������: ��������� � �����" }
  ut_mmmMain = TvcmUserType(0);
   { ���������� ������-������: ��������� � ����� }

type
  Tkw_FormUserType_ut_mmmMain = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� ut_mmmMain }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_ut_mmmMain
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_mmmMain

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_mmmMain.GetInteger: Integer;
 {-}
begin
 Result := ut_mmmMain;
end;//Tkw_FormUserType_ut_mmmMain.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_ut_mmmMain
 Tkw_FormUserType_ut_mmmMain.Register('���_�����::ut_mmmMain');
{$IfEnd} //not Admin AND not Monitorings

end.