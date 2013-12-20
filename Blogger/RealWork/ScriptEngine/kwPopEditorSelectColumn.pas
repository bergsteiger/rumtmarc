unit kwPopEditorSelectColumn;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorSelectColumn.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_SelectColumn
//
// *������:* aColID anEditorControl pop:editor:SelectCells
// *��������:* �������� ������� �������. ������ ������ ��� ��������� � �������. ��������� ������� �
// ������� �� ����� ��������. ��������� aColID - Integer
// *������:*
// {code}
// 2 focused:control:push pop:editor:SelectCells
// {code}
// *���������:* �������� ������ �������.
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
  Classes,
  nevTools
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
 _kwEditorGetTableFromCursor_Parent_ = _kwEditorFromStackWord_;
 {$Include ..\ScriptEngine\kwEditorGetTableFromCursor.imp.pas}
 TkwPopEditorSelectColumn = {final} class(_kwEditorGetTableFromCursor_)
  {* *������:* aColID anEditorControl pop:editor:SelectCells
*��������:* �������� ������� �������. ������ ������ ��� ��������� � �������. ��������� ������� � ������� �� ����� ��������. ��������� aColID - Integer
*������:*
[code] 
2 focused:control:push pop:editor:SelectCells
[code] 
*���������:* �������� ������ �������. }
 protected
 // realized methods
   procedure DoWithEditor(const aCtx: TtfwContext;
     anEditor: TevCustomEditorWindow); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorSelectColumn
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  evCursorTools,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms,
  Table_Const
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopEditorSelectColumn;

{$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}

{$Include ..\ScriptEngine\kwEditorGetTableFromCursor.imp.pas}

// start class TkwPopEditorSelectColumn

procedure TkwPopEditorSelectColumn.DoWithEditor(const aCtx: TtfwContext;
  anEditor: TevCustomEditorWindow);
//#UC START# *4F4CB81200CA_4F548EC7007E_var*
var
 l_ColID      : Integer;
 l_TablePoint : InevBasePoint;
//#UC END# *4F4CB81200CA_4F548EC7007E_var*
begin
//#UC START# *4F4CB81200CA_4F548EC7007E_impl*
 l_TablePoint := GetTablePoint(aCtx, anEditor.Selection.Cursor);
 if aCtx.rEngine.IsTopInt then
  l_ColID := aCtx.rEngine.PopInt
 else
  Assert(False, '�� ����� ����� �������!'); 
 evSelectTableColumn(anEditor.Selection, l_TablePoint.Obj^.AsPara.AsList, l_ColID);
//#UC END# *4F4CB81200CA_4F548EC7007E_impl*
end;//TkwPopEditorSelectColumn.DoWithEditor

class function TkwPopEditorSelectColumn.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:SelectColumn';
end;//TkwPopEditorSelectColumn.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.