unit PrimFoldersInfo_utFoldersInfoContainer_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Folders/Forms/PrimFoldersInfo_utFoldersInfoContainer_UserType.pas"
// �����: 29.10.2009 19:12
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������� ����������::Folders::View::Folders::PrimFoldersInfo::utFoldersInfoContainer
//
// �������� ����� (��������� ������)
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
   { ��������� ��� ���� ����� utFoldersInfoContainer }
  utFoldersInfoContainerName = 'utFoldersInfoContainer';
   { ��������� ������������� ����������������� ���� "�������� ����� (��������� ������)" }
  utFoldersInfoContainer = TvcmUserType(0);
   { �������� ����� (��������� ������) }

type
  Tkw_FormUserType_utFoldersInfoContainer = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utFoldersInfoContainer }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utFoldersInfoContainer
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utFoldersInfoContainer

{$If not defined(NoScripts)}
function Tkw_FormUserType_utFoldersInfoContainer.GetInteger: Integer;
 {-}
begin
 Result := utFoldersInfoContainer;
end;//Tkw_FormUserType_utFoldersInfoContainer.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utFoldersInfoContainer
 Tkw_FormUserType_utFoldersInfoContainer.Register('���_�����::utFoldersInfoContainer');
{$IfEnd} //not Admin AND not Monitorings

end.