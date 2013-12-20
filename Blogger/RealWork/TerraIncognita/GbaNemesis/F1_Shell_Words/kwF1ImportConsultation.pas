unit kwF1ImportConsultation;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwF1ImportConsultation.pas"
// Начат: 06.06.2011 19:53
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::TkwF1ImportConsultation
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
 TkwF1ImportConsultation = class(_tfwAutoregisteringWord_)
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
 end;//TkwF1ImportConsultation

implementation

uses
  DataAdapter,
  nsTypes
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;

type _Instance_R_ = TkwF1ImportConsultation;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwF1ImportConsultation

{$If not defined(NoScripts)}
procedure TkwF1ImportConsultation.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DECF7F4001F_var*
var
 l_S : String;
//#UC END# *4DAEEDE10285_4DECF7F4001F_var*
begin
//#UC START# *4DAEEDE10285_4DECF7F4001F_impl*
 l_S := aCtx.rEngine.PopDelphiString;
 l_S := aCtx.rCaller.ResolveInputFilePath(l_S);
 DefDataAdapter.ConsultationManager.LoadFromXml(nsAStr(l_S){.S});
//#UC END# *4DAEEDE10285_4DECF7F4001F_impl*
end;//TkwF1ImportConsultation.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwF1ImportConsultation.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DECF7F4001F_var*
//#UC END# *4DB0614603C8_4DECF7F4001F_var*
begin
//#UC START# *4DB0614603C8_4DECF7F4001F_impl*
 Result := 'f1::ImportConsultation';
//#UC END# *4DB0614603C8_4DECF7F4001F_impl*
end;//TkwF1ImportConsultation.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

end.