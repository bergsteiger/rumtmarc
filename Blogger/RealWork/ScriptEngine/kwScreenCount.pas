unit kwScreenCount;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwScreenCount.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::WinUtils::ScreenCount
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
 TkwScreenCount = {final} class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwScreenCount
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

type _Instance_R_ = TkwScreenCount;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwScreenCount

procedure TkwScreenCount.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_51AC892D00DC_var*
//#UC END# *4DAEEDE10285_51AC892D00DC_var*
begin
//#UC START# *4DAEEDE10285_51AC892D00DC_impl*
 aCtx.rEngine.PushInt(Forms.Screen.MonitorCount);
//#UC END# *4DAEEDE10285_51AC892D00DC_impl*
end;//TkwScreenCount.DoDoIt

class function TkwScreenCount.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'ScreenCount';
end;//TkwScreenCount.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.