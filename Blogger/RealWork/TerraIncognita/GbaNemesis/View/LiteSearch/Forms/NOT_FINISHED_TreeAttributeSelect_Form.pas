unit NOT_FINISHED_TreeAttributeSelect_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/NOT_FINISHED_TreeAttributeSelect_Form.pas"
// Начат: 15.09.2009 11:56
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Базовые определения предметной области::SearchLite::View::LiteSearch::LiteSearch::TreeAttributeSelect
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  PrimTreeAttributeSelectOptions_Form,
  SearchLite_FormDefinitions_Controls,
  l3TreeInterfaces,
  SearchUnit,
  l3Interfaces,
  bsInterfaces,
  DynamicTreeUnit,
  SearchDomainInterfaces
  {$If defined(Nemesis)}
  ,
  nscContextFilter
  {$IfEnd} //Nemesis
  
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
  TefTreeAttributeSelect = {final form} class(TvcmEntityFormRef, TreeAttributeSelectFormDef)
  Entities : TvcmEntities;
  ContextFilter: TnscContextFilter;
  AttributeTree: TnscTreeView;
  protected
  // realized methods
   procedure CurrentChangedNotification(const aNode: Il3SimpleNode); override;
   procedure SendContextChangeMessage; override;
   procedure SetupNewTreeStruct(const aTree: Il3SimpleTree); override;
   procedure AttributeTreeNewCharPressed(aChar: AnsiChar); override;
   procedure SetCurrentNode(const aNode: Il3SimpleNode;
    aExpand: Boolean = false); override;
   procedure DropAllLogicSelection(aDropSelection: Boolean = false); override;
   procedure NotifyMultipleChanges; override;
   function SaveToQuery(const aQuery: IQuery): Boolean; override;
   function SearchParameters_IsQuerySaved_Execute: Boolean;
   procedure SearchParameters_IsQuerySaved(const aParams: IvcmExecuteParams);
   procedure ActivateElement(anIndex: Integer;
    LogicOperationOnly: Boolean = false); override;
   procedure LoadFromQuery(const aQuery: IQuery); override;
   procedure DoContextFilterChange(aSender: TObject); override;
   procedure InvalidateOtherTree; override;
   procedure SetRootForFullForm(const aTag: Il3CString); override;
   procedure SetRootForFirstLevelForm(const aTag: Il3CString); override;
   function GetRootInfo: InsRootInfo; override;
   procedure NotifyOperationChange(const aNode: INodeBase;
    aOldOp: TLogicOperation;
    aNewOp: TLogicOperation); override;
   procedure FormLogicOperation(const aNode: INodeBase;
    aOp: TLogicOperation;
    aWithNotify: Boolean = true); override;
   procedure Attribute_LogicOr_Test(const aParams: IvcmTestParamsPrim);
   procedure Attribute_LogicOr_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Attribute_LogicAnd_Test(const aParams: IvcmTestParamsPrim);
   procedure Attribute_LogicAnd_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Attribute_LogicNot_Test(const aParams: IvcmTestParamsPrim);
   procedure Attribute_LogicNot_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure DropSelectedOperation; override;
   procedure ChangeOperationOnSelected(aNewOp: TLogicOperation); override;
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
  end;//TefTreeAttributeSelect

  TTreeAttributeSelectForm = TefTreeAttributeSelect;

implementation

{$R *.DFM}

uses
  OfficeLike_ResultEx_Controls,
  OfficeLike_Result_Controls
  ;

// start class TefTreeAttributeSelect

procedure TefTreeAttributeSelect.CurrentChangedNotification(const aNode: Il3SimpleNode);
//#UC START# *497465F501B7_4AAF487F03BC_var*
//#UC END# *497465F501B7_4AAF487F03BC_var*
begin
//#UC START# *497465F501B7_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *497465F501B7_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.CurrentChangedNotification

procedure TefTreeAttributeSelect.SendContextChangeMessage;
//#UC START# *4AAF4CF3024F_4AAF487F03BC_var*
//#UC END# *4AAF4CF3024F_4AAF487F03BC_var*
begin
//#UC START# *4AAF4CF3024F_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AAF4CF3024F_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.SendContextChangeMessage

