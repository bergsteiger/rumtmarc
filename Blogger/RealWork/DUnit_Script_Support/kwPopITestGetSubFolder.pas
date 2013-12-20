unit kwPopITestGetSubFolder;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "DUnit Script Support"
// Модуль: "w:/common/components/rtl/Garant/DUnit_Script_Support/kwPopITestGetSubFolder.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi DUnit Scripting::DUnit Script Support::DUnit Keywords::pop_ITest_GetSubFolder
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
  TestFrameWork
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //nsTest

{$If defined(nsTest)}
type
 {$Include ..\DUnit_Script_Support\kwWorkWithITest.imp.pas}
 TkwPopITestGetSubFolder = {final} class(_kwWorkWithITest_)
 protected
 // realized methods
   procedure DoWithItest(const aTest: ITest;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwPopITestGetSubFolder
{$IfEnd} //nsTest

implementation

{$If defined(nsTest)}
uses
  Classes
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

type _Instance_R_ = TkwPopITestGetSubFolder;

{$Include ..\DUnit_Script_Support\kwWorkWithITest.imp.pas}

// start class TkwPopITestGetSubFolder

procedure TkwPopITestGetSubFolder.DoWithItest(const aTest: ITest;
  const aCtx: TtfwContext);
//#UC START# *5135E9E503C4_513595FA037D_var*
//#UC END# *5135E9E503C4_513595FA037D_var*
begin
//#UC START# *5135E9E503C4_513595FA037D_impl*
 aCtx.rEngine.PushString(aTest.GetSubFolder);
//#UC END# *5135E9E503C4_513595FA037D_impl*
end;//TkwPopITestGetSubFolder.DoWithItest

{$If not defined(NoScripts)}
class function TkwPopITestGetSubFolder.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:ITest:GetSubFolder';
end;//TkwPopITestGetSubFolder.GetWordNameForRegister
{$IfEnd} //not NoScripts

{$IfEnd} //nsTest

initialization
{$If defined(nsTest)}
 {$Include ..\DUnit_Script_Support\kwWorkWithITest.imp.pas}
{$IfEnd} //nsTest

end.