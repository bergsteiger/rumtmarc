unit kwDocumentsCacheClear;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Words/kwDocumentsCacheClear.pas"
// Начат: 27.04.2011 18:55
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Поддержка тестов::F1 Words::Words::TkwDocumentsCacheClear
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
 TkwDocumentsCacheClear = class(_tfwAutoregisteringWord_)
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
 end;//TkwDocumentsCacheClear

implementation

uses
  evDocumentsCache
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;

type _Instance_R_ = TkwDocumentsCacheClear;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwDocumentsCacheClear

{$If not defined(NoScripts)}
procedure TkwDocumentsCacheClear.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB82E4D0197_var*
//#UC END# *4DAEEDE10285_4DB82E4D0197_var*
begin
//#UC START# *4DAEEDE10285_4DB82E4D0197_impl*
 TevDocumentsCache.Clear;
//#UC END# *4DAEEDE10285_4DB82E4D0197_impl*
end;//TkwDocumentsCacheClear.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwDocumentsCacheClear.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DB82E4D0197_var*
//#UC END# *4DB0614603C8_4DB82E4D0197_var*
begin
//#UC START# *4DB0614603C8_4DB82E4D0197_impl*
 Result := 'documentscache:Clear';
//#UC END# *4DB0614603C8_4DB82E4D0197_impl*
end;//TkwDocumentsCacheClear.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

end.