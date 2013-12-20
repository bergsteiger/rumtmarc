unit kwLessThan;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwLessThan.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StandartWords::TkwLessThan
//
// <  "less-than"
// ( n1 n2 -- flag )
// flag - true, ���� � ������ ���� n1 - ������ ��� n2.
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
 TkwLessThan = class(_tfwAutoregisteringWord_)
  {* <  "less-than"
( n1 n2 -- flag )
            flag - true, ���� � ������ ���� n1 - ������ ��� n2. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwLessThan
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwLessThan;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwLessThan

procedure TkwLessThan.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4E01D6FC026C_var*
var
 l_Value: TtfwStackValue;
//#UC END# *4DAEEDE10285_4E01D6FC026C_var*
begin
//#UC START# *4DAEEDE10285_4E01D6FC026C_impl*
 l_Value := aCtx.rEngine.Pop;
 if aCtx.rEngine.IsTopBool then
 begin
  RunnerAssert(l_Value.rType = tfw_svtBool, '������������ �������� ������ �����.', aCtx);
  aCtx.rEngine.PushBool(l_Value.AsBoolean > aCtx.rEngine.PopBool)
 end // if aCtx.rEngine.IsTopBool then
 else
  if aCtx.rEngine.IsTopInt then
  begin
   RunnerAssert(l_Value.rType = tfw_svtInt, '������������ �������� ������ �����.', aCtx);
   aCtx.rEngine.PushBool(l_Value.rInteger > aCtx.rEngine.PopInt)
  end //if aCtx.rEngine.IsTopInt then
  else
   RunnerAssert(False, '�������������� ����.', aCtx);
//#UC END# *4DAEEDE10285_4E01D6FC026C_impl*
end;//TkwLessThan.DoDoIt

class function TkwLessThan.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4E01D6FC026C_var*
//#UC END# *4DB0614603C8_4E01D6FC026C_var*
begin
//#UC START# *4DB0614603C8_4E01D6FC026C_impl*
 Result := '<';
//#UC END# *4DB0614603C8_4E01D6FC026C_impl*
end;//TkwLessThan.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.