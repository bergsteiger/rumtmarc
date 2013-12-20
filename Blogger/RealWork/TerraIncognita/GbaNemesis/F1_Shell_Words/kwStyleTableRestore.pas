unit kwStyleTableRestore;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwStyleTableRestore.pas"
// Начат: 08.09.2011 18:38
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::TkwStyleTableRestore
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
 TkwStyleTableRestore = class(_tfwAutoregisteringWord_)
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
 end;//TkwStyleTableRestore

implementation

uses
  SysUtils
  {$If not defined(Admin) AND not defined(Monitorings)}
  ,
  nsConfigurationList
  {$IfEnd} //not Admin AND not Monitorings
  
  {$If not defined(Admin) AND not defined(Monitorings)}
  ,
  nsStyleEditor
  {$IfEnd} //not Admin AND not Monitorings
  
  {$If not defined(DesignTimeLibrary)}
  ,
  evStyleTableSpy
  {$IfEnd} //not DesignTimeLibrary
  
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;

type _Instance_R_ = TkwStyleTableRestore;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwStyleTableRestore

{$If not defined(NoScripts)}
procedure TkwStyleTableRestore.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4E68D33202D5_var*
//#UC END# *4DAEEDE10285_4E68D33202D5_var*
begin
//#UC START# *4DAEEDE10285_4E68D33202D5_impl*
 TnsStyleTableSettingsInfo.Make(ConfigurationList.ActiveConfig.Configuration).Load(true);
//#UC END# *4DAEEDE10285_4E68D33202D5_impl*
end;//TkwStyleTableRestore.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwStyleTableRestore.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4E68D33202D5_var*
//#UC END# *4DB0614603C8_4E68D33202D5_var*
begin
//#UC START# *4DB0614603C8_4E68D33202D5_impl*
 Result := 'StyleTable:Restore';
//#UC END# *4DB0614603C8_4E68D33202D5_impl*
end;//TkwStyleTableRestore.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

end.