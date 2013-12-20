unit kwVgControlClick;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwVgControlClick.pas"
// �����: 12.12.2011 18:15
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::VGSceneWords::vg_control_Click
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts) AND not defined(NoVGScene)}
uses
  vgVisualObject,
  tfwScriptingInterfaces,
  Classes
  ;
{$IfEnd} //not NoScripts AND not NoVGScene

{$If not defined(NoScripts) AND not defined(NoVGScene)}
type
 {$Include ..\ScriptEngine\kwVGVisualObjectWord.imp.pas}
 TkwVgControlClick = class(_kwVGVisualObjectWord_)
 protected
 // realized methods
   procedure DoVisualObject(anObject: TvgVisualObject;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwVgControlClick
{$IfEnd} //not NoScripts AND not NoVGScene

implementation

{$If not defined(NoScripts) AND not defined(NoVGScene)}
uses
  vg_controls,
  vg_listbox,
  vg_scene
  {$If not defined(NoVCM)}
  ,
  vcmForm
  {$IfEnd} //not NoVCM
  ,
  afwFacade,
  Controls,
  Windows,
  Forms,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts AND not NoVGScene

{$If not defined(NoScripts) AND not defined(NoVGScene)}

type _Instance_R_ = TkwVgControlClick;

{$Include ..\ScriptEngine\kwVGVisualObjectWord.imp.pas}

// start class TkwVgControlClick

procedure TkwVgControlClick.DoVisualObject(anObject: TvgVisualObject;
  const aCtx: TtfwContext);
//#UC START# *4EE605B00380_4EE60C350236_var*
//#UC END# *4EE605B00380_4EE60C350236_var*
begin
//#UC START# *4EE605B00380_4EE60C350236_impl*
// TvgHackVisualObject(anObject).Click;

 with TvgHackVisualObject(anObject) do
 begin
  MouseDown(mbLeft, [], 0, 0);
  MouseUp(mbLeft, [], 0, 0);
 end
//#UC END# *4EE605B00380_4EE60C350236_impl*
end;//TkwVgControlClick.DoVisualObject

class function TkwVgControlClick.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'vg:control:Click';
end;//TkwVgControlClick.GetWordNameForRegister

{$IfEnd} //not NoScripts AND not NoVGScene

initialization
{$If not defined(NoScripts) AND not defined(NoVGScene)}
 {$Include ..\ScriptEngine\kwVGVisualObjectWord.imp.pas}
{$IfEnd} //not NoScripts AND not NoVGScene

end.