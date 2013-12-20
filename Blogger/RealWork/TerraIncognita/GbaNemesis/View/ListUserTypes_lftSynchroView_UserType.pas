unit ListUserTypes_lftSynchroView_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftSynchroView_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftSynchroView
//
// ���������� �������� (������ �� ���������, ������ �� ��������)
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
  ListUserTypes_lftCorrespondent_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� lftSynchroView }
  lftSynchroViewName = 'lftSynchroView';
   { ��������� ������������� ����������������� ���� "���������� �������� (������ �� ���������, ������ �� ��������)" }
  lftSynchroView = TvcmUserType(lftCorrespondent + 1);
   { ���������� �������� (������ �� ���������, ������ �� ��������) }

type
  Tkw_FormUserType_lftSynchroView = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� lftSynchroView }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftSynchroView
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftSynchroView

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftSynchroView.GetInteger: Integer;
 {-}
begin
 Result := lftSynchroView;
end;//Tkw_FormUserType_lftSynchroView.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_lftSynchroView
 Tkw_FormUserType_lftSynchroView.Register('���_�����::lftSynchroView');
{$IfEnd} //not Admin AND not Monitorings

end.