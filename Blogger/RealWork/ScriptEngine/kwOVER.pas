unit kwOVER;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwOVER.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StandartWords::TkwOVER
//
// �������� ����� x1 �� ������� �����. ( x1 x2 -- x1 x2 x1 )
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
 TkwOVER = class(_tfwAutoregisteringWord_)
  {* �������� ����� x1 �� ������� �����. ( x1 x2 -- x1 x2 x1 ) }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwOVER
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwOVER;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwOVER

procedure TkwOVER.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DF0633A014A_var*
//#UC END# *4DAEEDE10285_4DF0633A014A_var*
begin
//#UC START# *4DAEEDE10285_4DF0633A014A_impl*
 aCtx.rEngine.Over;
//#UC END# *4DAEEDE10285_4DF0633A014A_impl*
end;//TkwOVER.DoDoIt

class function TkwOVER.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DF0633A014A_var*
//#UC END# *4DB0614603C8_4DF0633A014A_var*
begin
//#UC START# *4DB0614603C8_4DF0633A014A_impl*
 Result := 'OVER';
//#UC END# *4DB0614603C8_4DF0633A014A_impl*
end;//TkwOVER.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.