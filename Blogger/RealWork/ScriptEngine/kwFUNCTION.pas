unit kwFUNCTION;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwFUNCTION.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::WordsDefinition::FUNCTION
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  l3Interfaces,
  tfwScriptingInterfaces,
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwStandardProcedure.imp.pas}
 TkwFUNCTION = {final} class(_tfwStandardProcedure_)
 protected
 // overridden protected methods
   function CompiledWordClass: RkwCompiledWord; override;
   procedure FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
     aCompiled: TkwCompiledWord;
     const aContext: TtfwContext); override;
     {* Завершает определение вновь созданного слова }
   procedure FillCompiledWord(aCompiled: TkwCompiledWord;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwFUNCTION
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledFunction,
  kwCompiledVar,
  kwVar,
  SysUtils,
  kwCompiledProcedure,
  l3String,
  l3Parser,
  kwInteger,
  kwString,
  TypInfo,
  l3Base,
  kwIntegerFactory,
  kwStringFactory,
  l3Chars,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwFUNCTION;

{$Include ..\ScriptEngine\tfwStandardProcedure.imp.pas}

const
   { Local }
  cResult = 'Result';

// start class TkwFUNCTION

class function TkwFUNCTION.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'FUNCTION';
end;//TkwFUNCTION.GetWordNameForRegister

function TkwFUNCTION.CompiledWordClass: RkwCompiledWord;
//#UC START# *4DBAEE0D028D_4F3BEDEB009F_var*
//#UC END# *4DBAEE0D028D_4F3BEDEB009F_var*
begin
//#UC START# *4DBAEE0D028D_4F3BEDEB009F_impl*
 Result := TkwCompiledFunction;
//#UC END# *4DBAEE0D028D_4F3BEDEB009F_impl*
end;//TkwFUNCTION.CompiledWordClass

procedure TkwFUNCTION.FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
  aCompiled: TkwCompiledWord;
  const aContext: TtfwContext);
//#UC START# *4F219629036A_4F3BEDEB009F_var*
//#UC END# *4F219629036A_4F3BEDEB009F_var*
begin
//#UC START# *4F219629036A_4F3BEDEB009F_impl*
 inherited;
//#UC END# *4F219629036A_4F3BEDEB009F_impl*
end;//TkwFUNCTION.FinishDefinitionOfNewWord

procedure TkwFUNCTION.FillCompiledWord(aCompiled: TkwCompiledWord;
  const aCtx: TtfwContext);
//#UC START# *4F21A4F60049_4F3BEDEB009F_var*
var
 l_Var : TkwCompiledVar;
 l_KW : TtfwKeyWord;
//#UC END# *4F21A4F60049_4F3BEDEB009F_var*
begin
//#UC START# *4F21A4F60049_4F3BEDEB009F_impl*
 inherited;
 l_KW := ItfwWordCompiler(aCompiled).CheckWord(TtfwCStringFactory.C(cResult));
 l_Var := TkwCompiledVar.Create((aCtx.rEngine.As_ItfwKeywordFinder.KeywordByName[TkwVar.GetWordNameForRegister] As TtfwKeyWord).Word,
                                 // - чтобы обеспечить слову нужный "стереотип"
                                 //   хак конечно, надо как-то константу хотя бы завести
                                nil{PrevFinder},
                                []{Modifiers});
 try
  l_KW.Word := l_Var;
  (aCompiled As TkwCompiledFunction).ResultVar := l_Var;
 finally
  FreeAndNil(l_Var);
 end;//try..finally
//#UC END# *4F21A4F60049_4F3BEDEB009F_impl*
end;//TkwFUNCTION.FillCompiledWord

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwStandardProcedure.imp.pas}
{$IfEnd} //not NoScripts

end.