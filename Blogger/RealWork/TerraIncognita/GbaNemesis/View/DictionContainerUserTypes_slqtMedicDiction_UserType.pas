unit DictionContainerUserTypes_slqtMedicDiction_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DictionContainerUserTypes_slqtMedicDiction_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������� ��������::DictionLike::View::DictionLikeForms::DictionContainerUserTypes::slqtMedicDiction
//
// ������� ����������� ��������
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
  DictionContainerUserTypes_slqtDiction_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� slqtMedicDiction }
  slqtMedicDictionName = 'slqtMedicDiction';
   { ��������� ������������� ����������������� ���� "������� ����������� ��������" }
  slqtMedicDiction = TvcmUserType(slqtDiction + 1);
   { ������� ����������� �������� }

type
  Tkw_FormUserType_slqtMedicDiction = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� slqtMedicDiction }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_slqtMedicDiction
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_slqtMedicDiction

{$If not defined(NoScripts)}
function Tkw_FormUserType_slqtMedicDiction.GetInteger: Integer;
 {-}
begin
 Result := slqtMedicDiction;
end;//Tkw_FormUserType_slqtMedicDiction.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_slqtMedicDiction
 Tkw_FormUserType_slqtMedicDiction.Register('���_�����::slqtMedicDiction');
{$IfEnd} //not Admin AND not Monitorings

end.