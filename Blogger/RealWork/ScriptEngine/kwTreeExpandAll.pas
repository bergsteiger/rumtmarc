unit kwTreeExpandAll;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwTreeExpandAll.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::vtOutlinerWords::tree_ExpandAll
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
 {$Include ..\ScriptEngine\kwTreeControlWord.imp.pas}
 TkwTreeExpandAll = {final} class(_kwTreeControlWord_)
 protected
 // realized methods
   procedure DoTreeContol(const aTreeControl: TvtCustomOutliner;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwTreeExpandAll
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

type _Instance_R_ = TkwTreeExpandAll;

{$Include ..\ScriptEngine\kwTreeControlWord.imp.pas}

// start class TkwTreeExpandAll

procedure TkwTreeExpandAll.DoTreeContol(const aTreeControl: TvtCustomOutliner;
  const aCtx: TtfwContext);
//#UC START# *4E01B8F1008E_506C41EF033F_var*
//#UC END# *4E01B8F1008E_506C41EF033F_var*
begin
//#UC START# *4E01B8F1008E_506C41EF033F_impl*
 aTreeControl.TreeStruct.RootNode.ExpandCollapseAll(True);
//#UC END# *4E01B8F1008E_506C41EF033F_impl*
end;//TkwTreeExpandAll.DoTreeContol

class function TkwTreeExpandAll.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'tree:ExpandAll';
end;//TkwTreeExpandAll.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwTreeControlWord.imp.pas}
{$IfEnd} //not NoScripts

end.