unit enRubricatorList;

// $Id: enRubricatorList.pas,v 1.25 2013/01/22 16:22:05 kostitsin Exp $

// $Log: enRubricatorList.pas,v $
// Revision 1.25  2013/01/22 16:22:05  kostitsin
// [$424399029]
//
// Revision 1.24  2012/08/01 13:07:28  kostitsin
// [$379249992]
//
// Revision 1.23  2011/09/22 11:46:47  lulin
// {RequestLink:286625857}.
//
// Revision 1.22  2011/05/13 11:57:52  lulin
// - чистка комментариев.
//
// Revision 1.21  2011/01/13 15:53:11  lulin
// {RequestLink:248195582}.
// - подготавливаем инфраструктуру для синхронизации списка закладок.
//
// Revision 1.20  2010/07/19 11:30:06  lulin
// {RequestLink:197496539}.
//
// Revision 1.19  2010/06/22 11:46:20  oman
// - fix: {RequestLink:219122439}
//
// Revision 1.18  2010/06/08 06:29:14  oman
// - new: {RequestLink:217681269}
//
// Revision 1.17  2010/06/02 14:20:24  lulin
// {RequestLink:217157085}.
// - подготовительная работа.
//
// Revision 1.16  2010/04/28 09:08:08  lulin
// {RequestLink:159352361}.
// - переносим на модель заголовки для настроек.
//
// Revision 1.15  2010/03/09 12:11:12  oman
// - fix: {RequestLink:193824322}
//
// Revision 1.14  2010/01/12 08:36:22  oman
// - fix: {RequestLink:175538211}
//
// Revision 1.13  2009/12/24 11:20:51  oman
// - fix: {RequestLink:175538602}
//
// Revision 1.12  2009/12/09 13:15:34  lulin
// {RequestLink:124453871}.
//
// Revision 1.11  2009/12/09 09:24:43  lulin
// - убиваем неиспользуемый класс.
//
// Revision 1.10  2009/12/02 17:22:07  lulin
// {RequestLink:172984885}.
//
// Revision 1.9  2009/11/30 16:04:57  lulin
// {RequestLink:159352472}.
//
// Revision 1.8  2009/11/12 14:33:06  lulin
// - убираем возможность менять список параметров.
//
// Revision 1.7  2009/11/11 18:53:51  lulin
// - убираем генерацию идентификаторов операций.
//
// Revision 1.6  2009/11/05 18:32:00  lulin
// - избавился от переменных списков параметров.
//
// Revision 1.5  2009/11/05 08:29:48  oman
// - new: {RequestLink:168955411}
//
// Revision 1.4  2009/10/28 14:10:54  lulin
// - начинаем компанию по борьбе со старыми внутренними операциями.
//
// Revision 1.3  2009/09/30 15:23:38  lulin
// - убираем ненужное приведение ко вполне понятным интерфейсам.
//
// Revision 1.2  2009/09/15 16:33:08  lulin
// - основной модуль мониторингов полностью перенесён на модель.
//
// Revision 1.1  2009/09/11 12:12:13  lulin
// - генерируем константы для операций модуля.
// - правим ссылки на файлы с картинками.
//
// Revision 1.133  2009/09/09 12:14:04  lulin
// - рисуем внутренние опеации формы рубрикатора на модели.
//
// Revision 1.132  2009/09/08 17:14:49  lulin
// - добавляем форму рубрикатора.
//
// Revision 1.131  2009/09/04 17:09:06  lulin
// {RequestLink:128288497}.
//
// Revision 1.130  2009/09/02 11:49:32  lulin
// {RequestLink:159360578}. №20.
//
// Revision 1.129  2009/08/26 08:15:36  lulin
// - декорируем имена операций, чтобы можно было искать.
// - bug fix: не собирались мониторинги.
//
// Revision 1.128  2009/08/11 17:04:06  lulin
// - прикручиваем обработку ссылок к Сравнению редакций.
//
// Revision 1.127  2009/06/02 13:48:08  lulin
// [$148574526].
//
// Revision 1.126  2009/06/01 11:16:34  lulin
// [$148572848].
//
// Revision 1.125  2009/05/29 17:18:31  lulin
// [$142610853].
//
// Revision 1.124  2009/04/08 11:18:49  oman
// - new: В JumpTo подаем не состояние мыши а желаемое поведение - [$140287160]
//
// Revision 1.123  2008/12/16 14:30:41  lulin
// - <K>: 122674167. Ещё раз убрать ненужные приведения InitialUseCaseData к конкретным типам.
//
// Revision 1.122  2008/12/08 09:33:25  lulin
// - <K>: 128292941.
//
// Revision 1.121  2008/10/30 15:09:20  lulin
// - <K>: 121159648.
//
// Revision 1.120  2008/10/29 16:12:52  lulin
// - <K>: 121166916.
//
// Revision 1.119  2008/09/25 11:30:57  oman
// - fix: Красиваей обрабатываем гиперссылку (К-119472712)
//
// Revision 1.118  2008/05/16 15:21:11  lulin
// - рисуем на модели.
//
// Revision 1.117  2008/04/02 11:43:01  mmorozov
// - пилим общую функциональность списка (создать новый список);
//
// Revision 1.116  2008/03/26 08:29:19  oman
// - fix: Для открытия документов пользуем deDocInfo (cq28711)
//
// Revision 1.115  2008/02/11 07:42:39  oman
// - new: Новые типы курсоров (cq20760)
//
// Revision 1.114  2008/01/16 11:00:40  oman
// - fix: Не все сохраняли в историю (cq28216)
//
// Revision 1.113  2008/01/10 07:23:43  oman
// Переход на новый адаптер
//
// Revision 1.112  2007/12/21 07:12:26  mmorozov
// - new: подписка на уведомление об обновлении данных (CQ: OIT5-27823);
//
// Revision 1.111  2007/11/28 15:49:42  mmorozov
// - bugfix: неправильно определяли типы элементов (папка | не папка) (CQ: OIT5-27615);
//
// Revision 1.110  2007/04/25 08:31:39  oman
// - new: Выводим ссылку на гарант и для мониторингов в
//  рубрикаторе (cq25132)
//
// Revision 1.109  2007/04/23 07:25:15  oman
// - fix: Ссылка на горячие документы в рубрикаторе (cq25131)
//
// Revision 1.108  2007/04/20 10:52:38  oman
// - fix: Снабжаем строку Гарант в интернет иконкой (cq25113)
//
// Revision 1.107  2007/04/20 09:06:26  mmorozov
// - new: пункт меню "Горячая информация" не доступен если на экране открыт рубриктор с горячей информацией;
//
// Revision 1.106  2007/04/10 12:38:28  mmorozov
// - new: использование новых идентификаторов элементов навигатора (CQ: OIT5-24602);
//
// Revision 1.105  2007/03/20 11:38:25  lulin
// - не теряем кодировку при присваивании заголовков форм и контролов.
//
// Revision 1.104  2007/03/20 09:27:07  lulin
// - используем строки с кодировкой.
//
// Revision 1.103  2007/03/13 11:46:52  oman
// - fix: Видимость ссылки для новых документов не запоминалась в
//  истории (cq24642)
//
// Revision 1.102  2007/03/05 13:47:24  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.101  2007/02/09 13:20:13  oman
// - fix: Ссылка на веб-сайт из раздела рубрикатора "новые документы" (cq24331)
//
// Revision 1.100  2006/12/22 15:06:36  lulin
// - текст ноды - теперь структура с длиной и кодовой страницей.
//
// Revision 1.99  2006/12/20 13:34:21  lulin
// - удален ненужный модуль.
//
// Revision 1.98  2006/12/05 14:16:01  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.97  2006/12/05 13:50:01  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.96  2006/03/31 07:42:30  lulin
// - изменен тип параметров, подаваемый в Execte операции.
//
// Revision 1.95  2006/03/30 14:01:53  lulin
// - операция инициализации разделена на две - с параметрами и без - для того, чтобы в итоге избавится от первой.
//
// Revision 1.94  2005/11/21 17:32:04  lulin
// - cleanup.
//
// Revision 1.93  2005/11/14 15:29:04  mmorozov
// - cleanup: вычищены типы списка - "Переходом по рубрикатору", "Сохраненный", "После поиска";
// - new: переносим возвращение бизнес объектов списка на фабрику сборки;
//
// Revision 1.92  2005/11/01 13:44:15  mmorozov
// - add unit;
//
// Revision 1.91  2005/10/04 12:57:31  mmorozov
// new behaviour: при открытии списка из рубрикатора если документ в списке один, то он всегда открывается;
//
// Revision 1.90  2005/09/30 14:07:40  mmorozov
// - открытие мультиссылок;
//
// Revision 1.89  2005/09/30 07:58:43  mmorozov
// change: общие части выносим за скобки;
//
// Revision 1.88  2005/09/13 13:30:46  mmorozov
// change: для открытия списка используется TdeOpenDocumentListInfo;
//
// Revision 1.87  2005/09/06 16:15:38  demon
// - new behavior: небольшая оптимизация кода
//
// Revision 1.86  2005/09/06 15:47:15  demon
// - new behavior: Убрал ветку, работающую со старыми списками
// - fix: восстановил синхронизацию с деревом Навигатора
//
// Revision 1.85  2005/08/15 14:02:09  mmorozov
// change: сигнатура _TdeListSet.Make;
//
// Revision 1.84  2005/08/11 15:22:44  mmorozov
// - при создании сборки указывается форма области синхронного просмотра по умолчанию;
//
// Revision 1.83  2005/08/10 11:09:52  mmorozov
// new: открытие списка по новому;
//
// Revision 1.82  2005/07/22 08:43:42  mmorozov
// - переезд на новый запрос;
//
// Revision 1.81  2005/06/30 07:48:23  cyberz
// READY FOR TIE-TEMPLATE GENERATION
//
// Revision 1.80  2005/05/27 14:46:43  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.79  2005/03/21 14:05:47  am
// change: при открытии списка из рубрикатора\навигатора выполняем автопереход независимо от того, что в настройках
//
// Revision 1.78  2005/03/05 11:36:28  am
// change: поменял TeeTreeView на TnscTreeView
//
// Revision 1.77  2005/01/21 12:27:17  lulin
// - к пользовательским операция приписываем префикс user.
//
// Revision 1.76  2004/12/23 11:15:17  lulin
// - rename prop: TvtCustomOutliner.TreeSource -> TreeStruct.
//
// Revision 1.75  2004/10/20 13:04:56  am
// change: в UpdateComplete'е не нужно посылать навигатору SetCurrent. Лишний вызов.
//
// Revision 1.74  2004/09/17 07:32:57  am
// change: чистка
//
// Revision 1.73  2004/09/15 10:38:53  am
// change: увязали с Update'ом. При апдейте синхронизируем рубрикатор с тем, что было до.
//
// Revision 1.72  2004/09/08 08:52:05  am
// new: opRubricator_Synchronize
//
// Revision 1.71  2004/09/03 13:02:38  am
// change: правки в рамках перевода рубрикатора на новые деревья
//
// Revision 1.70  2004/09/02 13:38:44  am
// change: перевод рубрикатора на новые структуры
//
// Revision 1.69  2004/09/01 15:19:43  am
// change: перевод на новые структуры
//
// Revision 1.68  2004/08/31 16:00:54  am
// change: CreateViewEx перед присваиванием ноды руту рубрикатора
//
// Revision 1.67  2004/08/31 15:37:38  am
// change: перевод рубрикатора на новые структуры
//
// Revision 1.66  2004/08/31 11:59:48  am
// change: чистка старых интерфейсов
//
// Revision 1.65  2004/08/30 08:24:11  demon
// - fix: не учитывалась настройка не показывать дерево рубрикатора из нового Основного меню и главного окна.
//
// Revision 1.64  2004/08/06 11:49:43  demon
// - cleanup: remove warnings and hints
//
// Revision 1.63  2004/07/01 15:56:42  demon
// - new behavior: изменен формат вызова операции ResetData(const aTreeSource : Il3SimpleTree)
//
// Revision 1.62  2004/06/01 08:25:52  demon
// - new behavior: изменена иерархия наследования деревьев и часть модулей переехали в VT
//
// Revision 1.61  2004/05/26 16:59:50  law
// - new behavior: TvtCustomOutliner теперь знает только про интерфейсы Il3SimpleTree и Il3Tree, а не про объект _Tl3Tree.
//
// Revision 1.60  2004/05/22 10:15:23  am
// change: изменилась семантика mop_List_Open. Проверка автоматического перехода на документ в списке теперь выполняется внутри операции.
//
// Revision 1.59  2004/04/08 18:32:32  law
// - refactoring: используем CurrentNode.
//
// Revision 1.58  2004/04/05 13:54:27  nikitin75
// - переходим на IStringOld;
//
// Revision 1.57  2004/03/26 13:27:16  mmorozov
// new: отдельная операция для управления формой "Дерево рубрикатора";
//
// Revision 1.56  2004/03/20 15:47:21  mmorozov
// delete: method enRubricatoropOpenRubricatorTreeTest;
//
// Revision 1.55  2004/03/10 08:42:26  mmorozov
// new: управление закладкой "Дерево рубрикатора";
//
// Revision 1.54  2004/03/04 16:37:41  law
// - rename unit: VLister -> vtLister.
//
// Revision 1.53  2004/03/04 15:39:53  law
// - rename unit: VOtliner -> vtOutliner.
//
// Revision 1.52  2004/03/03 18:05:12  law
// - rename unit: l3Tree2 -> l3Tree.
//
// Revision 1.51  2004/02/27 14:11:47  demon
// - new: обработка операции op_System_UpdateComplete
//
// Revision 1.50  2004/02/27 13:37:10  demon
// - new behavior: Рубрикатор научился сбрасывать кэшированные данные после обновления
//
// Revision 1.49  2003/12/30 13:47:04  migel
// - change: открываем документ сразу, если список состоит из одного документа.
//
// Revision 1.48  2003/12/23 11:51:26  nikitin75
// ActionElementMode = ee_amSingleClick
//
// Revision 1.47  2003/12/11 16:12:11  law
// - изменения, которые автоматически внесли Delphi.
//
// Revision 1.46  2003/11/30 17:03:53  law
// - change: _ModuleOperation переходим от имен к идентификаторам.
//
// Revision 1.45  2003/11/25 17:02:22  law
// - cleanup: конструкцию (this As XIvcmEntity).Operation заменил на Operation.
//
// Revision 1.44  2003/11/21 13:02:12  law
// - change: параметр aMode перенесен в конец и сделан необязательным.
//
// Revision 1.43  2003/11/21 12:11:28  law
// - change: параметр aMode перенесен в конец и сделан необязательным.
//
// Revision 1.42  2003/11/20 20:40:00  law
// - new behavior: корректно генерируем список идентификаторов операций.
// - new behavior: вызов операций сущностей возможен теперь только по идентификатору.
// - cleanup: пытаемся в Design-Time отвязаться от GblAdapter (не получилось).
//
// Revision 1.41  2003/11/19 11:39:23  law
// - new behavior: регистрируем все сущности и операции в MenuManager'е для дальнейшей централизации редактирования. Само редактирование пока не доделано.
//
// Revision 1.40  2003/09/22 11:41:38  demon
// - uses fix
//
// Revision 1.39  2003/08/26 13:39:47  demon
// - bug fix: при вызове списка из рубрикатора закладка с фильтрами не становится активной.
//
// Revision 1.38  2003/08/14 12:01:32  migel
// bugfix: using `.Open` operation on `INode`
//
// Revision 1.37  2003/07/30 13:26:43  demon
// - bug fix: при открытии из правого окна рубрикатора список дважды попадал в Историю.
//
// Revision 1.36  2003/07/25 15:18:28  law
// - new behavior: сделана отрисовка _Caption'ов в придоченной форме.
//
// Revision 1.35  2003/07/25 11:59:10  demon
// - new behavior: Операция Open переехала с IBaseCatalog на INode
//
// Revision 1.34  2003/07/08 16:49:20  demon
// - new: доделана работа с History при смене контента у формы.
//
// Revision 1.33  2003/07/03 10:13:46  demon
// - new: убрал с тип документа в параметры формы.
// - add: поправил работу перехода по ссылке из справки и синхронного просмотра.
// - new: операция _SetPosition обрела второй параметр (необязательный) - тип формы, которой идет рассылка (аналогично SetContent).
//
// Revision 1.32  2003/06/30 18:24:33  demon
// - new: инициализация рубрикатора разнесена на две операции Init и Set
//
// Revision 1.31  2003/06/30 15:24:29  demon
// - new: пределана инициализация рубрикатора (теперь она вся сосредоточена в модуле)
//
// Revision 1.30  2003/06/24 19:17:17  demon
// - syntax fix
//
// Revision 1.29  2003/06/24 19:09:37  demon
// - refactoring: изменение имен компонент, оптимизация кода
//

