unit treedrop;

// $Id: treedrop.pas,v 1.49 2013/02/13 10:14:49 lulin Exp $

// $Log: treedrop.pas,v $
// Revision 1.49  2013/02/13 10:14:49  lulin
// - убираем лишние зависимости.
//
// Revision 1.48  2012/10/29 16:57:28  lulin
// - вычищаем поддержку ветки редактора.
//
// Revision 1.47  2012/10/26 14:55:12  lulin
// {RequestLink:406489593}
//
// Revision 1.46  2012/10/26 14:16:55  lulin
// {RequestLink:406489593}
//
// Revision 1.45  2011/10/27 15:17:54  vkuprovich
// {RequestLink:287219888}
// Выпадающий список БП выходил за границы экрана
//
// Revision 1.44  2011/08/31 16:22:44  vkuprovich
// {RequestLink:281509932}
//
// Revision 1.43  2011/08/29 15:58:08  vkuprovich
// {RequestLink:273598933}
// Запоминаем ширину выпадающего списка
//
// Revision 1.42  2011/08/26 13:50:57  vkuprovich
// {RequestLink:273598933}
// Адаптируем ширину выпадающего списка в БП
//
// Revision 1.41  2011/02/17 10:47:16  lulin
// {RequestLink:253659765}.
// - вычищаем мусорок.
//
// Revision 1.40  2011/02/04 13:23:41  lulin
// {RequestLink:252524367}.
//
// Revision 1.39  2010/12/08 16:03:42  lulin
// {RequestLink:228688602}.
// - мигаем рамкой.
//
// Revision 1.38  2010/12/08 11:11:41  lulin
// {RequestLink:228688602}.
// - подружил дерево с внешней кнопкой.
// - поправил размеры новой формы БП.
//
// Revision 1.37  2010/02/10 13:32:35  oman
// - fix: {RequestLink:190677880}
//
// Revision 1.36  2010/02/05 11:23:14  oman
// - fix: {RequestLink:186352046}
//
// Revision 1.35  2010/02/03 13:59:37  oman
// - fix: {RequestLink:185831026}
//
// Revision 1.34  2010/02/02 16:55:44  lulin
// {RequestLink:185828256}. Попытка анализа ситуации.
//
// Revision 1.33  2010/02/01 09:53:58  oman
// - new: {RequestLink:184975543}
//
// Revision 1.32  2009/12/16 07:42:01  oman
// - new: {RequestLink:173933662}
//
// Revision 1.31  2009/09/07 07:53:48  lulin
// - чистка кода.
//
// Revision 1.30  2009/07/14 14:56:54  lulin
// {RequestLink:141264340}. №25.
//
// Revision 1.29  2009/07/13 12:31:56  lulin
// {RequestLink:141264340}. №23ac.
//
// Revision 1.28  2009/07/11 15:55:24  lulin
// {RequestLink:141264340}. №22.
//
// Revision 1.27  2009/04/13 11:16:15  oman
// - new: Готовим потроха - [$143392959]
//
// Revision 1.26  2008/08/11 15:40:39  lulin
// - чистка кода.
//
// Revision 1.25  2008/08/11 15:35:31  lulin
// - <K>: 103450281.
//
// Revision 1.24  2008/07/21 07:19:26  oman
// - new: Повторяем поведение гугла (К-103451002)
//
// Revision 1.23  2008/07/15 14:37:47  lulin
// - <K>: 98828459.
//
// Revision 1.22  2008/07/14 16:05:51  lulin
// - <K>: 102041333.
//
// Revision 1.21  2008/07/11 12:04:05  lulin
// -<K>: 101417264.
//
// Revision 1.20  2008/07/08 11:26:31  lulin
// - избавился от хранения и выставления свойства IsList.
// - починил выбор в списке пользователей.
//
// Revision 1.19  2008/07/04 15:51:00  lulin
// - <K>: 93850256.
//
// Revision 1.18  2008/07/04 13:41:47  lulin
// - чистка кода.
//
// Revision 1.17  2008/06/24 12:28:47  oman
// - fix: Приводим в порядок публикацию свойств (cq29374)
//
// Revision 1.16  2008/06/06 06:48:48  lulin
// - cleanup.
//
// Revision 1.15  2008/06/05 13:22:16  lulin
// - cleanup.
//
// Revision 1.14  2008/06/05 11:30:40  lulin
// - <K>: 93260779.
//
// Revision 1.13  2008/05/22 12:59:59  lulin
// - <K>: 90450972.
//
// Revision 1.12  2008/05/20 10:55:34  lulin
// - bug fix: не компилировался Архивариус.
// - <K>: 90443881.
//
// Revision 1.11  2008/05/15 20:15:29  lulin
// - тотальная чистка.
//
// Revision 1.10  2008/05/15 17:31:45  lulin
// - чистка использования модулей.
// - убираем неочевидную логику скроллирования.
//
// Revision 1.9  2008/05/15 16:19:54  lulin
// - редактор с кнопкой перенесли на модель.
//
// Revision 1.8  2008/05/14 13:56:38  lulin
// - работа над <K>: 90441490.
//
// Revision 1.7  2008/05/13 16:24:15  lulin
// - изменения в рамках <K>: 90441490.
//
// Revision 1.6  2008/04/07 07:59:49  lulin
// - <K>: 88641266.
//
// Revision 1.5  2008/01/25 12:59:42  mmorozov
// - change: откат изменений по реакции на смену текущего.
//
// Revision 1.4  2008/01/15 11:14:59  mmorozov
// - bugfix: следим за изменением текущего в дереве (CQ: OIT5-28192);
//
// Revision 1.3  2007/12/10 15:33:02  lulin
// - cleanup.
//
// Revision 1.2  2007/12/10 14:30:40  lulin
// - cleanup.
//
// Revision 1.1  2007/12/07 16:59:52  lulin
// - переезд.
//
// Revision 1.103  2007/12/07 16:22:40  lulin
// - переименовываем файл, чтобы не путать с другой библиотекой.
//
// Revision 1.102  2007/09/07 12:27:31  lulin
// - cleanup.
//
// Revision 1.101  2007/04/23 10:42:29  oman
// - new: Вычищаем старую ППР и старые фильтры - Убрал Garant5Editor (cq25125)
// - Предыдущий комментарий бредов...
//
// Revision 1.100  2007/04/23 10:39:29  oman
// - fix: *Оказалось IQuery не всегда имеет имя - Убрал Garant5Editor (cq25139)
//
// Revision 1.99  2007/03/22 14:34:44  lulin
// - cleanup.
//
// Revision 1.98  2007/03/21 14:15:14  lulin
// - используем унаследованную обработку шорткатов.
//
// Revision 1.97  2007/03/21 07:29:07  lulin
// - выделяем из ЭлПака, только то, что мы реально используем.
//
// Revision 1.96  2007/03/20 15:01:43  lulin
// - создавалось неправильное дерево, в итоге показывались паразитные иконки.
//
// Revision 1.95  2007/03/14 15:19:05  lulin
// - cleanup.
//
// Revision 1.94  2007/03/14 14:26:08  lulin
// - bug fix: сглатывался enter.
//
// Revision 1.93  2007/03/13 15:20:34  lulin
// - не записываем мусор.
//
// Revision 1.92  2007/03/13 13:38:16  lulin
// - избавляемся от мусора, связанного со слишком умными скроллбарами.
//
// Revision 1.91  2007/02/20 12:55:31  lulin
// - наследуемся при помощи шаблона.
//
// Revision 1.90  2007/02/13 17:47:16  lulin
// - cleanup.
//
// Revision 1.89  2007/01/05 18:17:30  lulin
// - используем базовые ноды для выпадающих списков.
//
// Revision 1.88  2006/11/03 11:00:01  lulin
// - объединил с веткой 6.4.
//
// Revision 1.87.2.1  2006/10/31 08:02:28  oman
// - fix: Допочинка ReadOnly (ReadOnly не эквивалентно DropDownList) (cq23305)
//
// Revision 1.87  2006/06/23 10:32:01  oman
// - fix: ReadOnly не эквивалентно DropDownList. Починка ReadOnly...
//
// Revision 1.86  2006/04/20 12:26:43  mmorozov
// - change: закрытие выпадающего дерева при получении нотификации от дерева перенесено в другое место;
//
// Revision 1.85  2005/11/18 14:12:47  oman
// - change: у TSubTree убраны никем не пользовавшиеся приватные методы _SetSimpleTree и SetTreeRoot (правильный аналог public у предка)
//
// Revision 1.84  2005/11/18 13:54:43  oman
// - new behavior: TSubTree перетранслирует нотификацию _Changed в связанный с ним _TDropDownTree. Вызывается новый виртуальный метод _TDropDownTree._TreeChangedNotification
//
// Revision 1.83  2005/05/27 14:42:18  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.82  2005/04/19 15:41:25  lulin
// - переходим на "правильный" ProcessMessages.
//
// Revision 1.81  2004/12/30 12:28:35  am
// bugfix: нельзя в ActionElementHandler дёргать ProcessMessages
//
// Revision 1.80  2004/12/28 15:46:36  dinishev
// Обработка сообщения WM_GETMINMAXINFO перенесена в модуль abssubtree.pas
//
// Revision 1.79  2004/12/23 11:13:32  lulin
// - rename prop: TvtCustomOutliner.TreeSource -> TreeStruct.
//
// Revision 1.78  2004/12/21 11:33:25  mmorozov
// bugfix: в CMArtfulBehaviour проверяем наличие Tree;
//
// Revision 1.77  2004/12/15 10:28:10  dinishev
// отъехала возможность установки минимального размера
//
// Revision 1.76  2004/12/07 14:41:43  dinishev
// новый компонент ev_ctCalEdit - ComboBox с выпадающим календарем.
// доделано объединение выпадающих деревьев.
// новые интерфейсы IDropBase - базовый интерфейс для выпадающих
// компонент и IDropCalendar - интерфейс для календаря.
//
// Revision 1.75  2004/10/19 08:30:46  mmorozov
// bugfix: проверка наличия выпадающего окна;
//
// Revision 1.74  2004/10/18 13:54:36  mmorozov
// bugfix: при переключении в другое приложение через панель taskbar, иногда оставалось выпадающее окно combobox-а;
//
// Revision 1.73  2004/10/05 09:20:24  lulin
// - cleanup.
//
// Revision 1.72  2004/10/04 15:18:35  am
// change: LMouseDown
//
// Revision 1.71  2004/09/28 10:02:12  am
// change: чистка
//
// Revision 1.70  2004/09/24 10:07:06  am
// change: поменялась логика вычисления ширины выпадающего дерева. Теперь, если пользователь не ресайзил дерево - его ширина равно ширине комбобокса
//
// Revision 1.69  2004/09/17 13:49:30  am
// change: вычистил fasttree
//
// Revision 1.68  2004/09/15 15:09:51  am
// bugfix: _isList
// new: OnMakeEditor
//
// Revision 1.67  2004/08/26 10:19:56  am
// bugfix: проверки
//
// Revision 1.66  2004/08/26 10:12:57  am
// change: вставил проверок существования дерева
//
// Revision 1.65  2004/08/26 09:48:48  am
// change: вставил проверку существования дерева GetTreeImages\SetTreeImages
//
// Revision 1.64  2004/08/25 08:36:54  am
// change: + reintroduce в конструкторе дерева
//
// Revision 1.63  2004/08/19 11:36:52  am
// bugfix: AV в форме фильтров
//
// Revision 1.62  2004/08/18 13:56:57  am
// bugfix: доп. проверки при спрашивании дерева со стилем cbEdit
//
// Revision 1.61  2004/08/18 08:39:46  am
// bugfix: для cbEdit не стояло проверок и спрашивалось дерево
//
// Revision 1.60  2004/08/18 08:28:38  am
// change: поправил дефайны
//
// Revision 1.59  2004/08/18 07:57:03  am
// change: создаём дерево по запросу, не создаём в контролах, в которых оно не нужно (cbEdit)
//
// Revision 1.58  2004/08/18 07:52:25  am
// change: создаём дерево по запросу, не создаём в контролах, в которых оно не нужно (cbEdit)
//
// Revision 1.57  2004/08/04 13:45:47  law
// - добавлены значения по умолчанию.
//
// Revision 1.56  2004/08/04 12:57:08  law
// - bug fix: записывалось значение по умолчанию свойства TreeImages.
//
// Revision 1.55  2004/07/22 13:04:09  am
// bugfix: при изменении размеров плавающего окна комбобокса, в случае, когда комбобокс сам лежит на плавающей форме, выпадаюшее окно меняется с плавающей формой местами (Z-order)
//
// Revision 1.54  2004/07/16 09:56:16  am
// bugfix: GetMinSizeY\GetMinSizeX (в дереве позже стал выставляться RowHeight)
//
// Revision 1.53  2004/07/06 10:04:17  am
// new: TSubTree.KeyHandler
//
// Revision 1.52  2004/07/05 05:10:17  am
// no message
//
// Revision 1.51  2004/07/02 10:47:04  am
// new: CurrentChangeHandler
//
// Revision 1.50  2004/06/25 12:48:19  am
// bugfix: WM_KILLFOCUS
//
// Revision 1.49  2004/06/23 14:34:54  mmorozov
// new: method TSubTree._SetSimpleTree;
//
// Revision 1.48  2004/06/15 09:59:20  am
// change: перенесён ряд свойств из TFakeCombo, чистка
//
// Revision 1.47  2004/06/02 06:51:06  demon
// - new: property TreeStruct
//
// Revision 1.46  2004/06/01 12:36:52  demon
// - fix: сняты несколько заглушек, касающихся changing/_changed
//
// Revision 1.45  2004/06/01 08:23:10  demon
// - new behavior: перевод ComboBox'ов с Iee на Il3
//
// Revision 1.44  2004/05/31 09:22:16  demon
// - new behavior: избавились от зависимости от nsNodes и GblAdapter.
//
// Revision 1.43  2004/05/21 05:48:46  am
// new: function InnerPoint(const aPoint: TPoint): boolean - принадлежит ли точка контролу
// new: function IsInnerControl(aHandle: HWND) - принадлежит ли окно контролу.
//
// Revision 1.42  2004/05/05 08:53:39  mmorozov
// new behaviour: если фокус из поля ввода перешёл в дерево не вызываем унаследованный обработчик WMKillFocus (при прокрутке колеса мыши в Windows NT с драйверами мыши Logitech над деревом, фокус ввода передавался дереву, поле ввода получало событие потери фокуса и дерево закрывалось);
//
// Revision 1.41  2004/04/09 11:26:49  mmorozov
// bugfix: включены проверки на на nil FSubOwner;
//
// Revision 1.40  2004/03/31 08:03:44  am
// change: подправляем макс. высоту, если показывается рутовый элемент.
//
// Revision 1.39  2004/03/27 13:18:05  am
// bugfix: по CQ
// - съедаем один Tab при невозможности автодополнить
// - глюки фильтрации в номерах
// - выбор элемента не из дерева, а поиском при открытом дереве и выходе по Shift+Enter
//
// Revision 1.38  2004/03/23 14:12:02  am
// change: чистка
//
// Revision 1.37  2004/03/17 15:22:34  am
// change: попытка отвязать от GBLAdapter
//
// Revision 1.36  2004/03/11 11:12:08  am
// change: переворачиваем гриппер, если окно открывается сверху
// change: окно открывается сверху, если расстояние до Top экрана больше, чем расстояние до Bottom (и окно не помещается)
// change: дёргаем OnChange в _ProcessTreeSelect
//
// Revision 1.35  2004/03/10 07:58:23  am
// new: вычисление размеров окна при первом открытии
// new: сброс фильтрации в момент открытии окна (а не в момент выбора элемента, как раньше)
//
// Revision 1.34  2004/03/04 16:35:25  law
// - rename unit: VLister -> vtLister.
//
// Revision 1.33  2004/03/04 15:36:33  law
// - rename unit: VOtliner -> vtOutliner.
//
// Revision 1.32  2004/01/15 14:54:32  am
// bugfix: после установки значения извне и нажатия на Return, текст перераспарсивался, что, в ряде случаев,
// приводило в смене значения (Акт -> Форма\Акт)
//
// Revision 1.31  2004/01/14 13:30:41  am
// bugfix:
// - при введённой "звезде" и открытым выпадающим окном с деревом, нажатие Return
// не изменяет содержимое поля ввода, выбор мышью из дерева - изменяет.
//
// Revision 1.30  2004/01/13 13:02:18  am
// new: FakeBox._SetNodeByIndex - установить узел в дереве на основании индекса ноды в первом уровне.
//
// Revision 1.29  2003/12/30 13:27:55  am
// new: TChooseTree.Clear для Garant5
//
// Revision 1.28  2003/12/30 10:00:22  am
// fixes: множественное выделение
//
// Revision 1.27  2003/12/29 10:31:56  am
// new: добавлено множественное выделение а-ля Garant5.x
//
// Revision 1.26  2003/12/25 14:18:13  am
// *** empty log message ***
//
// Revision 1.25  2003/12/25 12:14:43  am
// *** empty log message ***
//
// Revision 1.24  2003/12/25 12:10:46  law
// - new constructor: MakeWithoutAddToStyleTable (CQ OIT5-5649).
//
// Revision 1.23  2003/12/25 08:05:52  am
// fix: кумулятивное изменение шрифтов
//
// Revision 1.22  2003/12/24 15:57:54  am
// new prop: AutoWidth, _getFullPath режет Root
//
// Revision 1.21  2003/12/24 12:49:14  am
// *** empty log message ***
//
// Revision 1.20  2003/12/24 12:05:08  am
// new: автоматом встаёт на элемент, Text которого совпадает с Caption combobox'а.
//
// Revision 1.19  2003/12/10 15:10:33  am
// new: отложенная фильтрация
//
// Revision 1.18  2003/12/10 10:23:41  law
// - cleanup: Free заменил на FreeAndNil.
// - cleanup: добавил модификаторы const.
//
// Revision 1.17  2003/12/09 14:41:03  am
// *** empty log message ***
//
// Revision 1.16  2003/12/09 13:59:01  am
// bugfix: прорисовка гриппера
//
// Revision 1.15  2003/12/09 07:55:13  am
// - new prop: TTreeDrop.ShowRoot
// - new method: TEditableBox.SetCurrentNode
//
// Revision 1.14  2003/12/08 13:11:34  am
// - new: новая реализация контрол (с одним деревом)
//
// Revision 1.12.2.1  2003/12/04 11:00:01  am
// *** empty log message ***
//
// Revision 1.9.2.1  2003/12/02 14:58:18  am
// - Ветка для Демона
//
// Revision 1.9  2003/12/01 12:00:44  law
// - bug fix: не возвращался Result.
//
// Revision 1.8  2003/12/01 11:29:13  am
// - new: QueryInteface у _TDropDownTree. Возвращает CurrentNode при получении _Il3Node,
//   и RootNode при получении Il3RootNode
// - bugfixes по интеграции в vcm
//
// Revision 1.7  2003/11/20 13:01:40  am
// - new: функциональность доработана до обычного комбобокса, для использования в _Nemesis/vcm
//
// Revision 1.6  2003/11/19 14:43:01  am
// *** empty log message ***
//
// Revision 1.5  2003/11/18 14:18:34  am
// - new: _OnGetItemImage
//
// Revision 1.4  2003/11/18 11:26:11  am
// - new: property _TDropDownTree.TreeImages
//
// Revision 1.3  2003/11/18 07:43:10  am
// - bugfixes:
//
// Revision 1.2  2003/11/13 16:52:58  law
// - bug fix: поборолся-таки с неосвобождением объектов.
//

