unit PrimUserList_admUserList_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ������ �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimUserList_admUserList_UserType.pas"
// �����: 15.08.2005 19.00
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������������::Admin::View::Admin::PrimUserList::admUserList
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
   { ��������� ��� ���� ����� admUserList }
  admUserListName = 'admUserList';
   { ��������� ������������� ����������������� ���� "������ �������������" }
  admUserList = TvcmUserType(0);
   { ������ ������������� }

type
  Tkw_FormUserType_admUserList = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� admUserList }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_admUserList
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
// start class Tkw_FormUserType_admUserList

{$If not defined(NoScripts)}
function Tkw_FormUserType_admUserList.GetInteger: Integer;
 {-}
begin
 Result := admUserList;
end;//Tkw_FormUserType_admUserList.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// ����������� Tkw_FormUserType_admUserList
 Tkw_FormUserType_admUserList.Register('���_�����::admUserList');
{$IfEnd} //Admin

end.