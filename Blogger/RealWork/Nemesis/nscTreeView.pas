unit nscTreeView;

{ $Id: nscTreeView.pas,v 1.56 2013/07/05 11:19:51 morozov Exp $ }

// $Log: nscTreeView.pas,v $
// Revision 1.56  2013/07/05 11:19:51  morozov
// {RequestLink:467293698}
//
// Revision 1.55  2013/04/02 19:05:26  kostitsin
// [$120723452] - vtLister
//
// Revision 1.54  2013/03/01 16:10:44  kostitsin
// [$431385176]
//
// Revision 1.53  2013/01/28 11:55:21  lulin
// - боремся с несобиранием тестов.
// - новые эталоны.
//
// Revision 1.52  2012/11/12 10:25:03  fireton
// - не собирался AllArchiComponents7
//
// Revision 1.51  2012/11/02 11:01:07  lulin
// - выкидываем лишнее.
//
// Revision 1.50  2012/04/27 18:12:20  kostitsin
// [$346762641]
//
// Revision 1.49  2012/04/27 15:16:54  kostitsin
// [$360480778]
//
// Revision 1.48  2011/11/28 08:05:05  fireton
// - библиотека Арчи не собиралась
//
// Revision 1.47  2011/11/25 11:47:27  gensnet
// http://mdp.garant.ru/pages/viewpage.action?pageId=303858572
//
// Revision 1.46  2011/11/23 11:58:52  gensnet
// http://mdp.garant.ru/pages/viewpage.action?pageId=297714497
//
// Revision 1.45  2011/04/18 17:13:22  lulin
// {RequestLink:263750840}.
//
// Revision 1.44  2011/04/13 10:21:14  lulin
// {RequestLink:259883587}.
//
// Revision 1.43  2010/03/10 19:41:58  lulin
// {RequestLink:196445017}.
//
// Revision 1.42  2009/12/24 09:32:31  oman
// - new: {RequestLink:175538655}
//
// Revision 1.41  2009/06/16 11:15:46  oman
// - new: Делаем HotTrack - [$152043882]
//
// Revision 1.40  2009/06/16 10:00:31  oman
// - new: выводим ручку - [$151585795]
//
// Revision 1.39  2009/06/16 09:59:26  oman
// - new: выводим ручку - [$151585795]
//
// Revision 1.38  2009/05/26 10:29:57  oman
// - new: Рисуем пока без клавиатуры - [$148018532]
//
// Revision 1.37  2008/12/12 19:19:07  lulin
// - <K>: 129762414.
//
// Revision 1.36  2008/11/06 14:34:42  oman
// - fix: Учитываем приемистость данных деревом на тесте вставки (К-112722830)
//
// Revision 1.35  2008/10/16 11:16:59  lulin
// - <K>: 121149716.
//
// Revision 1.34  2008/09/04 11:16:08  lulin
// - <K>: 88080895.
//
// Revision 1.33  2008/03/19 06:28:30  mmorozov
// - new: использование константной строки при перетаскивании (в рамках CQ: OIT5-28528);
//
// Revision 1.32  2008/02/21 08:47:46  mmorozov
// - new: поддержка приёма объектов на уровне данных дерева + поддержка операций копирования\вставки визульным деревом (в рамках CQ: OIT5-28331);
//
// Revision 1.31  2008/02/14 17:08:39  lulin
// - cleanup.
//
// Revision 1.30  2008/01/22 17:57:32  mmorozov
// - откат изменений связанный с задержкой уведомления о смене текущего;
//
// Revision 1.29  2008/01/16 13:08:26  mmorozov
// - new behaviour: уведомляем о событии смены текущего только по окончании перемения по дереву (в рамках CQ: OIT5-25795);
//
// Revision 1.28  2007/11/06 08:15:52  mmorozov
// - change: не обращаемся к закрытым полям, используем методы;
//
// Revision 1.27  2007/11/06 06:58:56  mmorozov
// - bugfix: в деревьях панели задач не работали Ctrl-Num-, Ctrl-Num+ (CQ: OIT5-27217);
//
// Revision 1.26  2007/10/17 11:00:04  mmorozov
// - change: отказываемся от шаблона для публикации операций, т.к. для Desing-Time использование шаблона недопустимо;
//
// Revision 1.24  2007/10/16 06:25:22  mmorozov
// - new: публикуем операции "Выделить все", "Снять выделение" (в рамках работы над CQ: OIT5-26997) (также смотри K<57967565>);
//
// Revision 1.23  2007/07/18 09:46:38  oman
// - fix: При Драг|дроп поддерживаем только перемещение (cq23707)
//
// Revision 1.22  2007/02/13 13:28:16  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.21  2007/02/12 16:40:12  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.20  2007/01/20 15:31:00  lulin
// - разделяем параметры операции для выполнения и для тестирования.
//
// Revision 1.19  2007/01/17 17:53:31  lulin
// - сужаем список параметров для тестирования операции.
//
// Revision 1.18  2007/01/17 14:02:35  lulin
// - вычищены последние нефиксированные параметры в тестах операций.
//
// Revision 1.17  2007/01/16 14:27:21  lulin
// - избавляемся от нефиксированного параметра - подсказки операции.
//
// Revision 1.16  2007/01/09 09:58:02  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.15  2006/12/27 16:54:35  lulin
// - cleanup.
//
// Revision 1.14  2006/12/19 11:24:37  lulin
// - объект данных для дерева выделен в отдельный модуль.
//
// Revision 1.13  2006/12/13 10:43:58  lulin
// - класс переименован в соответствии с его функционалом.
//
// Revision 1.12  2006/12/04 12:34:43  mmorozov
// - bugfix: некоторые операции не были готовы к работе с пустым деревом (CQ: OIT5-23812);
//
// Revision 1.11  2006/11/17 09:27:22  oman
// Merge from B_NEMESIS_6_4
//
// Revision 1.10  2006/11/03 10:59:49  lulin
// - объединил с веткой 6.4.
//
// Revision 1.9.2.1.4.1  2006/11/17 09:25:16  oman
// - fix: Состояние nscTreeView не поддерживало DataReset => в
//  истории деревья не сбрасывались (cq23660)
//
// Revision 1.9.2.1  2006/10/25 09:59:01  mmorozov
// - new: управляем доступностью операций "Развернуть все" "Свернуть все" "Перенос по словам" (CQ: OIT5-18638);
//
// Revision 1.9  2006/09/20 12:08:24  lulin
// - не собиралась библиотека не из ветки.
//
// Revision 1.8  2006/09/12 14:04:19  oman
// - new beh: Поддержка свернуть/развернуть для новых деревьях -
//  опубликованы операции и задавлены коменды (cq22540)
//
// Revision 1.7  2006/04/12 13:13:41  oman
// - change: перевод механизма локализации строк на использование фабрик
// - new beh: Локализация nsc
//
// Revision 1.6  2005/12/16 15:10:25  lulin
// - задел на правильный Drag-and-drop ссылок.
//
// Revision 1.5  2005/06/23 15:59:09  mmorozov
// new:  использование afwConsts.g_afwPathSep;
//
// Revision 1.4  2005/05/27 09:44:15  lulin
// - базовая канва вывода переехала из Эвереста в L3.
//

