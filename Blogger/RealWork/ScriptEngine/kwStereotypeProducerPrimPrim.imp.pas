{$IfNDef kwStereotypeProducerPrimPrim_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwStereotypeProducerPrimPrim.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Stereotyping::kwStereotypeProducerPrimPrim
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwStereotypeProducerPrimPrim_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordProducer.imp.pas}
 _kwStereotypeProducerPrimPrim_ = {mixin} class(_tfwWordProducer_)
 protected
 // overridden protected methods
   function CompiledWordClass: RkwCompiledWord; override;
   function GetNewWordName(const aContext: TtfwContext): Il3CString; override;
 end;//_kwStereotypeProducerPrimPrim_
{$IfEnd} //not NoScripts

{$Else kwStereotypeProducerPrimPrim_imp}

{$IfNDef kwStereotypeProducerPrimPrim_imp_impl}
{$Define kwStereotypeProducerPrimPrim_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwWordProducer.imp.pas}

// start class _kwStereotypeProducerPrimPrim_

function _kwStereotypeProducerPrimPrim_.CompiledWordClass: RkwCompiledWord;
//#UC START# *4DBAEE0D028D_4F442FBE0300_var*
//#UC END# *4DBAEE0D028D_4F442FBE0300_var*
begin
//#UC START# *4DBAEE0D028D_4F442FBE0300_impl*
 Result := TkwCompiledStereotypedWord;
//#UC END# *4DBAEE0D028D_4F442FBE0300_impl*
end;//_kwStereotypeProducerPrimPrim_.CompiledWordClass

function _kwStereotypeProducerPrimPrim_.GetNewWordName(const aContext: TtfwContext): Il3CString;
//#UC START# *4F37B3F10318_4F442FBE0300_var*
//#UC END# *4F37B3F10318_4F442FBE0300_var*
begin
//#UC START# *4F37B3F10318_4F442FBE0300_impl*
 Result := l3Cat([TtfwCStringFactory.C('<<'), inherited GetNewWordName(aContext), TtfwCStringFactory.C('>>')]);
//#UC END# *4F37B3F10318_4F442FBE0300_impl*
end;//_kwStereotypeProducerPrimPrim_.GetNewWordName

{$IfEnd} //not NoScripts

{$Else  kwStereotypeProducerPrimPrim_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordProducer.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf kwStereotypeProducerPrimPrim_imp_impl}
{$EndIf kwStereotypeProducerPrimPrim_imp}
