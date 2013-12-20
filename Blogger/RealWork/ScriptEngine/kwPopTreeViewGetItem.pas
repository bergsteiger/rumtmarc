unit kwPopTreeViewGetItem;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopTreeViewGetItem.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::TreeViewWords::pop_TreeView_GetItem
//
// ���������� ���� TTreeNode �� ������.
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
  ComCtrls,
  tfwScriptingInterfaces,
  Controls,
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwTreeViewNodeFromStackWord.imp.pas}
 TkwPopTreeViewGetItem = {final} class(_kwTreeViewNodeFromStackWord_)
  {* ���������� ���� TTreeNode �� ������. }
 protected
 // realized methods
   procedure DoWithTreeView(const aTreeView: TTreeView;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopTreeViewGetItem
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

type _Instance_R_ = TkwPopTreeViewGetItem;

{$Include ..\ScriptEngine\kwTreeViewNodeFromStackWord.imp.pas}

// start class TkwPopTreeViewGetItem

procedure TkwPopTreeViewGetItem.DoWithTreeView(const aTreeView: TTreeView;
  const aCtx: TtfwContext);
//#UC START# *512F47F00183_512F491C0347_var*
//#UC END# *512F47F00183_512F491C0347_var*
begin
//#UC START# *512F47F00183_512F491C0347_impl*
 if aCtx.rEngine.IsTopInt then
  aCtx.rEngine.PushObj(aTreeView.Items[0])
 else
  RunnerAssert(False, '�� ����� ����� ���� � ������!', aCtx);
//#UC END# *512F47F00183_512F491C0347_impl*
end;//TkwPopTreeViewGetItem.DoWithTreeView

class function TkwPopTreeViewGetItem.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:TreeView:GetItem';
end;//TkwPopTreeViewGetItem.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwTreeViewNodeFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.