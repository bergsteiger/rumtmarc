{$IfNDef vtHideFieldFromStackWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/vtHideFieldFromStackWord.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> F1 Поддержка тестов::F1 Shell Words::TaskPanelWords::vtHideFieldFromStackWord
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define vtHideFieldFromStackWord_imp}
{$If not defined(NoVCM)}
 TvtHideFieldHack = class(TvtCustomHideField)
 end;//TvtHideFieldHack

 {$Include w:\common\components\rtl\Garant\ScriptEngine\kwControlFromStackWord.imp.pas}
 _vtHideFieldFromStackWord_ = {mixin} class(_kwControlFromStackWord_)
 protected
 // realized methods
    {$If not defined(NoScripts)}
   procedure DoControl(aControl: TControl;
     const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
 protected
 // protected methods
   procedure DoHideField(aHideField: TvtCustomHideField;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_vtHideFieldFromStackWord_
{$IfEnd} //not NoVCM

{$Else vtHideFieldFromStackWord_imp}

{$IfNDef vtHideFieldFromStackWord_imp_impl}
{$Define vtHideFieldFromStackWord_imp_impl}

{$If not defined(NoVCM)}


{$Include w:\common\components\rtl\Garant\ScriptEngine\kwControlFromStackWord.imp.pas}

// start class _vtHideFieldFromStackWord_

{$If not defined(NoScripts)}
procedure _vtHideFieldFromStackWord_.DoControl(aControl: TControl;
  const aCtx: TtfwContext);
//#UC START# *4F212C3A015A_5101349F02A5_var*
//#UC END# *4F212C3A015A_5101349F02A5_var*
begin
//#UC START# *4F212C3A015A_5101349F02A5_impl*
 RunnerAssert(aControl is TvtCustomHideField, 'Мне нужен TvtCustomHideField.', aCtx);
 DoHideField(aControl as TvtCustomHideField, aCtx);
//#UC END# *4F212C3A015A_5101349F02A5_impl*
end;//_vtHideFieldFromStackWord_.DoControl
{$IfEnd} //not NoScripts

{$IfEnd} //not NoVCM

{$Else  vtHideFieldFromStackWord_imp_impl}
{$If not defined(NoVCM)}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\kwControlFromStackWord.imp.pas}
{$IfEnd} //not NoVCM

{$EndIf vtHideFieldFromStackWord_imp_impl}
{$EndIf vtHideFieldFromStackWord_imp}
