unit kwEtalonNeedsXE;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwEtalonNeedsXE.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::EtalonNeedsXE
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
 TkwEtalonNeedsXE = {final} class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwEtalonNeedsXE
{$IfEnd} //not NoScripts

  {$If not defined(NoScripts)}
var
   g_EtalonNeedsXE : Boolean = false;
  {$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwEtalonNeedsXE;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwEtalonNeedsXE

procedure TkwEtalonNeedsXE.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_51AF4A900048_var*
//#UC END# *4DAEEDE10285_51AF4A900048_var*
begin
//#UC START# *4DAEEDE10285_51AF4A900048_impl*
 g_EtalonNeedsXE := true;
//#UC END# *4DAEEDE10285_51AF4A900048_impl*
end;//TkwEtalonNeedsXE.DoDoIt

class function TkwEtalonNeedsXE.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'EtalonNeedsXE';
end;//TkwEtalonNeedsXE.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.