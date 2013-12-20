unit kwWStringVarSplitTo;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwWStringVarSplitTo.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::WStringVar_SplitTo
//
// ��������� ������ �� ��������� ����������� �� ���. ���� ����� �� ����, ������ � ����������
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
 TkwWStringVarSplitTo = {final} class(_tfwVarWorker_)
  {* ��������� ������ �� ��������� ����������� �� ���. ���� ����� �� ����, ������ � ���������� }
 protected
 // realized methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwWStringVarSplitTo
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledWStringVarSplitTo,
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

type _Instance_R_ = TkwWStringVarSplitTo;

{$Include ..\ScriptEngine\tfwVarWorker.imp.pas}

// start class TkwWStringVarSplitTo

function TkwWStringVarSplitTo.CompiledVarWorkerClass: RkwCompiledVarWorker;
//#UC START# *4DCC193801F1_4F5613530240_var*
//#UC END# *4DCC193801F1_4F5613530240_var*
begin
//#UC START# *4DCC193801F1_4F5613530240_impl*
 Result := TkwCompiledWStringVarSplitTo;
//#UC END# *4DCC193801F1_4F5613530240_impl*
end;//TkwWStringVarSplitTo.CompiledVarWorkerClass

class function TkwWStringVarSplitTo.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'WString:SplitTo!';
end;//TkwWStringVarSplitTo.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
{$IfEnd} //not NoScripts

end.