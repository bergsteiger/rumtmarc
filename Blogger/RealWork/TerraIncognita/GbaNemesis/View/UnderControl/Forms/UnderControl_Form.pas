unit UnderControl_Form;

// $Id: UnderControl_Form.pas,v 1.10 2012/07/24 18:26:32 lulin Exp $

// $Log: UnderControl_Form.pas,v $
// Revision 1.10  2012/07/24 18:26:32  lulin
// - чистка кода.
//
// Revision 1.9  2012/04/28 10:38:55  lulin
// {RequestLink:361404275}
//
// Revision 1.8  2012/04/13 14:35:30  lulin
// {RequestLink:237994598}
//
// Revision 1.7  2012/03/23 13:04:09  lulin
// - отпиливаем настройки.
//
// Revision 1.6  2011/11/16 17:36:03  lulin
// {RequestLink:232098711}
//
// Revision 1.5  2011/09/23 16:38:26  lulin
// {RequestLink:217681331}.
//
// Revision 1.4  2011/09/23 10:57:15  lulin
// {RequestLink:287219493}.
//
// Revision 1.3  2011/06/23 15:31:45  lulin
// {RequestLink:254944102}.
//
// Revision 1.2  2011/05/13 11:57:58  lulin
// - чистка комментариев.
//
// Revision 1.1  2010/10/29 14:33:21  lulin
// {RequestLink:236722335}.
// - выделяем прецедент "Документы на контроле".
//
// Revision 1.19  2010/09/01 14:35:00  lulin
// {RequestLink:197496539}.
//
// Revision 1.18  2010/09/01 14:03:03  lulin
// {RequestLink:197496539}.
//
// Revision 1.17  2010/08/31 14:43:04  lulin
// {RequestLink:224134305}.
//
// Revision 1.16  2010/05/27 13:47:18  oman
// - new: {RequestLink:210436818}
//
// Revision 1.15  2010/04/22 09:27:14  oman
// - new: {RequestLink:204933350}
//
// Revision 1.14  2010/04/16 08:41:08  oman
// - new: {RequestLink:203131454}
//
// Revision 1.13  2010/03/09 13:07:36  oman
// - new: Учитываем статус только при необходимости {RequestLink:190251273}
//
// Revision 1.12  2010/02/27 09:31:06  oman
// - new: {RequestLink:190251273}
//
// Revision 1.11  2009/12/09 13:13:21  lulin
// {RequestLink:124453871}.
//
// Revision 1.10  2009/11/18 13:06:23  lulin
// - используем базовые параметры операции.
//
// Revision 1.9  2009/11/12 14:32:52  lulin
// - убираем возможность менять список параметров.
//
// Revision 1.8  2009/11/10 12:29:37  lulin
// - перестаём выливать идентификаторы внутренних операций.
//
// Revision 1.7  2009/11/05 15:00:08  lulin
// - закончены разборки с параметрами внутренних операций.
//
// Revision 1.6  2009/10/20 07:01:55  oman
// - fix: {RequestLink:167349350}
//
// Revision 1.5  2009/10/16 17:01:00  lulin
// {RequestLink:159360578}. №52.
//
// Revision 1.4  2009/09/30 16:18:58  lulin
// {RequestLink:159360578}. №44.
//
// Revision 1.3  2009/09/30 15:39:15  lulin
// - чистка кода.
//
// Revision 1.2  2009/09/28 14:34:09  lulin
// - вызов диалога выбора объекта из папок переведён на фабрику.
//
// Revision 1.1  2009/09/25 15:01:04  lulin
// - начинаем перенос модуля Папки на модель.
//
// Revision 1.112  2009/09/07 12:26:54  lulin
// - сделана фабрика для открытия списков.
//
// Revision 1.111  2009/09/02 11:49:16  lulin
// {RequestLink:159360578}. №20.
//
// Revision 1.110  2009/08/07 14:59:17  lulin
// - добавляем операцию сравнения редакций в документы на контроле.
//
// Revision 1.109  2009/07/31 17:30:00  lulin
// - убираем мусор.
//
// Revision 1.108  2009/02/20 18:50:42  lulin
// - <K>: 136941122. Убираем передачу параметров при запросе состояния операции.
//
// Revision 1.107  2009/02/20 13:44:08  lulin
// - <K>: 136941122.
//
// Revision 1.106  2009/02/10 19:03:26  lulin
// - <K>: 133891247. Вычищаем морально устаревший модуль.
//
// Revision 1.105  2009/02/10 15:43:32  lulin
// - <K>: 133891247. Выделяем интерфейсы локализации.
//
// Revision 1.104  2009/02/09 15:18:23  lulin
// - <K>: 133891247. Переносим интерфейсы папок.
//
// Revision 1.103  2009/02/09 13:21:17  lulin
// - <K>: 133891247.
//
// Revision 1.102  2009/01/21 19:18:09  lulin
// - <K>: 135602528.
//
// Revision 1.101  2008/12/08 09:33:01  lulin
// - <K>: 128292941.
//
// Revision 1.100  2008/08/26 13:43:09  oman
// - fix: Излишне вычитывали папки
//
// Revision 1.99  2008/07/18 17:15:31  mmorozov
// - bugfix:  Не сразу меняется имя документа на вкладке "на контроле"  (K<99647730>);
//
// Revision 1.98  2008/05/06 09:08:32  lulin
// - изменения в рамках <K>: 89850787.
//
// Revision 1.97  2008/04/22 12:22:37  mmorozov
// - bugfix: подавали неверный тип интерфейса (CQ: OIT5-28925);
//
// Revision 1.96  2008/04/21 10:53:43  mmorozov
// - new: при фильтрации элементов моих документов используется параметр для чего вызвали мои документы: документы | препараты.
//
// Revision 1.95  2008/04/02 11:43:03  mmorozov
// - пилим общую функциональность списка (создать новый список);
//
// Revision 1.94  2008/01/10 07:23:37  oman
// Переход на новый адаптер
//
// Revision 1.92.4.3  2007/12/26 12:43:29  mmorozov
// - MERGE WITH HEAD;
//
// Revision 1.92.4.2  2007/11/23 10:41:17  oman
// cleanup
//
// Revision 1.92.4.1  2007/11/22 13:20:42  oman
// Перепиливаем на новый адаптер
//
// Revision 1.93  2007/12/25 11:32:23  mmorozov
// - new: подписка на обновление данных приложения (CQ: OIT5-27823);
//
// Revision 1.92  2007/09/25 03:58:31  mmorozov
// - new behaviour: для чтения\изменения текущего выбранного значения для операций типа vcm_otDate, vcm_otCombo, vcm_otEditCombo используем свойство параметров _SelectedString, раньше Caption. Тем самым Caption для этих типов операций стал изменяемым (в рамках работы CQ: OIT5-26741);
//
// Revision 1.91  2007/07/13 12:32:54  oman
// - fix: Убираем операцию "Свернуть все"/"Развернуть все" (cq25605)
//
// Revision 1.90  2007/06/28 14:56:19  lulin
// - cleanup.
//
// Revision 1.89  2007/05/17 12:40:10  lulin
// - удаляем контекст из комментариев.
//
// Revision 1.88  2007/04/05 10:22:34  lulin
// - избавляемся от лишних преобразований строк.
//
// Revision 1.87  2007/03/16 13:58:27  lulin
// - переходим на собственную функцию форматирования строк.
//
// Revision 1.86  2007/02/27 10:32:36  lulin
// - cleanup.
//
// Revision 1.85  2007/02/16 16:31:30  lulin
// - избавляемся от стандартного строкового типа.
//
// Revision 1.84  2007/02/13 12:08:51  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.83  2007/02/13 09:37:47  lulin
// - cleanup.
//
// Revision 1.82  2007/02/13 09:33:45  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.81  2007/02/12 19:35:55  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.80  2007/02/12 16:39:04  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.79  2007/02/09 13:58:32  lulin
// - при добавлении в списки не приводим строки с кодировкой к простым строкам.
//
// Revision 1.78  2007/02/07 19:13:32  lulin
// - переводим мапы на строки с кодировкой.
//
// Revision 1.77  2007/02/07 15:14:18  mmorozov
// - change: TbsListAdditionalDataSource -> _TbsListSynchroForm;
//
// Revision 1.76  2007/01/23 15:27:02  lulin
// - bug fix: выбранная строка брался из неправильного места.
//
// Revision 1.75  2007/01/20 15:30:21  lulin
// - разделяем параметры операции для выполнения и для тестирования.
//
// Revision 1.74  2007/01/17 14:02:55  lulin
// - вычищены последние нефиксированные параметры в тестах операций.
//
// Revision 1.73  2007/01/16 14:13:13  lulin
// - избавляемся от нефиксированного параметра - заголовка операции.
//
// Revision 1.72  2007/01/15 19:22:39  lulin
// - избавился от внутренней операции модуля - по получению списка фильтров. Заодним почистил вылезшие преобразования от одного интерфейса к другому.
//
// Revision 1.71  2007/01/10 13:58:50  lulin
// - от параметра по индексу переходим к свойству в параметрах операции.
//
// Revision 1.70  2007/01/10 11:57:59  lulin
// - cleanup.
//
// Revision 1.69  2006/12/20 13:34:08  lulin
// - удален ненужный модуль.
//
// Revision 1.68  2006/12/05 14:15:40  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.67  2006/12/05 13:49:45  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.66  2006/05/25 11:44:16  demon
// - fix: Документ на контроле со статусом "Удален" не считался измененным
//
// Revision 1.65  2006/05/12 07:20:03  oman
// - new beh: Убрал в папках фильтры "на контролем" (cq19991)
//
// Revision 1.64  2006/04/19 13:34:25  oman
// - new beh: перекладываем StdStr в _StdRes
//
// Revision 1.63  2006/04/18 08:47:27  mmorozov
// - warning fix;
//
// Revision 1.62  2006/04/17 10:54:17  mmorozov
// - изменения связанные с повлением формы оценка консультации;
// - некоторые типы переименованны;
//
// Revision 1.61  2006/04/17 09:37:11  oman
// warning fix
//
// Revision 1.60  2006/03/31 07:42:07  lulin
// - изменен тип параметров, подаваемый в Execte операции.
//
// Revision 1.59  2006/03/30 15:31:21  lulin
// - изменен тип параметров в _OnTest.
//
// Revision 1.58  2006/03/30 14:01:37  lulin
// - операция инициализации разделена на две - с параметрами и без - для того, чтобы в итоге избавится от первой.
//
// Revision 1.57  2006/03/20 12:43:19  oman
// - new beh: переход с _OnTest на _OnGetState для операций
//
// Revision 1.56  2006/03/20 12:30:44  oman
// - new beh: Перекладываем все текстовые константы в три места (StdStr, DebugStr и SystemStr)
//
// Revision 1.55  2006/03/17 13:51:19  oman
// - change: Избавляемся от %s в сообщениях, которые приездают не с адаптера
//
// Revision 1.54  2006/01/10 14:12:02  mmorozov
// - bugfix: обновление списка при снятии статуса изменен у документа (CQ: 00019007);
//
// Revision 1.53  2005/12/20 14:36:53  mmorozov
// - bugfix: при открытии документа сразу после документа на контроле со статусом изменен, предупреждение не исчезало, логика перенесена на бизнес объект (cq: 00018776);
// - bugfix: не работа настройка "Автоматически сбрасывать статус изменен при открытии документа";
//
// Revision 1.52  2005/10/11 16:24:20  demon
// - fix: не открывался список измененных документов на контроле
//
// Revision 1.51  2005/09/02 15:22:25  demon
// - new behavior: восстановлено открытие списка измененных документов на контроле
//
// Revision 1.50  2005/06/28 12:59:27  demon
// - fix: после обновления не пересортировывался список документов на контроле.
//
// Revision 1.49  2005/06/14 12:57:39  mmorozov
// new behaviour: измененные документы на контроле выделяются жирным шрифтом;
//
// Revision 1.48  2005/05/27 14:46:25  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.47  2005/04/01 09:21:57  demon
// - fix: изменилась сигнатура метода
//
// Revision 1.46  2005/03/05 11:31:44  am
// change: поменял TeeTreeView на TnscTreeView
//
// Revision 1.45  2005/01/18 14:49:34  am
// new: прикрутил статусную строку
//
// Revision 1.44  2005/01/13 14:59:04  demon
// - fix: не правильно работал _OnTest для пустого списка документов на контроле.
//
// Revision 1.43  2004/12/27 15:45:53  demon
// - new behavior: операция "Открыть документ" недоступна при мультивыделении
//
// Revision 1.42  2004/12/23 11:15:09  lulin
// - rename prop: TvtCustomOutliner.TreeSource -> TreeStruct.
//
// Revision 1.41  2004/11/18 17:31:58  lulin
// - new interface: IvcmParamsPrim.
//
// Revision 1.40  2004/11/15 15:49:52  mmorozov
// new: операция сброса статуса изменен со всех объектов будет отрабатывать только если есть хотя бы один измененный объект;
// new: подтверждение при вызове операции сброса статуса изменен со всех объектов;
//
// Revision 1.39  2004/10/20 16:50:46  fireton
// - обновление иконок
//
// Revision 1.38  2004/10/14 16:23:25  demon
// - new behavior: операции открытия елемента папок перенесены в nsOpenUtils
//
// Revision 1.37  2004/10/08 17:03:41  demon
// - fix: был не правильный хинт к операциям
//
// Revision 1.36  2004/10/07 14:20:28  lulin
// - new: теперь у _IvcmParams можно присваивать только свойство _DoneStatus - код завершения. На основе этого "по-хитрому" обрабатываем ShortCut'ы для запрещенных операций (CQ OIT5-10123).
//
// Revision 1.35  2004/10/06 13:46:09  am
// change: предупреждение при снятии документа с контроля
//
// Revision 1.34  2004/10/04 09:04:16  demon
// - new behavior: изменен хинт к операции "Удалить" на закладке на контроле.
//
// Revision 1.33  2004/09/17 14:28:51  lulin
// - убрал лишнюю раннюю инициализацию.
//
// Revision 1.32  2004/09/17 12:59:00  lulin
// - все что было возможно перевел с _TStrings на IvcmStrings.
//
// Revision 1.31  2004/09/17 11:25:46  lulin
// - параметр vcm_opStrings переименован в _vcm_opItems, и ему изменен тип с _IvcmHolder на IvcmStrings (!).
//
// Revision 1.30  2004/09/16 12:38:48  demon
// - new behavior: если ни один документ не стоит на контроле - выводим элемент-заглушку...
//
// Revision 1.29  2004/09/15 14:11:32  lulin
// - заменил _TStringList на _TvcmStringList.
//
// Revision 1.28  2004/09/14 12:54:56  fireton
// - change: переименование "По статусу" -> "По виду изменений"
//
// Revision 1.27  2004/09/10 13:58:13  demon
// - fix: удалены избыточные сообщения
//
// Revision 1.26  2004/07/12 16:36:05  demon
// - fix: попытка сбросить статус для удаленного документа на контроле приводила к ошибке.
//
// Revision 1.25  2004/06/25 11:38:50  demon
// - fix: зависание приложения при сбросе статуса "изменен" у нескольких выделенных документов
//
// Revision 1.24  2004/06/01 08:25:45  demon
// - new behavior: изменена иерархия наследования деревьев и часть модулей переехали в VT
//
// Revision 1.23  2004/05/26 16:59:44  law
// - new behavior: TvtCustomOutliner теперь знает только про интерфейсы Il3SimpleTree и Il3Tree, а не про объект _Tl3Tree.
//
// Revision 1.22  2004/05/24 11:02:56  demon
// - new behavior: обработан статус на контроле - CS_DELETED
//
// Revision 1.21  2004/04/01 07:13:56  mmorozov
// new: используем в проекте для управления активностью формы процедуры _TvcmEntityForm (_XSetActiveInParent, _SetInactiveInParent, _IsActiveInParent);
//
// Revision 1.20  2004/03/26 18:53:35  demon
// - new: сообщение о том, что документы на контроле не изменились.
//
// Revision 1.19  2004/03/23 12:16:17  demon
// - fix: не ставился документ на контроль из закладки "на контроле"
//
// Revision 1.18  2004/03/09 15:07:25  mmorozov
// new: управление закладкой "Документы на контроле";
//
// Revision 1.17  2004/03/04 16:37:32  law
// - rename unit: VLister -> vtLister.
//
// Revision 1.16  2004/03/04 15:39:43  law
// - rename unit: VOtliner -> vtOutliner.
//
// Revision 1.15  2004/03/03 18:05:08  law
// - rename unit: l3Tree2 -> l3Tree.
//
// Revision 1.14  2004/02/19 08:28:37  demon
// - fix warnings
//
// Revision 1.13  2004/02/13 09:47:36  demon
// - fix: при получении списка измененных на контроле вызывался не правильный метод с сервера.
//
// Revision 1.12  2004/02/12 14:18:53  demon
// - fix: не работало открытие объекта из списка "на контроле"
//
// Revision 1.11  2004/02/11 13:52:36  demon
// - syntax fix
// - logic fix: в связи с изменениями интерфейсов сервера
// - new: Операция сбросить статус "изменен" всем объектам
// - new: Вывод хинта к иконкам списка "На контроле"
//
// Revision 1.10  2004/02/09 10:03:56  demon
// - fix: изменилась симантика вызова GetControlledObjects
//
// Revision 1.9  2004/02/05 12:46:44  demon
// - new: реализована операция открыть документ
//
// Revision 1.8  2004/02/05 10:29:20  demon
// - new: реализована операция "Сбросить статус "изменен"
//
// Revision 1.7  2004/02/05 09:30:59  demon
// - new: реализована операция "Снять с контроля"
//
// Revision 1.6  2004/02/05 08:44:36  demon
// - new: реализована операция сортировки объектов "На контороле"
//
// Revision 1.5  2004/02/05 07:07:51  demon
// - new behavior: отображение разных иконок в списке "на Контроле" в зависимости от статуса.
//
// Revision 1.4  2004/02/04 14:25:08  demon
// - new behavior: реализованы операции "добавить на контроль" и "построить список объектов на контроле"
//
// Revision 1.3  2004/02/04 13:31:48  demon
// - new behavior: Операции работы с _IQuery перенесены из модуля search\nsQuery в модуль nsQueryUtils
//
// Revision 1.2  2004/02/03 14:02:54  demon
// - add: основные операции для ЦУК (без реализации)
//
// Revision 1.1  2004/02/02 08:50:03  demon
// - new: форма для отображения документов на контроле
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

  afwInputControl,
  afwInterfaces,

  l3InternalInterfaces,
  l3TreeInterfaces,
  l3Interfaces,
  l3Tree,
  afwControl,

  eeTreeViewExport,
  eeInterfaces,
  eeTreeView,

  vtLister,
  vtOutliner,
  vtOutlinerWithQuickSearch,
  vtOutlinerWithDragDrop,

  vcmInterfaces,
  vcmBase,
  vcmEntityForm,
  vcmEntities,
  vcmBaseEntities,
  vcmComponent,

  OvcBase,

  ImgList,


  nscTreeView,
  nsFolderNodes,
  afwControlPrim, afwBaseControl, l3InterfacedComponent,

  vcmExternalInterfaces,

  L10nInterfaces,

  FoldersDomainInterfaces,

  PrimUnderControlOptions_Form
  ;

