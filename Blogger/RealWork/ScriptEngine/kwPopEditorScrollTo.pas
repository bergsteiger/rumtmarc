unit kwPopEditorScrollTo;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorScrollTo.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_ScrollTo
//
// *������:* aValue aVeritcal anEditorControl pop:editor:ScrollTo
// *��������:* ������������ �������� � ������� ���������. aVeritcal - ���� true, �� �����������
// �����������.
// *������:*
// {code}
// 150 true focused:control:push pop:editor:ScrollBottom
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
  evCustomEditorWindow,
  tfwScriptingInterfaces,
  Controls,
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
 TkwPopEditorScrollTo = {final} class(_kwEditorFromStackWord_)
  {* *������:* aValue aVeritcal anEditorControl pop:editor:ScrollTo
*��������:* ������������ �������� � ������� ���������. aVeritcal - ���� true, �� ����������� �����������.
*������:*
[code] 
150 true focused:control:push pop:editor:ScrollBottom
[code] }
 protected
 // realized methods
   procedure DoWithEditor(const aCtx: TtfwContext;
     anEditor: TevCustomEditorWindow); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorScrollTo
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

type _Instance_R_ = TkwPopEditorScrollTo;

{$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}

// start class TkwPopEditorScrollTo

procedure TkwPopEditorScrollTo.DoWithEditor(const aCtx: TtfwContext;
  anEditor: TevCustomEditorWindow);
//#UC START# *4F4CB81200CA_4F4F463A0009_var*
var
 l_Position : Integer;
 l_Vertical : Boolean;
//#UC END# *4F4CB81200CA_4F4F463A0009_var*
begin
//#UC START# *4F4CB81200CA_4F4F463A0009_impl*
 if aCtx.rEngine.IsTopBool then
  l_Vertical := aCtx.rEngine.PopBool
 else
  Assert(False, '�� ������ ���������� ���������!');
 if aCtx.rEngine.IsTopInt then
  l_Position := aCtx.rEngine.PopInt
 else
  Assert(False, '�� ������ �������� ���������!');
 with anEditor.View.Scroller[l_Vertical] do
  ScrollTo(l_Position);
//#UC END# *4F4CB81200CA_4F4F463A0009_impl*
end;//TkwPopEditorScrollTo.DoWithEditor

class function TkwPopEditorScrollTo.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:ScrollTo';
end;//TkwPopEditorScrollTo.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.