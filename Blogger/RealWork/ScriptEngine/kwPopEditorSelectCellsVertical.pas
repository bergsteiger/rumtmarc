unit kwPopEditorSelectCellsVertical;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorSelectCellsVertical.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_SelectCellsVertical
//
// *������:* aStartCell aStartRow aFinshCell aFinishRow anEditorControl
// pop:editor:SelectCellsVertical
// *��������:* �������� �������� ����� � ������� ���� ������� �� ��������� (aStartCell, aRowCell)
// �� �������� (aFinishCell, aFinishRow). ������ ������ ��� ��������� � �������. ��������� �������
// � ������� �� ����� ��������. ��������� aStartCell aStartRow aFinshCell aFinishRow - Integer
// *������:*
// {code}
// 0 0 2 2 focused:control:push pop:editor:SelectCellsVertical
// {code}
// *���������:* �������� �������� ����� � ������� �� (0, 0) �� (2, 2) � �������� ���������.
// *����������:* � ������ ������ ������ ���� ������ ���� ��������, ����� ��������� �����
// ������������.
// *���������� 2:* ����� � ��������� ������ ������ ���� �������� �� ������ ����. �����  ��������
// ��������� �� ������.
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
 {$Include ..\ScriptEngine\kwSelectCellsWord.imp.pas}
 TkwPopEditorSelectCellsVertical = {final} class(_kwSelectCellsWord_)
  {* *������:* aStartCell aStartRow aFinshCell aFinishRow anEditorControl pop:editor:SelectCellsVertical
*��������:* �������� �������� ����� � ������� ���� ������� �� ��������� (aStartCell, aRowCell) �� �������� (aFinishCell, aFinishRow). ������ ������ ��� ��������� � �������. ��������� ������� � ������� �� ����� ��������. ��������� aStartCell aStartRow aFinshCell aFinishRow - Integer
*������:*
[code] 
0 0 2 2 focused:control:push pop:editor:SelectCellsVertical
[code] 
*���������:* �������� �������� ����� � ������� �� (0, 0) �� (2, 2) � �������� ���������.
*����������:* � ������ ������ ������ ���� ������ ���� ��������, ����� ��������� ����� ������������.
*���������� 2:* ����� � ��������� ������ ������ ���� �������� �� ������ ����. �����  �������� ��������� �� ������. }
 protected
 // realized methods
   function IsVertical: Boolean; override;
     {* ��� ��������� ���� �������� ������ ����. }
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorSelectCellsVertical
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base,
  l3Units,
  evConst,
  nevGUIInterfaces,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms,
  Table_Const
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopEditorSelectCellsVertical;

{$Include ..\ScriptEngine\kwSelectCellsWord.imp.pas}

// start class TkwPopEditorSelectCellsVertical

function TkwPopEditorSelectCellsVertical.IsVertical: Boolean;
//#UC START# *4F6042D20081_4F6044140356_var*
//#UC END# *4F6042D20081_4F6044140356_var*
begin
//#UC START# *4F6042D20081_4F6044140356_impl*
 Result := True;
//#UC END# *4F6042D20081_4F6044140356_impl*
end;//TkwPopEditorSelectCellsVertical.IsVertical

class function TkwPopEditorSelectCellsVertical.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:SelectCellsVertical';
end;//TkwPopEditorSelectCellsVertical.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwSelectCellsWord.imp.pas}
{$IfEnd} //not NoScripts

end.