type
  TenUnderControl = class(TvcmEntityFormRef)
    Entities : TvcmEntities;
    UnderControlList: TnscTreeView;

    procedure vcmEntityFormInit;

    function  UnderControlListGetItemImage(Sender: TObject; Index: Integer;
                                          var aImages: TCustomImageList): Integer;
    procedure UnderControlListMakeTreeSource(out theTree: Il3SimpleTree);
    procedure UnderControlListActionElement(Sender: TObject; Index: Integer);
    function  UnderControlListGetItemIconHint(Sender: TObject; Index: Integer): Il3CString;
    procedure SwitcheropSetActiveExecute(const aParams: IvcmExecuteParams);
    procedure UnderControlListCurrentChanged(Sender: TObject; aNewCurrent,
                                             aOldCurrent: Integer);
    procedure UnderControlListSelectChanged(Sender: TObject;
                                            Index: Integer; var SelectedState: Integer);
    procedure UnderControlListGetItemFont(Sender: TObject; Index: Integer;
      const aFont: Il3Font);
    procedure vcmEntityFormGetStatus(aSender: TObject;
      out theStatus: TafwStatusInfo);
    procedure enTreeopExpandAllTest(const aParams: IvcmTestParamsPrim);
    procedure enTreeopCollapseAllTest(const aParams: IvcmTestParamsPrim);
    function UnderControlListGetItemTextHint(Sender: TObject;
      Index: Integer): Il3CString;
   private
   // internal methods
    procedure StatusParamsShow;
      {-}
   protected
   // methods
    procedure Cleanup;
     override;
  end;

