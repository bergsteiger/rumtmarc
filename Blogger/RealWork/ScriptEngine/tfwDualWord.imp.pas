{$IfNDef tfwDualWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/tfwDualWord.imp.pas"
// Начат: 29.04.2011 17:55
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::tfwDualWord
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwDualWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAnonimousWord.imp.pas}
 _tfwDualWord_ = {abstract mixin} class(_tfwAnonimousWord_)
 protected
 // overridden protected methods
   procedure BeforeCompile(const aPrevContext: TtfwContext;
     var theNewContext: TtfwContext); override;
   procedure AfterCompile(var aPrevContext: TtfwContext;
     var theNewContext: TtfwContext;
     aCompiled: TkwCompiledWord); override;
   procedure UnknownWord(var aContext: TtfwContext;
     var theCompiled: TkwCompiledWord;
     const aPrevFinder: Il3KeywordFinder); override;
 protected
 // protected methods
   function MedianBracket: AnsiString; virtual; abstract;
   function MakeDualCompiled(const aContext: TtfwContext;
     aCompiled: TkwCompiledWord;
     aCompiled2: TkwCompiledWord;
     aMedianNum: Integer): TkwDualCompiledWordContainer; virtual; abstract;
   function MedianBracket2: AnsiString; virtual; abstract;
 end;//_tfwDualWord_
{$IfEnd} //not NoScripts

{$Else tfwDualWord_imp}

{$IfNDef tfwDualWord_imp_impl}
{$Define tfwDualWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwAnonimousWord.imp.pas}

// start class _tfwDualWord_

procedure _tfwDualWord_.BeforeCompile(const aPrevContext: TtfwContext;
  var theNewContext: TtfwContext);
//#UC START# *4DB6CDDA038B_4DBAC32F02B5_var*
//#UC END# *4DB6CDDA038B_4DBAC32F02B5_var*
begin
//#UC START# *4DB6CDDA038B_4DBAC32F02B5_impl*
 inherited;
 theNewContext.rFirstHalfOfDualWord := nil;
//#UC END# *4DB6CDDA038B_4DBAC32F02B5_impl*
end;//_tfwDualWord_.BeforeCompile

procedure _tfwDualWord_.AfterCompile(var aPrevContext: TtfwContext;
  var theNewContext: TtfwContext;
  aCompiled: TkwCompiledWord);
//#UC START# *4DB6CE2302C9_4DBAC32F02B5_var*
var
 l_CI : TkwDualCompiledWordContainer;
//#UC END# *4DB6CE2302C9_4DBAC32F02B5_var*
begin
//#UC START# *4DB6CE2302C9_4DBAC32F02B5_impl*
 if (theNewContext.rFirstHalfOfDualWord = nil) then
  l_CI := MakeDualCompiled(aPrevContext, aCompiled, nil, theNewContext.rInt)
 else
  l_CI := MakeDualCompiled(aPrevContext, theNewContext.rFirstHalfOfDualWord As TkwCompiledWord, aCompiled, theNewContext.rInt);
 try
  DoCompiledWord(l_CI, aPrevContext);
 finally
  FreeAndNil(l_CI);
 end;//try..finally
 FreeAndNil(theNewContext.rFirstHalfOfDualWord);
 inherited;
//#UC END# *4DB6CE2302C9_4DBAC32F02B5_impl*
end;//_tfwDualWord_.AfterCompile

procedure _tfwDualWord_.UnknownWord(var aContext: TtfwContext;
  var theCompiled: TkwCompiledWord;
  const aPrevFinder: Il3KeywordFinder);
//#UC START# *4DB6F2760023_4DBAC32F02B5_var*
//#UC END# *4DB6F2760023_4DBAC32F02B5_var*
begin
//#UC START# *4DB6F2760023_4DBAC32F02B5_impl*
 CompilerAssert(aContext.rInt = 0, 'Неожиданные данные при проверке конца структуры', aContext);
 aContext.rInt := 0;
 if l3Same(aContext.rParser.TokenLongString.AsWStr, MedianBracket) then
  aContext.rInt := 1
 else
 if l3Same(aContext.rParser.TokenLongString.AsWStr, MedianBracket2) then
  aContext.rInt := 2;
 if (aContext.rInt > 0) then
 begin
  //aContext.rParser.NextToken;
  CompilerAssert(aContext.rFirstHalfOfDualWord = nil, 'Неожиданные данные проверке середины структуры', aContext);
  aContext.rFirstHalfOfDualWord := theCompiled.Use;
  FreeAndNil(theCompiled);
  theCompiled := CompiledWordClass.Create(Self, aPrevFinder, []);
  aContext.rCompiler := theCompiled;
  aContext.rParser.KeyWords := theCompiled;
 end//aContext.rParser.TokenLongString = 'ELSE'
 else
  inherited;
//#UC END# *4DB6F2760023_4DBAC32F02B5_impl*
end;//_tfwDualWord_.UnknownWord

{$IfEnd} //not NoScripts

{$Else  tfwDualWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAnonimousWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf tfwDualWord_imp_impl}
{$EndIf tfwDualWord_imp}
