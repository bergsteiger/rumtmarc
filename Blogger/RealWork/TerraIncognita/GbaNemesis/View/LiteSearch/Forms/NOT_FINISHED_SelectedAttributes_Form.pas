unit NOT_FINISHED_SelectedAttributes_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/NOT_FINISHED_SelectedAttributes_Form.pas"
// Начат: 15.09.2009 12:36
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Базовые определения предметной области::SearchLite::View::LiteSearch::LiteSearch::SelectedAttributes
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  PrimSelectedAttributesOptions_Form,
  SearchLite_FormDefinitions_Controls,
  SearchDomainInterfaces,
  DynamicTreeUnit,
  l3TreeInterfaces,
  l3Tree_TLB
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

type
  TenSelectedAttributes = {final form} class(TvcmEntityFormRef, SelectedAttributesFormDef)
  Entities : TvcmEntities;
  SelectedTree: TnscTreeView;
  protected
  // realized methods
   procedure Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
     {* Удалить }
   procedure Edit_Delete_GetState(var State: TvcmOperationStateIndex);
     {* Удалить }
   procedure Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Удалить }
   function GetTaggedTreeInfo: InsTaggedTreeInfo; override;
   procedure AddNodes(aOp: TLogicOperation;
    const aIterator: INodeIterator); override;
   function GetTreeNode(const aNode: INodeBase): Il3SimpleNode; override;
   function GetTreeNode(const aNode: Il3SimpleNode): Il3SimpleNode; override;
   procedure DeleteElement(const aNode: Il3Node;
     WithChildren: Boolean = False); override;
  end;//TenSelectedAttributes

  TSelectedAttributesForm = TenSelectedAttributes;

implementation

{$R *.DFM}

// start class TenSelectedAttributes

procedure TenSelectedAttributes.Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *494F89C30197_4AAF51FC0061test_var*
//#UC END# *494F89C30197_4AAF51FC0061test_var*
begin
//#UC START# *494F89C30197_4AAF51FC0061test_impl*
 !!! Needs to be implemented !!!
//#UC END# *494F89C30197_4AAF51FC0061test_impl*
end;//TenSelectedAttributes.Edit_Delete_Test

procedure TenSelectedAttributes.Edit_Delete_GetState(var State: TvcmOperationStateIndex);
//#UC START# *494F89C30197_4AAF51FC0061getstate_var*
//#UC END# *494F89C30197_4AAF51FC0061getstate_var*
begin
//#UC START# *494F89C30197_4AAF51FC0061getstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *494F89C30197_4AAF51FC0061getstate_impl*
end;//TenSelectedAttributes.Edit_Delete_GetState

procedure TenSelectedAttributes.Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *494F89C30197_4AAF51FC0061exec_var*
//#UC END# *494F89C30197_4AAF51FC0061exec_var*
begin
//#UC START# *494F89C30197_4AAF51FC0061exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *494F89C30197_4AAF51FC0061exec_impl*
end;//TenSelectedAttributes.Edit_Delete_Execute

function TenSelectedAttributes.GetTaggedTreeInfo: InsTaggedTreeInfo;
//#UC START# *4AF3F36700D7_4AAF51FC0061_var*
//#UC END# *4AF3F36700D7_4AAF51FC0061_var*
begin
//#UC START# *4AF3F36700D7_4AAF51FC0061_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF3F36700D7_4AAF51FC0061_impl*
end;//TenSelectedAttributes.GetTaggedTreeInfo

procedure TenSelectedAttributes.AddNodes(aOp: TLogicOperation;
  const aIterator: INodeIterator);
//#UC START# *4AF40E300070_4AAF51FC0061_var*
//#UC END# *4AF40E300070_4AAF51FC0061_var*
begin
//#UC START# *4AF40E300070_4AAF51FC0061_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF40E300070_4AAF51FC0061_impl*
end;//TenSelectedAttributes.AddNodes

function TenSelectedAttributes.GetTreeNode(const aNode: INodeBase): Il3SimpleNode;
//#UC START# *4AF410BE0093_4AAF51FC0061_var*
//#UC END# *4AF410BE0093_4AAF51FC0061_var*
begin
//#UC START# *4AF410BE0093_4AAF51FC0061_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF410BE0093_4AAF51FC0061_impl*
end;//TenSelectedAttributes.GetTreeNode

function TenSelectedAttributes.GetTreeNode(const aNode: Il3SimpleNode): Il3SimpleNode;
//#UC START# *4AF410CF023F_4AAF51FC0061_var*
//#UC END# *4AF410CF023F_4AAF51FC0061_var*
begin
//#UC START# *4AF410CF023F_4AAF51FC0061_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF410CF023F_4AAF51FC0061_impl*
end;//TenSelectedAttributes.GetTreeNode

procedure TenSelectedAttributes.DeleteElement(const aNode: Il3Node;
  WithChildren: Boolean = False);
//#UC START# *4C87B5D300B0_4AAF51FC0061_var*
//#UC END# *4C87B5D300B0_4AAF51FC0061_var*
begin
//#UC START# *4C87B5D300B0_4AAF51FC0061_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C87B5D300B0_4AAF51FC0061_impl*
end;//TenSelectedAttributes.DeleteElement

end.