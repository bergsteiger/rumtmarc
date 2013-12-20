unit kwStopTimer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwStopTimer.pas"
// �����: 16.01.2012 21:13
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::SysUtils::StopTimer
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
 TkwStopTimer = class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwStopTimer
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwStopTimer;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwStopTimer

procedure TkwStopTimer.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F145AAC03CB_var*
var
 l_S : AnsiString;
//#UC END# *4DAEEDE10285_4F145AAC03CB_var*
begin
//#UC START# *4DAEEDE10285_4F145AAC03CB_impl*
 l_S := aCtx.rEngine.PopDelphiString;
 aCtx.rEngine.PushInt(aCtx.rCaller.StopTimer(l_S));
//#UC END# *4DAEEDE10285_4F145AAC03CB_impl*
end;//TkwStopTimer.DoDoIt

class function TkwStopTimer.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'StopTimer';
end;//TkwStopTimer.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.