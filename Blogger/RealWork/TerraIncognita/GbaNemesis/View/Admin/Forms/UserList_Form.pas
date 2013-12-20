unit UserList_Form;

{------------------------------------------------------------------------------}
{ Автор      : Тучнин Д.А.;                                                    }
{ Начат      : 15.08.2005 19.00;                                               }
{ Модуль     : enUserList;                                                     }
{ Описание   : Форма для отображения списка пользователей;                     }
{------------------------------------------------------------------------------}

// $Id: UserList_Form.pas,v 1.37 2013/01/22 15:59:35 kostitsin Exp $
// $Log: UserList_Form.pas,v $
// Revision 1.37  2013/01/22 15:59:35  kostitsin
// [$424399029]
//
// Revision 1.36  2011/11/16 17:35:34  lulin
// {RequestLink:232098711}
//
// Revision 1.35  2010/09/10 11:29:34  lulin
// {RequestLink:197496539}.
//
// Revision 1.115  2010/09/10 10:29:25  lulin
// {RequestLink:197496539}.
//
// Revision 1.114  2010/08/31 12:46:15  lulin
// {RequestLink:224134305}.
//
// Revision 1.113  2010/02/26 06:41:29  oman
// - fix: {RequestLink:193134891}
//
// Revision 1.112  2009/12/07 19:10:33  lulin
// - удалил ненужный модуль.
//
// Revision 1.111  2009/12/03 14:33:05  lulin
// {RequestLink:172986031}.
//
// Revision 1.110  2009/12/02 17:21:47  lulin
// {RequestLink:172984885}.
//
// Revision 1.109  2009/11/18 13:06:13  lulin
// - используем базовые параметры операции.
//
// Revision 1.108  2009/11/17 18:11:04  lulin
// {RequestLink:159360578}. №58.
//
// Revision 1.107  2009/11/12 14:32:40  lulin
// - убираем возможность менять список параметров.
//
// Revision 1.106  2009/11/06 13:21:35  oman
// - fix: {RequestLink:168957117}
//
// Revision 1.105  2009/11/06 09:31:54  oman
// - fix: {RequestLink:168957117}
//
// Revision 1.104  2009/10/16 17:00:55  lulin
// {RequestLink:159360578}. №52.
//
// Revision 1.103  2009/10/01 19:12:08  lulin
// - параметризуем фабрики конечных форм приложения.
//
// Revision 1.102  2009/09/10 12:19:15  lulin
// - генерируем файл проекта.
//
// Revision 1.101  2009/07/31 17:30:11  lulin
// - убираем мусор.
//
// Revision 1.100  2009/04/28 11:59:12  oman
// - new: Делаем drop - [$127762671]
//
// Revision 1.99  2009/04/22 08:21:51  oman
// - new: Убираем назначение доступа к базам с пользователя - [$127762671]
//
// Revision 1.98  2009/04/16 06:57:08  oman
// - new: Вернули Удалить и Отключить - [$127762671]
//
// Revision 1.97  2009/04/15 10:09:59  oman
// - new: Подставляем в админ новое дерево - [$127762671]
//
// Revision 1.96  2009/02/20 18:50:47  lulin
// - <K>: 136941122. Убираем передачу параметров при запросе состояния операции.
//
// Revision 1.95  2009/02/12 10:07:31  oman
// - fix: Пишем имя файла (К-104431648)
//
// Revision 1.94  2009/02/12 09:59:39  oman
// - fix: Может приехать пустой ds (К-136268640)
//
// Revision 1.93  2009/02/12 09:36:42  oman
// - fix: Может приехать пустой ds (К-136268640)
//
// Revision 1.92  2009/02/10 19:03:38  lulin
// - <K>: 133891247. Вычищаем морально устаревший модуль.
//
// Revision 1.91  2009/02/10 15:43:34  lulin
// - <K>: 133891247. Выделяем интерфейсы локализации.
//
// Revision 1.90  2009/01/30 13:51:33  lulin
// - чистка кода.
//
// Revision 1.89  2008/12/29 16:40:55  lulin
// - <K>: 134316705.
//
// Revision 1.88  2008/12/24 19:49:23  lulin
// - <K>: 121153186.
//
// Revision 1.87  2008/12/22 18:15:28  lulin
// - <K>: 128288718.
//
// Revision 1.86  2008/12/22 17:51:14  lulin
// - <K>: 128288718. Первый взлёт.
//
// Revision 1.85  2008/12/19 12:41:50  lulin
// - <K>: 128288713. Подкладываем под форму контроллер области ввода.
//
// Revision 1.84  2008/12/19 09:59:47  lulin
// - <K>: 128288713. Хак для того, чтобы наследоваться от сгенерированных форм.
//
// Revision 1.83  2008/12/17 14:20:14  lulin
// - отказ от наследования, т.к. Delphi это не понимает.
//
// Revision 1.82  2008/12/17 14:18:43  lulin
// - <K>: 128288713.
//
// Revision 1.81  2008/12/08 09:33:07  lulin
// - <K>: 128292941.
//
// Revision 1.80  2008/11/19 19:18:48  lulin
// - <K>: 124944838.
//
// Revision 1.79  2008/10/21 09:38:31  oman
// - fix: Неверно отдавали операцию контролу (К-121156669)
//
// Revision 1.78  2008/10/21 08:52:22  oman
// - fix: Неверно перефильтровывали (К-121156848)
//
// Revision 1.77  2008/09/16 09:17:18  oman
// - fix: Открываем операцию (К-116851579)
//
// Revision 1.76  2008/07/22 10:42:47  oman
// - new: Отключение пищалки - везде кроме КЗ (К-103940886)
//
// Revision 1.75  2008/06/23 10:36:15  oman
// - new: Меняем доступ из списка пользователей (cq29373)
//
// Revision 1.74  2008/03/18 09:21:14  lulin
// - <K>: 87197434.
//
// Revision 1.73  2008/01/26 11:48:43  mmorozov
// - new: реализация отложенного обновления связанного с деревом представления при смене текущего (K<79858456>).
//
// Revision 1.72  2008/01/10 07:23:06  oman
// Переход на новый адаптер
//
// Revision 1.71  2007/12/25 11:32:02  mmorozov
// - new: подписка на обновление данных приложения (CQ: OIT5-27823);
//
// Revision 1.70  2007/12/21 07:12:28  mmorozov
// - new: подписка на уведомление об обновлении данных (CQ: OIT5-27823);
//
// Revision 1.69  2007/12/03 12:12:56  oman
// - fix: Контекстно запрещаем привилегированность для
//  одиночного пользователя (cq27766)
//
// Revision 1.68  2007/11/16 13:09:37  oman
// - new: операции для привилегированных пользователей  стали
//  негрупповыми (cq27255)
//
// Revision 1.67  2007/11/15 12:33:40  oman
// - new: Групповые операции для привилегированных пользователей  (cq27255)
//
// Revision 1.66  2007/11/15 07:39:11  oman
// - new: Заготовка для новых иконок (cq27255)
//
// Revision 1.65  2007/11/14 15:06:50  oman
// - new: Корректируем список фильтров на переключении баз (cq27255)
//
// Revision 1.64  2007/10/17 11:12:56  oman
// - fix: Более правильно публикуем операции (cq27106)
//
// Revision 1.63  2007/09/25 03:58:29  mmorozov
// - new behaviour: для чтения\изменения текущего выбранного значения для операций типа vcm_otDate, vcm_otCombo, vcm_otEditCombo используем свойство параметров _SelectedString, раньше Caption. Тем самым Caption для этих типов операций стал изменяемым (в рамках работы CQ: OIT5-26741);
//
// Revision 1.62  2007/07/30 07:01:07  oman
// - new: Контекстное меню для администратора (cq25987)
//
// Revision 1.61  2007/06/21 12:00:55  mmorozov
// - new: запрет авторегистрации (CQ: OIT5-25328);
//
// Revision 1.60  2007/06/13 09:21:29  oman
// - fix: Перепутаны состояния операции местами
//
// Revision 1.59  2007/06/05 12:20:01  oman
// - fix: Не было обработки исключения (cq25571)
//
// Revision 1.58  2007/05/24 14:13:28  oman
// - new: Мультиоперации в администраторе (удалить, права на консалтинг
//  и отключить)  (cq25336)
//
// Revision 1.57  2007/05/22 13:57:05  oman
// - fix: При выводе информации в статусбар не учитывали возможность
//  отфильтровать все (cq25381)
//
// Revision 1.56  2007/05/04 11:39:18  mmorozov
// - new: запрет авторегистрации (CQ: OIT5-25217);
//
// Revision 1.55  2007/04/10 07:42:18  oman
// - fix: Более гуманно подсчитываем число пользователей и групп (cq24954)
//
// Revision 1.54  2007/04/10 07:22:47  oman
// - new: Выводим информацию в статусной строке для списка
//  пользователей в админе (cq24954)
//
// Revision 1.53  2007/04/05 10:22:36  lulin
// - избавляемся от лишних преобразований строк.
//
// Revision 1.52  2007/04/02 07:40:42  oman
// - fix: Вернул обратно ResetData
//
// Revision 1.51  2007/03/22 10:12:06  oman
// - new: Реакция на переключение баз - первое приближение (cq24456)
//
// Revision 1.50  2007/03/21 15:52:43  oman
// - new: Новое свойство ContextFilterTarget
//  Более адекватное обновление IsContextWrong
//  Реакция на внешнее изменение параметров контекстной
//   фильтрации (cq24456)
//
// Revision 1.49  2007/03/20 09:13:32  oman
// - new: Поддержка "внешнего ввода" в контекстный фильтр от
//  дерева (cq24456)
//
// Revision 1.48  2007/03/19 11:35:26  lulin
// - разделяем приведение к строке для форматирования и для исключения.
//
// Revision 1.47  2007/03/19 10:49:23  oman
// - new: Дерево пользователей переведно на новый фильтр (cq24456)
//
// Revision 1.46  2007/03/16 13:34:32  oman
// cleanup
//
// Revision 1.45  2007/03/16 07:48:30  oman
// - new: Положили новый контекстный фильтр (cq24456)
//
// Revision 1.44  2007/03/05 11:30:46  oman
// - fix: Опечатка в названии константы
//
// Revision 1.43  2007/02/13 14:33:23  lulin
// - cleanup.
//
// Revision 1.42  2007/02/13 12:08:53  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.41  2007/02/12 16:39:07  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.40  2007/02/07 19:13:33  lulin
// - переводим мапы на строки с кодировкой.
//
// Revision 1.39  2007/01/30 15:24:21  lulin
// - текст ноды - теперь более простого типа.
//
// Revision 1.38  2007/01/26 14:34:22  lulin
// - поправил обращение к неправильному параметру.
//
// Revision 1.37  2007/01/17 14:03:00  lulin
// - вычищены последние нефиксированные параметры в тестах операций.
//
// Revision 1.36  2007/01/16 14:13:16  lulin
// - избавляемся от нефиксированного параметра - заголовка операции.
//
// Revision 1.35  2007/01/10 13:58:52  lulin
// - от параметра по индексу переходим к свойству в параметрах операции.
//
// Revision 1.34  2006/12/22 15:06:31  lulin
// - текст ноды - теперь структура с длиной и кодовой страницей.
//
// Revision 1.33  2006/12/20 13:34:14  lulin
// - удален ненужный модуль.
//
// Revision 1.32  2006/12/05 14:15:51  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.31  2006/12/05 13:49:54  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.30  2006/11/27 10:35:25  mmorozov
// - MERGE WITH B_NEMESIS_6_4;
//
// Revision 1.29  2006/11/10 16:00:03  oman
// Merge from B_NEMESIS_6_4
//
// Revision 1.28  2006/11/03 09:45:58  oman
// Merge with B_NEMESIS_6_4_0
//
// Revision 1.27.4.1.2.2  2006/11/10 11:36:39  oman
// - fix: Не обновлялись свойства пользователя (cq23515)
//
// Revision 1.27.4.1.2.1  2006/11/08 15:29:10  oman
// - new: Новые операции по запрету платных консультаций (cq23515)
//
// Revision 1.27.4.1  2006/10/25 07:29:52  oman
// Продолжаем избавлятся от StdStr
//
// Revision 1.27  2006/04/17 07:18:55  oman
// - change: Избавляем бизнес-объекты (слой модели) от обязательств
//  контроллера (хинты, imageindex)
// - new beh: перекладываем StdStr в _StdRes
//
// Revision 1.26  2006/04/12 13:15:09  oman
// - change: перевод механизма локализации строк на использование фабрик
// - new beh: Локализация nsc
//
// Revision 1.25  2006/04/03 12:01:55  oman
// - new beh: Перевод на механизм мап "строка для отображения в UI"-<нечто>.
//
// Revision 1.24  2006/03/31 07:42:17  lulin
// - изменен тип параметров, подаваемый в Execte операции.
//
// Revision 1.23  2006/03/30 15:31:31  lulin
// - изменен тип параметров в _OnTest.
//
// Revision 1.22  2006/03/24 15:11:15  oman
// - new beh: переход с _OnTest на OnGetState для операций
//
// Revision 1.21  2006/03/20 09:27:58  oman
// - new beh: Перекладываем все текстовые константы в три места (StdStr, DebugStr и SystemStr)
//
// Revision 1.20  2006/03/13 15:00:43  mmorozov
// - new behaviour: не держим бизнес объект на форме всегда получаем его из _DataSource формы;
//
// Revision 1.19  2005/11/24 15:49:02  oman
// - new behavior: избавление отIProfileNodeNew, поддержка состояния
//   "пользователь отключается"
//
// Revision 1.18  2005/11/22 11:05:37  oman
// - fix: При хождении по истрии не сохранялся фильтр
//
// Revision 1.17  2005/10/21 12:03:08  lulin
// - вычищено использование реализации ImageList'ов в интерфейсах бизнес-объектов.
//
// Revision 1.16  2005/09/28 18:15:07  mmorozov
// new: в событии ChangedDataSource появился параметр aFromHistory;
//
// Revision 1.15  2005/09/02 12:59:31  demon
// - new behavior: добавлен запрет на удаление системмных пользователей
//
// Revision 1.14  2005/09/02 12:34:48  demon
// - new behavior: Запрещено удаление активного пользователя
//
// Revision 1.13  2005/08/31 15:32:39  demon
// - fix: неверный хинт к операции "Удалить пользователя"
//
// Revision 1.12  2005/08/30 13:00:40  demon
// - new icons: для Администратора пользователей
//
// Revision 1.11  2005/08/22 16:36:10  demon
// - new behavior: реализована операция фильтрации дерева пользователей
//
// Revision 1.10  2005/08/19 16:42:26  demon
// - new behavior: добавлена операция отключения пользователя
//
// Revision 1.9  2005/08/19 15:24:28  demon
// - new behavior: реализована операция создания нового пользователя
//
// Revision 1.8  2005/08/19 14:08:53  demon
// - new behavior: добавлена операция создания нового пользователя
//
// Revision 1.7  2005/08/19 11:17:56  demon
// - new behavior: подтверждение при удалении пользователя
//
// Revision 1.6  2005/08/19 10:51:03  demon
// - new behavior: Удаление пользователя
//
// Revision 1.5  2005/08/18 13:48:11  demon
// - new behavior: реализовано перечитывание дерева пользователей с сохранением текущего
//
// Revision 1.4  2005/08/16 16:28:55  demon
// - new behavior: обработка смены текущего элемента
//
// Revision 1.3  2005/08/16 13:20:48  demon
// - new behavior: Сохранение/загрузка в историю FormDataSource
//
// Revision 1.2  2005/08/16 11:41:10  demon
// - new behavior: подключена базовая реализация работы с деревом (показ иконок)
//
// Revision 1.1  2005/08/15 18:18:41  demon
// - new behavior: формы для интерфейса администратора
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

 l3Interfaces,
 l3TreeInterfaces,
 l3Types,

 OvcBase,

 afwInputControl,
 afwControl,

 vtLister,
 vtOutliner,
 vtOutlinerWithQuickSearch,
 vtOutlinerWithDragDrop,
 vtPanel,

 eeTreeViewExport,
 eeTreeView,

 vcmInterfaces,
 vcmBase,
 vcmEntityForm,
 vcmEntities,
 vcmComponent,
 vcmBaseEntities,
 vcmExternalInterfaces,

 nscContextFilter,

 afwControlPrim, afwBaseControl, afwTextControlPrim,
  afwTextControl,

 L10nInterfaces, 

 AdminInterfaces,

 l3InterfacedComponent,

 PrimUserListOptions_Form 
 ;

