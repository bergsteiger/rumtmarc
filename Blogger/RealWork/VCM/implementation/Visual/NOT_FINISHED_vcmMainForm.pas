unit NOT_FINISHED_vcmMainForm;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VCM$Visual"
// Модуль: "w:/common/components/gui/Garant/VCM/implementation/Visual/NOT_FINISHED_vcmMainForm.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VCM$Visual::Visual::TvcmMainForm
//
// Базовый класс для главной формы приложения построенного на библиотеке vcm
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\common\components\gui\Garant\VCM\vcmDefine.inc}

interface

{$If not defined(NoVCM)}
uses
  afwInterfaces,
  vcmMainFormModelPart
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
type
 TvcmMainForm = class(TvcmMainFormModelPart, IafwMainForm)
  {* Базовый класс для главной формы приложения построенного на библиотеке vcm }
 protected
 // realized methods
   function pm_GetStatusBar: IafwStatusBar;
   procedure pm_SetStatusBar(const aValue: IafwStatusBar);
   function pm_GetStatus: IafwStatus;
   procedure pm_SetStatus(const aValue: IafwStatus);
 end;//TvcmMainForm
{$IfEnd} //not NoVCM

implementation

{$If not defined(NoVCM)}
uses
  vcmIEntityList,
  vcmMainFormRes
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}

// start class TvcmMainForm

function TvcmMainForm.pm_GetStatusBar: IafwStatusBar;
//#UC START# *473D96130328_49525C7A0114get_var*
//#UC END# *473D96130328_49525C7A0114get_var*
begin
//#UC START# *473D96130328_49525C7A0114get_impl*
 !!! Needs to be implemented !!!
//#UC END# *473D96130328_49525C7A0114get_impl*
end;//TvcmMainForm.pm_GetStatusBar

procedure TvcmMainForm.pm_SetStatusBar(const aValue: IafwStatusBar);
//#UC START# *473D96130328_49525C7A0114set_var*
//#UC END# *473D96130328_49525C7A0114set_var*
begin
//#UC START# *473D96130328_49525C7A0114set_impl*
 !!! Needs to be implemented !!!
//#UC END# *473D96130328_49525C7A0114set_impl*
end;//TvcmMainForm.pm_SetStatusBar

function TvcmMainForm.pm_GetStatus: IafwStatus;
//#UC START# *473D968101D2_49525C7A0114get_var*
//#UC END# *473D968101D2_49525C7A0114get_var*
begin
//#UC START# *473D968101D2_49525C7A0114get_impl*
 !!! Needs to be implemented !!!
//#UC END# *473D968101D2_49525C7A0114get_impl*
end;//TvcmMainForm.pm_GetStatus

procedure TvcmMainForm.pm_SetStatus(const aValue: IafwStatus);
//#UC START# *473D968101D2_49525C7A0114set_var*
//#UC END# *473D968101D2_49525C7A0114set_var*
begin
//#UC START# *473D968101D2_49525C7A0114set_impl*
 !!! Needs to be implemented !!!
//#UC END# *473D968101D2_49525C7A0114set_impl*
end;//TvcmMainForm.pm_SetStatus

{$IfEnd} //not NoVCM

end.