unit PrimStyleEditorContainer_utStyleEditorContainer_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/PrimStyleEditorContainer_utStyleEditorContainer_UserType.pas"
// �����: 02.10.2009 22:02
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������� ����������::Settings::View::Settings::PrimStyleEditorContainer::utStyleEditorContainer
//
// �������� ������
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
   { ��������� ��� ���� ����� utStyleEditorContainer }
  utStyleEditorContainerName = 'utStyleEditorContainer';
   { ��������� ������������� ����������������� ���� "�������� ������" }
  utStyleEditorContainer = TvcmUserType(0);
   { �������� ������ }

type
  Tkw_FormUserType_utStyleEditorContainer = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utStyleEditorContainer }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utStyleEditorContainer
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utStyleEditorContainer

{$If not defined(NoScripts)}
function Tkw_FormUserType_utStyleEditorContainer.GetInteger: Integer;
 {-}
begin
 Result := utStyleEditorContainer;
end;//Tkw_FormUserType_utStyleEditorContainer.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utStyleEditorContainer
 Tkw_FormUserType_utStyleEditorContainer.Register('���_�����::utStyleEditorContainer');
{$IfEnd} //not Admin AND not Monitorings

end.