unit kwPopEditorSplitCell;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorSplitCell.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_SplitCell
//
// *������:* aOrientation anEditorControl pop:editor:SplitCell
// *��������:* ��������� ������ �������. ������ ������ ��� ���������� � ������. ���������
// aOrientation - Boolean (True - ��������� �� ���������, False - ��������� �� �����������).
// *������:*
// {code}
// True focused:control:push pop:editor:SplitCell
// {code}
// *���������:* ��������� ������, � ������� ���������� ������, �� ��������.
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
 TkwPopEditorSplitCell = {final} class(_kwEditorWithToolsFromStackWord_)
  {* *������:* aOrientation anEditorControl pop:editor:SplitCell
*��������:* ��������� ������ �������. ������ ������ ��� ���������� � ������. ��������� aOrientation - Boolean (True - ��������� �� ���������, False - ��������� �� �����������).
*������:*
[code] 
True focused:control:push pop:editor:SplitCell
[code] 
*���������:* ��������� ������, � ������� ���������� ������, �� ��������. }
 protected
 // realized methods
   procedure DoEditorWithTools(const aCtx: TtfwContext;
     anEditor: TevCustomEditor); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorSplitCell
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Interfaces,
  evEditorInterfaces,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopEditorSplitCell;

{$Include ..\ScriptEngine\kwEditorWithToolsFromStackWord.imp.pas}

// start class TkwPopEditorSplitCell

procedure TkwPopEditorSplitCell.DoEditorWithTools(const aCtx: TtfwContext;
  anEditor: TevCustomEditor);
//#UC START# *4F4DD89102E4_5028F0180013_var*
var
 l_Cell : IedCell;
 l_Table: IedTable;
//#UC END# *4F4DD89102E4_5028F0180013_var*
begin
//#UC START# *4F4DD89102E4_5028F0180013_impl*
 if aCtx.rEngine.IsTopBool then
 begin
  l_Table := anEditor.Range.Table;
  if (l_Table <> nil) then
  begin
   l_Cell := l_Table.Cell;
   if (l_Cell <> nil) then
    if aCtx.rEngine.PopBool then
     l_Cell.Split(ev_orVertical)
    else
     l_Cell.Split(ev_orHorizontal);
  end;//l_Table <> nil
 end // if aCtx.rEngine.IsTopBool then
 else
  Assert(False, '�� ������ ��� ������!');
//#UC END# *4F4DD89102E4_5028F0180013_impl*
end;//TkwPopEditorSplitCell.DoEditorWithTools

class function TkwPopEditorSplitCell.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:SplitCell';
end;//TkwPopEditorSplitCell.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorWithToolsFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.