unit kwTUCK;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwTUCK.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StandartWords::TkwTUCK
//
// �������� ������� ������� ����� ���� ������� �������� �����. ( x1 x2 -- x2 x1 x2 )
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
 TkwTUCK = class(_tfwAutoregisteringWord_)
  {* �������� ������� ������� ����� ���� ������� �������� �����. ( x1 x2 -- x2 x1 x2 ) }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwTUCK
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwTUCK;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwTUCK

procedure TkwTUCK.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DEF60B602AF_var*
//#UC END# *4DAEEDE10285_4DEF60B602AF_var*
begin
//#UC START# *4DAEEDE10285_4DEF60B602AF_impl*
 aCtx.rEngine.Tuck;
//#UC END# *4DAEEDE10285_4DEF60B602AF_impl*
end;//TkwTUCK.DoDoIt

class function TkwTUCK.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DEF60B602AF_var*
//#UC END# *4DB0614603C8_4DEF60B602AF_var*
begin
//#UC START# *4DB0614603C8_4DEF60B602AF_impl*
 Result := 'TUCK';
//#UC END# *4DB0614603C8_4DEF60B602AF_impl*
end;//TkwTUCK.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.