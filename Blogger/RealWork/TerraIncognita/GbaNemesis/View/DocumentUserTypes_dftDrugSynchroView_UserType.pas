unit DocumentUserTypes_dftDrugSynchroView_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftDrugSynchroView_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftDrugSynchroView
//
// �������� ��������� (���������� ��������)
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
  DocumentUserTypes_dftMedicFirmSynchroView_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� dftDrugSynchroView }
  dftDrugSynchroViewName = 'dftDrugSynchroView';
   { ��������� ������������� ����������������� ���� "�������� ��������� (���������� ��������)" }
  dftDrugSynchroView = TvcmUserType(dftMedicFirmSynchroView + 1);
   { �������� ��������� (���������� ��������) }

type
  Tkw_FormUserType_dftDrugSynchroView = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftDrugSynchroView }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftDrugSynchroView
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftDrugSynchroView

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftDrugSynchroView.GetInteger: Integer;
 {-}
begin
 Result := dftDrugSynchroView;
end;//Tkw_FormUserType_dftDrugSynchroView.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftDrugSynchroView
 Tkw_FormUserType_dftDrugSynchroView.Register('���_�����::dftDrugSynchroView');
{$IfEnd} //not Admin AND not Monitorings

end.