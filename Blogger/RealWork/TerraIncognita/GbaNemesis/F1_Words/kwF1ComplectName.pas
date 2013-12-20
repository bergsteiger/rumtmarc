unit kwF1ComplectName;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Words"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Words/kwF1ComplectName.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> F1 Поддержка тестов::F1 Words::Words::f1_ComplectName
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
 TkwF1ComplectName = {final} class(_tfwAutoregisteringWord_)
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
 end;//TkwF1ComplectName

implementation

uses
  bsUtils
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;

type _Instance_R_ = TkwF1ComplectName;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwF1ComplectName

{$If not defined(NoScripts)}
procedure TkwF1ComplectName.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_50237E1C0249_var*
//#UC END# *4DAEEDE10285_50237E1C0249_var*
begin
//#UC START# *4DAEEDE10285_50237E1C0249_impl*
 aCtx.rEngine.PushString(bsComplectName);
//#UC END# *4DAEEDE10285_50237E1C0249_impl*
end;//TkwF1ComplectName.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwF1ComplectName.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'f1:ComplectName';
end;//TkwF1ComplectName.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

end.