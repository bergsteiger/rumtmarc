unit kwPopNodeToTest;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "DUnit Script Support"
// Модуль: "w:/common/components/rtl/Garant/DUnit_Script_Support/kwPopNodeToTest.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi DUnit Scripting::DUnit Script Support::DUnit Keywords::pop_NodeToTest
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
 TkwPopNodeToTest = {final} class(_tfwAutoregisteringWord_)
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
 end;//TkwPopNodeToTest
{$IfEnd} //nsTest

implementation

{$If defined(nsTest)}
uses
  GUITestRunner,
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

type _Instance_R_ = TkwPopNodeToTest;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwPopNodeToTest

{$If not defined(NoScripts)}
procedure TkwPopNodeToTest.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_51305D6603D8_var*
var
 l_Node   : TTreeNode;
 l_GUITest: TGUITestRunner;
//#UC END# *4DAEEDE10285_51305D6603D8_var*
begin
//#UC START# *4DAEEDE10285_51305D6603D8_impl*
 if aCtx.rEngine.IsTopObj then
 begin
  l_GUITest := aCtx.rEngine.PopObj as TGUITestRunner;
  if aCtx.rEngine.IsTopObj then
  begin
   l_Node := aCtx.rEngine.PopObj as TTreeNode;
   aCtx.rEngine.PushIntf(l_GUITest.NodeToTest(l_Node));
  end // if aCtx.rEngine.IsTopObj then
  else
   RunnerAssert(False, 'Не задан узел дерева тестов!', aCtx);
 end // if aCtx.rEngine.IsTopObj then
 else
  RunnerAssert(False, 'Не задана форма приложения!', aCtx);
//#UC END# *4DAEEDE10285_51305D6603D8_impl*
end;//TkwPopNodeToTest.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwPopNodeToTest.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:NodeToTest';
end;//TkwPopNodeToTest.GetWordNameForRegister
{$IfEnd} //not NoScripts

{$IfEnd} //nsTest

initialization
{$If defined(nsTest)}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //nsTest

end.