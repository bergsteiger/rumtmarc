unit kwPopEditorWheelScroll;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorWheelScroll.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_WheelScroll
//
// *������:* aUp aVeritcal anEditorControl pop:editor:WheelScroll
// *��������:* ������������ �������� � ������� ���������. aVeritcal - ���� true, �� �����������
// �����������. aUp - ������������ �����, ���� true
// *������:*
// {code}
// false true focused:control:push anEditorControl pop:editor:WheelScroll
// {code}
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
  evCustomEditorWindow,
  tfwScriptingInterfaces,
  Controls,
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
 TkwPopEditorWheelScroll = {final} class(_kwEditorFromStackWord_)
  {* *������:* aUp aVeritcal anEditorControl pop:editor:WheelScroll
*��������:* ������������ �������� � ������� ���������. aVeritcal - ���� true, �� ����������� �����������. aUp - ������������ �����, ���� true
*������:*
[code] 
false true focused:control:push anEditorControl pop:editor:WheelScroll
[code] }
 protected
 // realized methods
   procedure DoWithEditor(const aCtx: TtfwContext;
     anEditor: TevCustomEditorWindow); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorWheelScroll
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

type _Instance_R_ = TkwPopEditorWheelScroll;

{$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}

// start class TkwPopEditorWheelScroll

procedure TkwPopEditorWheelScroll.DoWithEditor(const aCtx: TtfwContext;
  anEditor: TevCustomEditorWindow);
//#UC START# *4F4CB81200CA_4F4F5A730085_var*
var
 l_Up       : Boolean;
 l_Vertical : Boolean;
//#UC END# *4F4CB81200CA_4F4F5A730085_var*
begin
//#UC START# *4F4CB81200CA_4F4F5A730085_impl*
 if aCtx.rEngine.IsTopBool then
  l_Vertical := aCtx.rEngine.PopBool
 else
  Assert(False, '�� ������ ���������� ���������!');
 if aCtx.rEngine.IsTopBool then
  l_Up := aCtx.rEngine.PopBool
 else
  Assert(False, '�� ������ ����������� ���������!');
 with anEditor.View.Scroller[l_Vertical] do
  if l_Up then
   WheelUp
  else
   WheelDown;
//#UC END# *4F4CB81200CA_4F4F5A730085_impl*
end;//TkwPopEditorWheelScroll.DoWithEditor

class function TkwPopEditorWheelScroll.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:WheelScroll';
end;//TkwPopEditorWheelScroll.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.