{$IfNDef kwWordFromStackWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwWordFromStackWord.imp.pas"
// �����: 12.02.2012 16:28
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::CoreWords::kwWordFromStackWord
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwWordFromStackWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwObjectFromStackWord.imp.pas}
 _kwWordFromStackWord_ = {abstract mixin} class(_kwObjectFromStackWord_)
 protected
 // realized methods
   procedure DoObject(anObject: TObject;
     const aCtx: TtfwContext); override;
 protected
 // protected methods
   procedure DoWord(aWord: TtfwWord;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_kwWordFromStackWord_
{$IfEnd} //not NoScripts

{$Else kwWordFromStackWord_imp}

{$IfNDef kwWordFromStackWord_imp_impl}
{$Define kwWordFromStackWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\kwObjectFromStackWord.imp.pas}

// start class _kwWordFromStackWord_

procedure _kwWordFromStackWord_.DoObject(anObject: TObject;
  const aCtx: TtfwContext);
//#UC START# *4F212BD5010E_4F37B03C0270_var*
//#UC END# *4F212BD5010E_4F37B03C0270_var*
begin
//#UC START# *4F212BD5010E_4F37B03C0270_impl*
 DoWord(anObject As TtfwWord, aCtx);
//#UC END# *4F212BD5010E_4F37B03C0270_impl*
end;//_kwWordFromStackWord_.DoObject

{$IfEnd} //not NoScripts

{$Else  kwWordFromStackWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwObjectFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf kwWordFromStackWord_imp_impl}
{$EndIf kwWordFromStackWord_imp}
