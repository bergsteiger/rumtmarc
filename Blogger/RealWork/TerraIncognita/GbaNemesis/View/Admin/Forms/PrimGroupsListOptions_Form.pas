unit PrimGroupsListOptions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimGroupsListOptions_Form.pas"
// Начат: 10.09.2010 14:34
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Администратор::Admin::View::Admin::PrimGroupsListOptions
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
  PrimGroupsList_Form,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}
type
 TPrimGroupsListOptionsForm = {form} class(TPrimGroupsListForm)
 protected
  procedure InitEntities; override;
 end;//TPrimGroupsListOptionsForm

 TvcmEntityFormRef = TPrimGroupsListOptionsForm;
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
uses
  StdRes {a},
  Admin_Users_Controls,
  OfficeLike_Usual_Controls
  ;
{$IfEnd} //Admin

{$If defined(Admin)}

// start class TPrimGroupsListOptionsForm

procedure TPrimGroupsListOptionsForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  
  ShowInContextMenu(en_Groups, op_Add, false);
  ShowInToolbar(en_Groups, op_Add, true);
  
  ShowInContextMenu(en_Groups, op_ChangeBaseAccess, true);
  ShowInToolbar(en_Groups, op_ChangeBaseAccess, false);
  
  ShowInContextMenu(en_Groups, op_Rename, true);
  ShowInToolbar(en_Groups, op_Rename, true);
  
  ShowInContextMenu(en_Edit, op_Delete, true);
  ShowInToolbar(en_Edit, op_Delete, true);
 end;//with Entities.Entities
end;

{$IfEnd} //Admin

end.