{$Include nscDefine.inc}

interface

uses
  Classes,

  vcmExternalInterfaces,

  l3Base,
  l3Interfaces,
  l3InternalInterfaces,
  l3Types,
  l3IID,
  l3CacheableBase,
  l3TreeInterfaces,

  vtOutlinerWithDragDrop,

  eeTreeView,
  afwInterfaces,

  nscInterfaces
  ;

type
 InscTreeState = interface
 ['{6CB477B8-BCD5-4189-98CC-CBF573CDA957}']
  function pm_getAggregate: IUnknown;
  function pm_getWrap: Boolean;

  property Aggregate: IUnknown read pm_getAggregate;
  property Wrap: Boolean read pm_getWrap;
 end;

 TnscTreeViewState = class(Tl3CacheableBase, InscTreeState)
 private
  f_Wrap: Boolean;
  f_Aggregate: IUnknown;
 protected
  function pm_getWrap: Boolean;
  function pm_getAggregate: IUnknown;
  function COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
   override;
 public
  class function Make(aAggregate: IUnknown; aWrap: Boolean): InscTreeState;
  constructor Create(aAggregate: IUnknown; aWrap: Boolean);
   reintroduce;
   overload;

  procedure Cleanup;
    override;
 end;

 _nsUnknownComponent_Parent_ = TeeTreeView;
 {$Include nsUnknownComponent.imp.pas}
 TnscTreeView = class(_nsUnknownComponent_,
                      IvcmOperationsProvider,
                      Il3CommandPublisherInfo)
 private
   f_SettingId : String;
   f_Published : Boolean;
   f_InterRowMultiplier: Integer;
   f_DisableDragAndDropSupport: Boolean;
 private
 // internal methods
   procedure SetInterRowMultiplier(aValue: Integer);
      {-}
 protected
    function IsEmpty: Boolean;
     {* - наличие элементов в дереве. }
 protected
    procedure opWrapExecute(const aParams : IvcmExecuteParamsPrim);
    procedure opWrapTest(const aParams : IvcmTestParamsPrim);
      {-}
    procedure opExpandAllExecute(const aParams : IvcmExecuteParamsPrim);
    procedure opExpandAllTest(const aParams : IvcmTestParamsPrim);
      {-}
    procedure opCollapseAllExecute(const aParams : IvcmExecuteParamsPrim);
    procedure opCollapseAllTest(const aParams : IvcmTestParamsPrim);
      {-}
    procedure opDeselectAllExecute(const aParams : IvcmExecuteParamsPrim);
    procedure opDeselectAllTest(const aParams : IvcmTestParamsPrim);
      {-}
    procedure opSelectAllExecute(const aParams : IvcmExecuteParamsPrim);
    procedure opSelectAllTest(const aParams : IvcmTestParamsPrim);
      {-}
    procedure opPaste(const aParams: IvcmExecuteParamsPrim);
    procedure opPasteTest(const aParams: IvcmTestParamsPrim);
      {-}
    procedure opCopy(const aParams: IvcmExecuteParamsPrim);
    procedure opCopyTest(const aParams: IvcmTestParamsPrim);
      {-}
  // Il3CommandPublisherInfo
    function IsCommandPublished(Cmd: Tl3OperationCode): Boolean;
      virtual;
  // IvcmOperationsProvider
    procedure ProvideOps(const aPublisher : IvcmOperationsPublisher);
      virtual;
      {* - предоставить список доступных операций. }
    function MakePath(const aSetting : String): String;
      {-}
    function  GetDragAndDropSupported: Boolean;
      override;
      {-}
    function  DoKeys2Effect(aKeys: Long): Long;
      override;
      {-}
    {$IfNDef DesignTimeLibrary}
    procedure LoadSettings;
      override;
      {-}
    procedure SaveSettings;
      override;
      {-}
    function SaveState(out theState : IUnknown;
                       aStateType   : TvcmStateType): Boolean;
      override;
      {-}
    function LoadState(const aState : IUnknown;
                       aStateType   : TvcmStateType): Boolean;
      override;
      {-}
    {$IfDef Nemesis}
      function  DataObjectClass: RvtNodeDataObject;
        override;
        {-}
    {$EndIf Nemesis}
    {$EndIf DesignTimeLibrary}
    procedure pm_setSettingId(const aId: String);
      {-}
    function CalcInterRowIndent: Integer;
      override;
      {-}
  public
  // methods
    constructor Create(anOwner: TComponent);
      override;
      {-}
  published
    property SettingId: String
      read f_SettingId
      write pm_setSettingId;
      {-}
    property InterRowMultiplier: Integer
      read f_InterRowMultiplier
      write SetInterRowMultiplier
      default 1;
      {-}
    property DisableDragAndDropSupport: Boolean
      read f_DisableDragAndDropSupport
      write f_DisableDragAndDropSupport
      default false;
      {-}
 end;

