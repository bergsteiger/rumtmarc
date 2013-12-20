unit kwPopControlScreenToClient;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopControlScreenToClient.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::pop_control_ScreenToClient
//
// X Y pop:Control:ScreenToClient - ��������� ���������� ���������� ������������ ��������� �����
// ������ � ���������� ������������ ��������. � ����� ����� ��� �������� � ��� �� �������.
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
 TkwPopControlScreenToClient = {final} class(_kwControlFromStackWord_)
  {* X Y pop:Control:ScreenToClient - ��������� ���������� ���������� ������������ ��������� ����� ������ � ���������� ������������ ��������. � ����� ����� ��� �������� � ��� �� �������. }
 protected
 // realized methods
   procedure DoControl(aControl: TControl;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopControlScreenToClient
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  Types,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopControlScreenToClient;

{$Include ..\ScriptEngine\kwControlFromStackWord.imp.pas}

// start class TkwPopControlScreenToClient

procedure TkwPopControlScreenToClient.DoControl(aControl: TControl;
  const aCtx: TtfwContext);
//#UC START# *4F212C3A015A_4F7151D10065_var*
var
 l_X: Integer;
 l_Y: Integer;
 l_Point: TPoint;
//#UC END# *4F212C3A015A_4F7151D10065_var*
begin
//#UC START# *4F212C3A015A_4F7151D10065_impl*
 l_X := 0;
 l_Y := 0;
 RunnerAssert(aCtx.rEngine.IsTopInt, '�� ������ Y-����������!', aCtx);
 l_Y := aCtx.rEngine.PopInt;
 RunnerAssert(aCtx.rEngine.IsTopInt, '�� ������ X-����������!', aCtx);
 l_X := aCtx.rEngine.PopInt;
 
 l_Point := aControl.ScreenToClient((Point(l_X, l_Y)));
 aCtx.rEngine.PushInt(l_Point.X);
 aCtx.rEngine.PushInt(l_Point.Y);
//#UC END# *4F212C3A015A_4F7151D10065_impl*
end;//TkwPopControlScreenToClient.DoControl

class function TkwPopControlScreenToClient.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:control:ScreenToClient';
end;//TkwPopControlScreenToClient.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwControlFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.