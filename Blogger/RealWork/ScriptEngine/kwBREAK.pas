unit kwBREAK;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwBREAK.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::CodeFlowWords::BREAK
//
// ����� �� �����
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
 TkwBREAK = {final} class(_tfwAutoregisteringWord_)
  {* ����� �� ����� }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwBREAK
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwBREAK;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwBREAK

procedure TkwBREAK.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F21638103BE_var*
//#UC END# *4DAEEDE10285_4F21638103BE_var*
begin
//#UC START# *4DAEEDE10285_4F21638103BE_impl*
 raise EtfwBreak.Create('����� �� �����');
//#UC END# *4DAEEDE10285_4F21638103BE_impl*
end;//TkwBREAK.DoDoIt

class function TkwBREAK.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'BREAK';
end;//TkwBREAK.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.