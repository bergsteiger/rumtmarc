unit kwPopControlSetHeight;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopControlSetHeight.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::pop_control_SetHeight
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
 TkwPopControlSetHeight = {final} class(_kwControlFromStackWord_)
 protected
 // realized methods
   procedure DoControl(aControl: TControl;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopControlSetHeight
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

type _Instance_R_ = TkwPopControlSetHeight;

{$Include ..\ScriptEngine\kwControlFromStackWord.imp.pas}

// start class TkwPopControlSetHeight

procedure TkwPopControlSetHeight.DoControl(aControl: TControl;
  const aCtx: TtfwContext);
//#UC START# *4F212C3A015A_4F7C57CD01E3_var*
//#UC END# *4F212C3A015A_4F7C57CD01E3_var*
begin
//#UC START# *4F212C3A015A_4F7C57CD01E3_impl*
 RunnerAssert(aCtx.rEngine.IsTopInt, '�� ������ �������� ������ ��������!', aCtx);
 aControl.Height := aCtx.rEngine.PopInt;
//#UC END# *4F212C3A015A_4F7C57CD01E3_impl*
end;//TkwPopControlSetHeight.DoControl

class function TkwPopControlSetHeight.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:control:SetHeight';
end;//TkwPopControlSetHeight.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwControlFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.