implementation

{$R *.DFM}

uses
  l3InterfacesMisc,
  l3String,

  vcmStringList,
  vcmForm,

  eeTreeMisc,

  DataAdapter,

  StdRes,
  FoldersRes,

  bsTypes,
  bsUtils,

  nsTypes,
  nsFolders,
  nsOpenUtils,
  nsValueMapsIDs,
  nsValueMaps,
  nsFolderFilterInfo,
  nsUtils,

  BaseTreeSupportUnit,
  DynamicTreeUnit,
  BaseTypesUnit,
  DynamicDocListUnit,
  FoldersUnit,
  UnderControlUnit,
  IOUnit,

  deListSet,
  OfficeLike_Usual_Controls,
  ControlStatusUtils,

  nsQuestionsWithChoices
  ;

procedure TenUnderControl.vcmEntityFormInit;
begin
 UnderControlList.Images := nsFoldersRes.FoldersItemImages;
 UpdateRoot;
 if (UserFoldersTree.ControlledObj <> nil) then
  UserFoldersTree.ControlledObj.As_Il3ChangeNotifier.Subscribe(InsUnderControlRootListener(Self));
 UnderControlList.VJustify := vt_vjTop;
end;

function TenUnderControl.UnderControlListGetItemImage(Sender: TObject;
                                                      Index: Integer;
                                                      var aImages: TCustomImageList): Integer;
