unit PrimRubricator_utRubricatorList_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Rubricator/Forms/PrimRubricator_utRubricatorList_UserType.pas"
// �����: 08.09.2009 20:56
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������� ����������::Rubricator::View::Rubricator::PrimRubricator::utRubricatorList
//
// �������� ��������� (�������� �������������)
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
   { ��������� ��� ���� ����� utRubricatorList }
  utRubricatorListName = 'utRubricatorList';
   { ��������� ������������� ����������������� ���� "�������� ��������� (�������� �������������)" }
  utRubricatorList = TvcmUserType(0);
   { �������� ��������� (�������� �������������) }

type
  Tkw_FormUserType_utRubricatorList = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utRubricatorList }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utRubricatorList
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utRubricatorList

{$If not defined(NoScripts)}
function Tkw_FormUserType_utRubricatorList.GetInteger: Integer;
 {-}
begin
 Result := utRubricatorList;
end;//Tkw_FormUserType_utRubricatorList.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utRubricatorList
 Tkw_FormUserType_utRubricatorList.Register('���_�����::utRubricatorList');
{$IfEnd} //not Admin AND not Monitorings

end.