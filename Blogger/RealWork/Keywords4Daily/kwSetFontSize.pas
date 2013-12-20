unit kwSetFontSize;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Keywords4Daily"
// Модуль: "w:/common/components/rtl/Garant/Keywords4Daily/kwSetFontSize.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Tests::Keywords4Daily::SupportWords::SetFontSize
//
// Устанавливает размер шрифта для стиля "Нормальный".
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
 TkwSetFontSize = {final} class(_tfwAutoregisteringWord_)
  {* Устанавливает размер шрифта для стиля "Нормальный". }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwSetFontSize
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

type _Instance_R_ = TkwSetFontSize;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwSetFontSize

procedure TkwSetFontSize.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_509B8C5A0200_var*
var
 l_Size: Integer;
 l_SI  : TevStyleInterface;
//#UC END# *4DAEEDE10285_509B8C5A0200_var*
begin
//#UC START# *4DAEEDE10285_509B8C5A0200_impl*
 if aCtx.rEngine.IsTopInt then
 begin
  l_Size := aCtx.rEngine.PopInt;
  l_SI := TevStyleInterface.Make;
  l_SI.Font.Size := l_Size;
  FreeAndNil(l_SI);
 end // if aCtx.rEngine.IsTopInt then
 else
  Assert(False, 'Размер шрифта!'); 
//#UC END# *4DAEEDE10285_509B8C5A0200_impl*
end;//TkwSetFontSize.DoDoIt

class function TkwSetFontSize.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'SetFontSize';
end;//TkwSetFontSize.GetWordNameForRegister

{$IfEnd} //nsTest AND not NoScripts AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoScripts) AND not defined(NoVCM)}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //nsTest AND not NoScripts AND not NoVCM

end.