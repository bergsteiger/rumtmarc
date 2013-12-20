unit kwFiltersList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Words/kwFiltersList.pas"
// Начат: 29.04.2011 15:11
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Поддержка тестов::F1 Words::Words::TkwFiltersList
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
 _VCMWord_Parent_ = _tfwAutoregisteringWord_;
 {$Include w:\common\components\rtl\Garant\ScriptEngine\VCMWord.imp.pas}
 TkwFiltersList = class(_VCMWord_)
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
 end;//TkwFiltersList

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
  
  {$If not defined(NoVCM)}
  ,
  vcmForm
  {$IfEnd} //not NoVCM
  ,
  Controls
  {$If not defined(NoVCM)}
  ,
  StdResPrim
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  
  {$If defined(nsTest)}
  ,
  afwAnswer
  {$IfEnd} //nsTest
  
  ;

type _Instance_R_ = TkwFiltersList;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

{$Include w:\common\components\rtl\Garant\ScriptEngine\VCMWord.imp.pas}

// start class TkwFiltersList

{$If not defined(NoScripts)}
procedure TkwFiltersList.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DBA9CE301B4_var*
//#UC END# *4DAEEDE10285_4DBA9CE301B4_var*
begin
//#UC START# *4DAEEDE10285_4DBA9CE301B4_impl*
 aCtx.rCaller.Check(vcmDispatcher.EntityOperation(TdmStdRes.opcode_Filters_FiltersListOpen, vcmParams));
//#UC END# *4DAEEDE10285_4DBA9CE301B4_impl*
end;//TkwFiltersList.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwFiltersList.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DBA9CE301B4_var*
//#UC END# *4DB0614603C8_4DBA9CE301B4_var*
begin
//#UC START# *4DB0614603C8_4DBA9CE301B4_impl*
 Result := 'filters:Open';
//#UC END# *4DB0614603C8_4DBA9CE301B4_impl*
end;//TkwFiltersList.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

end.