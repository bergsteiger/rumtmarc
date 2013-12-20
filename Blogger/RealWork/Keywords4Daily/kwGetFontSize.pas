unit kwGetFontSize;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Keywords4Daily"
// Модуль: "w:/common/components/rtl/Garant/Keywords4Daily/kwGetFontSize.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Tests::Keywords4Daily::SupportWords::GetFontSize
//
// Возвращает установленный размер шрифта для стиля "Нормальный".
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

{$If defined(nsTest) AND not defined(NoScripts) AND not defined(NoVCM)}
uses
  tfwScriptingInterfaces
  ;
{$IfEnd} //nsTest AND not NoScripts AND not NoVCM

{$If defined(nsTest) AND not defined(NoScripts) AND not defined(NoVCM)}
type
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 TkwGetFontSize = {final} class(_tfwAutoregisteringWord_)
  {* Возвращает установленный размер шрифта для стиля "Нормальный". }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwGetFontSize
{$IfEnd} //nsTest AND not NoScripts AND not NoVCM

implementation

{$If defined(nsTest) AND not defined(NoScripts) AND not defined(NoVCM)}
uses
  evStyleInterface,
  SysUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //nsTest AND not NoScripts AND not NoVCM

{$If defined(nsTest) AND not defined(NoScripts) AND not defined(NoVCM)}

type _Instance_R_ = TkwGetFontSize;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwGetFontSize

procedure TkwGetFontSize.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_509B9A8A0270_var*
var
 l_SI : TevStyleInterface;
//#UC END# *4DAEEDE10285_509B9A8A0270_var*
begin
//#UC START# *4DAEEDE10285_509B9A8A0270_impl*
 l_SI := TevStyleInterface.Make;
 try
  aCtx.rEngine.PushInt(l_SI.Font.Size);
 finally
  FreeAndNil(l_SI);
 end;
//#UC END# *4DAEEDE10285_509B9A8A0270_impl*
end;//TkwGetFontSize.DoDoIt

class function TkwGetFontSize.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'GetFontSize';
end;//TkwGetFontSize.GetWordNameForRegister

{$IfEnd} //nsTest AND not NoScripts AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoScripts) AND not defined(NoVCM)}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //nsTest AND not NoScripts AND not NoVCM

end.