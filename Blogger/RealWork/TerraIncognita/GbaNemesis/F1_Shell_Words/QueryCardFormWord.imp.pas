{$IfNDef QueryCardFormWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/QueryCardFormWord.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::QueryCardFormWord
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define QueryCardFormWord_imp}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\kwFormFromControlWord.imp.pas}
 _QueryCardFormWord_ = {abstract mixin} class(_kwFormFromControlWord_)
 protected
 // realized methods
    {$If not defined(NoScripts)}
   procedure DoForm(aForm: TForm;
     const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
 protected
 // protected methods
   procedure DoQueryCardForm(aForm: TPrimQueryCardForm;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_QueryCardFormWord_

{$Else QueryCardFormWord_imp}

{$IfNDef QueryCardFormWord_imp_impl}
{$Define QueryCardFormWord_imp_impl}


{$Include w:\common\components\rtl\Garant\ScriptEngine\kwFormFromControlWord.imp.pas}

// start class _QueryCardFormWord_

{$If not defined(NoScripts)}
procedure _QueryCardFormWord_.DoForm(aForm: TForm;
  const aCtx: TtfwContext);
//#UC START# *4EB25DE00396_4F69AE35012F_var*
//#UC END# *4EB25DE00396_4F69AE35012F_var*
begin
//#UC START# *4EB25DE00396_4F69AE35012F_impl*
 DoQueryCardForm(aForm As TPrimQueryCardForm, aCtx);
//#UC END# *4EB25DE00396_4F69AE35012F_impl*
end;//_QueryCardFormWord_.DoForm
{$IfEnd} //not NoScripts

{$Else  QueryCardFormWord_imp_impl}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\kwFormFromControlWord.imp.pas}
{$EndIf QueryCardFormWord_imp_impl}
{$EndIf QueryCardFormWord_imp}
