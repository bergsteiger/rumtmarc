unit kwScreenHeight;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwScreenHeight.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::WinUtils::screen_Height
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

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
 TkwScreenHeight = {final} class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwScreenHeight
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  Forms,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwScreenHeight;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwScreenHeight

procedure TkwScreenHeight.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_51AC854700ED_var*
//#UC END# *4DAEEDE10285_51AC854700ED_var*
begin
//#UC START# *4DAEEDE10285_51AC854700ED_impl*
 RunnerAssert(aCtx.rEngine.IsTopInt, '�� ������� ����� ��������.', aCtx);
 aCtx.rEngine.PushInt(Forms.Screen.Monitors[aCtx.rEngine.PopInt].Height);
//#UC END# *4DAEEDE10285_51AC854700ED_impl*
end;//TkwScreenHeight.DoDoIt

class function TkwScreenHeight.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'screen:Height';
end;//TkwScreenHeight.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.