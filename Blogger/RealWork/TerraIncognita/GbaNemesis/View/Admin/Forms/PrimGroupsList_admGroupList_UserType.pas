unit PrimGroupsList_admGroupList_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimGroupsList_admGroupList_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������������::Admin::View::Admin::PrimGroupsList::admGroupList
//
// ������ �������������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Admin)}
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
   { ��������� ��� ���� ����� admGroupList }
  admGroupListName = 'admGroupList';
   { ��������� ������������� ����������������� ���� "������ �������������" }
  admGroupList = TvcmUserType(0);
   { ������ ������������� }

type
  Tkw_FormUserType_admGroupList = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� admGroupList }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_admGroupList
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
// start class Tkw_FormUserType_admGroupList

{$If not defined(NoScripts)}
function Tkw_FormUserType_admGroupList.GetInteger: Integer;
 {-}
begin
 Result := admGroupList;
end;//Tkw_FormUserType_admGroupList.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// ����������� Tkw_FormUserType_admGroupList
 Tkw_FormUserType_admGroupList.Register('���_�����::admGroupList');
{$IfEnd} //Admin

end.