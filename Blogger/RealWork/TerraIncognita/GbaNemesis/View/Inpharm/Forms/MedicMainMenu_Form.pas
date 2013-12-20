unit MedicMainMenu_Form;

// Библиотека : Проект Немезис
// Автор      : Морозов М.А.
// Назначение : Основное меню для Инфарм
// Версия     : $Id: MedicMainMenu_Form.pas,v 1.15 2013/01/22 15:59:44 kostitsin Exp $

(*-------------------------------------------------------------------------------
  $Log: MedicMainMenu_Form.pas,v $
  Revision 1.15  2013/01/22 15:59:44  kostitsin
  [$424399029]

  Revision 1.14  2010/06/22 06:34:37  oman
  Cleanup

  Revision 1.13  2010/04/06 08:59:15  oman
  - new: {RequestLink:200902034}

  Revision 1.12  2010/04/06 08:01:28  oman
  - new: Расположение {RequestLink:200902034}

  Revision 1.11  2010/02/04 16:09:49  lulin
  {RequestLink:185834848}.

  Revision 1.10  2010/02/01 08:46:15  oman
  - fix: {RequestLink:185827991}

  Revision 1.9  2009/12/09 13:14:35  lulin
  {RequestLink:124453871}.

  Revision 1.8  2009/12/09 09:24:06  lulin
  - убиваем неиспользуемый класс.

  Revision 1.7  2009/11/18 13:06:25  lulin
  - используем базовые параметры операции.

  Revision 1.6  2009/10/12 11:27:41  lulin
  - коммитим после падения CVS.

  Revision 1.6  2009/10/08 11:37:09  lulin
  - показываем баннеры.

  Revision 1.5  2009/10/07 12:12:16  lulin
  - подготавливаемся к чистке формы основного меню.

  Revision 1.4  2009/10/05 18:42:45  lulin
  {RequestLink:162596818}. Первые штрихи.

  Revision 1.3  2009/10/05 11:15:19  lulin
  {RequestLink:162596818}. Подготавливаем инфраструктуру.

  Revision 1.2  2009/09/28 19:36:40  lulin
  - убираем из StdRes константы для операций модулей.

  Revision 1.1  2009/09/23 10:42:32  lulin
  {RequestLink:164593943}.

  Revision 1.14  2009/09/21 19:46:49  lulin
  - наводим порядок с открытием фильтров.

  Revision 1.13  2009/09/09 18:55:29  lulin
  - переносим на модель код проектов.

  Revision 1.12  2009/09/04 17:09:01  lulin
  {RequestLink:128288497}.

  Revision 1.11  2009/08/21 12:44:31  lulin
  {RequestLink:159360578}. №8.

  Revision 1.10  2009/08/13 12:16:30  oman
  - new: Более правильная нотификация - {RequestLink:159355458}

  Revision 1.9  2009/08/13 07:13:06  oman
  - new: Более правильная нотификация - {RequestLink:159355458}

  Revision 1.8  2009/08/12 10:48:08  oman
  - new: Первое приближение - {RequestLink:159355458}

  Revision 1.7  2009/08/06 17:18:08  lulin
  - добавляем операцию сравнения редакций в список редакций.

  Revision 1.6  2009/08/06 16:08:31  lulin
  {RequestLink:159352843}.

  Revision 1.5  2009/02/10 19:03:47  lulin
  - <K>: 133891247. Вычищаем морально устаревший модуль.

  Revision 1.4  2009/02/09 15:51:01  lulin
  - <K>: 133891247. Выделяем интерфейсы основного меню.

  Revision 1.3  2009/01/19 11:22:21  lulin
  - <K>: 135597923.

  Revision 1.2  2009/01/16 12:37:39  lulin
  - bug fix: http://mdp.garant.ru/pages/viewpage.action?pageId=135597923

  Revision 1.1  2008/12/29 15:26:37  lulin
  - <K>: 133891773.

  Revision 1.20  2008/12/08 09:33:18  lulin
  - <K>: 128292941.

  Revision 1.19  2008/11/01 13:15:02  lulin
  - <K>: 121167580.

  Revision 1.18  2008/11/01 12:31:15  lulin
  - <K>: 121167580.

  Revision 1.17  2008/11/01 12:11:22  lulin
  - <K>: 121167580.

  Revision 1.16  2008/11/01 11:48:20  lulin
  - <K>: 121167580.

  Revision 1.15  2008/10/31 11:55:09  lulin
  - <K>: 121167580.

  Revision 1.14  2008/09/18 08:00:07  oman
  - fix: Лишние операции (К-118392289)

  Revision 1.13  2008/09/18 07:46:12  oman
  - fix: Лишние операции (К-118392289)

  Revision 1.12  2008/08/07 11:06:29  mmorozov
  - new: обработка очистки журнала или удаления элементов из него (K<106037771>);

  Revision 1.11  2008/08/07 09:55:06  mmorozov
  - bugfix: последение открытые препараты не открывались (K<106037731>);

  Revision 1.10  2008/07/22 12:48:52  mmorozov
  - new: ссылки на разделы справки для Инфарм (K<96484593>);

  Revision 1.9  2008/06/23 13:43:02  mmorozov
  - навигация с клавиатуры (CQ: OIT5-29428).

  Revision 1.8  2008/06/18 10:32:58  mmorozov
  - new: последние открытые препараты (CQ: OIT5-29385);

  Revision 1.7  2008/06/17 14:56:52  mmorozov
  new: последние открытые препараты для меню (CQ: OIT5-29385);

  Revision 1.6  2008/06/16 12:48:04  mmorozov
  new: иконки для Инфарм (CQ: OIT5-29132);

  Revision 1.5  2008/06/16 11:30:41  mmorozov
  bugfix: перестраиваем таблицу при изменении размеров подложки;

  Revision 1.4  2008/06/16 11:18:50  mmorozov
  new: открытие списков из меню Инфарм (CQ: OIT5-29316);

  Revision 1.3  2008/05/22 12:01:33  mmorozov
  - добавлен лог.

-------------------------------------------------------------------------------*)

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

  OvcBase,

  afwControl,
  afwInputControl,
  afwInterfaces,

  vtLister,
  vtOutliner,
  vtOutlinerWithQuickSearch,
  vtOutlinerWithDragDrop,

  eeTreeViewExport,
  eeTreeView,

  vtHideField,
  vtPanel,

  vcmInterfaces,
  vcmBase,
  vcmEntityForm,
  vcmEntities,
  vcmComponent,
  vcmBaseEntities,

  nscTreeView,
  nscHideField,
  nscInterfaces,
  WorkJournalInterfaces,

  MainMenuNewRes,
  MedicMainMenuRes,
  nsMainMenuNew, afwControlPrim, afwBaseControl, afwTextControlPrim,
  afwTextControl,

  InpharmMainMenu_Form, l3InterfacedComponent,
  vcmExternalInterfaces,

  MainMenuDomainInterfaces, nscTreeViewHotTruck
  ;

