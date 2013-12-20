unit PostingsList_Form;

interface

// $Id: PostingsList_Form.pas,v 1.7 2011/11/16 17:35:55 lulin Exp $

// $Log: PostingsList_Form.pas,v $
// Revision 1.7  2011/11/16 17:35:55  lulin
// {RequestLink:232098711}
//
// Revision 1.6  2011/10/31 15:33:24  lulin
// {RequestLink:294589844}
//
// Revision 1.5  2011/06/14 17:24:21  lulin
// {RequestLink:269067374}.
//
// Revision 1.4  2010/09/06 14:20:25  lulin
// {RequestLink:197496539}.
//
// Revision 1.3  2010/09/06 13:29:53  lulin
// {RequestLink:197496539}.
//
// Revision 1.80  2010/05/12 06:42:08  oman
// - new: {RequestLink:210436767}
//
// Revision 1.79  2010/05/11 11:39:53  oman
// - new: {RequestLink:210436767}
//
// Revision 1.78  2010/05/11 10:28:37  oman
// - new: Мультудаление {RequestLink:210436767}
//
// Revision 1.77  2010/02/09 16:25:56  lulin
// {RequestLink:190251743}.
//
// Revision 1.76  2009/12/02 17:21:41  lulin
// {RequestLink:172984885}.
//
// Revision 1.75  2009/11/18 13:06:07  lulin
// - используем базовые параметры операции.
//
// Revision 1.74  2009/11/12 14:32:35  lulin
// - убираем возможность менять список параметров.
//
// Revision 1.73  2009/10/21 17:41:22  lulin
// - раскладываем модули по правильным местам.
//
// Revision 1.72  2009/10/02 15:40:23  lulin
// - форма предварительного просмотра печати переведена на фабрику.
//
// Revision 1.71  2009/09/29 16:34:59  lulin
// {RequestLink:159360578}. №39.
// Поправил использование пакетов.
//
// Revision 1.70  2009/09/17 09:57:38  lulin
// - убираем дублирующуюся операцию.
//
// Revision 1.69  2009/09/15 16:32:51  lulin
// - основной модуль мониторингов полностью перенесён на модель.
//
// Revision 1.68  2009/09/11 16:46:19  lulin
// - удаляем ненужные операции.
// - правим модель за Ромой.
// - исправляем кривизну использования форм.
//
// Revision 1.67  2009/09/10 18:19:03  lulin
// - делаем фабрику для открытия карточки заполнения мониторингов.
//
// Revision 1.66  2009/09/09 18:55:20  lulin
// - переносим на модель код проектов.
//
// Revision 1.65  2009/02/10 19:03:31  lulin
// - <K>: 133891247. Вычищаем морально устаревший модуль.
//
// Revision 1.64  2009/02/10 14:43:21  lulin
// - <K>: 133891247. Переносим интерфейсы Прайма.
//
// Revision 1.63  2009/02/09 13:57:05  lulin
// - <K>: 133891247. Выделяем интерфейсы для ПРАЙМа.
//
// Revision 1.62  2008/12/29 16:40:54  lulin
// - <K>: 134316705.
//
// Revision 1.61  2008/04/30 10:44:55  mmorozov
// - bugfix: не обновлялось название ленты после перезаписи.
//
// Revision 1.60  2008/03/03 07:06:05  mmorozov
// - format code;
//
// Revision 1.59  2008/02/29 05:30:36  mmorozov
// - new: перенос запросов ПРАЙМ с папок в отдельное хранилище;
//
// Revision 1.58  2008/01/10 07:23:41  oman
// Переход на новый адаптер
//
// Revision 1.56.2.2  2007/12/26 12:43:23  mmorozov
// - MERGE WITH HEAD;
//
// Revision 1.56.2.1  2007/11/23 10:15:35  oman
// Перепиливаем на новый адаптер
//
// Revision 1.57  2007/12/25 11:32:16  mmorozov
// - new: подписка на обновление данных приложения (CQ: OIT5-27823);
//
// Revision 1.56  2007/11/01 13:21:17  oman
// - fix: Создаваемую ленту могли трактовать как модифицируемую
// - fix: При удалении ленты очищали создаваемую (cq27269)
//
// Revision 1.55  2007/08/03 12:00:38  mmorozov
// - bugfix: при экспорте списка рассылок если пользователь отказался от сохрания текущей все равно экспортируем имеющиеся (CQ: OIT5-26067);
// - new behaviour: если из списка рассылок удаляется текущая редактируемая рассылка, то очищаем карточку, при этом никаких сообщений о сохранении не выдаем;
//
// Revision 1.54  2007/06/18 10:52:48  lulin
// - cleanup.
//
// Revision 1.53  2007/03/20 13:58:36  lulin
// - cleanup.
//
// Revision 1.52  2007/03/20 11:38:13  lulin
// - не теряем кодировку при присваивании заголовков форм и контролов.
//
// Revision 1.51  2007/03/16 16:57:06  lulin
// - избавляемся от излишнего копирования и преобразования строк.
//
// Revision 1.50  2007/03/14 07:15:28  oman
// - fix: При форматировании строки приводим интерфейс IxxCString
//  к _String (cq24632)
//
// Revision 1.49  2007/03/13 14:25:03  oman
// - fix: При форматировании строки приводим интерфейс IxxCString
//  к _String (cq24632)
//
// Revision 1.48  2007/02/16 18:06:12  lulin
// - избавляемся от стандартного строкового типа.
//
// Revision 1.47  2007/01/20 15:48:38  lulin
// - разделяем параметры операции для выполнения и для тестирования.
//
// Revision 1.46  2007/01/20 15:30:23  lulin
// - разделяем параметры операции для выполнения и для тестирования.
//
// Revision 1.45  2007/01/17 18:47:42  lulin
// - сужаем список параметров для тестирования операции.
//
// Revision 1.44  2006/12/20 13:34:10  lulin
// - удален ненужный модуль.
//
// Revision 1.43  2006/12/11 08:08:57  oman
// - не компилировалось
//
// Revision 1.42  2006/12/05 14:15:43  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.41  2006/12/05 13:49:47  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.40  2006/11/17 13:13:56  mmorozov
// MERGE WITH B_NEMESIS_6_4 ( bugfix: при измении тематик (добавлении/удалении/изменении), в процессе работы с ПРАЙМ, автоматом не вызывался метод выливки папок (CQ: OIT5-23672));
//
// Revision 1.39  2006/09/22 12:19:11  oman
// - fix: Лишний пункт меню (cq22698)
// - fix: В мониторингах отъехал "Экспортировать..." из главного меню
//
// Revision 1.38  2006/07/12 09:03:09  oman
// - не компилировалось
// - fix: Back(...) работало не как задумывалось.
//
// Revision 1.37  2006/04/07 12:10:12  dinishev
// Bug fix: AV при выходе из тулзы, когда был активен предварительный просмотр
//
// Revision 1.36  2006/03/31 07:42:10  lulin
// - изменен тип параметров, подаваемый в Execte операции.
//
// Revision 1.35  2006/03/31 05:06:02  dinishev
// Bug fix: не компилировалось в связи с изменением параметров _OnTest
//
// Revision 1.34  2006/03/30 15:31:24  lulin
// - изменен тип параметров в _OnTest.
//
// Revision 1.33  2006/03/30 14:01:40  lulin
// - операция инициализации разделена на две - с параметрами и без - для того, чтобы в итоге избавится от первой.
//
// Revision 1.32  2006/03/27 13:02:10  mmorozov
// - new behavioiur: опреация "Экспортировать индивидуальные настройки в файл" доступна при нахождении фокуса в карточке (cq: 17746);
//
// Revision 1.31  2006/03/24 15:15:04  mmorozov
// - cleanup;
//
// Revision 1.30  2006/03/24 12:51:14  mmorozov
// - bugfix: подтверждение при выходе не выдавалось; всегда показывалось окно выбора папки; разделение логики необходимости сохранения и самого сохранения (CQ: 17744);
//
// Revision 1.29  2006/03/20 11:40:20  mmorozov
// - change: порядок модулей;
//
// Revision 1.28  2005/11/21 17:31:59  lulin
// - cleanup.
//
// Revision 1.27  2005/08/29 16:08:05  demon
// - new behavior: Операция Open на ноде теперь возвращает IUnknown
//
// Revision 1.26  2005/07/22 15:08:44  dinishev
// Новая EVD
//
// Revision 1.25  2005/05/27 14:46:27  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.24  2005/05/14 14:37:45  dinishev
// Проверка на предварительный просмотр внесена в используемую во всех случаях процедуру.
//
// Revision 1.23  2005/05/14 14:28:50  dinishev
// Исправление AV при сохранении
//
// Revision 1.22  2005/05/14 09:04:42  dinishev
// Исправление AV при создании переходе по рассылкам в режиме предварительного просмотра
//
// Revision 1.21  2005/04/21 14:07:04  dinishev
// New property: NeedSave
//
// Revision 1.20  2005/04/14 09:42:03  dinishev
// Change: обработка обновления базы
//
// Revision 1.19  2005/04/12 11:27:18  dinishev
// После ожидания 30 сек. после предложния о выключении сервера, появлялось предложение сохранить рассылку.
//
// Revision 1.18  2005/04/01 12:17:54  dinishev
// Избегаем дублирующего подтверждения при закрытии приложения
//
// Revision 1.17  2005/04/01 08:55:22  dinishev
// Вернул проверки на изменение списка, но без сохранения в настройки.
//
// Revision 1.16  2005/03/31 14:00:59  dinishev
// Сообщение о выборе каталога для сохранения списка рассылок, выключение проверок на изменение списка - сразу подымаем диалог при выходе (если только список не был пуст).
//
// Revision 1.15  2005/03/31 12:26:02  dinishev
// Cleanup
//
// Revision 1.14  2005/03/30 11:04:38  dinishev
// Убрана бессмысленная проверка на _IsSet
//
// Revision 1.13  2005/03/29 12:39:10  dinishev
// Проверка, что активна именно форма предварительного просмотра - только тогда возврат по истории.
//
// Revision 1.12  2005/03/29 09:09:03  dinishev
// Bug fix: AV при попытке закрытия приложения из предварительного просмотра.
//
// Revision 1.11  2005/03/28 10:33:17  dinishev
// Remove hint, запоминание номера, только что добавленной рассылки для того, чтобы избежать AV при повторном сохранении.
//
// Revision 1.10  2005/03/25 14:35:28  dinishev
// Сохранение КЗ при выходе, новой операции и т.п.
//
// Revision 1.9  2005/03/25 12:17:44  dinishev
// Кнопка "Новая тема" блокируется, если в списке достугнуто максимальное число рассылок для комплекта.
//
// Revision 1.8  2005/03/24 14:59:43  dinishev
// Проверка необходимости сохранения запроса.
//
// Revision 1.7  2005/03/22 15:13:30  dinishev
// Обработчики событий изменения дерева
//
// Revision 1.6  2005/03/17 15:24:39  dinishev
// Cleanup
//
// Revision 1.5  2005/03/15 17:13:35  dinishev
// Отказ от класса TnsPostingsLine и проверка списка рассылок на изменение.
//
// Revision 1.4  2005/03/15 11:48:30  dinishev
// Запрос о необходимости сохранения списка рассылок при выходе из приложения
//
// Revision 1.3  2005/03/14 16:20:50  dinishev
// Перехала операция сохранения списка рассылок, новые иконки
//
// Revision 1.2  2005/03/11 08:11:25  dinishev
// cleanup
//
// Revision 1.1  2005/03/10 14:57:16  dinishev
// Rename Posting.pas -> enPosting.pas
//

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

  l3Interfaces,
  l3TreeInterfaces,

  afwControl, 
  afwInputControl,
  
  vcmInterfaces, 
  vcmBase, 
  vcmEntityForm, 
  vcmEntities, 
  vcmComponent, 
  vcmBaseEntities,       

  eeInterfaces,
  eeTreeViewExport, 
  eeTreeView, 
  
  OvcBase, 

  vtLister, 
  vtOutliner, 
  vtOutlinerWithQuickSearch,
  vtOutlinerWithDragDrop, l3InterfacedComponent, afwControlPrim,
  afwBaseControl,
  vcmExternalInterfaces,

  PrimPostingsList_Form,
  PrimPostingsListOptions_Form
  ;

