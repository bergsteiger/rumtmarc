{$IfNDef kwNscTreeViewWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "F1 Shell Words"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwNscTreeViewWord.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> F1 ��������� ������::F1 Shell Words::TreeViewWords::kwNscTreeViewWord
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwNscTreeViewWord_imp}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\kwControlFromStackWord.imp.pas}
 _kwNscTreeViewWord_ = {mixin} class(_kwControlFromStackWord_)
 protected
 // realized methods
    {$If not defined(NoScripts)}
   procedure DoControl(aControl: TControl;
     const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
 protected
 // protected methods
   procedure DoWithNscTreeView(aTreeView: TnscTreeView;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_kwNscTreeViewWord_

{$Else kwNscTreeViewWord_imp}

{$IfNDef kwNscTreeViewWord_imp_impl}
{$Define kwNscTreeViewWord_imp_impl}


{$Include w:\common\components\rtl\Garant\ScriptEngine\kwControlFromStackWord.imp.pas}

// start class _kwNscTreeViewWord_

{$If not defined(NoScripts)}
procedure _kwNscTreeViewWord_.DoControl(aControl: TControl;
  const aCtx: TtfwContext);
//#UC START# *4F212C3A015A_512FA1800269_var*
//#UC END# *4F212C3A015A_512FA1800269_var*
begin
//#UC START# *4F212C3A015A_512FA1800269_impl*
 RunnerAssert(aControl is TnscTreeView, '��� �� TnscTreeView.', aCtx);
 DoWithNscTreeView(aControl as TnscTreeView, aCtx);
//#UC END# *4F212C3A015A_512FA1800269_impl*
end;//_kwNscTreeViewWord_.DoControl
{$IfEnd} //not NoScripts

{$Else  kwNscTreeViewWord_imp_impl}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\kwControlFromStackWord.imp.pas}
{$EndIf kwNscTreeViewWord_imp_impl}
{$EndIf kwNscTreeViewWord_imp}