type
  TefUserList = class(TvcmEntityFormRef)
    Entities : TvcmEntities;
    BackgroundPanel: TvtPanel;
    ContextFilter: TnscContextFilter;
    trUserList: TeeTreeView;

    procedure vcmEntityFormChangedDataSource(aSender: TObject;
                                             const aOld, aNew: IvcmFormDataSource;
                                             const aFromHistory : Boolean);
    function trUserListGetItemImage(Sender: TObject; Index: Integer;
                                    var aImages: TCustomImageList): Integer;
    procedure trUserListCurrentChanged(Sender: TObject; aNewCurrent,
                                       aOldCurrent: Integer);
    procedure vcmEntityFormInit;
    procedure ContextFilterChange(Sender: TObject);
    procedure trUserListNewCharPressed(aChar: Char);
    procedure trUserListCountChanged(Sender: TObject; NewCount: Integer);
    procedure trUserListSelectCountChanged(aSender: TObject; anOldCount,
      aNewCount: Integer);
    procedure trUserListFormatStatusInfo(aSender: TObject;
      var Info: Il3CString; const aCurrent, aCount, aSelected: Integer);
    procedure trUserListTreeChanged(aSender: TObject; const anOldTree,
      aNewTree: Il3SimpleTree);
    procedure ContextFilterWrongContext(Sender: TObject);
  end;

