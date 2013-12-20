unit eeTreeView;
{* Компонент для импорта отображения дерева. }

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: eeTreeView -    }
{ Начат: 06.02.2003 19:05 }
{ $Id: eeTreeView.pas,v 1.3 2013/04/24 09:35:37 lulin Exp $ }

// $Log: eeTreeView.pas,v $
// Revision 1.3  2013/04/24 09:35:37  lulin
// - портируем.
//
// Revision 1.2  2013/04/02 19:04:01  kostitsin
// [$120723452] - vtLister
//
// Revision 1.1  2010/04/21 16:52:40  lulin
// {RequestLink:144575972}.
// - переходим к абсолютным путям для включаемых файлов.
//
// Revision 1.3  2009/12/24 09:32:26  oman
// - new: {RequestLink:175538655}
//
// Revision 1.2  2009/11/06 09:32:14  oman
// - fix: {RequestLink:168957117}
//
// Revision 1.1  2009/09/14 11:28:08  lulin
// - выводим пути и для незавершённых модулей.
//
// Revision 1.57  2008/09/04 12:12:33  lulin
// - удалено ненужное событие.
//
// Revision 1.56  2008/04/07 06:18:39  lulin
// - cleanup.
//
// Revision 1.55  2007/12/04 12:47:34  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.52.8.8  2007/05/15 14:17:02  oman
// - new: Обработчик CHeckFOcusedInPaint - по аналогии с редактором (cq25145)
//
// Revision 1.52.8.7  2007/02/16 15:41:41  lulin
// - cleanup.
//
// Revision 1.52.8.6  2007/02/13 11:44:29  mmorozov
// - new: заголовок дерева (TvtHeader) использует таблицу стилей (CQ: OIT5-24283);
//
// Revision 1.52.8.5  2006/12/14 14:13:31  lulin
// - cleanup.
//
// Revision 1.52.8.4  2006/09/07 15:02:06  oman
// - new beh: Обработчик OnFormatStatusInfo (cq22473)
//
// Revision 1.52.8.3  2006/07/27 13:35:40  mmorozov
// - new: событие первой отрисовки OnAfterFirstPaint;
//
// Revision 1.52.8.2  2005/12/14 11:21:48  lulin
// - cleanup.
//
// Revision 1.52.8.1  2005/12/14 11:08:04  lulin
// - cleanup.
//
// Revision 1.52  2005/03/21 08:04:22  mmorozov
// new: публикация TeeTreeView.StyleId;
//
// Revision 1.51  2005/02/21 16:54:12  lulin
// - удалено ненужное свойство.
//
// Revision 1.50  2005/01/13 14:20:58  mmorozov
// new: property ClearTreeStructOnSaveState;
//
// Revision 1.49  2004/12/25 09:11:29  mmorozov
// new: published property OnGetItemTextHint;
//
// Revision 1.48  2004/12/23 11:13:37  lulin
// - rename prop: TvtCustomOutliner.TreeSource -> TreeStruct.
//
// Revision 1.47  2004/12/23 10:05:05  lulin
// - компоненты теперь могут сами сообщать значения для строки статуса - в частности это сделано в списке.
//
// Revision 1.46  2004/12/06 12:59:18  demon
// - new behavior: опубликовано свойство Header
//
// Revision 1.45  2004/12/02 14:25:25  mmorozov
// new: опубликовано property OnGetItemCursor;
//
// Revision 1.44  2004/11/30 13:32:06  mmorozov
// new: published property TeeTreeView.OnGetItemStyle;
//
// Revision 1.43  2004/09/03 14:37:02  demon
// - new behevior: события OnBeforeWake OnAfterWake
//
// Revision 1.42  2004/08/18 08:49:20  demon
// - new: войство BorderStyle стало доступно для редактирования в Disign Time
//
// Revision 1.41  2004/07/16 13:07:08  demon
// - new behavior: при обработке WM_Char игнорируем NumPad_plus
//
// Revision 1.40  2004/07/15 13:21:05  demon
// - new behavior: у дерева TeeTreeView появилось новое событие _OnNewCharPressed для внешней обработки WMChar.
//
// Revision 1.39  2004/06/22 13:23:13  mmorozov
// bugfix: TeeNode.Make;
//
// Revision 1.38  2004/06/22 12:56:27  mmorozov
// - откат изменений;
//
// Revision 1.36  2004/06/01 08:22:16  demon
// - new behavior: изменена иерархия наследования деревьев
//
// Revision 1.35  2004/05/26 16:59:06  law
// - new behavior: TvtCustomOutliner теперь знает только про интерфейсы Il3SimpleTree и Il3Tree, а не про объект _Tl3Tree.
//
// Revision 1.34  2004/05/26 14:21:59  law
// - change: скестил "ежа с ужом" (старые деревья с новыми).
//
// Revision 1.33  2004/04/27 07:25:31  law
// - remove prop: IeeNode.Expanded.
// - cleanup: из TeeNode убрано знание про _Tl3Tree.
//
// Revision 1.32  2004/03/26 12:47:01  nikitin75
// rename *DnD* -> *DragAndDrop*
//
// Revision 1.31  2004/03/10 11:42:12  demon
// - new property: OnSelectCountChanged
//
// Revision 1.30  2004/03/10 10:56:07  law
// - new prop: TvtCustomOutliner.OnTreeChanged.
//
// Revision 1.29  2004/03/03 18:03:56  law
// - rename unit: l3Tree2 -> l3Tree.
//
// Revision 1.28  2004/02/13 13:48:43  nikitin75
// + OnCanBeginDrag;
//
// Revision 1.27  2004/02/13 11:12:31  nikitin75
// + поддержка DND; первая рабочая реализация;
//
// Revision 1.26  2004/02/13 07:55:05  nikitin75
// + слил с веткой B_AFTER_DND; внешне (пока) ничего не должно измениться: DnD пока не активизируется;
//
// Revision 1.18.2.4  2003/09/23 10:44:53  nikitin75
// + update from HEAD;
//
// Revision 1.18.2.3  2003/09/22 11:51:07  nikitin75
//  + опубликовано свойство OnWriteNodeAsFile;
//
// Revision 1.18.2.2  2003/09/05 14:54:36  nikitin75
// + property AfterDrag;
//
// Revision 1.18.2.1  2003/09/05 08:46:45  nikitin75
// + new property OnCanAcceptData;
// + new property OnDoDrop;
//
// Revision 1.20  2003/09/18 18:29:46  law
// - bug fix: при отдании TeeTreeView как IeeTreeView отцепляем его "теневой" объект (AV - с открытием в извлечениях).
//
// Revision 1.19  2003/09/10 14:04:54  law
// - new prop: TeeTreeView.DblClickOnFolders.
//
// Revision 1.25  2004/02/10 13:40:59  nikitin75
// опубликовано property _OnGetItemIconHint;
//
// Revision 1.24  2004/01/21 08:41:37  mmorozov
// new: published properties TeeTreeView.ViewOptions, TeeTreeView.OnGetItemFont;
//
// Revision 1.23  2003/12/24 16:41:44  demon
// - new behavior: CallCureentChanged теперь имеет два параметра
//
// Revision 1.22  2003/12/23 10:27:24  nikitin75
// + property ActionElementMode = ee_amDoubleClick | ee_amSingleClick | ee_amSecondSingleClick;
//
// Revision 1.21  2003/10/29 13:54:55  law
// - new prop: OnValidateCurrent.
//
// Revision 1.20  2003/09/18 18:29:46  law
// - bug fix: при отдании TeeTreeView как IeeTreeView отцепляем его "теневой" объект (AV - с открытием в извлечениях).
//
// Revision 1.19  2003/09/10 14:04:54  law
// - new prop: TeeTreeView.DblClickOnFolders.
//
// Revision 1.18  2003/09/03 13:57:40  nikitin75
// add: в цепочку наследования добавлен TeeTreeViewDragDrop;
//
// Revision 1.17  2003/07/29 11:56:34  law
// - new events: TeeCustomTreeView.BeforeExpand, OnExpand, OnCollapse.
//
// Revision 1.16  2003/07/28 12:54:58  law
// - new event: TeeTreeView.OnMakeTreeSource.
//
// Revision 1.15  2003/07/23 13:15:55  law
// - new prop: TeeTreeView.OnRMouseDown, OnLMouseDown.
//
// Revision 1.14  2003/07/22 15:45:36  law
// - rename prop (bug fix): TeeTreeView.OnOnGetItemPickImage -> TeeTreeView.OnGetItemPickImage.
//
// Revision 1.13  2003/07/22 15:37:49  law
// - new prop: TeeTreeView.OnOnGetItemPickImage.
//
// Revision 1.12  2003/07/22 14:51:54  law
// - new prop: TeeTreeView.ShowRoot.
//
// Revision 1.11  2003/07/16 16:22:15  law
// - new prop: TeeTreeView.PickedList.
//
// Revision 1.10  2003/07/15 15:55:38  law
// - new prop: TeeTreeView.OnSelectChange, OnSelectChange.
//
// Revision 1.9  2003/07/01 17:19:21  law
// - new prop: TeeTreeView.OnRootChanged.
//
// Revision 1.8  2003/06/17 12:15:50  law
// - new prop: опубликовано свойство TeeTreeView.MultiSelect.
//
// Revision 1.7  2003/06/02 12:49:41  law
// - bug fix: не публиковалось свойство TeeTreeView.PopupMenu.
//
// Revision 1.6  2003/05/30 11:47:38  law
// - bug fix: когда ен определена директива eeUseDLL все равно тянулась ee.dll.
//
// Revision 1.5  2003/05/28 16:15:21  law
// - change: отрезал ee.dll.
//
// Revision 1.4  2003/02/28 16:31:43  law
// - обновлен help.
//
// Revision 1.3  2003/02/07 16:08:49  law
// - change: расширен интерфейс IeeNode.
// - change: добавлены события OnActionElement, OnCurrentChanged.
//
// Revision 1.2  2003/02/07 13:14:26  law
// - new behavior: опубликована возможность управления иконками элементов дерева.
//
// Revision 1.1  2003/02/06 16:20:23  law
// - new units: eeTreeView, eeControlImportTemplate.
//

