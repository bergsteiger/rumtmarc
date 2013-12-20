unit kwPopEditorGetWebStyle;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorGetWebStyle.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_GetWebStyle
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
 TkwPopEditorGetWebStyle = {final} class(_kwEditorFromStackWord_)
 protected
 // realized methods
   procedure DoWithEditor(const aCtx: TtfwContext;
     anEditor: TevCustomEditorWindow); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorGetWebStyle
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

type _Instance_R_ = TkwPopEditorGetWebStyle;

{$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}

// start class TkwPopEditorGetWebStyle

procedure TkwPopEditorGetWebStyle.DoWithEditor(const aCtx: TtfwContext;
  anEditor: TevCustomEditorWindow);
//#UC START# *4F4CB81200CA_50AC93F30052_var*
//#UC END# *4F4CB81200CA_50AC93F30052_var*
begin
//#UC START# *4F4CB81200CA_50AC93F30052_impl*
 aCtx.rEngine.PushBool(anEditor.WebStyle)
//#UC END# *4F4CB81200CA_50AC93F30052_impl*
end;//TkwPopEditorGetWebStyle.DoWithEditor

class function TkwPopEditorGetWebStyle.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:GetWebStyle';
end;//TkwPopEditorGetWebStyle.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.