implementation

{$R *.DFM}

uses
  l3String,
  l3Base,
  l3Utils,

  eeInterfaces,

  bsTypes,
  dsForbidAutoregistration,

  nsTypes,
  nsValueMapsIDs,
  nsValueMaps,
  nsTreeUtils,
  nsUtils,

  DataAdapter,
  GBLAdapter,

  SecurityUnit,

  StdRes,
  AdminRes
  ;

procedure TefUserList.vcmEntityFormChangedDataSource(aSender: TObject;
                                                     const aOld, aNew: IvcmFormDataSource;
                                                     const aFromHistory : Boolean);
var
 l_CurrentNode: IdeNode;
 l_Current: LongInt;
begin
 if Assigned(ViewArea) then
 begin
  l_CurrentNode := ViewArea.GetFrosenNode(trUserList.GetCurrentNode);
  with trUserList do
  begin
   Images := ViewArea.ImageList.Hack;
   if not aFromHistory then
   begin
    TreeStruct := ViewArea.SimpleTree;
    ContextFilter.AssignState(ViewArea.CurrentContextFilter);
   end;
   UpdateStatusInfo;
   if Assigned(l_CurrentNode) then
   begin
    // Дерево перегружают надо восстановить текущий и уведомить других об этом
    l_Current := ViewArea.FindFrosenNode(l_CurrentNode, ShowRoot);
    if l_Current >= 0 then
     Current := l_Current;
    ViewArea.CurrentChanged(trUserList.GetCurrentNode);
   end;
  end;

  ContextFilter.UpdateIsContextWrong;
 end;
