unit PrimFoldersTree_utFoldersTree_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Folders/Forms/PrimFoldersTree_utFoldersTree_UserType.pas"
// �����: 26.01.2009 18:19
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������� ����������::Folders::View::Folders::PrimFoldersTree::utFoldersTree
//
// ��� ��������� (�������)
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
   { ��������� ��� ���� ����� utFoldersTree }
  utFoldersTreeName = 'utFoldersTree';
   { ��������� ������������� ����������������� ���� "��� ��������� (�������)" }
  utFoldersTree = TvcmUserType(0);
   { ��� ��������� (�������) }

type
  Tkw_FormUserType_utFoldersTree = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utFoldersTree }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utFoldersTree
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utFoldersTree

{$If not defined(NoScripts)}
function Tkw_FormUserType_utFoldersTree.GetInteger: Integer;
 {-}
begin
 Result := utFoldersTree;
end;//Tkw_FormUserType_utFoldersTree.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utFoldersTree
 Tkw_FormUserType_utFoldersTree.Register('���_�����::utFoldersTree');
{$IfEnd} //not Admin AND not Monitorings

end.