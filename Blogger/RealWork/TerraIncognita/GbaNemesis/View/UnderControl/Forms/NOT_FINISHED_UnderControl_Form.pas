unit NOT_FINISHED_UnderControl_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/UnderControl/Forms/NOT_FINISHED_UnderControl_Form.pas"
// Начат: 29.10.2010 17:08
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Работа с документом и списком документов::UnderControl::View::UnderControl::UnderControl$FP::UnderControl
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
  Common_FormDefinitions_Controls,
  PrimUnderControlOptions_Form
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  ,
  Classes {a},
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
  TenUnderControl = {final form} class(TvcmEntityFormRef, UnderControlFormDef)
  Entities : TvcmEntities;
  UnderControlList: TnscTreeView;
  protected
  // realized methods
   procedure Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
     {* Удалить }
   procedure Edit_Delete_GetState(var State: TvcmOperationStateIndex);
     {* Удалить }
   procedure Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Удалить }
   procedure Edit_Copy_Test(const aParams: IvcmTestParamsPrim);
     {* Копировать }
   procedure Edit_Copy_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Копировать }
   procedure Edit_Cut_Test(const aParams: IvcmTestParamsPrim);
     {* Вырезать }
   procedure Edit_Cut_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Вырезать }
   procedure Edit_FindContext_Test(const aParams: IvcmTestParamsPrim);
     {* Поиск }
   procedure Edit_FindContext_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Поиск }
   procedure Edit_FindNext_Test(const aParams: IvcmTestParamsPrim);
     {* Найти далее }
   procedure Edit_FindNext_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Найти далее }
   procedure Edit_Undo_Test(const aParams: IvcmTestParamsPrim);
     {* Отмена }
   procedure Edit_Undo_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Отмена }
   procedure Edit_Redo_Test(const aParams: IvcmTestParamsPrim);
     {* Возврат }
   procedure Edit_Redo_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Возврат }
   procedure Edit_SelectAll_Test(const aParams: IvcmTestParamsPrim);
     {* Выделить всё }
   procedure Edit_SelectAll_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Выделить всё }
   procedure Edit_Deselect_Test(const aParams: IvcmTestParamsPrim);
     {* Снять выделение }
   procedure Edit_Deselect_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Снять выделение }
   procedure Edit_FindPrev_Test(const aParams: IvcmTestParamsPrim);
   procedure Edit_FindPrev_Execute(const aParams: IvcmExecuteParamsPrim);
  end;//TenUnderControl

  TUnderControlForm = TenUnderControl;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  ControlStatusUtils
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TenUnderControl

procedure TenUnderControl.Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *494F89C30197_4ABCD2D80364test_var*
//#UC END# *494F89C30197_4ABCD2D80364test_var*
begin
//#UC START# *494F89C30197_4ABCD2D80364test_impl*
 !!! Needs to be implemented !!!
//#UC END# *494F89C30197_4ABCD2D80364test_impl*
end;//TenUnderControl.Edit_Delete_Test

procedure TenUnderControl.Edit_Delete_GetState(var State: TvcmOperationStateIndex);
//#UC START# *494F89C30197_4ABCD2D80364getstate_var*
//#UC END# *494F89C30197_4ABCD2D80364getstate_var*
begin
//#UC START# *494F89C30197_4ABCD2D80364getstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *494F89C30197_4ABCD2D80364getstate_impl*
end;//TenUnderControl.Edit_Delete_GetState

procedure TenUnderControl.Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *494F89C30197_4ABCD2D80364exec_var*
//#UC END# *494F89C30197_4ABCD2D80364exec_var*
begin
//#UC START# *494F89C30197_4ABCD2D80364exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *494F89C30197_4ABCD2D80364exec_impl*
end;//TenUnderControl.Edit_Delete_Execute

procedure TenUnderControl.Edit_Copy_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4951284902BD_4ABCD2D80364test_var*
//#UC END# *4951284902BD_4ABCD2D80364test_var*
begin
//#UC START# *4951284902BD_4ABCD2D80364test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4951284902BD_4ABCD2D80364test_impl*
end;//TenUnderControl.Edit_Copy_Test

procedure TenUnderControl.Edit_Copy_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4951284902BD_4ABCD2D80364exec_var*
//#UC END# *4951284902BD_4ABCD2D80364exec_var*
begin
//#UC START# *4951284902BD_4ABCD2D80364exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4951284902BD_4ABCD2D80364exec_impl*
end;//TenUnderControl.Edit_Copy_Execute

procedure TenUnderControl.Edit_Cut_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4951285702E1_4ABCD2D80364test_var*
//#UC END# *4951285702E1_4ABCD2D80364test_var*
begin
//#UC START# *4951285702E1_4ABCD2D80364test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4951285702E1_4ABCD2D80364test_impl*
end;//TenUnderControl.Edit_Cut_Test

procedure TenUnderControl.Edit_Cut_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4951285702E1_4ABCD2D80364exec_var*
//#UC END# *4951285702E1_4ABCD2D80364exec_var*
begin
//#UC START# *4951285702E1_4ABCD2D80364exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4951285702E1_4ABCD2D80364exec_impl*
end;//TenUnderControl.Edit_Cut_Execute

