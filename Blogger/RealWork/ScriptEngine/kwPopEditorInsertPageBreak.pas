unit kwPopEditorInsertPageBreak;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorInsertPageBreak.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_InsertPageBreak
//
// editor:InsertPageBreak
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
  evCustomEditor,
  tfwScriptingInterfaces,
  evCustomEditorWindow,
  Controls,
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwEditorWithToolsFromStackWord.imp.pas}
 TkwPopEditorInsertPageBreak = class(_kwEditorWithToolsFromStackWord_)
  {* editor:InsertPageBreak }
 protected
 // realized methods
   procedure DoEditorWithTools(const aCtx: TtfwContext;
     anEditor: TevCustomEditor); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorInsertPageBreak
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  evdTypes,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopEditorInsertPageBreak;

{$Include ..\ScriptEngine\kwEditorWithToolsFromStackWord.imp.pas}

// start class TkwPopEditorInsertPageBreak

procedure TkwPopEditorInsertPageBreak.DoEditorWithTools(const aCtx: TtfwContext;
  anEditor: TevCustomEditor);
//#UC START# *4F4DD89102E4_4ED7772B01F3_var*
//#UC END# *4F4DD89102E4_4ED7772B01F3_var*
begin
//#UC START# *4F4DD89102E4_4ED7772B01F3_impl*
 if aCtx.rEngine.IsTopInt then
  anEditor.InsertPageBreak(True, TevPageOrientation(aCtx.rEngine.PopInt))
 else
  RunnerAssert(False, '�� ������ ���������� �������!', aCtx)
//#UC END# *4F4DD89102E4_4ED7772B01F3_impl*
end;//TkwPopEditorInsertPageBreak.DoEditorWithTools

class function TkwPopEditorInsertPageBreak.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:InsertSectionBreak';
end;//TkwPopEditorInsertPageBreak.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorWithToolsFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.