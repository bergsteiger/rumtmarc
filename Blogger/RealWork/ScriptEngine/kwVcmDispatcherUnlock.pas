unit kwVcmDispatcherUnlock;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwVcmDispatcherUnlock.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::VCMWords::vcm_Dispatcher_Unlock
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts) AND not defined(NoVCM)}
uses
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts AND not NoVCM

{$If not defined(NoScripts) AND not defined(NoVCM)}
type
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 _VCMWord_Parent_ = _tfwAutoregisteringWord_;
 {$Include ..\ScriptEngine\VCMWord.imp.pas}
 TkwVcmDispatcherUnlock = {final} class(_VCMWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwVcmDispatcherUnlock
{$IfEnd} //not NoScripts AND not NoVCM

implementation

{$If not defined(NoScripts) AND not defined(NoVCM)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  vcmForm,
  Controls,
  StdResPrim,
  vcmBase
  {$If defined(nsTest)}
  ,
  afwAnswer
  {$IfEnd} //nsTest
  
  ;
{$IfEnd} //not NoScripts AND not NoVCM

{$If not defined(NoScripts) AND not defined(NoVCM)}

type _Instance_R_ = TkwVcmDispatcherUnlock;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

{$Include ..\ScriptEngine\VCMWord.imp.pas}

// start class TkwVcmDispatcherUnlock

procedure TkwVcmDispatcherUnlock.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F69B9AD0040_var*
//#UC END# *4DAEEDE10285_4F69B9AD0040_var*
begin
//#UC START# *4DAEEDE10285_4F69B9AD0040_impl*
 vcmDispatcher.FormDispatcher.Unlock;
//#UC END# *4DAEEDE10285_4F69B9AD0040_impl*
end;//TkwVcmDispatcherUnlock.DoDoIt

class function TkwVcmDispatcherUnlock.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'vcm:Dispatcher:Unlock';
end;//TkwVcmDispatcherUnlock.GetWordNameForRegister

{$IfEnd} //not NoScripts AND not NoVCM

initialization
{$If not defined(NoScripts) AND not defined(NoVCM)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts AND not NoVCM

end.