unit kwPopEditorRepaintAndCheckWithEtalon;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorRepaintAndCheckWithEtalon.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_RepaintAndCheckWithEtalon
//
// *��������:*
// �������������� �������� �������� ������ �� ������������ ��� ������. ��������� ���������
// �������������. ��� ������������ �� ����� ������ ���������! ��������� ���� � ������ NNN.shapes -
// ��� NNN - ����� ����� (��������! ��� ����� ����� ���������� � TK) . ���� �� ����� ��
// ������������ �������, �� �� ���������. � ��� ���������� � ����� ��������� �����. ���� ������ ���
// �����������, �� ������������ ��������� ����� ������ ����� � ��������. ���� ��������� �� ������,
// �� �� ���� ����� �������� (���� ����� ��������� �� ���������) � ����� ������� ������� ���������
// ��������� ������.
// *������:*
// {code}
// anEditor pop:editor:RepaintCheckWithEtalon
// {code}
// ��� anEditor - ��������� �� ��������, � ������� ����� ������� �����������.
// *������:*
// {code}
// focused:control:push pop:editor:RepaintCheckWithEtalon
// {code}
// �������� ��������� � ���������, ��� ��������� �����.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If defined(nsTest) AND not defined(NoScripts)}
uses
  evCustomEditorWindow,
  tfwScriptingInterfaces,
  Controls,
  Classes,
  nevTools,
  nevShapesPaintedSpy
  ;
{$IfEnd} //nsTest AND not NoScripts

{$If defined(nsTest) AND not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
 _kwCheckWithEtalonCommon_Parent_ = _kwEditorFromStackWord_;
 {$Include ..\ScriptEngine\kwCheckWithEtalonCommon.imp.pas}
 TkwPopEditorRepaintAndCheckWithEtalon = class(_kwCheckWithEtalonCommon_)
  {* *��������:*
�������������� �������� �������� ������ �� ������������ ��� ������. ��������� ��������� �������������. ��� ������������ �� ����� ������ ���������! ��������� ���� � ������ NNN.shapes - ��� NNN - ����� ����� (��������! ��� ����� ����� ���������� � TK) . ���� �� ����� �� ������������ �������, �� �� ���������. � ��� ���������� � ����� ��������� �����. ���� ������ ��� �����������, �� ������������ ��������� ����� ������ ����� � ��������. ���� ��������� �� ������, �� �� ���� ����� �������� (���� ����� ��������� �� ���������) � ����� ������� ������� ��������� ��������� ������.
*������:*
[code]
anEditor pop:editor:RepaintCheckWithEtalon 
[code]
��� anEditor - ��������� �� ��������, � ������� ����� ������� �����������.
*������:*
[code]
focused:control:push pop:editor:RepaintCheckWithEtalon 
[code]
�������� ��������� � ���������, ��� ��������� �����. }
 protected
 // realized methods
   procedure DoWithEditor(const aCtx: TtfwContext;
     anEditor: TevCustomEditorWindow); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorRepaintAndCheckWithEtalon
{$IfEnd} //nsTest AND not NoScripts

implementation

{$If defined(nsTest) AND not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms,
  SysUtils,
  StrUtils
  ;
{$IfEnd} //nsTest AND not NoScripts

{$If defined(nsTest) AND not defined(NoScripts)}

type _Instance_R_ = TkwPopEditorRepaintAndCheckWithEtalon;

{$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}

{$Include ..\ScriptEngine\kwCheckWithEtalonCommon.imp.pas}

// start class TkwPopEditorRepaintAndCheckWithEtalon

procedure TkwPopEditorRepaintAndCheckWithEtalon.DoWithEditor(const aCtx: TtfwContext;
  anEditor: TevCustomEditorWindow);
//#UC START# *4F4CB81200CA_4E1B0DEA0240_var*
//#UC END# *4F4CB81200CA_4E1B0DEA0240_var*
begin
//#UC START# *4F4CB81200CA_4E1B0DEA0240_impl*
 anEditor.View.ClearShapes;
 ExecuteWithEditor(aCtx, anEditor);
//#UC END# *4F4CB81200CA_4E1B0DEA0240_impl*
end;//TkwPopEditorRepaintAndCheckWithEtalon.DoWithEditor

class function TkwPopEditorRepaintAndCheckWithEtalon.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:RepaintAndCheckWithEtalon';
end;//TkwPopEditorRepaintAndCheckWithEtalon.GetWordNameForRegister

{$IfEnd} //nsTest AND not NoScripts

initialization
{$If defined(nsTest) AND not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
{$IfEnd} //nsTest AND not NoScripts

end.