type
  Ten_MedicMainMenu = class(TvcmEntityFormRef)
    Entities : TvcmEntities;
    pnlMain: TvtPanel;
    hfOperations: TnscHideField;
    tvOperations: TnscTreeView;
    hfInfo: TnscHideField;
    tvInfo: TnscTreeView;
    hfReferenses: TnscHideField;
    tvReferences: TnscTreeViewHotTruck;
    hfStandardInformation: TnscHideField;
    tvStandardInformation: TnscTreeView;
    hfLastOpenDocs: TnscHideField;
    tvLastOpenDocs: TnscTreeViewHotTruck;
    procedure enTreeopExpandAllTest(const aParams: IvcmTestParamsPrim);
    procedure enTreeopCollapseAllTest(const aParams: IvcmTestParamsPrim);
    procedure enTreeopWrapTest(const aParams: IvcmTestParamsPrim);
  private
  // methods
    procedure LoadLastOpenDocs; override;
      {* - загрузить последние открытые документы. }
    function DoBuildGrid: InscArrangeGrid; override;
      {* - построить сетку контролов. }
    procedure LoadTrees; override;
      {-}
    procedure DoActionElement(const aNode: InsMainMenuNode); override;
      {-}
   procedure DoInitKeyboardNavigation(const aTable: InscTabTable); override;
  end;

implementation

uses
  afwFacade,

  nscArrangeGrid,
  nscArrangeGridCell,
  nscTabTable,
  nscTabTableCell,

  DynamicTreeUnit,
  StartUnit,

  bsDataContainer,
  bsTypes,

  nsConst,
  nsTypes,
  nsOpenUtils,

  StdRes,
  nsLastOpenDocTree,

  mmmOperationsTree,
  mmmReferencesTree,
  mmmInfoTree,
  mmmStandardInformation,

  deDocInfo
  ;

