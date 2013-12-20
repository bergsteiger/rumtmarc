unit NewsLine_Form;

// $Id: NewsLine_Form.pas,v 1.7 2013/05/29 16:17:34 lulin Exp $

// $Log: NewsLine_Form.pas,v $
// Revision 1.7  2013/05/29 16:17:34  lulin
// - портируем под XE4.
//
// Revision 1.6  2011/11/16 17:35:57  lulin
// {RequestLink:232098711}
//
// Revision 1.5  2011/11/16 13:26:13  gensnet
// http://mdp.garant.ru/pages/viewpage.action?pageId=288010012
// На InsNewsLine удалены Get_IsNewsLineDefined и IsNewsLineDefined
//
// Revision 1.4  2010/09/13 06:35:55  lulin
// {RequestLink:197496539}.
// - №2.
//
// Revision 1.3  2010/09/08 17:09:49  lulin
// {RequestLink:197496539}.
//
// Revision 1.2  2010/09/08 16:36:53  lulin
// {RequestLink:197496539}.
//
// Revision 1.73  2010/06/21 10:29:47  oman
// - fix: {RequestLink:219121791}
//
// Revision 1.72  2010/05/20 12:37:34  oman
// - fix: {RequestLink:214598155}
//
// Revision 1.71  2010/04/29 09:43:52  lulin
// {RequestLink:159352361}.
// - описываем идентификаторы форм на модели.
//
// Revision 1.70  2010/04/23 19:13:50  lulin
// {RequestLink:159352361}.
//
// Revision 1.69  2009/11/18 13:06:09  lulin
// - используем базовые параметры операции.
//
// Revision 1.68  2009/11/12 15:31:47  lulin
// {RequestLink:171540596}.
//
// Revision 1.67  2009/11/12 14:32:37  lulin
// - убираем возможность менять список параметров.
//
// Revision 1.66  2009/11/10 12:29:23  lulin
// - перестаём выливать идентификаторы внутренних операций.
//
// Revision 1.65  2009/10/16 17:00:53  lulin
// {RequestLink:159360578}. №52.
//
// Revision 1.64  2009/09/07 07:57:30  lulin
// - для открытия автореферата делаем фабрику.
//
// Revision 1.63  2009/08/24 08:36:49  lulin
// - переносим системные операции на модель.
//
// Revision 1.62  2009/04/29 07:20:12  oman
// - new: Подчищаем остатки - [$145097386]
//
// Revision 1.61  2009/04/28 14:22:19  oman
// - new: Перепиливаем на дерево - [$145097386]
//
// Revision 1.60  2009/04/28 13:04:55  oman
// - new: Внешний вид - [$145097386]
//
// Revision 1.59  2009/02/11 14:00:58  lulin
// - вычищены ненужные обращения к контроллеру области вывода.
// - убран ненужный утилитный метод.
//
// Revision 1.58  2009/02/10 19:04:03  lulin
// - <K>: 133891247. Вычищаем морально устаревший модуль.
//
// Revision 1.57  2009/02/10 14:43:25  lulin
// - <K>: 133891247. Переносим интерфейсы Прайма.
//
// Revision 1.56  2009/01/27 08:16:28  lulin
// - <K>: 135607658.
//
// Revision 1.55  2008/12/24 19:49:51  lulin
// - <K>: 121153186.
//
// Revision 1.54  2008/11/27 21:00:43  lulin
// - <K>: 122674167.
//
// Revision 1.53  2008/04/03 08:06:38  oman
// - fix: Неверная огранизация слушанья нотификации о переключении баз (cq28766)
//
// Revision 1.52  2008/01/10 07:23:08  oman
// Переход на новый адаптер
//
// Revision 1.51  2007/12/27 16:42:10  mmorozov
// - new: новая сборка для показа автореферата после поиска, без вкладки со списком новостных лент (CQ: OIT5-27876);
//
// Revision 1.50  2007/12/25 11:32:05  mmorozov
// - new: подписка на обновление данных приложения (CQ: OIT5-27823);
//
// Revision 1.49  2007/12/19 10:59:40  mmorozov
// - подписываемся на уведомления данных приложения (CQ: OIT5-27823);
//
// Revision 1.48  2007/11/01 13:51:23  oman
// - fix: Не показывалось название новостной ленты (cq27265)
//
// Revision 1.46  2007/09/25 03:58:33  mmorozov
// - new behaviour: для чтения\изменения текущего выбранного значения для операций типа vcm_otDate, vcm_otCombo, vcm_otEditCombo используем свойство параметров _SelectedString, раньше Caption. Тем самым Caption для этих типов операций стал изменяемым (в рамках работы CQ: OIT5-26741);
//
// Revision 1.45  2007/07/26 12:27:50  oman
// - fix: Заточки для локализации vtHeader (cq24480)
//
// Revision 1.44  2007/06/09 11:31:24  oman
// - fix: Не пытаемся насильно переключать вкладки в навигаторе -
//  он сам все умеет и намного лучше (cq25622)
//
// Revision 1.43  2007/04/09 07:07:34  oman
// - fix: Новостную ленту включаем в сборку автореферата - не
//  полномасштабно, а лишьдля того чтобы она закрывалась вместе
//  с авторефератом и сохранялась в историю (cq24583)
//
// Revision 1.42  2007/03/16 16:57:16  lulin
// - избавляемся от излишнего копирования и преобразования строк.
//
// Revision 1.41  2007/02/28 13:36:25  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.40  2007/02/16 17:17:33  lulin
// - избавляемся от стандартного строкового типа.
//
// Revision 1.39  2007/02/13 14:33:31  lulin
// - cleanup.
//
// Revision 1.38  2007/02/13 12:52:05  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.37  2007/02/13 12:08:59  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.36  2007/02/07 17:48:54  lulin
// - избавляемся от копирования строк при чтении из настроек.
//
// Revision 1.35  2007/01/26 14:34:23  lulin
// - поправил обращение к неправильному параметру.
//
// Revision 1.34  2007/01/17 14:03:08  lulin
// - вычищены последние нефиксированные параметры в тестах операций.
//
// Revision 1.33  2007/01/16 14:13:20  lulin
// - избавляемся от нефиксированного параметра - заголовка операции.
//
// Revision 1.32  2007/01/10 13:58:56  lulin
// - от параметра по индексу переходим к свойству в параметрах операции.
//
// Revision 1.31  2006/12/20 13:34:22  lulin
// - удален ненужный модуль.
//
// Revision 1.30  2006/12/05 14:16:03  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.29  2006/12/05 13:50:03  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.28  2006/11/22 13:47:22  mmorozov
// MERGE WITH B_NEMESIS_6_4 (bugfix: открывался аналитический обзор, после обновления базы, в случае открытой новостной ленты (CQ: OIT5-23635));
//
// Revision 1.27  2006/11/22 11:41:29  mmorozov
// MERGE WITH B_NEMESIS_6_4 (bugfix: новостная лента дважды попадала в историю (CQ: OIT5-23716) + чистим неиспользуемые операции и закоментированный код);
//
// Revision 1.26  2006/11/17 09:28:43  oman
// Merge from B_NEMESIS_6_4
//
// Revision 1.25  2006/11/15 15:59:24  oman
// Merge from B_NEMESIS_6_4
//
// Revision 1.24.4.2  2006/11/17 09:21:00  oman
// - fix: CorbaUnknown на переключении баз (cq23663)
// - revert: После переключеия баз будет паразитный подъем новостной
//  ленты - лечить надо подругому (cq23635)
//
// Revision 1.24.4.1  2006/11/15 15:56:31  oman
// - fix: При переключении баз паразитно поднималась новостная
//  лента, плюс форма с авторефератом пересоздавалась на каждый
//  чих (cq23635)
//
// Revision 1.24  2006/10/09 13:43:12  mmorozov
// - bugfix: новостная лента не перечитывалась после обновления базы (CQ: OIT500022933);
//
// Revision 1.23  2006/05/12 07:14:50  mmorozov
// - изменения накопившиеся за время отсутствия CVS;
//
// Revision 1.22  2006/03/31 07:42:33  lulin
// - изменен тип параметров, подаваемый в Execte операции.
//
// Revision 1.21  2006/03/30 15:31:43  lulin
// - изменен тип параметров в _OnTest.
//
// Revision 1.20  2006/03/30 14:01:56  lulin
// - операция инициализации разделена на две - с параметрами и без - для того, чтобы в итоге избавится от первой.
//
// Revision 1.19  2005/10/06 12:32:29  mmorozov
// - из бизнес объекта документа и бизнес объекта сборки документа (тоже касается интерфейсов) выделен базовый класс от которого наследуются созданные бизнес объекты Автореферата, Толкового словаря и Документа;
//
// Revision 1.18  2005/09/09 13:33:05  demon
// - new behavior: сообщение при ненастроенной новостной ленте "Прайм"
//
// Revision 1.17  2005/09/09 11:37:54  demon
// - fix: при переключении новостной ленты дважды дергалось GetEntity
//
// Revision 1.16  2005/05/27 14:46:45  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.15  2005/05/14 08:41:29  demon
// - fix: не сбрасывали новостную ленту, если при обновлении пропадал Прайм.
//
// Revision 1.14  2005/05/12 09:53:24  demon
// - new behavior: при смене тематики рассылки автоматически открываем первый автореферат в этой тематике.
//
// Revision 1.13  2005/04/07 10:36:07  demon
// - new behavior: обработана новая операция op_System_CommonDataChanged. По ней перечитываем новостную ленту.
//
// Revision 1.12  2005/04/07 10:29:11  am
// bugfix: перенабор тематик после апдейта
//
// Revision 1.11  2005/04/06 10:21:41  am
// change: после апдейта сбрасываем набранный список тематик
//
// Revision 1.10  2005/03/22 11:31:57  demon
// - new behavior: операции управления видимостью закладки "Моя новостная лента".
// - new behavior: Открываем автореферат в операции модуля OpenNewsLineInt, если он еще не на экране
//
// Revision 1.9  2005/03/21 09:30:57  am
// bugfix: если форма документа была открыта, открываем автореферат с правильным usertype'ом
//
// Revision 1.8  2005/03/17 09:04:13  am
// new: реализация Update'а
//
// Revision 1.7  2005/03/06 13:43:13  demon
// - fix: AV при открытии формы "Моя новостная лента"
//
// Revision 1.6  2005/02/28 15:58:18  demon
// - new behavior: сохранение и загрузка активной тематики в настройки
//
// Revision 1.5  2005/02/28 12:17:35  demon
// - new behavior: контекстная операция "Открыть автореферат"
// - new behavior: при открытии вкладки "Моя новостная лента", если в основном окне не автореферат открываем автореферат по первому вхождению.
//
// Revision 1.4  2005/02/28 10:14:23  demon
// - new behavior: при переключении тематик сбрасываем Current
//
// Revision 1.3  2005/02/24 16:34:47  demon
// - new behavior: отработано открытие окна автореферата из "Моей новостной ленты"
//
// Revision 1.2  2005/02/22 16:28:51  demon
// - new behavior: начата реализация основных операций на базе интерфейса _InsNewsLine
//

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, l3Interfaces,
  vcmInterfaces, vcmBase, vcmEntityForm, vcmEntities,
  vcmComponent, vcmBaseEntities, OvcBase,  vtLister, vtOutliner,
  vtOutlinerWithQuickSearch,
  vtOutlinerWithDragDrop, eeTreeViewExport, eeTreeView,
  afwControl, afwInputControl, afwControlPrim, afwBaseControl,

  vcmExternalInterfaces,

  l3InterfacedComponent,
  l3TreeInterfaces,

  PrimeInterfaces, ImgList,

  PrimNewsLine_Form, nscTreeView,

  PrimNewsLineOptions_Form
  ;

