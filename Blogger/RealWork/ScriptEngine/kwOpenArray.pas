unit kwOpenArray;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwOpenArray.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ArrayProcessing::OpenArray
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
 TkwOpenArray = {final} class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwOpenArray
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwOpenArray;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwOpenArray

procedure TkwOpenArray.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F5037E30231_var*
//#UC END# *4DAEEDE10285_4F5037E30231_var*
begin
//#UC START# *4DAEEDE10285_4F5037E30231_impl*
 aCtx.rEngine.PushBracket;
//#UC END# *4DAEEDE10285_4F5037E30231_impl*
end;//TkwOpenArray.DoDoIt

class function TkwOpenArray.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := '[[';
end;//TkwOpenArray.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.