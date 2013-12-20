unit kwIsNodeFolder;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "DUnit Script Support"
// Модуль: "w:/common/components/rtl/Garant/DUnit_Script_Support/kwIsNodeFolder.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi DUnit Scripting::DUnit Script Support::DUnit Keywords::IsNodeFolder
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\DUnit_Script_Support\dsDefine.inc}

interface

{$If defined(nsTest)}
uses
  Classes
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //nsTest

{$If defined(nsTest)}
type
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 TkwIsNodeFolder = {final} class(_tfwAutoregisteringWord_)
 protected
 // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwIsNodeFolder
{$IfEnd} //nsTest

implementation

{$If defined(nsTest)}
uses
  FolderSupport,
  ComCtrls
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //nsTest

{$If defined(nsTest)}

type _Instance_R_ = TkwIsNodeFolder;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwIsNodeFolder

{$If not defined(NoScripts)}
procedure TkwIsNodeFolder.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_5136F762005D_var*
var
 l_Node: TTreeNode;
//#UC END# *4DAEEDE10285_5136F762005D_var*
begin
//#UC START# *4DAEEDE10285_5136F762005D_impl*
 if aCtx.rEngine.IsTopObj then
 begin
  l_Node := aCtx.rEngine.PopObj as TTreeNode;
  aCtx.rEngine.PushBool(IsNodeFolder(l_Node));
 end // if aCtx.rEngine.IsTopObj then
 else
  RunnerAssert(False, 'Не задан узел дерева!', aCtx);
//#UC END# *4DAEEDE10285_5136F762005D_impl*
end;//TkwIsNodeFolder.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwIsNodeFolder.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'IsNodeFolder';
end;//TkwIsNodeFolder.GetWordNameForRegister
{$IfEnd} //not NoScripts

{$IfEnd} //nsTest

initialization
{$If defined(nsTest)}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //nsTest

end.