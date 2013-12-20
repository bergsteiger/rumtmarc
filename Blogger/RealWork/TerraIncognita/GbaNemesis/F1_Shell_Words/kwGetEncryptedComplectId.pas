unit kwGetEncryptedComplectId;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwGetEncryptedComplectId.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::GetEncryptedComplectId
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
 TkwGetEncryptedComplectId = {final} class(_tfwAutoregisteringWord_)
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
 end;//TkwGetEncryptedComplectId

implementation

uses
  DataAdapter,
  IOUnit,
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

type _Instance_R_ = TkwGetEncryptedComplectId;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwGetEncryptedComplectId

{$If not defined(NoScripts)}
procedure TkwGetEncryptedComplectId.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_51AEF36002D1_var*
var
 l_Id: IString;
//#UC END# *4DAEEDE10285_51AEF36002D1_var*
begin
//#UC START# *4DAEEDE10285_51AEF36002D1_impl*
 DefDataAdapter.CommonInterfaces.GetEncryptedComplectId(l_Id);
 aCtx.rEngine.PushString(nsCStr(l_Id));
//#UC END# *4DAEEDE10285_51AEF36002D1_impl*
end;//TkwGetEncryptedComplectId.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwGetEncryptedComplectId.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'GetEncryptedComplectId';
end;//TkwGetEncryptedComplectId.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

end.