var
 l_CurNode        : IeeNode;
 l_ControlledNode : InsUnderControlNode;
 l_Status         : Integer;
const
 cImageMap : array [TItemStatus] of Integer = (
  UCDocument_Abolished, // IS_ABOLISHED // Утратил силу
  UCDocument_Active, // IS_ACTIVE // Действующий
  UCDocument_Preactive, // IS_PREACTIVE // Не вступил в силу
  UCDocument_Unknown // IS_UNKNOWN // Неопределен
 );

begin
 l_CurNode := UnderControlList.TreeView.GetNode(Index);
 try
  if l3BQueryInterface(l_CurNode, InsUnderControlNode, l_ControlledNode) then
   try
    l_Status := l_ControlledNode.Status;
    if l_Status and CS_DELETED = CS_DELETED then
     Result := UCStatus_DeletedIcon
    else
    if l_Status and CS_ACTIVE = CS_ACTIVE then
     Result := UCStatus_ActiveIcon
    else
    if l_Status and CS_CHANGED = CS_CHANGED then
     Result := UCStatus_ChangedIcon
    else
    if l_Status and CS_ABOLISHED = CS_ABOLISHED then
     Result := UCStatus_AbolishedIcon
    else
    if l_Status and CS_REGISTERED = CS_REGISTERED then
     Result := UCStatus_RegistredMUIcon
    else
    if l_Status and CS_NOT_REGISTERED = CS_NOT_REGISTERED then
     Result := UCStatus_NotRegistredMUIcon
    else
     Result := cImageMap[l_ControlledNode.DocumentStatus];
   finally
    l_ControlledNode := nil;
   end
  else
  begin
   aImages := dmStdRes.ImageList;
   Result := 115; // (i) - информация
  end;
 finally
  l_CurNode := nil;
 end;
