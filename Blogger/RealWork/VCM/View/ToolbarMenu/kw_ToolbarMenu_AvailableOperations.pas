unit kw_ToolbarMenu_AvailableOperations;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/common/components/gui/Garant/VCM/View/ToolbarMenu/kw_ToolbarMenu_AvailableOperations.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Operations::VCMCustomization::View::ToolbarMenu::Tkw_ToolbarMenu_AvailableOperations
//
// ����� ������� ��� ������ �������� ������ ToolbarMenu.AvailableOperations (��������� �������
// ��������� ��������...)
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
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  ;

type
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwModuleOperationWord.imp.pas}
 Tkw_ToolbarMenu_AvailableOperations = class(_tfwModuleOperationWord_)
  {* ����� ������� ��� ������ �������� ������ ToolbarMenu.AvailableOperations (��������� ������� ��������� ��������...) }
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//Tkw_ToolbarMenu_AvailableOperations

implementation

uses
  SysUtils
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;

type _Instance_R_ = Tkw_ToolbarMenu_AvailableOperations;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwModuleOperationWord.imp.pas}

// start class Tkw_ToolbarMenu_AvailableOperations

{$If not defined(NoScripts)}
class function Tkw_ToolbarMenu_AvailableOperations.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := '���::���������_�������_���������_��������...';
end;//Tkw_ToolbarMenu_AvailableOperations.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwModuleOperationWord.imp.pas}

end.