{$Include nsDefine.inc}

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
  StdCtrls,
  ExtCtrls,

  afwInterfaces,
  afwControl,
  afwInputControl,
  afwNavigation,

  l3InterfacedComponent,
  l3ProgressComponent,
  l3Tree,
  l3TreeInterfaces,
  l3Tree_TLB,

  eeInterfaces,
  eeTreeView,
  eeTreeViewExport,

  evInternalInterfaces,
  evEditorWindow,
  evMultiSelectEditorWindow,
  evCustomEditor,
  evEditorWithOperations,
  evTunedEditor,
  evCustomTextSource,
  evEditorWindowTextSource,
  nevTools,

  eeEditorExport,
  eeEditor,
  eeTextSourceExport,
  eeTextSource,

  vtLister,
  vtOutliner,
  vtOutlinerWithDragDrop,
  vtOutlinerWithQuickSearch,
  vtPanel,

  OvcBase,

  vcmBase,
  vcmBaseEntities,
  vcmComponent,
  vcmEntities,
  vcmEntityForm,
  vcmInterfaces,
  vcmExternalInterfaces,

  nscTreeView,
  nscSimpleEditor,
  nscTextSource,

  BaseTypesUnit,

  bsTypes,

  RubricatorRes, afwTextControlPrim, afwTextControl, afwControlPrim,
  afwBaseControl, nevControl,
  nevGUIInterfaces, evCustomEditorWindowModelPart,

  PrimRubricator_Form, evCustomEditorWindowPrim, evCustomEditorModelPart,
  eeEditorExportModelPart
  ;

