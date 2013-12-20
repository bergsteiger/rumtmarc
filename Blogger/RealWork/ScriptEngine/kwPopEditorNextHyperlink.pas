unit kwPopEditorNextHyperlink;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorNextHyperlink.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_NextHyperlink
//
// *������:* anEditorControl pop:editor:NextHyperlink
// *��������:* ��������� �� �������� �����������. ���� ����� ������� ����������, �� ������ ��
// ����������.
// *������:*
// {code}
// focused:control:push pop:editor:NextHyperlink
// {code}
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
 TkwPopEditorNextHyperlink = {final} class(_kwEditorWithToolsFromStackWord_)
  {* *������:* anEditorControl pop:editor:NextHyperlink
*��������:* ��������� �� �������� �����������. ���� ����� ������� ����������, �� ������ �� ����������.
*������:*
[code] 
focused:control:push pop:editor:NextHyperlink
[code] }
 protected
 // realized methods
   procedure DoEditorWithTools(const aCtx: TtfwContext;
     anEditor: TevCustomEditor); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorNextHyperlink
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

type _Instance_R_ = TkwPopEditorNextHyperlink;

{$Include ..\ScriptEngine\kwEditorWithToolsFromStackWord.imp.pas}

// start class TkwPopEditorNextHyperlink

procedure TkwPopEditorNextHyperlink.DoEditorWithTools(const aCtx: TtfwContext;
  anEditor: TevCustomEditor);
//#UC START# *4F4DD89102E4_4F4DD9B8016A_var*
//#UC END# *4F4DD89102E4_4F4DD9B8016A_var*
begin
//#UC START# *4F4DD89102E4_4F4DD9B8016A_impl*
 anEditor.NextHyperlink;
//#UC END# *4F4DD89102E4_4F4DD9B8016A_impl*
end;//TkwPopEditorNextHyperlink.DoEditorWithTools

class function TkwPopEditorNextHyperlink.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:NextHyperlink';
end;//TkwPopEditorNextHyperlink.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorWithToolsFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.