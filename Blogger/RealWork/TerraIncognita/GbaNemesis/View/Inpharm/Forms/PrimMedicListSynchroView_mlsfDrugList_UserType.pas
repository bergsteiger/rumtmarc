unit PrimMedicListSynchroView_mlsfDrugList_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Inpharm/Forms/PrimMedicListSynchroView_mlsfDrugList_UserType.pas"
// �����: 27.01.2009 13:29
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������� ��������::Inpharm::View::Inpharm::PrimMedicListSynchroView::mlsfDrugList
//
// ���������� ��������
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
   { ��������� ��� ���� ����� mlsfDrugList }
  mlsfDrugListName = 'mlsfDrugList';
   { ��������� ������������� ����������������� ���� "���������� ��������" }
  mlsfDrugList = TvcmUserType(0);
   { ���������� �������� }

type
  Tkw_FormUserType_mlsfDrugList = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� mlsfDrugList }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_mlsfDrugList
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_mlsfDrugList

{$If not defined(NoScripts)}
function Tkw_FormUserType_mlsfDrugList.GetInteger: Integer;
 {-}
begin
 Result := mlsfDrugList;
end;//Tkw_FormUserType_mlsfDrugList.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_mlsfDrugList
 Tkw_FormUserType_mlsfDrugList.Register('���_�����::mlsfDrugList');
{$IfEnd} //not Admin AND not Monitorings

end.