unit kwF1WasBeep;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwF1WasBeep.pas"
// Начат: 02.06.2011 16:14
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::TkwF1WasBeep
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\GbaNemesis\nsDefine.inc}

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
 TkwF1WasBeep = class(_tfwAutoregisteringWord_)
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
 end;//TkwF1WasBeep
{$IfEnd} //nsTest

implementation

{$If defined(nsTest)}
uses
  nsUtils
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

type _Instance_R_ = TkwF1WasBeep;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwF1WasBeep

{$If not defined(NoScripts)}
procedure TkwF1WasBeep.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DE77E8F0061_var*
//#UC END# *4DAEEDE10285_4DE77E8F0061_var*
begin
//#UC START# *4DAEEDE10285_4DE77E8F0061_impl*
 aCtx.rEngine.PushBool(g_WasBeep);
 g_WasBeep := false;
//#UC END# *4DAEEDE10285_4DE77E8F0061_impl*
end;//TkwF1WasBeep.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwF1WasBeep.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DE77E8F0061_var*
//#UC END# *4DB0614603C8_4DE77E8F0061_var*
begin
//#UC START# *4DB0614603C8_4DE77E8F0061_impl*
 Result := 'f1::WasBeep';
//#UC END# *4DB0614603C8_4DE77E8F0061_impl*
end;//TkwF1WasBeep.GetWordNameForRegister
{$IfEnd} //not NoScripts

{$IfEnd} //nsTest

initialization
{$If defined(nsTest)}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //nsTest

end.