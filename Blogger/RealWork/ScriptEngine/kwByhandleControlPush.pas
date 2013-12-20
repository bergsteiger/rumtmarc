unit kwByhandleControlPush;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwByhandleControlPush.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::byhandle_control_push
//
// ���� ������� �� ����������� ����.
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
 TkwByhandleControlPush = {final} class(_tfwAutoregisteringWord_)
  {* ���� ������� �� ����������� ����. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwByhandleControlPush
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  Controls,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwByhandleControlPush;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwByhandleControlPush

procedure TkwByhandleControlPush.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F85557E028E_var*
var
 l_Control: TWinControl;
//#UC END# *4DAEEDE10285_4F85557E028E_var*
begin
//#UC START# *4DAEEDE10285_4F85557E028E_impl*
 if aCtx.rEngine.IsTopInt then
 begin
  l_Control := FindControl(aCtx.rEngine.PopInt);
  RunnerAssert(Assigned(l_Control), '�� ������ �������.', aCtx);
  aCtx.rEngine.PushObj(l_Control);
 end else
  RunnerAssert(False, '�� ������ ����������.', aCtx);
//#UC END# *4DAEEDE10285_4F85557E028E_impl*
end;//TkwByhandleControlPush.DoDoIt

class function TkwByhandleControlPush.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'byhandle:control:push';
end;//TkwByhandleControlPush.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.