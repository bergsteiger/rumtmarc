{$IfNDef kwUsesLike_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwUsesLike.imp.pas"
// Начат: 12.02.2012 19:02
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::IncludesAndUses::kwUsesLike
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwUsesLike_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwIncludeLike.imp.pas}
 _kwUsesLike_ = {abstract mixin} class(_tfwIncludeLike_)
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext): AnsiString; override;
 protected
 // overridden protected methods
   procedure UnknownWord(var aContext: TtfwContext;
     var theCompiled: TkwCompiledWord;
     const aPrevFinder: Il3KeywordFinder); override;
 end;//_kwUsesLike_
{$IfEnd} //not NoScripts

{$Else kwUsesLike_imp}

{$IfNDef kwUsesLike_imp_impl}
{$Define kwUsesLike_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwIncludeLike.imp.pas}

// start class _kwUsesLike_

function _kwUsesLike_.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4F37D458015C_var*
//#UC END# *4DB6C99F026E_4F37D458015C_var*
begin
//#UC START# *4DB6C99F026E_4F37D458015C_impl*
 Result := ';';
//#UC END# *4DB6C99F026E_4F37D458015C_impl*
end;//_kwUsesLike_.EndBracket

procedure _kwUsesLike_.UnknownWord(var aContext: TtfwContext;
  var theCompiled: TkwCompiledWord;
  const aPrevFinder: Il3KeywordFinder);
//#UC START# *4DB6F2760023_4F37D458015C_var*
//#UC END# *4DB6F2760023_4F37D458015C_var*
begin
//#UC START# *4DB6F2760023_4F37D458015C_impl*
 DoIncluded(aContext, aContext.rParser.TokenString);
//#UC END# *4DB6F2760023_4F37D458015C_impl*
end;//_kwUsesLike_.UnknownWord

{$IfEnd} //not NoScripts

{$Else  kwUsesLike_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwIncludeLike.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf kwUsesLike_imp_impl}
{$EndIf kwUsesLike_imp}
