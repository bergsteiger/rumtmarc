unit NOT_FINISHED_StyleEditorFont_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/NOT_FINISHED_StyleEditorFont_Form.pas"
// Начат: 09.09.2009 16:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Основные прецеденты::Settings::View::Settings::Settings::StyleEditorFont
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
  PrimStyleEditorFont_Form,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  StyleEditorFont_ut_StyleEditorFont_UserType,
  l3Interfaces,
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
  TStyleEditorFontForm = {final form} class(TvcmEntityFormRef)
  Entities : TvcmEntities;
  protected
   procedure MakeControls; override;
  protected
  // realized methods
   procedure SendToAggregateReloadStylesTreeNotify(const aStyleName: Il3CString); override;
   procedure SendToAggregateReloadStyleTableNotify(aModified: Boolean = true); override;
   procedure DisableUpdate; override;
   procedure EnableUpdate; override;
   procedure LoadCurrentStateFromStyleInterface(aStyleID: Integer); override;
  end;//TStyleEditorFontForm
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
    { Локализуемые строки ut_StyleEditorFontLocalConstants }
   str_ut_StyleEditorFontCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_StyleEditorFontCaption'; rValue : 'StyleEditorFont');
    { Заголовок пользовательского типа "StyleEditorFont" }

// start class TStyleEditorFontForm

procedure TStyleEditorFontForm.SendToAggregateReloadStylesTreeNotify(const aStyleName: Il3CString);
//#UC START# *4AE86ABC0275_4ABA143303B0_var*
//#UC END# *4AE86ABC0275_4ABA143303B0_var*
begin
//#UC START# *4AE86ABC0275_4ABA143303B0_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE86ABC0275_4ABA143303B0_impl*
end;//TStyleEditorFontForm.SendToAggregateReloadStylesTreeNotify

procedure TStyleEditorFontForm.SendToAggregateReloadStyleTableNotify(aModified: Boolean = true);
//#UC START# *4AE86ACC01D1_4ABA143303B0_var*
//#UC END# *4AE86ACC01D1_4ABA143303B0_var*
begin
//#UC START# *4AE86ACC01D1_4ABA143303B0_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE86ACC01D1_4ABA143303B0_impl*
end;//TStyleEditorFontForm.SendToAggregateReloadStyleTableNotify

procedure TStyleEditorFontForm.DisableUpdate;
//#UC START# *4AE86AD803DA_4ABA143303B0_var*
//#UC END# *4AE86AD803DA_4ABA143303B0_var*
begin
//#UC START# *4AE86AD803DA_4ABA143303B0_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE86AD803DA_4ABA143303B0_impl*
end;//TStyleEditorFontForm.DisableUpdate

procedure TStyleEditorFontForm.EnableUpdate;
//#UC START# *4AE86AE20280_4ABA143303B0_var*
//#UC END# *4AE86AE20280_4ABA143303B0_var*
begin
//#UC START# *4AE86AE20280_4ABA143303B0_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE86AE20280_4ABA143303B0_impl*
end;//TStyleEditorFontForm.EnableUpdate

procedure TStyleEditorFontForm.LoadCurrentStateFromStyleInterface(aStyleID: Integer);
//#UC START# *4AEAE3590083_4ABA143303B0_var*
//#UC END# *4AEAE3590083_4ABA143303B0_var*
begin
//#UC START# *4AEAE3590083_4ABA143303B0_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AEAE3590083_4ABA143303B0_impl*
end;//TStyleEditorFontForm.LoadCurrentStateFromStyleInterface

procedure TStyleEditorFontForm.MakeControls;
begin
 inherited;
 with AddUsertype(ut_StyleEditorFontName,
  str_ut_StyleEditorFontCaption,
  str_ut_StyleEditorFontCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_StyleEditorFontName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_ut_StyleEditorFontCaption
 str_ut_StyleEditorFontCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.