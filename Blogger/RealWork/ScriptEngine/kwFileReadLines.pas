unit kwFileReadLines;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwFileReadLines.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::FileProcessing::file_ReadLines
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
  kwCompiledWord,
  kwCompiledWordWorker,
  l3Interfaces,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
 TkwFileReadLines = {final} class(_tfwWordWorker_)
 protected
 // realized methods
   function CompiledWorkerClass: RkwCompiledWordWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwFileReadLines
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledFileReadLines,
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

type _Instance_R_ = TkwFileReadLines;

{$Include ..\ScriptEngine\tfwWordWorker.imp.pas}

// start class TkwFileReadLines

function TkwFileReadLines.CompiledWorkerClass: RkwCompiledWordWorker;
//#UC START# *4DCBD67C0362_4F5087FD03E5_var*
//#UC END# *4DCBD67C0362_4F5087FD03E5_var*
begin
//#UC START# *4DCBD67C0362_4F5087FD03E5_impl*
 Result := TkwCompiledFileReadLines;
//#UC END# *4DCBD67C0362_4F5087FD03E5_impl*
end;//TkwFileReadLines.CompiledWorkerClass

class function TkwFileReadLines.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'file:ReadLines';
end;//TkwFileReadLines.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
{$IfEnd} //not NoScripts

end.