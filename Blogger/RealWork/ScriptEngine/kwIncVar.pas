unit kwIncVar;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwIncVar.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwIncVar
//
// +!                              "plus-store"
// ( n|u a-addr -- )
// ���������� n|u � ����� ����-������ � a-addr.
// ������:
// {code}
// VAR l_WinID
// 5 >>> l_WinID
// 1 +! l_WinID
// l_WinID.
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
 TkwIncVar = class(_tfwVarWorker_)
  {* +!                              "plus-store"                    
( n|u a-addr -- )
            ���������� n|u � ����� ����-������ � a-addr.
������:
[code]
VAR l_WinID 
 5 >>> l_WinID 
 1 +! l_WinID 
 l_WinID. 
[code] }
 protected
 // realized methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwIncVar
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledIncVar,
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

type _Instance_R_ = TkwIncVar;

{$Include ..\ScriptEngine\tfwVarWorker.imp.pas}

// start class TkwIncVar

function TkwIncVar.CompiledVarWorkerClass: RkwCompiledVarWorker;
//#UC START# *4DCC193801F1_4E4CDC9A013F_var*
//#UC END# *4DCC193801F1_4E4CDC9A013F_var*
begin
//#UC START# *4DCC193801F1_4E4CDC9A013F_impl*
 Result := TkwCompiledIncVar;
//#UC END# *4DCC193801F1_4E4CDC9A013F_impl*
end;//TkwIncVar.CompiledVarWorkerClass

class function TkwIncVar.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4E4CDC9A013F_var*
//#UC END# *4DB0614603C8_4E4CDC9A013F_var*
begin
//#UC START# *4DB0614603C8_4E4CDC9A013F_impl*
 Result := '+!';
//#UC END# *4DB0614603C8_4E4CDC9A013F_impl*
end;//TkwIncVar.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
{$IfEnd} //not NoScripts

end.