unit kwNewWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwNewWord.pas"
// �����: 26.04.2011 17:31
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::WordsDefinition::NewWord
//
// ����������� ����� ����. ������:
// {code}
// : Hello
// 3 FOR
// 'Hello' .
// NEXT
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
 TkwNewWord = class(_tfwStandardProcedure_)
  {* ����������� ����� ����. ������: 
[code]
: Hello
 3 FOR
  'Hello' .
 NEXT
;
[code] }
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwNewWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  kwCompiledProcedure,
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

type _Instance_R_ = TkwNewWord;

{$Include ..\ScriptEngine\tfwStandardProcedure.imp.pas}

// start class TkwNewWord

class function TkwNewWord.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := ':';
end;//TkwNewWord.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwStandardProcedure.imp.pas}
{$IfEnd} //not NoScripts

end.