end;

procedure TenUnderControl.UnderControlListMakeTreeSource(out theTree: Il3SimpleTree);
begin
 theTree := TnsUnderControlTree.Make;
end;

procedure TenUnderControl.UnderControlListActionElement(Sender: TObject; Index: Integer);
begin
 if CanCompareEditions(UnderControlList.GetNode(Index), True) then
  case MessageDlg(str_ChangedDocumentOnControl) of
   -1: OpenControllableElement(self.as_IvcmEntityForm, UnderControlList.GetNode(Index));
   -2: CompareEditions(UnderControlList.GetNode(Index));
  end
 else
  OpenControllableElement(self.as_IvcmEntityForm, UnderControlList.GetNode(Index));
end;

function TenUnderControl.UnderControlListGetItemIconHint(Sender: TObject; Index: Integer): Il3CString;
var
 l_CurNode       : IeeNode;
 l_ControlledNode : InsUnderControlNode;
begin
 l_CurNode := UnderControlList.TreeView.GetNode(Index);
 try
  if l3BQueryInterface(l_CurNode, InsUnderControlNode, l_ControlledNode) then
   try
    Result := bsControlStatusHint(l_ControlledNode.Status, true);
   finally
    l_ControlledNode := nil;
   end//try..finally
  else
   Result := nil;
 finally
  l_CurNode := nil;
 end;//try..finally
