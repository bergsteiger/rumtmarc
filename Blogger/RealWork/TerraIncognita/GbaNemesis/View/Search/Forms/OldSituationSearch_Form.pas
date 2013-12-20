unit OldSituationSearch_Form;

// $Id: OldSituationSearch_Form.pas,v 1.21 2013/01/23 08:04:22 kostitsin Exp $

// $Log: OldSituationSearch_Form.pas,v $
// Revision 1.21  2013/01/23 08:04:22  kostitsin
// не собиралось
//
// Revision 1.20  2013/01/22 15:59:20  kostitsin
// [$424399029]
//
// Revision 1.19  2012/09/29 10:31:47  lulin
// {RequestLink:397279284}
//
// Revision 1.18  2012/04/13 08:59:49  lulin
// {RequestLink:237994598}
//
// Revision 1.17  2011/11/16 17:35:57  lulin
// {RequestLink:232098711}
//
// Revision 1.16  2011/10/10 17:17:57  lulin
// {RequestLink:271749118}.
//
// Revision 1.15  2011/03/05 18:56:24  lulin
// {RequestLink:228688510}.
//
// Revision 1.14  2010/07/19 09:53:38  lulin
// {RequestLink:197496539}.
//
// Revision 1.13  2009/12/02 17:22:09  lulin
// {RequestLink:172984885}.
//
// Revision 1.12  2009/11/16 18:41:58  lulin
// {ReqestLink:159360578}. №58.
//
// Revision 1.11  2009/11/16 11:44:26  lulin
// {RequestLink:159360578}. №58.
//
// Revision 1.10  2009/11/12 14:33:08  lulin
// - убираем возможность менять список параметров.
//
// Revision 1.9  2009/11/10 12:29:55  lulin
// - перестаём выливать идентификаторы внутренних операций.
//
// Revision 1.8  2009/11/05 18:33:04  lulin
// - избавился от переменных списков параметров.
//
// Revision 1.7  2009/11/05 15:00:22  lulin
// - закончены разборки с параметрами внутренних операций.
//
// Revision 1.6  2009/10/29 16:03:16  lulin
// - по-другому называем операции.
//
// Revision 1.5  2009/10/29 14:36:10  lulin
// - вторая волна компании по борьбе со старыми внутренними операциями.
//
// Revision 1.4  2009/10/16 17:01:04  lulin
// {RequestLink:159360578}. №52.
//
// Revision 1.3  2009/09/23 08:05:28  lulin
// {RequestLink:164071198}.
//
// Revision 1.2  2009/09/22 17:40:17  lulin
// - модуль Поиск полностью перенесён на модель.
//
// Revision 1.1  2009/09/22 14:49:37  lulin
// - переносим модуль поиска на модель.
//
// Revision 1.100  2009/09/22 08:39:36  lulin
// - починил разломанный вызов создания нового фильтра.
//
// Revision 1.99  2009/09/21 19:46:46  lulin
// - наводим порядок с открытием фильтров.
//
// Revision 1.98  2009/09/15 16:32:54  lulin
// - основной модуль мониторингов полностью перенесён на модель.
//
// Revision 1.97  2009/09/03 18:49:13  lulin
// - реструктуризируем поиски и удаляем ненужное.
//
// Revision 1.96  2009/08/26 08:15:25  lulin
// - декорируем имена операций, чтобы можно было искать.
// - bug fix: не собирались мониторинги.
//
// Revision 1.95  2009/07/31 17:30:07  lulin
// - убираем мусор.
//
// Revision 1.94  2009/02/10 19:04:03  lulin
// - <K>: 133891247. Вычищаем морально устаревший модуль.
//
// Revision 1.93  2009/02/09 11:57:18  lulin
// - <K>: 133891247.
//
// Revision 1.92  2008/07/22 10:42:32  oman
// - new: Отключение пищалки - везде кроме КЗ (К-103940886)
//
// Revision 1.91  2008/06/26 10:50:07  oman
// - fix: Боремся с перетрансляцией ввода (cq11768)
//
// Revision 1.90  2008/04/16 07:50:34  mmorozov
// - new: созданы отдельные деревья фильтров для документа и препарата (K<89102296>).
//
// Revision 1.89  2008/01/24 11:56:24  oman
// - new: Правильный DPI (cq24598)
//
// Revision 1.88  2008/01/24 11:47:50  oman
// - new: Разкладываем пропорциональные панельки (cq24598)
//
// Revision 1.87  2008/01/10 07:23:08  oman
// Переход на новый адаптер
//
// Revision 1.85.4.2  2007/12/21 09:45:42  mmorozov
// - MERGE WITH HEAD;
//
// Revision 1.85.4.1  2007/11/22 13:20:25  oman
// Перепиливаем на новый адаптер
//
// Revision 1.86  2007/12/21 07:12:12  mmorozov
// - new: подписка на уведомление об обновлении данных (CQ: OIT5-27823);
//
// Revision 1.85  2007/09/25 03:58:33  mmorozov
// - new behaviour: для чтения\изменения текущего выбранного значения для операций типа vcm_otDate, vcm_otCombo, vcm_otEditCombo используем свойство параметров _SelectedString, раньше Caption. Тем самым Caption для этих типов операций стал изменяемым (в рамках работы CQ: OIT5-26741);
//
// Revision 1.84  2007/06/28 14:56:23  lulin
// - cleanup.
//
// Revision 1.83  2007/05/17 12:40:12  lulin
// - удаляем контекст из комментариев.
//
// Revision 1.82  2007/03/29 09:31:46  oman
// - new: Контекстная фильтрация атрибутов - первое приближение
//  (cq24456)
//
// Revision 1.81  2007/03/20 11:38:27  lulin
// - не теряем кодировку при присваивании заголовков форм и контролов.
//
// Revision 1.80  2007/03/16 07:48:23  oman
// - new: Положили новый контекстный фильтр (cq24456)
//
// Revision 1.79  2007/03/14 08:02:16  oman
// - fix: Вместо натипизированных параметров надо пользовать
//  типизированные - падали по ListIndexOutOfBounds
//
// Revision 1.78  2007/03/01 08:53:51  lulin
// - cleanup.
//
// Revision 1.77  2007/02/13 14:33:31  lulin
// - cleanup.
//
// Revision 1.76  2007/02/13 12:08:59  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.75  2007/02/09 13:58:35  lulin
// - при добавлении в списки не приводим строки с кодировкой к простым строкам.
//
// Revision 1.74  2007/02/08 15:31:48  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.73  2007/02/08 13:12:11  lulin
// - используем сравнение с учетом кодировки.
//
// Revision 1.72  2007/01/20 15:30:33  lulin
// - разделяем параметры операции для выполнения и для тестирования.
//
// Revision 1.71  2007/01/17 14:03:08  lulin
// - вычищены последние нефиксированные параметры в тестах операций.
//
// Revision 1.70  2007/01/16 14:13:20  lulin
// - избавляемся от нефиксированного параметра - заголовка операции.
//
// Revision 1.69  2007/01/15 19:22:44  lulin
// - избавился от внутренней операции модуля - по получению списка фильтров. Заодним почистил вылезшие преобразования от одного интерфейса к другому.
//
// Revision 1.68  2007/01/10 13:58:55  lulin
// - от параметра по индексу переходим к свойству в параметрах операции.
//
// Revision 1.67  2007/01/10 11:58:02  lulin
// - cleanup.
//
// Revision 1.66  2006/12/07 12:40:58  lulin
// - повторный переход на "правильные" панели.
//
// Revision 1.65  2006/12/07 08:32:15  lulin
// - cleanup.
//
// Revision 1.64  2006/12/05 14:16:03  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.63  2006/11/03 09:46:20  oman
// Merge with B_NEMESIS_6_4_0
//
// Revision 1.62.4.1  2006/10/25 07:29:38  oman
// Продолжаем избавлятся от StdStr
//
// Revision 1.62  2006/04/19 13:34:22  oman
// - new beh: перекладываем StdStr в _StdRes
//
// Revision 1.61  2006/03/31 07:42:33  lulin
// - изменен тип параметров, подаваемый в Execte операции.
//
// Revision 1.60  2006/03/30 15:31:43  lulin
// - изменен тип параметров в _OnTest.
//
// Revision 1.59  2006/03/30 14:01:56  lulin
// - операция инициализации разделена на две - с параметрами и без - для того, чтобы в итоге избавится от первой.
//
// Revision 1.58  2006/03/20 09:27:50  oman
// - new beh: Перекладываем все текстовые константы в три места (StdStr, DebugStr и SystemStr)
//
// Revision 1.57  2005/11/14 12:07:47  mmorozov
// - add units;
//
// Revision 1.56  2005/10/06 10:49:40  lulin
// - класс панелей переехал в более правильное место.
//
// Revision 1.55  2005/10/06 09:17:13  lulin
// - базовый класс панелей переехал в более правильное место.
//
// Revision 1.54  2005/06/30 07:48:26  cyberz
// READY FOR TIE-TEMPLATE GENERATION
//
// Revision 1.53  2005/05/27 14:46:45  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.52  2005/02/28 09:33:57  demon
// - new behavior: При создании пустого _IQuery на адаптере нужно указывать его тип
// - new behavior: поле _IQuery.Type стало readonly
//
// Revision 1.51  2005/01/21 11:37:56  mmorozov
// bugfix: при создании нового фильтра он не устанавливался текущим в списке;
//
// Revision 1.50  2004/11/18 16:30:48  lulin
// - отвязываем библиотеки от VCM без использования inc'ов.
//
// Revision 1.49  2004/09/21 13:53:23  lulin
// - Release заменил на Cleanup.
//
// Revision 1.48  2004/09/17 11:25:52  lulin
// - параметр vcm_opStrings переименован в _vcm_opItems, и ему изменен тип с _IvcmHolder на IvcmStrings (!).
//
// Revision 1.47  2004/09/16 11:34:37  lulin
// - навел подобие порядка с регистрацией компонент библиотеки.
//
// Revision 1.46  2004/09/13 11:44:06  lulin
// - bug fix: aParams там непричем.
//
// Revision 1.45  2004/09/10 16:34:46  lulin
// - оптимизация - кешируем OpDef и передаем ссылку на OperationItem, а не на кучу параметров.
//
// Revision 1.44  2004/08/26 10:22:52  mmorozov
// new behaviour: не прячем кнопки в toolbar-ах и главном меню, делаем их недоступными;
//
// Revision 1.43  2004/08/05 13:31:15  demon
// - cleanup: remove warnings and hints
//
// Revision 1.42  2004/07/19 12:34:26  am
// new: в ППР\ППС: если ни один элемент не выбран, автоматом подставляем текущий
//
// Revision 1.41  2004/07/07 07:50:16  am
// change: Cleanup
//
// Revision 1.40  2004/06/25 09:16:48  am
// change: перевод на новые деревья
//
// Revision 1.39  2004/05/27 08:28:34  nikitin75
// после иннициализации контейнера фокус насильно переставляем в MainZone (стандартное поведение - в _ParentZone)
//
// Revision 1.38  2004/04/15 15:02:16  demon
// - new behavior: рефакторинг формы ППС 5.х . Операции enResult транслируются с формы cfSaveLoadForm.
//
// Revision 1.37  2004/04/06 09:43:06  nikitin75
// - переходим на IStringOld;
//
// Revision 1.36  2004/04/05 13:54:12  nikitin75
// - переходим на IStringOld;
//
// Revision 1.35  2004/03/12 12:01:17  demon
// - new behavior: Splitters заменены на ResizeablePanel
//
// Revision 1.34  2004/03/10 10:42:43  nikitin75
// - убил Ok (ShortCut);
// - теперь shortcut (Enter) привязан непосредственно к opOk;
//
// Revision 1.33  2004/03/09 09:07:50  mmorozov
// - константы из модуля nsTypes перенесены в модуль nsConst;
//
// Revision 1.32  2004/02/04 13:31:46  demon
// - new behavior: Операции работы с _IQuery перенесены из модуля search\nsQuery в модуль nsQueryUtils
//
// Revision 1.31  2004/01/15 14:14:27  demon
// - fix: убраны лишние операции _OnTest для операций типа ShortCut
//
// Revision 1.30  2004/01/13 13:50:35  demon
// - new: довлена операция с shortcut'ом для старта поисков.
//
// Revision 1.29  2004/01/09 14:42:37  demon
// - remame: изменен _Caption у операции op_Result_Ok (для нужд Help)
//
// Revision 1.28  2003/12/23 08:23:39  demon
// - new behavior: изменен принцип передачи фильтров в операцию Search. Теперь передается IFilters.
//
// Revision 1.27  2003/12/18 17:22:49  law
// - change: заменил TvtPanel -> TvtPanel.
//
// Revision 1.26  2003/11/30 17:03:55  law
// - change: _ModuleOperation переходим от имен к идентификаторам.
//
// Revision 1.25  2003/11/30 13:33:25  law
// - cleanup: убраны ненужные пустые параметры.
//
// Revision 1.24  2003/11/21 13:02:14  law
// - change: параметр aMode перенесен в конец и сделан необязательным.
//
// Revision 1.23  2003/11/20 20:40:02  law
// - new behavior: корректно генерируем список идентификаторов операций.
// - new behavior: вызов операций сущностей возможен теперь только по идентификатору.
// - cleanup: пытаемся в Design-Time отвязаться от GblAdapter (не получилось).
//
// Revision 1.22  2003/11/19 17:53:08  migel
// - change: перенесли работу с фильтрами на тулбар.
//
// Revision 1.21  2003/11/19 12:49:16  migel
// - change: перенесли работу с фильтрами на тулбар.
//
// Revision 1.20  2003/10/17 15:11:19  demon
// - new: операция _opIsQuerySaved (проверка статуса сохранения текущего запроса)
//
// Revision 1.19  2003/10/13 14:47:37  demon
// - syntax fix
//
// Revision 1.18  2003/10/13 13:45:02  demon
// - new behavior: при старте поиска пытаемся получить указатель на текущий список.
//
// Revision 1.17  2003/10/10 12:18:48  demon
// - fix: изменены зоны для контейнера OldSituationSearch.
//
// Revision 1.16  2003/10/09 09:02:47  mmorozov
// + сохранение фильтра в истории;
//
// Revision 1.15  2003/10/08 08:54:14  mmorozov
// + в операцию очистить добавлена очистка фильтра;
//
// Revision 1.14  2003/10/08 06:30:43  mmorozov
// + реализовано использование фильтра;
//
// Revision 1.13  2003/10/07 14:37:10  demon
// - new behavior: using new Attribute tag constants
//
// Revision 1.12  2003/10/06 13:46:26  demon
// - new behavior: добавлена операция ClearAll (на нижнем тулбаре).
//
// Revision 1.11  2003/10/06 12:25:52  demon
// - new: добавлена зона для расположения контрола выбора фильтра.
//
// Revision 1.10  2003/10/06 08:48:57  demon
// - remove some syntax warnings
//
// Revision 1.9  2003/09/25 14:06:13  demon
// - sintax fix
//
// Revision 1.8  2003/09/23 13:01:05  demon
// - new: Добавлена кнопка "Отмена" в КЗ ППР и ППС
//
// Revision 1.7  2003/09/04 14:38:59  law
// - bug fix: поправлены сигнатуры обработчиков событий LoadState и _SaveState.
//
// Revision 1.6  2003/08/20 07:54:32  demon
// - new: сохранение параметров КЗ в истории
//
// Revision 1.5  2003/08/19 17:13:57  demon
// - new: сохранение и загрузка запроса в ППС а-ля 5.х
//
// Revision 1.4  2003/08/04 17:31:58  demon
// - new: Добавлена операция создать пустой запрос.
//
// Revision 1.3  2003/07/30 15:07:54  demon
// - new: Реализована операция Искать.
//
// Revision 1.2  2003/07/29 08:11:45  demon
// - fix: Разделены операции SetRoot для разных типов форм.
//
// Revision 1.1  2003/07/28 15:59:36  demon
// - add: контейнер для ППС старого образца
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
  ExtCtrls,
  StdCtrls,
  Buttons,

  afwControl,

  vtSizeablePanel,
  vcmComponent,
  vtPanel,

  OvcBase,

  vcmInterfaces,
  vcmExternalInterfaces,
  vcmBase,
  vcmEntityForm,
  vcmEntities,
  vcmContainerForm,
  vcmBaseEntities,

  nscContextFilter,

  SearchUnit,
  
  nsQuery,
  nsFolders, vtProportionalPanel,

  nsQueryInterfaces, l3InterfacedComponent, afwControlPrim, afwBaseControl,
  afwTextControlPrim, afwTextControl,

  PrimOldSituationSearch_Form,
  PrimOldSituationSearchOptions_Form
  ;

