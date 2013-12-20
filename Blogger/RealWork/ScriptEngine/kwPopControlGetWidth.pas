unit kwPopControlGetWidth;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopControlGetWidth.pas"
// �����: 11.03.2012 10:53
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::pop_control_GetWidth
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
 TkwPopControlGetWidth = {final} class(_kwControlFromStackWord_)
 protected
 // realized methods
   procedure DoControl(aControl: TControl;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopControlGetWidth
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

type _Instance_R_ = TkwPopControlGetWidth;

{$Include ..\ScriptEngine\kwControlFromStackWord.imp.pas}

// start class TkwPopControlGetWidth

procedure TkwPopControlGetWidth.DoControl(aControl: TControl;
  const aCtx: TtfwContext);
//#UC START# *4F212C3A015A_4F5C4B8C0236_var*
//#UC END# *4F212C3A015A_4F5C4B8C0236_var*
begin
//#UC START# *4F212C3A015A_4F5C4B8C0236_impl*
 aCtx.rEngine.PushInt(aControl.Width);
//#UC END# *4F212C3A015A_4F5C4B8C0236_impl*
end;//TkwPopControlGetWidth.DoControl

class function TkwPopControlGetWidth.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:control:GetWidth';
end;//TkwPopControlGetWidth.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwControlFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.