unit PrimTasksPanel_tpMain_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/PrimTasksPanel_tpMain_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Common::View::Common::PrimTasksPanel::tpMain
//
// ������ �����
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
   { ��������� ��� ���� ����� tpMain }
  tpMainName = 'tpMain';
   { ��������� ������������� ����������������� ���� "������ �����" }
  tpMain = TvcmUserType(0);
   { ������ ����� }

type
  Tkw_FormUserType_tpMain = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� tpMain }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_tpMain
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_tpMain

{$If not defined(NoScripts)}
function Tkw_FormUserType_tpMain.GetInteger: Integer;
 {-}
begin
 Result := tpMain;
end;//Tkw_FormUserType_tpMain.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_tpMain
 Tkw_FormUserType_tpMain.Register('���_�����::tpMain');
{$IfEnd} //not Admin AND not Monitorings

end.