type
  TefRubricator = class(TvcmEntityFormRef)
    Entities       : TvcmEntities;
    RubricatorList : TnscTreeView;
    ExampleTextSource: TnscTextSource;
    TopPanel: TvtPanel;
    NewDocLabel: TnscSimpleEditor;
    PaintBox: TPaintBox;
    DelimiterPanel: TvtPanel;

    procedure RubricatorListActionElement(Sender: TObject; Index: Integer);
    function  RubricatorListGetItemImage(Sender: TObject; Index: Integer;
                                         var aImages: TCustomImageList): Integer;
    procedure RubricatorListTreeChanged(aSender: TObject; const anOldTree,
      aNewTree: Il3SimpleTree);
    function NewDocLabelJumpTo(Sender: TObject; anEffects : TafwJumpToEffects;
      const aMoniker: IevMoniker): Boolean;
    procedure ExampleTextSourceMakeDocumentContainer(Sender: TObject;
      var aMade: InevDocumentContainer);
    procedure NewDocLabelBreakingPara(aSender: TObject; out aHandled: Boolean);
    procedure vcmEntityFormSaveState(out aState: IvcmBase;
      aStateType: TvcmStateType; var Saved: Boolean);
    procedure vcmEntityFormLoadState(const aState: IvcmBase;
      aStateType: TvcmStateType; var Loaded: Boolean);
    procedure PaintBoxPaint(Sender: TObject);
    procedure NewDocLabelGetHotSpotInfo(Sender: TObject;
      const aHotSpot: IevHotSpot; const aKeys: TafwCursorState;
      var theInfo: TafwCursorInfo);
   private
    f_LinkType: TNavigatorMenuItemType;

    procedure CallGarant;
    procedure UpdateTopPanel(aNodeType: TNavigatorMenuItemType); override;
   public
    procedure Cleanup; override;
    procedure RubricExecute; override; 
  end;

