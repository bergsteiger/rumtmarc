unit PrimTreeAttributeFirstLevel_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimTreeAttributeFirstLevel_Form.pas"
// Начат: 27.01.2009 11:33
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimTreeAttributeFirstLevel
//
// Первый уровень дерева атрибутов
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin)}
uses
  l3TreeInterfaces,
  TreeInterfaces,
  TreeAttribute_Form
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  QueryCardInterfaces,
  SearchLite_Strange_Controls,
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
  PrimTreeAttributeFirstLevel_flSituation_UserType,
  DynamicTreeUnit,
  l3Interfaces,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a},
  vcmControllers {a}
  ;
{$IfEnd} //not Admin

{$If not defined(Admin)}
type
 TPrimTreeAttributeFirstLevelForm = {abstract form} class(TTreeAttributeForm)
  {* Первый уровень дерева атрибутов }
 private
 // private fields
   f_FirstLevelContent : TnscTreeView;
    {* Поле для свойства FirstLevelContent}
 protected
  procedure SignalDataSourceChanged(const anOld : IvcmViewAreaController;
                                const aDsNew : IvcmViewAreaController); override;
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetFirstLevelContent: TnscTreeView;
 protected
 // realized methods
   procedure AttributeTree_SetParent_Execute(const aParent: Il3SimpleNode);
   procedure AttributeTree_SetParent(const aParams: IvcmExecuteParams);
   procedure AttributeTree_ExtSetRoot_Execute(const aRoot: INodeBase);
   procedure AttributeTree_ExtSetRoot(const aParams: IvcmExecuteParams);
   procedure AttributeTree_SetRoot_Execute(const aTag: Il3CString);
   procedure AttributeTree_SetRoot(const aParams: IvcmExecuteParams);
 protected
 // protected fields
   dsSimpleTree : IdsSimpleTree;
   dsTreeAttributeFirstLevel : IdsTreeAttributeFirstLevel;
   f_InternalMove : Integer;
 protected
 // protected methods
   procedure UpdateCurrent(const aNode: Il3SimpleNode); virtual; abstract;
 public
 // public properties
   property FirstLevelContent: TnscTreeView
     read pm_GetFirstLevelContent;
 end;//TPrimTreeAttributeFirstLevelForm

 TvcmEntityFormRef = TPrimTreeAttributeFirstLevelForm;
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
uses
  l3Base,
  nsAttributeOneLevelTreeStruct
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  SysUtils {a}
  ;
{$IfEnd} //not Admin

{$If not defined(Admin)}

var
   { Локализуемые строки flSituationLocalConstants }
  str_flSituationCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'flSituationCaption'; rValue : 'Ситуации первого уровня (вкладка)');
   { Заголовок пользовательского типа "Ситуации первого уровня (вкладка)" }
  str_flSituationSettingsCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'flSituationSettingsCaption'; rValue : 'Поиск: Ситуации первого уровня (вкладка)');
   { Заголовок пользовательского типа "Ситуации первого уровня (вкладка)" для настройки панелей инструментов }

type
  Tkw_PrimTreeAttributeFirstLevel_Control_FirstLevelContent = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола FirstLevelContent
----
*Пример использования*:
[code]
контрол::FirstLevelContent TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTreeAttributeFirstLevel_Control_FirstLevelContent

// start class Tkw_PrimTreeAttributeFirstLevel_Control_FirstLevelContent

{$If not defined(NoScripts)}
function Tkw_PrimTreeAttributeFirstLevel_Control_FirstLevelContent.GetString: AnsiString;
 {-}
begin
 Result := 'FirstLevelContent';
end;//Tkw_PrimTreeAttributeFirstLevel_Control_FirstLevelContent.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimTreeAttributeFirstLevel_Control_FirstLevelContent_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола FirstLevelContent
----
*Пример использования*:
[code]
контрол::FirstLevelContent:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTreeAttributeFirstLevel_Control_FirstLevelContent_Push

// start class Tkw_PrimTreeAttributeFirstLevel_Control_FirstLevelContent_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimTreeAttributeFirstLevel_Control_FirstLevelContent_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('FirstLevelContent');
 inherited;
end;//Tkw_PrimTreeAttributeFirstLevel_Control_FirstLevelContent_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimTreeAttributeFirstLevelForm.pm_GetFirstLevelContent: TnscTreeView;
begin
 if (f_FirstLevelContent = nil) then
  f_FirstLevelContent := FindComponent('FirstLevelContent') As TnscTreeView;
 Result := f_FirstLevelContent;
end;

procedure TPrimTreeAttributeFirstLevelForm.AttributeTree_SetParent_Execute(const aParent: Il3SimpleNode);
//#UC START# *4AEF129601AC_497EC6A4022Fexec_var*
//#UC END# *4AEF129601AC_497EC6A4022Fexec_var*
begin
//#UC START# *4AEF129601AC_497EC6A4022Fexec_impl*
 UpdateCurrent(aParent);
//#UC END# *4AEF129601AC_497EC6A4022Fexec_impl*
end;//TPrimTreeAttributeFirstLevelForm.AttributeTree_SetParent_Execute

