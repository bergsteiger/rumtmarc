unit kwPopEditorSetDrawSpecial;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorSetDrawSpecial.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_SetDrawSpecial
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
 TkwPopEditorSetDrawSpecial = {final} class(_kwEditorFromStackWord_)
 protected
 // realized methods
   procedure DoWithEditor(const aCtx: TtfwContext;
     anEditor: TevCustomEditorWindow); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorSetDrawSpecial
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

type _Instance_R_ = TkwPopEditorSetDrawSpecial;

{$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}

// start class TkwPopEditorSetDrawSpecial

procedure TkwPopEditorSetDrawSpecial.DoWithEditor(const aCtx: TtfwContext;
  anEditor: TevCustomEditorWindow);
//#UC START# *4F4CB81200CA_50AC80B90149_var*
//#UC END# *4F4CB81200CA_50AC80B90149_var*
begin
//#UC START# *4F4CB81200CA_50AC80B90149_impl*
 if aCtx.rEngine.IsTopBool then
  anEditor.DrawSpecial := aCtx.rEngine.PopBool
 else
  RunnerAssert(False, '�� ����� ���� ��� DrawSpecial', aCtx)
//#UC END# *4F4CB81200CA_50AC80B90149_impl*
end;//TkwPopEditorSetDrawSpecial.DoWithEditor

class function TkwPopEditorSetDrawSpecial.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:SetDrawSpecial';
end;//TkwPopEditorSetDrawSpecial.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.