implementation

uses
  l3InterfacesMisc,
  l3String,
  l3Stream,
  l3Filer,
  l3Memory,
  l3Base,

  afwFacade,

  evdReader,

  nevNavigation,

  DataAdapter,

  bsConst,

  nsUtils,
  nsTypes,
  nsExternalObject,

  nsNodes,
  nsConst,

  nsTreeStruct,
  nsTreeUtils,

  DocumentUnit,
  DynamicDocListUnit,
  DynamicTreeUnit,

  StdRes,
  vcmForm,
  RubricatorInterfaces,
  nsRubricatorList,

  Common_Strange_Controls,

  deDocInfo
  ;

{$R *.DFM}

// start class TefRubricator

procedure TefRubricator.RubricatorListActionElement(Sender: TObject; Index: Integer);
begin
 if (RubricatorList.GetNode(Index) <> nil) then
  RubricExecute;
end;

function TefRubricator.RubricatorListGetItemImage(Sender: TObject; Index: Integer;
                                                  var aImages: TCustomImageList): Integer;
var
 l_AdapterNode : INodeBase;
begin
 if Supports(RubricatorList.GetNode(Index), INodeBase, l_AdapterNode) then
  try
   Result := GetRubricatorImageIndex(l_AdapterNode);
  finally
   l_AdapterNode := nil;
  end
 else
  Result := -1;
