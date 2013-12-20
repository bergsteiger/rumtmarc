unit ListUserTypes_lftProducedDrugsSynchroForm_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftProducedDrugsSynchroForm_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftProducedDrugsSynchroForm
//
// ���������� �������� (����������� ���������)
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
  ListUserTypes_lftProducedDrugs_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� lftProducedDrugsSynchroForm }
  lftProducedDrugsSynchroFormName = 'lftProducedDrugsSynchroForm';
   { ��������� ������������� ����������������� ���� "���������� �������� (����������� ���������)" }
  lftProducedDrugsSynchroForm = TvcmUserType(lftProducedDrugs + 1);
   { ���������� �������� (����������� ���������) }

type
  Tkw_FormUserType_lftProducedDrugsSynchroForm = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� lftProducedDrugsSynchroForm }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftProducedDrugsSynchroForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftProducedDrugsSynchroForm

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftProducedDrugsSynchroForm.GetInteger: Integer;
 {-}
begin
 Result := lftProducedDrugsSynchroForm;
end;//Tkw_FormUserType_lftProducedDrugsSynchroForm.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_lftProducedDrugsSynchroForm
 Tkw_FormUserType_lftProducedDrugsSynchroForm.Register('���_�����::lftProducedDrugsSynchroForm');
{$IfEnd} //not Admin AND not Monitorings

end.