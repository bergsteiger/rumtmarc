unit PrimCommonDictionOptions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/PrimCommonDictionOptions_Form.pas"
// Начат: 08.09.2010 18:47
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Core::Common::View::Common::PrimCommonDictionOptions
//
// Совет дня
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
  l3Interfaces,
  l3TreeInterfaces,
  Classes,
  l3ControlsTypes,
  CommonDictionInterfaces,
  eeTreeView,
  OfficeLike_Usual_Controls,
  PrimCommonDiction_Form,
  eeTreeViewExport
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscContextFilter
  {$IfEnd} //Nemesis
  ,
  vtPanel,
  ImgList,
  PrimCommonDiction_utTips_UserType,
  OfficeLike_Tree_Controls,
  vtLister
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtOutliner
  {$If not defined(NoVCM)}
  ,
  vcmControllers
  {$IfEnd} //not NoVCM
  ,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimCommonDictionOptionsForm = {form} class(TPrimCommonDictionForm, IbsCommonDictionListener)
  {* Совет дня }
 private
 // private fields
   f_BackgroundPanel : TvtPanel;
    {* Поле для свойства BackgroundPanel}
   f_WordsTree : TnscTreeView;
    {* Поле для свойства WordsTree}
   f_ContextFilter : TnscContextFilter;
    {* Поле для свойства ContextFilter}
   f_NeedShowCurrentDiction : Boolean;
    {* Поле для свойства NeedShowCurrentDiction}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 private
 // private methods
   procedure ContextFilterChange(Sender: TObject);
     {* TNotifyEvent is used for events that do not require parameters. }
   procedure ContextFilterWrongContext(Sender: TObject);
     {* TNotifyEvent is used for events that do not require parameters. }
   procedure WordsTreeCountChanged(Sender: TObject;
     NewCount: LongInt);
   procedure WordsTreeCurrentChanged(Sender: TObject;
     aNewCurrent: LongInt;
     aOldCurrent: LongInt);
   function WordsTreeGetItemImage(Sender: TObject;
     Index: Integer;
     var aImages: TCustomImageList): Integer;
     {* Event to get Index of Bitmap in ImageIndex. }
   procedure WordsTreeActionElement(Sender: TObject;
     Index: LongInt);
   procedure WordsTreeTreeChanged(aSender: TObject;
     const anOldTree: Il3SimpleTree;
     const aNewTree: Il3SimpleTree);
   procedure WordsTreeSelectCountChanged(aSender: TObject;
     anOldCount: Integer;
     aNewCount: Integer);
   procedure WordsTreeFormatStatusInfo(aSender: TObject;
     var Info: Il3CString;
     const aCurrent: Integer;
     const aCount: Integer;
     const aSelected: Integer);
   procedure WordsTreeNewCharPressed(aChar: AnsiChar);
 protected
 // property methods
   procedure pm_SetNeedShowCurrentDiction(aValue: Boolean);
 protected
 // realized methods
   procedure CurrentUpdated;
     {* текущее значение изменилось }
   procedure Tree_ExpandAll_Test(const aParams: IvcmTestParamsPrim);
     {* Развернуть все }
   procedure Tree_CollapseAll_Test(const aParams: IvcmTestParamsPrim);
     {* Свернуть все }
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   {$If not defined(NoVCM)}
   procedure NotifyDataSourceChanged(const anOld: IvcmViewAreaController;
    const aNew: IvcmViewAreaController); override;
     {* Изменился источник данных. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   procedure DoInit(aFromHistory: Boolean); override;
     {* Инициализация формы. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
 protected
 // protected methods
   procedure ChangeDiction(aItem: Integer;
     aUpdateWithDelay: Boolean = True);
     {* изменить текущее толковани }
 protected
 // protected properties
   property NeedShowCurrentDiction: Boolean
     read f_NeedShowCurrentDiction
     write pm_SetNeedShowCurrentDiction;
 public
 // public properties
   property BackgroundPanel: TvtPanel
     read f_BackgroundPanel;
   property WordsTree: TnscTreeView
     read f_WordsTree;
   property ContextFilter: TnscContextFilter
     read f_ContextFilter;
 end;//TPrimCommonDictionOptionsForm

 TvcmEntityFormRef = TPrimCommonDictionOptionsForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  DictionRes,
  l3String,
  vtSizeablePanel,
  SysUtils,
  nsUtils,
  PrimCommonDiction_utMedicDiction_UserType
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  Controls,
  Forms
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
  Tkw_PrimCommonDictionOptions_Control_BackgroundPanel = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола BackgroundPanel
----
*Пример использования*:
[code]
контрол::BackgroundPanel TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimCommonDictionOptions_Control_BackgroundPanel

// start class Tkw_PrimCommonDictionOptions_Control_BackgroundPanel

{$If not defined(NoScripts)}
function Tkw_PrimCommonDictionOptions_Control_BackgroundPanel.GetString: AnsiString;
 {-}
begin
 Result := 'BackgroundPanel';
end;//Tkw_PrimCommonDictionOptions_Control_BackgroundPanel.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimCommonDictionOptions_Control_BackgroundPanel_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола BackgroundPanel
----
*Пример использования*:
[code]
контрол::BackgroundPanel:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimCommonDictionOptions_Control_BackgroundPanel_Push

// start class Tkw_PrimCommonDictionOptions_Control_BackgroundPanel_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimCommonDictionOptions_Control_BackgroundPanel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('BackgroundPanel');
 inherited;
end;//Tkw_PrimCommonDictionOptions_Control_BackgroundPanel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimCommonDictionOptions_Control_WordsTree = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола WordsTree
----
*Пример использования*:
[code]
контрол::WordsTree TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimCommonDictionOptions_Control_WordsTree

// start class Tkw_PrimCommonDictionOptions_Control_WordsTree

{$If not defined(NoScripts)}
function Tkw_PrimCommonDictionOptions_Control_WordsTree.GetString: AnsiString;
 {-}
begin
 Result := 'WordsTree';
end;//Tkw_PrimCommonDictionOptions_Control_WordsTree.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimCommonDictionOptions_Control_WordsTree_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола WordsTree
----
*Пример использования*:
[code]
контрол::WordsTree:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimCommonDictionOptions_Control_WordsTree_Push

// start class Tkw_PrimCommonDictionOptions_Control_WordsTree_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimCommonDictionOptions_Control_WordsTree_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('WordsTree');
 inherited;
end;//Tkw_PrimCommonDictionOptions_Control_WordsTree_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimCommonDictionOptions_Control_ContextFilter = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола ContextFilter
----
*Пример использования*:
[code]
контрол::ContextFilter TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimCommonDictionOptions_Control_ContextFilter

// start class Tkw_PrimCommonDictionOptions_Control_ContextFilter

{$If not defined(NoScripts)}
function Tkw_PrimCommonDictionOptions_Control_ContextFilter.GetString: AnsiString;
 {-}
begin
 Result := 'ContextFilter';
end;//Tkw_PrimCommonDictionOptions_Control_ContextFilter.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimCommonDictionOptions_Control_ContextFilter_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола ContextFilter
----
*Пример использования*:
[code]
контрол::ContextFilter:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimCommonDictionOptions_Control_ContextFilter_Push

// start class Tkw_PrimCommonDictionOptions_Control_ContextFilter_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimCommonDictionOptions_Control_ContextFilter_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('ContextFilter');
 inherited;
end;//Tkw_PrimCommonDictionOptions_Control_ContextFilter_Push.DoDoIt
{$IfEnd} //not NoScripts

procedure TPrimCommonDictionOptionsForm.ContextFilterChange(Sender: TObject);
//#UC START# *5146E2260095_4C87A1DF00B4_var*
var
 l_Tree: Il3FilterableTree;
 l_Filtered: Il3SimpleTree;
 l_Node: Il3SimpleNode;
 l_NewNodeIndex: Integer;
//#UC END# *5146E2260095_4C87A1DF00B4_var*
begin
//#UC START# *5146E2260095_4C87A1DF00B4_impl*
 if Assigned(dsCommonDiction) and
    Supports(WordsTree.TreeStruct, Il3FilterableTree, l_Tree) then
 begin
  // Сохраним параметры контекстной фильтрации для данного языка
  l_Filtered := l_Tree.MakeFiltered(l_Tree.
                                     CloneFilters.
                                     SetContext(ContextFilter.ActiveContext),
                                    l_Node,
                                    l_NewNodeIndex,
                                    True,
                                    ContextFilter.NeedRefilterTree);

  if Assigned(l_Filtered) and (l_Filtered.CountView > 0) then
   with WordsTree do
   begin
    Changing;
    try
     TreeStruct := l_Filtered;
     vlbMakeItemVisible(Current);
    finally
     Changed;
    end;{try..finally}
   end;//with WordsTree do
 end;//if Supports(WordsTree.TreeStruct,
//#UC END# *5146E2260095_4C87A1DF00B4_impl*
end;//TPrimCommonDictionOptionsForm.ContextFilterChange

procedure TPrimCommonDictionOptionsForm.ContextFilterWrongContext(Sender: TObject);
//#UC START# *5146E29E0040_4C87A1DF00B4_var*
//#UC END# *5146E29E0040_4C87A1DF00B4_var*
begin
//#UC START# *5146E29E0040_4C87A1DF00B4_impl*
 nsBeepWrongContext;
//#UC END# *5146E29E0040_4C87A1DF00B4_impl*
end;//TPrimCommonDictionOptionsForm.ContextFilterWrongContext

procedure TPrimCommonDictionOptionsForm.WordsTreeCountChanged(Sender: TObject;
  NewCount: LongInt);
//#UC START# *5146E2F602B1_4C87A1DF00B4_var*
//#UC END# *5146E2F602B1_4C87A1DF00B4_var*
begin
//#UC START# *5146E2F602B1_4C87A1DF00B4_impl*
 UpdateStatusInfo;
//#UC END# *5146E2F602B1_4C87A1DF00B4_impl*
end;//TPrimCommonDictionOptionsForm.WordsTreeCountChanged

procedure TPrimCommonDictionOptionsForm.WordsTreeCurrentChanged(Sender: TObject;
  aNewCurrent: LongInt;
  aOldCurrent: LongInt);
//#UC START# *5146E33502A3_4C87A1DF00B4_var*
//#UC END# *5146E33502A3_4C87A1DF00B4_var*
begin
//#UC START# *5146E33502A3_4C87A1DF00B4_impl*
 UpdateStatusInfo;
 // Если происходит переключения языка толкований обновлять текущий нельзя, т.к.
 // в процессе переключения произойдет поиск текущего в новом списке толкований
 // и если толкование не будет найдено, то в новом списке толкования не будет
 // устновлен текущий:
 ChangeDiction(aNewCurrent);
//#UC END# *5146E33502A3_4C87A1DF00B4_impl*
end;//TPrimCommonDictionOptionsForm.WordsTreeCurrentChanged

function TPrimCommonDictionOptionsForm.WordsTreeGetItemImage(Sender: TObject;
  Index: Integer;
  var aImages: TCustomImageList): Integer;
//#UC START# *5146E621033A_4C87A1DF00B4_var*
//#UC END# *5146E621033A_4C87A1DF00B4_var*
begin
//#UC START# *5146E621033A_4C87A1DF00B4_impl*
 Result := cDictItemIcon;
//#UC END# *5146E621033A_4C87A1DF00B4_impl*
end;//TPrimCommonDictionOptionsForm.WordsTreeGetItemImage

procedure TPrimCommonDictionOptionsForm.WordsTreeActionElement(Sender: TObject;
  Index: LongInt);
//#UC START# *5146E64C035F_4C87A1DF00B4_var*
//#UC END# *5146E64C035F_4C87A1DF00B4_var*
begin
//#UC START# *5146E64C035F_4C87A1DF00B4_impl*
 ChangeDiction(Index, False);
//#UC END# *5146E64C035F_4C87A1DF00B4_impl*
end;//TPrimCommonDictionOptionsForm.WordsTreeActionElement

procedure TPrimCommonDictionOptionsForm.WordsTreeTreeChanged(aSender: TObject;
  const anOldTree: Il3SimpleTree;
  const aNewTree: Il3SimpleTree);
//#UC START# *5146EC920269_4C87A1DF00B4_var*
//#UC END# *5146EC920269_4C87A1DF00B4_var*
begin
//#UC START# *5146EC920269_4C87A1DF00B4_impl*
 if NeedShowCurrentDiction then
 begin
  ChangeDiction(WordsTree.Current);
  NeedShowCurrentDiction := False;
 end;//if NeedShowCurrentDiction then
//#UC END# *5146EC920269_4C87A1DF00B4_impl*
end;//TPrimCommonDictionOptionsForm.WordsTreeTreeChanged

procedure TPrimCommonDictionOptionsForm.WordsTreeSelectCountChanged(aSender: TObject;
  anOldCount: Integer;
  aNewCount: Integer);
//#UC START# *5146ED3F0081_4C87A1DF00B4_var*
//#UC END# *5146ED3F0081_4C87A1DF00B4_var*
begin
//#UC START# *5146ED3F0081_4C87A1DF00B4_impl*
 UpdateStatusInfo;
//#UC END# *5146ED3F0081_4C87A1DF00B4_impl*
end;//TPrimCommonDictionOptionsForm.WordsTreeSelectCountChanged

procedure TPrimCommonDictionOptionsForm.WordsTreeFormatStatusInfo(aSender: TObject;
  var Info: Il3CString;
  const aCurrent: Integer;
  const aCount: Integer;
  const aSelected: Integer);
//#UC START# *5146ED6C00BB_4C87A1DF00B4_var*
const
 cMap: array [utTips .. utMedicDiction] of PvcmStringID = (
  @str_TipsStatusInfoFormat,   //utTips
  @str_DictionStatusInfoFormat //utMedicDiction
 );
//#UC END# *5146ED6C00BB_4C87A1DF00B4_var*
begin
//#UC START# *5146ED6C00BB_4C87A1DF00B4_impl*
 Info := vcmFmt(cMap[UserType]^,[aCurrent, aCount]);
//#UC END# *5146ED6C00BB_4C87A1DF00B4_impl*
end;//TPrimCommonDictionOptionsForm.WordsTreeFormatStatusInfo

procedure TPrimCommonDictionOptionsForm.WordsTreeNewCharPressed(aChar: AnsiChar);
//#UC START# *5146ED7F005F_4C87A1DF00B4_var*
//#UC END# *5146ED7F005F_4C87A1DF00B4_var*
begin
//#UC START# *5146ED7F005F_4C87A1DF00B4_impl*
 ContextFilter.PressChar(aChar);
//#UC END# *5146ED7F005F_4C87A1DF00B4_impl*
end;//TPrimCommonDictionOptionsForm.WordsTreeNewCharPressed

procedure TPrimCommonDictionOptionsForm.ChangeDiction(aItem: Integer;
  aUpdateWithDelay: Boolean = True);
//#UC START# *5005645F03CE_4C87A1DF00B4_var*
var
 l_l3Node : Il3SimpleNode;
//#UC END# *5005645F03CE_4C87A1DF00B4_var*
begin
//#UC START# *5005645F03CE_4C87A1DF00B4_impl*
 if aItem <> -1 then
 begin
  l_l3Node := WordsTree.GetNode(aItem);
  try
   if (dsCommonDiction <> nil) then
    dsCommonDiction.CurrentChanged(l_l3Node, aUpdateWithDelay);
  finally
   l_l3Node := nil;
  end;//try..finally
 end;//if Index <> -1 then
//#UC END# *5005645F03CE_4C87A1DF00B4_impl*
end;//TPrimCommonDictionOptionsForm.ChangeDiction

procedure TPrimCommonDictionOptionsForm.pm_SetNeedShowCurrentDiction(aValue: Boolean);
//#UC START# *5005661D0242_4C87A1DF00B4set_var*
//#UC END# *5005661D0242_4C87A1DF00B4set_var*
begin
//#UC START# *5005661D0242_4C87A1DF00B4set_impl*
 inherited;
 NeedShowCurrentDiction := false;
//#UC END# *5005661D0242_4C87A1DF00B4set_impl*
end;//TPrimCommonDictionOptionsForm.pm_SetNeedShowCurrentDiction

procedure TPrimCommonDictionOptionsForm.CurrentUpdated;
//#UC START# *493402BC0160_4C87A1DF00B4_var*
//#UC END# *493402BC0160_4C87A1DF00B4_var*
begin
//#UC START# *493402BC0160_4C87A1DF00B4_impl*
 WordsTree.Current := dsCommonDiction.MakeCurrentIndex(WordsTree.TreeStruct);
//#UC END# *493402BC0160_4C87A1DF00B4_impl*
end;//TPrimCommonDictionOptionsForm.CurrentUpdated

procedure TPrimCommonDictionOptionsForm.Tree_ExpandAll_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4BDAF7880236_4C87A1DF00B4test_var*
//#UC END# *4BDAF7880236_4C87A1DF00B4test_var*
begin
//#UC START# *4BDAF7880236_4C87A1DF00B4test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := False;
//#UC END# *4BDAF7880236_4C87A1DF00B4test_impl*
end;//TPrimCommonDictionOptionsForm.Tree_ExpandAll_Test

procedure TPrimCommonDictionOptionsForm.Tree_CollapseAll_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4BDAF7A2005C_4C87A1DF00B4test_var*
//#UC END# *4BDAF7A2005C_4C87A1DF00B4test_var*
begin
//#UC START# *4BDAF7A2005C_4C87A1DF00B4test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := False;
//#UC END# *4BDAF7A2005C_4C87A1DF00B4test_impl*
end;//TPrimCommonDictionOptionsForm.Tree_CollapseAll_Test

procedure TPrimCommonDictionOptionsForm.Cleanup;
//#UC START# *479731C50290_4C87A1DF00B4_var*
//#UC END# *479731C50290_4C87A1DF00B4_var*
begin
//#UC START# *479731C50290_4C87A1DF00B4_impl*
 if (DataSource <> nil) then
  DataSource.Unsubscribe(IbsCommonDictionListener(Self));
 inherited;
//#UC END# *479731C50290_4C87A1DF00B4_impl*
end;//TPrimCommonDictionOptionsForm.Cleanup

{$If not defined(NoVCM)}
procedure TPrimCommonDictionOptionsForm.NotifyDataSourceChanged(const anOld: IvcmViewAreaController;
  const aNew: IvcmViewAreaController);
//#UC START# *497469C90140_4C87A1DF00B4_var*

 function lp_IsInit: Boolean;
 begin
  Result := (sdsBaseDocument <> nil) and not sdsBaseDocument.HasDocument;
 end;//lp_IsInit

var
 l_Index    : Integer;
//#UC END# *497469C90140_4C87A1DF00B4_var*
begin
//#UC START# *497469C90140_4C87A1DF00B4_impl*
 inherited;
 if (anOld <> nil) then
  anOld.Unsubscribe(IbsCommonDictionListener(Self));
 if (aNew <> nil) then
  aNew.Subscribe(IbsCommonDictionListener(Self));
 // Возможно, что в истории лежит которого на самом деле уже нет, вследствии
 // установки базы без толкового словаря не лету
 if (dsCommonDiction <> nil) then
 begin
  // Поиск слова в толковом словаре
  if not Dispatcher.History.InBF then
  begin
   WordsTree.TreeStruct := dsCommonDiction.SimpleTree;

   if not l3IsNil(dsCommonDiction.Context) then
   begin
    ContextFilter.Context := dsCommonDiction.Context;
    ContextFilter.ForceActive;
   end//if not l3IsNil(dsCommonDiction.Context) then
   // Переход по ссылке в толкованиях
   else
   begin
    // Выключаем контекст перед позиционированием
    ContextFilter.Active := False;
    // При открытии словаря показываем текущее толкование в списке (первое):
    if lp_IsInit then
    begin
     // Если дерево на экране, то покажем первое толкование:
     if WordsTree.IsTreeAssign then
      ChangeDiction(WordsTree.Current)
     // Иначе подождем когда дерево появится и покажем первое толкование:
     else
      NeedShowCurrentDiction := True;
    end//if lp_IsInit then
    // Спозиционируемся
    else
    begin
     l_Index := dsCommonDiction.MakeCurrentIndex(WordsTree.TreeStruct);
     if l_Index > -1 then
      WordsTree.Current := Pred(l_Index)
     else
      WordsTree.SetNoCurrent;
    end;//if lp_IsInit then
   end;//if not l3IsNil(dsCommonDiction.Context) then
  end;//if not aFromHistory then
 end;//dsCommonDiction <> nil
//#UC END# *497469C90140_4C87A1DF00B4_impl*
end;//TPrimCommonDictionOptionsForm.NotifyDataSourceChanged
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimCommonDictionOptionsForm.DoInit(aFromHistory: Boolean);
//#UC START# *49803F5503AA_4C87A1DF00B4_var*
//#UC END# *49803F5503AA_4C87A1DF00B4_var*
begin
//#UC START# *49803F5503AA_4C87A1DF00B4_impl*
 inherited;

 // отключаем придочивание для исключения потенциальных AV, сделано вместе с
 // http://mdp.garant.ru/pages/viewpage.action?pageId=382410422
// if Parent is TvtSizeablePanel then
//  TvtSizeablePanel(Parent).DisableAcceptInDockOver := true;

 WordsTree.Images := nsDictRes.DictImages;
 ContextFilter.Images := dmStdRes.SmallImageList;
 UpdateStatusInfo;
//#UC END# *49803F5503AA_4C87A1DF00B4_impl*
end;//TPrimCommonDictionOptionsForm.DoInit
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimCommonDictionOptionsForm.InitControls;
//#UC START# *4A8E8F2E0195_4C87A1DF00B4_var*
//#UC END# *4A8E8F2E0195_4C87A1DF00B4_var*
begin
//#UC START# *4A8E8F2E0195_4C87A1DF00B4_impl*
 ActiveControl := WordsTree;
 with BackgroundPanel do
 begin
  Align := alClient;
  BevelOuter := bvNone;
 end;
 with ContextFilter do
 begin
  Height := 31;
  LabelVisible := False;
  ImageIndex := 77;
  ContextFilterTarget := WordsTree;
  OnChange := ContextFilterChange;
  OnWrongContext := ContextFilterWrongContext;
 end;
 with WordsTree do
 begin
  Align := alClient;
  BorderStyle := bsNone;
  ActionElementMode := l3_amSingleClick;
  NeedStatus := True;
  OnCountChanged := WordsTreeCountChanged;
  OnGetItemImage := WordsTreeGetItemImage;
  OnActionElement := WordsTreeActionElement;
  OnCurrentChanged := WordsTreeCurrentChanged;
  OnTreeChanged := WordsTreeTreeChanged;
  OnSelectCountChanged := WordsTreeSelectCountChanged;
  OnFormatStatusInfo := WordsTreeFormatStatusInfo;
  OnNewCharPressed := WordsTreeNewCharPressed;
  SettingId := 'stidDictionTree';
 end;
//#UC END# *4A8E8F2E0195_4C87A1DF00B4_impl*
end;//TPrimCommonDictionOptionsForm.InitControls
{$IfEnd} //not NoVCM

procedure TPrimCommonDictionOptionsForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Edit, nil);
  PublishFormEntity(en_Tree, nil);
  MakeEntitySupportedByControl(en_Tree, WordsTree);
  PublishOp(en_Tree, op_ExpandAll, nil, Tree_ExpandAll_Test, nil);
  PublishOp(en_Tree, op_CollapseAll, nil, Tree_CollapseAll_Test, nil);
  PublishOp(en_Edit, op_Delete, nil, nil, nil);
  ShowInContextMenu(en_Edit, op_Delete, true);
  ShowInToolbar(en_Edit, op_Delete, false);
 end;//with Entities.Entities
 AddUserTypeExclude(utTipsName, en_Tree, op_ExpandAll, false);
 AddUserTypeExclude(utTipsName, en_Tree, op_CollapseAll, false);
end;

procedure TPrimCommonDictionOptionsForm.MakeControls;
begin
 inherited;
 f_BackgroundPanel := TvtPanel.Create(Self);
 f_BackgroundPanel.Name := 'BackgroundPanel';
 f_BackgroundPanel.Parent := Self;
 f_WordsTree := TnscTreeView.Create(Self);
 f_WordsTree.Name := 'WordsTree';
 f_WordsTree.Parent := BackgroundPanel;
 f_ContextFilter := TnscContextFilter.Create(Self);
 f_ContextFilter.Name := 'ContextFilter';
 f_ContextFilter.Parent := BackgroundPanel;
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimCommonDictionOptions_Control_BackgroundPanel
 Tkw_PrimCommonDictionOptions_Control_BackgroundPanel.Register('контрол::BackgroundPanel', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimCommonDictionOptions_Control_BackgroundPanel_Push
 Tkw_PrimCommonDictionOptions_Control_BackgroundPanel_Push.Register('контрол::BackgroundPanel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimCommonDictionOptions_Control_WordsTree
 Tkw_PrimCommonDictionOptions_Control_WordsTree.Register('контрол::WordsTree', TnscTreeView);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimCommonDictionOptions_Control_WordsTree_Push
 Tkw_PrimCommonDictionOptions_Control_WordsTree_Push.Register('контрол::WordsTree:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimCommonDictionOptions_Control_ContextFilter
 Tkw_PrimCommonDictionOptions_Control_ContextFilter.Register('контрол::ContextFilter', TnscContextFilter);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimCommonDictionOptions_Control_ContextFilter_Push
 Tkw_PrimCommonDictionOptions_Control_ContextFilter_Push.Register('контрол::ContextFilter:push');
{$IfEnd} //not Admin AND not Monitorings

end.