end;

procedure TefRubricator.RubricExecute;
var
 l_l3Node : Il3SimpleNode;
 l_Node   : INodeBase;

 procedure lp_List;
 var
  l_DynList    : IDynList;
  l_EntityBase : IEntityBase;
 begin
  try
   l_Node.GetEntity(l_EntityBase);
  except
   on ENoEntity do
   begin
    defDataAdapter.ShowMessageWithDealerInfo(war_EmtryListEntity);
    exit;
   end;
  end;{try..except}
  if Supports(l_EntityBase, IDynList, l_DynList) then
  try
   nsOpenList(l_DynList,
              NativeMainForm,
              wdAlwaysOpen,
              True,
              lofRubricator);
   // Синхронизация с элементом в Навигаторе
   Op_Navigator_SetCurrent.Call(Aggregate, l_l3Node);
  finally
   l_DynList := nil;
  end;//if Supports(l_EntityBase, IDynList, l_DynList) then
 end;//lp_List

 procedure lp_Document;
 var
  l_Document   : IDocument;
  l_EntityBase : IEntityBase;
 begin
  try
   l_Node.GetEntity(l_EntityBase);
  except
   on ENoEntity do
    exit;
  end;{try..except}
  if Supports(l_EntityBase, IDocument, l_Document) then
  try
   TdmStdRes.OpenDocument(TdeDocInfo.Make(l_Document), nil);
   op_Navigator_SetCurrent.Call(Aggregate, l_l3Node);
  finally
   l_Document := nil;
  end;//if Supports(l_EntityBase, IDocument, l_Document) then
 end;//lp_Document

