unit kwIterateCode;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwIterateCode.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::MembersWorking::MembersWorkingPack::IterateCode
//
// Перебирает слова компилированного кода слова
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
 TkwIterateCode = {final} class(_tfwWordWorker_)
  {* Перебирает слова компилированного кода слова }
 protected
 // realized methods
   function CompiledWorkerClass: RkwCompiledWordWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwIterateCode
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledIterateCode,
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

type _Instance_R_ = TkwIterateCode;

{$Include ..\ScriptEngine\tfwWordWorker.imp.pas}

// start class TkwIterateCode

function TkwIterateCode.CompiledWorkerClass: RkwCompiledWordWorker;
//#UC START# *4DCBD67C0362_4F47932C001F_var*
//#UC END# *4DCBD67C0362_4F47932C001F_var*
begin
//#UC START# *4DCBD67C0362_4F47932C001F_impl*
 Result := TkwCompiledIterateCode;
//#UC END# *4DCBD67C0362_4F47932C001F_impl*
end;//TkwIterateCode.CompiledWorkerClass

class function TkwIterateCode.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'IterateCode';
end;//TkwIterateCode.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
{$IfEnd} //not NoScripts

end.