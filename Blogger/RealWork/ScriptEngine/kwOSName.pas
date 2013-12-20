unit kwOSName;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwOSName.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::SysUtils::OSName
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
 TkwOSName = {final} class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwOSName
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  JclSysInfo,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwOSName;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwOSName

procedure TkwOSName.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_51AF57470154_var*
//#UC END# *4DAEEDE10285_51AF57470154_var*
begin
//#UC START# *4DAEEDE10285_51AF57470154_impl*
 aCtx.rEngine.PushString(GetWindowsVersionString);
//#UC END# *4DAEEDE10285_51AF57470154_impl*
end;//TkwOSName.DoDoIt

class function TkwOSName.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'OSName';
end;//TkwOSName.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.