var
 l_RubricatorTree : InsRubricatorTree;
begin
 l_l3Node := RubricatorList.GetCurrentNode;
 if (l_l3Node = nil) or
    (Aggregate = nil) then
  Exit;
 if Supports(l_l3Node, INodeBase, l_Node) then
 try
  if TNavigatorMenuItemType(l_Node.GetType) = NM_DOCUMENT then
   lp_Document
  else
  if not l_Node.HasChildren then
   lp_List
  else
  begin
   if not Supports(RubricatorList.TreeStruct, InsRubricatorTree,  l_RubricatorTree) then
    Assert(false);
   InternalSetRoot(l_l3Node, l_RubricatorTree.RootToKeep, l_RubricatorTree.MenuSectionItemToKeep);
  end;//not l_Node.HasChildren
 finally
  l_Node := nil;
 end;//try..finally
end;//enRubricopExecuteExecute

procedure TefRubricator.Cleanup;
begin
 inherited;
 RubricatorList.TreeStruct := nil;
end;

procedure TefRubricator.RubricatorListTreeChanged(aSender: TObject;
  const anOldTree, aNewTree: Il3SimpleTree);
begin
 if (f_SetCurrentLock = 0) then
  if (aNewTree <> nil) then
   Self.Rubricator_Synchronize_Execute;
