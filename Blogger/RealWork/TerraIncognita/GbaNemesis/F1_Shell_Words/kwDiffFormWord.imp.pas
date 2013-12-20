{$IfNDef kwDiffFormWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwDiffFormWord.imp.pas"
// Начат: 03.11.2011 13:26
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::kwDiffFormWord
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwDiffFormWord_imp}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\kwFormFromControlWord.imp.pas}
 _kwDiffFormWord_ = {abstract mixin} class(_kwFormFromControlWord_)
 protected
 // realized methods
    {$If not defined(NoScripts)}
   procedure DoForm(aForm: TForm;
     const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
 protected
 // protected methods
   procedure DoDiffForm(aForm: TDiffForm;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_kwDiffFormWord_

{$Else kwDiffFormWord_imp}

{$IfNDef kwDiffFormWord_imp_impl}
{$Define kwDiffFormWord_imp_impl}


{$Include w:\common\components\rtl\Garant\ScriptEngine\kwFormFromControlWord.imp.pas}

type
  TDiffFormHack = {abstract} class(TDiffForm)
  end;//TDiffFormHack

// start class _kwDiffFormWord_

{$If not defined(NoScripts)}
procedure _kwDiffFormWord_.DoForm(aForm: TForm;
  const aCtx: TtfwContext);
//#UC START# *4EB25DE00396_4EB25E1501E1_var*
//#UC END# *4EB25DE00396_4EB25E1501E1_var*
begin
//#UC START# *4EB25DE00396_4EB25E1501E1_impl*
 Assert(aForm Is TDiffForm, Format('Форма %s не совместима с %s',
                                   [aForm.ClassName, TDiffForm.ClassName]));
 DoDiffForm(aForm As TDiffForm, aCtx);
//#UC END# *4EB25DE00396_4EB25E1501E1_impl*
end;//_kwDiffFormWord_.DoForm
{$IfEnd} //not NoScripts

{$Else  kwDiffFormWord_imp_impl}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\kwFormFromControlWord.imp.pas}
{$EndIf kwDiffFormWord_imp_impl}
{$EndIf kwDiffFormWord_imp}