type
  TenNewsLine = class(TvcmEntityFormRef,
                      InsNewsLineNotifier)
    Entities: TvcmEntities;
    DateList: TnscTreeView;

    procedure vcmEntityFormInit;
    procedure vcmEntityFormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DateListActionElement(Sender: TObject; Index: Integer);
    procedure SwitcheropSetActiveExecute(const aParams: IvcmExecuteParams);
    function DateListGetItemImage(Sender: TObject; Index: Integer;
      var aImages: TCustomImageList): Integer;
   protected
    procedure Cleanup;
     override;
      {-}
   private
   // internal fields
    f_Subscribed: Boolean;
   private
   // internal methods
    procedure UpdateNewsLineTree; override;
      {-}
    procedure ResetThemeList; override;
      {-}
    procedure OpenAutoreferat(const aNode : Il3SimpleNode;
                              AllowOpen : Boolean = True); override;
      {-}
  protected
  // InsNewsLineNotifier
    procedure DataChanged;
  end;//TenNewsLine

implementation

{$R *.DFM}

uses
  l3String,

  vcmForm,

  StdRes,
  SearchRes,

  DataAdapter,

  DocumentUnit,

  nsTypes,
  nsNewsLine,

  AutoreferatInterfaces,

  DocumentUserTypes_dftAutoreferat_UserType,
  Common_FormDefinitions_Controls
  ;

