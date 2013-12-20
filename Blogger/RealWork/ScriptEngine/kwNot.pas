unit kwNot;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwNot.pas"
// �����: 29.04.2011 18:34
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StandartWords::TkwNot
//
// NEGATE
// ( n1 -- n2 )
// ��������� n1, ���������� ��� �������������� �������� n2.
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
 TkwNot = class(_tfwAutoregisteringWord_)
  {* NEGATE                                                          
( n1 -- n2 )
            ��������� n1, ���������� ��� �������������� �������� n2. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwNot
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwNot;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwNot

procedure TkwNot.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DBACC4803A6_var*
//#UC END# *4DAEEDE10285_4DBACC4803A6_var*
begin
//#UC START# *4DAEEDE10285_4DBACC4803A6_impl*
 RunnerAssert(aCtx.rEngine.IsTopBool, '� ����� "!" �������� ����������� ��������!', aCtx);
 aCtx.rEngine.PushBool(not aCtx.rEngine.PopBool);
//#UC END# *4DAEEDE10285_4DBACC4803A6_impl*
end;//TkwNot.DoDoIt

class function TkwNot.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DBACC4803A6_var*
//#UC END# *4DB0614603C8_4DBACC4803A6_var*
begin
//#UC START# *4DB0614603C8_4DBACC4803A6_impl*
 Result := '!';
//#UC END# *4DB0614603C8_4DBACC4803A6_impl*
end;//TkwNot.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.