unit kwPopComboTreeCurrentNode;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopComboTreeCurrentNode.pas"
// �����: 03.11.2011 18:29
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_ComboTree_CurrentNode
//
// �������� ������� ���� ��������� � ������ �����
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
  FakeBox,
  tfwScriptingInterfaces,
  evCustomEditorWindow,
  Controls,
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwComboTreeFromStackWord.imp.pas}
 TkwPopComboTreeCurrentNode = class(_kwComboTreeFromStackWord_)
  {* �������� ������� ���� ��������� � ������ ����� }
 protected
 // realized methods
   procedure DoCombo(const aCtx: TtfwContext;
     aCombo: TFakeBox); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopComboTreeCurrentNode
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

type _Instance_R_ = TkwPopComboTreeCurrentNode;

{$Include ..\ScriptEngine\kwComboTreeFromStackWord.imp.pas}

// start class TkwPopComboTreeCurrentNode

procedure TkwPopComboTreeCurrentNode.DoCombo(const aCtx: TtfwContext;
  aCombo: TFakeBox);
//#UC START# *4EB2A555015E_4EB2A4FE00A9_var*
//#UC END# *4EB2A555015E_4EB2A4FE00A9_var*
begin
//#UC START# *4EB2A555015E_4EB2A4FE00A9_impl*
 aCtx.rEngine.PushIntf(aCombo.Tree.GetCurrentNode);
//#UC END# *4EB2A555015E_4EB2A4FE00A9_impl*
end;//TkwPopComboTreeCurrentNode.DoCombo

class function TkwPopComboTreeCurrentNode.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:ComboTree:CurrentNode';
end;//TkwPopComboTreeCurrentNode.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwComboTreeFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.