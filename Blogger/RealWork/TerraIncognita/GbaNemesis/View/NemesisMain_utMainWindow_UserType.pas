unit NemesisMain_utMainWindow_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/NemesisMain_utMainWindow_UserType.pas"
// �����: 29.12.2008 16:25
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������� ��� �����������::F1 Without Usecases::View::PrimNemesis::NemesisMain::utMainWindow
//
// ������� ����
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
   { ��������� ��� ���� ����� utMainWindow }
  utMainWindowName = 'utMainWindow';
   { ��������� ������������� ����������������� ���� "������� ����" }
  utMainWindow = TvcmUserType(0);
   { ������� ���� }

type
  Tkw_FormUserType_utMainWindow = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utMainWindow }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utMainWindow
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utMainWindow

{$If not defined(NoScripts)}
function Tkw_FormUserType_utMainWindow.GetInteger: Integer;
 {-}
begin
 Result := utMainWindow;
end;//Tkw_FormUserType_utMainWindow.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utMainWindow
 Tkw_FormUserType_utMainWindow.Register('���_�����::utMainWindow');
{$IfEnd} //not Admin AND not Monitorings

end.