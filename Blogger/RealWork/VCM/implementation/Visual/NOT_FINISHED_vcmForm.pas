unit NOT_FINISHED_vcmForm;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VCM$Visual"
// Модуль: "w:/common/components/gui/Garant/VCM/implementation/Visual/NOT_FINISHED_vcmForm.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::VCM$Visual::Visual::vcmForm
//
// Базовая реализация формы.
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
  Forms,
  vcmUserInteractiveForm,
  vcmLayoutImplementation
  ;

type
 TvcmCloseQueryEvent = procedure (Sender: TObject;
  var CanClose: Boolean;
  aCaller: TCustomForm) of object;

 TvcmInterfacedForm = class(TvcmUserInteractiveForm)
 protected
 // protected methods
   procedure DoSaveInSettings; virtual;
   procedure ClearModal; virtual;
     {* Сигнатура метода ClearModal }
   function CallCloseQuery(aCaller: TCustomForm): Boolean; virtual;
 public
 // public methods
   function NeedSaveInSettings: Boolean; virtual;
 end;//TvcmInterfacedForm

 TvcmTextForm = class(TvcmInterfacedForm, IafwTextControl)
 protected
 // realized methods
   function pm_GetCCaption: IafwCString;
   procedure pm_SetCCaption(const aValue: IafwCString);
 end;//TvcmTextForm

 TvcmFormImplementation = class(TvcmLayoutImplementation)
 end;//TvcmFormImplementation

 TvcmForm = class(TvcmTextForm)
 protected
 // protected methods
   procedure DoLoadFromSettings; virtual;
 end;//TvcmForm
{$IfEnd} //not NoVCM

implementation

{$If not defined(NoVCM)}
uses
  Classes
  {$If not defined(NoVCM) AND not defined(NoVGScene)}
  ,
  vcmDialogs
  {$IfEnd} //not NoVCM AND not NoVGScene
  ,
  vtDialogsResEx
  ;

// start class TvcmInterfacedForm

procedure TvcmInterfacedForm.DoSaveInSettings;
//#UC START# *4F7B072201AA_49525AB4009E_var*
//#UC END# *4F7B072201AA_49525AB4009E_var*
begin
//#UC START# *4F7B072201AA_49525AB4009E_impl*
 !!! Needs to be implemented !!!
//#UC END# *4F7B072201AA_49525AB4009E_impl*
end;//TvcmInterfacedForm.DoSaveInSettings

function TvcmInterfacedForm.NeedSaveInSettings: Boolean;
//#UC START# *4FC38C4C0119_49525AB4009E_var*
//#UC END# *4FC38C4C0119_49525AB4009E_var*
begin
//#UC START# *4FC38C4C0119_49525AB4009E_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FC38C4C0119_49525AB4009E_impl*
end;//TvcmInterfacedForm.NeedSaveInSettings

procedure TvcmInterfacedForm.ClearModal;
//#UC START# *501FEC7203A5_49525AB4009E_var*
//#UC END# *501FEC7203A5_49525AB4009E_var*
begin
//#UC START# *501FEC7203A5_49525AB4009E_impl*
 !!! Needs to be implemented !!!
//#UC END# *501FEC7203A5_49525AB4009E_impl*
end;//TvcmInterfacedForm.ClearModal

function TvcmInterfacedForm.CallCloseQuery(aCaller: TCustomForm): Boolean;
//#UC START# *4980407F0076_49525AB4009E_var*
//#UC END# *4980407F0076_49525AB4009E_var*
begin
//#UC START# *4980407F0076_49525AB4009E_impl*
 !!! Needs to be implemented !!!
//#UC END# *4980407F0076_49525AB4009E_impl*
end;//TvcmInterfacedForm.CallCloseQuery
// start class TvcmTextForm

function TvcmTextForm.pm_GetCCaption: IafwCString;
//#UC START# *473DAC05025F_49525AC30370get_var*
//#UC END# *473DAC05025F_49525AC30370get_var*
begin
//#UC START# *473DAC05025F_49525AC30370get_impl*
 !!! Needs to be implemented !!!
//#UC END# *473DAC05025F_49525AC30370get_impl*
end;//TvcmTextForm.pm_GetCCaption

procedure TvcmTextForm.pm_SetCCaption(const aValue: IafwCString);
//#UC START# *473DAC05025F_49525AC30370set_var*
//#UC END# *473DAC05025F_49525AC30370set_var*
begin
//#UC START# *473DAC05025F_49525AC30370set_impl*
 !!! Needs to be implemented !!!
//#UC END# *473DAC05025F_49525AC30370set_impl*
end;//TvcmTextForm.pm_SetCCaption
// start class TvcmForm

procedure TvcmForm.DoLoadFromSettings;
//#UC START# *4E7C2AA3037E_49525AED007D_var*
//#UC END# *4E7C2AA3037E_49525AED007D_var*
begin
//#UC START# *4E7C2AA3037E_49525AED007D_impl*
 !!! Needs to be implemented !!!
//#UC END# *4E7C2AA3037E_49525AED007D_impl*
end;//TvcmForm.DoLoadFromSettings
{$IfEnd} //not NoVCM
end.