type
  TenPostingsList = class(TvcmEntityFormRef)
    Entities : TvcmEntities;
    tvPostings: TeeTreeView;
    procedure vcmEntityFormInit;
    function tvPostingsGetItemImage(Sender: TObject; Index: Integer;
      var aImages: TCustomImageList): Integer;
    procedure vcmEntityFormCloseQuery(Sender: TObject;
      var CanClose: Boolean);
    procedure tvPostingsActionElement(Sender: TObject; Index: Integer);
    procedure vcmEntityFormShow(Sender: TObject);
   private
   // internal fields
    f_OnUpdate: Boolean;
   private
   // property methods
     function pm_GetIsNeedSave: Boolean;
       {-}
   private
   // properties
     property IsNeedSave: Boolean
       read pm_GetIsNeedSave;
       {* - определяет нужно ли сохранять текущие результаты работы при смене
            тематики или закрытии приложения. }
   private
   // internal methods
    function Save: Boolean; override;
      {* - Функция проверяет необходимость сохранения запроса программы.
        Возвращает False, если пользователь нажал "Нет" в предложении сохранить
        запрос. }
    procedure OnAddNode(const aIndex: Integer);
      {-}
    procedure OnDeleteNode(const aIndex: Integer);
      {-}
    procedure OnCaptionChange(const aIndex: Integer; const aNewCaption: Il3CString);
      {-}
   protected
     procedure FinishDataUpdate;
       override;
       {* вызывает по окончании обновления }
  end;

