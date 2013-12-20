{$IfNDef kwStereotypeProducerPrim_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwStereotypeProducerPrim.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Stereotyping::kwStereotypeProducerPrim
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwStereotypeProducerPrim_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwStereotypeProducerPrimPrim.imp.pas}
 _kwStereotypeProducerPrim_ = {abstract mixin} class(_kwStereotypeProducerPrimPrim_)
 protected
 // overridden protected methods
   procedure FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
     aCompiled: TkwCompiledWord;
     const aContext: TtfwContext); override;
     {* ��������� ����������� ����� ���������� ����� }
 end;//_kwStereotypeProducerPrim_
{$IfEnd} //not NoScripts

{$Else kwStereotypeProducerPrim_imp}

{$IfNDef kwStereotypeProducerPrim_imp_impl}
{$Define kwStereotypeProducerPrim_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\kwStereotypeProducerPrimPrim.imp.pas}

// start class _kwStereotypeProducerPrim_

procedure _kwStereotypeProducerPrim_.FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
  aCompiled: TkwCompiledWord;
  const aContext: TtfwContext);
//#UC START# *4F219629036A_4F43B171006B_var*
var
 l_W : TkwCompiledStereotypeProducer;
//#UC END# *4F219629036A_4F43B171006B_var*
begin
//#UC START# *4F219629036A_4F43B171006B_impl*
 Assert((aCompiled.Code = nil) OR (aCompiled.Code.Count = 0));
 l_W := TkwCompiledStereotypeProducer.Create(GetWordProducerForCompiledClass);
 try
  aWordToFinish.Word := l_W;
 finally
  FreeAndNil(l_W);
 end;//try..finally
//#UC END# *4F219629036A_4F43B171006B_impl*
end;//_kwStereotypeProducerPrim_.FinishDefinitionOfNewWord

{$IfEnd} //not NoScripts

{$Else  kwStereotypeProducerPrim_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwStereotypeProducerPrimPrim.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf kwStereotypeProducerPrim_imp_impl}
{$EndIf kwStereotypeProducerPrim_imp}
