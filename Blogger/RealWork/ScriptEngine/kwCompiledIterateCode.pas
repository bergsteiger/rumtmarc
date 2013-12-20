unit kwCompiledIterateCode;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledIterateCode.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::MembersWorking::TkwCompiledIterateCode
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
 TkwCompiledIterateCode = class(TkwCompiledWordWorker)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 end;//TkwCompiledIterateCode
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledIterateCode

procedure TkwCompiledIterateCode.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F4793A000DD_var*
var
 l_W : TtfwWord;
 l_I : Integer;
 l_K : TtfwWord;
//#UC END# *4DAEEDE10285_4F4793A000DD_var*
begin
//#UC START# *4DAEEDE10285_4F4793A000DD_impl*
 l_W := aCtx.rEngine.PopObj As TtfwWord;
 if (l_W Is TkwCompiledWord) then
 begin
  if (TkwCompiledWord(l_W).Code <> nil) then
   begin
    for l_I := 0 to Pred(TkwCompiledWord(l_W).Code.Count) do
    begin
     l_K := TkwCompiledWord(l_W).Code.Items[l_I];
     if (l_K <> nil) then
     begin
      aCtx.rEngine.PushObj(l_K);
      f_Word.DoIt(aCtx);
     end;//l_K <> nil
    end;//for l_I
   end;//TkwCompiledWord(l_W).Code <> nil
 end;//l_W Is TkwCompiledWord
//#UC END# *4DAEEDE10285_4F4793A000DD_impl*
end;//TkwCompiledIterateCode.DoDoIt

{$IfEnd} //not NoScripts

end.