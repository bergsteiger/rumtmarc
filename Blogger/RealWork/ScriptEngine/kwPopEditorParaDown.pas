unit kwPopEditorParaDown;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorParaDown.pas"
// �����: 20.05.2011 16:52
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_ParaDown
//
// ��������� �� �������� ���� � ���������. pop:editor:ParaDown
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
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwEditorFromStackCursorWord.imp.pas}
 TkwPopEditorParaDown = class(_kwEditorFromStackCursorWord_)
  {* ��������� �� �������� ���� � ���������. pop:editor:ParaDown }
 protected
 // realized methods
   procedure DoCursor(const aCtx: TtfwContext;
     anEditor: TevCustomEditorWindow;
     const aPoint: InevBasePoint); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorParaDown
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  evMsgCode,
  evOp,
  TextPara_Const,
  CommentPara_Const,
  Windows,
  evParaTools,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopEditorParaDown;

{$Include ..\ScriptEngine\kwEditorFromStackCursorWord.imp.pas}

// start class TkwPopEditorParaDown

procedure TkwPopEditorParaDown.DoCursor(const aCtx: TtfwContext;
  anEditor: TevCustomEditorWindow;
  const aPoint: InevBasePoint);
//#UC START# *50B8BCDF0093_4DD663F8004B_var*
//#UC END# *50B8BCDF0093_4DD663F8004B_var*
begin
//#UC START# *50B8BCDF0093_4DD663F8004B_impl*
 aPoint.MostInner.ParentPoint.Move(anEditor.View, ev_ocParaDown);
//#UC END# *50B8BCDF0093_4DD663F8004B_impl*
end;//TkwPopEditorParaDown.DoCursor

class function TkwPopEditorParaDown.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:ParaDown';
end;//TkwPopEditorParaDown.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorFromStackCursorWord.imp.pas}
{$IfEnd} //not NoScripts

end.