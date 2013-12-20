unit kwWSTRING;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwWSTRING.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Modifiers::ModifiersPack::WSTRING
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwModifier.imp.pas}
 TkwWSTRING = {final} class(_kwModifier_)
 protected
 // realized methods
   function pm_GetModifier: TtfwWordModifier; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwWSTRING
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwWSTRING;

{$Include ..\ScriptEngine\kwModifier.imp.pas}

// start class TkwWSTRING

function TkwWSTRING.pm_GetModifier: TtfwWordModifier;
//#UC START# *4DCACED80361_4F4FE0C4031Bget_var*
//#UC END# *4DCACED80361_4F4FE0C4031Bget_var*
begin
//#UC START# *4DCACED80361_4F4FE0C4031Bget_impl*
 Result := tfw_wmWStr;
//#UC END# *4DCACED80361_4F4FE0C4031Bget_impl*
end;//TkwWSTRING.pm_GetModifier

class function TkwWSTRING.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'W-STRING';
end;//TkwWSTRING.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwModifier.imp.pas}
{$IfEnd} //not NoScripts

end.