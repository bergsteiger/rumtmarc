unit kwF1BaseDate;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Words/kwF1BaseDate.pas"
// Начат: 14.11.2011 19:32
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> F1 Поддержка тестов::F1 Words::Words::f1_BaseDate
//
// Кладёт на стек дату базы в строковом формате
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
 TkwF1BaseDate = class(_tfwAutoregisteringWord_)
  {* Кладёт на стек дату базы в строковом формате }
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
 end;//TkwF1BaseDate

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

type _Instance_R_ = TkwF1BaseDate;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwF1BaseDate

{$If not defined(NoScripts)}
procedure TkwF1BaseDate.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4EC134690154_var*
//#UC END# *4DAEEDE10285_4EC134690154_var*
begin
//#UC START# *4DAEEDE10285_4EC134690154_impl*
 aCtx.rEngine.PushString(bsBaseDateStr);
//#UC END# *4DAEEDE10285_4EC134690154_impl*
end;//TkwF1BaseDate.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwF1BaseDate.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'f1:BaseDate';
end;//TkwF1BaseDate.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

end.