const
  CM_AFTER_INIT = (WM_USER + 201);

type
  TcfOldSituationSearch = class(TvcmContainerFormRef)
    Entities : TvcmEntities;
    BackgroundPanel: TvtPanel;
    ContextFilter: TnscContextFilter;
    BotomPanel: TvtSizeablePanel;
    ParentZone: TvtPanel;
    ZoneContainer: TvtProportionalPanel;
    ChildZone: TvtPanel;
    MainZone: TvtSizeablePanel;
    procedure enResultopCancelExecute(const aParams: IvcmExecuteParams);

    procedure vcmContainerFormInit;
    procedure vcmContainerFormSaveState(out aState: IvcmBase;
                                        aStateType: TvcmStateType;
                                        var Saved: Boolean);
    procedure vcmContainerFormLoadState(const aState: IvcmBase;
                                        aStateType: TvcmStateType;
                                        var Loaded: Boolean);
    procedure ContextFilterChange(Sender: TObject);
    procedure ContextFilterWrongContext(Sender: TObject);
   private

    procedure AfterInit(var Message: TMessage); message CM_AFTER_INIT;
   protected
    function FillQuery : IQuery; override;

    procedure InitControls; override;
    procedure Cleanup; override;
   public
     { Public declarations }
  end;

implementation

