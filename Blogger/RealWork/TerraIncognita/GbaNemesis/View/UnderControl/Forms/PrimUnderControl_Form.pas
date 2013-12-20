unit PrimUnderControl_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/UnderControl/Forms/PrimUnderControl_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Работа с документом и списком документов::UnderControl::View::UnderControl::PrimUnderControl
//
// Документы на контроле
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
  l3TreeInterfaces,
  eeInterfaces,
  FoldersDomainInterfaces
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  Base_Operations_Editions_Controls,
  Base_Operations_Strange_Controls,
  Search_Strange_Controls,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  PrimUnderControl_utUnderControl_UserType,
  nsTypes,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimUnderControlForm = {form} class(TvcmEntityForm, InsUnderControlRootListener)
  {* Документы на контроле }
 private
 // private fields
   f_UnderControlList : TnscTreeView;
    {* Поле для свойства UnderControlList}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetUnderControlList: TnscTreeView;
 protected
 // realized methods
   function Loadable_Load_Execute(const aNode: IeeNode;
    const aData: IUnknown;
    anOp: TListLogicOperation = LLO_NONE): Boolean;
     {* Коллеги, кто может описать этот метод? }
   procedure Loadable_Load(const aParams: IvcmExecuteParams);
     {* Коллеги, кто может описать этот метод? }
   procedure Updated;
     {* список обновился }
   procedure ControlCenter_Refresh_Execute;
   procedure ControlCenter_Refresh(const aParams: IvcmExecuteParams);
   procedure Document_ShowChanges_Test(const aParams: IvcmTestParamsPrim);
     {* Показать изменения }
   procedure Document_ShowChanges_GetState(var State: TvcmOperationStateIndex);
     {* Показать изменения }
   procedure Document_ShowChanges_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Показать изменения }
 protected
 // protected methods
   function CanCompareEditions(const aNode: Il3SimpleNode;
     WithState: Boolean): Boolean;
   procedure CompareEditions(const aNode: Il3SimpleNode);
   function IsChangeObjects: Boolean;
     {* определяет есть ли измененный объект в списке }
   function IsObjectChanged(const aNode: IeeNode): Boolean;
     {* определяет является ли объект измененным }
   procedure ResetElementStatus(const aNode: IeeNode);
   procedure UpdateRoot;
 protected
 // protected properties
   property UnderControlList: TnscTreeView
     read pm_GetUnderControlList;
     {* Список документов на контроле }
 end;//TPrimUnderControlForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  eeTreeMisc,
  nsFolders,
  SysUtils,
  UnderControlUnit,
  DocumentUnit
  {$If not defined(NoVCM)}
  ,
  StdRes
  {$IfEnd} //not NoVCM
  ,
  FoldersUnit,
  BaseTreeSupportUnit,
  l3MessageID
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки utUnderControlLocalConstants }
  str_utUnderControlCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utUnderControlCaption'; rValue : 'Документы на контроле');
   { Заголовок пользовательского типа "Документы на контроле" }
  str_utUnderControlSettingsCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utUnderControlSettingsCaption'; rValue : 'Документы на контроле (вкладка)');
   { Заголовок пользовательского типа "Документы на контроле" для настройки панелей инструментов }

type
  Tkw_PrimUnderControl_Control_UnderControlList = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола UnderControlList
----
*Пример использования*:
[code]
контрол::UnderControlList TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimUnderControl_Control_UnderControlList

// start class Tkw_PrimUnderControl_Control_UnderControlList

{$If not defined(NoScripts)}
function Tkw_PrimUnderControl_Control_UnderControlList.GetString: AnsiString;
 {-}
begin
 Result := 'UnderControlList';
end;//Tkw_PrimUnderControl_Control_UnderControlList.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimUnderControl_Control_UnderControlList_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола UnderControlList
----
*Пример использования*:
[code]
контрол::UnderControlList:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimUnderControl_Control_UnderControlList_Push

// start class Tkw_PrimUnderControl_Control_UnderControlList_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimUnderControl_Control_UnderControlList_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('UnderControlList');
 inherited;
end;//Tkw_PrimUnderControl_Control_UnderControlList_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimUnderControlForm.CanCompareEditions(const aNode: Il3SimpleNode;
  WithState: Boolean): Boolean;
//#UC START# *4B88CAAF01CF_4A7C349D02CB_var*
var
 l_C : InsUnderControlNode;
 l_CO : IControllable;
 l_D : IDocument;
 l_State : IDocumentState;
//#UC END# *4B88CAAF01CF_4A7C349D02CB_var*
begin
//#UC START# *4B88CAAF01CF_4A7C349D02CB_impl*
 if Supports(aNode, InsUnderControlNode, l_C) then
  try
   if WithState then
    Result := (l_C.Status and CS_CHANGED = CS_CHANGED)
   else
    Result := True;
   if Result then
   begin
    if Supports(l_C, IControllable, l_CO) then
    begin
     if Supports(l_CO, IDocument, l_D) then
      Result := l_D.HasPrevRedaction
     else
      Result := false;
     if Result then
     begin
      l_D.GetCurrentState(l_State);
      Result := l_State.CanCompareWithAnyOtherRedaction;
     end;//Result
    end//Supports(l_C, IControllable, l_CO)
    else
     Result := false;
   end;//Result
  finally
   l_C := nil;
  end//try..finally
 else
  Result := false;
