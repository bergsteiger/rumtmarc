{$IfNDef tfwConstLike_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/tfwConstLike.imp.pas"
// Начат: 15.02.2012 18:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::tfwConstLike
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwConstLike_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwNewWord.imp.pas}
 _tfwConstLike_ = {abstract mixin} class(_tfwNewWord_)
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext): AnsiString; override;
 protected
 // overridden protected methods
   function AfterWordMaxCount: Cardinal; override;
 end;//_tfwConstLike_
{$IfEnd} //not NoScripts

{$Else tfwConstLike_imp}

{$IfNDef tfwConstLike_imp_impl}
{$Define tfwConstLike_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwNewWord.imp.pas}

// start class _tfwConstLike_

function _tfwConstLike_.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4F3BC124004D_var*
//#UC END# *4DB6C99F026E_4F3BC124004D_var*
begin
//#UC START# *4DB6C99F026E_4F3BC124004D_impl*
 Result := DisabledEndBracket(aContext);
//#UC END# *4DB6C99F026E_4F3BC124004D_impl*
end;//_tfwConstLike_.EndBracket

function _tfwConstLike_.AfterWordMaxCount: Cardinal;
//#UC START# *4DB9B446039A_4F3BC124004D_var*
//#UC END# *4DB9B446039A_4F3BC124004D_var*
begin
//#UC START# *4DB9B446039A_4F3BC124004D_impl*
 Result := 1;
//#UC END# *4DB9B446039A_4F3BC124004D_impl*
end;//_tfwConstLike_.AfterWordMaxCount

{$IfEnd} //not NoScripts

{$Else  tfwConstLike_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwNewWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf tfwConstLike_imp_impl}
{$EndIf tfwConstLike_imp}
