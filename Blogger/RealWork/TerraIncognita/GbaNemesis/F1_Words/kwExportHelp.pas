unit kwExportHelp;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Words/kwExportHelp.pas"
// Начат: 19.05.2011 19:02
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Поддержка тестов::F1 Words::Words::TkwExportHelp
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
 TkwExportHelp = class(_tfwAutoregisteringWord_)
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
 end;//TkwExportHelp

implementation

uses
  SysUtils
  {$If not defined(NoVCM)}
  ,
  vcmMainForm
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmBase
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

type _Instance_R_ = TkwExportHelp;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwExportHelp

{$If not defined(NoScripts)}
procedure TkwExportHelp.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DD530DD03D8_var*
var
 l_S : String;
//#UC END# *4DAEEDE10285_4DD530DD03D8_var*
begin
//#UC START# *4DAEEDE10285_4DD530DD03D8_impl*
 l_S := aCtx.rCaller.ResolveOutputFilePath(aCtx.rEngine.PopDelphiString);
 (vcmDispatcher.FormDispatcher.CurrentMainForm.VCLWinControl As TvcmMainForm).DoExportHelp(l_S, false);
 aCtx.rCaller.CheckWithEtalon(l_S, #0);
//#UC END# *4DAEEDE10285_4DD530DD03D8_impl*
end;//TkwExportHelp.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwExportHelp.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DD530DD03D8_var*
//#UC END# *4DB0614603C8_4DD530DD03D8_var*
begin
//#UC START# *4DB0614603C8_4DD530DD03D8_impl*
 Result := 'vcm:ExportHelp';
//#UC END# *4DB0614603C8_4DD530DD03D8_impl*
end;//TkwExportHelp.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

end.