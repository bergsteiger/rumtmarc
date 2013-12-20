{$IfNDef kwControlFromStackWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwControlFromStackWord.imp.pas"
// �����: 26.01.2012 14:34
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::kwControlFromStackWord
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwControlFromStackWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwComponentFromStackWord.imp.pas}
 _kwControlFromStackWord_ = {abstract mixin} class(_kwComponentFromStackWord_)
 protected
 // realized methods
   procedure DoComponent(aComponent: TComponent;
     const aCtx: TtfwContext); override;
 protected
 // protected methods
   procedure DoControl(aControl: TControl;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_kwControlFromStackWord_
{$IfEnd} //not NoScripts

{$Else kwControlFromStackWord_imp}

{$IfNDef kwControlFromStackWord_imp_impl}
{$Define kwControlFromStackWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\kwComponentFromStackWord.imp.pas}

type
  THackControl = {abstract} class(TControl)
  end;//THackControl

// start class _kwControlFromStackWord_

procedure _kwControlFromStackWord_.DoComponent(aComponent: TComponent;
  const aCtx: TtfwContext);
//#UC START# *4F21485E0184_4F212C120371_var*
//#UC END# *4F21485E0184_4F212C120371_var*
begin
//#UC START# *4F21485E0184_4F212C120371_impl*
 DoControl(aComponent As TControl, aCtx);
//#UC END# *4F21485E0184_4F212C120371_impl*
end;//_kwControlFromStackWord_.DoComponent

{$IfEnd} //not NoScripts

{$Else  kwControlFromStackWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwComponentFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf kwControlFromStackWord_imp_impl}
{$EndIf kwControlFromStackWord_imp}
