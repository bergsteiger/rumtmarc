unit kwPopEditorScrollBottom;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorScrollBottom.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_ScrollBottom
//
// *������:* aVeritcal anEditorControl pop:editor:ScrollBottom
// *��������:* ������������ �������� � ����� ���/����������� ������. aVeritcal - ���� true, ��
// ����������� �����������.
// *������:*
// {code}
// true focused:control:push pop:editor:ScrollBottom
// {code}
// *���������:* ���������� � ����� ��� ���������.
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
 TkwPopEditorScrollBottom = {final} class(_kwEditorFromStackWord_)
  {* *������:* aVeritcal anEditorControl pop:editor:ScrollBottom
*��������:* ������������ �������� � ����� ���/����������� ������. aVeritcal - ���� true, �� ����������� �����������.
*������:*
[code] 
true focused:control:push pop:editor:ScrollBottom
[code] 
*���������:* ���������� � ����� ��� ���������. }
 protected
 // realized methods
   procedure DoWithEditor(const aCtx: TtfwContext;
     anEditor: TevCustomEditorWindow); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorScrollBottom
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

type _Instance_R_ = TkwPopEditorScrollBottom;

{$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}

// start class TkwPopEditorScrollBottom

procedure TkwPopEditorScrollBottom.DoWithEditor(const aCtx: TtfwContext;
  anEditor: TevCustomEditorWindow);
//#UC START# *4F4CB81200CA_4F4F178600E8_var*
var
 l_Vertical: Boolean;
//#UC END# *4F4CB81200CA_4F4F178600E8_var*
begin
//#UC START# *4F4CB81200CA_4F4F178600E8_impl*
 if aCtx.rEngine.IsTopBool then
  l_Vertical := aCtx.rEngine.PopBool
 else
  Assert(False, '�� ������ ���������� ���������!');
 anEditor.View.Scroller[l_Vertical].Bottom;
//#UC END# *4F4CB81200CA_4F4F178600E8_impl*
end;//TkwPopEditorScrollBottom.DoWithEditor

class function TkwPopEditorScrollBottom.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:ScrollBottom';
end;//TkwPopEditorScrollBottom.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.