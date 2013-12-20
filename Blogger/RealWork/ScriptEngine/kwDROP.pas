unit kwDROP;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwDROP.pas"
// �����: 26.04.2011 20:17
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StandartWords::TkwDROP
//
// ������� x �� �����. ( x -- )
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
 TkwDROP = class(_tfwAutoregisteringWord_)
  {* ������� x �� �����. ( x -- ) }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwDROP
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwDROP;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwDROP

procedure TkwDROP.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB6F013037E_var*
//#UC END# *4DAEEDE10285_4DB6F013037E_var*
begin
//#UC START# *4DAEEDE10285_4DB6F013037E_impl*
 aCtx.rEngine.Drop;
//#UC END# *4DAEEDE10285_4DB6F013037E_impl*
end;//TkwDROP.DoDoIt

class function TkwDROP.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DB6F013037E_var*
//#UC END# *4DB0614603C8_4DB6F013037E_var*
begin
//#UC START# *4DB0614603C8_4DB6F013037E_impl*
 Result := 'DROP';
//#UC END# *4DB0614603C8_4DB6F013037E_impl*
end;//TkwDROP.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.