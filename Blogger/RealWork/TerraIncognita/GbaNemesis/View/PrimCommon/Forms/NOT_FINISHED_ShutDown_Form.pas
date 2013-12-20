unit NOT_FINISHED_ShutDown_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimCommon/Forms/NOT_FINISHED_ShutDown_Form.pas"
// Начат: 21.08.2009 20:15
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Базовые определения предметной области::F1 Application Template::View::PrimCommon::PrimCommon::ShutDown
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  PrimShutDown_Form,
  vtLabel,
  ExtCtrls,
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;

type
  TShutDownForm = {final form} class(TvcmEntityFormRef)
  Entities : TvcmEntities;
  WarningText: TvtLabel;
  ShutdownTimer: TTimer;
  protected
  // realized methods
   procedure UpdateCloseButton; override;
   procedure UpdateSize; override;
  end;//TShutDownForm

implementation

{$R *.DFM}

// start class TShutDownForm

procedure TShutDownForm.UpdateCloseButton;
//#UC START# *4AE97AF80121_4A8EC8950152_var*
//#UC END# *4AE97AF80121_4A8EC8950152_var*
begin
//#UC START# *4AE97AF80121_4A8EC8950152_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE97AF80121_4A8EC8950152_impl*
end;//TShutDownForm.UpdateCloseButton

procedure TShutDownForm.UpdateSize;
//#UC START# *4AE97B0F0294_4A8EC8950152_var*
//#UC END# *4AE97B0F0294_4A8EC8950152_var*
begin
//#UC START# *4AE97B0F0294_4A8EC8950152_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE97B0F0294_4A8EC8950152_impl*
end;//TShutDownForm.UpdateSize

end.