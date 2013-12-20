unit kwAssert;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwAssert.pas"
// �����: 26.04.2011 21:51
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwAssert
//
// ������� Assert.
// ������:
// {code}
// waited:? ASSERT
// {code}
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
 TkwAssert = class(_tfwAutoregisteringWord_)
  {* ������� Assert. 
������:
[code]
 waited:? ASSERT
[code] }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwAssert
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwAssert;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwAssert

procedure TkwAssert.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB7061001B9_var*
//#UC END# *4DAEEDE10285_4DB7061001B9_var*
begin
//#UC START# *4DAEEDE10285_4DB7061001B9_impl*
 aCtx.rCaller.Check(aCtx.rEngine.PopBool);
//#UC END# *4DAEEDE10285_4DB7061001B9_impl*
end;//TkwAssert.DoDoIt

class function TkwAssert.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DB7061001B9_var*
//#UC END# *4DB0614603C8_4DB7061001B9_var*
begin
//#UC START# *4DB0614603C8_4DB7061001B9_impl*
 Result := 'ASSERT';
//#UC END# *4DB0614603C8_4DB7061001B9_impl*
end;//TkwAssert.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.