end;

procedure TenUnderControl.SwitcheropSetActiveExecute(const aParams: IvcmExecuteParams);
begin
 SetActiveInParent;
end;

procedure TenUnderControl.UnderControlListCurrentChanged(Sender: TObject;
  aNewCurrent, aOldCurrent: Integer);
begin
 StatusParamsShow;
end;

procedure TenUnderControl.StatusParamsShow;
begin
 if Dispatcher <> nil then
  Dispatcher.UpdateStatus;
end;

procedure TenUnderControl.UnderControlListSelectChanged(Sender: TObject;
  Index: Integer; var SelectedState: Integer);
begin
 StatusParamsShow;
end;

procedure TenUnderControl.UnderControlListGetItemFont(Sender: TObject;
  Index: Integer; const aFont: Il3Font);
var
 l_CurNode        : IeeNode;
 l_ControlledNode : InsUnderControlNode;
begin
 l_CurNode := UnderControlList.TreeView.GetNode(Index);
 try
  if Supports(l_CurNode, InsUnderControlNode, l_ControlledNode) then
  try
   if LongWord(l_ControlledNode.Status) <> CS_NONE then
    aFont.Style := [fsBold];
  finally
   l_ControlledNode := nil;
  end;
 finally
  l_CurNode := nil;
 end;
