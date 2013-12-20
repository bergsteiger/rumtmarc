unit kwRandomize;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwRandomize.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::SysUtils::Randomize
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
 TkwRandomize = {final} class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwRandomize
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwRandomize;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwRandomize

procedure TkwRandomize.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_50599E4403E1_var*
//#UC END# *4DAEEDE10285_50599E4403E1_var*
begin
//#UC START# *4DAEEDE10285_50599E4403E1_impl*
 Randomize;
//#UC END# *4DAEEDE10285_50599E4403E1_impl*
end;//TkwRandomize.DoDoIt

class function TkwRandomize.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'Randomize';
end;//TkwRandomize.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.