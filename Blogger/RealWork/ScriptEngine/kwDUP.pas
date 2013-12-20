unit kwDUP;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwDUP.pas"
// �����: 26.04.2011 20:10
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StandartWords::TkwDUP
//
// ��������� x. ( x -- x x )
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
 TkwDUP = class(_tfwAutoregisteringWord_)
  {* ��������� x. ( x -- x x ) }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwDUP
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwDUP;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwDUP

procedure TkwDUP.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB6EE7300C2_var*
//#UC END# *4DAEEDE10285_4DB6EE7300C2_var*
begin
//#UC START# *4DAEEDE10285_4DB6EE7300C2_impl*
 aCtx.rEngine.Dup;
//#UC END# *4DAEEDE10285_4DB6EE7300C2_impl*
end;//TkwDUP.DoDoIt

class function TkwDUP.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DB6EE7300C2_var*
//#UC END# *4DB0614603C8_4DB6EE7300C2_var*
begin
//#UC START# *4DB0614603C8_4DB6EE7300C2_impl*
 Result := 'DUP';
//#UC END# *4DB0614603C8_4DB6EE7300C2_impl*
end;//TkwDUP.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.