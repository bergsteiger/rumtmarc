unit kwPopEditorResizeTableColumnEX;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorResizeTableColumnEX.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_ResizeTableColumnEX
//
// �������� ������ ������� �������. ������:
// {code}   aDelta aKeys aCol aRow editor:ResizeTableColumnEX{code}
// {panel}
// * aCol - ����� ������, ������� �����
// * aRow - ����� ������
// * aKeys - �������, ������� ��� ��������� ��������.
// * aDelta - �������� ������� (������������� - ������, ������������� - �����).
// {panel}
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
  nevTools,
  evCustomEditorWindow,
  tfwScriptingInterfaces,
  Controls,
  Classes,
  l3Units,
  nevGUIInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwEditorFromStackTableColumnResize.imp.pas}
 TkwPopEditorResizeTableColumnEX = class(_kwEditorFromStackTableColumnResize_)
  {* �������� ������ ������� �������. ������:
[code]   aDelta aKeys aCol aRow editor:ResizeTableColumnEX[code]
[panel]
 * aCol - ����� ������, ������� �����
 * aRow - ����� ������
 * aKeys - �������, ������� ��� ��������� ��������.
 * aDelta - �������� ������� (������������� - ������, ������������� - �����).
[panel] }
 protected
 // overridden protected methods
   function GetKeys: TShiftState; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorResizeTableColumnEX
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  Table_Const,
  evConst,
  TextPara_Const,
  CommentPara_Const,
  Windows,
  evParaTools,
  evOp,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  afwFacade,
  Forms,
  l3Base
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopEditorResizeTableColumnEX;

{$Include ..\ScriptEngine\kwEditorFromStackTableColumnResize.imp.pas}

// start class TkwPopEditorResizeTableColumnEX

class function TkwPopEditorResizeTableColumnEX.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:ResizeTableColumnEX';
end;//TkwPopEditorResizeTableColumnEX.GetWordNameForRegister

function TkwPopEditorResizeTableColumnEX.GetKeys: TShiftState;
//#UC START# *4E32CA120170_4E37BEF102EE_var*
var
 l_Value: Integer;
//#UC END# *4E32CA120170_4E37BEF102EE_var*
begin
//#UC START# *4E32CA120170_4E37BEF102EE_impl*
 l_Value := ItfwScriptEngine(f_Engine).PopInt;
 case l_Value of
  0: Result := [];
  1: Result := [ssShift];
  2: Result := [ssAlt];
  3: Result := [ssCtrl];
  else
   Assert(False, '������ �������� �� ��������������.')
 end;
//#UC END# *4E32CA120170_4E37BEF102EE_impl*
end;//TkwPopEditorResizeTableColumnEX.GetKeys

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorFromStackTableColumnResize.imp.pas}
{$IfEnd} //not NoScripts

end.