unit kwToPrintable;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwToPrintable.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::TypeChecking::TypeCheckingPack::ToPrintable
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
 TkwToPrintable = {final} class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwToPrintable
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwToPrintable;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwToPrintable

procedure TkwToPrintable.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F50948302D0_var*
//#UC END# *4DAEEDE10285_4F50948302D0_var*
begin
//#UC START# *4DAEEDE10285_4F50948302D0_impl*
 aCtx.rEngine.PushString(aCtx.rEngine.Pop.AsPrintable);
//#UC END# *4DAEEDE10285_4F50948302D0_impl*
end;//TkwToPrintable.DoDoIt

class function TkwToPrintable.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'ToPrintable';
end;//TkwToPrintable.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.