implementation

uses
 SearchRes,
 StdRes,

 l3Tree,
 l3Tree_TLB,
 l3InterfacesMisc,

 vcmForm,

 vtSaveDialog,

 nsPostingsLine,
 nsTypes,

 BaseTreeSupportUnit,
 SearchUnit,
 PrimeUnit,

 PrimeDomainInterfaces,
 MainMenuDomainInterfaces,

 OldTreeInterfaces,
 nsPostingsTreeSingle,
 nsQueryInterfaces
 ;

{$R *.DFM}

procedure TenPostingsList.vcmEntityFormInit;
var
 l_Root: Il3SimpleRootNode;
begin
 tvPostings.Images := nsSearchRes.SearchItemsImageList;
 if Supports(TnsPostingsTreeSingle.Instance.Root, Il3SimpleRootNode, l_Root) then
  tvPostings.TreeStruct.RootNode := l_Root
 else
  Assert(False);
end;

function TenPostingsList.tvPostingsGetItemImage(Sender: TObject;
  Index: Integer; var aImages: TCustomImageList): Integer;
begin
 aImages := nsSearchRes.SearchItemsImageList; 
 Result := siilNewsLineThemeForCreate;
end;

procedure TenPostingsList.vcmEntityFormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 //После выключения сервера сохранять, собственно, нечего.
 if TnsPostingsTreeSingle.Instance.ServerDown then
 begin
  CanClose := True;
  Exit;
 end;//if TnsPostingsTreeSingle.Instance.ServerDown then
 TdmStdRes.CheckHistory;
 if IsNeedSave then
  with TnsPostingsTreeSingle.Instance do
  begin
   CanClose := SaveOrCreateQuery;
   Closed := CanClose;
   if CanClose then
   begin
    if Assigned(MgrSearch) then
     MgrSearch.Modified := False;
    if DataChanged then
     TdmStdRes.SavePostingList;
   end;//if CanClose then
  end;//with TnsPostingsTreeSingle.Instance do
 // Код выше (mop_CommonPost_SavePostingList) будет вызван, если карточка была
 // изменена. Если тематики в процессе работы с праймом удалялись/добавлялись/
 // изменялись, то нужно обязательно вылить папки (для файл серверной версии):
 if CanClose then
  TnsPostingsTreeSingle.Instance.SaveXMLForServer;
