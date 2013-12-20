unit kwDoPushedWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwDoPushedWord.pas"
// �����: 12.05.2011 14:07
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwDoPushedWord
//
// �������� ���������������� �����.
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
 TkwDoPushedWord = class(_tfwAutoregisteringWord_)
  {* �������� ���������������� �����. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwDoPushedWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwDoPushedWord;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwDoPushedWord

procedure TkwDoPushedWord.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DCBB13702B7_var*
var
 l_V : TtfwStackValue;
//#UC END# *4DAEEDE10285_4DCBB13702B7_var*
begin
//#UC START# *4DAEEDE10285_4DCBB13702B7_impl*
 l_V := aCtx.rEngine.Pop;
 RunnerAssert(l_V.rType = tfw_svtObj, '�� ����� �� ������', aCtx);
 RunnerAssert(l_V.AsObject Is TtfwWord, '�� ����� �� �����', aCtx);
 TtfwWord(l_V.AsObject).DoIt(aCtx);
//#UC END# *4DAEEDE10285_4DCBB13702B7_impl*
end;//TkwDoPushedWord.DoDoIt

class function TkwDoPushedWord.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DCBB13702B7_var*
//#UC END# *4DB0614603C8_4DCBB13702B7_var*
begin
//#UC START# *4DB0614603C8_4DCBB13702B7_impl*
 Result := 'DO';
//#UC END# *4DB0614603C8_4DCBB13702B7_impl*
end;//TkwDoPushedWord.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.