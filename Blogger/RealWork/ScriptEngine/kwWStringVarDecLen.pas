unit kwWStringVarDecLen;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwWStringVarDecLen.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::WStringVar_DecLen
//
// ��������� ����� ������ �� ���� ������
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
  kwCompiledVarWorker,
  tfwScriptingInterfaces,
  l3Interfaces,
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
 TkwWStringVarDecLen = {final} class(_tfwVarWorker_)
  {* ��������� ����� ������ �� ���� ������ }
 protected
 // realized methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwWStringVarDecLen
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledWStringVarDecLen,
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

type _Instance_R_ = TkwWStringVarDecLen;

{$Include ..\ScriptEngine\tfwVarWorker.imp.pas}

// start class TkwWStringVarDecLen

function TkwWStringVarDecLen.CompiledVarWorkerClass: RkwCompiledVarWorker;
//#UC START# *4DCC193801F1_4F55E9E40211_var*
//#UC END# *4DCC193801F1_4F55E9E40211_var*
begin
//#UC START# *4DCC193801F1_4F55E9E40211_impl*
 Result := TkwCompiledWStringVarDecLen;
//#UC END# *4DCC193801F1_4F55E9E40211_impl*
end;//TkwWStringVarDecLen.CompiledVarWorkerClass

class function TkwWStringVarDecLen.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'WString:--Len!';
end;//TkwWStringVarDecLen.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
{$IfEnd} //not NoScripts

end.