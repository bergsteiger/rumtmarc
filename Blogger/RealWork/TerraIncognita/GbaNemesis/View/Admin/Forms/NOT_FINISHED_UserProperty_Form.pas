unit NOT_FINISHED_UserProperty_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/NOT_FINISHED_UserProperty_Form.pas"
// Начат: 07.09.2009 18:00
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Администратор::Admin::View::Admin::Admin::UserProperty
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Admin)}
uses
  PrimUserPropertyOptions_Form,
  Admin_FormDefinitions_Controls,
  AdminInterfaces,
  vtComboBoxQS,
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}
type
  TefUserProperty = {final form} class(TvcmEntityFormRef, UserPropertyFormDef)
  Entities : TvcmEntities;
  edGroup: TvtComboBoxQS;
  protected
  // realized methods
   procedure DoCheckUnsavedProperties; override;
   procedure Result_Cancel_Test(const aParams: IvcmTestParamsPrim);
     {* Отмена }
   procedure Result_Cancel_GetState(var State: TvcmOperationStateIndex);
     {* Отмена }
   procedure Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Отмена }
   procedure Result_Save_Test(const aParams: IvcmTestParamsPrim);
   procedure Result_Save_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure SaveChangedProfile(const aDataSource: IdsUserProperty); override;
   function CheckUnsaved(const aUserProperty: IdsUserProperty): Boolean; override;
     {* Возвращает признак отсутсвия несохраненных изменений (при необходимости
       выдавая запрос пользователю) }
   procedure RestoreFields; override;
  end;//TefUserProperty

  TUserPropertyForm = TefUserProperty;
{$IfEnd} //Admin

implementation

{$R *.DFM}

{$If defined(Admin)}

// start class TefUserProperty

procedure TefUserProperty.DoCheckUnsavedProperties;
//#UC START# *49F6DD7B03DC_4AA8E47C0065_var*
//#UC END# *49F6DD7B03DC_4AA8E47C0065_var*
begin
//#UC START# *49F6DD7B03DC_4AA8E47C0065_impl*
 !!! Needs to be implemented !!!
//#UC END# *49F6DD7B03DC_4AA8E47C0065_impl*
end;//TefUserProperty.DoCheckUnsavedProperties

procedure TefUserProperty.Result_Cancel_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4AC5D61E0284_4AA8E47C0065test_var*
//#UC END# *4AC5D61E0284_4AA8E47C0065test_var*
begin
//#UC START# *4AC5D61E0284_4AA8E47C0065test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC5D61E0284_4AA8E47C0065test_impl*
end;//TefUserProperty.Result_Cancel_Test

procedure TefUserProperty.Result_Cancel_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4AC5D61E0284_4AA8E47C0065getstate_var*
//#UC END# *4AC5D61E0284_4AA8E47C0065getstate_var*
begin
//#UC START# *4AC5D61E0284_4AA8E47C0065getstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC5D61E0284_4AA8E47C0065getstate_impl*
end;//TefUserProperty.Result_Cancel_GetState

procedure TefUserProperty.Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AC5D61E0284_4AA8E47C0065exec_var*
//#UC END# *4AC5D61E0284_4AA8E47C0065exec_var*
begin
//#UC START# *4AC5D61E0284_4AA8E47C0065exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC5D61E0284_4AA8E47C0065exec_impl*
end;//TefUserProperty.Result_Cancel_Execute

procedure TefUserProperty.Result_Save_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4AFB01B903B0_4AA8E47C0065test_var*
//#UC END# *4AFB01B903B0_4AA8E47C0065test_var*
begin
//#UC START# *4AFB01B903B0_4AA8E47C0065test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AFB01B903B0_4AA8E47C0065test_impl*
end;//TefUserProperty.Result_Save_Test

procedure TefUserProperty.Result_Save_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AFB01B903B0_4AA8E47C0065exec_var*
//#UC END# *4AFB01B903B0_4AA8E47C0065exec_var*
begin
//#UC START# *4AFB01B903B0_4AA8E47C0065exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AFB01B903B0_4AA8E47C0065exec_impl*
end;//TefUserProperty.Result_Save_Execute

procedure TefUserProperty.SaveChangedProfile(const aDataSource: IdsUserProperty);
//#UC START# *4C8A0FEE00C1_4AA8E47C0065_var*
//#UC END# *4C8A0FEE00C1_4AA8E47C0065_var*
begin
//#UC START# *4C8A0FEE00C1_4AA8E47C0065_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C8A0FEE00C1_4AA8E47C0065_impl*
end;//TefUserProperty.SaveChangedProfile

function TefUserProperty.CheckUnsaved(const aUserProperty: IdsUserProperty): Boolean;
//#UC START# *4C8A10120190_4AA8E47C0065_var*
//#UC END# *4C8A10120190_4AA8E47C0065_var*
begin
//#UC START# *4C8A10120190_4AA8E47C0065_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C8A10120190_4AA8E47C0065_impl*
end;//TefUserProperty.CheckUnsaved

procedure TefUserProperty.RestoreFields;
//#UC START# *4C8A12540363_4AA8E47C0065_var*
//#UC END# *4C8A12540363_4AA8E47C0065_var*
begin
//#UC START# *4C8A12540363_4AA8E47C0065_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C8A12540363_4AA8E47C0065_impl*
end;//TefUserProperty.RestoreFields

{$IfEnd} //Admin

end.