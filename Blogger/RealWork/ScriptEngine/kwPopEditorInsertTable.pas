unit kwPopEditorInsertTable;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorInsertTable.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_InsertTable
//
// aCol aRow  editor:InsertTable
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
 TkwPopEditorInsertTable = class(_kwEditorWithToolsFromStackWord_)
  {* aCol aRow  editor:InsertTable }
 protected
 // realized methods
   procedure DoEditorWithTools(const aCtx: TtfwContext;
     anEditor: TevCustomEditor); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorInsertTable
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

type _Instance_R_ = TkwPopEditorInsertTable;

{$Include ..\ScriptEngine\kwEditorWithToolsFromStackWord.imp.pas}

// start class TkwPopEditorInsertTable

procedure TkwPopEditorInsertTable.DoEditorWithTools(const aCtx: TtfwContext;
  anEditor: TevCustomEditor);
//#UC START# *4F4DD89102E4_4E928C3A0082_var*
var
 l_Row: Integer;
 l_Col: Integer;
//#UC END# *4F4DD89102E4_4E928C3A0082_var*
begin
//#UC START# *4F4DD89102E4_4E928C3A0082_impl*
 l_Row := 0;
 l_Col := 0;
 if aCtx.rEngine.IsTopInt then
  l_Row := aCtx.rEngine.PopInt
 else
  RunnerAssert(False, '�� ������ ����� �����!', aCtx);
 if aCtx.rEngine.IsTopInt then
  l_Col := aCtx.rEngine.PopInt
 else
  RunnerAssert(False, '�� ������ ����� �����!', aCtx);
 anEditor.InsertTable(l_Col, l_Row);
//#UC END# *4F4DD89102E4_4E928C3A0082_impl*
end;//TkwPopEditorInsertTable.DoEditorWithTools

class function TkwPopEditorInsertTable.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:InsertTable';
end;//TkwPopEditorInsertTable.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorWithToolsFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.