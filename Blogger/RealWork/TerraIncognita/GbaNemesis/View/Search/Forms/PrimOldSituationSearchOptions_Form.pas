unit PrimOldSituationSearchOptions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimOldSituationSearchOptions_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMContainer::Class>> F1 Основные прецеденты::Search::View::Search::PrimOldSituationSearchOptions
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
  OfficeLike_Usual_Controls,
  OfficeLike_Text_Controls,
  PrimOldSituationSearch_Form,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimOldSituationSearchOptionsForm = {form} class(TPrimOldSituationSearchForm)
 protected
  procedure InitEntities; override;
 protected
 // realized methods
   procedure Edit_Delete_GetState(var State: TvcmOperationStateIndex);
     {* Удалить }
 end;//TPrimOldSituationSearchOptionsForm

 TvcmContainerFormRef = TPrimOldSituationSearchOptionsForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TPrimOldSituationSearchOptionsForm

procedure TPrimOldSituationSearchOptionsForm.Edit_Delete_GetState(var State: TvcmOperationStateIndex);
//#UC START# *494F89C30197_4C44149E023Fgetstate_var*
//#UC END# *494F89C30197_4C44149E023Fgetstate_var*
begin
//#UC START# *494F89C30197_4C44149E023Fgetstate_impl*
 // - ничего не делаем 
//#UC END# *494F89C30197_4C44149E023Fgetstate_impl*
end;//TPrimOldSituationSearchOptionsForm.Edit_Delete_GetState

procedure TPrimOldSituationSearchOptionsForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Edit, nil);
  PublishOp(en_Edit, op_Delete, nil, nil, Edit_Delete_GetState);
  ShowInContextMenu(en_Edit, op_Delete, true);
  PublishOp(en_Edit, op_Copy, nil, nil, nil);
  ShowInContextMenu(en_Edit, op_Copy, true);
  PublishOp(en_Edit, op_Cut, nil, nil, nil);
  ShowInContextMenu(en_Edit, op_Cut, true);
  PublishOp(en_Edit, op_FindContext, nil, nil, nil);
  PublishOp(en_Edit, op_FindNext, nil, nil, nil);
  PublishOp(en_Edit, op_Paste, nil, nil, nil);
  ShowInContextMenu(en_Edit, op_Paste, true);
  PublishOp(en_Edit, op_Undo, nil, nil, nil);
  ShowInContextMenu(en_Edit, op_Undo, true);
  PublishOp(en_Edit, op_Redo, nil, nil, nil);
  ShowInContextMenu(en_Edit, op_Redo, true);
  PublishOp(en_Edit, op_SelectAll, nil, nil, nil);
  ShowInContextMenu(en_Edit, op_SelectAll, true);
  PublishOp(en_Edit, op_Deselect, nil, nil, nil);
  ShowInContextMenu(en_Edit, op_Deselect, true);
  PublishOp(en_Edit, op_FindPrev, nil, nil, nil);
 end;//with Entities.Entities
end;

{$IfEnd} //not Admin AND not Monitorings

end.