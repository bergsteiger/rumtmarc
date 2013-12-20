unit kwPopSpinEditSetValue;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopSpinEditSetValue.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::vtControlsFromStackWords::pop_SpinEdit_SetValue
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
  vtSpinEdit,
  tfwScriptingInterfaces,
  Controls,
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwSpintEditFromStackWord.imp.pas}
 TkwPopSpinEditSetValue = {final} class(_kwSpintEditFromStackWord_)
 protected
 // realized methods
   procedure DoSpinEdit(aControl: TvtSpinEdit;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopSpinEditSetValue
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

type _Instance_R_ = TkwPopSpinEditSetValue;

{$Include ..\ScriptEngine\kwSpintEditFromStackWord.imp.pas}

// start class TkwPopSpinEditSetValue

procedure TkwPopSpinEditSetValue.DoSpinEdit(aControl: TvtSpinEdit;
  const aCtx: TtfwContext);
//#UC START# *4F609622016F_4F60969602B7_var*
//#UC END# *4F609622016F_4F60969602B7_var*
begin
//#UC START# *4F609622016F_4F60969602B7_impl*
 if aCtx.rEngine.IsTopInt then
  aControl.AsInteger := aCtx.rEngine.PopInt
 else
  Assert(False, '�� ������ �������� ��� SpinEdit!');
//#UC END# *4F609622016F_4F60969602B7_impl*
end;//TkwPopSpinEditSetValue.DoSpinEdit

class function TkwPopSpinEditSetValue.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:SpinEdit:SetValue';
end;//TkwPopSpinEditSetValue.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwSpintEditFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.