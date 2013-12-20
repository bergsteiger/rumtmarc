unit ListUserTypes_lftProducedDrugs_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftProducedDrugs_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftProducedDrugs
//
// ����������� ���������
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
  ListUserTypes_lftDrugInternationalNameSynonyms_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� lftProducedDrugs }
  lftProducedDrugsName = 'lftProducedDrugs';
   { ��������� ������������� ����������������� ���� "����������� ���������" }
  lftProducedDrugs = TvcmUserType(lftDrugInternationalNameSynonyms + 1);
   { ����������� ��������� }

type
  Tkw_FormUserType_lftProducedDrugs = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� lftProducedDrugs }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftProducedDrugs
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftProducedDrugs

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftProducedDrugs.GetInteger: Integer;
 {-}
begin
 Result := lftProducedDrugs;
end;//Tkw_FormUserType_lftProducedDrugs.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_lftProducedDrugs
 Tkw_FormUserType_lftProducedDrugs.Register('���_�����::lftProducedDrugs');
{$IfEnd} //not Admin AND not Monitorings

end.