{$R *.DFM}

uses
  l3InterfacesMisc,
  l3Tree_TLB,
  l3Nodes,
  l3String,

  eeInterfaces,
  eeTreeMisc,

  DataAdapter,

  bsTypes,

  nsTypes,
  nsConst,
  nsQueryUtils,
  nsNodes,
  nsUtils,

  BaseTreeSupportUnit,

  StdRes,
  SearchLite_Strange_Controls,

  vtF1InterfaceConst
  ;

procedure TcfOldSituationSearch.InitControls;
begin
 inherited;
end;

procedure TcfOldSituationSearch.Cleanup;
begin
 f_FormState := nil;
 inherited;
end;

function TcfOldSituationSearch.FillQuery : IQuery;
begin
 if (f_FormState.Query <> nil) then
  Result := f_FormState.Query
 else
 begin
  f_FormState.Query := DefDataAdapter.CreateEmptyQuery(QT_KEYWORD);
  Result := f_FormState.Query;
 end;//f_FormState.Query <> nil

 // Добавляем выбранные элементы в Query
 if (Result <> nil) then
  Op_AttributeTree_SaveToQuery.Call(Aggregate, Result);
end;

procedure TcfOldSituationSearch.AfterInit(var Message: TMessage);
  //message CM_AFTER_INIT;
  {-}
