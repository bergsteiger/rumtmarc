unit kwMouseSetCursorPosition;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwMouseSetCursorPosition.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::MouseInput::mouse_SetCursorPosition
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
 TkwMouseSetCursorPosition = class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwMouseSetCursorPosition
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  Windows,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwMouseSetCursorPosition;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwMouseSetCursorPosition

procedure TkwMouseSetCursorPosition.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4EF0939D025E_var*
var
 X, Y: Integer;
//#UC END# *4DAEEDE10285_4EF0939D025E_var*
begin
//#UC START# *4DAEEDE10285_4EF0939D025E_impl*
 RunnerAssert(aCtx.rEngine.IsTopInt, '�� ������ ���������� ��� ����� mouse:SetCursorPosition', aCtx);
 Y := aCtx.rEngine.PopInt;
 RunnerAssert(aCtx.rEngine.IsTopInt, '�� ������ ���������� ��� ����� mouse:SetCursorPosition', aCtx);
 X := aCtx.rEngine.PopInt;
 Windows.SetCursorPos(X, Y);
//#UC END# *4DAEEDE10285_4EF0939D025E_impl*
end;//TkwMouseSetCursorPosition.DoDoIt

class function TkwMouseSetCursorPosition.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'mouse:SetCursorPosition';
end;//TkwMouseSetCursorPosition.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.