unit kwAssertS;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwAssertS.pas"
// �����: 26.04.2011 21:52
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwAssertS
//
// ���������� Assert, �� ��������� �� ������ ������� �� �����.
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
 TkwAssertS = class(_tfwAutoregisteringWord_)
  {* ���������� Assert, �� ��������� �� ������ ������� �� �����. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwAssertS
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwAssertS;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwAssertS

procedure TkwAssertS.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB7064301B5_var*
var
 l_S : AnsiString;
//#UC END# *4DAEEDE10285_4DB7064301B5_var*
begin
//#UC START# *4DAEEDE10285_4DB7064301B5_impl*
 l_S := aCtx.rEngine.PopDelphiString;
 aCtx.rCaller.Check(aCtx.rEngine.PopBool, l_S);
//#UC END# *4DAEEDE10285_4DB7064301B5_impl*
end;//TkwAssertS.DoDoIt

class function TkwAssertS.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DB7064301B5_var*
//#UC END# *4DB0614603C8_4DB7064301B5_var*
begin
//#UC START# *4DB0614603C8_4DB7064301B5_impl*
 Result := 'ASSERTS';
//#UC END# *4DB0614603C8_4DB7064301B5_impl*
end;//TkwAssertS.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.