unit PrimStyleEditorNavigator_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/PrimStyleEditorNavigator_Form.pas"
// Начат: 28.10.2009 14:01
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Основные прецеденты::Settings::View::Settings::PrimStyleEditorNavigator
//
// Дерево стилей
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
  Classes
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  Settings_Strange_Controls,
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
  PrimStyleEditorNavigator_utStyleEditorNavigator_UserType,
  l3Interfaces,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimStyleEditorNavigatorForm = {form} class(TvcmEntityForm)
  {* Дерево стилей }
 private
 // private fields
   f_f_StyleTreeView : TnscTreeView;
    {* Поле для свойства f_StyleTreeView}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetFStyleTreeView: TnscTreeView;
 protected
 // realized methods
   procedure StyleEditor_ReloadStylesTree_Execute(const aStyleName: Il3CString);
     {* ReloadStylesTree }
   procedure StyleEditor_ReloadStylesTree(const aParams: IvcmExecuteParams);
     {* ReloadStylesTree }
   procedure StyleEditor_ReloadStyleTable_Execute;
   procedure StyleEditor_ReloadStyleTable(const aParams: IvcmExecuteParams);
 protected
 // protected methods
   function GetStyleIdFromTreeByIndex(aIndex: Integer): Integer; virtual; abstract;
   procedure SendToAggregateSetNewContentNotify(aStyleId: Integer); virtual; abstract;
 public
 // public properties
   property f_StyleTreeView: TnscTreeView
     read pm_GetFStyleTreeView;
 end;//TPrimStyleEditorNavigatorForm

 TvcmEntityFormRef = TPrimStyleEditorNavigatorForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  evStyleInterface,
  eeInterfaces,
  eeTreeViewExport,
  eeTreeView,
  eeNode,
  l3Nodes,
  nsStyleEditor,
  l3Tree_TLB,
  afwFacade,
  SysUtils,
  afwInterfaces,
  l3Base,
  evdStyles
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки utStyleEditorNavigatorLocalConstants }
  str_utStyleEditorNavigatorCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utStyleEditorNavigatorCaption'; rValue : 'Дерево стилей');
   { Заголовок пользовательского типа "Дерево стилей" }
  str_utStyleEditorNavigatorSettingsCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utStyleEditorNavigatorSettingsCaption'; rValue : 'Дерево стилей');
   { Заголовок пользовательского типа "Дерево стилей" для настройки панелей инструментов }

type
  Tkw_PrimStyleEditorNavigator_Control_f_StyleTreeView = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола f_StyleTreeView
----
*Пример использования*:
[code]
контрол::f_StyleTreeView TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimStyleEditorNavigator_Control_f_StyleTreeView

// start class Tkw_PrimStyleEditorNavigator_Control_f_StyleTreeView

{$If not defined(NoScripts)}
function Tkw_PrimStyleEditorNavigator_Control_f_StyleTreeView.GetString: AnsiString;
 {-}
begin
 Result := 'f_StyleTreeView';
end;//Tkw_PrimStyleEditorNavigator_Control_f_StyleTreeView.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimStyleEditorNavigator_Control_f_StyleTreeView_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола f_StyleTreeView
----
*Пример использования*:
[code]
контрол::f_StyleTreeView:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimStyleEditorNavigator_Control_f_StyleTreeView_Push

// start class Tkw_PrimStyleEditorNavigator_Control_f_StyleTreeView_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimStyleEditorNavigator_Control_f_StyleTreeView_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('f_StyleTreeView');
 inherited;
end;//Tkw_PrimStyleEditorNavigator_Control_f_StyleTreeView_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimStyleEditorNavigatorForm.pm_GetFStyleTreeView: TnscTreeView;
begin
 if (f_f_StyleTreeView = nil) then
  f_f_StyleTreeView := FindComponent('f_StyleTreeView') As TnscTreeView;
 Result := f_f_StyleTreeView;
end;

procedure TPrimStyleEditorNavigatorForm.StyleEditor_ReloadStylesTree_Execute(const aStyleName: Il3CString);
//#UC START# *4AE8250D03D5_4AE8247501DAexec_var*
var
 l_Node: Il3Node;
 l_Root: IeeNode;
 l_Current: Integer;
 l_RootChanged: TeeRootChangedEvent;
 l_CurrentChanged: TeeCurrentChanged;
 l_Styles: array of Integer;
 l_IDX: Integer;