end;

function TefUserList.trUserListGetItemImage(Sender: TObject;
                                            Index: Integer;
                                            var aImages: TCustomImageList): Integer;
const
 cImageIndexMap: array [TbsUserNodeType] of Integer = (
  ciiUser, // untUnknownUser,
  ciiAdmin, // untActiveSystem,
  ciiUser, // untActiveNonSystem,
  ciiAdmin_NA, // untInactiveSystem,
  ciiUser_NA, // untInactiveNonSystem,
  ciiExiting, // untExiting
  ciiPriveleged, // untActivePrivileged
  ciiPriveleged_NA // untInActivePrivileged
 );
begin
 if Assigned(ViewArea) then
  Result := cImageIndexMap[ViewArea.UserListNodeType(trUserList.GetNode(Index))]
 else
  Result := ciiUser_NA;
end;

procedure TefUserList.trUserListCurrentChanged(Sender: TObject;
                                               aNewCurrent, aOldCurrent: Integer);
begin
 UpdateCurrent;
end;

procedure TefUserList.vcmEntityFormInit;
begin
 ContextFilter.Images := dmStdRes.SmallImageList;
 UpdateStatusInfo;
end;

procedure TefUserList.ContextFilterChange(Sender: TObject);
var
 l_TreeSource: Il3SimpleTree;
 l_Current: Integer;
