unit PrimFoldersTree_utSaveOpen_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Folders/Forms/PrimFoldersTree_utSaveOpen_UserType.pas"
// �����: 26.01.2009 18:19
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������� ����������::Folders::View::Folders::PrimFoldersTree::utSaveOpen
//
// ��� ���������
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
  PrimFoldersTree_utFoldersTree_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� utSaveOpen }
  utSaveOpenName = 'utSaveOpen';
   { ��������� ������������� ����������������� ���� "��� ���������" }
  utSaveOpen = TvcmUserType(utFoldersTree + 1);
   { ��� ��������� }

type
  Tkw_FormUserType_utSaveOpen = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utSaveOpen }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utSaveOpen
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utSaveOpen

{$If not defined(NoScripts)}
function Tkw_FormUserType_utSaveOpen.GetInteger: Integer;
 {-}
begin
 Result := utSaveOpen;
end;//Tkw_FormUserType_utSaveOpen.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utSaveOpen
 Tkw_FormUserType_utSaveOpen.Register('���_�����::utSaveOpen');
{$IfEnd} //not Admin AND not Monitorings

end.