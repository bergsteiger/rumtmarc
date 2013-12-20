unit WorkJournal_Form;

// $Id: WorkJournal_Form.pas,v 1.19 2013/04/25 14:17:00 lulin Exp $

// $Log: WorkJournal_Form.pas,v $
// Revision 1.19  2013/04/25 14:17:00  lulin
// - портируем.
//
// Revision 1.18  2011/11/16 17:36:05  lulin
// {RequestLink:232098711}
//
// Revision 1.17  2010/10/27 09:12:04  lulin
// {RequestLink:237995961}.
//
// Revision 1.16  2010/07/15 17:27:56  lulin
// {RequestLink:197496539}.
//
// Revision 1.15  2010/04/27 13:40:13  lulin
// {RequestLink:159352361}.
//
// Revision 1.14  2009/11/18 13:06:40  lulin
// - используем базовые параметры операции.
//
// Revision 1.13  2009/11/12 14:33:12  lulin
// - убираем возможность менять список параметров.
//
// Revision 1.12  2009/10/16 13:27:10  oman
// - new: Переносим на модель {RequestLink:164596503}
//
// Revision 1.11  2009/09/30 16:19:04  lulin
// {RequestLink:159360578}. №44.
//
// Revision 1.10  2009/09/30 15:23:43  lulin
// - убираем ненужное приведение ко вполне понятным интерфейсам.
//
// Revision 1.9  2009/09/09 18:55:33  lulin
// - переносим на модель код проектов.
//
// Revision 1.8  2009/09/02 11:49:28  lulin
// {RequestLink:159360578}. №20.
//
// Revision 1.7  2009/08/25 06:29:56  oman
// - new: Забыл получить дерево - {RequestLink:159355458}
//
// Revision 1.6  2009/08/17 06:21:24  oman
// - new: _OnTest забыл - {RequestLink:159355458}
//
// Revision 1.5  2009/08/12 13:45:53  oman
// - new: Видимость операций - {RequestLink:159355458}
//
// Revision 1.4  2009/08/12 10:48:23  oman
// - new: Первое приближение - {RequestLink:159355458}
//
// Revision 1.3  2009/08/11 13:43:21  oman
// - new: Учимся открывать - {RequestLink:159355458}
//
// Revision 1.2  2009/08/11 13:03:28  oman
// - new: Заготовка форм - {RequestLink:159355458}
//
// Revision 1.1  2009/08/11 08:45:41  oman
// - new: Заготовка форм - {RequestLink:159355458}
//
//

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

  l3InternalInterfaces,
  afwControl,
  afwInputControl,
  l3Tree_TLB,
  l3TreeInterfaces,
  l3Tree,
  l3Interfaces,

  OvcBase,

  vtLister,
  vtOutliner,
  vtOutlinerWithQuickSearch,
  vtOutlinerWithDragDrop,

  eeTreeViewExport,
  eeTreeView,
  eeInterfaces,

  vcmInterfaces,
  vcmBase,
  vcmEntityForm,
  vcmEntities,
  vcmBaseEntities,
  vcmComponent,

  nscTreeView,

  nsTypes,
  nsFolderNodes, afwControlPrim, afwBaseControl,

  l3InterfacedComponent,

  L10nInterfaces,
  vcmExternalInterfaces,

  PrimWorkJournalOptions_Form
  ;

type
  TWorkJournalForm = class(TvcmEntityFormRef)
    Entities : TvcmEntities;
    JournalTree: TnscTreeView;

    function  JournalTreeGetItemImage(Sender: TObject; Index: Integer;
                                      var aImages: TCustomImageList): Integer;
    procedure JournalTreeActionElement(Sender: TObject; Index: Integer);
    procedure JournalTreeMakeTreeSource(out theTree: Il3SimpleTree);
  end;

implementation

{$R *.DFM}

uses
  afwFacade,

  nsConst,
  nsOpenUtils,
  nsQueryUtils,

  BaseTypesUnit,
  DynamicTreeUnit,
  SearchUnit,
  UserJournalUnit,

  FoldersRes,
  StdRes
  ;

function TWorkJournalForm.JournalTreeGetItemImage(Sender: TObject; Index: Integer;
                                                var aImages: TCustomImageList) : Integer;
var
 l_eeNode: IeeNode;
 l_AdapterNode: INodeBase;
begin
 if Index >= 0 then
 begin
  l_eeNode := JournalTree.TreeView.GetNode(Index);
  try
   if Supports(l_eeNode, INodeBase, l_AdapterNode) then
   begin
    case TJournalObjectType(l_AdapterNode.GetType) of
     JOT_BOOKMARK:
       Result := BookmarkIcon;
     JOT_QUERY:
       Result := QueryIcon;
     JOT_FOLDER:
       Result := FolderIcon;
     else
      Result := 0;
    end;//case TJournalObjectType(l_AdapterNode.GetType) of
   end//if Supports(l_eeNode, INodeBase, l_AdapterNode) then
   else
    Result := FolderIcon;
  finally
   l_eeNode := nil;
  end;{try..finally}
 end//if Index >= 0 then
 else
  Result := 0;
end;//FoldersTreeGetItemImage

procedure TWorkJournalForm.JournalTreeActionElement(Sender: TObject;Index: Integer);

var
 //l_Params          : IvcmExecuteParams;
 l_ItemType : TJournalObjectType;
 l_AdapterNode     : INodeBase;
 l_eeNode          : Il3SimpleNode;
 l_NewWindow       : Boolean;
begin
 if (Container.AsForm.ZoneType <> vcm_ztManualModal) then
 begin
  l_eeNode := JournalTree.GetNode(Index);
  try
   if Supports(l_eeNode, INodeBase, l_AdapterNode) then
   try
    l_ItemType := TJournalObjectType(l_AdapterNode.GetType);
    l_NewWindow := (l_ItemType <> JOT_FOLDER) and
                   afw.Settings.LoadBoolean(pi_OpenInNewWindow, dv_OpenInNewWindow);
    if l_ItemType <> JOT_FOLDER then
     OpenJournalElement(self.as_IvcmEntityForm, l_eeNode, l_NewWindow)
    else
     if l_eeNode.HasChild then
      JournalTree.TreeStruct.ChangeExpand(l_eeNode, sbInvert);
   finally
    l_AdapterNode := nil;
   end;
  finally
   l_eeNode := nil;
  end;//try..finally
 end//(Container.AsForm.ZoneType <> vcm_ztManualModal
end;

procedure TWorkJournalForm.JournalTreeMakeTreeSource(out theTree: Il3SimpleTree);
begin
 theTree := TdmStdRes.MakeWorkJournal.MakeTree;
end;

end.