implementation

uses
  SysUtils,
  ActiveX,
  Clipbrd,

  ovcConst,

  afwConsts,

  l3String,

  eeInterfaces,

  vtLister,
  vtOutliner,

  vcmDefaultOperations

  {$IfNDef DesignTimeLibrary}
  {$IfNDef NewGen}
  {$IfDef Nemesis}
  {$If not Defined(nsTest) OR Defined(InsiderTest)}
  ,
  nsEntitiesTreeDataObject,
  DataAdapter
  {$IfEnd}
  {$EndIf Nemesis}
  {$EndIf NewGen}
  {$EndIf DesignTimeLibrary}

  ,
  nscTreeViewRes,

  OfficeLike_Tree_Controls
  ;

const
 cenTree = en_Tree;
 copWrap        = op_Wrap;
 copExpandAll   = op_ExpandAll;
 copCollapseAll = op_CollapseAll;
 cstWrap = 'stWrap';

{$Include nsUnknownComponent.imp.pas}

{ TnscTreeView }

{$IfNDef DesignTimeLibrary}
procedure TnscTreeView.LoadSettings;
begin
 if f_SettingId <> '' then
  MultiStrokeItem := Settings.LoadBoolean(PAnsiChar(MakePath(cstWrap)), True);
end;

function TnscTreeView.LoadState(const aState: IInterface;
                                aStateType: TvcmStateType): Boolean;
