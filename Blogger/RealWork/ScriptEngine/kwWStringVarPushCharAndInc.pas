unit kwWStringVarPushCharAndInc;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwWStringVarPushCharAndInc.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::WStringVarPushCharAndInc
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
 TkwWStringVarPushCharAndInc = {final} class(_tfwVarWorker_)
 protected
 // realized methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwWStringVarPushCharAndInc
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledWStringVarPushCharAndInc,
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

type _Instance_R_ = TkwWStringVarPushCharAndInc;

{$Include ..\ScriptEngine\tfwVarWorker.imp.pas}

// start class TkwWStringVarPushCharAndInc

function TkwWStringVarPushCharAndInc.CompiledVarWorkerClass: RkwCompiledVarWorker;
//#UC START# *4DCC193801F1_4F509C6901C6_var*
//#UC END# *4DCC193801F1_4F509C6901C6_var*
begin
//#UC START# *4DCC193801F1_4F509C6901C6_impl*
 Result := TkwCompiledWStringVarPushCharAndInc;
//#UC END# *4DCC193801F1_4F509C6901C6_impl*
end;//TkwWStringVarPushCharAndInc.CompiledVarWorkerClass

class function TkwWStringVarPushCharAndInc.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'WString:[]++!';
end;//TkwWStringVarPushCharAndInc.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
{$IfEnd} //not NoScripts

end.