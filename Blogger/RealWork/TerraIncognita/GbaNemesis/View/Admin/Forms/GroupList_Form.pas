unit GroupList_Form;

// $Id: GroupList_Form.pas,v 1.3 2013/01/22 15:59:35 kostitsin Exp $

// $Log: GroupList_Form.pas,v $
// Revision 1.3  2013/01/22 15:59:35  kostitsin
// [$424399029]
//
// Revision 1.2  2010/09/10 11:29:34  lulin
// {RequestLink:197496539}.
//
// Revision 1.12  2010/08/31 12:46:15  lulin
// {RequestLink:224134305}.
//
// Revision 1.11  2009/12/09 13:12:02  lulin
// {RequestLink:124453871}.
//
// Revision 1.10  2009/11/27 12:58:59  oman
// - new: Подчищаем {RequestLink:121157219}
//
// Revision 1.9  2009/11/12 14:32:40  lulin
// - убираем возможность менять список параметров.
//
// Revision 1.8  2009/09/18 12:21:41  lulin
// - невоплощённое убиваем, ошмётки переносим на модель.
//
// Revision 1.7  2009/09/10 12:19:15  lulin
// - генерируем файл проекта.
//
// Revision 1.6  2009/04/23 11:09:15  oman
// - new: На старте встаем на группу "Все" - [$127762671]
//
// Revision 1.5  2009/04/22 09:23:50  oman
// - new: Вводим понятие текущей группы - [$127762671]
//
// Revision 1.4  2009/04/20 15:06:01  oman
// - new: Форма групп в первом приближении - [$127762671]
//
// Revision 1.3  2009/04/20 13:12:24  oman
// - new: Заготовки операций - [$127762671]
//
// Revision 1.2  2009/04/20 12:59:03  oman
// - new: Заготовки операций - [$127762671]
//
// Revision 1.1  2009/04/20 09:48:11  oman
// - new: Заготовки форм для групп - [$127762671]
//
//

{$I nsDefine.inc}

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  ImgList,
  ComCtrls,

  afwControl,
  l3InterfacedComponent,
  l3Interfaces,
  l3Tree,
  l3Tree_TLB,
  l3TreeInterfaces,

  afwInputControl,

  eeInterfaces,
  eeTreeView,
  eeTreeViewExport,

  OvcBase,

  vcmBase,
  vcmBaseEntities,
  vcmComponent,
  vcmEntities,
  vcmEntityForm,
  vcmInterfaces,
  vcmExternalInterfaces,

  vtLister,
  vtOutliner,
  vtOutlinerWithDragDrop,
  vtOutlinerWithQuickSearch,
  vtPanel,

  bsTypes,

  nscTreeView,

  afwControlPrim,
  afwBaseControl,
  afwTextControlPrim,
  afwTextControl,

  bsInterfaces,

  PrimGroupsList_Form,
  PrimGroupsListOptions_Form
  ;

type
 TefGroupList = class(TvcmEntityFormRef)
  {* Форма для отображения дерева навигатора.}
    Entities      : TvcmEntities;
    BackgroundPanel: TvtPanel;
    GroupsTree: TeeTreeView;
    procedure SwitcheropSetActiveExecute(const aParams: IvcmExecuteParams);
    procedure vcmEntityFormRefChangedDataSource(aSender: TObject;
      const aOld, aNew: IvcmFormDataSource; const aFromHistory: Boolean);
    procedure vcmEntityFormRefInit;
    procedure GroupsTreeCountChanged(Sender: TObject; NewCount: Integer);
    procedure GroupsTreeCurrentChanged(Sender: TObject; aNewCurrent,
      aOldCurrent: Integer);
    procedure GroupsTreeFormatStatusInfo(aSender: TObject;
      var Info: Il3CString; const aCurrent, aCount, aSelected: Integer);
    function GroupsTreeGetItemImage(Sender: TObject; Index: Integer;
      var aImages: TCustomImageList): Integer;
    procedure GroupsTreeSelectCountChanged(aSender: TObject; anOldCount,
      aNewCount: Integer);
    procedure GroupsTreeTreeChanged(aSender: TObject; const anOldTree,
      aNewTree: Il3SimpleTree);
 end;

implementation

{$R *.DFM}

uses
 Math,

 l3Nodes,
 l3InterfacesMisc,
 l3String,
 l3Types,

 lgTypes,

 vcmUserTypesCollectionItem,
 vcmForm,

 bsConst,

 DataAdapter,

 nsUtils,
 nsOpenUtils,
 nsTypes,
 nsNodes,
 
 nsSettings,
 nsTreeUtils,
 nsTreeStruct,
 AdminInterfaces,
 nsUserNodes,

 BaseTypesUnit,
 DynamicTreeUnit,
 SecurityUnit,

 StdRes,
 AdminRes
 ;

const
 cImageIndexMap: array [TbsGroupNodeType] of Integer = (
  ciiGroup, // gntUnknown,
  ciiSystemGroup, // gntSystem,
  ciiGroup // gntUsual
 );


procedure TefGroupList.SwitcheropSetActiveExecute(const aParams: IvcmExecuteParams);
begin
 SetActiveInParent;
end;

procedure TefGroupList.vcmEntityFormRefChangedDataSource(aSender: TObject;
  const aOld, aNew: IvcmFormDataSource; const aFromHistory: Boolean);
var
 l_Node: Il3SimpleNode;
begin
 if Assigned(ViewArea) then
 begin
  with GroupsTree do
  begin
   Images := ViewArea.ImageList.Hack;
   if not aFromHistory then
   begin
    TreeStruct := ViewArea.SimpleTree;
    l_Node := GetUserByID(GROUP_ALL_ID, TreeStruct);
    if Assigned(l_Node) then
     GotoOnNode(l_Node);
   end;
   UpdateStatusInfo;
   ViewArea.CurrentChanged(GetCurrentNode)
  end;
 end;
end;

procedure TefGroupList.vcmEntityFormRefInit;
begin
 UpdateStatusInfo;
end;

procedure TefGroupList.GroupsTreeCountChanged(Sender: TObject;
  NewCount: Integer);
begin
 UpdateStatusInfo;
end;

procedure TefGroupList.GroupsTreeCurrentChanged(Sender: TObject;
  aNewCurrent, aOldCurrent: Integer);
begin
 UpdateCurrent;
end;

procedure TefGroupList.GroupsTreeFormatStatusInfo(aSender: TObject;
  var Info: Il3CString; const aCurrent, aCount, aSelected: Integer);
begin
 if GroupsTree.TreeStruct.RootNode.HasChild then
  Info := vcmFmt(vcmCStr(str_GroupsListStatus),[GroupsTree.TreeStruct.RootNode.ThisChildrenCount])
 else
  Info := nil;
end;

function TefGroupList.GroupsTreeGetItemImage(Sender: TObject;
  Index: Integer; var aImages: TCustomImageList): Integer;
begin
 if Assigned(ViewArea) then
  Result := cImageIndexMap[ViewArea.GroupsListNodeType(GroupsTree.GetNode(Index))]
 else
  Result := ciiUser_NA;
end;

procedure TefGroupList.GroupsTreeSelectCountChanged(aSender: TObject;
  anOldCount, aNewCount: Integer);
begin
 UpdateStatusInfo;
end;

procedure TefGroupList.GroupsTreeTreeChanged(aSender: TObject;
  const anOldTree, aNewTree: Il3SimpleTree);
begin
 UpdateStatusInfo;
end;

end.