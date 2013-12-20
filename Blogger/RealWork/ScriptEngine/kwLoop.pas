unit kwLoop;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwLoop.pas"
// �����: 12.05.2011 18:08
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwLoop
//
// ���� LOOP.
// ������:
// {code}
// 10 LOOP ( 'Hello' . )
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
 TkwLoop = class(_tfwWordWorker_)
  {* ���� LOOP.
������:
[code]
 10 LOOP ( 'Hello' . )
[code] }
 protected
 // realized methods
   function CompiledWorkerClass: RkwCompiledWordWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwLoop
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledLoop,
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

type _Instance_R_ = TkwLoop;

{$Include ..\ScriptEngine\tfwWordWorker.imp.pas}

// start class TkwLoop

function TkwLoop.CompiledWorkerClass: RkwCompiledWordWorker;
//#UC START# *4DCBD67C0362_4DCBE9B8022F_var*
//#UC END# *4DCBD67C0362_4DCBE9B8022F_var*
begin
//#UC START# *4DCBD67C0362_4DCBE9B8022F_impl*
 Result := TkwCompiledLoop;
//#UC END# *4DCBD67C0362_4DCBE9B8022F_impl*
end;//TkwLoop.CompiledWorkerClass

class function TkwLoop.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DCBE9B8022F_var*
//#UC END# *4DB0614603C8_4DCBE9B8022F_var*
begin
//#UC START# *4DB0614603C8_4DCBE9B8022F_impl*
 Result := 'LOOP';
//#UC END# *4DB0614603C8_4DCBE9B8022F_impl*
end;//TkwLoop.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
{$IfEnd} //not NoScripts

end.