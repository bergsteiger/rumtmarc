unit kwDec;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwDec.pas"
// �����: 26.04.2011 20:53
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StandartWords::TkwDec
//
// '--'. ��������� ������� �������� � ����� �� �������.
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
 TkwDec = class(_tfwAutoregisteringWord_)
  {* '--'. ��������� ������� �������� � ����� �� �������. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwDec
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwDec;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwDec

procedure TkwDec.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB6F88E028D_var*
//#UC END# *4DAEEDE10285_4DB6F88E028D_var*
begin
//#UC START# *4DAEEDE10285_4DB6F88E028D_impl*
 aCtx.rEngine.PushInt(aCtx.rEngine.PopInt - 1);
//#UC END# *4DAEEDE10285_4DB6F88E028D_impl*
end;//TkwDec.DoDoIt

class function TkwDec.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DB6F88E028D_var*
//#UC END# *4DB0614603C8_4DB6F88E028D_var*
begin
//#UC START# *4DB0614603C8_4DB6F88E028D_impl*
 Result := '--';
//#UC END# *4DB0614603C8_4DB6F88E028D_impl*
end;//TkwDec.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.