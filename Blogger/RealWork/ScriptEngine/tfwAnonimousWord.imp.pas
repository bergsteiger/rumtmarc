{$IfNDef tfwAnonimousWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/tfwAnonimousWord.imp.pas"
// Начат: 28.04.2011 23:09
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::tfwAnonimousWord
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwAnonimousWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwCompilingWord.imp.pas}
 _tfwAnonimousWord_ = {abstract mixin} class(_tfwCompilingWord_)
 public
 // overridden public methods
   function IsAnonimous: Boolean; override;
 protected
 // protected methods
   procedure DoCompiledWord(aWord: TtfwWord;
     const aContext: TtfwContext);
 end;//_tfwAnonimousWord_
{$IfEnd} //not NoScripts

{$Else tfwAnonimousWord_imp}

{$IfNDef tfwAnonimousWord_imp_impl}
{$Define tfwAnonimousWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwCompilingWord.imp.pas}

// start class _tfwAnonimousWord_

procedure _tfwAnonimousWord_.DoCompiledWord(aWord: TtfwWord;
  const aContext: TtfwContext);
//#UC START# *4DB9BBD6024F_4DB9BB43017B_var*
//#UC END# *4DB9BBD6024F_4DB9BB43017B_var*
begin
//#UC START# *4DB9BBD6024F_4DB9BB43017B_impl*
 if not aContext.rCompiling {OR (aContext.rImmediateLevel > 0)} then
  aWord.DoIt(aContext)
 else
 if aWord.IsRunner then
 begin
  Assert((aWord.Key = nil) OR (aWord.Key = Self.Key));
  aWord.Key := Self.Key;
  // - чтобы легче было опознавать слова по их Runner'ам
  try
   aWord.DoIt(aContext);
  finally
   aWord.Key := nil;
  end;//try..finally
 end//aWord.IsRunner
 else
  aContext.rCompiler.AddCodePart(aWord, false, aContext);
//#UC END# *4DB9BBD6024F_4DB9BB43017B_impl*
end;//_tfwAnonimousWord_.DoCompiledWord

function _tfwAnonimousWord_.IsAnonimous: Boolean;
//#UC START# *4F3AB3600008_4DB9BB43017B_var*
//#UC END# *4F3AB3600008_4DB9BB43017B_var*
begin
//#UC START# *4F3AB3600008_4DB9BB43017B_impl*
 Result := true;
//#UC END# *4F3AB3600008_4DB9BB43017B_impl*
end;//_tfwAnonimousWord_.IsAnonimous

{$IfEnd} //not NoScripts

{$Else  tfwAnonimousWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwCompilingWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf tfwAnonimousWord_imp_impl}
{$EndIf tfwAnonimousWord_imp}
