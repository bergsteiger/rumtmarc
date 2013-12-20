unit kwLessThenZero;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwLessThenZero.pas"
// �����: 26.04.2011 20:15
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StandartWords::TkwLessThenZero
//
// < 0                              "zero-less"
// ( n -- flag )
// flag - true, ���� � ������ ���� n - ������ ����.
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
 TkwLessThenZero = class(_tfwAutoregisteringWord_)
  {* < 0                              "zero-less"                   
( n -- flag )
            flag - true, ���� � ������ ���� n - ������ ����. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwLessThenZero
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwLessThenZero;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwLessThenZero

procedure TkwLessThenZero.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB6ED33030C_var*
//#UC END# *4DAEEDE10285_4DB6ED33030C_var*
begin
//#UC START# *4DAEEDE10285_4DB6ED33030C_impl*
 aCtx.rEngine.PushBool(aCtx.rEngine.PopInt < 0);
//#UC END# *4DAEEDE10285_4DB6ED33030C_impl*
end;//TkwLessThenZero.DoDoIt

class function TkwLessThenZero.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DB6ED33030C_var*
//#UC END# *4DB0614603C8_4DB6ED33030C_var*
begin
//#UC START# *4DB0614603C8_4DB6ED33030C_impl*
 Result := '<0';
//#UC END# *4DB0614603C8_4DB6ED33030C_impl*
end;//TkwLessThenZero.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.