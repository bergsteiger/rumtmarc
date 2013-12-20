unit kwPopControlGetHint;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopControlGetHint.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::pop_control_GetHint
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
  Controls,
  tfwScriptingInterfaces,
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwControlFromStackWord.imp.pas}
 TkwPopControlGetHint = {final} class(_kwControlFromStackWord_)
 protected
 // realized methods
   procedure DoControl(aControl: TControl;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopControlGetHint
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopControlGetHint;

{$Include ..\ScriptEngine\kwControlFromStackWord.imp.pas}

// start class TkwPopControlGetHint

procedure TkwPopControlGetHint.DoControl(aControl: TControl;
  const aCtx: TtfwContext);
//#UC START# *4F212C3A015A_4F914DC10181_var*
//#UC END# *4F212C3A015A_4F914DC10181_var*
begin
//#UC START# *4F212C3A015A_4F914DC10181_impl*
 aCtx.rEngine.PushString(aControl.Hint);
//#UC END# *4F212C3A015A_4F914DC10181_impl*
end;//TkwPopControlGetHint.DoControl

class function TkwPopControlGetHint.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:control:GetHint';
end;//TkwPopControlGetHint.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwControlFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.