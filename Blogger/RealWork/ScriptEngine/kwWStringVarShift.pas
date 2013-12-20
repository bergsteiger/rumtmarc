unit kwWStringVarShift;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwWStringVarShift.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::WStringVar_Shift
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
 TkwWStringVarShift = {final} class(_tfwVarWorker_)
 protected
 // realized methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwWStringVarShift
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledWStringShift,
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

type _Instance_R_ = TkwWStringVarShift;

{$Include ..\ScriptEngine\tfwVarWorker.imp.pas}

// start class TkwWStringVarShift

function TkwWStringVarShift.CompiledVarWorkerClass: RkwCompiledVarWorker;
//#UC START# *4DCC193801F1_4F5098E0034E_var*
//#UC END# *4DCC193801F1_4F5098E0034E_var*
begin
//#UC START# *4DCC193801F1_4F5098E0034E_impl*
 Result := TkwCompiledWStringShift;
//#UC END# *4DCC193801F1_4F5098E0034E_impl*
end;//TkwWStringVarShift.CompiledVarWorkerClass

class function TkwWStringVarShift.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'WString:+!';
end;//TkwWStringVarShift.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
{$IfEnd} //not NoScripts

end.