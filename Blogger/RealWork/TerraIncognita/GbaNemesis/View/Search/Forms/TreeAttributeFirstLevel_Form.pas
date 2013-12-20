unit TreeAttributeFirstLevel_Form;

{$Include nsDefine.inc}

interface

uses
  Classes,
  Controls,
  Dialogs,
  Forms,
  Graphics,
  ImgList,
  Messages,
  SysUtils,
  Windows,

  eeInterfaces,
  eeTreeView,
  eeTreeViewExport,

  afwControl,
  l3Tree,
  l3TreeInterfaces,
  afwInputControl,

  OvcBase,

  vtLister,
  vtOutliner,
  vtOutlinerWithDragDrop,
  vtOutlinerWithQuickSearch,
  nscTreeView,

  vcmBase,
  vcmBaseEntities,
  vcmComponent,
  vcmEntities,
  vcmEntityForm,
  vcmInterfaces,

  afwControlPrim, afwBaseControl,

  bsInterfaces,

  SearchInterfaces,
  l3InterfacedComponent,
  vcmExternalInterfaces,

  PrimTreeAttributeFirstLevel_Form 
  ;

type
  TefTreeAttributeFirstLevel = class(TvcmEntityFormRef)
    Entities : TvcmEntities;
    FirstLevelContent: TnscTreeView;

    procedure vcmEntityFormInit;

    function FirstLevelContentGetItemImage(Sender: TObject; Index: Integer;
                                           var aImages: TCustomImageList): Integer;
    procedure FirstLevelContentCurrentChanged(Sender: TObject; NewCurrent, OldCurrent: Integer);
    procedure FirstLevelContentNewCharPressed(aChar: AnsiChar);
    procedure vcmEntityFormChangedDataSource(aSender: TObject; const aOld,
      aNew: IvcmFormDataSource; const aFromHistory : Boolean);
    procedure enTreeopExpandAllTest(const aParams: IvcmTestParamsPrim);
    procedure enTreeopCollapseAllTest(const aParams: IvcmTestParamsPrim);
  private
    procedure CurrentChangedNotification(const aNode: Il3SimpleNode); override;
      {* - обработчик событи€ смены текущего в дереве. }
  private
  // methods
    procedure UpdateCurrent(const aNode: Il3SimpleNode); override;
      {-}
  end;

implementation

{$R *.DFM}

uses
  l3InterfacesMisc,
  l3Interfaces,
  l3String,
  l3Base,

  vcmUserTypesCollectionItem,

  nsTypes,
  nsTreeUtils,
  nsUtils,

  DynamicTreeUnit,

  SearchRes,
  StdRes,
  nsAttributeOneLevelTreeStruct,

  TreeInterfaces,
  SearchLite_Strange_Controls
  ;

function TefTreeAttributeFirstLevel.FirstLevelContentGetItemImage(Sender: TObject;
                                                                  Index: Integer;
                                                                  var aImages: TCustomImageList): Integer;
{var
 l_l3Node    : Il3SimpleNode;
 l_Node      : INodeBase;}
begin
 Result := siilFolderStart;
// !! ƒл€ всех элементов рисуем иконку с папочкой независимо от наличи€ детей
// т.к. ноды в CreateOneLevelView всегда возвращают HasChild = 0
{ l_l3Node := FirstLevelContent.GetNode(Index);
 try
  if Supports(l_l3Node, INodeBase, l_Node) then
  begin
   if l_Node.HasChildren then
    Result := siilFolderStart
   else
    Result := siilElementStart;

   l_Node := nil;
  end;
 finally
  l_l3Node := nil;
 end;}
end;

procedure TefTreeAttributeFirstLevel.vcmEntityFormInit;
begin
 FirstLevelContent.Images := nsSearchRes.SearchItemsImageList;
 //
end;

procedure TefTreeAttributeFirstLevel.UpdateCurrent(const aNode: Il3SimpleNode);
begin
 inc(f_InternalMove);
 try
  if (FirstLevelContent.GetCurrentNode <> nil) and
     (FirstLevelContent.GetCurrentNode.IsSame(aNode)) then
   FirstLevelContent.vlbMakeItemVisible(FirstLevelContent.Current)
  else
   FirstLevelContent.GotoOnNode(aNode);
 finally
  dec(f_InternalMove);
 end;
end;//UpdateCurrent

procedure TefTreeAttributeFirstLevel.FirstLevelContentCurrentChanged(Sender: TObject;
                                                                     NewCurrent, OldCurrent: Integer);
begin
 if (NewCurrent >= 0) and (f_InternalMove = 0) then
 begin
  if (dsSimpleTree <> nil) then
   dsSimpleTree.CurrentChanged(FirstLevelContent.GetNode(NewCurrent));
  // ѕринудительно перирисовываем дерево, дл€ случа€ когда пользователь бежит
  // по дереву удержива€ стрелку вниз\вверх
  FirstLevelContent.Update;
 end//if (NewCurrent >= 0) and (f_InternalMove = 0) then
end;//FirstLevelContentCurrentChanged

procedure TefTreeAttributeFirstLevel.FirstLevelContentNewCharPressed(
  aChar: AnsiChar);
begin
 op_AttributeTree_ExternalCharPressed.Call(Aggregate, nsCStr(aChar));
end;

procedure TefTreeAttributeFirstLevel.vcmEntityFormChangedDataSource(
  aSender: TObject; const aOld, aNew: IvcmFormDataSource; const aFromHistory : Boolean);
begin
 if (dsTreeAttributeFirstLevel <> nil) then
 begin
  CCaption := dsTreeAttributeFirstLevel.DisplayName;
  // Ѕорьба с фильтром vs. истори€ vs. _datasource
  if not aFromHistory then
   FirstLevelContent.TreeStruct := dsTreeAttributeFirstLevel.SimpleTree;
 end;//(dsTreeAttributeFirstLevel <> nil)
end;

procedure TefTreeAttributeFirstLevel.enTreeopExpandAllTest(
  const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := False;
end;

procedure TefTreeAttributeFirstLevel.enTreeopCollapseAllTest(
  const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := False;
end;

procedure TefTreeAttributeFirstLevel.
 CurrentChangedNotification(const aNode: Il3SimpleNode);
begin
 UpdateCurrent(aNode);
end;

end.
