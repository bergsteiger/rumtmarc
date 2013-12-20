{$IfNDef tfwVarWorker_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/tfwVarWorker.imp.pas"
// Начат: 12.05.2011 16:23
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::tfwVarWorker
//
// Поддержка слов для работы с переменными.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwVarWorker_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}
 _tfwVarWorker_ = {abstract mixin} class(_tfwBeginLikeWord_)
  {* Поддержка слов для работы с переменными. }
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext): AnsiString; override;
 protected
 // overridden protected methods
   function AfterWordMaxCount: Cardinal; override;
   function CompiledWordClass: RkwCompiledWord; override;
 protected
 // protected methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; virtual; abstract;
 end;//_tfwVarWorker_
{$IfEnd} //not NoScripts

{$Else tfwVarWorker_imp}

{$IfNDef tfwVarWorker_imp_impl}
{$Define tfwVarWorker_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}

// start class _tfwVarWorker_

function _tfwVarWorker_.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4DCBD36B01C4_var*
//#UC END# *4DB6C99F026E_4DCBD36B01C4_var*
begin
//#UC START# *4DB6C99F026E_4DCBD36B01C4_impl*
 Result := DisabledEndBracket(aContext);
//#UC END# *4DB6C99F026E_4DCBD36B01C4_impl*
end;//_tfwVarWorker_.EndBracket

function _tfwVarWorker_.AfterWordMaxCount: Cardinal;
//#UC START# *4DB9B446039A_4DCBD36B01C4_var*
//#UC END# *4DB9B446039A_4DCBD36B01C4_var*
begin
//#UC START# *4DB9B446039A_4DCBD36B01C4_impl*
 Result := 1;
//#UC END# *4DB9B446039A_4DCBD36B01C4_impl*
end;//_tfwVarWorker_.AfterWordMaxCount

function _tfwVarWorker_.CompiledWordClass: RkwCompiledWord;
//#UC START# *4DBAEE0D028D_4DCBD36B01C4_var*
//#UC END# *4DBAEE0D028D_4DCBD36B01C4_var*
begin
//#UC START# *4DBAEE0D028D_4DCBD36B01C4_impl*
 Result := CompiledVarWorkerClass;
//#UC END# *4DBAEE0D028D_4DCBD36B01C4_impl*
end;//_tfwVarWorker_.CompiledWordClass

{$IfEnd} //not NoScripts

{$Else  tfwVarWorker_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf tfwVarWorker_imp_impl}
{$EndIf tfwVarWorker_imp}
