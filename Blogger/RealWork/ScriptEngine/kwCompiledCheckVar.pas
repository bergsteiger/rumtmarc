unit kwCompiledCheckVar;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledCheckVar.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::MembersWorking::TkwCompiledCheckVar
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
  kwCompiledWordWorker,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledCheckVar = class(TkwCompiledWordWorker)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 end;//TkwCompiledCheckVar
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledVar,
  SysUtils,
  kwCompiledWord,
  kwVar,
  l3Interfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledCheckVar

procedure TkwCompiledCheckVar.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F3F9BDF0285_var*
var
 l_O : TObject;
 l_S : Il3CString;
 l_KW : TtfwKeyWord;
 l_W : TtfwWord;
//#UC END# *4DAEEDE10285_4F3F9BDF0285_var*
begin
//#UC START# *4DAEEDE10285_4F3F9BDF0285_impl*
 l_O := aCtx.rEngine.PopObj;
 f_Word.DoIt(aCtx);
 l_S := aCtx.rEngine.PopString;
 if (l_O Is TkwCompiledWord) then
 begin
  l_KW := ItfwWordCompiler(TkwCompiledWord(l_O)).CheckWord(l_S);
  l_W := l_KW.Word;
  if (l_W = nil) then
  begin
   l_W := TkwCompiledVar.Create((aCtx.rEngine.As_ItfwKeywordFinder.KeywordByName[TkwVar.GetWordNameForRegister] As TtfwKeyWord).Word,
                                   // - чтобы обеспечить слову нужный "стереотип"
                                   //   хак конечно, надо как-то константу хотя бы завести
                                  TkwCompiledWord(l_O){PrevFinder},
                                  []{Modifiers});
   try
    l_KW.Word := l_W;
    aCtx.rEngine.PushObj(l_W);
   finally
    FreeAndNil(l_W);
   end;//try..finally
  end//l_W = nil
  else
   aCtx.rEngine.PushObj(l_W);
 end//l_O Is TkwCompiledWord
 else
  aCtx.rEngine.Push(TtfwStackValue_NULL);
//#UC END# *4DAEEDE10285_4F3F9BDF0285_impl*
end;//TkwCompiledCheckVar.DoDoIt

{$IfEnd} //not NoScripts

end.