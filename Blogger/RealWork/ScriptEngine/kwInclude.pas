unit kwInclude;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwInclude.pas"
// �����: 04.05.2011 22:02
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::IncludesAndUses::IncludesAndUsesPack::Include
//
// ����������������� �����: INCLUDE
// ������:
// {code}
// INCLUDE 'Included.script'
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
  kwIncluded,
  l3Interfaces,
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwIncludeLike.imp.pas}
 TkwInclude = class(_tfwIncludeLike_)
  {* ����������������� �����: INCLUDE
������:
[code]
 INCLUDE 'Included.script'
[code] }
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext): AnsiString; override;
 protected
 // overridden protected methods
   function AfterWordMaxCount: Cardinal; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwInclude
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3String,
  SysUtils,
  l3Types,
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

type _Instance_R_ = TkwInclude;

{$Include ..\ScriptEngine\tfwIncludeLike.imp.pas}

// start class TkwInclude

function TkwInclude.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4DC1949F00E1_var*
//#UC END# *4DB6C99F026E_4DC1949F00E1_var*
begin
//#UC START# *4DB6C99F026E_4DC1949F00E1_impl*
 Result := DisabledEndBracket(aContext);
//#UC END# *4DB6C99F026E_4DC1949F00E1_impl*
end;//TkwInclude.EndBracket

class function TkwInclude.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'INCLUDE';
end;//TkwInclude.GetWordNameForRegister

function TkwInclude.AfterWordMaxCount: Cardinal;
//#UC START# *4DB9B446039A_4DC1949F00E1_var*
//#UC END# *4DB9B446039A_4DC1949F00E1_var*
begin
//#UC START# *4DB9B446039A_4DC1949F00E1_impl*
 Result := 1;
//#UC END# *4DB9B446039A_4DC1949F00E1_impl*
end;//TkwInclude.AfterWordMaxCount

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwIncludeLike.imp.pas}
{$IfEnd} //not NoScripts

end.