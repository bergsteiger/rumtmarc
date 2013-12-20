unit kwNIP;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwNIP.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StandartWords::TkwNIP
//
// ������� ������ ������� ���� ������� �����. ( x1 x2 -- x2 )
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
 TkwNIP = class(_tfwAutoregisteringWord_)
  {* ������� ������ ������� ���� ������� �����. ( x1 x2 -- x2 ) }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwNIP
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwNIP;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwNIP

procedure TkwNIP.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DEF60AD017D_var*
//#UC END# *4DAEEDE10285_4DEF60AD017D_var*
begin
//#UC START# *4DAEEDE10285_4DEF60AD017D_impl*
 aCtx.rEngine.Nip;
//#UC END# *4DAEEDE10285_4DEF60AD017D_impl*
end;//TkwNIP.DoDoIt

class function TkwNIP.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DEF60AD017D_var*
//#UC END# *4DB0614603C8_4DEF60AD017D_var*
begin
//#UC START# *4DB0614603C8_4DEF60AD017D_impl*
 Result := 'NIP';
//#UC END# *4DB0614603C8_4DEF60AD017D_impl*
end;//TkwNIP.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.