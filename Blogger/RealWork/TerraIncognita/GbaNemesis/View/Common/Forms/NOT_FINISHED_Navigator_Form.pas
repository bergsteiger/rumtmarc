unit NOT_FINISHED_Navigator_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/NOT_FINISHED_Navigator_Form.pas"
// Начат: 24.08.2009 20:35
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Core::Common::View::Common::PrimF1Common::Navigator
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
  PrimNavigatorOptions_Form
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
  Ten_Navigator = {final form} class(TvcmEntityFormRef, NavigatorFormDef)
  Entities : TvcmEntities;
  NavigatorTree: TnscTreeView;
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
   procedure Edit_FindContext_Test(const aParams: IvcmTestParamsPrim);
     {* Поиск }
   procedure Edit_FindContext_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Поиск }
   procedure Edit_FindNext_Test(const aParams: IvcmTestParamsPrim);
     {* Найти далее }
   procedure Edit_FindNext_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Найти далее }
   procedure Edit_FindPrev_Test(const aParams: IvcmTestParamsPrim);
   procedure Edit_FindPrev_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure ExecuteCurrentElement; override;
  end;//Ten_Navigator

  TNavigatorForm = Ten_Navigator;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsNavigatorTreeStruct
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class Ten_Navigator

procedure Ten_Navigator.Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *494F89C30197_4ABBB23903D8test_var*
//#UC END# *494F89C30197_4ABBB23903D8test_var*
begin
//#UC START# *494F89C30197_4ABBB23903D8test_impl*
 !!! Needs to be implemented !!!
//#UC END# *494F89C30197_4ABBB23903D8test_impl*
end;//Ten_Navigator.Edit_Delete_Test

procedure Ten_Navigator.Edit_Delete_GetState(var State: TvcmOperationStateIndex);
//#UC START# *494F89C30197_4ABBB23903D8getstate_var*
//#UC END# *494F89C30197_4ABBB23903D8getstate_var*
begin
//#UC START# *494F89C30197_4ABBB23903D8getstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *494F89C30197_4ABBB23903D8getstate_impl*
end;//Ten_Navigator.Edit_Delete_GetState

procedure Ten_Navigator.Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *494F89C30197_4ABBB23903D8exec_var*
//#UC END# *494F89C30197_4ABBB23903D8exec_var*
begin
//#UC START# *494F89C30197_4ABBB23903D8exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *494F89C30197_4ABBB23903D8exec_impl*
end;//Ten_Navigator.Edit_Delete_Execute

procedure Ten_Navigator.Edit_Copy_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4951284902BD_4ABBB23903D8test_var*
//#UC END# *4951284902BD_4ABBB23903D8test_var*
begin
//#UC START# *4951284902BD_4ABBB23903D8test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4951284902BD_4ABBB23903D8test_impl*
end;//Ten_Navigator.Edit_Copy_Test

procedure Ten_Navigator.Edit_Copy_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4951284902BD_4ABBB23903D8exec_var*
//#UC END# *4951284902BD_4ABBB23903D8exec_var*
begin
//#UC START# *4951284902BD_4ABBB23903D8exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4951284902BD_4ABBB23903D8exec_impl*
end;//Ten_Navigator.Edit_Copy_Execute

procedure Ten_Navigator.Edit_FindContext_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49512B5D0009_4ABBB23903D8test_var*
//#UC END# *49512B5D0009_4ABBB23903D8test_var*
begin
//#UC START# *49512B5D0009_4ABBB23903D8test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49512B5D0009_4ABBB23903D8test_impl*
end;//Ten_Navigator.Edit_FindContext_Test

procedure Ten_Navigator.Edit_FindContext_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49512B5D0009_4ABBB23903D8exec_var*
//#UC END# *49512B5D0009_4ABBB23903D8exec_var*
begin
//#UC START# *49512B5D0009_4ABBB23903D8exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49512B5D0009_4ABBB23903D8exec_impl*
end;//Ten_Navigator.Edit_FindContext_Execute

procedure Ten_Navigator.Edit_FindNext_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *495130C40123_4ABBB23903D8test_var*
//#UC END# *495130C40123_4ABBB23903D8test_var*
begin
//#UC START# *495130C40123_4ABBB23903D8test_impl*
 !!! Needs to be implemented !!!
//#UC END# *495130C40123_4ABBB23903D8test_impl*
end;//Ten_Navigator.Edit_FindNext_Test

procedure Ten_Navigator.Edit_FindNext_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *495130C40123_4ABBB23903D8exec_var*
//#UC END# *495130C40123_4ABBB23903D8exec_var*
begin
//#UC START# *495130C40123_4ABBB23903D8exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *495130C40123_4ABBB23903D8exec_impl*
end;//Ten_Navigator.Edit_FindNext_Execute

procedure Ten_Navigator.Edit_FindPrev_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49FEDE4703B8_4ABBB23903D8test_var*
//#UC END# *49FEDE4703B8_4ABBB23903D8test_var*
begin
//#UC START# *49FEDE4703B8_4ABBB23903D8test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49FEDE4703B8_4ABBB23903D8test_impl*
end;//Ten_Navigator.Edit_FindPrev_Test

procedure Ten_Navigator.Edit_FindPrev_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49FEDE4703B8_4ABBB23903D8exec_var*
//#UC END# *49FEDE4703B8_4ABBB23903D8exec_var*
begin
//#UC START# *49FEDE4703B8_4ABBB23903D8exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49FEDE4703B8_4ABBB23903D8exec_impl*
end;//Ten_Navigator.Edit_FindPrev_Execute

procedure Ten_Navigator.ExecuteCurrentElement;
//#UC START# *4C87A9640232_4ABBB23903D8_var*
//#UC END# *4C87A9640232_4ABBB23903D8_var*
begin
//#UC START# *4C87A9640232_4ABBB23903D8_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C87A9640232_4ABBB23903D8_impl*
end;//Ten_Navigator.ExecuteCurrentElement

{$IfEnd} //not Admin AND not Monitorings

end.