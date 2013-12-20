unit PrimGroupPropertyOptions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimGroupPropertyOptions_Form.pas"
// Начат: 10.09.2010 14:35
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Администратор::Admin::View::Admin::PrimGroupPropertyOptions
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Admin)}
uses
  PrimGroupProperty_Form,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}
type
 TPrimGroupPropertyOptionsForm = {form} class(TPrimGroupPropertyForm)
 protected
  procedure InitEntities; override;
 end;//TPrimGroupPropertyOptionsForm

 TvcmEntityFormRef = TPrimGroupPropertyOptionsForm;
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
uses
  StdRes {a},
  OfficeLike_Result_Controls
  ;
{$IfEnd} //Admin

{$If defined(Admin)}

// start class TPrimGroupPropertyOptionsForm

procedure TPrimGroupPropertyOptionsForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  
  ShowInContextMenu(en_Result, op_Ok, true);
  ShowInToolbar(en_Result, op_Ok, true);
  
  ShowInContextMenu(en_Result, op_Cancel, true);
  ShowInToolbar(en_Result, op_Cancel, true);
 end;//with Entities.Entities
end;

{$IfEnd} //Admin

end.