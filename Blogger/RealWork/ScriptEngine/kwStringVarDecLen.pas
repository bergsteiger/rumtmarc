unit kwStringVarDecLen;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwStringVarDecLen.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::StringVar_DecLen
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
 TkwStringVarDecLen = {final} class(_tfwVarWorker_)
 protected
 // realized methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwStringVarDecLen
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledStringVarDecLen,
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

type _Instance_R_ = TkwStringVarDecLen;

{$Include ..\ScriptEngine\tfwVarWorker.imp.pas}

// start class TkwStringVarDecLen

function TkwStringVarDecLen.CompiledVarWorkerClass: RkwCompiledVarWorker;
//#UC START# *4DCC193801F1_4F5F01820031_var*
//#UC END# *4DCC193801F1_4F5F01820031_var*
begin
//#UC START# *4DCC193801F1_4F5F01820031_impl*
 Result := TkwCompiledStringVarDecLen;
//#UC END# *4DCC193801F1_4F5F01820031_impl*
end;//TkwStringVarDecLen.CompiledVarWorkerClass

class function TkwStringVarDecLen.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'string:--Len!';
end;//TkwStringVarDecLen.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
{$IfEnd} //not NoScripts

end.