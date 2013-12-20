unit kwStringModifier;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwStringModifier.pas"
// �����: 11.05.2011 21:51
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Modifiers::StringModifier
//
// ��������� �����������.
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
 TkwStringModifier = class(_kwModifier_)
  {* ��������� �����������. }
 protected
 // realized methods
   function pm_GetModifier: TtfwWordModifier; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwStringModifier
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwStringModifier;

{$Include ..\ScriptEngine\kwModifier.imp.pas}

// start class TkwStringModifier

function TkwStringModifier.pm_GetModifier: TtfwWordModifier;
//#UC START# *4DCACED80361_4DCACDE302EFget_var*
//#UC END# *4DCACED80361_4DCACDE302EFget_var*
begin
//#UC START# *4DCACED80361_4DCACDE302EFget_impl*
 Result := tfw_wmStr;
//#UC END# *4DCACED80361_4DCACDE302EFget_impl*
end;//TkwStringModifier.pm_GetModifier

class function TkwStringModifier.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'STRING';
end;//TkwStringModifier.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwModifier.imp.pas}
{$IfEnd} //not NoScripts

end.