procedure TefTreeAttributeSelect.SetupNewTreeStruct(const aTree: Il3SimpleTree);
//#UC START# *4ACDEBA3039A_4AAF487F03BC_var*
//#UC END# *4ACDEBA3039A_4AAF487F03BC_var*
begin
//#UC START# *4ACDEBA3039A_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ACDEBA3039A_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.SetupNewTreeStruct

procedure TefTreeAttributeSelect.AttributeTreeNewCharPressed(aChar: AnsiChar);
//#UC START# *4AE8326A03BD_4AAF487F03BC_var*
//#UC END# *4AE8326A03BD_4AAF487F03BC_var*
begin
//#UC START# *4AE8326A03BD_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE8326A03BD_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.AttributeTreeNewCharPressed

procedure TefTreeAttributeSelect.SetCurrentNode(const aNode: Il3SimpleNode;
  aExpand: Boolean = false);
//#UC START# *4AE870830333_4AAF487F03BC_var*
//#UC END# *4AE870830333_4AAF487F03BC_var*
begin
//#UC START# *4AE870830333_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE870830333_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.SetCurrentNode

procedure TefTreeAttributeSelect.DropAllLogicSelection(aDropSelection: Boolean = false);
//#UC START# *4AE8712903D9_4AAF487F03BC_var*
//#UC END# *4AE8712903D9_4AAF487F03BC_var*
begin
//#UC START# *4AE8712903D9_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE8712903D9_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.DropAllLogicSelection

procedure TefTreeAttributeSelect.NotifyMultipleChanges;
//#UC START# *4AE87151019E_4AAF487F03BC_var*
//#UC END# *4AE87151019E_4AAF487F03BC_var*
begin
//#UC START# *4AE87151019E_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE87151019E_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.NotifyMultipleChanges

function TefTreeAttributeSelect.SaveToQuery(const aQuery: IQuery): Boolean;
//#UC START# *4AE891DA036D_4AAF487F03BC_var*
//#UC END# *4AE891DA036D_4AAF487F03BC_var*
begin
//#UC START# *4AE891DA036D_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE891DA036D_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.SaveToQuery

function TefTreeAttributeSelect.SearchParameters_IsQuerySaved_Execute: Boolean;
//#UC START# *4AE8A577027D_4AAF487F03BCexec_var*
//#UC END# *4AE8A577027D_4AAF487F03BCexec_var*
begin
//#UC START# *4AE8A577027D_4AAF487F03BCexec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE8A577027D_4AAF487F03BCexec_impl*
end;//TefTreeAttributeSelect.SearchParameters_IsQuerySaved_Execute

procedure TefTreeAttributeSelect.SearchParameters_IsQuerySaved(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ISearchParameters_IsQuerySaved_Params) do
  ResultValue := SearchParameters_IsQuerySaved_Execute;
end;

procedure TefTreeAttributeSelect.ActivateElement(anIndex: Integer;
  LogicOperationOnly: Boolean = false);
//#UC START# *4AEAEA960335_4AAF487F03BC_var*
//#UC END# *4AEAEA960335_4AAF487F03BC_var*
begin
//#UC START# *4AEAEA960335_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AEAEA960335_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.ActivateElement

procedure TefTreeAttributeSelect.LoadFromQuery(const aQuery: IQuery);
//#UC START# *4AEF2E8502ED_4AAF487F03BC_var*
//#UC END# *4AEF2E8502ED_4AAF487F03BC_var*
begin
//#UC START# *4AEF2E8502ED_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AEF2E8502ED_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.LoadFromQuery

procedure TefTreeAttributeSelect.DoContextFilterChange(aSender: TObject);
//#UC START# *4AEF3A680264_4AAF487F03BC_var*
//#UC END# *4AEF3A680264_4AAF487F03BC_var*
begin
//#UC START# *4AEF3A680264_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AEF3A680264_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.DoContextFilterChange

