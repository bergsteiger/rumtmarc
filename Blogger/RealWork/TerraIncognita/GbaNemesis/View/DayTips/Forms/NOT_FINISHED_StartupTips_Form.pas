unit NOT_FINISHED_StartupTips_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DayTips/Forms/NOT_FINISHED_StartupTips_Form.pas"
// Начат: 04.09.2009 12:52
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Интерфейсные элементы::DayTips::View::DayTips::DayTips::StartupTips
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimStartupTips_Form,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  StartupTips_ut_StartupTips_UserType,
  eeCheckBox,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
  TefStartupTips = {final form} class(TvcmEntityFormRef)
  Entities : TvcmEntities;
  ShowCheckBox: TeeCheckBox;
  protected
   procedure MakeControls; override;
  protected
  // realized methods
   procedure UpdateTip; override;
  end;//TefStartupTips

  TStartupTipsForm = TefStartupTips;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3MessageID
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
    { Локализуемые строки ut_StartupTipsLocalConstants }
   str_ut_StartupTipsCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_StartupTipsCaption'; rValue : 'StartupTips');
    { Заголовок пользовательского типа "StartupTips" }

// start class TefStartupTips

procedure TefStartupTips.UpdateTip;
//#UC START# *4AC5E3D50287_4AB9DA410090_var*
//#UC END# *4AC5E3D50287_4AB9DA410090_var*
begin
//#UC START# *4AC5E3D50287_4AB9DA410090_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC5E3D50287_4AB9DA410090_impl*
end;//TefStartupTips.UpdateTip

procedure TefStartupTips.MakeControls;
begin
 inherited;
 with AddUsertype(ut_StartupTipsName,
  str_ut_StartupTipsCaption,
  str_ut_StartupTipsCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_StartupTipsName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_ut_StartupTipsCaption
 str_ut_StartupTipsCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.