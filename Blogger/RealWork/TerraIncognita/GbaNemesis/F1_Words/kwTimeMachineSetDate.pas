unit kwTimeMachineSetDate;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Words/kwTimeMachineSetDate.pas"
// Начат: 06.05.2011 15:18
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Поддержка тестов::F1 Words::Words::TkwTimeMachineSetDate
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
 TkwTimeMachineSetDate = class(_tfwAutoregisteringWord_)
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
 end;//TkwTimeMachineSetDate

implementation

uses
  DataAdapter,
  l3DateSt,
  bsConvert
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;

type _Instance_R_ = TkwTimeMachineSetDate;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwTimeMachineSetDate

{$If not defined(NoScripts)}
procedure TkwTimeMachineSetDate.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DC3D8E200AF_var*
//#UC END# *4DAEEDE10285_4DC3D8E200AF_var*
begin
//#UC START# *4DAEEDE10285_4DC3D8E200AF_impl*
 DefDataAdapter.TimeMachine.Date := bsBusinessToAdapter(FlexStr2Date(aCtx.rEngine.PopDelphiString));
//#UC END# *4DAEEDE10285_4DC3D8E200AF_impl*
end;//TkwTimeMachineSetDate.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwTimeMachineSetDate.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DC3D8E200AF_var*
//#UC END# *4DB0614603C8_4DC3D8E200AF_var*
begin
//#UC START# *4DB0614603C8_4DC3D8E200AF_impl*
 Result := 'timemachine:SetDate';
//#UC END# *4DB0614603C8_4DC3D8E200AF_impl*
end;//TkwTimeMachineSetDate.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

end.