procedure TenNewsLine.UpdateNewsLineTree;
var
 l_Tree: Il3SimpleTree;
begin
 l_Tree := nsNewsLineTree.MakeCurrentThemeTreeStruct;
 DateList.TreeStruct := l_Tree;
 if Assigned(l_Tree) then
  DateList.Current := 0
 else
  DateList.Current := -1;
end;

procedure TenNewsLine.vcmEntityFormInit;
begin
 DateList.Images := nsSearchRes.SearchItemsImageList;
 nsNewsLineTree.Subscribe(Self);
 f_Subscribed := True;
 nsNewsLineTree.LoadThemeFromSettings;

 UpdateNewsLineTree;
 f_UpdateFlag := false;
end;

procedure TenNewsLine.vcmEntityFormCloseQuery(Sender: TObject;
                                              var CanClose: Boolean);
begin
 nsNewsLineTree.SaveThemeToSettings;
end;

procedure TenNewsLine.OpenAutoreferat(const aNode : Il3SimpleNode;
                                      AllowOpen : Boolean = True);
var
 l_Document: IDocument;
begin
 l_Document := nsNewsLineTree.ExtractAutoReferat(aNode);
 if Assigned(l_Document) then
 begin
  // После обновления базы, перечитываем аналитическую ленту, только если она
  // открыта на экране, в остальных случаях просто открываем:
  if AllowOpen or NativeMainForm.HasForm(fm_TextForm.rFormID, vcm_ztParent,
   True, nil, dftAutoreferat) then
  // Создадим сборку:
   TdmStdRes.OpenAutoreferat(l_Document, nil);
 end;//Assigned(l_Document)
end;

procedure TenNewsLine.DateListActionElement(Sender: TObject; Index: Integer);
begin
 OpenAutoreferat(DateList.GetNode(Index));
end;

procedure TenNewsLine.ResetThemeList;
begin
 UpdateNewsLineTree;
 OpenAutoreferat(DateList.GetCurrentNode, False);
 f_UpdateFlag := true;
end;

procedure TenNewsLine.SwitcheropSetActiveExecute(const aParams: IvcmExecuteParams);
begin
 SetActiveInParent;
end;

procedure TenNewsLine.Cleanup;
begin
 if f_Subscribed then
  nsNewsLineTree.UnSubscribe(Self);
 f_Subscribed := False;
 inherited;
end;

procedure TenNewsLine.DataChanged;
begin
 ResetThemeList;
end;

function TenNewsLine.DateListGetItemImage(Sender: TObject; Index: Integer;
  var aImages: TCustomImageList): Integer;
begin
 Result := siilNewsLineTheme;
end;

end.
