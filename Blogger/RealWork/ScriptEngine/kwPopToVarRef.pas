unit kwPopToVarRef;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopToVarRef.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwPopToVarRef
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
 TkwPopToVarRef = class(_tfwVarWorker_)
 protected
 // realized methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopToVarRef
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledPopToVarRef,
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

type _Instance_R_ = TkwPopToVarRef;

{$Include ..\ScriptEngine\tfwVarWorker.imp.pas}

// start class TkwPopToVarRef

function TkwPopToVarRef.CompiledVarWorkerClass: RkwCompiledVarWorker;
//#UC START# *4DCC193801F1_4F2269B20227_var*
//#UC END# *4DCC193801F1_4F2269B20227_var*
begin
//#UC START# *4DCC193801F1_4F2269B20227_impl*
 Result := TkwCompiledPopToVarRef;
//#UC END# *4DCC193801F1_4F2269B20227_impl*
end;//TkwPopToVarRef.CompiledVarWorkerClass

class function TkwPopToVarRef.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4F2269B20227_var*
//#UC END# *4DB0614603C8_4F2269B20227_var*
begin
//#UC START# *4DB0614603C8_4F2269B20227_impl*
 Result := '>>>^';
//#UC END# *4DB0614603C8_4F2269B20227_impl*
end;//TkwPopToVarRef.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
{$IfEnd} //not NoScripts

end.