{$I eeDefine.inc }

interface

uses
  Classes,

  Controls,
  Messages,
  ImgList,

  l3TreeInterfaces,
  l3Tree_TLB,
  l3Tree,

  eeInterfaces,
  eeTreeViewExport
  ;

type
  TeeGetItemImage = function(aSender     : TObject;
                             anIndex     : Integer;
                             var aImages : TCustomImageList) : Integer of object;
   {* - событие для определения иконки элемента.}

  TeeActionElement = procedure(aSender : TObject;
                               anIndex : Integer) of object;
   {* - событие для обработки "двойного клика" на элементе. }

  TeeCurrentChanged = procedure(aSender     : TObject;
                                aNewCurrent,
                                aOldCurrent : Integer) of object;
   {* - событие для обработки изменения текущего элемента. }
  TeeMakeTreeSource = procedure(out theTree: Il3SimpleTree) of object;

   {* - событие для внешней обработки WMChar. }
  TeeNewCharPressed = procedure(aChar: AnsiChar) of object;

   {-}
  TeeBeforeExpandNode = function(Sender      : TObject;
                                 const CNode : IeeNode;
                                 anExpand    : Boolean): Boolean of object;
    {-}
  TeeExpandNodeEvent = procedure(Sender      : TObject;
                                 const CNode : IeeNode) of object;
    {-}

  TeeCustomTreeView = class(TeeTreeViewExport)
   {* Компонент для импорта отображения дерева. }
    private
    // internal fields
      f_OnMakeTreeSource : TeeMakeTreeSource;
      f_BeforeExpand     : TeeBeforeExpandNode;
      f_OnExpand         : TeeExpandNodeEvent;
      f_OnCollapse       : TeeExpandNodeEvent;
      f_OnNewCharPressed : TeeNewCharPressed;
    protected
    // internal methods
      procedure vlbProcessingChar(const aMsg: TWMChar);
        override;
      function  MakeTreeStruct : Il3SimpleTree;
        override;
        {-}
      function  DoOnExpand(Expand : Boolean; const CNode : Il3SimpleNode) : Boolean;
        override;
        {-}
    public
    // public properties
      property TreeView: IeeTreeView
        read pm_GetTreeView;
        {* - дерево, отображаемое компонентом. }
    public
    // public events
      property OnMakeTreeSource: TeeMakeTreeSource
        read f_OnMakeTreeSource
        write f_OnMakeTreeSource;
        {-}
      property BeforeExpand: TeeBeforeExpandNode
        read f_BeforeExpand
        write f_BeforeExpand;
        {-}
      property  OnExpand: TeeExpandNodeEvent
        read f_OnExpand
        write f_OnExpand;
        {* -сообщение о развертывании узла дерева}
      property  OnCollapse: TeeExpandNodeEvent
        read f_OnCollapse
        write f_OnCollapse;
        {* -сообщение о свертывании узла дерева}
      property OnNewCharPressed: TeeNewCharPressed
        read f_OnNewCharPressed
        write f_OnNewCharPressed;
        {* - событие для внешней обработки WMChar. }
  end;//TeeCustomTreeView

  TeeTreeView = class(TeeCustomTreeView)
   {* Компонент для импорта отображения дерева. Для конечного использования. }
    published
    // published properties
      property Align;
        {-}
      property BorderStyle;
        {-}
      property TabOrder;
        {-}
      property Header;
        {-}
      property ShowHeader;
        {-}
      property PopupMenu;
        {-}
      property Controller;
        {-}
      property PickedList;
        {-}
      property ShowRoot;
        {-}  
      property DblClickOnFolder;
        {-}
      property Images;
        {-}
      property MultiSelect;
        {-}
      property MultiStrokeItem;
        {-}
      property ActionElementMode;
        {-}
      property ViewOptions;
        {-}
      property NeedStatus;
        {-}
      property ClearTreeStructOnSaveState;
        {-}
      property StyleId;
        {-}
      property AllowWithoutCurrent;
        {-}
    published
    // published events
      property OnSelectChange;
        {-}
      property OnSelectChanged;
        {-}
      property OnGetItemPickImage;
        {-}
      property OnGetItemIconHint;
        {-}
      property OnRMouseDown;
        {-}
      property OnLMouseDown;
        {-}
      property OnMakeTreeSource;
        {-}
      property OnExpand;
        {* -сообщение о развертывании узла дерева}
      property OnCollapse;
        {* -сообщение о свертывании узла дерева}
      property BeforeExpand;
        {-}
      property OnValidateCurrent;
        {-}
      property OnGetItemStyle;
        {-}
      property OnGetItemCursor;
        {-}
      property OnGetItemImage;
        {-}
      property OnGetItemTextHint;
        {-}
      property OnActionElement;
        {-}
      property OnCurrentChanged;
        {-}
      property OnTreeChanged;
        {-}
      property OnRootChanged;
        {-}
      property OnSelectCountChanged;
        {-}
      property OnFormatStatusInfo;
        {-}
      property OnGetItemFont;
        {-}
      property OnNewCharPressed;
        {-}
      property OnBeforeWake;
        {-}
      property OnAfterWake;
        {-}
      property OnAfterFirstPaint;
        {-}
      property OnCheckFocusedInPaint;
        {-}
      property OnCanBeginDrag;
        {- dnd support}
      property OnCanAcceptData;
        {- dnd support}
      property OnDoDrop;
        {- dnd support}
      property DragAndDropSupported;
        {- dnd support}
      property FooterCaption;
        {-}
      property FooterVisible;
        {-}
      property FooterFont;
        {-}
      property FooterStyleID;
        {-}
      property OnFooterClick;
        {-}
      property FooterActiveFont;
        {-}
      property FooterActiveStyleID;
        {-}
  end;//TeeTreeView

