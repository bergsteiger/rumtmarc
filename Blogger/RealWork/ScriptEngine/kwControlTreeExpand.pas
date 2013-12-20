unit kwControlTreeExpand;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwControlTreeExpand.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::vtOutlinerWords::ControlTreeExpand
//
// ���������� ���� �� �������
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
  tfwScriptingInterfaces,
  vtOutliner,
  Controls,
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwTreeItemWord.imp.pas}
 TkwControlTreeExpand = class(_kwTreeItemWord_)
  {* ���������� ���� �� ������� }
 protected
 // realized methods
   procedure DoTreeItem(aTreeControl: TvtCustomOutliner;
     anItemIndex: Integer;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwControlTreeExpand
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

type _Instance_R_ = TkwControlTreeExpand;

{$Include ..\ScriptEngine\kwTreeItemWord.imp.pas}

// start class TkwControlTreeExpand

procedure TkwControlTreeExpand.DoTreeItem(aTreeControl: TvtCustomOutliner;
  anItemIndex: Integer;
  const aCtx: TtfwContext);
//#UC START# *504DD08101F1_4E01B5E8026C_var*
//#UC END# *504DD08101F1_4E01B5E8026C_var*
begin
//#UC START# *504DD08101F1_4E01B5E8026C_impl*
  if aCtx.rEngine.IsTopBool then
   aTreeControl.ExpandNode(aTreeControl.GetNode(anItemIndex), aCtx.rEngine.PopBool)
  else
   aTreeControl.ExpandNode(aTreeControl.GetNode(anItemIndex), True);
//#UC END# *504DD08101F1_4E01B5E8026C_impl*
end;//TkwControlTreeExpand.DoTreeItem

class function TkwControlTreeExpand.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'tree:����������';
end;//TkwControlTreeExpand.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwTreeItemWord.imp.pas}
{$IfEnd} //not NoScripts

end.