var
 l_Params: InscTreeState;
begin
 if (aStateType = vcm_stContent) and
    Supports(aState, InscTreeState, l_Params) then
 try
  MultiStrokeItem := l_Params.Wrap;
  Result := True;
  if l_Params.Aggregate <> nil then
   inherited LoadState(l_Params.Aggregate, aStateType);
 finally
  l_Params := nil;
 end
 else
  Result := LoadState(aState, aStateType);
end;

{$IfDef Nemesis}
function TnscTreeView.DataObjectClass: RvtNodeDataObject;
  //override;
  {-}
begin
 {$If Declared(TnsEntitiesTreeDataObject)}
 Result := TnsEntitiesTreeDataObject;
 {$else}
 Result := inherited DataObjectClass;
 {$IfEnd}
end;
{$EndIf Nemesis}

function TnscTreeView.SaveState(out theState: IInterface;
                                aStateType: TvcmStateType): Boolean;
begin
 Result := inherited SaveState(theState, aStateType);
 if aStateType = vcm_stContent then
 begin
  if Result then
   theState := TnscTreeViewState.Make(theState, MultiStrokeItem)
  else
   theState := TnscTreeViewState.Make(nil, MultiStrokeItem);
  Result := True;
 end;
end;

procedure TnscTreeView.SaveSettings;
begin
 if f_SettingId <> '' then
  Settings.SaveBoolean(PAnsiChar(MakePath(cstWrap)), MultiStrokeItem);
end;
{$EndIf DesignTimeLibrary}

function TnscTreeView.MakePath(const aSetting: String): String;
begin
 Result := f_SettingId + g_afwPathSep + aSetting;
end;

procedure TnscTreeView.pm_setSettingId(const aId: String);
begin
 if f_SettingId <> aId then
 begin
  f_SettingId := aId;
  {$IfNDef DesignTimeLibrary}
  CheckLoadSettings;
  {$EndIf DesignTimeLibrary}
 end;
end;

procedure TnscTreeView.ProvideOps(
  const aPublisher: IvcmOperationsPublisher);
