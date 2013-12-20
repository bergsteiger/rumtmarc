unit kwIntegrationOpenLink;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Words"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Words/kwIntegrationOpenLink.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> F1 Поддержка тестов::F1 Words::Integration::integration_OpenLink
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
 TkwIntegrationOpenLink = {final} class(_tfwAutoregisteringWord_)
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
 end;//TkwIntegrationOpenLink

implementation

uses
  SysUtils
  {$If not defined(Admin) AND not defined(Monitorings)}
  ,
  nsIntegrationSupport
  {$IfEnd} //not Admin AND not Monitorings
  
  {$If not defined(Admin) AND not defined(Monitorings)}
  ,
  nsIntegrationModelPart
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

type _Instance_R_ = TkwIntegrationOpenLink;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwIntegrationOpenLink

{$If not defined(NoScripts)}
procedure TkwIntegrationOpenLink.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_5135F0090070_var*
var
 l_Link: ansistring;
//#UC END# *4DAEEDE10285_5135F0090070_var*
begin
//#UC START# *4DAEEDE10285_5135F0090070_impl*
 l_Link := aCtx.rEngine.PopDelphiString;
 GarantShowLink(PAnsiChar(l_Link), False, 500);
//#UC END# *4DAEEDE10285_5135F0090070_impl*
end;//TkwIntegrationOpenLink.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwIntegrationOpenLink.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'integration:OpenLink';
end;//TkwIntegrationOpenLink.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

end.