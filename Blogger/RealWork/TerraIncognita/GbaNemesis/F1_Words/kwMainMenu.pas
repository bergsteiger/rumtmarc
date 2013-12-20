unit kwMainMenu;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Words/kwMainMenu.pas"
// Начат: 20.04.2011 21:14
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> F1 Поддержка тестов::F1 Words::Words::MainMenu
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
 _F1Test_Parent_ = _tfwAutoregisteringWord_;
 {$Include ..\F1_Words\F1Test.imp.pas}
 TkwMainMenu = class(_F1Test_)
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
 end;//TkwMainMenu

implementation

uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  StdRes,
  lgTypes
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  OfficeLike_Result_Controls,
  afwFacade,
  nsUtils,
  nsConst,
  bsTypesNew
  ;

type _Instance_R_ = TkwMainMenu;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

{$Include ..\F1_Words\F1Test.imp.pas}

// start class TkwMainMenu

{$If not defined(NoScripts)}
procedure TkwMainMenu.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DAF1471030D_var*
//#UC END# *4DAEEDE10285_4DAF1471030D_var*
begin
//#UC START# *4DAEEDE10285_4DAF1471030D_impl*
 TdmStdRes.OpenMainMenuIfNeeded(nil);
//#UC END# *4DAEEDE10285_4DAF1471030D_impl*
end;//TkwMainMenu.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwMainMenu.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'ОсновноеМеню';
end;//TkwMainMenu.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

end.