end;

procedure TenUnderControl.Cleanup;
begin
 if FoldersReaded then
  if (UserFoldersTree.ControlledObj <> nil) then
   UserFoldersTree.ControlledObj.As_Il3ChangeNotifier.Unsubscribe(InsUnderControlRootListener(Self));
 inherited;
end;

procedure TenUnderControl.vcmEntityFormGetStatus(aSender: TObject;
  out theStatus: TafwStatusInfo);
var
 l_Node: InsUnderControlNode;
begin
 if Length(theStatus.rStrings) <> 1 then
  SetLength(theStatus.rStrings, 1);
 theStatus.rStrings[0] := nil;

 if (UnderControlList.TreeView.Tree.Root <> nil) and
    not ((UnderControlList.TreeView.Tree.Root.AllChildrenCount = 1) and
         not Supports(UnderControlList.TreeView.Tree.Root.ChildNode, InsUnderControlNode, l_Node)) then
  with UnderControlList.TreeView.Tree.Root do
  begin
   if UnderControlList.TreeView.Current >= 0 then
    theStatus.rStrings[0] := vcmFmt(str_ucsStatusWithSelected, [UnderControlList.TreeView.Current + 1, AllChildrenCount, UnderControlList.TreeView.Tree.SelectedCount])
   else
    theStatus.rStrings[0] := vcmFmt(str_ucsStatusWithOutSelected, [AllChildrenCount, UnderControlList.TreeView.Tree.SelectedCount]);
  end;
end;

procedure TenUnderControl.enTreeopExpandAllTest(
  const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := False;
end;

procedure TenUnderControl.enTreeopCollapseAllTest(
  const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := False;
end;

function TenUnderControl.UnderControlListGetItemTextHint(Sender: TObject;
  Index: Integer): Il3CString;
var
 l_eeNode  : IeeNode;
 l_Control : IControllable;
 l_Hint: IString;
begin
 Result := nil;
 if (Index >= 0) then
 begin
  l_eeNode := UnderControlList.TreeView.GetNode(Index);
  try
   if Supports(l_eeNode, IControllable, l_Control) then
   begin
    l_Control.GetName(l_Hint);
    Result := nsCStr(l_Hint);
    if l3Same(Result, l_eeNode.Text) then
     Result := nil;
   end;
  finally
   l_eeNode := nil;
  end;//try..finally
 end;//Index >= 0
end;

end.
