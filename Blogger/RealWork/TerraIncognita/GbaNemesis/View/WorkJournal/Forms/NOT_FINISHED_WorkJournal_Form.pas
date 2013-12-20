unit NOT_FINISHED_WorkJournal_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/WorkJournal/Forms/NOT_FINISHED_WorkJournal_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Основные прецеденты::WorkJournal::View::WorkJournal::BaseWorkJournal::WorkJournal
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
  PrimWorkJournalOptions_Form
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
  TWorkJournalForm = {final form} class(TvcmEntityFormRef)
  Entities : TvcmEntities;
  JournalTree: TnscTreeView;
  protected
  // realized methods
   procedure Tree_Wrap_Test(const aParams: IvcmTestParamsPrim);
     {* Перенос по словам }
   procedure Tree_Wrap_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Перенос по словам }
   procedure Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
     {* Удалить }
   procedure Edit_Delete_GetState(var State: TvcmOperationStateIndex);
     {* Удалить }
   procedure Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Удалить }
  end;//TWorkJournalForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TWorkJournalForm

procedure TWorkJournalForm.Tree_Wrap_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4BDAF7B803CF_4A811C620210test_var*
//#UC END# *4BDAF7B803CF_4A811C620210test_var*
begin
//#UC START# *4BDAF7B803CF_4A811C620210test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4BDAF7B803CF_4A811C620210test_impl*
end;//TWorkJournalForm.Tree_Wrap_Test

procedure TWorkJournalForm.Tree_Wrap_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4BDAF7B803CF_4A811C620210exec_var*
//#UC END# *4BDAF7B803CF_4A811C620210exec_var*
begin
//#UC START# *4BDAF7B803CF_4A811C620210exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4BDAF7B803CF_4A811C620210exec_impl*
end;//TWorkJournalForm.Tree_Wrap_Execute

procedure TWorkJournalForm.Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C7D0CC90052_4A811C620210test_var*
//#UC END# *4C7D0CC90052_4A811C620210test_var*
begin
//#UC START# *4C7D0CC90052_4A811C620210test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C7D0CC90052_4A811C620210test_impl*
end;//TWorkJournalForm.Edit_Delete_Test

procedure TWorkJournalForm.Edit_Delete_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4C7D0CC90052_4A811C620210getstate_var*
//#UC END# *4C7D0CC90052_4A811C620210getstate_var*
begin
//#UC START# *4C7D0CC90052_4A811C620210getstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C7D0CC90052_4A811C620210getstate_impl*
end;//TWorkJournalForm.Edit_Delete_GetState

procedure TWorkJournalForm.Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7D0CC90052_4A811C620210exec_var*
//#UC END# *4C7D0CC90052_4A811C620210exec_var*
begin
//#UC START# *4C7D0CC90052_4A811C620210exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C7D0CC90052_4A811C620210exec_impl*
end;//TWorkJournalForm.Edit_Delete_Execute

{$IfEnd} //not Admin AND not Monitorings

end.