unit kwIterateChildWindows;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwIterateChildWindows.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::WinUtils::IterateChildWindows
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
 TkwIterateChildWindows = {final} class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwIterateChildWindows
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  Windows,
  IterateWindowsUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwIterateChildWindows;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwIterateChildWindows

procedure TkwIterateChildWindows.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_510B8104038A_var*
var
 l_Obj: TObject;
 l_Data: TIterateWindowsRec;
 l_Parent: THandle;
//#UC END# *4DAEEDE10285_510B8104038A_var*
begin
//#UC START# *4DAEEDE10285_510B8104038A_impl*
 RunnerAssert(aCtx.rEngine.IsTopInt, 'В итератор не передан дескриптор родительского окна.', aCtx);
 l_Parent := aCtx.rEngine.PopInt;

 RunnerAssert(aCtx.rEngine.IsTopObj, 'В итератор не передано слово.', aCtx);
 l_Obj := aCtx.rEngine.PopObj;
 RunnerAssert(l_Obj is TtfwWord, 'В итератор не передано слово.', aCtx);

 l_Data.rEnumMethod := l_Obj as TtfwWord;
 l_Data.rCtx := @aCtx;
 
 EnumChildWindows(l_Parent, @IterateWindowsMethod, LongInt(@l_Data));
//#UC END# *4DAEEDE10285_510B8104038A_impl*
end;//TkwIterateChildWindows.DoDoIt

class function TkwIterateChildWindows.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'IterateChildWindows';
end;//TkwIterateChildWindows.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.