unit kwPopEditorGetShowDocumentParts;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorGetShowDocumentParts.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_GetShowDocumentParts
//
// *������:* anEditorControl pop:editor:GetShowDocumentParts
// *��������:* �������� �������� �������� ��������� ShowDocumentParts (���������� ���������
// ���������) � ����.
// *������:*
// {code}
// focused:control:push pop:editor:GetShowDocumentParts
// .
// {code}
// *���������:* � ��������� �� �������� ���� � ����� ���������� �������� "true" ��� "false"
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
 TkwPopEditorGetShowDocumentParts = {final} class(_kwEditorFromStackWord_)
  {* *������:* anEditorControl pop:editor:GetShowDocumentParts
*��������:* �������� �������� �������� ��������� ShowDocumentParts (���������� ��������� ���������) � ����.
*������:*
[code] 
focused:control:push pop:editor:GetShowDocumentParts
.
[code] 
*���������:* � ��������� �� �������� ���� � ����� ���������� �������� "true" ��� "false" }
 protected
 // realized methods
   procedure DoWithEditor(const aCtx: TtfwContext;
     anEditor: TevCustomEditorWindow); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorGetShowDocumentParts
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

type _Instance_R_ = TkwPopEditorGetShowDocumentParts;

{$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}

// start class TkwPopEditorGetShowDocumentParts

procedure TkwPopEditorGetShowDocumentParts.DoWithEditor(const aCtx: TtfwContext;
  anEditor: TevCustomEditorWindow);
//#UC START# *4F4CB81200CA_4F4CB5C50249_var*
//#UC END# *4F4CB81200CA_4F4CB5C50249_var*
begin
//#UC START# *4F4CB81200CA_4F4CB5C50249_impl*
 aCtx.rEngine.PushBool(anEditor.ShowDocumentParts);
//#UC END# *4F4CB81200CA_4F4CB5C50249_impl*
end;//TkwPopEditorGetShowDocumentParts.DoWithEditor

class function TkwPopEditorGetShowDocumentParts.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:GetShowDocumentParts';
end;//TkwPopEditorGetShowDocumentParts.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.