unit kwControlMouseLeftDragAndDrop;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwControlMouseLeftDragAndDrop.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::control_MouseLeftDragAndDrop
//
// X Y aDeltaX aDeltaY aControl control:MouseLeftDragAndDrop - ���������� �������� Drag&Drop ��
// ������� � ������� ����. ����������� ������� �� ����� ������ ���� �� ����������� X Y, �������� �
// �� aDeltaX aDeltaY � ���������� ������ � �������� aControl.
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
 TkwControlMouseLeftDragAndDrop = {final} class(_kwControlFromStackWord_)
  {* X Y aDeltaX aDeltaY aControl control:MouseLeftDragAndDrop - ���������� �������� Drag&Drop �� ������� � ������� ����. ����������� ������� �� ����� ������ ���� �� ����������� X Y, �������� � �� aDeltaX aDeltaY � ���������� ������ � �������� aControl. }
 protected
 // realized methods
   procedure DoControl(aControl: TControl;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwControlMouseLeftDragAndDrop
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  Messages,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwControlMouseLeftDragAndDrop;

{$Include ..\ScriptEngine\kwControlFromStackWord.imp.pas}

// start class TkwControlMouseLeftDragAndDrop

procedure TkwControlMouseLeftDragAndDrop.DoControl(aControl: TControl;
  const aCtx: TtfwContext);
//#UC START# *4F212C3A015A_51AF028701A0_var*
var
 l_Pos       : TPoint;
 l_Pos1      : TPoint;
 l_X, l_Y    : Integer;
 l_DeltaX    : Integer;
 l_DeltaY    : Integer;
 l_MousePos  : TSmallPoint;
 l_MousePos1 : TSmallPoint;
 l_WinControl: TWinControl;
//#UC END# *4F212C3A015A_51AF028701A0_var*
begin
//#UC START# *4F212C3A015A_51AF028701A0_impl*
 RunnerAssert(aCtx.rEngine.IsTopInt, '�� ������ �������� �� ��� Y!', aCtx);
 l_DeltaY := aCtx.rEngine.PopInt;
 RunnerAssert(aCtx.rEngine.IsTopInt, '�� ������ �������� �� ��� X!', aCtx);
 l_DeltaX := aCtx.rEngine.PopInt;
 RunnerAssert(aCtx.rEngine.IsTopInt, '�� ������ ���������� ��� ������ �����!', aCtx);
 l_Y := aCtx.rEngine.PopInt;
 RunnerAssert(aCtx.rEngine.IsTopInt, '�� ������ ���������� ��� ������ �����!', aCtx);
 l_X := aCtx.rEngine.PopInt;
 l_WinControl := aControl as TWinControl;

 with aControl.BoundsRect do
 begin
  l_Pos := Point(Left + l_X, Top + l_Y);
  l_Pos1 := Point(l_Pos.X + l_DeltaX, l_Pos.Y + l_DeltaY);
 end; 
 l_MousePos := PointToSmallPoint(l_Pos);
 l_MousePos1 := PointToSmallPoint(l_Pos1);

 SendMessage(l_WinControl.Handle, WM_LBUTTONDOWN, 0, Longint(l_MousePos));
 SendMessage(l_WinControl.Handle, WM_MOUSEMOVE, 0, Longint(l_MousePos1));
 SendMessage(l_WinControl.Handle, WM_LBUTTONUP, 0, Longint(l_MousePos1));
//#UC END# *4F212C3A015A_51AF028701A0_impl*
end;//TkwControlMouseLeftDragAndDrop.DoControl

class function TkwControlMouseLeftDragAndDrop.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'control:MouseLeftDragAndDrop';
end;//TkwControlMouseLeftDragAndDrop.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwControlFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.