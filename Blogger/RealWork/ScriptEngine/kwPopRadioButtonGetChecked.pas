unit kwPopRadioButtonGetChecked;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopRadioButtonGetChecked.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::vtControlsFromStackWords::pop_RadioButton_GetChecked
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
  StdCtrls,
  tfwScriptingInterfaces,
  Controls,
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwRadioButtonFromStackWord.imp.pas}
 TkwPopRadioButtonGetChecked = {final} class(_kwRadioButtonFromStackWord_)
 protected
 // realized methods
   procedure DoWithRadioButton(aControl: TRadioButton;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopRadioButtonGetChecked
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

type _Instance_R_ = TkwPopRadioButtonGetChecked;

{$Include ..\ScriptEngine\kwRadioButtonFromStackWord.imp.pas}

// start class TkwPopRadioButtonGetChecked

procedure TkwPopRadioButtonGetChecked.DoWithRadioButton(aControl: TRadioButton;
  const aCtx: TtfwContext);
//#UC START# *4F69B9D303C5_4F69BA6D0290_var*
//#UC END# *4F69B9D303C5_4F69BA6D0290_var*
begin
//#UC START# *4F69B9D303C5_4F69BA6D0290_impl*
 aCtx.rEngine.PushBool(aControl.Checked);
//#UC END# *4F69B9D303C5_4F69BA6D0290_impl*
end;//TkwPopRadioButtonGetChecked.DoWithRadioButton

class function TkwPopRadioButtonGetChecked.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:RadioButton:GetChecked';
end;//TkwPopRadioButtonGetChecked.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwRadioButtonFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.