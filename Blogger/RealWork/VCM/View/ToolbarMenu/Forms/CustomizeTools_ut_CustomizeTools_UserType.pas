unit CustomizeTools_ut_CustomizeTools_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/VCM/View/ToolbarMenu/Forms/CustomizeTools_ut_CustomizeTools_UserType.pas"
// �����: 13.09.2010 19:27
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> Shared Delphi Operations::VCMCustomization::View::ToolbarMenu::PrimToolbarMenu::CustomizeTools::ut_CustomizeTools
//
// CustomizeTools
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

interface

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
    { ��������� ��� ���� ����� ut_CustomizeTools }
   ut_CustomizeToolsName = 'ut_CustomizeTools';
    { ��������� ������������� ����������������� ���� "CustomizeTools" }
   ut_CustomizeTools = TvcmUserType(0);
    { CustomizeTools }

type
   Tkw_FormUserType_ut_CustomizeTools = class(TtfwInteger)
    {* ����� ������� ��� ���� ����� ut_CustomizeTools }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_CustomizeTools

implementation

// start class Tkw_FormUserType_ut_CustomizeTools

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_CustomizeTools.GetInteger: Integer;
 {-}
begin
 Result := ut_CustomizeTools;
end;//Tkw_FormUserType_ut_CustomizeTools.GetInteger
{$IfEnd} //not NoScripts

initialization
// ����������� Tkw_FormUserType_ut_CustomizeTools
 Tkw_FormUserType_ut_CustomizeTools.Register('���_�����::ut_CustomizeTools');

end.