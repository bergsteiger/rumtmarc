unit kwVcmDispatcherLock;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwVcmDispatcherLock.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::VCMWords::vcm_Dispatcher_Lock
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
 TkwVcmDispatcherLock = {final} class(_VCMWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwVcmDispatcherLock
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

type _Instance_R_ = TkwVcmDispatcherLock;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

{$Include ..\ScriptEngine\VCMWord.imp.pas}

// start class TkwVcmDispatcherLock

procedure TkwVcmDispatcherLock.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F69B99001E0_var*
//#UC END# *4DAEEDE10285_4F69B99001E0_var*
begin
//#UC START# *4DAEEDE10285_4F69B99001E0_impl*
 vcmDispatcher.FormDispatcher.Lock;
//#UC END# *4DAEEDE10285_4F69B99001E0_impl*
end;//TkwVcmDispatcherLock.DoDoIt

class function TkwVcmDispatcherLock.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'vcm:Dispatcher:Lock';
end;//TkwVcmDispatcherLock.GetWordNameForRegister

{$IfEnd} //not NoScripts AND not NoVCM

initialization
{$If not defined(NoScripts) AND not defined(NoVCM)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts AND not NoVCM

end.