{$IfNDef nscTaskPanelWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/nscTaskPanelWord.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> F1 Поддержка тестов::F1 Shell Words::TaskPanelWords::nscTaskPanelWord
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define nscTaskPanelWord_imp}
{$If not defined(NoVCM)}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\kwControlFromStackWord.imp.pas}
 _nscTaskPanelWord_ = {mixin} class(_kwControlFromStackWord_)
 protected
 // realized methods
    {$If not defined(NoScripts)}
   procedure DoControl(aControl: TControl;
     const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
 protected
 // protected methods
   procedure DoTaskPanel(aTaskPanel: TnscTasksPanelView;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_nscTaskPanelWord_
{$IfEnd} //not NoVCM

{$Else nscTaskPanelWord_imp}

{$IfNDef nscTaskPanelWord_imp_impl}
{$Define nscTaskPanelWord_imp_impl}

{$If not defined(NoVCM)}


{$Include w:\common\components\rtl\Garant\ScriptEngine\kwControlFromStackWord.imp.pas}

// start class _nscTaskPanelWord_

{$If not defined(NoScripts)}
procedure _nscTaskPanelWord_.DoControl(aControl: TControl;
  const aCtx: TtfwContext);
//#UC START# *4F212C3A015A_51013AA902B1_var*
//#UC END# *4F212C3A015A_51013AA902B1_var*
begin
//#UC START# *4F212C3A015A_51013AA902B1_impl*
 RunnerAssert(aControl is TnscTasksPanelView, 'Мне нужен TnscTasksPanelView.', aCtx);
 DoTaskPanel(aControl as TnscTasksPanelView, aCtx);
//#UC END# *4F212C3A015A_51013AA902B1_impl*
end;//_nscTaskPanelWord_.DoControl
{$IfEnd} //not NoScripts

{$IfEnd} //not NoVCM

{$Else  nscTaskPanelWord_imp_impl}
{$If not defined(NoVCM)}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\kwControlFromStackWord.imp.pas}
{$IfEnd} //not NoVCM

{$EndIf nscTaskPanelWord_imp_impl}
{$EndIf nscTaskPanelWord_imp}