{$R *.DFM}

{ Ten_MedicMainMenu }

procedure Ten_MedicMainMenu.LoadLastOpenDocs;
  {* - загрузить последние открытые документы. }
begin
 tvLastOpenDocs.TreeStruct := TnsLastOpenDocTree.
  Make(afw.Settings.LoadInteger(pi_RecentlyOpenDocumentsCount,
                                dv_RecentlyOpenDocumentsCount),
       True);
end;

function Ten_MedicMainMenu.DoBuildGrid: InscArrangeGrid;
begin
 Result := TnscArrangeGrid.Make(False);
 with Result do
 begin
  AddColumn;
  AddColumn;
  AddRow;
  AddRow;
  Cell[0, 0] := TnscHideFieldCell.Make(hfOperations, True);
  Cell[0, 1] := TnscHideFieldCell.Make(hfReferenses, True);
  Cell[1, 0] := TnscHideFieldCell.Make(hfStandardInformation, True);
  Cell[1, 1] := TnscHideFieldCell.Make(hfInfo, True);
  MergeCells(2, 0, 1, TnscHideFieldCell.Make(hfLastOpenDocs));
 end;//with Result do
end;

procedure Ten_MedicMainMenu.LoadTrees;
begin
 inherited;
 tvOperations.TreeStruct := TmmmOperationsTree.Make;
 tvInfo.TreeStruct := TmmmInfoTree.Make;
 tvReferences.TreeStruct := TmmmReferencesTree.Make;
 tvStandardInformation.TreeStruct := TmmmStandardInformation.Make;
end;

procedure Ten_MedicMainMenu.DoInitKeyboardNavigation(const aTable: InscTabTable);
begin
 with aTable.AddColumn do
 begin
  AddItem(TnscTreeViewTabCell.Make(tvOperations));
  AddItem(TnscTreeViewTabCell.Make(tvStandardInformation));
  AddItem(TnscHideFieldTabCell.Make(hfLastOpenDocs));
  AddItem(TnscTreeViewTabCell.Make(tvLastOpenDocs));
 end;//with aTable.AddItem do
 with aTable.AddColumn do
 begin
  AddItem(TnscTreeViewTabCell.Make(tvReferences));
  AddItem(TnscTreeViewTabCell.Make(tvInfo));
 end;//with aTable.AddItem do
end;

procedure Ten_MedicMainMenu.DoActionElement(const aNode: InsMainMenuNode);

  procedure lp_OpenDocument;
  var
   l_DocumentNode: InsDocumentNode;
  begin
   if Supports(aNode,
               InsDocumentNode,
               l_DocumentNode) then
    TdmStdRes.OpenDocument(TdeDocInfo.Make(
                            TbsDocumentContainer.Make(l_DocumentNode.Data)),
                           nil);
  end;

begin
 case TnsMedicMainMenuNodeType(aNode.NodeType) of
   // Поиск лекарственного средства
   ns_mntSearchDrug:
    TdmStdRes.InpharmSearch(nil, nil);
   // Лекарственные средства
   ns_mntAllDrugList:
    Dispatcher.ModuleOperation(TdmStdRes.mod_opcode_Inpharm_DrugList);
   // Фирмы производители
   ns_mntFirms:
    Dispatcher.ModuleOperation(TdmStdRes.mod_opcode_Inpharm_MedicFirms);
   // Словарь медицинских терминов
   ns_mntDiction:
    Dispatcher.ModuleOperation(TdmStdRes.mod_opcode_Inpharm_MedicDiction);
   // Открыть список
   ns_mntDrugList:
    nsOpenNavigatorItem(aNode, NativeMainForm);
   // Открыть документ по номеру
   ns_mntDocument:
    lp_OpenDocument;
   // Руководство пользователя
   ns_mntHelp:
    Application.HelpSystem.ShowTopicHelp(cHelpInpharm, '');
   else
    Assert(False);
 end;//case TnsMedicMainMenuNodeType(aNode.NodeType)
end;

procedure Ten_MedicMainMenu.enTreeopExpandAllTest(
  const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := False;
end;

procedure Ten_MedicMainMenu.enTreeopCollapseAllTest(
  const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := False;
end;

procedure Ten_MedicMainMenu.enTreeopWrapTest(
  const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := False;
end;

end.