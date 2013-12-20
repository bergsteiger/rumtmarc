unit kwLPadToList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwLPadToList.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::ArrayProcessing::TkwLPadToList
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
 TkwLPadToList = class(_tfwVarWorker_)
 protected
 // realized methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwLPadToList
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledLPadToList,
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

type _Instance_R_ = TkwLPadToList;

{$Include ..\ScriptEngine\tfwVarWorker.imp.pas}

// start class TkwLPadToList

function TkwLPadToList.CompiledVarWorkerClass: RkwCompiledVarWorker;
//#UC START# *4DCC193801F1_4ED7B209034D_var*
//#UC END# *4DCC193801F1_4ED7B209034D_var*
begin
//#UC START# *4DCC193801F1_4ED7B209034D_impl*
 Result := TkwCompiledLPadToList;
//#UC END# *4DCC193801F1_4ED7B209034D_impl*
end;//TkwLPadToList.CompiledVarWorkerClass

class function TkwLPadToList.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4ED7B209034D_var*
//#UC END# *4DB0614603C8_4ED7B209034D_var*
begin
//#UC START# *4DB0614603C8_4ED7B209034D_impl*
 Result := '>>>L[]';
//#UC END# *4DB0614603C8_4ED7B209034D_impl*
end;//TkwLPadToList.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
{$IfEnd} //not NoScripts

end.