unit kwWindowIsMine;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwWindowIsMine.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::WinUtils::WindowIsMine
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
  Windows,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwHandleWord.imp.pas}
 TkwWindowIsMine = {final} class(_kwHandleWord_)
 protected
 // realized methods
   procedure DoWithHandle(aHandle: THandle;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwWindowIsMine
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwWindowIsMine;

{$Include ..\ScriptEngine\kwHandleWord.imp.pas}

// start class TkwWindowIsMine

procedure TkwWindowIsMine.DoWithHandle(aHandle: THandle;
  const aCtx: TtfwContext);
//#UC START# *510AA0900333_4F9ACA3F03CC_var*
var
 l_Process: DWORD;
//#UC END# *510AA0900333_4F9ACA3F03CC_var*
begin
//#UC START# *510AA0900333_4F9ACA3F03CC_impl*
 GetWindowThreadProcessId(aHandle, l_Process);
 aCtx.rEngine.PushBool(l_Process = GetCurrentProcessId);
//#UC END# *510AA0900333_4F9ACA3F03CC_impl*
end;//TkwWindowIsMine.DoWithHandle

class function TkwWindowIsMine.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'WindowIsMine';
end;//TkwWindowIsMine.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwHandleWord.imp.pas}
{$IfEnd} //not NoScripts

end.