var
 l_C : TControl;  
begin
 if (MainZone.ControlCount > 0) then
 begin
  l_C := MainZone.Controls[0];
  if (l_C is TvcmEntityForm) then
   if TvcmEntityForm(l_C).CanFocus then
   // - http://mdp.garant.ru/pages/viewpage.action?pageId=271749118
   // - http://mdp.garant.ru/pages/viewpage.action?pageId=271749118&focusedCommentId=274468233#comment-274468233
    (l_C as TvcmEntityForm).SetFocus;
 end;//MainZone.ControlCount > 0
end;

procedure TcfOldSituationSearch.vcmContainerFormInit;
var
 l_FormState : TnsQueryFormState;
begin
 ContextFilter.Images := dmStdRes.SmallImageList;
 l_FormState := TnsQueryFormState.Create;
 try
  Supports(l_FormState, InsQueryFormState, f_FormState);
 finally
  vcmFree(l_FormState);
 end;
{
 незачем, т.к. не сохраняем query в этой форме
 try
  if l3BQueryInterface(l_FormState, InsQueryFormState, f_FormState) then
   f_FormState.Tag := KeyWordTag;
 finally
  vcmFree(l_FormState);
 end;
}
 PostMessage(Handle, CM_AFTER_INIT, 0, 0);
 // http://mdp.garant.ru/pages/viewpage.action?pageId=271749118&focusedCommentId=290954110&#comment-290954110
end;

procedure TcfOldSituationSearch.vcmContainerFormSaveState(out aState: IvcmBase;
                                                          aStateType   : TvcmStateType;
                                                          var Saved: Boolean);
begin
 if aStateType = vcm_stContent then
  aState := f_FormState as IvcmBase;
end;

procedure TcfOldSituationSearch.vcmContainerFormLoadState(const aState: IvcmBase;
                                                          aStateType   : TvcmStateType;
                                                          var Loaded: Boolean);
begin
 if aStateType = vcm_stContent then
  if not l3BQueryInterface(aState, InsQueryFormState, f_FormState) then
   Assert(False);
end;

procedure TcfOldSituationSearch.enResultopCancelExecute(const aParams: IvcmExecuteParams);
begin
 vcmDispatcher.History.Back;
end;

procedure TcfOldSituationSearch.ContextFilterChange(Sender: TObject);
begin
 Op_Context_SetContext.Call(Aggregate, ContextFilter.MakeState);
end;

procedure TcfOldSituationSearch.ContextFilterWrongContext(Sender: TObject);
begin
 nsBeepWrongContext;
end;

end.
