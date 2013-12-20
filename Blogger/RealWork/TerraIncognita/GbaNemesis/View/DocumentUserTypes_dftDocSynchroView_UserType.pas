unit DocumentUserTypes_dftDocSynchroView_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftDocSynchroView_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftDocSynchroView
//
// ����� ��������� (���������� ��������)
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
  DocumentUserTypes_dftRelatedDoc_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� dftDocSynchroView }
  dftDocSynchroViewName = 'dftDocSynchroView';
   { ��������� ������������� ����������������� ���� "����� ��������� (���������� ��������)" }
  dftDocSynchroView = TvcmUserType(dftRelatedDoc + 1);
   { ����� ��������� (���������� ��������) }

type
  Tkw_FormUserType_dftDocSynchroView = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftDocSynchroView }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftDocSynchroView
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftDocSynchroView

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftDocSynchroView.GetInteger: Integer;
 {-}
begin
 Result := dftDocSynchroView;
end;//Tkw_FormUserType_dftDocSynchroView.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftDocSynchroView
 Tkw_FormUserType_dftDocSynchroView.Register('���_�����::dftDocSynchroView');
{$IfEnd} //not Admin AND not Monitorings

end.