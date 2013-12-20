unit kwOpenOldSituationCard;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwOpenOldSituationCard.pas"
// Начат: 31.01.2012 17:24
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::TkwOpenOldSituationCard
//
// открыть ППС 5.х (Преемственная)
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
 TkwOpenOldSituationCard = class(_tfwAutoregisteringWord_)
  {* открыть ППС 5.х (Преемственная) }
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
 end;//TkwOpenOldSituationCard

implementation

uses
  SysUtils
  {$If not defined(NoVCM)}
  ,
  StdRes
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;

type _Instance_R_ = TkwOpenOldSituationCard;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwOpenOldSituationCard

{$If not defined(NoScripts)}
procedure TkwOpenOldSituationCard.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F27EB56012C_var*
//#UC END# *4DAEEDE10285_4F27EB56012C_var*
begin
//#UC START# *4DAEEDE10285_4F27EB56012C_impl*
 TdmStdRes.OpenOldSituationCard(nil);
//#UC END# *4DAEEDE10285_4F27EB56012C_impl*
end;//TkwOpenOldSituationCard.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwOpenOldSituationCard.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4F27EB56012C_var*
//#UC END# *4DB0614603C8_4F27EB56012C_var*
begin
//#UC START# *4DB0614603C8_4F27EB56012C_impl*
 Result := 'ППС_Преемственная_Prim'
//#UC END# *4DB0614603C8_4F27EB56012C_impl*
end;//TkwOpenOldSituationCard.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

end.