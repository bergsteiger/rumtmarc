unit DocumentUserTypes_dftMedicFirmSynchroView_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftMedicFirmSynchroView_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftMedicFirmSynchroView
//
// �������� ����� (���������� ��������)
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
  DocumentUserTypes_dftMedicFirm_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� dftMedicFirmSynchroView }
  dftMedicFirmSynchroViewName = 'dftMedicFirmSynchroView';
   { ��������� ������������� ����������������� ���� "�������� ����� (���������� ��������)" }
  dftMedicFirmSynchroView = TvcmUserType(dftMedicFirm + 1);
   { �������� ����� (���������� ��������) }

type
  Tkw_FormUserType_dftMedicFirmSynchroView = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftMedicFirmSynchroView }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftMedicFirmSynchroView
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftMedicFirmSynchroView

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftMedicFirmSynchroView.GetInteger: Integer;
 {-}
begin
 Result := dftMedicFirmSynchroView;
end;//Tkw_FormUserType_dftMedicFirmSynchroView.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftMedicFirmSynchroView
 Tkw_FormUserType_dftMedicFirmSynchroView.Register('���_�����::dftMedicFirmSynchroView');
{$IfEnd} //not Admin AND not Monitorings

end.