begin
 with trUserList do
 begin
  l_TreeSource := ViewArea.FiltrateByContext(TreeStruct, GetCurrentNode,
   ContextFilter.MakeState, l_Current);
  if Assigned(l_TreeSource) and (l_TreeSource.CountView > 0) then
  begin
   Changing;
   try
    LockChangeSelected;
    try
     TreeStruct := l_TreeSource;
    finally
     UnLockChangeSelected;
    end;
   finally
    Changed;
   end;
   Current := l_Current;
  end;
 end;
end;

procedure TefUserList.trUserListNewCharPressed(aChar: Char);
begin
 ContextFilter.PressChar(aChar);
end;

procedure TefUserList.trUserListCountChanged(Sender: TObject;
  NewCount: Integer);
begin
 UpdateStatusInfo;
end;

procedure TefUserList.trUserListSelectCountChanged(aSender: TObject;
  anOldCount, aNewCount: Integer);
begin
 UpdateStatusInfo;
end;

procedure TefUserList.trUserListFormatStatusInfo(aSender: TObject;
  var Info: Il3CString; const aCurrent, aCount, aSelected: Integer);
begin
 if trUserList.TreeStruct.RootNode.HasChild then
  Info := vcmFmt(vcmCStr(str_UserListStatus),[trUserList.TreeStruct.RootNode.ThisChildrenCount, aSelected])
 else
  Info := nil;
end;

procedure TefUserList.trUserListTreeChanged(aSender: TObject;
  const anOldTree, aNewTree: Il3SimpleTree);
begin
 UpdateStatusInfo;
end;

procedure TefUserList.ContextFilterWrongContext(Sender: TObject);
begin
 nsBeepWrongContext;
end;

end.