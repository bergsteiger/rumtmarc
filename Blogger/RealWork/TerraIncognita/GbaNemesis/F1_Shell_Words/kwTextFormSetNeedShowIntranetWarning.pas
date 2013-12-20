unit kwTextFormSetNeedShowIntranetWarning;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwTextFormSetNeedShowIntranetWarning.pas"
// Начат: 19.01.2012 19^58
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::TkwTextFormSetNeedShowIntranetWarning
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\GbaNemesis\nsDefine.inc}

interface

{$If defined(nsTest)}
uses
  Classes
  {$If not defined(Admin) AND not defined(Monitorings)}
  ,
  ExText_Form
  {$IfEnd} //not Admin AND not Monitorings
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  Forms,
  Controls
  ;
{$IfEnd} //nsTest

{$If defined(nsTest)}
type
 {$Include ..\F1_Shell_Words\ExTextFormWord.imp.pas}
 TkwTextFormSetNeedShowIntranetWarning = class(_ExTextFormWord_)
 protected
 // realized methods
   procedure DoTextForm(aForm: TExTextForm;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwTextFormSetNeedShowIntranetWarning
{$IfEnd} //nsTest

implementation

{$If defined(nsTest)}
uses
  afwFacade,
  SysUtils
  {$If not defined(NoVCM)}
  ,
  vcmForm
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  Windows
  ;
{$IfEnd} //nsTest

{$If defined(nsTest)}

type _Instance_R_ = TkwTextFormSetNeedShowIntranetWarning;

{$Include ..\F1_Shell_Words\ExTextFormWord.imp.pas}

// start class TkwTextFormSetNeedShowIntranetWarning

procedure TkwTextFormSetNeedShowIntranetWarning.DoTextForm(aForm: TExTextForm;
  const aCtx: TtfwContext);
//#UC START# *4DCA5B340360_4F183D860083_var*
//#UC END# *4DCA5B340360_4F183D860083_var*
begin
//#UC START# *4DCA5B340360_4F183D860083_impl*
 aForm.NeedShowIntranetWarningHack := aCtx.rEngine.PopBool;
//#UC END# *4DCA5B340360_4F183D860083_impl*
end;//TkwTextFormSetNeedShowIntranetWarning.DoTextForm

{$If not defined(NoScripts)}
class function TkwTextFormSetNeedShowIntranetWarning.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4F183D860083_var*
//#UC END# *4DB0614603C8_4F183D860083_var*
begin
//#UC START# *4DB0614603C8_4F183D860083_impl*
 Result := 'textform:SetNeedShowIntranetWarning';
//#UC END# *4DB0614603C8_4F183D860083_impl*
end;//TkwTextFormSetNeedShowIntranetWarning.GetWordNameForRegister
{$IfEnd} //not NoScripts

{$IfEnd} //nsTest

initialization
{$If defined(nsTest)}
 {$Include ..\F1_Shell_Words\ExTextFormWord.imp.pas}
{$IfEnd} //nsTest

end.