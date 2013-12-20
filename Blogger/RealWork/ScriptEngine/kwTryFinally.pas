unit kwTryFinally;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwTryFinally.pas"
// �����: 29.04.2011 18:04
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwTryFinally
//
// ������ ������ try finally Delphi
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
  kwCompiledWord,
  kwDualCompiledWordContainer,
  l3Interfaces,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwDualWord.imp.pas}
 TkwTryFinally = class(_tfwDualWord_)
  {* ������ ������ try finally Delphi }
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext): AnsiString; override;
   function MedianBracket: AnsiString; override;
   function MakeDualCompiled(const aContext: TtfwContext;
     aCompiled: TkwCompiledWord;
     aCompiled2: TkwCompiledWord;
     aMedianNum: Integer): TkwDualCompiledWordContainer; override;
   function MedianBracket2: AnsiString; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwTryFinally
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledTryFinally,
  kwCompiledTryExcept,
  SysUtils,
  l3Parser,
  kwInteger,
  kwString,
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

type _Instance_R_ = TkwTryFinally;

{$Include ..\ScriptEngine\tfwDualWord.imp.pas}

// start class TkwTryFinally

function TkwTryFinally.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4DBAC542005F_var*
//#UC END# *4DB6C99F026E_4DBAC542005F_var*
begin
//#UC START# *4DB6C99F026E_4DBAC542005F_impl*
 Result := 'END';
//#UC END# *4DB6C99F026E_4DBAC542005F_impl*
end;//TkwTryFinally.EndBracket

function TkwTryFinally.MedianBracket: AnsiString;
//#UC START# *4DBAC41301F2_4DBAC542005F_var*
//#UC END# *4DBAC41301F2_4DBAC542005F_var*
begin
//#UC START# *4DBAC41301F2_4DBAC542005F_impl*
 Result := 'FINALLY';
//#UC END# *4DBAC41301F2_4DBAC542005F_impl*
end;//TkwTryFinally.MedianBracket

function TkwTryFinally.MakeDualCompiled(const aContext: TtfwContext;
  aCompiled: TkwCompiledWord;
  aCompiled2: TkwCompiledWord;
  aMedianNum: Integer): TkwDualCompiledWordContainer;
//#UC START# *4DBAC44D02CC_4DBAC542005F_var*
//#UC END# *4DBAC44D02CC_4DBAC542005F_var*
begin
//#UC START# *4DBAC44D02CC_4DBAC542005F_impl*
 Case aMedianNum of
  1:
   Result := TkwCompiledTryFinally.Create(aCompiled, aCompiled2);
  2:
   Result := TkwCompiledTryExcept.Create(aCompiled, aCompiled2);
  else
  begin
   Result := nil;
   CompilerAssert(false, '����������� ������� ������', aContext);
  end;//else
 end;//Case aMedianNum
//#UC END# *4DBAC44D02CC_4DBAC542005F_impl*
end;//TkwTryFinally.MakeDualCompiled

function TkwTryFinally.MedianBracket2: AnsiString;
//#UC START# *4DBADF3E02CC_4DBAC542005F_var*
//#UC END# *4DBADF3E02CC_4DBAC542005F_var*
begin
//#UC START# *4DBADF3E02CC_4DBAC542005F_impl*
 Result := 'EXCEPT';
//#UC END# *4DBADF3E02CC_4DBAC542005F_impl*
end;//TkwTryFinally.MedianBracket2

class function TkwTryFinally.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DBAC542005F_var*
//#UC END# *4DB0614603C8_4DBAC542005F_var*
begin
//#UC START# *4DB0614603C8_4DBAC542005F_impl*
 Result := 'TRY';
//#UC END# *4DB0614603C8_4DBAC542005F_impl*
end;//TkwTryFinally.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwDualWord.imp.pas}
{$IfEnd} //not NoScripts

end.