end;

procedure TenPostingsList.tvPostingsActionElement(Sender: TObject;
  Index: Integer);
begin
 PostingToolBar_ptEditPosting_Execute(vcmParams);
end;

procedure TenPostingsList.OnAddNode(const aIndex: Integer);
begin
 tvPostings.Current := aIndex; 
 TnsPostingsTreeSingle.Instance.EditNodeIndex := aIndex;
end;

procedure TenPostingsList.OnDeleteNode(const aIndex: Integer);
begin
 // Если из списка рассылок удаляется текущая редактируемая рассылка, то очищаем
 // карточку: 
 if (TnsPostingsTreeSingle.Instance.EditNodeIndex = aIndex) then
  TdmStdRes.OpenPostingOrder(nil);
end;//OnDeleteNode

procedure TenPostingsList.vcmEntityFormShow(Sender: TObject);
begin
 TnsPostingsTreeSingle.Instance.OnAddNode := OnAddNode;
 TnsPostingsTreeSingle.Instance.OnDelNode := OnDeleteNode;
 TnsPostingsTreeSingle.Instance.OnEditNode := OnCaptionChange;
end;

procedure TenPostingsList.OnCaptionChange(const aIndex: Integer;
  const aNewCaption: Il3CString);
var
 l_Node: InsWrapperNode;
