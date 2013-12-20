unit kwVar;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwVar.pas"
// �����: 29.04.2011 22:36
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwVar
//
// ���������� ����������.
// ������:
// {code}
// VAR l_Text
// 'Text' >>> l_Text
// l_Text .
// {code}
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
  l3Interfaces,
  tfwScriptingInterfaces,
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwVar.imp.pas}
 TkwVar = class(_tfwVar_)
  {* ���������� ����������. 
������: 
[code]
 VAR l_Text 
 'Text' >>> l_Text
 l_Text .
[code] }
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwVar
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledVar,
  SysUtils,
  l3String,
  l3Parser,
  kwInteger,
  kwString,
  TypInfo,
  l3Base,
  kwIntegerFactory,
  kwStringFactory,
  l3Chars,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwVar;

{$Include ..\ScriptEngine\tfwVar.imp.pas}

// start class TkwVar

class function TkwVar.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DBB051901E4_var*
//#UC END# *4DB0614603C8_4DBB051901E4_var*
begin
//#UC START# *4DB0614603C8_4DBB051901E4_impl*
 Result := 'VAR';
//#UC END# *4DB0614603C8_4DBB051901E4_impl*
end;//TkwVar.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVar.imp.pas}
{$IfEnd} //not NoScripts

end.