unit PrimPostingsList_MyPostingList_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Monitorings/Forms/PrimPostingsList_MyPostingList_UserType.pas"
// �����: 15.09.2009 18:14
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������� �����::NewsLineTuning::View::Monitorings::PrimPostingsList::MyPostingList
//
// �����. ��� ��������� �����
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Monitorings) AND not defined(Admin)}
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
   { ��������� ��� ���� ����� MyPostingList }
  MyPostingListName = 'MyPostingList';
   { ��������� ������������� ����������������� ���� "�����. ��� ��������� �����" }
  MyPostingList = TvcmUserType(0);
   { �����. ��� ��������� ����� }

type
  Tkw_FormUserType_MyPostingList = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� MyPostingList }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_MyPostingList
{$IfEnd} //Monitorings AND not Admin

implementation

{$If defined(Monitorings) AND not defined(Admin)}
// start class Tkw_FormUserType_MyPostingList

{$If not defined(NoScripts)}
function Tkw_FormUserType_MyPostingList.GetInteger: Integer;
 {-}
begin
 Result := MyPostingList;
end;//Tkw_FormUserType_MyPostingList.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //Monitorings AND not Admin

initialization
{$If defined(Monitorings) AND not defined(Admin)}
// ����������� Tkw_FormUserType_MyPostingList
 Tkw_FormUserType_MyPostingList.Register('���_�����::MyPostingList');
{$IfEnd} //Monitorings AND not Admin

end.