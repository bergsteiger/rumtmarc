{$IfNDef kwQueryCardFromStackWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwQueryCardFromStackWord.imp.pas"
// �����: 26.09.2011 18:34
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::QueryCardProcessing::kwQueryCardFromStackWord
//
// ����� ���������� � ������� ���������� ��� � ��������� �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwQueryCardFromStackWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
 _kwQueryCardFromStackWord_ = {abstract mixin} class(_kwEditorFromStackWord_)
  {* ����� ���������� � ������� ���������� ��� � ��������� ������� }
 protected
 // realized methods
   procedure DoWithEditor(const aCtx: TtfwContext;
     anEditor: TevCustomEditorWindow); override;
 protected
 // protected methods
   procedure DoCard(const aCtx: TtfwContext;
     aCard: TevQueryCardEditor); virtual; abstract;
 end;//_kwQueryCardFromStackWord_
{$IfEnd} //not NoScripts

{$Else kwQueryCardFromStackWord_imp}

{$IfNDef kwQueryCardFromStackWord_imp_impl}
{$Define kwQueryCardFromStackWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}

// start class _kwQueryCardFromStackWord_

procedure _kwQueryCardFromStackWord_.DoWithEditor(const aCtx: TtfwContext;
  anEditor: TevCustomEditorWindow);
//#UC START# *4F4CB81200CA_4E808D48037D_var*
//#UC END# *4F4CB81200CA_4E808D48037D_var*
begin
//#UC START# *4F4CB81200CA_4E808D48037D_impl*
 RunnerAssert(anEditor is TevQueryCardEditor, '��� �� ��', aCtx);
 DoCard(aCtx, anEditor as TevQueryCardEditor);
//#UC END# *4F4CB81200CA_4E808D48037D_impl*
end;//_kwQueryCardFromStackWord_.DoWithEditor

{$IfEnd} //not NoScripts

{$Else  kwQueryCardFromStackWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf kwQueryCardFromStackWord_imp_impl}
{$EndIf kwQueryCardFromStackWord_imp}