begin
 if Supports(tvPostings.GetNode(aIndex), InsWrapperNode, l_Node) then
 try
  tvPostings.Changing;
  l_Node.Name := aNewCaption.AsWStr;
  tvPostings.Changed;
 finally
  l_Node := nil;
 end//try..finally
 else
  Assert(False);
end;//OnCaptionChange

function TenPostingsList.Save: Boolean;
begin
 TdmStdRes.CheckHistory;
 Result := True;
 if IsNeedSave then
  Result := TnsPostingsTreeSingle.Instance.SaveOrCreateQuery;
end;//Save

function TenPostingsList.pm_GetIsNeedSave: Boolean;
begin
 with TnsPostingsTreeSingle.Instance do
  Result := not f_OnUpdate and (MgrSearch <> nil) and MgrSearch.Modified and
   Ask(qr_SavePosting);
end;

procedure TenPostingsList.FinishDataUpdate;

 function IsQueryNew: Boolean;
 // http://mdp.garant.ru/pages/viewpage.action?pageId=294589844
 var
  l_Mgr : IqaMgrSearch;
  l_IsQueryNew : Boolean;
 begin//IsQueryNew
  l_Mgr := TnsPostingsTreeSingle.Instance.MgrSearch;
  try
   if (l_Mgr = nil) then
    l_IsQueryNew := true
   else
    l_IsQueryNew := TnsPostingsTreeSingle.Instance.MgrSearch.IsQueryNew;
  finally
   l_Mgr := nil;
  end;//try..finally
  Result := l_IsQueryNew;
 end;//IsQueryNew

begin
 inherited;
 f_OnUpdate := True;
 try
  if IsQueryNew then
   PostingToolBar_ptNewTheme_Execute(vcmParams)
  else
   PostingToolBar_ptEditPosting_Execute(vcmParams);
 finally
  f_OnUpdate := False;
 end;//try..finally
end;//FinishDataUpdate

end.