//#UC END# *4AE8250D03D5_4AE8247501DAexec_var*
begin
//#UC START# *4AE8250D03D5_4AE8247501DAexec_impl*
 with TevStyleInterface.Make do
  try
   with f_StyleTreeView do
    with TreeView do
    begin
     l_RootChanged := OnRootChanged;
     try
      OnRootChanged := nil;
      //
      with Tree do
      begin
       l_Root := Root;
       try
        l_CurrentChanged := OnCurrentChanged;
        try
         OnCurrentChanged := nil;
         //
         SetLength(l_Styles, 0);
         for l_Idx := Low(VisibleStyleTable) to High (VisibleStyleTable) do
          if VisibleStyleTable[l_IDX].ForAll or afw.Application.IsInternal then
          begin
           SetLength(l_Styles, Length(l_Styles) + 1);
           l_Styles[High(l_Styles)] := VisibleStyleTable[l_IDX].ID;
          end;//VisibleStyleTable[l_IDX].ForAll or afw.Application.IsInternal
         Root := TeeNode.Make(
                  MakeStylesTreeRoot(
                   l3CatLongArray(l_Styles,
                                  [ev_saInterface,
                                   ev_saHeaderForChangesInfo,
                                   ev_saFooterForChangesInfo,
                                   ev_saTextForChangesInfo,
                                   ev_saSubHeaderForChangesInfo,
                                   ev_saChangesInfo,
                                   ev_saDialogs,
                                   ev_saEnclosureHeader,
                                   ev_saEditionInterval,
                                   ev_saEdition,
                                   ev_saEditionNumber,
                                   ev_saNodeGroupHeader,
                                   ev_saTOC,
                                   ev_saWriteToUs,
                                   ev_saHeaderAACLeftWindow,
                                   ev_saHeaderAACRightWindow,
                                   ev_saTxtNormalAACSeeAlso,
                                   ev_saSnippet{,
                                   ev_saContextAACRightWindows}
                                  ])));
         ExpandAll;
        finally
         OnCurrentChanged := l_CurrentChanged;
        end;//try..finally
        //
        l_Node := l3SearchByName(Root as Il3Node, aStyleName);
        if (l_Node <> nil) then
         try
          l_Current := Current;
          if (GotoNode(TeeNode.Make(l_Node)) <> -1) then
          begin
           if (l_Current = Current) then
            SendToAggregateSetNewContentNotify(GetStyleIdFromTreeByIndex(l_Current));
           Exit;
          end;
         finally
          l_Node := nil;
         end;
        //
        if Assigned(l_RootChanged) then
         l_RootChanged(Self, l_Root, Root);
       finally
        l_Root := nil;
       end;
      end;
     finally
      OnRootChanged := l_RootChanged;
     end;
    end;
  finally
   Free;
  end;
//#UC END# *4AE8250D03D5_4AE8247501DAexec_impl*
end;//TPrimStyleEditorNavigatorForm.StyleEditor_ReloadStylesTree_Execute

procedure TPrimStyleEditorNavigatorForm.StyleEditor_ReloadStylesTree(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IStyleEditor_ReloadStylesTree_Params) do
  StyleEditor_ReloadStylesTree_Execute(StyleName);
end;

procedure TPrimStyleEditorNavigatorForm.StyleEditor_ReloadStyleTable_Execute;
//#UC START# *4AF8660E0079_4AE8247501DAexec_var*
var
 l_StyleTableSpy: IafwStyleTableSpy;
//#UC END# *4AF8660E0079_4AE8247501DAexec_var*
begin
//#UC START# *4AF8660E0079_4AE8247501DAexec_impl*
 if Supports(f_StyleTreeView, IafwStyleTableSpy, l_StyleTableSpy) then
  try
   l_StyleTableSpy.StyleTableChanged;
  finally
   l_StyleTableSpy := nil;
  end;
//#UC END# *4AF8660E0079_4AE8247501DAexec_impl*
end;//TPrimStyleEditorNavigatorForm.StyleEditor_ReloadStyleTable_Execute

procedure TPrimStyleEditorNavigatorForm.StyleEditor_ReloadStyleTable(const aParams: IvcmExecuteParams);
begin
 StyleEditor_ReloadStyleTable_Execute;
end;

procedure TPrimStyleEditorNavigatorForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_StyleEditor, nil);
  PublishOpWithResult(en_StyleEditor, op_ReloadStylesTree, StyleEditor_ReloadStylesTree, nil, nil);
  PublishOpWithResult(en_StyleEditor, op_ReloadStyleTable, StyleEditor_ReloadStyleTable, nil, nil);
 end;//with Entities.Entities
end;

procedure TPrimStyleEditorNavigatorForm.MakeControls;
begin
 inherited;
 with AddUsertype(utStyleEditorNavigatorName,
  str_utStyleEditorNavigatorCaption,
  str_utStyleEditorNavigatorSettingsCaption,
  true,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utStyleEditorNavigatorName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimStyleEditorNavigator_Control_f_StyleTreeView
 Tkw_PrimStyleEditorNavigator_Control_f_StyleTreeView.Register('контрол::f_StyleTreeView', TnscTreeView);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimStyleEditorNavigator_Control_f_StyleTreeView_Push
 Tkw_PrimStyleEditorNavigator_Control_f_StyleTreeView_Push.Register('контрол::f_StyleTreeView:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_utStyleEditorNavigatorCaption
 str_utStyleEditorNavigatorCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_utStyleEditorNavigatorSettingsCaption
 str_utStyleEditorNavigatorSettingsCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.