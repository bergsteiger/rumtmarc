unit kwAppendToList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwAppendToList.pas"
// �����: 12.05.2011 21:26
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::ArrayProcessing::TkwAppendToList
//
// '>>>[]'. �������� �������� ���������� �� ����� � ����� ����������� ������.
// ������:
// {code}
// 0 10 FOR
// ++
// DUP
// >>>[] L
// NEXT
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
 TkwAppendToList = class(_tfwVarWorker_)
  {* '>>>[]'. �������� �������� ���������� �� ����� � ����� ����������� ������. 
������:
[code]
  0 10 FOR
  ++
  DUP
  >>>[] L
 NEXT
[code] }
 protected
 // realized methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwAppendToList
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledAppendToList,
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

type _Instance_R_ = TkwAppendToList;

{$Include ..\ScriptEngine\tfwVarWorker.imp.pas}

// start class TkwAppendToList

function TkwAppendToList.CompiledVarWorkerClass: RkwCompiledVarWorker;
//#UC START# *4DCC193801F1_4DCC181000F3_var*
//#UC END# *4DCC193801F1_4DCC181000F3_var*
begin
//#UC START# *4DCC193801F1_4DCC181000F3_impl*
 Result := TkwCompiledAppendToList;
//#UC END# *4DCC193801F1_4DCC181000F3_impl*
end;//TkwAppendToList.CompiledVarWorkerClass

class function TkwAppendToList.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DCC181000F3_var*
//#UC END# *4DB0614603C8_4DCC181000F3_var*
begin
//#UC START# *4DB0614603C8_4DCC181000F3_impl*
 Result := '>>>[]';
//#UC END# *4DB0614603C8_4DCC181000F3_impl*
end;//TkwAppendToList.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
{$IfEnd} //not NoScripts

end.