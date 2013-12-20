unit evTreePara;
{* Параграф с деревом. }

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evTreePara -    }
{ Начат: 08.07.2002 15:12 }
{ $Id: evTreePara.pas,v 1.2 2012/02/03 17:09:21 lulin Exp $ }

// $Log: evTreePara.pas,v $
// Revision 1.2  2012/02/03 17:09:21  lulin
// {RequestLink:333548940}
// - рисуем изменения Жени на модели.
//
// Revision 1.1  2009/09/14 11:28:19  lulin
// - выводим пути и для незавершённых модулей.
//
// Revision 1.111  2009/07/23 13:42:11  lulin
// - переносим процессор операций туда куда надо.
//
// Revision 1.110  2009/07/11 15:55:10  lulin
// {RequestLink:141264340}. №22.
//
// Revision 1.109  2009/07/03 16:24:02  lulin
// - шаг к переходу от интерфейсов к объектам.
//
// Revision 1.108  2009/07/01 10:55:01  lulin
// - избавляемся от лишнего дёранья счётчиков ссылок.
//
// Revision 1.107  2009/06/26 08:34:38  lulin
// - победил-таки обёртки для интерфейсов.
//
// Revision 1.106  2009/06/25 12:57:31  lulin
// - вычищаем ненужный контекст.
//
// Revision 1.105  2009/04/15 18:49:30  lulin
// [$143396720]. Основательно перетрясаем модель.
//
// Revision 1.104  2009/04/13 17:27:50  lulin
// [$142613919]. Переносим базовый курсор на модель.
//
// Revision 1.103  2009/04/13 12:32:49  lulin
// [$142613919].
//
// Revision 1.102  2009/04/10 06:12:27  lulin
// - чистка кода.
//
// Revision 1.101  2009/04/06 12:09:45  lulin
// [$140837386]. Переносим форматтеры на модель.
//
// Revision 1.100  2009/04/03 17:34:55  lulin
// [$140837386]. Переносим базовую примесь для работы с базовыми параграфами на модель.
//
// Revision 1.99  2009/03/05 18:25:56  lulin
// - <K>: 137470629. Убираем архитектурную кривизну.
//
// Revision 1.98  2009/03/04 13:32:48  lulin
// - <K>: 137470629. Генерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.97  2009/01/23 13:58:35  lulin
// - <K>: 135605086.
//
// Revision 1.96  2008/09/26 17:04:05  lulin
// - <K>: 119475439.
//
// Revision 1.95  2008/06/11 13:42:03  lulin
// - рисуем схему EVD на модели.
//
// Revision 1.94  2008/06/09 11:45:47  lulin
// - <K>: 93264011.
//
// Revision 1.93  2008/04/07 16:27:15  lulin
// - <K>: 89096985.
//
// Revision 1.92  2008/04/07 06:18:37  lulin
// - cleanup.
//
// Revision 1.91  2008/02/27 17:24:58  lulin
// - подгоняем код под модель.
//
// Revision 1.90  2007/12/25 23:55:51  lulin
// - модуль l3Tree_TLB полностью перенесен на модель.
//
// Revision 1.89  2007/12/04 12:47:06  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.77.2.26  2007/11/01 07:39:20  mmorozov
// - new: новая ovc-команда ccTreeCollapse (в рамках работы над CQ: OIT5-27189);
//
// Revision 1.77.2.25  2007/09/14 13:26:07  lulin
// - объединил с веткой B_Tag_Clean.
//
// Revision 1.77.2.24.2.2  2007/09/12 16:14:08  lulin
// - убран ненужный параметр по-умолчанию.
//
// Revision 1.77.2.24.2.1  2007/09/12 15:23:02  lulin
// - избавляемся от метода, дублирующего функциональность получения атрибута.
//
// Revision 1.77.2.24  2007/09/07 12:52:52  lulin
// - удален ненужный параметр.
//
// Revision 1.77.2.23  2007/09/06 09:37:37  lulin
// - переименовано свойство.
//
// Revision 1.77.2.22  2007/08/10 08:30:12  lulin
// - избавляемся от излишнего использования интерфейсов, т.к. переносимость может быть достигнута другими методами.
//
// Revision 1.77.2.21  2007/08/09 11:19:13  lulin
// - cleanup.
//
// Revision 1.77.2.20  2007/06/23 14:44:28  lulin
// - cleanup.
//
// Revision 1.77.2.19  2007/06/22 19:18:58  lulin
// - cleanup.
//
// Revision 1.77.2.18  2007/06/22 19:02:31  lulin
// - cleanup.
//
// Revision 1.77.2.17  2007/04/09 08:30:22  lulin
// - переименовываем класс в соответствии с библиотекой.
//
// Revision 1.77.2.16  2007/01/30 15:24:12  lulin
// - текст ноды - теперь более простого типа.
//
// Revision 1.77.2.15  2006/12/22 15:06:30  lulin
// - текст ноды - теперь структура с длиной и кодовой страницей.
//
// Revision 1.77.2.14  2006/11/03 11:00:09  lulin
// - объединил с веткой 6.4.
//
// Revision 1.77.2.13.4.3  2006/10/25 15:11:28  lulin
// - cleanup.
//
// Revision 1.77.2.13.4.2  2006/10/24 12:45:10  lulin
// - при рисовании используем базовую точку, а не якорь.
//
// Revision 1.77.2.13.4.1  2006/10/23 12:24:40  lulin
// - не собиралась библиотека.
//
// Revision 1.77.2.13  2006/10/02 11:38:35  lulin
// - объединяем с веткой в которой размеры параграфов подсчитываются методами канвы.
//
// Revision 1.77.2.12.2.1  2006/09/28 14:26:44  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.77.2.12  2006/08/02 10:51:53  lulin
// - объединил с веткой в которой боролся со скроллингом.
//
// Revision 1.77.2.11.12.1  2006/07/31 12:34:51  lulin
// - не используем тег, отвечающий за сформатированность параграфов.
//
// Revision 1.77.2.11  2006/01/16 14:28:17  lulin
// - cleanup.
//
// Revision 1.77.2.10  2005/11/18 16:54:50  lulin
// - bug fix: не компилировалась библиотека.
//
// Revision 1.77.2.9  2005/11/09 15:28:25  lulin
// - базовые интерфейсы перенесены в правильный модуль.
//
// Revision 1.77.2.8  2005/11/02 06:06:07  lulin
// - cleanup: удалены ненужные параметры.
//
// Revision 1.77.2.7  2005/07/28 15:37:05  lulin
// - правки в соответствии с изменениями Вована в интерфейсах нотификаторов.
//
// Revision 1.77.2.6  2005/07/11 06:14:40  lulin
// - упорядочены названия интерфейсов.
//
// Revision 1.77.2.5  2005/07/04 08:51:08  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.77.2.4  2005/06/01 16:22:26  lulin
// - remove unit: evIntf.
//
// Revision 1.77.2.3  2005/06/01 11:10:36  lulin
// - bug fix: не компилировалоась.
//
// Revision 1.77.2.2  2005/05/24 13:53:29  lulin
// - rename unit: evFormattedLines -> l3FormattedLines.
//
// Revision 1.77.2.1  2005/05/18 12:42:48  lulin
// - отвел новую ветку.
//
// Revision 1.73.2.10  2005/05/18 12:32:10  lulin
// - очередной раз объединил ветку с HEAD.
//
// Revision 1.73.2.9  2005/04/28 09:18:30  lulin
// - объединил с веткой B_Tag_Box.
//
// Revision 1.73.2.8  2005/04/18 16:43:25  lulin
// - используем _Box, а не Ik2Tag (пока выигрыша в производительности не дало).
//
// Revision 1.73.2.7  2005/04/14 16:15:39  lulin
// - вычищен код, связанный с отрисовкой по абсолютным координатам.
//
// Revision 1.73.2.6  2005/04/13 10:19:59  lulin
// - cleanup.
//
// Revision 1.73.2.5  2005/04/13 07:03:28  lulin
// - удален лишний параметр.
//
// Revision 1.73.2.4  2005/04/12 13:22:29  lulin
// - рисование параграфов частично переведено на InevAnchor.
//
// Revision 1.73.2.3  2005/04/11 16:06:15  lulin
// - new type: TnevFrame.
//
// Revision 1.73.2.2  2005/04/11 14:51:17  lulin
// - удален устаревший интерфейс.
//
// Revision 1.73.2.1  2005/04/11 13:00:16  lulin
// - используем другой тип для определения начала координат.
//
// Revision 1.75.2.2  2005/04/25 08:46:00  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.75.2.1  2005/04/22 15:23:21  lulin
// - вернул работоспособность параграфов с картинками и формул.
//
// Revision 1.75  2005/04/18 17:18:22  lulin
// - используем _Box, а не Ik2Tag (пока выигрыша в производительности не дало).
//
// Revision 1.74  2005/04/18 07:14:14  lulin
// - bug fix: не компилировалось.
//
// Revision 1.77  2005/05/16 09:53:39  lulin
// - clenup: удален ненужный параметр.
//
// Revision 1.76  2005/04/28 15:03:39  lulin
// - переложил ветку B_Tag_Box в HEAD.
//
// Revision 1.75.2.2  2005/04/25 08:46:00  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.75.2.1  2005/04/22 15:23:21  lulin
// - вернул работоспособность параграфов с картинками и формул.
//
// Revision 1.75  2005/04/18 17:18:22  lulin
// - используем _Box, а не Ik2Tag (пока выигрыша в производительности не дало).
//
// Revision 1.74  2005/04/18 07:14:14  lulin
// - bug fix: не компилировалось.
//
// Revision 1.73  2005/04/07 10:03:20  lulin
// - убраны ненужные формальные параметры.
//
// Revision 1.72  2005/04/06 11:50:20  lulin
// - new interface: _InevDrawingShape.
//
// Revision 1.71  2005/03/30 17:11:31  lulin
// - в процедуре печати/отрисовки убран ненужный параметр (aBottomCursor).
//
// Revision 1.70  2005/03/28 12:29:03  lulin
// - bug fix: не компилировалось.
//
// Revision 1.69  2005/03/25 11:04:26  lulin
// - используем _AttrW вместо SetNull.
//
// Revision 1.68  2005/03/25 10:42:25  lulin
// - bug fix: не компилировалось.
//
// Revision 1.67  2005/03/23 09:51:59  lulin
// - new prop: Ik2Tag.BoolA.
//
// Revision 1.66  2005/03/23 08:55:20  lulin
// - bug fix: не компилировалось.
//
// Revision 1.65  2005/03/22 08:52:32  lulin
// - bug fix: не компилировалось.
//
// Revision 1.64  2005/03/21 16:28:16  lulin
// - переходим к Ik2Tag.
//
// Revision 1.63  2005/03/21 10:04:50  lulin
// - new interface: _Ik2Type.
//
// Revision 1.62  2005/03/11 11:43:51  lulin
// - bug fix: не компилировалось.
//
// Revision 1.61  2005/03/10 08:34:08  lulin
// - bug fix: не компилировалось.
//
// Revision 1.60  2005/03/05 13:50:09  lulin
// - bug fix: не компилировалось.
//
// Revision 1.59  2005/02/22 17:07:14  lulin
// - bug fix: не компилировалось.
//
// Revision 1.58  2005/02/18 18:59:20  lulin
// - bug fix: параграф-дерево неправильно форматировался для вывода по принтерной канве.
//
// Revision 1.57  2005/02/18 18:27:26  lulin
// - bug fix: не выставлялся Pitch форматирующей канве и поэтому иногда неправильно форматировались параграфы-деревья.
//
// Revision 1.56  2005/02/18 18:05:34  lulin
// - добавлен Lock/Unlock канвы.
//
// Revision 1.55  2005/02/18 13:06:20  lulin
// - Painter'ы переехали на Ik2Tag.
//
// Revision 1.54  2004/12/04 14:42:42  mmorozov
// change: IevTagSelection -> IevBaseTagSelection (не компилировалось);
//
// Revision 1.53  2004/11/09 15:36:00  lulin
// - bug fix: не компилировалось.
//
// Revision 1.52  2004/06/04 16:12:34  law
// - bug fix: не компилировалось AllEverestComponents.
//
// Revision 1.51  2004/06/02 07:51:09  law
// - bug fix: не собирался AllEverestComponents.
//
// Revision 1.50  2004/05/27 09:07:19  law
// - change: избавился от лишнего метода IsMyIntf - вместо него теперь всегда используется IsSame.
//
// Revision 1.49  2004/05/26 16:59:03  law
// - new behavior: TvtCustomOutliner теперь знает только про интерфейсы Il3SimpleTree и Il3Tree, а не про объект _Tl3Tree.
//
// Revision 1.48  2004/04/15 08:09:05  nikitin75
// IsMyIntf fix;
//
// Revision 1.47  2004/03/03 18:03:53  law
// - rename unit: l3Tree2 -> l3Tree.
//
// Revision 1.46  2004/01/12 16:43:53  law
// - change: продолжаем  переход TevBlock -> IevTagSelection, _TevCursor -> IevTagROPoint.
//
// Revision 1.45  2003/07/24 13:11:06  voba
// no message
//
// Revision 1.44  2002/12/24 15:31:34  law
// - new units: TevTreeParaFormatter, TevTreeParaConst, TevSBSParaFormatter.
//
// Revision 1.43  2002/12/19 17:21:49  law
// - rename unit: evBsePar -> evBasePara.
//
// Revision 1.42  2002/12/19 17:05:44  law
// - new unit: evBaseParaWrap.
//
// Revision 1.41  2002/12/19 16:42:38  law
// - cleanup.
//
// Revision 1.40  2002/10/17 14:52:31  law
// - cleanup.
//
// Revision 1.39  2002/09/02 12:59:49  law
// - new behavior: удаление метки/блока по Del на корневом узле.
//
// Revision 1.38  2002/07/30 08:28:01  law
// - new param: TevTreePara._InitFont aNode.
//
// Revision 1.37  2002/07/29 16:01:57  law
// - new behavior: возможность удаления атрибутов меток.
//
// Revision 1.36  2002/07/26 14:38:40  law
// - new behavior: метки рисуются на параграфе с деревом.
//
// Revision 1.35  2002/07/25 17:17:58  law
// - change: поменял цвет фона по умолчанию для параграфа с деревом.
//
// Revision 1.34  2002/07/23 11:05:23  law
// - new behavior: нарезаем на строки с учетом еще и cc_HardEnter.
//
// Revision 1.33  2002/07/23 08:35:45  law
// - new behavior: учитываем ShowRoot.
//
// Revision 1.32  2002/07/22 16:11:55  voba
// - bug fix.
//
// Revision 1.31  2002/07/22 15:03:26  voba
// - bug fix: неправильно отдавались атрибуты меток.
//
// Revision 1.30  2002/07/22 14:10:59  law
// - cleanup: заменил xor'ом несколько других операций.
//
// Revision 1.29  2002/07/22 12:27:57  law
// - new behavior: переставляем курсор со спрятанного узла.
//
// Revision 1.28  2002/07/19 05:38:36  law
// - new behavior: сделана нарезка на строки с учетом cc_SoftEnter.
//
// Revision 1.27  2002/07/18 17:12:00  law
// - new behavior: для дерева учитываем правый и левый отступы.
//
// Revision 1.26  2002/07/18 16:29:27  law
// - new behavior: сделана нарезка на строки (пока без учета cc_SoftEnter).
//
// Revision 1.25  2002/07/18 13:06:46  law
// - new unit: evFormattedLines.
//
// Revision 1.24  2002/07/18 12:53:06  law
// - comments.
//
// Revision 1.23  2002/07/16 10:10:06  law
// - bug fix: иногда возвращался неправильный индекс узла.
//
// Revision 1.22  2002/07/16 09:22:38  law
// - rename unit: evBsePnt -> evBasePainter.
//
// Revision 1.21  2002/07/15 11:20:11  law
// - optimization: рисуем дерево не с первого узла, а с видимого.
//
// Revision 1.20  2002/07/12 17:44:11  law
// - new behavior: предварительно сделано синее выделение в дереве.
//
// Revision 1.19  2002/07/12 12:19:28  law
// - new behavior: переформатирование параграфа при изменении дерева.
//
// Revision 1.18  2002/07/12 10:29:55  law
// - new behavior: GetNodePart на основе GetNodeOffset.
//
// Revision 1.17  2002/07/12 09:22:22  narry
// - bug fix: не компилировалось с директивой _k2NotForEditor.
//
// Revision 1.16  2002/07/11 16:01:16  law
// - comments.
//
// Revision 1.15  2002/07/11 15:34:18  law
// - some optimization: не рисуем за концом канвы.
//
// Revision 1.14  2002/07/11 12:03:14  law
// - rename proc: _evPoint -> l3Point, evRect -> l3Rect.
//
// Revision 1.13  2002/07/10 15:57:14  law
// - new unit: evTreeParaHotSpot.
//
// Revision 1.12  2002/07/10 15:09:07  law
// - new behavior: черновой вариант отрисовки и курсора для параграфа с деревом.
//
// Revision 1.11  2002/07/10 11:26:19  law
// - new behavior: создание дерева если его не присвоили.
// - new behavior: регистрация параграфа в дереве для отслеживания изменений.
//
// Revision 1.10  2002/07/09 16:08:54  law
// no message
//
// Revision 1.9  2002/07/09 14:57:24  law
// - cleanup.
//
// Revision 1.8  2002/07/09 12:50:24  law
// - delete interfaces: Il3TreeFormatter, Il3TreePainter.
//
// Revision 1.7  2002/07/09 12:02:22  law
// - rename unit: evUnits -> l3Units.
//
// Revision 1.6  2002/07/09 11:12:10  law
// - change method: Il3TreeFormatter.DoFormat.
//
// Revision 1.5  2002/07/08 15:37:38  law
// - new behavior: не записываем несохраняемые дочерние теги.
//
// Revision 1.4  2002/07/08 13:29:05  law
// - comments.
//
// Revision 1.3  2002/07/08 13:28:21  law
// - new interface: Il3TreePainter.
//
// Revision 1.2  2002/07/08 13:12:10  law
// - new interface: Il3TreeFormatter.
//
// Revision 1.1  2002/07/08 12:11:30  law
// - new unit: evTreePara.
//

