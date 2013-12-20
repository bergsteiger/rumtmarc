unit DocumentUserTypes_dftDrug_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftDrug_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftDrug
//
// �������� ���������
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
  DocumentUserTypes_dftAutoreferat_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� dftDrug }
  dftDrugName = 'dftDrug';
   { ��������� ������������� ����������������� ���� "�������� ���������" }
  dftDrug = TvcmUserType(dftAutoreferat + 1);
   { �������� ��������� }

type
  Tkw_FormUserType_dftDrug = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftDrug }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftDrug
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftDrug

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftDrug.GetInteger: Integer;
 {-}
begin
 Result := dftDrug;
end;//Tkw_FormUserType_dftDrug.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftDrug
 Tkw_FormUserType_dftDrug.Register('���_�����::dftDrug');
{$IfEnd} //not Admin AND not Monitorings

end.