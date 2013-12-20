unit kwIterateMembers;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwIterateMembers.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::MembersWorking::MembersWorkingPack::IterateMembers
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
 TkwIterateMembers = {final} class(_tfwWordWorker_)
 protected
 // realized methods
   function CompiledWorkerClass: RkwCompiledWordWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwIterateMembers
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledIterateMembers,
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

type _Instance_R_ = TkwIterateMembers;

{$Include ..\ScriptEngine\tfwWordWorker.imp.pas}

// start class TkwIterateMembers

function TkwIterateMembers.CompiledWorkerClass: RkwCompiledWordWorker;
//#UC START# *4DCBD67C0362_4F3BF5A701C3_var*
//#UC END# *4DCBD67C0362_4F3BF5A701C3_var*
begin
//#UC START# *4DCBD67C0362_4F3BF5A701C3_impl*
 Result := TkwCompiledIterateMembers;
//#UC END# *4DCBD67C0362_4F3BF5A701C3_impl*
end;//TkwIterateMembers.CompiledWorkerClass

class function TkwIterateMembers.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'IterateMembers';
end;//TkwIterateMembers.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
{$IfEnd} //not NoScripts

end.