{$Include evDefine.inc }

interface

uses
  Classes,

  l3Interfaces,
  l3Const,
  l3Types,
  l3Base,
  l3InternalInterfaces,
  l3TreeInterfaces,
  l3Tree_TLB,

  l3Units,
  l3Tree,
  l3FormattedLines,

  afwInterfaces,

  k2Interfaces,
  k2Base,

  evdBasePara,
  evPara_Wrap,
  evInternalInterfaces,
  {$IfDef evNeedPainters}
  evLeafParaPainter,
  {$EndIf evNeedPainters}

  nevTools
  ;

type
  TevNodePart = (ev_npNone, ev_npText, ev_npPlus);
   {* Логическая часть узла. }
  TevTreePara = class(TevdBasePara, Il3ChangeRecipient, Il3RootSpy)
   {* Параграф с деревом. }
    private
    // internal fields
      f_UpdateCount : Long;
      f_Map         : Tl3FormattedLines;
    protected
    // property methods
      function pm_GetTree: Tl3Tree;
        {-}
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
      procedure Changing;
        override;
        {-}
      procedure Changed;
        override;
        {-}
      procedure DoRootChanged(const anOldRoot, aNewRoot: Il3SimpleRootNode);
        {-}
      procedure Il3RootSpy.RootChanged = DoRootChanged;
        {-}
    public
    // public methods
      function DoFormat(const aCanvas        : Il3InfoCanvas;
                        const aMeasureCanvas : Il3InfoCanvas;
                        aWidth               : Tl3Inch): Tl3Inch;
        {* - переформатирует дерево и возвращает высоту. }
      procedure InitFont(const aFont: Il3Font; const aNode: Il3Node);
        {* - инициализирует шрифт дерева. }
      function  GetNodeOffset(aNodeIndex         : Long;
                              const anInfoCanvas : Il3InfoCanvas;
                              const aNode        : Il3Node = nil): Tl3Point;
        {* - смещение aNode узла. }                      
      function  GetNodeByOffset(const anOffset: TafwPoint): Long;
        {* - узел по смещению. }
      procedure GetNodePart(const anOffset : TafwPoint;
                            out thePart    : TevNodePart;
                            out theNode    : Il3Node);
        {* - возвращает узел и его логическую часть, по смещению. }
      procedure ExpandNode(const aNode       : Il3Node;
                           const anOp        : InevOp = nil;
                           const aExpandMode : Tl3Bool = l3_bUnknown);
        {* - изменяет состояние "открыто" для узла. }
      function NodeLevel(const aNode : Il3Node): Long;
        {* - возвращает уровень узла, с учетом ShowRoot. }
    public
    // public properties
      property Tree: Tl3Tree
        read pm_GetTree;
        {* - дерево. }
  end;//TevTreePara

  WevTreePara = class(WevPara)
   {* Wrapper для параграфов с деревом. }
    public
    {public methods}
      function  GetAtomData(const anAtom : Ik2Tag;
                            aProp  : Tk2CustomProperty;
                            out theData  : Long): Bool;
        override;
        {-}
  end;{WevTreePara}

  {$IfDef evNeedPainters}
  TevTreeParaPainter = class(TevLeafParaPainter)
   {* "Рисователь" параграфа с деревом. Реализует интерфейс IevPainter. }
    public
    {public methods}
      function DrawLeaf: Bool;
        override;
        {* - рисует параграф с деревом - aPara на канве aCanvas со смещения aTop. }
  end;{TevTreeParaPainter}
  {$EndIf evNeedPainters}