procedure TPrimTreeAttributeFirstLevelForm.AttributeTree_SetParent(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAttributeTree_SetParent_Params) do
  AttributeTree_SetParent_Execute(Parent);
end;

procedure TPrimTreeAttributeFirstLevelForm.AttributeTree_ExtSetRoot_Execute(const aRoot: INodeBase);
//#UC START# *4AEF14460025_497EC6A4022Fexec_var*
//#UC END# *4AEF14460025_497EC6A4022Fexec_var*
begin
//#UC START# *4AEF14460025_497EC6A4022Fexec_impl*
 inc(f_InternalMove);
 try
  with FirstLevelContent do
  begin
   if (TreeStruct <> nil) then
   begin
    Changing;
    try
     TreeStruct := TnsAttributeOneLevelTreeStruct.Make(aRoot, TreeStruct);
    finally
     Changed;
    end;//try..finally
   end//TreeStruct <> nil
   // в эту ветку попадать не должны
   else
    assert(False);
  end;//with FirstLevelContent do
  CCaption := l3CStr(FirstLevelContent.TreeStruct.RootNode);
 finally
  dec(f_InternalMove);
 end;//try..finally
//#UC END# *4AEF14460025_497EC6A4022Fexec_impl*
end;//TPrimTreeAttributeFirstLevelForm.AttributeTree_ExtSetRoot_Execute

procedure TPrimTreeAttributeFirstLevelForm.AttributeTree_ExtSetRoot(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAttributeTree_ExtSetRoot_Params) do
  AttributeTree_ExtSetRoot_Execute(Root);
end;

procedure TPrimTreeAttributeFirstLevelForm.AttributeTree_SetRoot_Execute(const aTag: Il3CString);
//#UC START# *4AF3EBC001C4_497EC6A4022Fexec_var*
//#UC END# *4AF3EBC001C4_497EC6A4022Fexec_var*
begin
//#UC START# *4AF3EBC001C4_497EC6A4022Fexec_impl*
 inc(f_InternalMove);
 try
  FirstLevelContent.TreeStruct :=
   TnsAttributeOneLevelTreeStruct.Make(aTag,
                                       FirstLevelContent.ShowRoot,
                                       True);
  if Assigned(FirstLevelContent.TreeStruct.RootNode) then
   CCaption := l3CStr(FirstLevelContent.TreeStruct.RootNode);
 finally
  dec(f_InternalMove);
 end;//try..finally
//#UC END# *4AF3EBC001C4_497EC6A4022Fexec_impl*
end;//TPrimTreeAttributeFirstLevelForm.AttributeTree_SetRoot_Execute

procedure TPrimTreeAttributeFirstLevelForm.AttributeTree_SetRoot(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAttributeTree_SetRoot_Params) do
  AttributeTree_SetRoot_Execute(Tag);
end;

procedure TPrimTreeAttributeFirstLevelForm.SignalDataSourceChanged(const anOld : IvcmViewAreaController;
 const aDsNew : IvcmViewAreaController);
begin
 inherited;
 if (aDsNew = nil) then
 begin
  dsSimpleTree := nil;
  dsTreeAttributeFirstLevel := nil;
 end//aDsNew = nil
 else
 begin
  Supports(aDsNew, IdsSimpleTree, dsSimpleTree);
  Supports(aDsNew, IdsTreeAttributeFirstLevel, dsTreeAttributeFirstLevel);
 end;//aDsNew = nil
end;

procedure TPrimTreeAttributeFirstLevelForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_AttributeTree, nil);
  PublishOpWithResult(en_AttributeTree, op_SetParent, AttributeTree_SetParent, nil, nil);
  PublishOpWithResult(en_AttributeTree, op_ExtSetRoot, AttributeTree_ExtSetRoot, nil, nil);
  PublishOpWithResult(en_AttributeTree, op_SetRoot, AttributeTree_SetRoot, nil, nil);
 end;//with Entities.Entities
end;

procedure TPrimTreeAttributeFirstLevelForm.MakeControls;
begin
 inherited;
 with AddUsertype(flSituationName,
  str_flSituationCaption,
  str_flSituationSettingsCaption,
  true,
  29,
  40,
  '',
  nil,
  nil,
  nil,
  vcm_ccDisable) do
 begin
 end;//with AddUsertype(flSituationName
end;

{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// Регистрация Tkw_PrimTreeAttributeFirstLevel_Control_FirstLevelContent
 Tkw_PrimTreeAttributeFirstLevel_Control_FirstLevelContent.Register('контрол::FirstLevelContent', TnscTreeView);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimTreeAttributeFirstLevel_Control_FirstLevelContent_Push
 Tkw_PrimTreeAttributeFirstLevel_Control_FirstLevelContent_Push.Register('контрол::FirstLevelContent:push');
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Инициализация str_flSituationCaption
 str_flSituationCaption.Init;
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Инициализация str_flSituationSettingsCaption
 str_flSituationSettingsCaption.Init;
{$IfEnd} //not Admin

end.