begin
 f_Published := true;
 with aPublisher do
 begin
  PublishOp(vcm_deEdit,
            vcm_doSelectAll,
            opSelectAllExecute,
            opSelectAllTest);
  PublishOp(vcm_deEdit,
            vcm_doDeselect,
            opDeselectAllExecute,
            opDeselectAllTest);
  PublishOp(vcm_deEdit,
            vcm_doCopy,
            opCopy,
            opCopyTest);
  PublishOp(vcm_deEdit,
            vcm_doPaste,
            opPaste,
            opPasteTest);
  PublishOp(cenTree,
            copExpandAll,
            opExpandAllExecute,
            opExpandAllTest);
  PublishOp(cenTree,
            copCollapseAll,
            opCollapseAllExecute,
            opCollapseAllTest);
  PublishOp(cenTree,
            copWrap,
            opWrapExecute,
            opWrapTest);
 end;//with aPublisher do
end;//ProvideOps

function TnscTreeView.IsEmpty: Boolean;
  {* - наличие элементов в дереве. }
begin
 Result := (TreeStruct.RootNode = nil) or not TreeStruct.RootNode.HasChild;
end;

procedure TnscTreeView.opWrapExecute(const aParams : IvcmExecuteParamsPrim);
begin
 MultiStrokeItem := not MultiStrokeItem;
end;

