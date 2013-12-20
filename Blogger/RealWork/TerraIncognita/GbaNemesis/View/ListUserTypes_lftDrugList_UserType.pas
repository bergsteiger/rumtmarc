unit ListUserTypes_lftDrugList_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftDrugList_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftDrugList
//
// ������ ����������
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
  ListUserTypes_lftUserCRList2_SynchorForm_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� lftDrugList }
  lftDrugListName = 'lftDrugList';
   { ��������� ������������� ����������������� ���� "������ ����������" }
  lftDrugList = TvcmUserType(lftUserCRList2_SynchorForm + 1);
   { ������ ���������� }

type
  Tkw_FormUserType_lftDrugList = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� lftDrugList }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftDrugList
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftDrugList

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftDrugList.GetInteger: Integer;
 {-}
begin
 Result := lftDrugList;
end;//Tkw_FormUserType_lftDrugList.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_lftDrugList
 Tkw_FormUserType_lftDrugList.Register('���_�����::lftDrugList');
{$IfEnd} //not Admin AND not Monitorings

end.