procedure TenUnderControl.Edit_FindContext_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49512B5D0009_4ABCD2D80364test_var*
//#UC END# *49512B5D0009_4ABCD2D80364test_var*
begin
//#UC START# *49512B5D0009_4ABCD2D80364test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49512B5D0009_4ABCD2D80364test_impl*
end;//TenUnderControl.Edit_FindContext_Test

procedure TenUnderControl.Edit_FindContext_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49512B5D0009_4ABCD2D80364exec_var*
//#UC END# *49512B5D0009_4ABCD2D80364exec_var*
begin
//#UC START# *49512B5D0009_4ABCD2D80364exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49512B5D0009_4ABCD2D80364exec_impl*
end;//TenUnderControl.Edit_FindContext_Execute

procedure TenUnderControl.Edit_FindNext_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *495130C40123_4ABCD2D80364test_var*
//#UC END# *495130C40123_4ABCD2D80364test_var*
begin
//#UC START# *495130C40123_4ABCD2D80364test_impl*
 !!! Needs to be implemented !!!
//#UC END# *495130C40123_4ABCD2D80364test_impl*
end;//TenUnderControl.Edit_FindNext_Test

procedure TenUnderControl.Edit_FindNext_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *495130C40123_4ABCD2D80364exec_var*
//#UC END# *495130C40123_4ABCD2D80364exec_var*
begin
//#UC START# *495130C40123_4ABCD2D80364exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *495130C40123_4ABCD2D80364exec_impl*
end;//TenUnderControl.Edit_FindNext_Execute

procedure TenUnderControl.Edit_Undo_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49EDFCA2006D_4ABCD2D80364test_var*
//#UC END# *49EDFCA2006D_4ABCD2D80364test_var*
begin
//#UC START# *49EDFCA2006D_4ABCD2D80364test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EDFCA2006D_4ABCD2D80364test_impl*
end;//TenUnderControl.Edit_Undo_Test

procedure TenUnderControl.Edit_Undo_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49EDFCA2006D_4ABCD2D80364exec_var*
//#UC END# *49EDFCA2006D_4ABCD2D80364exec_var*
begin
//#UC START# *49EDFCA2006D_4ABCD2D80364exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EDFCA2006D_4ABCD2D80364exec_impl*
end;//TenUnderControl.Edit_Undo_Execute

procedure TenUnderControl.Edit_Redo_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49EDFCB100BC_4ABCD2D80364test_var*
//#UC END# *49EDFCB100BC_4ABCD2D80364test_var*
begin
//#UC START# *49EDFCB100BC_4ABCD2D80364test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EDFCB100BC_4ABCD2D80364test_impl*
end;//TenUnderControl.Edit_Redo_Test

procedure TenUnderControl.Edit_Redo_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49EDFCB100BC_4ABCD2D80364exec_var*
//#UC END# *49EDFCB100BC_4ABCD2D80364exec_var*
begin
//#UC START# *49EDFCB100BC_4ABCD2D80364exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EDFCB100BC_4ABCD2D80364exec_impl*
end;//TenUnderControl.Edit_Redo_Execute

procedure TenUnderControl.Edit_SelectAll_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49EE01AA02BE_4ABCD2D80364test_var*
//#UC END# *49EE01AA02BE_4ABCD2D80364test_var*
begin
//#UC START# *49EE01AA02BE_4ABCD2D80364test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EE01AA02BE_4ABCD2D80364test_impl*
end;//TenUnderControl.Edit_SelectAll_Test

procedure TenUnderControl.Edit_SelectAll_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49EE01AA02BE_4ABCD2D80364exec_var*
//#UC END# *49EE01AA02BE_4ABCD2D80364exec_var*
begin
//#UC START# *49EE01AA02BE_4ABCD2D80364exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EE01AA02BE_4ABCD2D80364exec_impl*
end;//TenUnderControl.Edit_SelectAll_Execute

procedure TenUnderControl.Edit_Deselect_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49EE01BC022E_4ABCD2D80364test_var*
//#UC END# *49EE01BC022E_4ABCD2D80364test_var*
begin
//#UC START# *49EE01BC022E_4ABCD2D80364test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EE01BC022E_4ABCD2D80364test_impl*
end;//TenUnderControl.Edit_Deselect_Test

procedure TenUnderControl.Edit_Deselect_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49EE01BC022E_4ABCD2D80364exec_var*
//#UC END# *49EE01BC022E_4ABCD2D80364exec_var*
begin
//#UC START# *49EE01BC022E_4ABCD2D80364exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EE01BC022E_4ABCD2D80364exec_impl*
end;//TenUnderControl.Edit_Deselect_Execute

procedure TenUnderControl.Edit_FindPrev_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49FEDE4703B8_4ABCD2D80364test_var*
//#UC END# *49FEDE4703B8_4ABCD2D80364test_var*
begin
//#UC START# *49FEDE4703B8_4ABCD2D80364test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49FEDE4703B8_4ABCD2D80364test_impl*
end;//TenUnderControl.Edit_FindPrev_Test

procedure TenUnderControl.Edit_FindPrev_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49FEDE4703B8_4ABCD2D80364exec_var*
//#UC END# *49FEDE4703B8_4ABCD2D80364exec_var*
begin
//#UC START# *49FEDE4703B8_4ABCD2D80364exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49FEDE4703B8_4ABCD2D80364exec_impl*
end;//TenUnderControl.Edit_FindPrev_Execute

{$IfEnd} //not Admin AND not Monitorings

end.