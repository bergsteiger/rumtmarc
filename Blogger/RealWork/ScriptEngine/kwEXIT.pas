unit kwEXIT;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwEXIT.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::CodeFlowWords::EXIT
//
// ����� �� ���������
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
 TkwEXIT = {final} class(_tfwAutoregisteringWord_)
  {* ����� �� ��������� }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwEXIT
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwEXIT;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwEXIT

procedure TkwEXIT.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F21639A0328_var*
//#UC END# *4DAEEDE10285_4F21639A0328_var*
begin
//#UC START# *4DAEEDE10285_4F21639A0328_impl*
 raise EtfwExit.Create('����� �� ���������');
//#UC END# *4DAEEDE10285_4F21639A0328_impl*
end;//TkwEXIT.DoDoIt

class function TkwEXIT.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'EXIT';
end;//TkwEXIT.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.