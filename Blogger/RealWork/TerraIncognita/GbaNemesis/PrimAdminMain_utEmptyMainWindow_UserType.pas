unit PrimAdminMain_utEmptyMainWindow_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/PrimAdminMain_utEmptyMainWindow_UserType.pas"
// �����: 07.09.2009 18:30
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������������::Admin$Shell::AdminApp::PrimAdminMain::utEmptyMainWindow
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

{$If defined(Admin)}
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
   { ��������� ��� ���� ����� utEmptyMainWindow }
  utEmptyMainWindowName = 'utEmptyMainWindow';
   { ��������� ������������� ����������������� ���� "������� ����" }
  utEmptyMainWindow = TvcmUserType(0);
   { ������� ���� }

type
  Tkw_FormUserType_utEmptyMainWindow = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utEmptyMainWindow }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utEmptyMainWindow
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
// start class Tkw_FormUserType_utEmptyMainWindow

{$If not defined(NoScripts)}
function Tkw_FormUserType_utEmptyMainWindow.GetInteger: Integer;
 {-}
begin
 Result := utEmptyMainWindow;
end;//Tkw_FormUserType_utEmptyMainWindow.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// ����������� Tkw_FormUserType_utEmptyMainWindow
 Tkw_FormUserType_utEmptyMainWindow.Register('���_�����::utEmptyMainWindow');
{$IfEnd} //Admin

end.