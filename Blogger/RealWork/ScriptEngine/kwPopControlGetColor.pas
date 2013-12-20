unit kwPopControlGetColor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopControlGetColor.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::pop_control_GetColor
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
 TkwPopControlGetColor = {final} class(_kwControlFromStackWord_)
 protected
 // realized methods
   procedure DoControl(aControl: TControl;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopControlGetColor
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

type _Instance_R_ = TkwPopControlGetColor;

{$Include ..\ScriptEngine\kwControlFromStackWord.imp.pas}

// start class TkwPopControlGetColor

procedure TkwPopControlGetColor.DoControl(aControl: TControl;
  const aCtx: TtfwContext);
//#UC START# *4F212C3A015A_5127963E02AA_var*
//#UC END# *4F212C3A015A_5127963E02AA_var*
begin
//#UC START# *4F212C3A015A_5127963E02AA_impl*
 aCtx.rEngine.PushInt(THackControl(aControl).Color);
//#UC END# *4F212C3A015A_5127963E02AA_impl*
end;//TkwPopControlGetColor.DoControl

class function TkwPopControlGetColor.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:control:GetColor';
end;//TkwPopControlGetColor.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwControlFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.