implementation

uses
  Windows,
  l3Const,
  l3Types,
  eeNode
  ;

// start class TeeCustomTreeView

procedure TeeCustomTreeView.vlbProcessingChar(const aMsg: TWMChar);
  //override;

 function IsNumPlus: Boolean;
 begin
  Result := Tl3MakeWord(Tl3MakeLong(aMsg.KeyData).Hi).Lo = 78;
 end;

begin
 if Assigned(f_OnNewCharPressed) then
 begin
  if not IsNumPlus then
   f_OnNewCharPressed(AnsiChar(aMsg.CharCode));
 end
 else
  inherited;
end;

function  TeeCustomTreeView.MakeTreeStruct : Il3SimpleTree;
  //override;
  {-}
begin
 Result := nil;
 if Assigned(f_OnMakeTreeSource) then
  f_OnMakeTreeSource(Result);
 if (Result = nil) then
  Result := inherited MakeTreeStruct;
end;

function  TeeCustomTreeView.DoOnExpand(Expand : Boolean; const CNode : Il3SimpleNode) : Boolean;
  //override;
  {-}
begin
 if not Assigned(f_BeforeExpand) OR
    f_BeforeExpand(Self, TeeNode.Make(CNode), Expand) then
 begin
  Result := inherited DoOnExpand(Expand, CNode);
  if Result then
  begin
   if Expand then
   begin
    if Assigned(f_OnExpand) then
     f_OnExpand(Self, TeeNode.Make(CNode));
   end
   else
   begin
    if Assigned(f_OnCollapse) then
     f_OnCollapse(Self, TeeNode.Make(CNode));
   end;//Expand
  end;//Result
 end
 else
  Result := false;
 end;

end.

