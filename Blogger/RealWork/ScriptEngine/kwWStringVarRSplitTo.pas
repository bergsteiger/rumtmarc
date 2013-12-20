unit kwWStringVarRSplitTo;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwWStringVarRSplitTo.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::WString_VarRSplitTo
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
 TkwWStringVarRSplitTo = {final} class(_tfwVarWorker_)
 protected
 // realized methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwWStringVarRSplitTo
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledWStringVarRSplitTo,
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

type _Instance_R_ = TkwWStringVarRSplitTo;

{$Include ..\ScriptEngine\tfwVarWorker.imp.pas}

// start class TkwWStringVarRSplitTo

function TkwWStringVarRSplitTo.CompiledVarWorkerClass: RkwCompiledVarWorker;
//#UC START# *4DCC193801F1_4F62D6FF01BC_var*
//#UC END# *4DCC193801F1_4F62D6FF01BC_var*
begin
//#UC START# *4DCC193801F1_4F62D6FF01BC_impl*
 Result := TkwCompiledWStringVarRSplitTo;
//#UC END# *4DCC193801F1_4F62D6FF01BC_impl*
end;//TkwWStringVarRSplitTo.CompiledVarWorkerClass

class function TkwWStringVarRSplitTo.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'WString:RSplitTo!';
end;//TkwWStringVarRSplitTo.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
{$IfEnd} //not NoScripts

end.