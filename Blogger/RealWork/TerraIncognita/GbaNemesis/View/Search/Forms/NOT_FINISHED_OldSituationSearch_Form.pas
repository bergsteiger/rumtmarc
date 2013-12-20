unit NOT_FINISHED_OldSituationSearch_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/NOT_FINISHED_OldSituationSearch_Form.pas"
// Начат: 08.09.2009 15:35
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Основные прецеденты::Search::View::Search::Search::OldSituationSearch
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
  PrimOldSituationSearchOptions_Form,
  SearchUnit
  {$If defined(Nemesis)}
  ,
  nscContextFilter
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
  TcfOldSituationSearch = {final form} class(TvcmContainerFormRef)
  Entities : TvcmEntities;
  ContextFilter: TnscContextFilter;
  protected
  // realized methods
   function FillQuery: IQuery; override;
   procedure Edit_Copy_Test(const aParams: IvcmTestParamsPrim);
     {* Копировать }
   procedure Edit_Copy_GetState(var State: TvcmOperationStateIndex);
     {* Копировать }
   procedure Edit_Copy_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Копировать }
   procedure Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
     {* Удалить }
   procedure Edit_Delete_GetState(var State: TvcmOperationStateIndex);
     {* Удалить }
   procedure Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Удалить }
  end;//TcfOldSituationSearch

  TOldSituationSearchForm = TcfOldSituationSearch;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TcfOldSituationSearch

function TcfOldSituationSearch.FillQuery: IQuery;
//#UC START# *4AE88A7A02B9_4AB8D885020F_var*
//#UC END# *4AE88A7A02B9_4AB8D885020F_var*
begin
//#UC START# *4AE88A7A02B9_4AB8D885020F_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE88A7A02B9_4AB8D885020F_impl*
end;//TcfOldSituationSearch.FillQuery

procedure TcfOldSituationSearch.Edit_Copy_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C7D0C7B0185_4AB8D885020Ftest_var*
//#UC END# *4C7D0C7B0185_4AB8D885020Ftest_var*
begin
//#UC START# *4C7D0C7B0185_4AB8D885020Ftest_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C7D0C7B0185_4AB8D885020Ftest_impl*
end;//TcfOldSituationSearch.Edit_Copy_Test

procedure TcfOldSituationSearch.Edit_Copy_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4C7D0C7B0185_4AB8D885020Fgetstate_var*
//#UC END# *4C7D0C7B0185_4AB8D885020Fgetstate_var*
begin
//#UC START# *4C7D0C7B0185_4AB8D885020Fgetstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C7D0C7B0185_4AB8D885020Fgetstate_impl*
end;//TcfOldSituationSearch.Edit_Copy_GetState

procedure TcfOldSituationSearch.Edit_Copy_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7D0C7B0185_4AB8D885020Fexec_var*
//#UC END# *4C7D0C7B0185_4AB8D885020Fexec_var*
begin
//#UC START# *4C7D0C7B0185_4AB8D885020Fexec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C7D0C7B0185_4AB8D885020Fexec_impl*
end;//TcfOldSituationSearch.Edit_Copy_Execute

procedure TcfOldSituationSearch.Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C7D0CC90052_4AB8D885020Ftest_var*
//#UC END# *4C7D0CC90052_4AB8D885020Ftest_var*
begin
//#UC START# *4C7D0CC90052_4AB8D885020Ftest_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C7D0CC90052_4AB8D885020Ftest_impl*
end;//TcfOldSituationSearch.Edit_Delete_Test

procedure TcfOldSituationSearch.Edit_Delete_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4C7D0CC90052_4AB8D885020Fgetstate_var*
//#UC END# *4C7D0CC90052_4AB8D885020Fgetstate_var*
begin
//#UC START# *4C7D0CC90052_4AB8D885020Fgetstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C7D0CC90052_4AB8D885020Fgetstate_impl*
end;//TcfOldSituationSearch.Edit_Delete_GetState

procedure TcfOldSituationSearch.Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7D0CC90052_4AB8D885020Fexec_var*
//#UC END# *4C7D0CC90052_4AB8D885020Fexec_var*
begin
//#UC START# *4C7D0CC90052_4AB8D885020Fexec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C7D0CC90052_4AB8D885020Fexec_impl*
end;//TcfOldSituationSearch.Edit_Delete_Execute

{$IfEnd} //not Admin AND not Monitorings

end.