unit kwPopEditorMergeCells;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorMergeCells.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_MergeCells
//
// *������:* aMergeType anEditorControl pop:editor:MergeCells
// *��������:* ���������� ���������� ������ �������. ���������: aMergeType - Integer - ���������
// ��. ArchiSystem.script (ed_maAll , ed_maHorz � ed_maVert).
// *������:*
// {code}
// (ed_maAll focused:control:push pop:editor:MergeCells
// {code}
// *���������:* ���������� ���������� �������� �����.
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
 TkwPopEditorMergeCells = {final} class(_kwEditorWithToolsFromStackWord_)
  {* *������:* aMergeType anEditorControl pop:editor:MergeCells
*��������:* ���������� ���������� ������ �������. ���������: aMergeType - Integer - ��������� ��. ArchiSystem.script (ed_maAll , ed_maHorz � ed_maVert).
*������:*
[code] 
(ed_maAll focused:control:push pop:editor:MergeCells
[code] 
*���������:* ���������� ���������� �������� �����. }
 protected
 // realized methods
   procedure DoEditorWithTools(const aCtx: TtfwContext;
     anEditor: TevCustomEditor); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorMergeCells
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  evEditorInterfaces,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopEditorMergeCells;

{$Include ..\ScriptEngine\kwEditorWithToolsFromStackWord.imp.pas}

// start class TkwPopEditorMergeCells

procedure TkwPopEditorMergeCells.DoEditorWithTools(const aCtx: TtfwContext;
  anEditor: TevCustomEditor);
//#UC START# *4F4DD89102E4_4F759F1803AF_var*
var
 l_Table     : IedTable;
 l_Range     : IedRange;
 l_Cells     : IedCells;
 l_MergeType : Integer;
//#UC END# *4F4DD89102E4_4F759F1803AF_var*
begin
//#UC START# *4F4DD89102E4_4F759F1803AF_impl*
 l_Range := anEditor.Range;
 if l_Range <> nil then
 begin
  l_Table := l_Range.Table;
  if l_Table <> nil then
   l_Cells := l_Table.Cells
  else
   Assert(False, '�� ������� �������� �������!'); 
  if aCtx.rEngine.IsTopInt then
   l_MergeType := aCtx.rEngine.PopInt
  else
   Assert(False, '�� ����� ��� �����������'); 
  if l_Cells <> nil then
   l_Cells.Merge(TedMergeAlgorythm(l_MergeType))
  else
   Assert(False, '�� ������� �������� �������� �����!')
 end // if l_Range <> nil then
 else
  Assert(False, '�� ������� �������� ���������.'); 
//#UC END# *4F4DD89102E4_4F759F1803AF_impl*
end;//TkwPopEditorMergeCells.DoEditorWithTools

class function TkwPopEditorMergeCells.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:MergeCells';
end;//TkwPopEditorMergeCells.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorWithToolsFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.