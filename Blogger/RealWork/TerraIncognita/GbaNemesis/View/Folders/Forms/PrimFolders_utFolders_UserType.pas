unit PrimFolders_utFolders_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Folders/Forms/PrimFolders_utFolders_UserType.pas"
// �����: 27.08.2009 20:37
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������� ����������::Folders::View::Folders::PrimFolders::utFolders
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
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� utFolders }
  utFoldersName = 'utFolders';
   { ��������� ������������� ����������������� ���� "��� ���������" }
  utFolders = TvcmUserType(0);
   { ��� ��������� }

type
  Tkw_FormUserType_utFolders = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utFolders }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utFolders
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utFolders

{$If not defined(NoScripts)}
function Tkw_FormUserType_utFolders.GetInteger: Integer;
 {-}
begin
 Result := utFolders;
end;//Tkw_FormUserType_utFolders.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utFolders
 Tkw_FormUserType_utFolders.Register('���_�����::utFolders');
{$IfEnd} //not Admin AND not Monitorings

end.