{$IfNDef tfwAutoregisteringWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/tfwAutoregisteringWord.imp.pas"
// Начат: 21.04.2011 20:47
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::tfwAutoregisteringWord
//
// Слово с автоматической регистрацией в словаре
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwAutoregisteringWord_imp}
{$If not defined(NoScripts)}
 _tfwAutoregisteringWord_ = {abstract mixin} class(TtfwWord)
  {* Слово с автоматической регистрацией в словаре }
 protected
 // protected methods
   class function ReallyNeedRegister: Boolean; virtual;
 public
 // public methods
   class function GetWordNameForRegister: AnsiString; virtual;
 end;//_tfwAutoregisteringWord_
{$IfEnd} //not NoScripts

{$Else tfwAutoregisteringWord_imp}

{$IfNDef tfwAutoregisteringWord_imp_impl}
{$Define tfwAutoregisteringWord_imp_impl}

{$If not defined(NoScripts)}

// start class _tfwAutoregisteringWord_

class function _tfwAutoregisteringWord_.ReallyNeedRegister: Boolean;
//#UC START# *4DC2E05B03DD_4DB05F85025C_var*
//#UC END# *4DC2E05B03DD_4DB05F85025C_var*
begin
//#UC START# *4DC2E05B03DD_4DB05F85025C_impl*
 Result := true;
//#UC END# *4DC2E05B03DD_4DB05F85025C_impl*
end;//_tfwAutoregisteringWord_.ReallyNeedRegister

class function _tfwAutoregisteringWord_.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DB05F85025C_var*
//#UC END# *4DB0614603C8_4DB05F85025C_var*
begin
//#UC START# *4DB0614603C8_4DB05F85025C_impl*
 Result := '';
 Assert(false);
//#UC END# *4DB0614603C8_4DB05F85025C_impl*
end;//_tfwAutoregisteringWord_.GetWordNameForRegister

{$IfEnd} //not NoScripts

{$Else  tfwAutoregisteringWord_imp_impl}
{$If not defined(NoScripts)}
//#UC START# *4DB14DA802F5*
 if _Instance_R_.ReallyNeedRegister then
  TtfwScriptEngine.GlobalAddWord(_Instance_R_.GetWordNameForRegister, _Instance_R_);
//#UC END# *4DB14DA802F5*
{$IfEnd} //not NoScripts

{$EndIf tfwAutoregisteringWord_imp_impl}
{$EndIf tfwAutoregisteringWord_imp}