procedure TefTreeAttributeSelect.InvalidateOtherTree;
//#UC START# *4AEF3CA1033D_4AAF487F03BC_var*
//#UC END# *4AEF3CA1033D_4AAF487F03BC_var*
begin
//#UC START# *4AEF3CA1033D_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AEF3CA1033D_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.InvalidateOtherTree

procedure TefTreeAttributeSelect.SetRootForFullForm(const aTag: Il3CString);
//#UC START# *4AF3F84801B7_4AAF487F03BC_var*
//#UC END# *4AF3F84801B7_4AAF487F03BC_var*
begin
//#UC START# *4AF3F84801B7_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF3F84801B7_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.SetRootForFullForm

procedure TefTreeAttributeSelect.SetRootForFirstLevelForm(const aTag: Il3CString);
//#UC START# *4AF3F86201D9_4AAF487F03BC_var*
//#UC END# *4AF3F86201D9_4AAF487F03BC_var*
begin
//#UC START# *4AF3F86201D9_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF3F86201D9_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.SetRootForFirstLevelForm

function TefTreeAttributeSelect.GetRootInfo: InsRootInfo;
//#UC START# *4AF4074700E6_4AAF487F03BC_var*
//#UC END# *4AF4074700E6_4AAF487F03BC_var*
begin
//#UC START# *4AF4074700E6_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF4074700E6_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.GetRootInfo

procedure TefTreeAttributeSelect.NotifyOperationChange(const aNode: INodeBase;
  aOldOp: TLogicOperation;
  aNewOp: TLogicOperation);
//#UC START# *4AF862360294_4AAF487F03BC_var*
//#UC END# *4AF862360294_4AAF487F03BC_var*
begin
//#UC START# *4AF862360294_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF862360294_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.NotifyOperationChange

procedure TefTreeAttributeSelect.FormLogicOperation(const aNode: INodeBase;
  aOp: TLogicOperation;
  aWithNotify: Boolean = true);
//#UC START# *4AF863410189_4AAF487F03BC_var*
//#UC END# *4AF863410189_4AAF487F03BC_var*
begin
//#UC START# *4AF863410189_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF863410189_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.FormLogicOperation

procedure TefTreeAttributeSelect.Attribute_LogicOr_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4AFAFB4602D9_4AAF487F03BCtest_var*
//#UC END# *4AFAFB4602D9_4AAF487F03BCtest_var*
begin
//#UC START# *4AFAFB4602D9_4AAF487F03BCtest_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AFAFB4602D9_4AAF487F03BCtest_impl*
end;//TefTreeAttributeSelect.Attribute_LogicOr_Test

procedure TefTreeAttributeSelect.Attribute_LogicOr_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AFAFB4602D9_4AAF487F03BCexec_var*
//#UC END# *4AFAFB4602D9_4AAF487F03BCexec_var*
begin
//#UC START# *4AFAFB4602D9_4AAF487F03BCexec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AFAFB4602D9_4AAF487F03BCexec_impl*
end;//TefTreeAttributeSelect.Attribute_LogicOr_Execute

procedure TefTreeAttributeSelect.Attribute_LogicAnd_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4AFAFB5800B9_4AAF487F03BCtest_var*
//#UC END# *4AFAFB5800B9_4AAF487F03BCtest_var*
begin
//#UC START# *4AFAFB5800B9_4AAF487F03BCtest_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AFAFB5800B9_4AAF487F03BCtest_impl*
end;//TefTreeAttributeSelect.Attribute_LogicAnd_Test

procedure TefTreeAttributeSelect.Attribute_LogicAnd_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AFAFB5800B9_4AAF487F03BCexec_var*
//#UC END# *4AFAFB5800B9_4AAF487F03BCexec_var*
begin
//#UC START# *4AFAFB5800B9_4AAF487F03BCexec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AFAFB5800B9_4AAF487F03BCexec_impl*
end;//TefTreeAttributeSelect.Attribute_LogicAnd_Execute

