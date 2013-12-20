unit kwProcedure;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwProcedure.pas"
// �����: 04.05.2011 12:24
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwProcedure
//
// ��������� ����������� ��������� � ����� �������:
// {code}
// PROCEDURE Choice
// 
// BEGIN
// CASE
// 1 ( 1 . )
// 2 ( 2 . )
// DEFAULT ( 'else' . )
// ENDCASE
// END
// ;
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
 {$Include ..\ScriptEngine\tfwStandardProcedure.imp.pas}
 TkwProcedure = class(_tfwStandardProcedure_)
  {* ��������� ����������� ��������� � ����� �������:
[code]
PROCEDURE Choice

BEGIN
 CASE
  1 ( 1 . )
  2 ( 2 . )
  DEFAULT ( 'else' . )
 ENDCASE
END
;
[code] }
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwProcedure
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledProcedure,
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

type _Instance_R_ = TkwProcedure;

{$Include ..\ScriptEngine\tfwStandardProcedure.imp.pas}

// start class TkwProcedure

class function TkwProcedure.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DBFBB930070_var*
//#UC END# *4DB0614603C8_4DBFBB930070_var*
begin
//#UC START# *4DB0614603C8_4DBFBB930070_impl*
 Result := 'PROCEDURE';
//#UC END# *4DB0614603C8_4DBFBB930070_impl*
end;//TkwProcedure.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwStandardProcedure.imp.pas}
{$IfEnd} //not NoScripts

end.