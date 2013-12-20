unit kwConfigRestore;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwConfigRestore.pas"
// Начат: 08.09.2011 17:54
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::TkwConfigRestore
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\GbaNemesis\nsDefine.inc}

interface

uses
  Classes
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  ;

type
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 TkwConfigRestore = class(_tfwAutoregisteringWord_)
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
 end;//TkwConfigRestore

implementation

uses
  SysUtils
  {$If not defined(Admin) AND not defined(Monitorings)}
  ,
  nsConfigurationList
  {$IfEnd} //not Admin AND not Monitorings
  
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;

type _Instance_R_ = TkwConfigRestore;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwConfigRestore

{$If not defined(NoScripts)}
procedure TkwConfigRestore.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4E68C9020275_var*
//#UC END# *4DAEEDE10285_4E68C9020275_var*
begin
//#UC START# *4DAEEDE10285_4E68C9020275_impl*
 ConfigurationList.ActiveConfig.Load(true);
//#UC END# *4DAEEDE10285_4E68C9020275_impl*
end;//TkwConfigRestore.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwConfigRestore.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4E68C9020275_var*
//#UC END# *4DB0614603C8_4E68C9020275_var*
begin
//#UC START# *4DB0614603C8_4E68C9020275_impl*
 Result := 'Config:Restore';
//#UC END# *4DB0614603C8_4E68C9020275_impl*
end;//TkwConfigRestore.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

end.