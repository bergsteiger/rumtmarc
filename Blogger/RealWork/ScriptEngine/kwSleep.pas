unit kwSleep;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwSleep.pas"
// �����: 29.04.2011 21:35
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwSleep
//
// ������������ �� �������� ���������� �������.
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
 TkwSleep = class(_tfwAutoregisteringWord_)
  {* ������������ �� �������� ���������� �������. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwSleep
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwSleep;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwSleep

procedure TkwSleep.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DBAF6B3007F_var*
//#UC END# *4DAEEDE10285_4DBAF6B3007F_var*
begin
//#UC START# *4DAEEDE10285_4DBAF6B3007F_impl*
 Sleep(aCtx.rEngine.PopInt);
//#UC END# *4DAEEDE10285_4DBAF6B3007F_impl*
end;//TkwSleep.DoDoIt

class function TkwSleep.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DBAF6B3007F_var*
//#UC END# *4DB0614603C8_4DBAF6B3007F_var*
begin
//#UC START# *4DB0614603C8_4DBAF6B3007F_impl*
 Result := 'SLEEP';
//#UC END# *4DB0614603C8_4DBAF6B3007F_impl*
end;//TkwSleep.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.