implementation

uses
  SysUtils,
  
  Graphics,

  l3Chars,
  l3String,
  l3MinMax,
  l3Nodes,
  l3LineArray,

  evdTypes,

  nevBase,
  
  evConst,
  evTreeParaConst,
  {$IfDef evNeedPainters}
  evTypes,
  {$EndIf evNeedPainters}
  {$IfDef evUseVisibleCursors}
  evCursorTools,
  evTreeParaCursor,
  {$EndIf evUseVisibleCursors}

  k2Tags,
  {$IfDef evNeedPainters}
  k2InternalInterfaces,
  {$EndIf evNeedPainters}

  {$IfDef evNeedPainters}
  evSubNode,
  {$EndIf evNeedPainters}
  evDef,

  nevFacade,
  Sub_Const,
  Block_Const
  ;

const
 //ev_defTreeHeight = evInchMul div 8;
 ev_defLevel = evInchMul div 6;
 //ev_defTreePlusSize = 10;
 ev_defInchTreePlusSize = {evInchMul div 10; //} ev_defLevel - 4*evEpsilon;

// start class TevTreePara

procedure TevTreePara.Cleanup;
  //override;
  {-}
begin
 if HasSubAtom(k2_tiObject) then
  Attr[k2_tiObject] := nil;
 l3Free(f_Map);
 inherited;
end;

function TevTreePara.pm_GetTree: Tl3Tree;
  {-}
begin
 if (Self = nil) then
  Result := nil
 else
  with Attr[k2_tiObject] do
   if IsValid then
    Result := AsObject As Tl3Tree
   else
    Result := nil;
end;

procedure TevTreePara.InitFont(const aFont: Il3Font; const aNode: Il3Node);
  {* - инициализирует шрифт дерева. }
begin
 with aFont do begin
  Lock;
  try
   Name := def_FontName;
   Size := def_FontSize;
   Style := [];
   ForeColor := def_FontColor;
   with Attr[k2_tiBackColor] do
    if IsValid then
     BackColor := AsLong
    else
     BackColor := def_BackColor;
   Pitch := fpDefault;	  
  finally
   Unlock;
  end;//try..finally
 end;//with aFont
end;
  
function TevTreePara.DoFormat(const aCanvas        : Il3InfoCanvas;
                              const aMeasureCanvas : Il3InfoCanvas;
                              aWidth               : Tl3Inch): Tl3Inch;
  {* - переформатирует дерево и возвращает высоту. }
var
 l_Index : Long;
 l_Node  : Il3Node;
 l_Level : Long;
 l_Width : Long;
begin
 Result := 0;
 with aCanvas do begin
  Lock;
  try
   if (f_Map = nil) then
    f_Map := Tl3FormattedLines.Create
   else
    f_Map.Clear;
   with Tree do
    for l_Index := 0 to Pred(CountView) do begin
     l_Node := Nodes[l_Index];
     InitFont(Font, l_Node);
     l_Level := NodeLevel(l_Node);
     l_Width := aWidth - l_Level * ev_defLevel;
     Inc(Result, f_Map.FormatLine(aCanvas, l_Index, l_Node.Text, l_Width, aMeasureCanvas));
    end;//for l_Index
  finally
   Unlock;
  end;//try..finally
 end;//with aCanvas
end;

function TevTreePara.GetNodeOffset(aNodeIndex         : Long;
                                   const anInfoCanvas : Il3InfoCanvas;
                                   const aNode        : Il3Node = nil): Tl3Point;
  {* - смещение aNode узла. }
var
 l_InfoCanvas : Il3InfoCanvas;
 l_NodeIndex  : Long;
 l_Lines      : TevBaseLineArray;
 l_LineIndex  : Long;
 l_Node       : Il3Node;   
begin
 if (anInfoCanvas = nil) then
  l3IOk(QueryInterface(Il3InfoCanvas, l_InfoCanvas))
 else
  l_InfoCanvas := anInfoCanvas;
 if (l_InfoCanvas = nil) then
  Result := evPoint0
 else
  try
   with l_InfoCanvas do
   begin
    Result.X := IntA[k2_tiLeftIndent];
    l_Node := aNode;
    with Tree do begin
     if (aNode = nil) then
      l_Node := Nodes[aNodeIndex];
     InitFont(Font, l_Node);
     if (aNodeIndex >= 0) then
      Inc(Result.P.X, NodeLevel(l_Node) * ev_defLevel)
     else begin
      Inc(Result.P.X, NodeLevel(l_Node) * ev_defLevel);
      aNodeIndex := GetIndex(l_Node);
     end;//aNodeIndex >= 0
     Result.Y := 0;
     for l_NodeIndex := 0 to Pred(aNodeIndex) do begin
      if (f_Map = nil) then
       l_Lines := nil
      else
       try
        l_Lines := f_Map.Items[l_NodeIndex] As TevBaseLineArray;
       except
        on EListError do
         Exit;
       end;//try..except
      if (l_Lines = nil) then
       Inc(Result.P.Y, AverageCharHeight)
      else with l_Lines do
       for l_LineIndex := 1 to Count do
        Inc(Result.P.Y, LineHeight[l_LineIndex]);
     end;//for l_NodeIndex
    end;//with Tree
   end;//with l_InfoCanvas
  finally
   l_InfoCanvas := nil;
  end;//try..finally
end;

function TevTreePara.GetNodeByOffset(const anOffset: TafwPoint): Long;
  {* - узел по смещению. }
var
 l_InfoCanvas : Il3InfoCanvas;
 l_NodeIndex  : Long;
 l_Lines      : TevBaseLineArray;
 l_LineIndex  : Long;
 l_NodeHeight : Long;
 l_Tree       : Tl3Tree;
begin
 Result := 0;
 if l3IOk(QueryInterface(Il3InfoCanvas, l_InfoCanvas)) then
  try
   l_Tree := Tree;
   with l_InfoCanvas do begin
    l_NodeHeight := 0;
    for l_NodeIndex := 0 to Pred(Tree.CountView) do begin
     InitFont(Font, l_Tree.Nodes[l_NodeIndex]);
     Result := l_NodeIndex;
     if (f_Map = nil) then
      l_Lines := nil
     else
      l_Lines := f_Map.Items[l_NodeIndex] As TevBaseLineArray;
     if (l_Lines = nil) then
      Inc(l_NodeHeight, AverageCharHeight)
     else with l_Lines do
      for l_LineIndex := 1 to Count do
       Inc(l_NodeHeight, LineHeight[l_LineIndex]);
     if (l_NodeHeight >= anOffset.Y) then
      break;
    end;//for l_NodeIndex
   end;//with l_InfoCanvas
  finally
   l_InfoCanvas := nil;
  end;//try..finally
end;

procedure TevTreePara.GetNodePart(const anOffset : TafwPoint;
                                  out thePart    : TevNodePart;
                                  out theNode    : Il3Node);
  {-}
var
 l_Offset : Tl3Point;
begin
 thePart := ev_npNone;
 with Tree do begin
  theNode := Nodes[GetNodeByOffset(anOffset)];
  if (theNode <> nil) then begin
   l_Offset := GetNodeOffset(-1, nil, theNode);
   if (anOffset.X < l_Offset.X) then begin
    if (anOffset.X > l_Offset.X - ev_defLevel) AND theNode.HasChild then
     thePart := ev_npPlus;
   end else
    thePart := ev_npText;
  end;//theNode <> nil
 end;//with Tree
end;

procedure TevTreePara.ExpandNode(const aNode       : Il3Node;
                                 const anOp        : InevOp = nil;
                                 const aExpandMode : Tl3Bool = l3_bUnknown);
  {-}

{$IfDef evUseVisibleCursors}
var
 l_Tree : Tl3Tree;
{$EndIf evUseVisibleCursors}

 {$IfDef evUseVisibleCursors}
 function _ModifyCursor(C: PObject; Index: Long): Bool; far;
 var
  l_Pos : Long;
 begin//_ModifyCursor
  Result := true;
  with InevPoint(TevTreeParaCursor(C^)) do
  begin
   l_Pos := Position;
   with l_Tree do begin
    if (l_Pos >= CountView) then
     SetEntryPoint(Pred(CountView), anOp);
   end;//with l_Tree
  end;//with TevTreeParaCursor(C^)
 end;//_ModifyCursor
 {$EndIf evUseVisibleCursors}

var
 l_Flags : Long;
begin
 {$IfDef evUseVisibleCursors}
 l_Tree := Tree;
 with l_Tree do begin
 {$Else  evUseVisibleCursors}
 with Tree do begin
 {$EndIf evUseVisibleCursors}
  l_Flags := NodeFlags[aNode];
  case aExpandMode of
   l3_bUnknown:
    l_Flags := l_Flags xor nfExpanded;
   l3_bTrue:
    l_Flags := l_Flags or nfExpanded;
   l3_bFalse:
    l_Flags := l_Flags and not nfExpanded;
  end;//case aExpandMode of
  NodeFlags[aNode] := l_Flags;
  {$IfDef evUseVisibleCursors}
  if (l_Flags and nfExpanded = 0) then
   evIterateCursorsF(Self, l3L2IA(@_ModifyCursor));
  {$EndIf evUseVisibleCursors}
 end;//with Tree
 //BoolWC[k2_tiFormatted, anOp] := false; // <stub>
end;

function TevTreePara.NodeLevel(const aNode : Il3Node): Long;
  {* - возвращает уровень узла, с учетом ShowRoot. }
begin
 if (aNode = nil) then
  Result := 0
 else with Tree do begin
  Result := GetLevel(aNode);
  if ShowRoot then
   Inc(Result);
 end;//aNode = nil
end;

procedure TevTreePara.Changing;
  //override;
  {-}
begin
 inherited;
 Inc(f_UpdateCount);
end;

procedure TevTreePara.Changed;
  //override;
  {-}
begin
 Dec(f_UpdateCount);
 if (f_UpdateCount < 0) then
  f_UpdateCount := 0;
(* if (f_UpdateCount = 0) then
  BoolA[k2_tiFormatted] := false;*) // <stub>
 inherited;
end;

procedure TevTreePara.DoRootChanged(const anOldRoot, aNewRoot: Il3SimpleRootNode);
  {-}
var
 l_Root : Il3RootNode;
begin
 if Supports(anOldRoot, Il3RootNode, l_Root) then
   l_Root.As_Il3ChangeNotifier.Unsubscribe(Il3ChangeRecipient(Self));
 if Supports(aNewRoot, Il3RootNode, l_Root) then
   l_Root.As_Il3ChangeNotifier.Subscribe(Il3ChangeRecipient(Self));
end;
  
// start class WevTreePara

function WevTreePara.GetAtomData(const anAtom : Ik2Tag;
                                 aProp  : Tk2CustomProperty;
                                 out theData  : Long): Bool;
  //override;
  {-}
var
 l_Parent : Ik2Tag;
 l_Width  : Long;
 l_Tree   : Ik2Tag;
begin
 Result := inherited GetAtomData(anAtom, aProp, theData);
 if not Result OR ((theData = 0) AND (aProp.TagIndex = k2_tiObject)) then
 begin
  Case aProp.TagIndex of
   k2_tiWidth: begin
    Result := true;
    l_Parent := anAtom.Owner;
    with l_Parent do begin
     if IsValid then begin
      with Attr[k2_tiWidth] do
       if IsValid then
        l_Width := AsLong
       else begin
        theData := ev_defTreeWidth;
        Exit;
       end;{IsValid}
      with Attr[k2_tiLeftIndent] do
       if IsValid then
        Dec(l_Width, AsLong);
      with Attr[k2_tiRightIndent] do
       if IsValid then
        Dec(l_Width, AsLong);
      theData := l_Width;
     end else
      theData := ev_defTreeWidth;
    end;{with l_Parent}
   end;//k2_tiWidth
   k2_tiObject : begin
    Result := true;
    l_Tree := Tk2Type(aProp.AtomType).MakeTag;
    try
     theData := Long(l_Tree.AsObject);
     anAtom[aProp.TagIndex] := l_Tree;
    finally
     l_Tree := nil;
    end;//try..finally
   end;//k2_tiObject
  end;//Case aProp.TagIndex
 end;//not Result..
end;

{$IfDef evNeedPainters}

// start class TevTreeParaPainter

function TevTreeParaPainter.DrawLeaf: Bool;
  //override;
  {* - рисует параграф с деревом - Para на канве CN со смещения Top. }

var
 l_Top : Tl3Point;
 l_Top1 : TnevPoint;

 function _DoDraw: Bool;

 var
  l_Tree : Tl3Tree;
  l_TreePara : TevTreePara;

  function DrawItem(anIndex: Long): Bool;

  var
   l_NodeText : Tl3PCharLen;
   l_Level    : Long;

   procedure DrawLines(aForeColor : TColor = clDefault;
                       aBackColor : TColor = clDefault);
   var
    l_Lines    : TevBaseLineArray;
    l_Index    : Long;
    l_LineText : Tl3PCharLen;
   begin//DrawLines
    l_Lines := l_TreePara.f_Map.Items[anIndex] As TevBaseLineArray;
    with Area.rCanvas do
     if (l_Lines = nil) then
      MoveWindowOrg(TextOut(l3PointX(ev_defLevel * l_Level), l_NodeText, aForeColor, aBackColor).e_Y)
     else begin
      with l_Lines do
       for l_Index := 1 to Count do begin
        l_LineText := GetLine(l_NodeText, l_Index);
        with l_LineText do
         if (SLen > 0) AND (S[Pred(SLen)] in [cc_SoftEnter, cc_HardEnter]) then
          Dec(SLen);
        MoveWindowOrg(TextOut(l3PointX(ev_defLevel * l_Level), l_LineText, aForeColor, aBackColor).e_Y);
       end;//for l_Index
     end;
   end;//DrawLines

  const
   l_FrameWidth = 1;
  var
   l_Node        : Il3Node;
   l_Org         : Tl3Point;
   l_Org2        : Tl3Point;
   l_HalfPlus    : Tl3Inch;
   l_HalfPlusDec : Tl3Inch;
   l_Rect        : Tl3Rect;
   l_TagWrap     : Ik2Tag;
   LL            : Integer;
  begin//DrawItem
   Result := true;
   l_Node := l_Tree.Nodes[anIndex];
   if (l_Node <> nil) then
   begin
    Tl3PCharLenPrim(l_NodeText) := l_Node.Text;
    l_Level := l_TreePara.NodeLevel(l_Node);
    with Area.rCanvas do
    begin
     l_Org := WindowOrg;
     l_TreePara.InitFont(Font, l_Node);
     if CanDrawSubs AND l_Node.IsSame(l_Tree.RootNode) then begin
      if l3IOk(l_Node.QueryInterface(Ik2Tag, l_TagWrap)) then
       try
        with l_TagWrap do
         if InheritsFrom(k2_idSub) AND not InheritsFrom(k2_idBlock) then
         begin
          l_Rect.R.TopLeft := WindowOrg.Neg;
          l_Rect.R.BottomRight := l_Rect.TopLeft.Add(l3Point1(AverageCharHeight));
          DrawSub(((l_Node As Il3NodeWrap).GetSelf As TevSubNode).Para,
                  l_Rect,
                  ev_sbtSub,
                  l_TagWrap);
         end;//..k2_idSub..
       finally
        l_TagWrap := nil;
       end;//try..finally
     end;//..IsSame..

     if ShowCursor AND (Caret <> nil) then
     begin
      if (Caret.Position = anIndex) then
      begin
       SetCaret(l3PointX(ev_defLevel * l_Level), l3Point(AverageCharWidth, AverageCharHeight), true);
       ShowCursor := false;
       DrawLines(clWhite, clNavy);
      end//Caret.Position = anIndex
      else
       DrawLines;
     end//ShowCursor AND (Caret <> nil)
     else
      DrawLines;

     l_Org2 := WindowOrg;

     WindowOrg := l_Org;
     l_HalfPlus := ev_defInchTreePlusSize div 2;
     //MoveWindowOrg(l3Point(-ev_defLevel * Pred(l_Level) {+ 2*evEpsilon},
     //              -(AverageCharHeight div 2 - l_HalfPlus)));
     FillRect(l3RectBnd(evPoint0,l3Point(ev_defLevel * l_Level,  -(l_Org2.Y - WindowOrg.Y){!!!})));
     //Color := clBlack;

     MoveWindowOrg(l3Point(-l_HalfPlus -ev_defLevel * Pred(l_Level) {+ 2*evEpsilon},
                           -l_HalfPlus -(AverageCharHeight div 2 - l_HalfPlus)));

     if (l_Level <= 2) then  // draw chip with plus
     begin
       MoveTo(l3Point(-l_HalfPlus, 0));
       LineTo(l3Point(0, -l_HalfPlus));
       LineTo(l3Point(l_HalfPlus,  0));
       LineTo(l3Point(0,  l_HalfPlus));
       LineTo(l3Point(-l_HalfPlus, 0));

       l_HalfPlusDec := l_HalfPlus - 20;

       If l_Node.HasChild then
       begin
        MoveTo(l3Point(-evEpsilon, 0));
        LineTo(l3Point( l_HalfPlusDec, 0));

        MoveTo(l3Point(evEpsilon, 0));
        LineTo(l3Point( -l_HalfPlusDec, 0));

        if not l_Tree.IsExpanded(l_Node) then
        begin
         MoveTo(l3Point(0, -evEpsilon));
         LineTo(l3Point(0,  l_HalfPlusDec));

         MoveTo(l3Point(0,  evEpsilon));
         LineTo(l3Point(0, -l_HalfPlusDec));
        end
        else
        begin
         MoveTo(l3Point(0, l_HalfPlus));
         LineTo(l3Point(0, -(l_Org2.Y - WindowOrg.Y)));
        end;
       end;

       //MoveWindowOrg(l3Point(ev_defLevel, 0));
     end
     else
      MoveWindowOrg(l3Point(ev_defLevel, 0));
       //WindowOrg := l_Org;


     LL := l_Tree.GetLines(l_Node);

     //If Not fShowOpenChip and Not fShowRoot then LL := LL shr 1;

     MoveWindowOrg(l3Point(ev_defLevel, 0));

     While LL <> 0 do
     begin
      //MoveWindowOrg(l3Point(-ev_defLevel, 0));
      If ((LL and 1) <> 0) (*and
         Not (((LL shr 1) = 0) and l_Node.HasChild {and fShowOpenChip})*) then
       If (LL shr 1) = 0 then
       begin
        {Draw L}
        MoveTo(l3Point(0, -AverageCharHeight div 2));
        LineTo(l3Point(0, 0));
        LineTo(l3Point(ev_defLevel - l_HalfPlus, 0));

        If not l_Node.IsLast then
        begin {Draw I-}
         MoveTo(l3Point(0, 0));
         LineTo(l3Point(0, -(l_Org2.Y - WindowOrg.Y)));
        end
       end
       else
       begin {Draw I}
        MoveTo(l3Point(0, -AverageCharHeight div 2));
        LineTo(l3Point(0, -(l_Org2.Y - WindowOrg.Y)));
       end;
       LL := LL shr 1;
       //Inc(CR.Left,BMPX);
       If (LL <> 0) then MoveWindowOrg(l3Point(-ev_defLevel, 0));
      end;

      (*If (CR.Bottom - CR.Top > FRowHeight + 2) and
          CNode.HasChild and FTreeSource.IsExpanded(CNode) then {Draw I}
      begin
       MoveTo(CR.Left+BMPX shr 1, CR.Top + FRowHeight + 2);
       LineTo(CR.Left+BMPX shr 1, CR.Bottom);
      end; *)
     //end;


     WindowOrg := l_Org2;

     if (ClipRect.Bottom <= 0) then Result := false;
     // -если уперлись вниз экрана то ВЫХОД
    end;//with Area.rCanvas
   end;//l_Node <> nil
  end;//DrawItem

 var
  l_Index     : Long;
  l_WindowOrg : Tl3Point;
  l_TopNode   : Long;
 begin//_DoDraw
  Result := true;
  l_TreePara := (ParaX.AsObject As TevTreePara);
  l_Tree := l_TreePara.Tree;
  with Area.rCanvas do
  begin
   l_WindowOrg := WindowOrg;
   try
    with l_TreePara do begin
     l_TopNode := GetNodeByOffset(l_Top1);
     MoveWindowOrg(l3Point(-l_Top.X, l_Top1.Y - GetNodeOffset(l_TopNode, Self.Area.rCanvas.As_Il3Canvas).Y));
    end;//with l_TreePara
    for l_Index := l_TopNode to Pred(l_Tree.CountView) do
     if not DrawItem(l_Index) then
      break;
   finally
    WindowOrg := l_WindowOrg;
   end;//try..finally
  end;//with Area.rCanvas
 end;//_DoDraw

var
 l_Left : Long;
begin
 with ParaX do
 begin
  with Attr[k2_tiLeftIndent] do
   if IsValid then
    l_Left := AsLong
   else
    l_Left := 0;
  l_Top1 := nevPt0;
  l_Top := Tl3Point(l_Top1).Neg;
  Inc(l_Top.P.X, l_Left);
  Result := _DoDraw;
 end;//with ParaX
end;
{$EndIf evNeedPainters}

end.