procedure TnscTreeView.opWrapTest(const aParams : IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := not IsEmpty;
 aParams.Op.Flag[vcm_ofChecked] := MultiStrokeItem;
 {$If defined(Nemesis)}
 aParams.Op.Hint := nscMultiStrokeMap[MultiStrokeItem].AsCStr;
 {$IfEnd}
end;

{ TnscTreeViewState }

procedure TnscTreeViewState.Cleanup;
begin
 f_Aggregate := nil;
 f_Wrap := True;
 inherited;
end;

function TnscTreeViewState.COMQueryInterface(const IID: Tl3GUID;
  out Obj): Tl3HResult;
begin
 Result := inherited COMQueryInterface(IID, Obj);
 if Result.Fail then
  if Supports(f_Aggregate, IID.IID, Obj) then
   Result.SetOk
  else
   Result.SetNoInterface;
end;

constructor TnscTreeViewState.Create(aAggregate: IInterface;
                                     aWrap: Boolean);
begin
 inherited Create;
 f_Aggregate := aAggregate;
 f_Wrap := aWrap;
end;

class function TnscTreeViewState.Make(aAggregate: IInterface;
                                      aWrap: Boolean): InscTreeState;
var
 l_State: TnscTreeViewState;
begin
 l_State := Create(aAggregate, aWrap);
 try
  Supports(l_State, InscTreeState, Result);
 finally
  l3Free(l_State);
 end;
end;

function TnscTreeViewState.pm_getAggregate: IUnknown;
begin
 Result := f_Aggregate;
end;

function TnscTreeViewState.pm_getWrap: Boolean;
begin
 Result := f_Wrap;
end;

procedure TnscTreeView.opCollapseAllExecute(const aParams: IvcmExecuteParamsPrim);
begin
 {$IfNDef DesignTimeLibrary}
 Changing;
 try
  TreeView.CollapseAll;
 finally
  Changed;
 end;//try..finally
 {$EndIf DesignTimeLibrary}
end;

procedure TnscTreeView.opExpandAllExecute(const aParams: IvcmExecuteParamsPrim);
begin
 {$IfNDef DesignTimeLibrary}
 Changing;
 try
  TreeView.ExpandAll;
 finally
  Changed;
 end;//try..finally
 {$EndIf  DesignTimeLibrary}
end;

procedure TnscTreeView.opDeselectAllExecute(const aParams : IvcmExecuteParamsPrim);
begin
 {$IfNDef DesignTimeLibrary}
 vlbDeselectAllItems;
 {$EndIf  DesignTimeLibrary}
end;

procedure TnscTreeView.opDeselectAllTest(const aParams : IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := not IsEmpty and MultiSelect;
end;

procedure TnscTreeView.opSelectAllExecute(const aParams : IvcmExecuteParamsPrim);
begin
 {$IfNDef DesignTimeLibrary}
 vlbSelectAllItems;
 {$EndIf  DesignTimeLibrary}
end;

procedure TnscTreeView.opSelectAllTest(const aParams : IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := not IsEmpty and MultiSelect;
end;

function TnscTreeView.IsCommandPublished(Cmd: Tl3OperationCode): Boolean;
begin
 Result := f_Published and (Cmd in [ccTreeAllExpand,
                                    ccAllSelect,
                                    ccAllDeselect]);
end;

procedure TnscTreeView.opCollapseAllTest(const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := not IsEmpty;
end;

procedure TnscTreeView.opExpandAllTest(const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := not IsEmpty;
end;

function TnscTreeView.DoKeys2Effect(aKeys: Long): Long;
begin
 Result := DROPEFFECT_MOVE;
end;

procedure TnscTreeView.opCopy(const aParams: IvcmExecuteParamsPrim);
var
 l_Data: IDataObject;
begin
 l_Data := TreeStruct.MakeDataObject(GetCurrentNode, nil);
 if l_Data <> nil then
 try
  l3System.SetClipboardData(l_Data);
 finally
  l_Data := nil;
 end;//try..finally
end;//opCopy

procedure TnscTreeView.opCopyTest(const aParams: IvcmTestParamsPrim);
begin
 if aParams.Op.Flag[vcm_ofEnabled] then
  aParams.Op.Flag[vcm_ofEnabled] := TreeStruct.SelectCount > 0;
end;//opCopyTest

procedure TnscTreeView.opPaste(const aParams: IvcmExecuteParamsPrim);
begin
 Paste;
end;

procedure TnscTreeView.opPasteTest(const aParams: IvcmTestParamsPrim);

 function lp_HasAcceptableFormat: Boolean;
 var
  l_Data: IDataObject;
 begin
  if OleGetClipboard(l_Data) = S_OK then
  try
   Result := (Length(GetAcceptableFormatsFor(l_Data)) > 0) and CanAcceptData(l_Data);
  finally
   l_Data := nil;
  end//try..finally
  else
   Result := False;
 end;//lp_HasAcceptableFormat

begin
 if aParams.Op.Flag[vcm_ofEnabled] then
  aParams.Op.Flag[vcm_ofEnabled] := lp_HasAcceptableFormat;
end;//opPasteTest

constructor TnscTreeView.Create(anOwner: TComponent);
  // override;
  {-}
begin
 inherited;
 f_InterRowMultiplier := 1;

 {$IfNDef DesignTimeLibrary}
 {$IfDef Nemesis}
 // http://mdp.garant.ru/pages/viewpage.action?pageId=303858572
 // на всякий случай, т.к. ограничение только для оболочки
 {$If not defined(Admin) AND not defined(Monitorings)}
 {$If Declared(DefDataAdapter)}
  if (DefDataAdapter <> nil) then
   DisableDragAndDropSupport := DefDataAdapter.IsTrialMode;
 {$IfEnd}  
 {$IfEnd} //not Admin AND not Monitorings
 {$EndIf Nemesis}
 {$EndIf DesignTimeLibrary}
end;

function TnscTreeView.CalcInterRowIndent: Integer;
begin
 Result := f_RowHeight * InterRowMultiplier div 3;
end;

procedure TnscTreeView.SetInterRowMultiplier(aValue: Integer);
begin
 if aValue < 1 then
  aValue := 1;
 if f_InterRowMultiplier <> aValue then
 begin
  f_InterRowMultiplier := aValue;
  UpdateInterRowIndent;
 end;
end;

function TnscTreeView.GetDragAndDropSupported: Boolean;
begin
  Result := inherited GetDragAndDropSupported;
  if DisableDragAndDropSupport then
    Result := false;
end;


end.
