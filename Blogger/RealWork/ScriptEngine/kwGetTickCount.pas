unit kwGetTickCount;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwGetTickCount.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::SysUtils::GetTickCount
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
 TkwGetTickCount = {final} class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwGetTickCount
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  Windows,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwGetTickCount;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwGetTickCount

procedure TkwGetTickCount.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4FEF0704038A_var*
//#UC END# *4DAEEDE10285_4FEF0704038A_var*
begin
//#UC START# *4DAEEDE10285_4FEF0704038A_impl*
 aCtx.rEngine.PushInt(GetTickCount);
//#UC END# *4DAEEDE10285_4FEF0704038A_impl*
end;//TkwGetTickCount.DoDoIt

class function TkwGetTickCount.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'GetTickCount';
end;//TkwGetTickCount.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.