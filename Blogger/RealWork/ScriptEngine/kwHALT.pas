unit kwHALT;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwHALT.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::CodeFlowWords::HALT
//
// �������� ���������� ������
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
 TkwHALT = {final} class(_tfwAutoregisteringWord_)
  {* �������� ���������� ������ }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwHALT
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwHALT;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwHALT

procedure TkwHALT.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F2163A30300_var*
//#UC END# *4DAEEDE10285_4F2163A30300_var*
begin
//#UC START# *4DAEEDE10285_4F2163A30300_impl*
 raise EtfwHalt.Create('����� �� �������');
//#UC END# *4DAEEDE10285_4F2163A30300_impl*
end;//TkwHALT.DoDoIt

class function TkwHALT.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'HALT';
end;//TkwHALT.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.