procedure TefTreeAttributeSelect.Attribute_LogicNot_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4AFAFB7002B5_4AAF487F03BCtest_var*
//#UC END# *4AFAFB7002B5_4AAF487F03BCtest_var*
begin
//#UC START# *4AFAFB7002B5_4AAF487F03BCtest_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AFAFB7002B5_4AAF487F03BCtest_impl*
end;//TefTreeAttributeSelect.Attribute_LogicNot_Test

procedure TefTreeAttributeSelect.Attribute_LogicNot_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AFAFB7002B5_4AAF487F03BCexec_var*
//#UC END# *4AFAFB7002B5_4AAF487F03BCexec_var*
begin
//#UC START# *4AFAFB7002B5_4AAF487F03BCexec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AFAFB7002B5_4AAF487F03BCexec_impl*
end;//TefTreeAttributeSelect.Attribute_LogicNot_Execute

procedure TefTreeAttributeSelect.DropSelectedOperation;
//#UC START# *4C4441DE01E7_4AAF487F03BC_var*
//#UC END# *4C4441DE01E7_4AAF487F03BC_var*
begin
//#UC START# *4C4441DE01E7_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C4441DE01E7_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.DropSelectedOperation

procedure TefTreeAttributeSelect.ChangeOperationOnSelected(aNewOp: TLogicOperation);
//#UC START# *4C44499D0260_4AAF487F03BC_var*
//#UC END# *4C44499D0260_4AAF487F03BC_var*
begin
//#UC START# *4C44499D0260_4AAF487F03BC_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C44499D0260_4AAF487F03BC_impl*
end;//TefTreeAttributeSelect.ChangeOperationOnSelected

procedure TefTreeAttributeSelect.Edit_Copy_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C7D0C7B0185_4AAF487F03BCtest_var*
//#UC END# *4C7D0C7B0185_4AAF487F03BCtest_var*
begin
//#UC START# *4C7D0C7B0185_4AAF487F03BCtest_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C7D0C7B0185_4AAF487F03BCtest_impl*
end;//TefTreeAttributeSelect.Edit_Copy_Test

procedure TefTreeAttributeSelect.Edit_Copy_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4C7D0C7B0185_4AAF487F03BCgetstate_var*
//#UC END# *4C7D0C7B0185_4AAF487F03BCgetstate_var*
begin
//#UC START# *4C7D0C7B0185_4AAF487F03BCgetstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C7D0C7B0185_4AAF487F03BCgetstate_impl*
end;//TefTreeAttributeSelect.Edit_Copy_GetState

procedure TefTreeAttributeSelect.Edit_Copy_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7D0C7B0185_4AAF487F03BCexec_var*
//#UC END# *4C7D0C7B0185_4AAF487F03BCexec_var*
begin
//#UC START# *4C7D0C7B0185_4AAF487F03BCexec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C7D0C7B0185_4AAF487F03BCexec_impl*
end;//TefTreeAttributeSelect.Edit_Copy_Execute

procedure TefTreeAttributeSelect.Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C7D0CC90052_4AAF487F03BCtest_var*
//#UC END# *4C7D0CC90052_4AAF487F03BCtest_var*
begin
//#UC START# *4C7D0CC90052_4AAF487F03BCtest_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C7D0CC90052_4AAF487F03BCtest_impl*
end;//TefTreeAttributeSelect.Edit_Delete_Test

procedure TefTreeAttributeSelect.Edit_Delete_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4C7D0CC90052_4AAF487F03BCgetstate_var*
//#UC END# *4C7D0CC90052_4AAF487F03BCgetstate_var*
begin
//#UC START# *4C7D0CC90052_4AAF487F03BCgetstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C7D0CC90052_4AAF487F03BCgetstate_impl*
end;//TefTreeAttributeSelect.Edit_Delete_GetState

procedure TefTreeAttributeSelect.Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7D0CC90052_4AAF487F03BCexec_var*
//#UC END# *4C7D0CC90052_4AAF487F03BCexec_var*
begin
//#UC START# *4C7D0CC90052_4AAF487F03BCexec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C7D0CC90052_4AAF487F03BCexec_impl*
end;//TefTreeAttributeSelect.Edit_Delete_Execute

end.