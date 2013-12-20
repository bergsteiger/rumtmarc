unit kwPopITestGetName;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "DUnit Script Support"
// Модуль: "w:/common/components/rtl/Garant/DUnit_Script_Support/kwPopITestGetName.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi DUnit Scripting::DUnit Script Support::DUnit Keywords::pop_ITest_GetName
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
 TkwPopITestGetName = {final} class(_kwWorkWithITest_)
 protected
 // realized methods
   procedure DoWithItest(const aTest: ITest;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwPopITestGetName
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

type _Instance_R_ = TkwPopITestGetName;

{$Include ..\DUnit_Script_Support\kwWorkWithITest.imp.pas}

// start class TkwPopITestGetName

procedure TkwPopITestGetName.DoWithItest(const aTest: ITest;
  const aCtx: TtfwContext);
//#UC START# *5135E9E503C4_513594D80030_var*
//#UC END# *5135E9E503C4_513594D80030_var*
begin
//#UC START# *5135E9E503C4_513594D80030_impl*
 aCtx.rEngine.PushString(aTest.Name);
//#UC END# *5135E9E503C4_513594D80030_impl*
end;//TkwPopITestGetName.DoWithItest

{$If not defined(NoScripts)}
class function TkwPopITestGetName.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:ITest:GetName';
end;//TkwPopITestGetName.GetWordNameForRegister
{$IfEnd} //not NoScripts

{$IfEnd} //nsTest

initialization
{$If defined(nsTest)}
 {$Include ..\DUnit_Script_Support\kwWorkWithITest.imp.pas}
{$IfEnd} //nsTest

end.