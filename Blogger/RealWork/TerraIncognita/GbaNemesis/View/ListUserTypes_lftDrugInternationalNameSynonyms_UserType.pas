unit ListUserTypes_lftDrugInternationalNameSynonyms_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftDrugInternationalNameSynonyms_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftDrugInternationalNameSynonyms
//
// �������� �� �������������� ��������
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
  ListUserTypes_lftDrugList_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� lftDrugInternationalNameSynonyms }
  lftDrugInternationalNameSynonymsName = 'lftDrugInternationalNameSynonyms';
   { ��������� ������������� ����������������� ���� "�������� �� �������������� ��������" }
  lftDrugInternationalNameSynonyms = TvcmUserType(lftDrugList + 1);
   { �������� �� �������������� �������� }

type
  Tkw_FormUserType_lftDrugInternationalNameSynonyms = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� lftDrugInternationalNameSynonyms }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftDrugInternationalNameSynonyms
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftDrugInternationalNameSynonyms

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftDrugInternationalNameSynonyms.GetInteger: Integer;
 {-}
begin
 Result := lftDrugInternationalNameSynonyms;
end;//Tkw_FormUserType_lftDrugInternationalNameSynonyms.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_lftDrugInternationalNameSynonyms
 Tkw_FormUserType_lftDrugInternationalNameSynonyms.Register('���_�����::lftDrugInternationalNameSynonyms');
{$IfEnd} //not Admin AND not Monitorings

end.