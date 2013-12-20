unit kwNOP;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwNOP.pas"
// �����: 29.04.2011 21:24
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwNOP
//
// ������ ��������.
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
 TkwNOP = class(_tfwAutoregisteringWord_)
  {* ������ ��������. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwNOP
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwNOP;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwNOP

procedure TkwNOP.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DBAF42101B0_var*
//#UC END# *4DAEEDE10285_4DBAF42101B0_var*
begin
//#UC START# *4DAEEDE10285_4DBAF42101B0_impl*
 // - ��������� ������ �� ������
//#UC END# *4DAEEDE10285_4DBAF42101B0_impl*
end;//TkwNOP.DoDoIt

class function TkwNOP.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DBAF42101B0_var*
//#UC END# *4DB0614603C8_4DBAF42101B0_var*
begin
//#UC START# *4DB0614603C8_4DBAF42101B0_impl*
 Result := 'NOP';
//#UC END# *4DB0614603C8_4DBAF42101B0_impl*
end;//TkwNOP.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.