unit PrimLeftEdition_utLeftEdition_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Editions/Forms/PrimLeftEdition_utLeftEdition_UserType.pas"
// �����: 27.07.2009 11:43
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������������� �������::CompareEditions::View::Editions::PrimLeftEdition::utLeftEdition
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
   { ��������� ��� ���� ����� utLeftEdition }
  utLeftEditionName = 'utLeftEdition';
   { ��������� ������������� ����������������� ���� "���������� ��������" }
  utLeftEdition = TvcmUserType(0);
   { ���������� �������� }

type
  Tkw_FormUserType_utLeftEdition = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utLeftEdition }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utLeftEdition
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utLeftEdition

{$If not defined(NoScripts)}
function Tkw_FormUserType_utLeftEdition.GetInteger: Integer;
 {-}
begin
 Result := utLeftEdition;
end;//Tkw_FormUserType_utLeftEdition.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utLeftEdition
 Tkw_FormUserType_utLeftEdition.Register('���_�����::utLeftEdition');
{$IfEnd} //not Admin AND not Monitorings

end.