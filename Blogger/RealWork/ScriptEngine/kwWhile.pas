unit kwWhile;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwWhile.pas"
// Начат: 12.05.2011 17:33
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwWhile
//
// Цикл While. Повторяется пока выполняется некоторое условие.
// Пример:
// {code} 10 @ ( ?DUP !=0 ) WHILE ( DUP . -- ) {code}
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

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
 TkwWhile = class(_tfwWordWorker_)
  {* Цикл While. Повторяется пока выполняется некоторое условие.
Пример:
[code] 10 @ ( ?DUP !=0 ) WHILE ( DUP . -- ) [code] }
 protected
 // realized methods
   function CompiledWorkerClass: RkwCompiledWordWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwWhile
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledWhile,
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

type _Instance_R_ = TkwWhile;

{$Include ..\ScriptEngine\tfwWordWorker.imp.pas}

// start class TkwWhile

function TkwWhile.CompiledWorkerClass: RkwCompiledWordWorker;
//#UC START# *4DCBD67C0362_4DCBE1A5019B_var*
//#UC END# *4DCBD67C0362_4DCBE1A5019B_var*
begin
//#UC START# *4DCBD67C0362_4DCBE1A5019B_impl*
 Result := TkwCompiledWhile;
//#UC END# *4DCBD67C0362_4DCBE1A5019B_impl*
end;//TkwWhile.CompiledWorkerClass

class function TkwWhile.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DCBE1A5019B_var*
//#UC END# *4DB0614603C8_4DCBE1A5019B_var*
begin
//#UC START# *4DB0614603C8_4DCBE1A5019B_impl*
 Result := 'WHILE';
//#UC END# *4DB0614603C8_4DCBE1A5019B_impl*
end;//TkwWhile.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
{$IfEnd} //not NoScripts

end.