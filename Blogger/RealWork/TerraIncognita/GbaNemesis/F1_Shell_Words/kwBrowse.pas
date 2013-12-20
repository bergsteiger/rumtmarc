unit kwBrowse;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwBrowse.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::browse
//
// открывает ссылку в браузере
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\GbaNemesis\nsDefine.inc}

interface

uses
  l3Interfaces
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  ;

type
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwStrWord.imp.pas}
 TkwBrowse = {final} class(_tfwStrWord_)
  {* открывает ссылку в браузере }
 protected
 // realized methods
    {$If not defined(NoScripts)}
   procedure DoString(const aCtx: TtfwContext;
     const aStr: Il3CString); override;
    {$IfEnd} //not NoScripts
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwBrowse

implementation

uses
  nsExternalObject,
  SysUtils,
  l3String,
  l3Base
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;

type _Instance_R_ = TkwBrowse;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwStrWord.imp.pas}

// start class TkwBrowse

{$If not defined(NoScripts)}
procedure TkwBrowse.DoString(const aCtx: TtfwContext;
  const aStr: Il3CString);
//#UC START# *4DD0CF6F0197_5046188F0356_var*
//#UC END# *4DD0CF6F0197_5046188F0356_var*
begin
//#UC START# *4DD0CF6F0197_5046188F0356_impl*
 nsDoShellExecute(aStr, False, nil, True);
//#UC END# *4DD0CF6F0197_5046188F0356_impl*
end;//TkwBrowse.DoString
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwBrowse.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'browse';
end;//TkwBrowse.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwStrWord.imp.pas}

end.