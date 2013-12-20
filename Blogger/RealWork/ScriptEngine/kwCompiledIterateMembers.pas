unit kwCompiledIterateMembers;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledIterateMembers.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::MembersWorking::TkwCompiledIterateMembers
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
 TkwCompiledIterateMembers = class(TkwCompiledWordWorker)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 end;//TkwCompiledIterateMembers
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledIterateMembers

procedure TkwCompiledIterateMembers.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F3BF5E00391_var*
var
 l_W : TtfwWord;
 l_I : Integer;
 l_K : TtfwKeyWord;
//#UC END# *4DAEEDE10285_4F3BF5E00391_var*
begin
//#UC START# *4DAEEDE10285_4F3BF5E00391_impl*
 l_W := aCtx.rEngine.PopObj As TtfwWord;
 if (l_W Is TkwCompiledWord) then
 begin
  if (TkwCompiledWord(l_W).LocalDictionary <> nil) then
   begin
    for l_I := 0 to Pred(TkwCompiledWord(l_W).LocalDictionary.Count) do
    begin
     l_K := TkwCompiledWord(l_W).LocalDictionary.Items[l_I] As TtfwKeyWord;
     if (l_K <> nil) AND (l_K.Word <> nil) then
     begin
      aCtx.rEngine.PushObj(l_K.Word);
      f_Word.DoIt(aCtx);
     end;//l_K <> nil
    end;//for l_I
   end;//TkwCompiledWord(l_W).LocalDictionary.KeyWords <> nil
 end;//l_W Is TkwCompiledWord
//#UC END# *4DAEEDE10285_4F3BF5E00391_impl*
end;//TkwCompiledIterateMembers.DoDoIt

{$IfEnd} //not NoScripts

end.