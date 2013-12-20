unit kwPopEditorSelectPara;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: �������� �.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorSelectPara.pas"
// �����: 16.12.2011
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_SelectPara
//
// pop:editor:SelectPara. �������� ������� �������� � ���������
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
 TkwPopEditorSelectPara = class(_kwEditorFromStackWord_)
  {* pop:editor:SelectPara. �������� ������� �������� � ��������� }
 protected
 // realized methods
   procedure DoWithEditor(const aCtx: TtfwContext;
     anEditor: TevCustomEditorWindow); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorSelectPara
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  evTypes,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopEditorSelectPara;

{$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}

// start class TkwPopEditorSelectPara

procedure TkwPopEditorSelectPara.DoWithEditor(const aCtx: TtfwContext;
  anEditor: TevCustomEditorWindow);
//#UC START# *4F4CB81200CA_4EEB668D000C_var*
//#UC END# *4F4CB81200CA_4EEB668D000C_var*
begin
//#UC START# *4F4CB81200CA_4EEB668D000C_impl*
 anEditor.Select(ev_stPara);
//#UC END# *4F4CB81200CA_4EEB668D000C_impl*
end;//TkwPopEditorSelectPara.DoWithEditor

class function TkwPopEditorSelectPara.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:SelectPara';
end;//TkwPopEditorSelectPara.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.