//#UC END# *4B88CAAF01CF_4A7C349D02CB_impl*
end;//TPrimUnderControlForm.CanCompareEditions

procedure TPrimUnderControlForm.CompareEditions(const aNode: Il3SimpleNode);
//#UC START# *4B88CAC20097_4A7C349D02CB_var*
var
 l_C : IControllable;
 l_D : IDocument;
//#UC END# *4B88CAC20097_4A7C349D02CB_var*
begin
//#UC START# *4B88CAC20097_4A7C349D02CB_impl*
 if Supports(aNode, IControllable, l_C) then
  try
   if Supports(l_C, IDocument, l_D) then
    try
     TdmStdRes.MakeCompareEditions(l_D, nil);
    finally
     l_D := nil;
    end;//try..finally
  finally
   l_C := nil;
  end;//try..finally
//#UC END# *4B88CAC20097_4A7C349D02CB_impl*
end;//TPrimUnderControlForm.CompareEditions

function TPrimUnderControlForm.IsChangeObjects: Boolean;
//#UC START# *4C7E504C01E1_4A7C349D02CB_var*
var
 lChange : Boolean;

 function CheckStatus(const anIntf: IeeNode) : Boolean;
 begin
  Result := IsObjectChanged(anIntf);
  lChange := Result;
 end;

//#UC END# *4C7E504C01E1_4A7C349D02CB_var*
begin
//#UC START# *4C7E504C01E1_4A7C349D02CB_impl*
 lChange := False;
 UnderControlList.TreeView.Tree.Root.IterateF(eeL2NA(@CheckStatus),
  imCheckResult);
 Result := lChange;
//#UC END# *4C7E504C01E1_4A7C349D02CB_impl*
end;//TPrimUnderControlForm.IsChangeObjects

function TPrimUnderControlForm.IsObjectChanged(const aNode: IeeNode): Boolean;
//#UC START# *4C7E506D0050_4A7C349D02CB_var*
var
 l_UCNode : InsUnderControlNode;
//#UC END# *4C7E506D0050_4A7C349D02CB_var*
begin
//#UC START# *4C7E506D0050_4A7C349D02CB_impl*
 Result := False;
 if Supports(aNode, InsUnderControlNode, l_UCNode) then
  try
   Result := (l_UCNode.Status <> 0);
  finally
   l_UCNode := nil;
  end
//#UC END# *4C7E506D0050_4A7C349D02CB_impl*
end;//TPrimUnderControlForm.IsObjectChanged

procedure TPrimUnderControlForm.ResetElementStatus(const aNode: IeeNode);
//#UC START# *4C7E50AD006F_4A7C349D02CB_var*
var
 l_UCNode : InsUnderControlNode;
//#UC END# *4C7E50AD006F_4A7C349D02CB_var*
begin
//#UC START# *4C7E50AD006F_4A7C349D02CB_impl*
 if Supports(aNode, InsUnderControlNode, l_UCNode) then
  try
   l_UCNode.ResetStatus;
  finally
   l_UCNode := nil;
  end;
//#UC END# *4C7E50AD006F_4A7C349D02CB_impl*
end;//TPrimUnderControlForm.ResetElementStatus

procedure TPrimUnderControlForm.UpdateRoot;
//#UC START# *4C7E558F0001_4A7C349D02CB_var*
//#UC END# *4C7E558F0001_4A7C349D02CB_var*
begin
//#UC START# *4C7E558F0001_4A7C349D02CB_impl*
 UnderControlList.TreeStruct.RootNode :=
  (UserFoldersTree.ControlledObj.Root As Il3SimpleRootNode);
//#UC END# *4C7E558F0001_4A7C349D02CB_impl*
end;//TPrimUnderControlForm.UpdateRoot

function TPrimUnderControlForm.pm_GetUnderControlList: TnscTreeView;
begin
 if (f_UnderControlList = nil) then
  f_UnderControlList := FindComponent('UnderControlList') As TnscTreeView;
 Result := f_UnderControlList;
end;

function TPrimUnderControlForm.Loadable_Load_Execute(const aNode: IeeNode;
  const aData: IUnknown;
  anOp: TListLogicOperation = LLO_NONE): Boolean;
//#UC START# *49895A2102E8_4A7C349D02CBexec_var*
var
 l_Node         : INode;
 l_Controllable : IControllable;

 l_FoldersNode  : InsFoldersNode;
