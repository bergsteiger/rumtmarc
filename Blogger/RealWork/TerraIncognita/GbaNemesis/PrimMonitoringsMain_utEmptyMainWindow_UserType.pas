unit PrimMonitoringsMain_utEmptyMainWindow_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/PrimMonitoringsMain_utEmptyMainWindow_UserType.pas"
// �����: 10.09.2009 19:19
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������� �����::Monitoring::Monitorings::PrimMonitoringsMain::utEmptyMainWindow
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

{$If defined(Monitorings) AND not defined(Admin)}
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
{$IfEnd} //Monitorings AND not Admin

implementation

{$If defined(Monitorings) AND not defined(Admin)}
// start class Tkw_FormUserType_utEmptyMainWindow

{$If not defined(NoScripts)}
function Tkw_FormUserType_utEmptyMainWindow.GetInteger: Integer;
 {-}
begin
 Result := utEmptyMainWindow;
end;//Tkw_FormUserType_utEmptyMainWindow.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //Monitorings AND not Admin

initialization
{$If defined(Monitorings) AND not defined(Admin)}
// ����������� Tkw_FormUserType_utEmptyMainWindow
 Tkw_FormUserType_utEmptyMainWindow.Register('���_�����::utEmptyMainWindow');
{$IfEnd} //Monitorings AND not Admin

end.