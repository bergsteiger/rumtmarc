unit DocumentUserTypes_dftMedicFirm_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftMedicFirm_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftMedicFirm
//
// �������� �����
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
  DocumentUserTypes_dftDrug_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� dftMedicFirm }
  dftMedicFirmName = 'dftMedicFirm';
   { ��������� ������������� ����������������� ���� "�������� �����" }
  dftMedicFirm = TvcmUserType(dftDrug + 1);
   { �������� ����� }

type
  Tkw_FormUserType_dftMedicFirm = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftMedicFirm }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftMedicFirm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftMedicFirm

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftMedicFirm.GetInteger: Integer;
 {-}
begin
 Result := dftMedicFirm;
end;//Tkw_FormUserType_dftMedicFirm.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftMedicFirm
 Tkw_FormUserType_dftMedicFirm.Register('���_�����::dftMedicFirm');
{$IfEnd} //not Admin AND not Monitorings

end.