end;

function TefRubricator.NewDocLabelJumpTo(Sender: TObject;
  anEffects : TafwJumpToEffects; const aMoniker: IevMoniker): Boolean;
begin
 Result := True;
 CallGarant;
end;

procedure TefRubricator.ExampleTextSourceMakeDocumentContainer(Sender: TObject;
  var aMade: InevDocumentContainer);
begin
 aMade.ReadFrom(Tl3StringStream.Make(l3PCharLen(vcmCStr(str_NewDocsEVD))));
end;

procedure TefRubricator.NewDocLabelBreakingPara(aSender: TObject; out aHandled: Boolean);
begin
 CallGarant;
 aHandled := True;
end;

procedure TefRubricator.CallGarant;
begin
 Case f_LinkType of
  NM_NEW_DOCS:
   if afw.Application.LocaleInfo.Language = afw_lngEnglish then
    nsDoShellExecute(nsCStr(ciitEnglishGarant))
   else
    nsDoShellExecute(nsCStr(ciitHotDocs));
  NM_MONITORINGS:
   if afw.Application.LocaleInfo.Language = afw_lngEnglish then
    nsDoShellExecute(nsCStr(ciitEnglishGarant))
   else
    nsDoShellExecute(nsCStr(ciitHotDocs));
 end;
end;

procedure TefRubricator.vcmEntityFormSaveState(out aState: IvcmBase;
  aStateType: TvcmStateType; var Saved: Boolean);
begin
 if aStateType = vcm_stContent then
 begin
  aState := TnsRubricatorState.Make(TopPanel.Visible, f_LinkType).As_IvcmBase;
  Saved := True;
 end;
end;

procedure TefRubricator.vcmEntityFormLoadState(const aState: IvcmBase;
  aStateType: TvcmStateType; var Loaded: Boolean);
var
 l_State: InsRubricatorState;
begin
 if (aStateType = vcm_stContent) and Supports(aState, InsRubricatorState, l_State) then
 begin
  TopPanel.Visible := l_State.NewDocLabelVisible;
  DelimiterPanel.Visible := not TopPanel.Visible;
  f_LinkType := l_State.LinkType;
  Loaded := True;
 end;
end;

procedure TefRubricator.PaintBoxPaint(Sender: TObject);
var
 l_IndentX: Integer;
 l_IndentY: Integer;
begin
 with PaintBox.Canvas do
 begin
  l_IndentX := (PaintBox.Width - 16) div 2;
  l_IndentY := (TopPanel.Height - 16) div 2;
  dmStdRes.SmallImageList.Draw(PaintBox.Canvas, l_IndentX, l_IndentY, cInternetTips);
 end;
end;

procedure TefRubricator.UpdateTopPanel(aNodeType: TNavigatorMenuItemType);
var
 l_Para: IevCommonControl;
begin
 f_LinkType := aNodeType;
 TopPanel.Visible := aNodeType in [NM_NEW_DOCS, NM_MONITORINGS];
 DelimiterPanel.Visible := not TopPanel.Visible;
 if NewDocLabel.Document.Para[0].QT(IevCommonControl, l_Para, NewDocLabel.Processor) then
  l_Para.Collapsed := aNodeType = NM_MONITORINGS;
end;

procedure TefRubricator.NewDocLabelGetHotSpotInfo(Sender: TObject;
  const aHotSpot: IevHotSpot; const aKeys: TafwCursorState;
  var theInfo: TafwCursorInfo);
begin
 if Supports(aHotSpot, IevHyperlink) then
  theInfo.rCursor := ev_csExternalHand
 else
  theInfo.rCursor := ev_csArrow;
end;

end.