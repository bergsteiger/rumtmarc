unit PrimMedicListSynchroView_mlsfMedicFirm_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Inpharm/Forms/PrimMedicListSynchroView_mlsfMedicFirm_UserType.pas"
// �����: 27.01.2009 13:29
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������� ��������::Inpharm::View::Inpharm::PrimMedicListSynchroView::mlsfMedicFirm
//
// ��������
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
  PrimMedicListSynchroView_mlsfDrugList_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� mlsfMedicFirm }
  mlsfMedicFirmName = 'mlsfMedicFirm';
   { ��������� ������������� ����������������� ���� "��������" }
  mlsfMedicFirm = TvcmUserType(mlsfDrugList + 1);
   { �������� }

type
  Tkw_FormUserType_mlsfMedicFirm = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� mlsfMedicFirm }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_mlsfMedicFirm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_mlsfMedicFirm

{$If not defined(NoScripts)}
function Tkw_FormUserType_mlsfMedicFirm.GetInteger: Integer;
 {-}
begin
 Result := mlsfMedicFirm;
end;//Tkw_FormUserType_mlsfMedicFirm.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_mlsfMedicFirm
 Tkw_FormUserType_mlsfMedicFirm.Register('���_�����::mlsfMedicFirm');
{$IfEnd} //not Admin AND not Monitorings

end.