{$Include vtDefine.inc}

interface

uses
  Windows,
  Messages,
  Controls,
  Classes,
  Forms,
  StdCtrls,
  Graphics,
  ImgList,
  SysUtils,

  ElPopBtn,
  ElVclUtils,

  l3InterfacesMisc,
  l3Tree_TLB,
  l3TreeInterfaces,
  l3ControlsTypes,

  {$IfNDef NoVCM}
  vcmExternalInterfaces,
  {$EndIf  NoVCM}

  {$IfDef ctEverestEdit}
  nevTools,
  {$EndIf ctEverestEdit}

  absdrop,
  abssubtree,
  ctTypes

  {$If Defined(Nemesis) AND Defined(Shell)}
  {$IfNDef NoVGScene}
  ,
  vg_scene
  {$EndIf  NoVGScene}
  {$IfEnd}
  ;

const
  CM_ARTFULBEHAVIOUR = WM_USER + 12345;

type
  TDropDownTree = class;

  TSubTree = class(TAbsSubTree)
  public
    FSubOwner : TDropDownTree;
  protected
    function IsSizeableTree: Boolean; override;
    function IsShowGripper: Boolean; override;
    function IsList: Boolean; override;
    function IsInvert: Boolean; override;
    function IsOwnerAssigned: Boolean; override;
    function GetWidth: Integer; override;
    procedure DoChanged; override;
    function GetMinVisibleDropCount: integer; override;
    function GetMaxVisibleDropCount: integer; override;
  protected
    procedure WMSetFocus(var Message: TMessage); message WM_SETFOCUS;
    procedure WMExitSizeMove(var Message: TMessage); message WM_EXITSIZEMOVE;
    procedure WMEnterSizeMove(var Message: TMessage); message WM_ENTERSIZEMOVE;
  public
    constructor Create(const aOwner: TDropDownTree);
      reintroduce;
      {-}
  public
   property AllowWithoutCurrent;
  end;//TSubTree

  TDropDownTree = class(TAbstractDropDown)
  private
    FInvert            : boolean;
    FSaveCursor        : TCursor;
    FCalcDimensions    : boolean;

    FAdjustDropDownPos : boolean;
    FSizeableTree      : boolean;
    FShowGripper       : boolean;

    FOnGetItemImage    : Tl3GetItemImage;

    f_MinVisibleDropCount: integer;
    f_MaxVisibleDropCount: integer;
    f_GrowDropTreeWidthByIcons: Boolean;

    f_KeepLastDropWidth: Boolean;

    function GetShowRoot: boolean;
    procedure SetShowRoot(const Value: boolean);
    function GetShowIcons: boolean;
    procedure SetShowIcons(const Value: boolean);
    procedure SetOnGetItemImage(const Value: Tl3GetItemImage);
  protected
    FTree: TSubTree;
    FDropHeight: integer;
    FDropWidth: integer;
    { является ли дерево списком }

    function  GetIsList: Boolean;
      virtual;

    procedure RecreateTreeIfNeeded(Value:TComboStyle); virtual;
    function CreateSubTree: TSubTree; virtual;
    function GetCurrentNode: Il3SimpleNode;
    function getTreeImages: TCustomImageList;
    procedure setTreeImage(const Value: TCustomImageList);
    function  TreeImagesStored: Boolean;
    function  CursorStored: Boolean;
    procedure setDropped(const Value: boolean); override;
    procedure SetSizeableTree(const Value: boolean);
    procedure SetShowGripper(Value:boolean);
    procedure SetCurrentNode(const Value: Il3SimpleNode); virtual;
      {$IfNDef NoVCM}
      function  IvcmState_LoadState(const aState : IUnknown;
                          aStateType   : TvcmStateType): Boolean;
        override;
        {-}
      function  IvcmState_SaveState(out aState : IUnknown;
                                    aStateType : TvcmStateType): Boolean;
        override;
        {-}
      {$EndIf NoVCM}
    function GetTree: TSubTree{TvtOutlinerWithSingleClick};
    function GetTreeSource: Il3SimpleTree;
    procedure SetTreeSource(const aValue: Il3SimpleTree);

    function EstimateTreeHeight(aMinSize, aMaxSize: integer): integer; virtual;
      {-}
    function EstimateTreeWidth(aMaxSizeX, aSizeY: integer): integer; virtual;
      {-}
    procedure CalcDropDimensions; //virtual;
    procedure DropSessionSettings; //virtual;
      { сброс сессионных настроек(вычисленных значений ширины/высоты дерева) - по присваиванию рута, например }
    function CalcGrowingWidth: Integer;
      {-}
    {$IfNDef ctEverestEdit}
    procedure TreeChanged; virtual;
      { вызывается при смене TreeStruct, Root'а, etcc.. }
    {$EndIf  ctEverestEdit}

    procedure TreeChangedNotification; virtual;
      { вызывается в ответ на серверную нотификацию об изменении дерева }

    procedure ActionElementHandler(Sender:TObject; Index : Longint);
    procedure ProcessTreeSelect(ChooseFromTree : Boolean;
                                aTriggerSelect : Boolean); virtual;

    function GetActiveSub:TWinControl; override;
    function  GetItemImageHandler(Sender: TObject; Index: Integer;
      var aImages: TCustomImageList): Integer; virtual;

    procedure WMLButtonDown(var Message: TWMLButtonDown); message WM_LBUTTONDOWN;
    procedure WMLButtonUp(var Message: TWMLButtonDown); message WM_LBUTTONUP;
    procedure WMKillFocus(Var Message: TWMKillFocus); message WM_KILLFOCUS;
    procedure WMSetFocus(Var Message: TWMSetFocus); message WM_SETFOCUS;
    procedure CMArtfulBehaviour(Var Message: TMessage); message CM_ARTFULBEHAVIOUR;

    procedure CMCancelMode(Var Message: TCMCancelMode); message CM_CANCELMODE;

    procedure HideDropDown;
      override;

    {$IfDef ctEverestEdit}
      function  GetPaintSelection: InevRange;
      override;
        {-}
    {$EndIf ctEverestEdit}
{    По запросу Макса - все контролы имеют гриппер}
    property SizeableTree: boolean
      read FSizeableTree
      write SetSizeableTree
      default True;
      {-}
    property ShowGripper: boolean
      read FShowGripper
      write SetShowGripper
      default True;
      {-}
    property ShowIcons: boolean
      read GetShowIcons
      write SetShowIcons;
      {-}
    procedure Cleanup;
      override;
      {-}
  public
    constructor Create(AOwner:TComponent); override;

    // заменители DoExit, DoEnter, с учётом того, что при передаче фокуса от
    // дерева к контролу вызываться не должны
    procedure CustomDoEnter; virtual;

    function InnerPoint(const aPoint: TPoint): boolean; virtual;
    function IsInnerControl(aHandle: HWND): boolean; virtual;

    property Tree: TSubTree{TvtOutlinerWithSingleClick} read GetTree;
    property TreeStruct: Il3SimpleTree read GetTreeSource write SetTreeSource;
    property MinVisibleDropCount: integer read f_MinVisibleDropCount write f_MinVisibleDropCount;
    property MaxVisibleDropCount: integer read f_MaxVisibleDropCount write f_MaxVisibleDropCount;
    property GrowDropTreeWidthByIcons: Boolean read f_GrowDropTreeWidthByIcons write f_GrowDropTreeWidthByIcons;
  public
    property CurrentNode:Il3SimpleNode
      read GetCurrentNode
      write SetCurrentNode;
      {-}
    property AdjustDropDownPos:boolean
      read FAdjustDropDownPos
      write FAdjustDropDownPos
      default false;
      {-}
    property TreeImages:TCustomImageList
      read getTreeImages
      write setTreeImage
      stored TreeImagesStored;
      {-}
    property DropHeight:integer
      read FDropHeight
      write FDropHeight
      default 0;
      {-}
    property DropWidth:integer
      read FDropWidth
      write FDropWidth
      default 0;
      {-}
    property IsList:boolean
      read GetIsList
      default false;
      {-}
    property KeepLastDropWidth: Boolean
      write f_KeepLastDropWidth;
      {DropWidth не будет пересчитываться внутри CalcDropDimensions}
    property ShowRoot:boolean
      read GetShowRoot
      write SetShowRoot
      default false;
      {-}
  published
    property Cursor
      stored CursorStored;
      {-}
    property OnGetItemImage: Tl3GetItemImage
      read FOnGetItemImage
      write SetOnGetItemImage;
      {-}
    property OnChange;
      {-}
  end;//TDropDownTree

implementation

uses
  l3MinMax,

  afwFacade
  ;

// start class TSubTree

procedure TSubTree.WMEnterSizeMove(var Message: TMessage);
begin
 inherited;
 FSubOwner.FIgnoreFocus := true;
end;

procedure TSubTree.WMExitSizeMove(var Message: TMessage);
begin
 FSubOwner.CurrentMode:=FSubOwner.CurrentMode + [cmFocusing];
// Windows.SetFocus(FSubOwner.Handle);
// вроде лишнее.
 FSubOwner.CurrentMode:=FSubOwner.CurrentMode - [cmFocusing];
 FSubOwner.FIgnoreFocus := false;
 FSubOwner.DropWidth := Width;
 inherited;
end;

procedure TSubTree.WMSetFocus(var Message: TMessage);

  function IsTopForm: boolean;
  var
   l_Control: TControl;
  begin//IsTopForm
   Result := false;
   l_Control := FSubOwner;
   while l_Control <> nil do
   begin
     if (l_Control is TForm) and
        ((l_Control as TForm).FormStyle = fsStayOnTop) then
     begin
       Result := true;
       break;
     end;
     l_Control := l_Control.Parent;
   end;
  end;//IsTopForm

var
  l_OnTopForm: boolean;
begin
 FSubOwner.CurrentMode:=FSubOwner.CurrentMode+[cmFocusing];
 l_OnTopForm := IsTopForm;

 if l_OnTopForm then
 begin
  Windows.SetFocus(Message.wParam);
  // иначе на OnTop формах окно уплывает на задний план
  SetWindowPos(Handle, HWND_TOPMOST, Left, Top, 0, 0, SWP_NOSIZE or SWP_NOACTIVATE or SWP_SHOWWINDOW );
 end
 else
  Windows.SetFocus(Message.wParam);
 FSubOwner.CurrentMode:=FSubOwner.CurrentMode-[cmFocusing];
end;

constructor TSubTree.Create(const aOwner: TDropDownTree);
begin
  inherited Create(nil);
  FSubOwner := aOwner;
end;

function TSubTree.IsInvert: Boolean;
begin
  Result := FSubOwner.FInvert;
end;

function TSubTree.IsList: Boolean;
begin
  Result := FSubOwner.IsList;
end;

function TSubTree.IsShowGripper: Boolean;
begin
  Result := FSubOwner.FShowGripper;
end;

function TSubTree.IsSizeableTree: Boolean;
begin
  Result := FSubOwner.FSizeableTree;
end;

function TSubTree.IsOwnerAssigned: Boolean;
begin
  Result := Assigned(FSubOwner);
end;

function TSubTree.GetWidth: Integer;
begin
  Result := FSubOwner.Width;
end;

procedure TSubTree.DoChanged;
begin
  inherited DoChanged;
  if Assigned(FSubOwner) then
   FSubOwner.TreeChangedNotification;
end;

{ TDropDownTree }

constructor TDropDownTree.Create(AOwner: TComponent);
begin
 inherited Create(AOwner);
 Cursor := crIBeam;
 FInvert:=false;

 FDropHeight := 0;
 FDropWidth := 0;
 FSizeableTree := true;
 FShowGripper := true;
 ReadOnly := false;
 FCalcDimensions := True;
end;

procedure TDropDownTree.Cleanup;
begin
 FreeAndNil(FTree);
 inherited;
end;

procedure TDropDownTree.HideDropDown;
begin
 inherited;
 if Assigned(Tree) and Tree.HandleAllocated then
 begin
  if Tree.Visible then
   Tree.Visible := false;
  SetWindowPos(Tree.Handle,
               HWND_NOTOPMOST,
               0, 0, 0, 0,
               SWP_NOMOVE or SWP_NOSIZE or SWP_HIDEWINDOW or SWP_NOACTIVATE);
 end;//Assigned(Tree)
end;

{$IfDef ctEverestEdit}
function TDropDownTree.GetPaintSelection: InevRange;
  //override;
  {-}
var
 l_S, l_F : InevBasePoint;  
begin
 if not Enabled OR ((ComboStyle = ct_cbDropDownList) AND not Focused) then
  Result := nil
 else
 begin
  Result := inherited GetPaintSelection;
  if (Result <> nil) AND Result.Solid(View) then
  begin
   Result.GetBorderPoints(l_S, l_F);
   if (l_F <> nil) AND (l_F.MostInner <> nil) then
    l_F.MostInner.SetAtEnd(View, false);
  end;//(Result <> nil) AND Result.Solid(View)
 end;//not Enabled..
end;
{$EndIf ctEverestEdit}

procedure TDropDownTree.setDropped(const Value: boolean);
Var
  P, P1 : TPoint;
  PF    : TCustomForm;
  //DR : TRect;
  l_Delta : integer;
  l_MonitorRect : TRect;
  //l_DropRect : TRect;
  l_DropWidth : Integer;
begin
  if (FDropped <> Value) and (ComboStyle <> ct_cbEdit) then
  begin
    if (Value=true) and (not Focused) and (not Tree.Focused) and
       not (cmButtonClick in FCurrentMode) then
     exit;

    if Value then
    begin
      FSaveCursor := Cursor;
      //Cursor := crArrow;

      CalcDropDimensions;

      Tree.Height := FDropHeight;
      if FDropWidth < Width then
       Tree.Width := Width
      else
       Tree.Width := FDropWidth;

      P := Point(Left, Top + Height);
      P := Parent.ClientToScreen(P);

      if GrowDropTreeWidthByIcons then
      begin
       l_Delta := CalcGrowingWidth;
       l_MonitorRect := Screen.MonitorFromPoint(P).WorkareaRect;
       Dec(P.X, l_Delta);

       l_DropWidth := Tree.Width;
       if l_DropWidth < Width + 2 * l_Delta then
        l_DropWidth := Width + 2 * l_Delta;
       if (P.X + l_DropWidth) > l_MonitorRect.Right then
        Dec(l_DropWidth, (P.X + l_DropWidth) - l_MonitorRect.Right);

       Tree.Width := l_DropWidth;
      end;//GrowDropTreeWidthByIcons

      FIgnoreFocus := true;
      try
       if (P.Y + Tree.Height > Screen.Height) and
          ((Screen.Height - P.Y) < ClientToScreen(Point(Left, Top)).Y) then begin
         if FInvert<>true then begin
           FInvert:=true;
           Tree.RecreateTree;
         end;
         P.Y := P.Y - Tree.Height - Height;
       end//P.Y + Tree.Height > Screen.Height..
       else
       begin
         if (FInvert <> false) then
         begin
          FInvert := false;
          Tree.RecreateTree;
         end;//FInvert <> false
       end;//P.Y + Tree.Height > Screen.Height..
       if AdjustDropDownPos then
       begin
         PF := GetParentForm(Self);
         P1 := Point(0, PF.ClientHeight);
         P1 := PF.ClientToScreen(P1);
         if (P.Y + Tree.Height > P1.y) then
         begin
          P1 := Point(0, 0);
          P1 := PF.ClientToScreen(P1);
          if (P.Y - Height - Tree.Height >= P1.y) then
            P.Y := P.Y - Height - Tree.Height;
         end;//Y + Tree.Height > P1.y
       end;//AdjustDropDownPos
       FIgnoreDrop := true;
       try
        SetWindowPos(Tree.Handle,
                     HWND_TOPMOST, P.x, P.y, 0, 0,
                     SWP_NOSIZE or SWP_NOACTIVATE or SWP_SHOWWINDOW);
        Tree.Visible := true;
        SetFocus;
       finally
        FIgnoreDrop := false;
       end;//try..finally
      finally
       FIgnoreFocus := false;
      end;//try..finally
    end//Value
    else
    begin
      //Cursor := FSaveCursor;
      FIgnoreDrop := true;
      try
       FDropHeight := Tree.Height;
       //FDropWidth := Tree.Width;
       FIgnoreFocus := true;

       HideDropDown;

       FIgnoreFocus := false;
      finally
      FIgnoreDrop := false;
      end;//try..finally
    end;//Value
  end;//FDropped<>Value
  inherited;
end;

procedure TDropDownTree.SetSizeableTree(const Value: boolean);
begin
 if (FSizeableTree <> Value) and (ComboStyle <> ct_cbEdit) then
 begin
  FSizeableTree := Value;
  Tree.RecreateTree;
 end;//FSizeableTree <> Value
end;

procedure TDropDownTree.SetShowGripper(Value:boolean);
begin
 if (FShowGripper <> Value) and (ComboStyle <> ct_cbEdit) then
 begin
  FShowGripper := Value;
  Tree.RecreateTree;
 end;//FShowGripper <> Value
end;

procedure TDropDownTree.ProcessTreeSelect(ChooseFromTree : Boolean;
                                          aTriggerSelect : Boolean);
begin
end;

{$IfNDef NoVCM}
function TDropDownTree.IvcmState_LoadState(const aState : IUnknown;
                    aStateType   : TvcmStateType): Boolean;
  //override;
  {-}
var
 l_State : IvcmState;
begin
 // Безуспешная борьба с http://mdp.garant.ru/pages/viewpage.action?pageId=185828256
 if Supports(FTree, IvcmState, l_State) then
  // Supports никогда на самом деле не отработает ибо TSubTree не наследник TeeTreeViewExport
  Result := l_State.LoadState(aState, aStateType)
 else
  Result := false;
 //Result := inherited IvcmState_LoadState(aState, aStateType);
end;

function TDropDownTree.IvcmState_SaveState(out aState : IUnknown;
                              aStateType : TvcmStateType): Boolean;
  //override;
  {-}
var
 l_State : IvcmState;
begin
 // Безуспешная борьба с http://mdp.garant.ru/pages/viewpage.action?pageId=185828256
 if Supports(FTree, IvcmState, l_State) then
  // Supports никогда на самом деле не отработает ибо TSubTree не наследник TeeTreeViewExport
  Result := (FTree As IvcmState).SaveState(aState, aStateType)
 else
  Result := false;
 //Result := inherited IvcmState_SaveState(aState, aStateType);
 // !! Если будешь здесь копаться, то читай и TAbstractDropDown.IvcmState_SaveState
end;
{$EndIf NoVCM}

function TDropDownTree.GetTree: TSubTree{TvtOutlinerWithSingleClick};
begin
  if FTree = nil then
    RecreateTreeIfNeeded(ComboStyle);
  Result := {TvtOutlinerWithSingleClick(}FTree{)};
end;

function TDropDownTree.GetTreeSource: Il3SimpleTree;
begin
 Result := Tree.TreeStruct;
end;

procedure TDropDownTree.SetTreeSource(const aValue: Il3SimpleTree);
begin
 if (ComboStyle <> ct_cbEdit) then
 begin
  Tree.TreeStruct := aValue;
  {$IfNDef ctEverestEdit}
  TreeChanged;
  {$EndIf  ctEverestEdit}
 end;
end;

procedure TDropDownTree.ActionElementHandler(Sender: TObject;
  Index: Integer);
begin
 Dropped:=false;
//     afw.ProcessMessages; нельзя :(
 ProcessTreeSelect(true, true);
end;

function TDropDownTree.GetActiveSub: TWinControl;
begin
  Result:=Tree;
end;

function TDropDownTree.getTreeImages: TCustomImageList;
begin
 if ComboStyle <> ct_cbEdit then
  Result:=Tree.Images
 else
  Result := nil;
end;

procedure TDropDownTree.setTreeImage(const Value: TCustomImageList);
begin
 if ComboStyle <> ct_cbEdit then
  Tree.Images:=Value
end;

function TDropDownTree.TreeImagesStored: Boolean;
begin
 if ComboStyle <> ct_cbEdit then
  Result := Tree.ImagesStored
 else
  Result := False;
end;

function TDropDownTree.CursorStored: Boolean;
  {-}
begin
 Result := (Cursor <> crIBeam);
end;

function TDropDownTree.GetItemImageHandler(Sender: TObject; Index: Integer;
  var aImages: TCustomImageList): Integer;
begin
  Result := -1;
  if Assigned(FOnGetItemImage) then begin
    Result:=FOnGetItemImage(self, Index, aImages);
  end;
end;

function TDropDownTree.GetCurrentNode: Il3SimpleNode;
begin
 if ComboStyle <> ct_cbEdit then
  Result := Tree.GetCurrentNode
 else
  Result := nil;
end;

procedure TDropDownTree.WMLButtonDown(var Message: TWMLButtonDown);
begin
  if (ComboStyle in ReadOnlyComboStyles) then
  begin
    SendCancelMode(Self);
    if csClickEvents in ControlStyle then
      ControlState := ControlState + [csClicked];
    if not (csNoStdEvents in ControlStyle) then
      with Message do
        MouseDown(mbLeft, KeysToShiftState(Keys), XPos, YPos);
    TriggerDropCloseEvent(not Dropped);
    Dropped := not Dropped;
    SendMessage(Handle, EM_SETSEL, -1, -1);
    {$IfNDef ctEverestEdit}
    HideCaret(Handle);
    {$EndIf  ctEverestEdit}
  end//ComboStyle in ReadOnlyComboStyles
  else
    inherited;
end;

procedure TDropDownTree.WMLButtonUp;
begin
  if (ComboStyle in ReadOnlyComboStyles) then
  begin
    with Message do
      MouseUp(mbLeft, KeysToShiftState(Keys), XPos, YPos);
    SendMessage(Handle, EM_SETSEL, -1, -1);
    {$IfNDef ctEverestEdit}
    HideCaret(Handle);
    {$EndIf  ctEverestEdit}
  end//ComboStyle in ReadOnlyComboStyles
  else
    inherited;
end;

procedure TDropDownTree.WMKillFocus(var Message: TWMKillFocus);
begin
 if not (csDestroying in ComponentState) and
   ((ComboStyle = ct_cbEdit) or
   ((Message.FocusedWnd<>Tree.Handle) and
   (Message.FocusedWnd<>Self.Handle))) then 
  inherited;
end;

procedure TDropDownTree.WMSetFocus(var Message: TWMSetFocus);
begin
  // Tree.WMSetFocus вызывает SetFocus этого объекта
  if (ComboStyle = ct_cbEdit) or
     ((Message.FocusedWnd<>Tree.Handle) and (Message.FocusedWnd<>Handle)) and
     not (cmFocusing in FCurrentMode) then
   CustomDoEnter;
  inherited;
  {$IfNDef ctEverestEdit}
  if ComboStyle in ReadOnlyComboStyles then
    HideCaret(Handle);
  {$EndIf  ctEverestEdit}
end;

procedure TDropDownTree.CustomDoEnter;
begin
  //
end;

procedure TDropDownTree.CMCancelMode(var Message: TCMCancelMode);
begin
 inherited;
 if FDropped then
 begin
  {$If Defined(Nemesis) AND Defined(Shell)}
  {$IfNDef NoVGScene}
  if (Message.Sender Is TvgCustomScene) then
  begin
   if (ExtButton <> nil) then
   begin
    if (TvgCustomScene(Message.Sender).Captured = ExtButton) then
     Exit
    else
    with TvgCustomScene(Message.Sender) do
     if (ObjectByPoint(MousePos.X, MousePos.Y) = ExtButton) then
      Exit;
   end;//ExtButton <> nil
  end;//Message.Sender Is TvgCustomScene
  {$EndIf  NoVGScene}
  {$IfEnd}
  if (Message.Sender <> Self) and
     (Message.Sender <> Button) and
     (Message.Sender <> Tree) then
   Dropped := false;
 end;//FDropped
end;

function TDropDownTree.GetShowRoot: boolean;
begin
 if (ComboStyle <> ct_cbEdit) then
  Result := Tree.ShowRoot
 else
  Result := False;
end;

procedure TDropDownTree.SetShowRoot(const Value: boolean);
begin
 if ComboStyle <> ct_cbEdit then
  Tree.ShowRoot:=Value;
end;

procedure TDropDownTree.SetCurrentNode(const Value: Il3SimpleNode);
begin
  ;
end;

function TDropDownTree.GetShowIcons: boolean;
begin
 if (ComboStyle <> ct_cbEdit) then
  Result := voShowIcons in Tree.ViewOptions
 else
  Result := False;
end;

procedure TDropDownTree.SetShowIcons(const Value: boolean);
begin
 if (ComboStyle <> ct_cbEdit) then
 begin
  if Value then
   Tree.ViewOptions := Tree.ViewOptions + [voShowIcons]
  else
   Tree.ViewOptions := Tree.ViewOptions - [voShowIcons];
 end;//ComboStyle <> ct_cbEdit
end;

procedure TDropDownTree.CMArtfulBehaviour(var Message: TMessage);
var
 N         : integer;
 lItemPart : byte;
 Pt        : TPoint;
begin
 if not Assigned(Tree) then
  Exit;
 Pt := Point(Message.wParam, Message.lParam);
 Tree.HitTest(Pt, N, lItemPart, false);
 if (lItemPart=ihtText) or (lItemPart=ihtIcon) or
   (lItemPart=ihtPickIcon) or (lItemPart=ihtOpenChip) then begin
    Dropped:=false;
    afw.ProcessMessages;
    ProcessTreeSelect(true, true);
 end;//lItemPart=ihtText
end;

procedure TDropDownTree.SetOnGetItemImage(const Value: Tl3GetItemImage);
begin
 FOnGetItemImage := Value;
 if Assigned(Value) then
  ShowIcons := true
 else
  ShowIcons := false;
end;

procedure TDropDownTree.CalcDropDimensions;
var
 l_Point: TPoint;
 l_MaxWidth: integer;
begin
 l_Point := ClientToScreen(Point(0, 0));

 if (Screen.DesktopLeft + Screen.DesktopWidth) > (l_Point.X + Width) then
  l_MaxWidth := Screen.DesktopLeft + Screen.DesktopWidth - l_Point.X
 else
  l_MaxWidth := -1;

 if FCalcDimensions then
 begin
  if (FDropHeight=0) then begin
   FDropHeight:=EstimateTreeHeight(Tree.GetMinSizeY, Tree.GetMaxSizeY);
   inc(FDropHeight, Tree.getBorderSize);
  end;
  if not f_KeepLastDropWidth then FDropWidth := EstimateTreeWidth(l_MaxWidth, FDropHeight);
  f_KeepLastDropWidth := False;
  FCalcDimensions := false;
 end;

 if FDropWidth > l_MaxWidth then
  FDropWidth := l_MaxWidth;
{  if FDropWidth < Width then
  FDropWidth := Width; }
end;

function TDropDownTree.InnerPoint(const aPoint: TPoint): boolean;
Var
 l_Rect: TRect;
begin
 Result := true;
 GetWindowRect(Handle, l_Rect);
 if PtInRect(l_Rect, aPoint) then
  exit;
 GetWindowRect(Tree.Handle, l_Rect);
 if PtInRect(l_Rect, aPoint) then
  exit;
 Result := false;
end;

function TDropDownTree.IsInnerControl(aHandle: HWND): boolean;
begin
 Result := (aHandle = Handle) or (aHandle = Tree.Handle);
end;

{$IfNDef ctEverestEdit}
procedure TDropDownTree.TreeChanged;
begin
 ;
end;
{$EndIf  ctEverestEdit}

procedure TDropDownTree.TreeChangedNotification;
begin
end;

procedure TDropDownTree.RecreateTreeIfNeeded(Value: TComboStyle);
begin
  FreeAndNil(FTree);
  if Value <> ct_cbEdit then
   FTree := CreateSubTree;
end;

function TDropDownTree.GetIsList: Boolean;
  //virtual;
begin
 Result := false;
end;

procedure TDropDownTree.DropSessionSettings;
begin
 FCalcDimensions := True;
end;

function TDropDownTree.EstimateTreeWidth(aMaxSizeX,
  aSizeY: integer): integer;
begin
 Result := Width;
end;

function TDropDownTree.EstimateTreeHeight(aMinSize,
  aMaxSize: integer): integer;
begin
 Result := 100;
end;

function TDropDownTree.CreateSubTree: TSubTree;
begin
 Result := TSubTree.Create(Self);
end;

function TSubTree.GetMaxVisibleDropCount: integer;
begin
 Result := Max(FSubOwner.MaxVisibleDropCount, FSubOwner.MinVisibleDropCount);
end;

function TSubTree.GetMinVisibleDropCount: integer;
begin
 Result := Min(FSubOwner.MaxVisibleDropCount, FSubOwner.MinVisibleDropCount);
end;

function TDropDownTree.CalcGrowingWidth: Integer;
var
 DR: TRect;
begin
 if Tree.Current > -1 then
 begin
  DR := Tree.GetDrawRect(Tree.Current);
  Result := Tree.GetItemTextIndent(Tree.Current, DR.Bottom - DR.Top);
 end
 else
  if Tree.Total > 0 then
  begin
   DR := Tree.GetDrawRect(Tree.TopIndex);
   Result := Tree.GetItemTextIndent(Tree.TopIndex, DR.Bottom - DR.Top);
  end
  else
   Result := 0;
end;

end.