//#UC END# *49895A2102E8_4A7C349D02CBexec_var*
begin
//#UC START# *49895A2102E8_4A7C349D02CBexec_impl*
 Result := true;
 if Supports(aNode, INode, l_Node) then
  try
   if Supports(l_Node, IControllable, l_Controllable) then
    try
     if l_Controllable.GetControlled then
      begin
       Say(inf_AlreadyControlledObject);
       Result := false;
      end
     else //l_Controllable.GetControlled
     begin
      if Supports(aNode, InsFoldersNode, l_FoldersNode) then
       try
        l_FoldersNode.ChangeUnderControlStatus;
       finally
        l_FoldersNode := nil;
       end;
     end;
    finally
     l_Controllable := nil;
    end
   else//Supports(l_Node, IControllable, l_Controllable)
    begin
     Say(err_InvalidControlledObject);
     Result := false;
    end;
  finally
   l_Node := nil;
  end;
//#UC END# *49895A2102E8_4A7C349D02CBexec_impl*
end;//TPrimUnderControlForm.Loadable_Load_Execute

procedure TPrimUnderControlForm.Loadable_Load(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ILoadable_Load_Params) do
  ResultValue := Loadable_Load_Execute(Node, Data, nOp);
end;

procedure TPrimUnderControlForm.Updated;
//#UC START# *499043510214_4A7C349D02CB_var*
//#UC END# *499043510214_4A7C349D02CB_var*
begin
//#UC START# *499043510214_4A7C349D02CB_impl*
 UpdateRoot;
//#UC END# *499043510214_4A7C349D02CB_impl*
end;//TPrimUnderControlForm.Updated

procedure TPrimUnderControlForm.ControlCenter_Refresh_Execute;
//#UC START# *4AF836720144_4A7C349D02CBexec_var*
//#UC END# *4AF836720144_4A7C349D02CBexec_var*
begin
//#UC START# *4AF836720144_4A7C349D02CBexec_impl*
 UnderControlList.Invalidate;
//#UC END# *4AF836720144_4A7C349D02CBexec_impl*
end;//TPrimUnderControlForm.ControlCenter_Refresh_Execute

procedure TPrimUnderControlForm.ControlCenter_Refresh(const aParams: IvcmExecuteParams);
begin
 ControlCenter_Refresh_Execute;
end;

procedure TPrimUnderControlForm.Document_ShowChanges_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4DD1260D02D1_4A7C349D02CBtest_var*
//#UC END# *4DD1260D02D1_4A7C349D02CBtest_var*
begin
//#UC START# *4DD1260D02D1_4A7C349D02CBtest_impl*
 aParams.Op.Flag[vcm_ofEnabled] := CanCompareEditions(UnderControlList.GetCurrentNode, true);
//#UC END# *4DD1260D02D1_4A7C349D02CBtest_impl*
end;//TPrimUnderControlForm.Document_ShowChanges_Test

procedure TPrimUnderControlForm.Document_ShowChanges_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4DD1260D02D1_4A7C349D02CBgetstate_var*
//#UC END# *4DD1260D02D1_4A7C349D02CBgetstate_var*
begin
//#UC START# *4DD1260D02D1_4A7C349D02CBgetstate_impl*
 State := vcm_DefaultOperationState;
//#UC END# *4DD1260D02D1_4A7C349D02CBgetstate_impl*
end;//TPrimUnderControlForm.Document_ShowChanges_GetState

procedure TPrimUnderControlForm.Document_ShowChanges_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4DD1260D02D1_4A7C349D02CBexec_var*
//#UC END# *4DD1260D02D1_4A7C349D02CBexec_var*
begin
//#UC START# *4DD1260D02D1_4A7C349D02CBexec_impl*
 CompareEditions(UnderControlList.GetCurrentNode);
//#UC END# *4DD1260D02D1_4A7C349D02CBexec_impl*
end;//TPrimUnderControlForm.Document_ShowChanges_Execute

procedure TPrimUnderControlForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Loadable, nil);
  PublishFormEntity(en_ControlCenter, nil);
  PublishFormEntity(en_Document, nil);
  PublishOpWithResult(en_Loadable, op_Load, Loadable_Load, nil, nil);
  PublishOpWithResult(en_ControlCenter, op_Refresh, ControlCenter_Refresh, nil, nil);
  PublishOp(en_Document, op_ShowChanges, Document_ShowChanges_Execute, Document_ShowChanges_Test, Document_ShowChanges_GetState);
 end;//with Entities.Entities
end;

procedure TPrimUnderControlForm.MakeControls;
begin
 inherited;
 with AddUsertype(utUnderControlName,
  str_utUnderControlCaption,
  str_utUnderControlSettingsCaption,
  true,
  67,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utUnderControlName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_utUnderControlCaption
 str_utUnderControlCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_utUnderControlSettingsCaption
 str_utUnderControlSettingsCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimUnderControl_Control_UnderControlList
 Tkw_PrimUnderControl_Control_UnderControlList.Register('контрол::UnderControlList', TnscTreeView);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimUnderControl_Control_UnderControlList_Push
 Tkw_PrimUnderControl_Control_UnderControlList_Push.Register('контрол::UnderControlList:push');
{$IfEnd} //not Admin AND not Monitorings

end.