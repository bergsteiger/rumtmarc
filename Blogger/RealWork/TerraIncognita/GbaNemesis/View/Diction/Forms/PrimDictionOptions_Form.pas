unit PrimDictionOptions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Diction/Forms/PrimDictionOptions_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Встроенные продукты::Diction::View::Diction::PrimDictionOptions
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
  PrimDiction_Form,
  OfficeLike_Tree_Controls,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimDictionOptionsForm = {form} class(TPrimDictionForm)
 protected
  procedure InitEntities; override;
 protected
 // realized methods
   procedure Tree_ExpandAll_Test(const aParams: IvcmTestParamsPrim);
     {* Развернуть все }
   procedure Tree_CollapseAll_Test(const aParams: IvcmTestParamsPrim);
     {* Свернуть все }
 end;//TPrimDictionOptionsForm

 TvcmEntityFormRef = TPrimDictionOptionsForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TPrimDictionOptionsForm

procedure TPrimDictionOptionsForm.Tree_ExpandAll_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4BDAF7880236_51B860F20280test_var*
//#UC END# *4BDAF7880236_51B860F20280test_var*
begin
//#UC START# *4BDAF7880236_51B860F20280test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := False;
//#UC END# *4BDAF7880236_51B860F20280test_impl*
end;//TPrimDictionOptionsForm.Tree_ExpandAll_Test

procedure TPrimDictionOptionsForm.Tree_CollapseAll_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4BDAF7A2005C_51B860F20280test_var*
//#UC END# *4BDAF7A2005C_51B860F20280test_var*
begin
//#UC START# *4BDAF7A2005C_51B860F20280test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := False;
//#UC END# *4BDAF7A2005C_51B860F20280test_impl*
end;//TPrimDictionOptionsForm.Tree_CollapseAll_Test

procedure TPrimDictionOptionsForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Edit, nil);
  PublishFormEntity(en_Tree, nil);
  PublishOp(en_Tree, op_ExpandAll, nil, Tree_ExpandAll_Test, nil);
  PublishOp(en_Tree, op_CollapseAll, nil, Tree_CollapseAll_Test, nil);
 end;//with Entities.Entities
end;

{$IfEnd} //not Admin AND not Monitorings

end.