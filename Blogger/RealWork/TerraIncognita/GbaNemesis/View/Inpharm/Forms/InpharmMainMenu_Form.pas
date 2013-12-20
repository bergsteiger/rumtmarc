unit InpharmMainMenu_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Inpharm/Forms/InpharmMainMenu_Form.pas"
// Начат: 29.12.2008 18:10
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Встроенные продукты::Inpharm::View::Inpharm::InpharmMainMenu
//
// Основное меню Инфарм
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  PrimMainMenu_Form
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  InpharmMainMenu_ut_mmmMain_UserType,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TInpharmMainMenuForm = {abstract form} class(TPrimMainMenuForm)
  {* Основное меню Инфарм }
 protected
  procedure MakeControls; override;
 end;//TInpharmMainMenuForm

 TvcmEntityFormRef = TInpharmMainMenuForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3MessageID
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки ut_mmmMainLocalConstants }
  str_ut_mmmMainCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_mmmMainCaption'; rValue : 'справочник ГАРАНТ-ИнФарм: Лекарства и фирмы');
   { Заголовок пользовательского типа "справочник ГАРАНТ-ИнФарм: Лекарства и фирмы" }

// start class TInpharmMainMenuForm

procedure TInpharmMainMenuForm.MakeControls;
begin
 inherited;
 with AddUsertype(ut_mmmMainName,
  str_ut_mmmMainCaption,
  str_ut_mmmMainCaption,
  true,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_mmmMainName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_ut_mmmMainCaption
 str_ut_mmmMainCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.