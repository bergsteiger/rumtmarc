unit kwStringVarSplitTo;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwStringVarSplitTo.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::StringVar_SplitTo
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
 TkwStringVarSplitTo = {final} class(_tfwVarWorker_)
 protected
 // realized methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwStringVarSplitTo
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledStringVarSplitTo,
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

type _Instance_R_ = TkwStringVarSplitTo;

{$Include ..\ScriptEngine\tfwVarWorker.imp.pas}

// start class TkwStringVarSplitTo

function TkwStringVarSplitTo.CompiledVarWorkerClass: RkwCompiledVarWorker;
//#UC START# *4DCC193801F1_4F5F147301EF_var*
//#UC END# *4DCC193801F1_4F5F147301EF_var*
begin
//#UC START# *4DCC193801F1_4F5F147301EF_impl*
 Result := TkwCompiledStringVarSplitTo;
//#UC END# *4DCC193801F1_4F5F147301EF_impl*
end;//TkwStringVarSplitTo.CompiledVarWorkerClass

class function TkwStringVarSplitTo.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'string:SplitTo!';
end;//TkwStringVarSplitTo.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
{$IfEnd} //not NoScripts

end.