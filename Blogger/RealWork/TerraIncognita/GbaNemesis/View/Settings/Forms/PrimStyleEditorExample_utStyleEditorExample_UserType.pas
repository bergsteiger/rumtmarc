unit PrimStyleEditorExample_utStyleEditorExample_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/PrimStyleEditorExample_utStyleEditorExample_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������� ����������::Settings::View::Settings::PrimStyleEditorExample::utStyleEditorExample
//
// ��������� ���� ��������� ������
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
   { ��������� ��� ���� ����� utStyleEditorExample }
  utStyleEditorExampleName = 'utStyleEditorExample';
   { ��������� ������������� ����������������� ���� "��������� ���� ��������� ������" }
  utStyleEditorExample = TvcmUserType(0);
   { ��������� ���� ��������� ������ }

type
  Tkw_FormUserType_utStyleEditorExample = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utStyleEditorExample }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utStyleEditorExample
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utStyleEditorExample

{$If not defined(NoScripts)}
function Tkw_FormUserType_utStyleEditorExample.GetInteger: Integer;
 {-}
begin
 Result := utStyleEditorExample;
end;//Tkw_FormUserType_utStyleEditorExample.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utStyleEditorExample
 Tkw_FormUserType_utStyleEditorExample.Register('���_�����::utStyleEditorExample');
{$IfEnd} //not Admin AND not Monitorings

end.