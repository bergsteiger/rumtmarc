unit kwCase;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCase.pas"
// �����: 29.04.2011 21:00
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCase
//
// ������ Case �� Delphi
// {code}
// CASE
// 1 ( 1 . )
// 2 ( 2 . )
// DEFAULT ( 'else' . )
// ENDCASE
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
  tfwScriptingInterfaces,
  l3Interfaces,
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}
 TkwCase = class(_tfwBeginLikeWord_)
  {* ������ Case �� Delphi
[code]
 CASE
  1 ( 1 . )
  2 ( 2 . )
  DEFAULT ( 'else' . )
 ENDCASE
[code] }
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext): AnsiString; override;
 protected
 // overridden protected methods
   function CompiledWordClass: RkwCompiledWord; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwCase
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledCase,
  l3Parser,
  kwInteger,
  kwString,
  SysUtils,
  TypInfo,
  l3Base,
  kwIntegerFactory,
  kwStringFactory,
  l3String,
  l3Chars,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwCase;

{$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}

// start class TkwCase

function TkwCase.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4DBAEE8103DB_var*
//#UC END# *4DB6C99F026E_4DBAEE8103DB_var*
begin
//#UC START# *4DB6C99F026E_4DBAEE8103DB_impl*
 Result := 'ENDCASE';
//#UC END# *4DB6C99F026E_4DBAEE8103DB_impl*
end;//TkwCase.EndBracket

class function TkwCase.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DBAEE8103DB_var*
//#UC END# *4DB0614603C8_4DBAEE8103DB_var*
begin
//#UC START# *4DB0614603C8_4DBAEE8103DB_impl*
 Result := 'CASE';
//#UC END# *4DB0614603C8_4DBAEE8103DB_impl*
end;//TkwCase.GetWordNameForRegister

function TkwCase.CompiledWordClass: RkwCompiledWord;
//#UC START# *4DBAEE0D028D_4DBAEE8103DB_var*
//#UC END# *4DBAEE0D028D_4DBAEE8103DB_var*
begin
//#UC START# *4DBAEE0D028D_4DBAEE8103DB_impl*
 Result := TkwCompiledCase;
//#UC END# *4DBAEE0D028D_4DBAEE8103DB_impl*
end;//TkwCase.CompiledWordClass

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}
{$IfEnd} //not NoScripts

end.