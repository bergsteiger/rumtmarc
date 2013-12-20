unit kwCloseArray;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCloseArray.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ArrayProcessing::CloseArray
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
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 TkwCloseArray = {final} class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwCloseArray
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwArray,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwCloseArray;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwCloseArray

procedure TkwCloseArray.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F5037FA03C6_var*
var
 l_A : ItfwValueList;
 l_V : TtfwStackValue;
//#UC END# *4DAEEDE10285_4F5037FA03C6_var*
begin
//#UC START# *4DAEEDE10285_4F5037FA03C6_impl*
 l_A := TtfwArray.Make;
 try
  try
   while true do
   begin
    l_V := aCtx.rEngine.Pop;
    if l_V.IsBracket then
     break;
    l_A.Insert(0, l_V);
   end;//while true
  finally
   aCtx.rEngine.Push(TtfwStackValue_C(l_A));
  end;//try..finally
 finally
  l_A := nil;
 end;//try..finally
//#UC END# *4DAEEDE10285_4F5037FA03C6_impl*
end;//TkwCloseArray.DoDoIt

class function TkwCloseArray.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := ']]';
end;//TkwCloseArray.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.