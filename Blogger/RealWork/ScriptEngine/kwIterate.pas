unit kwIterate;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwIterate.pas"
// Начат: 12.05.2011 21:40
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ArrayProcessing::Iterate
//
// Перебирает элементы массива.
// *Пример:*
// {code}
// ARRAY L
// 0 10 FOR
// ++
// DUP
// >>>[] L
// NEXT
// DROP
// @ . ITERATE L
// // - печатает числа от 1 до 10
// '' .
// 0 @ + ITERATE L .
// // - суммирует числа от 1 до 10 и печатает результат
// {code}
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
 TkwIterate = class(_tfwVarWorker_)
  {* Перебирает элементы массива.
 *Пример:*
[code]
 ARRAY L
 0 10 FOR
  ++
  DUP
  >>>[] L
 NEXT
 DROP
 @ . ITERATE L
 // - печатает числа от 1 до 10
 '' .
 0 @ + ITERATE L .
 // - суммирует числа от 1 до 10 и печатает результат
[code] }
 protected
 // realized methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwIterate
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledIterate,
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

type _Instance_R_ = TkwIterate;

{$Include ..\ScriptEngine\tfwVarWorker.imp.pas}

// start class TkwIterate

function TkwIterate.CompiledVarWorkerClass: RkwCompiledVarWorker;
//#UC START# *4DCC193801F1_4DCC1B8A0192_var*
//#UC END# *4DCC193801F1_4DCC1B8A0192_var*
begin
//#UC START# *4DCC193801F1_4DCC1B8A0192_impl*
 Result := TkwCompiledIterate;
//#UC END# *4DCC193801F1_4DCC1B8A0192_impl*
end;//TkwIterate.CompiledVarWorkerClass

class function TkwIterate.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'ITERATE';
end;//TkwIterate.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
{$IfEnd} //not NoScripts

end.