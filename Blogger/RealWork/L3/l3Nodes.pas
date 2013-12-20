{$F+,X+,I-,S-}
unit l3Nodes;
{* Рализации различных узлов дерева. }

{ Библиотека "L3 (Low Level Library)" }
{ Автор: Бабанин В.Б. © }
{ Модуль: l3Nodes - }
{ Начат: 24.06.1999 }
{ $Id: l3Nodes.pas,v 1.209 2013/05/20 09:43:56 morozov Exp $ }

// $Log: l3Nodes.pas,v $
// Revision 1.209  2013/05/20 09:43:56  morozov
// {RequestLink:440894636}
//
// Revision 1.208  2013/04/19 15:43:28  lulin
// - портируем.
//
// Revision 1.207  2013/04/04 11:33:02  lulin
// - портируем.
//
// Revision 1.206  2012/11/01 14:40:35  kostitsin
// [$407743861]
//
// Revision 1.205  2012/10/31 14:55:37  kostitsin
// переименовал методы Notify на двух интерфейсах
//
// Revision 1.204  2012/10/30 11:25:54  kostitsin
// В Tl3CustomTreeView вынес реализацию CompareChild в DoCompareChild
//
// Revision 1.203  2012/10/26 19:42:24  lulin
// - вычищаем поддержку ветки редактора.
//
// Revision 1.202  2012/08/02 09:51:22  kostitsin
// [$380616604]
// - l3Nodes
//
// Revision 1.201  2011/12/22 12:08:33  lulin
// [$321989454]
//
// Revision 1.200  2011/06/20 15:22:24  lulin
// {RequestLink:269083814}
//
// Revision 1.199  2011/06/20 12:48:20  dinishev
// [$269078366]
//
// Revision 1.198  2011/06/07 10:08:39  lulin
// {RequestLink:268345098}.
//
// Revision 1.197  2010/12/08 19:04:29  lulin
// {RequestLink:228688602}.
// - закругляем край у строки ввода.
//
// Revision 1.196  2010/10/04 14:08:28  fireton
// - const перед Tl3WString и Il3CString
//
// Revision 1.195  2010/09/28 13:06:11  fireton
// - Распределяем память для PAnsiChar своими средствами
//
// Revision 1.194  2010/09/21 11:06:56  fireton
// - переводим деревья с PAnsiChar на Tl3WString
//
// Revision 1.193  2009/12/16 11:44:17  lulin
// - убираем неправильные приведения к своим собственным интерфейсам.
//
// Revision 1.192  2009/12/11 14:14:53  lulin
// {RequestLink:172984520}.
//
// Revision 1.191  2009/12/04 09:00:36  fireton
// - более корректный поиск ноды по пути
//
// Revision 1.190  2009/10/21 12:37:36  lulin
// - переносим на модель базовые ноды.
//
// Revision 1.189  2009/10/20 17:30:36  lulin
// {RequestLink:159360578}. №4.
//
// Revision 1.188  2009/07/23 08:15:07  lulin
// - вычищаем ненужное использование процессора операций.
//
// Revision 1.187  2009/07/21 14:36:12  lulin
// - убираем поддержку _IUnknown со строк.
//
// Revision 1.186  2009/07/21 12:24:40  lulin
// {RequestLink:141264340}. №35.
//
// Revision 1.185  2009/01/23 13:58:39  lulin
// - <K>: 135605086.
//
// Revision 1.184  2009/01/16 17:06:24  voba
// -  cDefCodePage временная заточка для листов
//
// Revision 1.183  2009/01/16 10:04:11  voba
// - bug fix
//
// Revision 1.182  2008/12/12 19:19:30  lulin
// - <K>: 129762414.
//
// Revision 1.181  2008/07/03 12:08:43  voba
// - add  function l3GetLastPartOfName
//
// Revision 1.180  2008/04/18 12:06:04  fireton
// - новый режим итерации: перебираем только листьевые узлы
//
// Revision 1.179  2008/04/08 13:28:50  voba
// - opt.
//
// Revision 1.178  2008/04/01 17:07:09  lulin
// - нарисовал контейнер документа на модели.
//
// Revision 1.177  2008/03/20 09:48:40  lulin
// - cleanup.
//
// Revision 1.176  2008/02/20 17:23:09  lulin
// - упрощаем строки.
//
// Revision 1.175  2008/02/15 11:29:59  lulin
// - простая нода теперь знает про предыдущего соседа.
//
// Revision 1.174  2008/02/11 05:16:03  mmorozov
// - new: узел отвечает на вопрос можно ли его перемещать (CQ: OIT5-28331);
//
// Revision 1.173  2008/02/08 12:19:35  mmorozov
// - new: возможность приёма перетаскиваемых объектов узлами дерева + новый формат в буфере обмена для перемещния нескольких узлов (CQ: OIT5-28331);
//
// Revision 1.172  2008/02/07 14:44:45  lulin
// - класс _Tl3LongintList переехал в собственный модуль.
//
// Revision 1.171  2008/02/05 18:55:11  lulin
// - запрещаем напрямую устанавливать буфер строке.
//
// Revision 1.170  2007/12/26 14:10:37  lulin
// - модуль l3Interfaces полностью переведен на модель.
//
// Revision 1.169  2007/12/26 11:14:21  lulin
// - cleanup.
//
// Revision 1.168  2007/12/25 23:55:57  lulin
// - модуль l3Tree_TLB полностью перенесен на модель.
//
// Revision 1.167  2007/12/24 15:25:32  lulin
// - удалены ненужные файлы.
//
// Revision 1.166  2007/09/07 12:53:28  lulin
// - удален ненужный параметр.
//
// Revision 1.165  2007/08/30 11:34:20  voba
// no message
//
// Revision 1.164  2007/08/14 14:30:13  lulin
// - оптимизируем перемещение блоков памяти.
//
// Revision 1.163  2007/04/05 10:36:27  lulin
// - cleanup.
//
// Revision 1.162  2007/02/28 17:00:09  lulin
// - корректнее обрабатываем присвоение юникодных строк.
//
// Revision 1.161  2007/02/13 16:36:47  lulin
// - используем более простые функции сравнения.
//
// Revision 1.160  2007/02/08 13:12:07  lulin
// - используем сравнение с учетом кодировки.
//
// Revision 1.159  2007/01/30 15:24:25  lulin
// - текст ноды - теперь более простого типа.
//
// Revision 1.158  2007/01/22 13:43:10  lulin
// - добавлен метод создания ноды в виде интерфейса.
//
// Revision 1.157  2007/01/09 12:25:14  lulin
// - создаем корневую ноду только по запросу.
//
// Revision 1.156  2007/01/09 11:31:53  lulin
// - для хранения текста используем "родные" строки.
//
// Revision 1.155  2007/01/09 11:16:40  lulin
// - cleanup.
//
// Revision 1.154  2007/01/09 10:08:48  voba
// - new beh. Tl3DataListContainerNode выставляет Items.NeedAllocStr = True
//
// Revision 1.153  2007/01/05 18:17:38  lulin
// - используем базовые ноды для выпадающих списков.
//
// Revision 1.152  2006/12/27 12:06:35  lulin
// - ноде добавлено свойство - уровень относительно самого верхнего корня.
//
// Revision 1.151  2006/12/27 11:43:27  lulin
// - используем более базовый интерфейс ноды.
//
// Revision 1.150  2006/12/27 09:46:41  lulin
// - два метода, вычисляющие уровень ноды объединены в один.
//
// Revision 1.149  2006/12/25 10:20:29  lulin
// - параметры строки теперь получаем одним вызовом, а не тремя.
//
// Revision 1.148  2006/12/22 15:06:43  lulin
// - текст ноды - теперь структура с длиной и кодовой страницей.
//
// Revision 1.147  2006/12/22 11:48:14  lulin
// - не перевычисляем длину текста при работе с нодами.
//
// Revision 1.146  2006/12/20 12:32:15  lulin
// - cleanup.
//
// Revision 1.145  2006/12/20 10:05:57  lulin
// - простая нода теперь умеет удалять себя.
//
// Revision 1.144  2006/09/12 14:02:39  oman
// - new beh: Поддержка свернуть/развернуть для новых деревьях (cq22540)
//
// Revision 1.143  2006/07/17 13:26:33  mmorozov
// new: property Il3SimpleNode.IndexInParent;
//
// Revision 1.142  2006/06/28 08:42:16  fireton
// - заменил as на Supports в SubscribeChild и UnsubscribeChild
//
// Revision 1.141  2006/04/20 13:32:03  voba
// -  change in Tl3_CustomString - вместо pm_GetSt теперь перекрываем DoGetSt
//
// Revision 1.140  2005/12/14 09:50:51  voba
// - ref. перенес поддержку Il3ItemNotifyRecipient на Tl3CustomListContainerNode
//
// Revision 1.139  2005/11/23 15:11:24  voba
// - add class Tl3IListContainerNode
// - imp перенес реализацию _move для листов на ноду-контейнер
//
// Revision 1.138  2005/11/18 13:26:35  lulin
// - в процедуру конца модификации теперь можно подавать пачку операций.
//
// Revision 1.137  2005/10/18 08:37:04  mmorozov
// change: свойства "AllChildrenCount и ThisChildrenCount" переехали с Il3Node на Il3SimpeNode;
//
// Revision 1.136  2005/09/27 11:33:27  narry
// - обновление: l3SearchByPath для пустого пути возвращает корневой узел
//
// Revision 1.135  2005/09/23 10:49:46  voba
// no message
//
// Revision 1.134  2005/09/20 13:55:08  voba
// - new beh. Типизированная подписка псевдоноды -обертки вокруг элемента листа на изменения листа
//
// Revision 1.133  2005/08/24 16:08:01  demon
// - fix: в функции l3IterateSubTreeF мог не освободиться итератор
//
// Revision 1.132  2005/08/19 10:19:43  fireton
// - вставил Changing/_Changed в процедуру SortChilds
//
// Revision 1.131  2005/08/15 11:53:59  voba
// - bug fix  с нотификаторами
//
// Revision 1.130  2005/08/15 08:01:04  fireton
// - новая функция - l3SearchByNode
//
// Revision 1.129  2005/08/02 11:54:53  voba
// - bug fix дополнительная подписка на Il3ChangeRecipient в связи с переделками нотификатора
//
// Revision 1.128  2005/07/28 15:37:10  lulin
// - правки в соответствии с изменениями Вована в интерфейсах нотификаторов.
//
// Revision 1.127  2005/07/28 15:08:37  voba
// - improve : l3ItemStorages_TLB перетащили  в l3Interfaces
// - improve : AddNotifiedObj/DelNotifiedObj переименовли в Subscribe/Unsubscribe для поддержки интерфейса Il3ChangeNotifier
// - improve : Il3ItemNotifyRecipient._Notify добавили параметр aNotifier : Il3ChangeNotifier
//
// Revision 1.126  2005/01/25 11:33:50  lulin
// - bug fix: при вставке комментариев из буфера обмена они не показыались в структуре документа.
//
// Revision 1.125  2005/01/11 09:52:40  voba
// - небольшая чистка кода
//
// Revision 1.124  2004/12/30 11:46:34  lulin
// - интерфейсы относящиеся к Preview переехали в библиотеку _AFW.
//
// Revision 1.123  2004/11/26 09:11:16  voba
// - add Changing/_changed in SetItems
//
// Revision 1.122  2004/10/27 16:04:37  lulin
// - cleanup: убраны Hint'ы и Warning'и.
//
// Revision 1.121  2004/10/12 13:37:18  voba
// - bug fix в сложных случаях SortChilds
//
// Revision 1.120  2004/09/28 10:25:11  mmorozov
// new: method Tl3CacheableNode.Make;
//
// Revision 1.119  2004/07/22 10:35:24  voba
// - use HostDataSize in GetItemDataSize
//
// Revision 1.118  2004/06/23 14:41:53  mmorozov
// change: сигнатура Tl3CacheableNode.Create;
//
// Revision 1.117  2004/06/23 09:20:18  voba
// - add ReleaseChildsPrim
//
// Revision 1.116  2004/06/22 13:54:50  voba
// - ставил скобки changing-_changed в ReleaseChilds
//
// Revision 1.115  2004/06/22 12:43:31  voba
// - up Set_AllChildrenCount to Tl3CustomNode
//
// Revision 1.114  2004/06/21 15:13:49  voba
// -bug fix
//
// Revision 1.113  2004/06/21 12:37:02  voba
// - add _Notify ntChildClear to ReleaseChilds
//
// Revision 1.112  2004/06/10 11:03:25  law
// - свойство Tl3CustomString.Len сделано статическим.
//
// Revision 1.111  2004/06/07 13:08:33  am
// bugfix: Tl3PlaceNode.IsFirst/IsLast избавился от try/except, ввёл доп. проверки (работают в случае, когда у родителя узла уже почистили информацию о нём, а мы по-прежнему зовёт IsFirst/IsLast на узле)
//
// Revision 1.110  2004/06/03 17:15:51  law
// - new interface: Ik2Base.
//
// Revision 1.109  2004/06/01 14:23:13  law
// - удалены конструкторы Tl3VList.MakeLongint, MakeLongintSorted - пользуйтесь _Tl3LongintList.
//
// Revision 1.108  2004/06/01 14:20:19  demon
// - new behavior: константы описания флагов нод переехали в l3TreeInterfaces
//
// Revision 1.107  2004/06/01 13:53:25  demon
// - new: на интерфейсе Il3SimpleNode появились методы для работы с одним флагом на ноде.
//
// Revision 1.106  2004/06/01 13:48:19  law
// - используем _Tl3LongintList.
//
// Revision 1.105  2004/06/01 08:21:42  demon
// - new behavior: на _Il3SimpleTree добавлен простой итератор, а на Il3SimpleNode - SetFlag
//
// Revision 1.104  2004/05/27 08:59:13  law
// - change: исбавился от лишнего метода IsMyIntf - вместо нео теперь всегда используется _IsSame.
//
// Revision 1.103  2004/05/26 18:17:26  law
// - change: Il3Node теперь наследуется от Il3SimpleNode.
//
// Revision 1.102  2004/05/26 14:22:06  law
// - change: скестил "ежа с ужом" (старые деревья с новыми).
//
// Revision 1.101  2004/05/25 08:05:04  voba
// - new behavior : изменили логику перемещений узлов вправо/влево
//
// Revision 1.100  2004/05/21 12:04:42  narry
// - update: добавлено несколько (2) комментариев
//
// Revision 1.99  2004/05/19 14:13:17  voba
// -add _notify after delete node
//
// Revision 1.98  2004/04/27 09:24:51  voba
// -rename nfWasDeleted to  nfWasDisappear
// -set nfWasDisappear in Remove and reset in InsertChildBefore
//
// Revision 1.97  2004/04/13 13:49:37  law
// - cleanup.
//
// Revision 1.96  2004/04/13 13:29:42  law
// - cleanup: убрано лишнее приведение через As к Il3Node.
//
// Revision 1.95  2004/04/13 12:05:13  law
// - optimization: метод IsMyIntf перенесен на Il3Node.
//
// Revision 1.94  2004/03/05 11:56:02  law
// - добавлены префиксы l3.
//
// Revision 1.93  2004/02/16 16:48:30  voba
// no message
//
// Revision 1.92  2004/02/06 13:28:38  voba
// -new behavior: SplitFlags - Первые 2 байта в дерево, остальные в ноду
//
// Revision 1.91  2004/02/04 17:25:03  migel
// - fix: не был перекрыт `ReleaseChilds` у `Tl3ListContainerNode`.
//
// Revision 1.90  2004/01/22 15:35:05  voba
// -new behavior: заменил события onChanging, onChanged на регистрацию рассылки соообщений Il3ChangeRecipient
//
// Revision 1.89  2003/12/11 19:01:11  law
// - cleanup: навел порядок с AllChildrenCount и ThisChildrenCount.
//
// Revision 1.88  2003/12/11 12:50:14  law
// - rename: все упоминания ChildsCount переименованы в AllChildrenCount.
//
// Revision 1.87  2003/11/17 17:22:20  voba
// -bug fix
//
// Revision 1.86  2003/09/12 11:59:47  demon
// - bug fix: ReleaseChilds не зачищала fChildCount.
//
// Revision 1.85  2003/09/09 13:39:26  law
// - change: функции _l3SearchByName добавлен параметр по умолчанию.
//
// Revision 1.84  2003/08/19 11:29:30  voba
// - bug fix: отрисовка линий объединяющих уровень не учитытывала скрытые элементы
//
// Revision 1.83  2003/08/12 09:26:59  demon
// - new: добавлен новый флаг nfWasDeleted, проверяемый в процедуре IsDisapeared.
//
// Revision 1.82  2003/07/28 09:50:37  demon
// - bug fix : неправильно работал итератор при невозвращении Result
//
// Revision 1.81  2003/07/09 11:29:11  demon
// - bug fix: был AV при рассылке нотификаций от ноды (т. к. была непоправлена старая реализация).
//
// Revision 1.80  2003/07/04 15:09:41  voba
// - add method IsDisappeared
// - improvement : ноды-на-листе следят за удалением из листа
//
// Revision 1.79  2003/06/20 13:23:51  law
// - new file: _l3IterMode.inc.
//
// Revision 1.78  2003/06/11 15:46:23  voba
// - improvement
//
// Revision 1.77  2003/06/02 15:25:09  law
// - cleanup: перед интерфейсными параметрами поставлен модификатор const.
//
// Revision 1.76  2003/05/30 17:07:25  voba
// - rename l3*Flag to l3*Mask
//
// Revision 1.75  2003/05/29 16:57:41  law
// - new behavior: наследники от Tl3CustomNode теперь должны корректно вести себя при кешировании.
//
// Revision 1.74  2003/03/26 15:57:34  voba
// -code clear
//
// Revision 1.73  2003/02/10 16:06:20  law
// - cleanup: удалена процедура l3NodeActionL2FA - надо вместо нее использовать l3L2NA.
//
// Revision 1.72  2002/11/14 16:51:25  voba
// no message
//
// Revision 1.71  2002/11/10 16:38:25  voba
// - new behavior: добавил поддержку скрытых нод
//
// Revision 1.70  2002/07/29 16:01:58  law
// - new behavior: возможность удаления атрибутов меток.
//
// Revision 1.69  2002/07/29 12:11:58  law
// - new param: anOpProc.
//
// Revision 1.68  2002/07/25 11:21:42  law
// - change: объединил с веткой SubAttrNode.
//
// Revision 1.67.2.1  2002/07/24 13:41:37  law
// - new behavior: сделано отображение атрибутов меток в TevSubAttrNode.
//
// Revision 1.67  2002/07/02 14:33:27  voba
// - bug fix : некорректно работал итератор в случае, когда текущую ноду удаляют из дерева
//
// Revision 1.66  2002/05/23 07:45:28  voba
// -new behavior: новый интерфейс Il3DataNode
//
// Revision 1.65  2002/03/25 07:26:42  voba
// no message
//
// Revision 1.64  2002/03/19 14:55:59  voba
// no message
//
// Revision 1.63  2002/03/19 10:49:13  voba
// no message
//
// Revision 1.62  2002/03/13 14:49:53  voba
// no message
//
// Revision 1.61  2002/03/13 14:28:38  voba
// -add user parameter in BeginMove & EndMove
//
// Revision 1.60  2002/03/13 09:06:13  voba
// -add new flags nfUserDefined*
//
// Revision 1.59  2002/03/01 09:06:16  voba
// no message
//
// Revision 1.58  2002/01/22 16:24:05  voba
// no message
//
// Revision 1.57  2001/12/27 15:32:27  law
// - rename proc: l3GetStrLen -> l3StrLen.
//
// Revision 1.56  2001/12/27 15:03:33  law
// - new constructors: добавлены два конструктора Tl3String.Make.
//
// Revision 1.55  2001/11/21 12:12:06  voba
// no message
//
// Revision 1.54  2001/11/05 16:19:17  voba
// no message
//
// Revision 1.53  2001/08/30 16:34:38  law
// - new version: портировал на Delphi 6.
//
// Revision 1.52  2001/08/30 09:58:07  law
// - rename type: TDirection -> Tl3Direction.
//
// Revision 1.51  2001/08/28 13:18:57  voba
// - bug fix: AV.
//
// Revision 1.50  2001/07/12 14:37:26  voba
// - bug fix: иногда не возвращался результат.
//
// Revision 1.49  2001/06/27 11:59:30  law
// - cleanup: удалены директивы safecall.
//
// Revision 1.48  2001/06/26 16:28:37  law
// - comments & cleanup.
//
// Revision 1.47  2001/04/05 08:53:51  law
// - _move: функции l3TestFlag & Co переехали в модуль l3Bits.
//
// Revision 1.46  2001/02/23 14:02:08  voba
// no message
//
// Revision 1.45  2001/02/21 13:17:10  voba
// no message
//
// Revision 1.44  2000/12/15 15:19:01  law
// - вставлены директивы Log.
//

{$I l3Define.inc }
{$IfDef ItsVoba}
 {$Warnings On}
 {$Hints On}
{$EndIf ItsVoba}

interface

uses
  Classes,
  SysUtils,

  l3InternalInterfaces,
  l3Interfaces,
  l3Base,
  l3Types,
  l3DatLst,
  l3TreeInterfaces,
  l3Tree_TLB,
  l3IID,
  l3LongintList
  ;

type
 ESkipIterateChilds = class(Exception);
 El3NodeExeption = class(Exception);
 El3InsertDenied = class(El3NodeExeption);

 Tl3CustomNode = class;

 Tl3CustomUsualNode = class;
 Tl3Node = Tl3CustomUsualNode;
 Tl3NodeClass = class of Tl3Node;

 Il3NodeWrap = interface(Il3Base)
  ['{42A54040-24D0-11D3-9994-00A024F26381}']
  function GetSelf: Tl3CustomNode;
  {-}
  function InheritFrom(aClassType: Tl3NodeClass): Boolean;
  {-}
 end;//Il3NodeWrap

  Tl3PrimNode = class(Tl3CustomString, IUnknown, Il3SimpleNode, Il3SimpleRootNode)
    protected
    // interface methods
      // Il3SimpleNode
      function pm_GetIndexInParent: Integer;
        virtual;
        abstract;
        {* - индекс узла в родительском. }
      function Get_AllChildrenCount: Integer;
        virtual;
        abstract;
        {-}
      function Get_ThisChildrenCount: Integer;
        {-}
      function GetThisChildrenCount: Integer;
        virtual;
        abstract;
        {-}
      function  Get_Parent: Il3SimpleNode;
        {-}
      function  Get_Child: Il3SimpleNode;
        {-}
      function  Get_Next: Il3SimpleNode;
        {-}
      function  Get_Prev: Il3SimpleNode;
        {-}
      function  GetLevel: Integer;
        virtual;
        {-}
      function  GetLevelFor(const aNode: Il3SimpleNode): Integer;
        {-}
      function  IsSame(const aNode: Il3SimpleNode): Boolean;
        virtual;
        {* - сравнивает ноды. }
      function  Get_Text: Tl3PCharLenPrim;
        {-}
      function  Get_ParentNode: Il3Node;
       virtual;
       abstract;
       {-}
      function  Get_ChildNode: Il3Node;
       virtual;
       abstract;
       {-}
      function Get_NextNode: Il3Node;
        virtual;
        abstract;
        {-}
    function Get_PrevNode: Il3Node;
     virtual;
     abstract;
     {-}

      function GetLevelForParent(const aNode: Il3SimpleNode): Integer;
        virtual;
        abstract;
        {-}
      function  Get_Flag(anIndex: Integer): Boolean;
        virtual;
        abstract;
       {-}
      procedure Set_Flag(anIndex: Integer; Value: Boolean);
        virtual;
        abstract;
       {-}
      function  Get_Flags: Integer;
        virtual;
        abstract;
        {-}
      procedure Set_Flags(Value: Integer);
        virtual;
        abstract;
        {-}
      function  IsFirst: Boolean;
        {-}
      function  IsFirstNode: Boolean;
        virtual;
        abstract;
        {* - это первый узел внутри родителя? }
      function  IsLast: Boolean;
        {-}
      function IsLastNode: Boolean;
        virtual;
        abstract;
        {* - это последний узел внутри родителя? }
      function  HasChild: Boolean;
        {-}
      function HasChildNode: Boolean;
        virtual;
        abstract;
        {* - есть ли дочерние узлы?}
      function  MaybeChild: Boolean;
        virtual;
        {* - может ли иметь дочерние узлы? }
      function  IsDisappeared : Boolean;
        virtual;
        abstract;
        {* - True если интерфейс на удаленную ноду,
             применяется в виртуальных нодах - указателях на данные. }
      procedure BeginMove(var theUserParam : Pointer);
        virtual;
        abstract;
        {* - начать перемещение узла. }
      procedure EndMove(aUserParam : Pointer);
        virtual;
        abstract;
        {* - закончить перемещение узла. }
      procedure ExpandCollapseAll(anExpand: Boolean);
        virtual;
        {-}
      function CanExpandCollapseAll: Boolean;
        virtual;
        {-}
      procedure Delete;
        reintroduce;
        virtual;
        {-}
      procedure Remove;
        {-}
      procedure DoRemove;
        virtual;
        abstract;
        {-}
      function CanAcceptData(const aData: Tl3TreeData): Boolean;
        virtual;
        {* - может ли узел принять данные. }
      function DropData(const aData: Tl3TreeData): Boolean;
        virtual;
        {* - принять данные. }
      function CanMove: Boolean;
        virtual;
        {* определяет возможность перемещения узла }
    public
    // public properties
      property Flags: Integer
       read Get_Flags
       write Set_Flags;
        {-}
  end;//Tl3PrimNode

 Tl3CustomNode = class(Tl3PrimNode, Il3Node, Il3NodeWrap)
  {* Базовая абстрактная реализация интерфейса Il3Node. }
   private
    fMoveEnterCnt: Integer;
    fChildSortMode: Integer;
   protected
    procedure Set_Text(const Value: Tl3PCharLenPrim);
    {-}


    function Get_AllChildrenCount: Integer;
     override;
     {-}
    procedure Set_AllChildrenCount(Value: Integer);
     virtual;
     {-}
    function GetThisChildrenCount: Integer;
     override;
     {-}

    function Get_ChildSorted: Boolean;
     virtual;
    {-}

    procedure Set_ChildSorted(aValue: Boolean);
     virtual;
    {-}

    function Get_ChildSortedFromParent: Boolean;
     virtual;
    {-}

    procedure Set_ChildSortedFromParent(aValue: Boolean);
     virtual;
    {-}

    function IterateChild(Action: Tl3NodeAction;
     IterMode: Integer;
     const aFromNode: Il3Node = nil): Il3Node;
     virtual;
     abstract;
    {-}
    function DoCompareChild(const aChildrenNode1: Il3Node;
      const aChildrenNode2: Il3Node): Integer; virtual;
    function CompareChild(const aChildrenNode1, aChildrenNode2: Il3Node): Integer;
     //virtual; - виртуальная теперь DoCompareChild. И реализация там.

       {* - сравнивает aChildrenNode1 и aChildrenNode2 (обычно Text),  возвращает
            <0 если aChildrenNode1 < aChildrenNode2
             0 если aChildrenNode1 = aChildrenNode2
            >0 если aChildrenNode1 > aChildrenNode2
            используется при сортировке ветки дерева. }

    procedure SortChilds(const aChild: Il3Node = nil);
     virtual;
       {* - пересортировывает aChild относительно других Nodes на том же уровне,
            обычно в случае изменения Text,
            если aChild = nil пересортировывает всю ветку (один уровень). }

    procedure Sort;
     virtual;
    {* - пересортировывает себя относительно других Nodes на том же уровне. }

   public
    function IsDisappeared: Boolean;
      override;
      {- True если интерфейс на удаленную ноду, применяется в виртуальных нодах - указателях на данные}

    function HasChildNode: Boolean; override;
    {-}
    function GetNumInParent(aOnlyOneLevel: Boolean = False): Integer;
      virtual;
      abstract;
      {-}
    procedure ReleaseChilds; virtual; abstract;
    {-}
    procedure ReleaseChildsPrim; virtual; abstract;
    {=}

    procedure MovingStarted(var theUserParam: Pointer); virtual;
    {-}
    procedure MovingStopped(aUserParam: Pointer); virtual;
    {-}
    procedure BeginMove(var theUserParam: Pointer);
      override;
      {-}
    procedure EndMove(aUserParam: Pointer);
      override;
      {-}
    function Move(aDirection: Tl3Direction): Boolean; virtual;
    {-}
    procedure IncAllChildrenCount(aInc: Integer); virtual; abstract;
    {-}

    function GetSelf: Tl3CustomNode;
    {-}
    function InheritFrom(aClassType: Tl3NodeClass): Boolean;
    {-}

    procedure Changed;
     override;
    {-}
    procedure Changing;
     override;
    {-}

    procedure Notify(aOperation: Integer; const aNode: Il3Node); virtual;
    {* - нотификация об операции над узлом. anOperation см. ntNone etc. }

    function GetNodeByNumber(aNum: Integer): Il3Node; virtual;
    {-}
    function GetChildByNumber(aNum: Integer): Il3Node; virtual; abstract;
    {-}
    function Iterate(Action: Tl3NodeAction; IterMode: Integer = 0; const aFromNode: Il3Node = nil): Il3Node;
     virtual;
     abstract;
    {-}
    function IterateF(Action: Tl3NodeAction;
     IterMode: Integer = 0;
     const aFromNode: Il3Node = nil): Il3Node;
    {-}
    function InsertChild(const aChild: Il3Node): Il3Node;
    {-}
    function InsertChildBefore(const aNextChild: Il3Node; const aChild: Il3Node): Il3Node;
     virtual;
     abstract;
    {-}
    function IsAcceptChild(const aChild: Il3Node): Boolean;
     virtual;
    {-}
   public
    //public properties
    property Text: Tl3PCharLenPrim
     read Get_Text
     write Set_Text;
    {-}
    property NextNode: Il3Node
     read Get_NextNode;
    {-}
    property PrevNode: Il3Node
     read Get_PrevNode;
    {-}
    property ParentNode: Il3Node
     read Get_ParentNode;
    {-}
    property ChildNode: Il3Node
     read Get_ChildNode;
    {-}
    property AllChildrenCount: Integer
     read Get_AllChildrenCount
     write Set_AllChildrenCount;
    {- Число дочерних узлов, включая вложенные }
    property ThisChildrenCount: Integer
     read Get_ThisChildrenCount;
    {- Число дочерних узлов }
    property ChildSorted: Boolean
     read Get_ChildSorted
     write Set_ChildSorted;
    {* - нужно ли сортировать ChildNode? }

    property ChildSortedFromParent: Boolean
     read Get_ChildSortedFromParent
     write Set_ChildSortedFromParent;
    {* - спрашивать ChildSorted у ParentNode. }

 end;//Tl3CustomNode

 Tl3CustomUsualNode = class(Tl3CustomNode, {Il3Node, Il3NodeWrap, }Il3RootNode, Il3ChangeNotifier)
 {*}
 private
 // internal fields
  fNotifiedObjList: Tl3LongintList;
 protected
 // methods
  function GetNext: Tl3Node;
    virtual;
    abstract;
    {-}
  procedure SetNext(Value: Tl3Node);
    virtual;
    abstract;
    {-}
  function GetPrev: Tl3Node;
    virtual;
    abstract;
    {-}
  procedure SetPrev(Value: Tl3Node);
    virtual;
    abstract;
    {-}
  function GetParent: Tl3Node;
    virtual;
    abstract;
    {-}
  procedure SetParent(Value: Tl3Node);
    virtual;
    abstract;
    {-}
  function GetChild: Tl3Node;
    virtual;
    abstract;
    {-}
  procedure SetChild(Value: Tl3Node);
    virtual;
    abstract;
    {-}
  function Get_NextNode: Il3Node;
    override;
    {-}
  function Get_PrevNode: Il3Node;
    override;
    {-}
  function Get_ParentNode: Il3Node;
    override;
    {-}
  function Get_ChildNode: Il3Node;
    override;
    {-}
  function pm_GetIndexInParent: Integer;
    override;
    {* - индекс узла в родительском. }
  procedure Subscribe(const aRecipient: Il3Notify);
   {* - подписка на извещения. }
  procedure Unsubscribe(const aRecipient: Il3Notify);
   {* - "отписка" от извещений. }
  procedure Cleanup; override;

  function IterateNoParent(Action: Tl3NodeAction; IterMode: Integer; const aFromNode: Il3Node = nil): Il3Node; virtual;
  function IterateChild(Action: Tl3NodeAction; IterMode: Integer; const aFromNode: Il3Node = nil): Il3Node; override;

  property Next: Tl3Node read GetNext write SetNext;
  property Prev: Tl3Node read GetPrev write SetPrev;
  property Parent: Tl3Node read GetParent write SetParent;
  property Child: Tl3Node read GetChild write SetChild;

 public
  procedure DoRemove; override;
  procedure ReleaseChilds; override;
  procedure ReleaseChildsPrim; override;

  procedure Changed;
   override;
  procedure Changing;
   override;
  procedure Notify(aOperation: Integer; const aNode: Il3Node); override;

  function GetLevelForParent(const aNode: Il3SimpleNode): Integer;
    override;
    {-}
  function Move(aDirection: Tl3Direction): Boolean; override;
  procedure SortChilds(const aChild: Il3Node = nil); override;

  function IsAcceptChild(const aChild: Il3Node): Boolean; override;
  function InsertChildBefore(const aNextChild: Il3Node; const aChild: Il3Node): Il3Node; override;

  function GetChildByNumber(aNum: Integer): Il3Node; override;
  function Iterate(Action: Tl3NodeAction;
   IterMode: Integer = 0;
   const aFromNode: Il3Node = nil): Il3Node; override;
  function GetNumInParent(aOnlyOneLevel: Boolean = False): Integer;
    override;
    {-}
  function As_Il3ChangeNotifier: Il3ChangeNotifier;  
 end;//Tl3CustomUsualNode

 Tl3PlaceNode = class(Tl3CustomUsualNode)
 private
  fFlags: Integer;
  fNext: Tl3Node;
  fPrev: Tl3Node;
  fParent: Tl3Node;
  fChild: Tl3Node;

 protected
  fChildCount: Integer;

  function  Get_Flag(anIndex: Integer): Boolean; override;
  procedure Set_Flag(anIndex: Integer; Value: Boolean); override;
  function Get_Flags: Integer; override;
  procedure Set_Flags(Value: Integer); override;

  function GetNext: Tl3Node; override;
  procedure SetNext(Value: Tl3Node); override;
  function GetPrev: Tl3Node; override;
  procedure SetPrev(Value: Tl3Node); override;
  function GetParent: Tl3Node; override;
  procedure SetParent(Value: Tl3Node); override;
  function GetChild: Tl3Node; override;
  procedure SetChild(Value: Tl3Node); override;

  function Get_AllChildrenCount: Integer; override;
 public
  class function Make: Il3Node;
    reintroduce;
    {-}
  function IsFirstNode: Boolean; override;
  function IsLastNode: Boolean; override;
  function HasChildNode: Boolean; override;
  function MaybeChild: Boolean; override;

  procedure IncAllChildrenCount(aInc: Integer); override;
  procedure ReleaseChilds; override;

  property Next;
  property Prev;
  property Parent;
  property Child;
 end;//Tl3PlaceNode

 Tl3CacheableNode = class(Tl3PlaceNode)
 private
  f_ExternalNode: Il3SimpleNode;
  fText: Tl3String;
 protected
      function  GetAsPCharLen: Tl3PCharLenPrim;
        override;
        {-}
      procedure DoSetAsPCharLen(const Value: Tl3PCharLen);
        override;
        {-}
  procedure Cleanup;
    override;
    {-}
 public
  constructor Create(const anExternalNode: Il3SimpleNode = nil);
    reintroduce;
    {-}
  class function Make(const anExternalNode: Il3SimpleNode = nil) : Il3Node;
    reintroduce;
    {-}
  function COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
   override;
    {-}
 end;//Tl3CacheableNode

 Tl3HandleNode = class(Tl3PlaceNode, Il3HandleNode)
 protected
  function pm_GetStringID: Tl3Handle; override;
  procedure pm_SetStringID(Value: Tl3Handle); override;

  function Get_Handle: Integer; virtual; abstract;
  procedure Set_Handle(Value: Integer); virtual; abstract;
 public
  property Handle: Integer read Get_Handle write Set_Handle;
 end;//Tl3HandleNode

 Tl3UsualNode = class(Tl3HandleNode)
 private
  fText: Tl3String;
  fHandle: Integer;
 protected
  function Get_Handle: Integer; override;
  procedure Set_Handle(Value: Integer); override;

  function  GetAsPCharLen: Tl3PCharLenPrim; override;

      procedure DoSetAsPCharLen(const Value: Tl3PCharLen);
        override;
        {-}
  procedure Cleanup;
    override;
    {-}
 end;//Tl3UsualNode

 Tl3ListItemNode = class;

 Tl3CustomListContainerNode = class(Tl3UsualNode, {Il3Node, }Il3ChangeRecipient, Il3ItemNotifyRecipient)
  {* - Базовый узел - контейнер списков}
 private
  FOnChange: TNotifyEvent;
  fUpdateCount: Integer;

 protected
  function IterateChild(Action: Tl3NodeAction;
                        IterMode: Integer;
                        const aFromNode: Il3Node = nil): Il3Node; override;

  function GetStrings(aIndex: Integer): Tl3WString; virtual; abstract;
  procedure SetStrings(aIndex: Integer; const Value: Tl3WString); virtual; abstract;
  function GetItemParam(aIndex: Integer): Integer; virtual; abstract;
  procedure SetItemParam(aIndex: Integer; Value: Integer); virtual; abstract;
  function GetItemFlag(aIndex: Integer): Integer; virtual; abstract;
  procedure SetItemFlag(aIndex: Integer; Value: Integer); virtual; abstract;
  //procedure ListChanged(Sender : TObject);
  //procedure ListChanging(Sender : TObject);
  function GetItemsCount: Integer; virtual; abstract;
  procedure DeleteChildItem(aIndex: Integer;
                            const aDelete: Il3Node); virtual;
  function GetChild: Tl3Node; override;
  procedure SetChild(Value: Tl3Node); override;
  function Get_ChildNode: Il3Node; override;

  function Get_AllChildrenCount: Integer; override;
  //procedure Set_AllChildrenCount(Value: Integer);                 override;

  procedure Cleanup; override;
  procedure ItemNotify(const aNotifier : Il3ChangeNotifier;
                       aOperation      : Integer;
                       aIndex          : Integer); virtual;
  procedure Il3ItemNotifyRecipient.Notify = ItemNotify;
  procedure SubscribeChild(aChildNode : Tl3ListItemNode);
   {* - подписка на извещения ноды - обертки вокруг элемента листа. }
  procedure UnsubscribeChild(aChildNode : Tl3ListItemNode);
   {* - "отписка" от извещений ноды - обертки вокруг элемента листа }

  function MakeChildNode: Tl3ListItemNode; virtual; abstract;

  procedure MoveChildItemPrim(aCurIndex, aNewIndex : Integer); virtual; abstract;
  function MoveChildItem(aChildNode : Tl3ListItemNode; aDirection: Tl3Direction) : boolean;
 public
  procedure Changed;
    override;
  procedure Changing;
    override;
  function  GetChildByNumber(aNum: Integer): Il3Node;
    override;

  procedure Notify(aOperation: Integer; const aNode: Il3Node); override;
  function InsertChildBefore(const aNextChild: Il3Node; const aChild: Il3Node): Il3Node; override;
  function IsAcceptChild(const aChild: Il3Node): Boolean; override;
  function HasChildNode: Boolean; override;

  property Strings[aIndex: Integer]: Tl3WString read GetStrings write SetStrings;
  property ItemParam[aIndex: Integer]: Integer read GetItemParam write SetItemParam;
  property ItemFlag[aIndex: Integer]: Integer read GetItemFlag write SetItemFlag;
  property OnChange: TNotifyEvent read FOnChange write FOnChange;
 end;//Tl3CustomListContainerNode

 Tl3ListContainerNode = class(Tl3CustomListContainerNode{, Il3Node, Il3HandleNode})
 protected
  fItems: TStringList;
  function GetItems: TStringList;
  procedure SetItems(Value: TStringList);
  function GetItemsCount: Integer; override;

  procedure ListChanged(Sender: TObject);
  procedure ListChanging(Sender: TObject);

  procedure DeleteChildItem(aIndex: Integer;
                            const aDelete: Il3Node); override;

  procedure MoveChildItemPrim(aCurIndex, aNewIndex : Integer); override;

  function GetStrings(aIndex: Integer): Tl3WString; override;
  procedure SetStrings(aIndex: Integer; const Value: Tl3WString); override;

  function GetItemParam(aIndex: Integer): Integer; override;
  procedure SetItemParam(aIndex: Integer; Value: Integer); override;

  function GetItemFlag(aIndex: Integer): Integer; override;
  procedure SetItemFlag(aIndex: Integer; Value: Integer); override;

  procedure Cleanup; override;

  function MakeChildNode: Tl3ListItemNode; override;
 public
  procedure ReleaseChilds; override;
  property Items: TStringList read GetItems write SetItems;
 end;//Tl3ListContainerNode

 Tl3DataListContainerNode = class(Tl3CustomListContainerNode{, Il3Node, Il3HandleNode})
 protected
  fItems: Tl3StringDataList;
  function GetItems: Tl3StringDataList;
  procedure SetItems(Value: Tl3StringDataList);
  function GetItemsCount: Integer; override;

  procedure DeleteChildItem(aIndex: Integer;
   const aDelete: Il3Node); override;

  function GetStrings(aIndex: Integer): Tl3WString; override;
  procedure SetStrings(aIndex: Integer; const Value: Tl3WString); override;
  function GetItemParam(aIndex: Integer): Integer; override;
  procedure SetItemParam(aIndex: Integer; Value: Integer); override;
  function GetItemFlag(aIndex: Integer): Integer; override;
  procedure SetItemFlag(aIndex: Integer; Value: Integer); override;

  function GetItemData(aIndex: Integer): PAnsiChar; virtual;
  procedure SetItemData(aIndex: Integer; aValue: PAnsiChar); virtual;

  function GetItemDataSize(aIndex: Integer): Cardinal; virtual;
  procedure SetItemDataSize(aIndex: Integer; aValue: Cardinal); virtual;

  procedure Cleanup; override;

  function MakeChildNode: Tl3ListItemNode; override;
  procedure MoveChildItemPrim(aCurIndex, aNewIndex : Integer); override;
 public
  procedure ReleaseChilds; override;
  property Items: Tl3StringDataList read GetItems write SetItems;
  property ItemData[aIndex: Integer]: PAnsiChar read GetItemData write SetItemData;
  property ItemDataSize[aIndex: Integer]: Cardinal read GetItemDataSize write SetItemDataSize;

 end;//Tl3DataListContainerNode

 Tl3IListContainerNode = class(Tl3CustomListContainerNode{, Il3Node, Il3HandleNode})
 protected
  fItems: Il3HandledStringList;
  function GetItems: Il3HandledStringList;
  procedure SetItems(Value: Il3HandledStringList);
  function GetItemsCount: Integer; override;

  procedure ListChanged(Sender: TObject);
  procedure ListChanging(Sender: TObject);

  procedure DeleteChildItem(aIndex: Integer;
                            const aDelete: Il3Node); override;

  procedure MoveChildItemPrim(aCurIndex, aNewIndex : Integer); override;

  function GetStrings(aIndex: Integer): Tl3WString; override;
  procedure SetStrings(aIndex: Integer; const Value: Tl3WString); override;

  function GetItemParam(aIndex: Integer): Integer; override;
  procedure SetItemParam(aIndex: Integer; Value: Integer); override;

  function GetItemFlag(aIndex: Integer): Integer; override;
  procedure SetItemFlag(aIndex: Integer; Value: Integer); override;

  procedure Cleanup; override;

  function MakeChildNode: Tl3ListItemNode; override;
 public
  procedure ReleaseChilds; override;
  property Items: Il3HandledStringList read GetItems write SetItems;
 end;//Tl3ListContainerNode

 Tl3ListItemNode = class(Tl3CustomNode, {Il3Node, }Il3HandleNode, Il3NodeNotifyRecipient)
 protected
  fListNode: Tl3CustomListContainerNode;
  fListItem: Integer;

  function Get_NextNode: Il3Node; override;
  function Get_PrevNode: Il3Node; override;
  function Get_ParentNode: Il3Node; override;
  function Get_ChildNode: Il3Node; override;

      function  GetAsPCharLen: Tl3PCharLenPrim;
        override;
        {-}
      procedure DoSetAsPCharLen(const Value: Tl3PCharLen);
        override;
        {-}

  function pm_GetStringID: Tl3Handle; override;
  procedure pm_SetStringID(Value: Tl3Handle); override;

  function Get_Handle: Integer; virtual;
  procedure Set_Handle(Value: Integer); virtual;

  function  Get_Flag(anIndex: Integer): Boolean; override;
  procedure Set_Flag(anIndex: Integer; Value: Boolean); override;
  function Get_Flags: Integer; override;
  procedure Set_Flags(Value: Integer); override;

  procedure NodeNotify(aOperation: Integer; const aNode: Il3SimpleNode);
  procedure Il3NodeNotifyRecipient.Notify = NodeNotify;


  procedure pm_SetListNode(aNode: Tl3CustomListContainerNode);
   virtual;
  {-}
 protected
  // internal methods
  procedure Cleanup;
   override;
  {-}
  procedure Release;
   override;

 public
  function Move(aDirection: Tl3Direction): Boolean; override;
  function IsFirstNode: Boolean; override;
  function IsLastNode: Boolean; override;

  function IsDisappeared: Boolean; override;
  function Iterate(Action: Tl3NodeAction;
                   IterMode: Integer = 0;
                   const aFromNode: Il3Node = nil): Il3Node;
    override;

  function  IsSame(const aNode: Il3SimpleNode): Boolean;
    override;

  function GetNumInParent(aOnlyOneLevel: Boolean = False): Integer;
    override;
    {-}
  function GetLevelForParent(const aNode: Il3SimpleNode): Integer;
    override;
    {-}
  procedure Delete;
    override;
    {-}
  property ListNode: Tl3CustomListContainerNode
   read fListNode
   write pm_SetListNode;
    {-}
  property ListItem: Integer
    read fListItem
    write fListItem;
    {-}
  property Handle: Integer
    read Get_Handle
    write Set_Handle;
    {-}
 end;//Tl3ListItemNode

 Tl3StrListItemNode = class(Tl3ListItemNode)
 public
 end;

 Tl3DataListItemNode = class(Tl3ListItemNode)
 protected
  function Get_Data: PAnsiChar; virtual;
  procedure Set_Data(aValue: PAnsiChar); virtual;

  procedure Set_DataSize(aValue: Cardinal); virtual;
  function Get_DataSize: Cardinal;

 public
  property DataSize: Cardinal read Get_DataSize;
  property Data: PAnsiChar read Get_Data write Set_Data;
 end;

 Tl3RootNode = Tl3UsualNode;

const
 Tl3StdNode: Tl3NodeClass = Tl3UsualNode;
{* - стандартный класс для реализации узла дерева. }

function l3L2NA(Action: Pointer): Tl3NodeAction;
{* - делает заглушку для локальной процедуры (как l3L2FA). }
function l3L2SNA(Action: Pointer): Tl3SimpleNodeAction;
{* - делает заглушку для локальной процедуры (как l3L2FA). }
function MakeNode(aNodeName: PAnsiChar; aNodeClass: Tl3NodeClass = nil): Il3Node;
  overload;
{* - сделать новый узел. }
function MakeNode(const aNodeName: AnsiString; aNodeClass: Tl3NodeClass = nil): Il3Node;
  overload;
{* - сделать новый узел. }
function MakeNode(const aNodeName: Tl3WString; aNodeClass: Tl3NodeClass = nil): Il3Node;
  overload;
{* - сделать новый узел. }
function MakeParamNode(aNodeName: PAnsiChar; aParam: Integer; aNodeClass: Tl3NodeClass = nil): Il3Node;
{* - сделать новый узел с параметром. }
function MakeParamNodeStr(const aNodeName: AnsiString; aParam: Integer; aNodeClass: Tl3NodeClass = nil): Il3Node;
{* - сделать новый узел с параметром. }

function l3IterateSubTreeF(const aRootNode: Il3Node;
 Action: Tl3NodeAction;
 aIterMode: Integer = 0;
 const aFromNode: Il3Node = nil): Il3Node;
{* - перебрать узлы для aRootNode и освободить заглушку. }

function l3FindNodeByHandle(const aRootNode: Il3Node;
 aHandle: Integer;
 aIterMode: Integer = 0;
 const aFromNode: Il3Node = nil): Il3Node;

function l3SearchByPath(const aRootNode: Il3Node; const aPathStr: Tl3WString; const aLevelSlash: AnsiString = '\'): Il3Node;
function l3SearchByName(const aRootNode : Il3Node;
                        const aNameStr  : AnsiString;
                        aIterMode       : Integer = 0;
                        const aFromNode : Il3Node = nil): Il3Node;
  overload;
function l3SearchByName(const aRootNode : Il3Node;
                        const aNameStr  : Tl3WString;
                        aIterMode       : Integer = 0;
                        const aFromNode : Il3Node = nil): Il3Node;
  overload;
  {-}
function l3SearchByName(const aTree     : Il3SimpleTree;
                        const aNameStr  : Tl3WString;
                        aIterMode       : Integer = 0;
                        const aFromNode : Il3SimpleNode = nil): Il3SimpleNode;
  overload;
  {-}
function l3SearchByName(const aRootNode : Il3Node;
                        const aNameStr  : Il3CString;
                        aIterMode       : Integer = 0;
                        const aFromNode : Il3Node = nil): Il3Node;
  overload;
  {-}
function l3SearchNameBegin(const aRootNode: Il3Node; const aSrchStr: Tl3WString; aIterMode: Integer; const aFromNode: Il3Node = nil): Il3Node;
function l3SearchNameOccur(const aRootNode: Il3Node; const aSrchStr: Tl3WString; aIterMode: Integer; const aFromNode: Il3Node = nil): Il3Node;
function l3GetPartPath(const aRootNode: Il3Node; var thePathStr: Tl3WString; const aLevelSlash: AnsiString = '\'): Il3Node;
function l3GetSPartPath(const aTree       : Il3SimpleTree;
                        var thePathStr    : Tl3WString;
                        const aLevelSlash : AnsiString = '\'): Il3SimpleNode;

function l3SearchByNode(const aRootNode : Il3Node;
                        aCriterionNode  : Il3Node;
                        aIterMode       : Integer = 0;
                        const aFromNode : Il3Node = nil): Il3Node;

function l3GetFullPathLen(const aRootNode    : Il3SimpleNode;
                          const aNode        : Il3SimpleNode;
                          const aLevelSlash  : AnsiString = '\';
                          const aLevelIndent : AnsiString = '';
                          aRootInclude       : Boolean = False;
                          aLevelNumerate     : Boolean = False): Cardinal;

function l3GetFullPathAlloc(const aRootNode    : Il3Node;
                            const aNode        : Il3Node;
                            const aLevelSlash  : AnsiString = '\';
                            const aLevelIndent : AnsiString = '';
                            aRootInclude       : Boolean = False;
                            aLevelNumerate     : Boolean = False): PAnsiChar;

function l3GetFullPathCStr(const aRootNode: Il3SimpleNode;
                            const aNode: Il3SimpleNode;
                            aCodePage :  Integer = CP_ANSI;
                            const aLevelSlash: AnsiString = '\';
                            const aLevelIndent: AnsiString = '';
                            aRootInclude: Boolean = False;
                            aLevelNumerate: Boolean = False): Il3CString;


procedure l3GetFullPath(const aRootNode    : Il3SimpleNode;
                        const aNode        : Il3SimpleNode;
                        aPath              : PAnsiChar;
                        var MaxLen         : Cardinal;
                        const aLevelSlash  : AnsiString = '\';
                        const aLevelIndent : AnsiString = '';
                        aRootInclude       : Boolean = False;
                        aLevelNumerate     : Boolean = False);

function l3GetFullPathStr(const aRootNode: Il3SimpleNode;
 const aNode: Il3SimpleNode;
 const aLevelSlash: AnsiString = '\';
 const aLevelIndent: AnsiString = '';
 aRootInclude: Boolean = False;
 aLevelNumerate: Boolean = False): AnsiString; overload;

function l3GetFullPathStr(const aRootNode: Il3Node;
 aNodeHandle: Integer;
 const aLevelSlash: AnsiString = '\';
 const aLevelIndent: AnsiString = '';
 aRootInclude: Boolean = False;
 aLevelNumerate: Boolean = False): AnsiString; overload;

function l3GetLastPartOfName(const aName : AnsiString; const aLevelSlash: AnsiString = '\') : AnsiString;

function l3GetNodeIndentString(const aRootNode: Il3Node;
 const aNode: Il3Node;
 const aLevelIndent: AnsiString = ''): AnsiString;

var
 cDefCodePage : integer = cp_ANSI; // временная заточка, используется в Tl3ListContainerNode Tl3DataListContainerNode
                                   // для преобразования строк из StringsList в строки с кодировкой

implementation

uses
 StrUtils,
 l3Const, l3String, l3InterfacesMisc, l3Bits, l3Chars,
 l3InterfacedString
 ;

function MakeNode(aNodeName: PAnsiChar; aNodeClass: Tl3NodeClass = nil{Tl3StdNode}): Il3Node;
  {-}
begin
 Result := MakeNode(l3PCharLen(aNodeName), aNodeClass);
end;

function MakeNode(const aNodeName: AnsiString; aNodeClass: Tl3NodeClass = nil{Tl3StdNode}): Il3Node;
  {-}
begin
 Result := MakeNode(l3PCharLen(aNodeName), aNodeClass);
end;

function MakeNode(const aNodeName: Tl3WString; aNodeClass: Tl3NodeClass = nil): Il3Node;
  //overload;
  {-}
var
 aNode : Tl3Node;
begin
 if (aNodeClass = nil) then
  aNode := Tl3StdNode.Create
 else
  aNode := aNodeClass.Create;
 try
  aNode.Text := aNodeName;
  Result := aNode;
 finally
  l3Free(aNode);
 end;//try..finally
end;

function MakeParamNode(aNodeName: PAnsiChar; aParam: Integer; aNodeClass: Tl3NodeClass = nil{Tl3StdNode}): Il3Node;
begin
 Result := MakeNode(aNodeName, aNodeClass);
 (Result as Il3HandleNode).Handle := aParam;
end;

function MakeParamNodeStr(const aNodeName: AnsiString; aParam: Integer; aNodeClass: Tl3NodeClass = nil{Tl3StdNode}): Il3Node;
begin
 Result := MakeParamNode(PAnsiChar(aNodeName), aParam, aNodeClass);
end;

function l3L2NA(Action: Pointer): Tl3NodeAction; register;
asm
 jmp  l3LocalStub
end;{asm}

function l3L2SNA(Action: Pointer): Tl3SimpleNodeAction; register;
asm
 jmp  l3LocalStub
end;{asm}

{Tl3ListItemNode}
function Tl3ListItemNode.Get_NextNode: Il3Node;
var
 lNextIndex : Integer;
begin
 if IsLast then
  lNextIndex := 0
 else lNextIndex := Succ(fListItem);
 Result := fListNode.GetChildByNumber(lNextIndex);
end;

function Tl3ListItemNode.Get_PrevNode: Il3Node;
var
 lPrevIndex : Integer;
begin
 if IsFirst then
  lPrevIndex := Pred(fListNode.AllChildrenCount)
 else
  lPrevIndex := Pred(fListItem);
 Result := fListNode.GetChildByNumber(lPrevIndex);
end;

function Tl3ListItemNode.Get_ParentNode: Il3Node;
begin
 Result := fListNode;
end;

function Tl3ListItemNode.Get_ChildNode: Il3Node;
begin
 Result := Nil;
end;

function Tl3ListItemNode.GetAsPCharLen: Tl3PCharLenPrim;
  //override;
  {-}
begin
 Result := fListNode.Strings[fListItem];
end;

procedure Tl3ListItemNode.DoSetAsPCharLen(const Value: Tl3PCharLen);
  //override;
  {-}
begin
 fListNode.Strings[fListItem] := Value;
end;

function Tl3ListItemNode.pm_GetStringID: Tl3Handle;
begin
 Result := Get_Handle;
end;

procedure Tl3ListItemNode.pm_SetStringID(Value: Tl3Handle);
begin
 Set_Handle(Value);
end;

function Tl3ListItemNode.Get_Handle: Integer;
begin
 Result := fListNode.ItemParam[fListItem];
end;

procedure Tl3ListItemNode.Set_Handle(Value: Integer);
begin
 Changing;
 try
  fListNode.ItemParam[fListItem] := Value;
  Notify(ntDataChange, Self);
 finally
  Changed;
 end;
end;

function Tl3ListItemNode.Get_Flag(anIndex: Integer): Boolean;
begin
 Result := fListNode.ItemFlag[fListItem] and anIndex > 0;
end;

procedure Tl3ListItemNode.Set_Flag(anIndex: Integer; Value: Boolean);
var
 l_Flags: Integer;
begin
 l_Flags := fListNode.ItemFlag[fListItem];
 if Value then
  l_Flags := l_Flags or anIndex
 else
  l_Flags := l_Flags and not anIndex;

 fListNode.ItemFlag[fListItem] := l_Flags;
end;

function Tl3ListItemNode.Get_Flags: Integer;
begin
 Result := fListNode.ItemFlag[fListItem];
end;

procedure Tl3ListItemNode.Set_Flags(Value: Integer);
begin
 fListNode.ItemFlag[fListItem] := Value;
end;

procedure Tl3ListItemNode.pm_SetListNode(aNode: Tl3CustomListContainerNode);
begin
 fListNode := aNode;
end;

function Tl3ListItemNode.IsDisappeared: Boolean;
begin
 Result := ListItem = -1;
end;

procedure Tl3ListItemNode.Release;
begin
 fListNode.UnsubscribeChild(Self);
 inherited Release;
end;

function Tl3ListItemNode.Iterate(Action: Tl3NodeAction;
 IterMode: Integer = 0;
 const aFromNode: Il3Node = nil): Il3Node;
var
 lCurNode : Il3Node;
 ActionResult : Boolean;
begin
 if l3TestMask(IterMode, imParentNeed) then
 begin
  lCurNode := Self;
   {$IfDef SkipIterByExcept}
  try
   ActionResult := Action(lCurNode);
  except
   on E: ESkipIterateChilds do
   begin
    ActionResult := False;
    l3SetMask(IterMode, imNoChilds);
   end;
   else raise;
  end;
   {$Else}
  ActionResult := Action(lCurNode);
  if Byte(ActionResult) = 2 then
  begin
   ActionResult := False;
   if l3TestMask(IterMode, imCheckResult) then
    l3SetMask(IterMode, imNoChilds);
  end;
   {$EndIf}

  if (IterMode and imCheckResult > 0) and ActionResult then
  begin
   Result := lCurNode;
   Exit;
  end;
 end;
end;

procedure Tl3ListItemNode.NodeNotify(aOperation: Integer; const aNode: Il3SimpleNode);
var
 lListIndex : Integer;
 lAnotherNode : Tl3ListItemNode;
begin
(*
  ntInsert           {* - вставка элемента. }
  ntMoveBegin        {* - началось движение элемента. }
  ntMoveEnd          {* - закончилось движение элемента. }
  //ntChildInsert      {* - вставлен дочерний элемент. }
  //ntCountChange      {* - изменилось количество элементов. }
*)
 try
  if (aNode <> nil) and l3IEQ(ParentNode, aNode.Parent) then //проверка что оба из одного листа
   case aOperation of
    ntChildClear:   // удалили все
     ListItem := -1;

    ntDelete:        // удалили элемент.
    begin
     lAnotherNode := (aNode as Il3NodeWrap).GetSelf as Tl3ListItemNode;
     lListIndex := lAnotherNode.ListItem;

     if (lListIndex >= 0) and (lListIndex < ListItem) then
      ListItem := ListItem - 1
     else if lListIndex = ListItem then
      ListItem := -1; //указывал на удаленный элемент

    end;

      (*
      ntInsert           {* - вставка элемента. }
      ntMoveBegin        {* - началось движение элемента. }
      ntMoveEnd          {* - закончилось движение элемента. }
      //ntChildInsert    {* - вставлен дочерний элемент. }
      //ntCountChange    {* - изменилось количество элементов. }
      *)

   end; // case Operation
 except
  on E: Exception do
   l3System.Exception2Log(E);
 end;
end;

procedure Tl3ListItemNode.Cleanup;
begin
 ListNode := nil;
 inherited;
end;

function Tl3ListItemNode.Move(aDirection: Tl3Direction): Boolean;
begin
 Result := ListNode.MoveChildItem(Self, aDirection);
end;

function Tl3ListItemNode.IsFirstNode: Boolean;
begin
 Result := fListItem = 0;
end;

function Tl3ListItemNode.IsLastNode: Boolean;
begin
 Result := fListItem = Pred(fListNode.AllChildrenCount);
end;

function Tl3ListItemNode.GetLevelForParent(const aNode: Il3SimpleNode): Integer;
begin
 Result := 1;
 if (ParentNode <> nil) then
  Inc(Result, ParentNode.GetLevelFor(aNode));
end;

procedure Tl3ListItemNode.Delete;
begin
 fListNode.DeleteChildItem(fListItem, Self);
 //   ListNode := Nil;
end;

function Tl3ListItemNode.GetNumInParent(aOnlyOneLevel: Boolean = False): Integer;
begin
 Result := fListItem;
end;

function Tl3ListItemNode.IsSame(const aNode: Il3SimpleNode): Boolean;
var
 lIntfObj : Tl3ListItemNode;
begin
 try
    {$IfOpt D+}
  Result := False;
  lIntfObj := Tl3ListItemNode((aNode as Il3NodeWrap).GetSelf);
  if not (lIntfObj is Tl3ListItemNode) then
   Exit;
    {$else}
  lIntfObj := (aNode as Il3NodeWrap).GetSelf as Tl3ListItemNode;
    {$endif}

  Result := Self = lIntfObj;
  if Result then
   Exit;
  Result := (fListNode = lIntfObj.fListNode) and (fListItem = lIntfObj.fListItem);
 except
  on E: Exception do
  begin
   Result := False;
   l3System.Exception2Log(E);
  end;
 end;
end;

{Tl3DataListItemNode}

function Tl3DataListItemNode.Get_Data: PAnsiChar;
begin
 Result := Tl3DataListContainerNode(fListNode).ItemData[fListItem];
end;

procedure Tl3DataListItemNode.Set_Data(aValue: PAnsiChar);
begin
 Changing;
 try
  Tl3DataListContainerNode(fListNode).ItemData[fListItem] := aValue;
  Notify(ntDataChange, Self);
 finally
  Changed;
 end;
end;

procedure Tl3DataListItemNode.Set_DataSize(aValue: Cardinal);
begin
 Changing;
 try
  Tl3DataListContainerNode(fListNode).ItemDataSize[fListItem] := aValue;
  Notify(ntDataChange, Self);
 finally
  Changed;
 end;
end;

function Tl3DataListItemNode.Get_DataSize: Cardinal;
begin
 Result := Tl3DataListContainerNode(fListNode).ItemDataSize[fListItem];
end;

{Tl3CustomListContainerNode}

procedure Tl3CustomListContainerNode.Cleanup;
begin
 FOnChange := nil;
 inherited;
end;

procedure Tl3CustomListContainerNode.SubscribeChild(aChildNode : Tl3ListItemNode);
var
 l_NotifyRecipient: Il3NodeNotifyRecipient;
begin
 if Supports(aChildNode, Il3NodeNotifyRecipient, l_NotifyRecipient) then
 try
  Subscribe(l_NotifyRecipient);
 finally
  l_NotifyRecipient := nil;
 end;
 //1 Subscribe(aChildNode);
end;

procedure Tl3CustomListContainerNode.UnsubscribeChild(aChildNode : Tl3ListItemNode);
var
 l_NotifyRecipient: Il3NodeNotifyRecipient;
begin
 if Supports(aChildNode, Il3NodeNotifyRecipient, l_NotifyRecipient) then
 try
  UnSubscribe(l_NotifyRecipient);
 finally
  l_NotifyRecipient := nil;
 end;
 //1 UnSubscribe(aChildNode);
end;

function Tl3CustomListContainerNode.InsertChildBefore(const aNextChild: Il3Node; const aChild: Il3Node): Il3Node;
begin
 Abort;
end;

function Tl3CustomListContainerNode.IsAcceptChild(const aChild: Il3Node): Boolean;
begin
 Result := False;
 //(aChild as Il3NodeWrap).GetSelf is Tl3Node;
end;

function Tl3CustomListContainerNode.IterateChild(Action: Tl3NodeAction;
 IterMode: Integer; const aFromNode: Il3Node = nil): Il3Node;
var
 I : Integer;
 lChildsCnt : Integer;
 lCheckResultLog : Boolean;
 lActionResult : Boolean;
begin
 if not HasChild then
  Exit;
 lCheckResultLog := IterMode and imCheckResult > 0;

 if (aFromNode = nil) then
  I := 0
 else
 begin
  if not IsSame(aFromNode.ParentNode) then
   Exit;
  I := Tl3ListItemNode((aFromNode as Il3NodeWrap).GetSelf).ListItem;
 end;

 //I := 0;
 lChildsCnt := AllChildrenCount;
 while AllChildrenCount > I do
 begin
  Result := GetChildByNumber(I);
    {$IfDef SkipIterByExcept}
  try
   lActionResult := Action(Result);
  except
   on E: ESkipIterateChilds do
    lActionResult := False;
   else raise;
  end;
    {$Else}
  lActionResult := Action(Result);
  if Byte(lActionResult) = 2 then
   lActionResult := False;
    {$EndIf}
  if lActionResult and lCheckResultLog then
   Exit;
  if lChildsCnt = AllChildrenCount then
   Inc(I)
  else lChildsCnt := AllChildrenCount;  // В Action удалили текущий
 end;
 Result := Nil;
end;

procedure Tl3CustomListContainerNode.Notify(aOperation: Integer; const aNode: Il3Node);
var
 I : Integer;
 lIntf : Il3Node;
begin
 inherited Notify(aOperation, aNode);
 if (fNotifiedObjList <> nil) and
  (fNotifiedObjList.Count > 0) then
  for I := Pred(fNotifiedObjList.Count) to 0 do
  begin
   if l3IOk(IUnknown(fNotifiedObjList.Items[I]).QueryInterface(Il3Node, lIntf)) and
    (lIntf.IsDisappeared) then
    fNotifiedObjList.Delete(I);
  end;
end;

procedure Tl3CustomListContainerNode.DeleteChildItem(aIndex: Integer;
 const aDelete: Il3Node);
begin
 Notify(ntDelete, aDelete);
 Notify(ntDeleteDone, aDelete);
end;

function Tl3CustomListContainerNode.MoveChildItem(aChildNode : Tl3ListItemNode; aDirection: Tl3Direction): Boolean;
var
 lNewIndex : Integer;
 lUserParam : Pointer;
 lItemsLast : Integer;
begin
 lNewIndex := aChildNode.ListItem;

 lItemsLast := Pred(GetItemsCount);
 case aDirection of
  dUp:
   if lNewIndex > 0 then
    Dec(lNewIndex);
  dUpMax:
   if lNewIndex > 0 then
    lNewIndex := 0;
  dDown:
   if lNewIndex < lItemsLast then
    Inc(lNewIndex);
  dDownMax:
   if lNewIndex < lItemsLast then
    lNewIndex := lItemsLast;
 end;
 Result := lNewIndex <> aChildNode.ListItem;
 if Result then
 begin
  Notify(ntMoveBegin, Self);
  try
   lUserParam := nil;
   BeginMove(lUserParam);
   try
    MoveChildItemPrim(aChildNode.ListItem, lNewIndex);
    //!! lList.Move(fListItem, lNewIndex);

    aChildNode.ListItem := lNewIndex;
   finally
    EndMove(lUserParam);
   end;
  finally
   Notify(ntMoveEnd, Self);
  end;
 end;
end;


function Tl3CustomListContainerNode.GetChild: Tl3Node;
begin
 Result := nil;
 Assert(False, 'Перекрыть надо');
end;

procedure Tl3CustomListContainerNode.SetChild(Value: Tl3Node);
begin
 Assert(False, 'Перекрыть надо');
end;

function Tl3CustomListContainerNode.Get_ChildNode: Il3Node;
begin
 Result := GetChildByNumber(0);
end;

function Tl3CustomListContainerNode.HasChildNode: Boolean;
begin
 Result := AllChildrenCount > 0;
end;

procedure Tl3CustomListContainerNode.Changed;
begin
 Dec(FUpdateCount);
 if (FUpdateCount < 0) then
  FUpdateCount := 0;
 if (FUpdateCount = 0) then
 begin
  AllChildrenCount := GetItemsCount;
  inherited;
  if Assigned(FOnChange) then
   FOnChange(Self);
  //Modified := True;
 end;
end;

procedure Tl3CustomListContainerNode.Changing;
begin
 if (FUpdateCount = 0) then
  inherited Changing;
 //and Assigned(FOnChanging) then FOnChanging(Self);
 Inc(FUpdateCount);
end;

function Tl3CustomListContainerNode.GetChildByNumber(aNum: Integer): Il3Node;
var
 aNode : Tl3ListItemNode;
begin
 if (aNum < 0) or (aNum >= AllChildrenCount) then
  Result := nil
 else
 begin
  aNode := MakeChildNode;
  try
   aNode.ListNode := Self;
   aNode.ListItem := aNum;
   Result := aNode;
   SubscribeChild(aNode);
  finally
   l3Free(aNode);
  end;
 end;
end;

function Tl3CustomListContainerNode.Get_AllChildrenCount: Integer;
begin
 Result := GetItemsCount;
 if (fChildCount <> Result) then
  IncAllChildrenCount(Result - fChildCount);
end;

procedure Tl3CustomListContainerNode.ItemNotify(const aNotifier : Il3ChangeNotifier;
                                                      aOperation : Integer;
                                                      aIndex : Integer);

var
 lNode : Il3Node;
begin
 AllChildrenCount := GetItemsCount;
 if aOperation = ntClear then
  Notify(ntChildClear, Self)
 else
 begin
  lNode := GetChildByNumber(aIndex);
  // lNode - информационный объект с полем fListItem = aIndex
  // с другой стороны это нода-обертка вокруг элемента листа,
  // подписанная на нотификацию
  // При нотификации ntDelete ( см. Tl3ListItemNode.NodeNotify) объект
  // сбрасывает значение fListItem = -1, что приводит к некорректной обработке
  // нотификации для последующих элементов списка рассылки (fNotifiedObjList)
  // для подавления этого эффекта убираем информационный объект из списка рассылки
  // Конечно, в общем случае так делать неправильно, поскольку GetChildByNumber может
  // вернуть реальный объект-ноду, которая таким образом не получит нотификации
  // об изменени состояния, но в данном случае реализация такова, что каждый раз создается
  // новая нода-обертка, которая больше нигде не используется.
  // Собственно все проблемы из-за наличия нескольких оберток вокруг одного элемента листа

  UnSubscribe(lNode as Il3NodeNotifyRecipient); // см. UnsubscribeChild(aChildNode : Tl3ListItemNode);

  Notify(aOperation, lNode);
 end;
end;

{ procedure Tl3CustomListContainerNode.Set_AllChildrenCount(Value: Integer);
  begin
   //
  end;
}
(*
 procedure Tl3CustomListContainerNode.ListChanged(Sender : TObject);
  begin
   AllChildrenCount := GetItemsCount;
   Changed;
  end;

 procedure Tl3CustomListContainerNode.ListChanging(Sender : TObject);
  begin
   Changing;
  end;
*)

{Tl3ListContainerNode}

procedure Tl3ListContainerNode.Cleanup;
begin
 Items := nil;
 inherited;
end;

procedure Tl3ListContainerNode.DeleteChildItem(aIndex: Integer;
 const aDelete: Il3Node);
begin
 Items.Delete(aIndex);
 inherited DeleteChildItem(aIndex, aDelete);
end;

procedure Tl3ListContainerNode.MoveChildItemPrim(aCurIndex, aNewIndex : Integer);
begin
 Items.Move(aCurIndex, aNewIndex);
end;

procedure Tl3ListContainerNode.ReleaseChilds;
begin
 Changing;
 try
  Notify(ntChildClear, Self);
  Items := nil;
 finally
  Changed;
 end;
end;

function Tl3ListContainerNode.MakeChildNode: Tl3ListItemNode;
begin
 Result := Tl3StrListItemNode.Create;
end;

function Tl3ListContainerNode.GetItemsCount: Integer;
begin
 if fItems <> nil then
  Result := fItems.Count
 else Result := 0;
end;

function Tl3ListContainerNode.GetItems: TStringList;
begin
 Result := fItems;
end;

procedure Tl3ListContainerNode.ListChanged(Sender: TObject);
begin
 Changed;
end;

procedure Tl3ListContainerNode.ListChanging(Sender: TObject);
begin
 Changing;
end;

procedure Tl3ListContainerNode.SetItems(Value: TStringList);
begin
 if fItems = Value then
  Exit;
 Changing;
 try
  if fItems <> nil then
  begin
   fItems.OnChange := Nil;
   fItems.OnChanging := Nil;
   //Del list Notify
  end;

  l3Set(fItems, Value);
  if fItems <> nil then
  begin
   fItems.OnChange := ListChanged;
   fItems.OnChanging := ListChanging;
   AllChildrenCount := fItems.Count;
   //Add to list Notify
  end;
 finally
  Changed;
 end;
end;

function Tl3ListContainerNode.GetStrings(aIndex: Integer): Tl3WString;
begin
 Result := l3PCharLen(Items.Strings[aIndex], cDefCodePage);
end;

procedure Tl3ListContainerNode.SetStrings(aIndex: Integer; const Value: Tl3WString);
begin
 Items.Strings[aIndex] := l3Str(Value, CP_DefaultValue);
end;

function Tl3ListContainerNode.GetItemParam(aIndex: Integer): Integer;
begin
 Result := Integer(Items.Objects[aIndex]);
end;

procedure Tl3ListContainerNode.SetItemParam(aIndex: Integer; Value: Integer);
begin
 Items.Objects[aIndex] := Pointer(Value);
end;

function Tl3ListContainerNode.GetItemFlag(aIndex: Integer): Integer;
begin
 Result := 0; //PAnsiChar(Items.Strings[aIndex]);
end;

procedure Tl3ListContainerNode.SetItemFlag(aIndex: Integer; Value: Integer);
begin
 {Items.Strings[aIndex] := GetStrPas(Value);}
end;

{Tl3DataListContainerNode}

procedure Tl3DataListContainerNode.Cleanup;
begin
 Items := nil;
 inherited;
end;

procedure Tl3DataListContainerNode.ReleaseChilds;
begin
 Changing;
 try
  Notify(ntChildClear, Self);
  l3Free(fItems);
 finally
  Changed;
 end;
end;

procedure Tl3DataListContainerNode.DeleteChildItem(aIndex: Integer;
 const aDelete: Il3Node);
begin
 fItems.Delete(aIndex);
 //Inherited DeleteChildItem(aIndex,anOpProc, aDelete);  посылает Notify об удалении, который итак приходит от листа
end;

function Tl3DataListContainerNode.MakeChildNode: Tl3ListItemNode;
begin
 Result := Tl3DataListItemNode.Create;
end;

 {function Tl3DataListContainerNode.Get_AllChildrenCount: Integer;
  begin
   If fItems <> nil
    then Result := fItems.Count
    else Result := 0;
  end;}

function Tl3DataListContainerNode.GetItemsCount: Integer;
begin
 if fItems <> nil then
  Result := fItems.Count
 else Result := 0;
end;

function Tl3DataListContainerNode.GetItems: Tl3StringDataList;
begin
 Result := fItems;
end;

procedure Tl3DataListContainerNode.SetItems(Value: Tl3StringDataList);
begin
 if fItems = Value then
  Exit;
 Changing;
 try
  if fItems <> nil then
  begin
   Notify(ntChildClear, Self);
   Il3ChangeNotifier(fItems).Unsubscribe(Il3ItemNotifyRecipient(Self));
   Il3ChangeNotifier(fItems).Unsubscribe(Il3ChangeRecipient(Self));
  end;

  l3Set(fItems, Value);

  if fItems <> nil then
  begin
   fItems.NeedDisposeStr := True;
   fItems.NeedAllocStr := True;
   Il3ChangeNotifier(fItems).Subscribe(Il3ItemNotifyRecipient(Self));
   Il3ChangeNotifier(fItems).Subscribe(Il3ChangeRecipient(Self));
   IncAllChildrenCount(fItems.Count - fChildCount);
   Notify(ntChildInsert, Self);
  end;
 finally
  Changed;
 end;
end;

function Tl3DataListContainerNode.GetStrings(aIndex: Integer): Tl3WString;
begin
 Result := l3PCharLen(Items.Strings[aIndex], -1, cDefCodePage);
end;

procedure Tl3DataListContainerNode.SetStrings(aIndex: Integer; const Value: Tl3WString);
begin
 Items.Strings[aIndex] := PAnsiChar(l3Str(Value, CP_DefaultValue));
end;

function Tl3DataListContainerNode.GetItemParam(aIndex: Integer): Integer;
begin
 Result := Integer(Items.DataInt[aIndex]);
end;

procedure Tl3DataListContainerNode.SetItemParam(aIndex: Integer; Value: Integer);
begin
 Items.DataInt[aIndex] := Value;
end;

function Tl3DataListContainerNode.GetItemData(aIndex: Integer): PAnsiChar;
begin
 Result := Items.Data[aIndex];
end;

procedure Tl3DataListContainerNode.SetItemData(aIndex: Integer; aValue: PAnsiChar);
begin
 Items.Data[aIndex] := aValue;
end;

function Tl3DataListContainerNode.GetItemDataSize(aIndex: Integer): Cardinal;
begin
 Result := Items.HostDataSize;
end;

procedure Tl3DataListContainerNode.SetItemDataSize(aIndex: Integer; aValue: Cardinal);
begin
 //Items.DataSize := aValue;
end;

function Tl3DataListContainerNode.GetItemFlag(aIndex: Integer): Integer;
begin
 Result := Integer(Items.Flags[aIndex]); //PAnsiChar(Items.Strings[aIndex]);
end;

procedure Tl3DataListContainerNode.MoveChildItemPrim(aCurIndex, aNewIndex : Integer);
begin
 Items.Move(aCurIndex, aNewIndex);
end;

procedure Tl3DataListContainerNode.SetItemFlag(aIndex: Integer; Value: Integer);
begin
 Items.Flags[aIndex] := Value;
end;

{Tl3CustomNode}

function Tl3CustomNode.Get_ChildSorted: Boolean;
 {fChildSortMode 0 - False, 1-True, 2-Ask Parent}
begin
 case fChildSortMode of
  2: Result := false;
  1: Result := true;
  0:
   if (ParentNode <> nil) then
    Result := ParentNode.ChildSorted
   else
    Result := false;
  else
  begin
   Result := false;
   Assert(false);
  end;//else
 end;//case fChildSortMode
end;

procedure Tl3CustomNode.Set_ChildSorted(aValue: Boolean);
begin
 //fChildSortMode := Ord(aValue);
 if aValue then
  fChildSortMode := 1
 else fChildSortMode := 2
end;

function Tl3CustomNode.Get_ChildSortedFromParent: Boolean;
begin
 //Result := fChildSortMode > 1;
 Result := fChildSortMode = 1;
end;

procedure Tl3CustomNode.Set_ChildSortedFromParent(aValue: Boolean);
begin
 if aValue then
  fChildSortMode := 0
 else fChildSortMode := 2;
end;

function Tl3CustomNode.DoCompareChild(const aChildrenNode1, aChildrenNode2: Il3Node): Integer;
begin
 Result := l3Compare(aChildrenNode1.Text, aChildrenNode2.Text);
end;

function Tl3CustomNode.CompareChild(const aChildrenNode1, aChildrenNode2: Il3Node): Integer;
  {-}
begin
 //Result := l3Compare(aChildrenNode1.Text, aChildrenNode2.Text);
 Result := DoCompareChild(aChildrenNode1, aChildrenNode2);
end;

procedure Tl3CustomNode.Set_Text(const Value: Tl3PCharLenPrim);
begin
 Changing;
 try
  AsPCharLen := Tl3PCharLen(Value);
  Sort;
  Notify(ntDataChange, Self);
 finally
  Changed;
 end;
end;

function Tl3CustomNode.Get_AllChildrenCount: Integer;
begin
 Result := 0;
end;

procedure Tl3CustomNode.Set_AllChildrenCount(Value: Integer);
begin
 IncAllChildrenCount(Value - AllChildrenCount);
end;

function Tl3CustomNode.GetThisChildrenCount: Integer;
 //virtual;
 {-}

 procedure CountChild(const aNode: Il3Node);
 begin
  Inc(Result);
 end;

begin
 Result := 0;
 IterateF(l3L2NA( @CountChild), imOneLevel);
end;

function Tl3CustomNode.IsDisappeared: Boolean;
begin
 Result := l3TestMask(Flags, nfWasDisappear);
end;

function Tl3CustomNode.HasChildNode: Boolean;
begin
 Result := (ChildNode <> nil);
end;

function Tl3CustomNode.GetSelf: Tl3CustomNode;
begin
 Result := Self;
end;

function Tl3CustomNode.InheritFrom(aClassType: Tl3NodeClass): Boolean;
begin
 Result := Self is aClassType;
end;

procedure Tl3CustomNode.Changed;
var
 lNode : Il3Node;
begin
 lNode := ParentNode;
 if lNode <> nil then
  lNode.Changed;
 inherited;
end;

procedure Tl3CustomNode.Changing;
var
 lNode : Il3Node;
begin
 inherited;
 lNode := ParentNode;
 if lNode <> nil then
  lNode.Changing;
end;

procedure Tl3CustomNode.Notify(aOperation: Integer; const aNode: Il3Node);
var
 lNode : Il3Node;
begin
 lNode := ParentNode;
 if lNode <> nil then
  lNode.Notify(aOperation, aNode);
end;

function NumberOfMaxBit(aLines: Integer): Integer; register; assembler;
asm
 //mov  eax, aLines
 bsr  eax, eax
 jz   @@next
 inc  eax
 @@next:
end;

function Tl3CustomNode.GetNodeByNumber(aNum: Integer): Il3Node;
begin
 if (aNum < 0) or (aNum > AllChildrenCount) then
  Result := Nil
 else if (aNum = 0) then
  Result := Self
 else
 begin
  Dec(aNum);
  Result := GetChildByNumber(aNum);
 end;
end;

function Tl3CustomNode.IterateF(Action: Tl3NodeAction;
 IterMode: Integer = 0;
 const aFromNode: Il3Node = nil): Il3Node;
begin
 try
  Result := Iterate(Action, IterMode, aFromNode);
 finally
  l3FreeFA(Tl3FreeAction(Action));
 end;{try..finally}
end;

procedure Tl3CustomNode.MovingStarted(var theUserParam: Pointer);
begin
end;

procedure Tl3CustomNode.MovingStopped(aUserParam: Pointer);
begin
end;

procedure Tl3CustomNode.BeginMove(var theUserParam: Pointer);
begin
 if fMoveEnterCnt = 0 then
  MovingStarted(theUserParam);
 Inc(fMoveEnterCnt);
end;

procedure Tl3CustomNode.EndMove(aUserParam: Pointer);
begin
 Dec(fMoveEnterCnt);
 if fMoveEnterCnt = 0 then
  MovingStopped(aUserParam);
end;

function Tl3CustomNode.Move(aDirection: Tl3Direction): Boolean;
begin
 Result := False;
end;

procedure Tl3CustomNode.SortChilds(const aChild: Il3Node = nil);
begin
 // do nothing
end;

procedure Tl3CustomNode.Sort;
begin
 if (ParentNode <> nil) and (ParentNode.ChildSorted) then
  ParentNode.SortChilds(Self);
end;

function Tl3CustomNode.InsertChild(const aChild: Il3Node): Il3Node;
begin
 Result := InsertChildBefore(nil, aChild);
end;

function Tl3CustomNode.IsAcceptChild(const aChild: Il3Node): Boolean;
begin
 Result := True;
end;

{Tl3CustomUsualNode}
procedure Tl3CustomUsualNode.Subscribe(const aRecipient: Il3Notify);
begin
 if fNotifiedObjList = nil then
  fNotifiedObjList := Tl3LongintList.MakeSorted; //MakeIUnknownSorted;
 fNotifiedObjList.Add(Integer(aRecipient));
end;

procedure Tl3CustomUsualNode.Unsubscribe(const aRecipient: Il3Notify);
begin
 if fNotifiedObjList <> nil then
  fNotifiedObjList.Remove(Integer(aRecipient));
end;

procedure Tl3CustomUsualNode.Changed;
var
 l_Index : Integer;
 l_Intf  : Il3ChangeRecipient;
 l_Item  : IUnknown;
begin
 inherited;
 if (fNotifiedObjList <> nil) then
  for l_Index := 0 to fNotifiedObjList.Hi do
  begin
   try // - зачем ??!!
    l_Item := IUnknown(fNotifiedObjList[l_Index]);
    if Supports(l_Item, Il3ChangeRecipient, l_Intf) AND
       (l_Item = l_Intf) then
     try
      l_Intf.Changed;
     finally
      l_Intf := nil;
     end;//try..finally
   except
    on E: Exception do
     l3System.Exception2Log(E);
   end;
  end;
end;

procedure Tl3CustomUsualNode.Changing;
var
 l_Index : Integer;
 l_Intf  : Il3ChangeRecipient;
 l_Item  : IUnknown;
begin
 inherited Changing;
 if (fNotifiedObjList <> nil) then
  for l_Index := 0 to fNotifiedObjList.Hi do
  begin
   try // - зачем ??!!
    l_Item := IUnknown(fNotifiedObjList[l_Index]);
    if Supports(l_Item, Il3ChangeRecipient, l_Intf) AND
       (l_Item = l_Intf) then
     try
      l_Intf.Changing;
     finally
      l_Intf := nil;
     end;//try..finally
   except
    on E: Exception do
     l3System.Exception2Log(E);
   end;
  end;
end;

(*
//1

procedure Tl3CustomUsualNode.Changed;
var
 I : Integer;
 lIntf : Il3ChangeRecipient;
begin
 inherited Changed;
 if (fNotifiedObjList <> nil) and
  (fNotifiedObjList.Count > 0) then
  for I := 0 to Pred(fNotifiedObjList.Count) do
   if l3IOk(IUnknown(fNotifiedObjList.Items[I]).QueryInterface(Il3ChangeRecipient, lIntf)) then
    try
     lIntf.Changed;
    finally
     lIntf := nil;
    end;
end;

procedure Tl3CustomUsualNode.Changing;
var
 I : Integer;
 lIntf : Il3ChangeRecipient;
begin
 inherited Changing;
 if (fNotifiedObjList <> nil) and
  (fNotifiedObjList.Count > 0) then
  for I := 0 to Pred(fNotifiedObjList.Count) do
   if l3IOk(IUnknown(fNotifiedObjList.Items[I]).QueryInterface(Il3ChangeRecipient, lIntf)) then
    try
     lIntf.Changing;
    finally
     lIntf := nil;
    end;
end;
*)
procedure Tl3CustomUsualNode.Notify(aOperation: Integer; const aNode: Il3Node);
var
 l_Index : Integer;
 l_NotifyRecipient : Il3NodeNotifyRecipient;
 l_Item  : IUnknown;
begin
 inherited Notify(aOperation, aNode);
 if (fNotifiedObjList <> nil) then
  for l_Index := 0 to fNotifiedObjList.Hi do
  begin
   try // - зачем ??!!
    l_Item := IUnknown(fNotifiedObjList[l_Index]);
    if Supports(l_Item, Il3NodeNotifyRecipient, l_NotifyRecipient) AND
       (l_Item = l_NotifyRecipient) then
     try
      l_NotifyRecipient.Notify(aOperation, aNode);
     finally
      l_NotifyRecipient := nil;
     end;//try..finally
   except
    on E: Exception do
     l3System.Exception2Log(E);
   end;
  end;
end;

(*
procedure Tl3CustomUsualNode.Notify(aOperation: Integer; const aNode: Il3Node);
var
 I : Integer;
 lIntf : Il3NodeNotifyRecipient;
 lCallANode : Boolean;
begin
 inherited Notify(aOperation, aNode);
 if (fNotifiedObjList <> nil) and
  (fNotifiedObjList.Count > 0) then
 begin
  lCallANode := False;
  for I := 0 to Pred(fNotifiedObjList.Count) do
  begin
   if l3IOk(IUnknown(fNotifiedObjList.Items[I]).QueryInterface(Il3NodeNotifyRecipient, lIntf)) then
    if l3IEQ(lIntf, aNode) then
     lCallANode := True
    else
     lIntf.Notify(aOperation, aNode);
  end;
  if lCallANode and l3IOk(aNode.QueryInterface(Il3NodeNotifyRecipient, lIntf)) then
   lIntf.Notify(aOperation, aNode);
 end;
end;
*)
function Tl3CustomUsualNode.GetNumInParent(aOnlyOneLevel: Boolean = False): Integer;
var
 lNode : Tl3Node;
begin
 Result := 0;
 lNode := Self;
 while not lNode.IsFirst do
 begin
  lNode := lNode.Prev;
  Inc(Result);
  if not aOnlyOneLevel then
   Inc(Result, lNode.AllChildrenCount);
 end;
end;

function Tl3CustomUsualNode.As_Il3ChangeNotifier: Il3ChangeNotifier;
begin
 Result := Self;
end;

procedure Tl3CustomUsualNode.Cleanup;
begin
 l3Free(fNotifiedObjList);
 ReleaseChilds;
 inherited;
end;

function Tl3CustomUsualNode.Get_NextNode: Il3Node;
begin
 Result := Next;
end;

function Tl3CustomUsualNode.Get_PrevNode: Il3Node;
begin
 Result := Prev;
end;

function Tl3CustomUsualNode.Get_ParentNode: Il3Node;
begin
 Result := Parent;
end;

function Tl3CustomUsualNode.pm_GetIndexInParent: Integer;
  // override;
  {* - индекс узла в родительском. }
begin
 Result := GetNumInParent(True);
end;

function Tl3CustomUsualNode.Get_ChildNode: Il3Node;
begin
 Result := Child;
end;

function Tl3CustomUsualNode.IsAcceptChild(const aChild: Il3Node): Boolean;
begin
 Result := (aChild as Il3NodeWrap).GetSelf is Tl3Node;
end;

function Tl3CustomUsualNode.InsertChildBefore(const aNextChild: Il3Node;
 const aChild: Il3Node): Il3Node;
var
 lNewChild : Tl3Node;
 lPrevNode : Tl3Node;
 lNextNode : Tl3Node;
begin
 Changing;
 try
  Result := aChild;
  lNewChild := (aChild as Il3NodeWrap).GetSelf as Tl3Node;
  lNewChild.Parent := Self;
  lNewChild.Use;
  lNewChild.Flags := lNewChild.Flags and not nfWasDisappear;

  if not HasChild then
  begin
   Child := lNewChild;
   //Flags := Flags or nfHasChild;
   lNewChild.Prev := lNewChild;
   lNewChild.Next := lNewChild;
  end
  else
  begin
   if ChildSorted then
   begin
    lNextNode := Child;
    while True do
    begin
     if CompareChild(aChild, lNextNode) < 0 then
     begin
      if Child = lNextNode then
       Child := lNewChild;
      Break;
     end;

     lNextNode := lNextNode.Next;

     if lNextNode.IsFirst {конец списка} then
     begin
      lNextNode := Child;
      Break;
     end;
    end;
   end
   else if aNextChild = nil then
    lNextNode := Child
   else
   begin
    lNextNode := (aNextChild as Il3NodeWrap).GetSelf as Tl3Node;
    if Child = lNextNode then
     Child := lNewChild;
   end;

   //lNextNode := lPrevNode.Next;

   lPrevNode := lNextNode.Prev;
   lPrevNode.Next := lNewChild;
   lNextNode.Prev := lNewChild;
   lNewChild.Next := lNextNode;
   lNewChild.Prev := lPrevNode;
  end;

  {Increment AllChildrenCount}
  IncAllChildrenCount(Succ(aChild.AllChildrenCount));
  Notify(ntInsert, aChild);
 finally
  Changed;
 end;

end;

procedure Tl3CustomUsualNode.DoRemove;
begin
 if Parent = nil then
  exit;
 Changing;
 try
  Flags := Flags or nfWasDisappear;
  Notify(ntDelete, Self);
  try
   if IsFirst then
    if IsLast then
     Parent.Child := nil
    else
     Parent.Child := Next;

   if Parent.Child <> nil then
   begin
    Next.Prev := Prev;
    Prev.Next := Next;
   end;

   if Next = Self then
   begin
    Next := nil;
    Prev := nil;
   end;
   Parent.IncAllChildrenCount( -Succ(AllChildrenCount));
   //Parent := nil; Changed send to Parent!!!
  finally
   Notify(ntDeleteDone, Self);
  end;
 finally
  Changed;
 end;
 Parent := nil;
 Free;
end;

procedure Tl3CustomUsualNode.SortChilds(const aChild: Il3Node = nil);

var
 lChild : Tl3Node;
 lNextNode : Tl3Node;
 lNextOfChild : Tl3Node;
 lEndList : Boolean;

 lMakeFirst : Boolean;
 lUserParam : Pointer;

 procedure lpMoveNode(const aMoveNode, aNextNode: Tl3Node; aMakeFirst: Boolean);
 begin
  if (aMoveNode.Next = aNextNode) and
   ( not aMakeFirst or (Child = aMoveNode)) then
   Exit;

  Notify(ntMoveBegin, aMoveNode);
  try
   lUserParam := nil;
   aMoveNode.BeginMove(lUserParam);

   try
    if aMakeFirst then
     Child := aMoveNode
    else
     if Child = aMoveNode then
      Child := aMoveNode.Next;

    if (aMoveNode <> aNextNode) and
       (aMoveNode.Next <> aNextNode) then
    begin
     with aMoveNode do
     begin
      Next.Prev := Prev;
      Prev.Next := Next;
     end;

     aMoveNode.Prev := lNextNode.Prev;
     aMoveNode.Next := aNextNode;
     aMoveNode.Prev.Next := aMoveNode;
     aNextNode.Prev := aMoveNode;
    end;

   finally
    aMoveNode.EndMove(lUserParam);
   end;
  finally
   Notify(ntMoveEnd, aMoveNode);
  end;
 end;

begin
 if not HasChild then
  Exit;
 if aChild <> nil then
 begin
  if not IsSame(aChild.ParentNode) then
   Exit;
  if Child.IsLast then
   Exit;
  lNextNode := Child;
  lChild := (aChild as Il3NodeWrap).GetSelf as Tl3Node;

  lMakeFirst := False;

  while True do
  begin
   if (lChild <> lNextNode) then
   begin
    if CompareChild(aChild, lNextNode) < 0 then
    begin
     lMakeFirst := Child = lNextNode;
     Break;
    end;
   end;

   lNextNode := lNextNode.Next;

   if lNextNode.IsFirst then {конец списка}
   begin
    lNextNode := Child;
    Break;
   end;
  end;
  Changing;
  try
   lpMoveNode(lChild, lNextNode, lMakeFirst);
  finally
   Changed;
  end;
 end
 else
 begin
  if Child.IsLast then
   Exit;
  lChild := Child.Next;
  lEndList := lChild.IsLast;
  Changing;
  try
   while True do
   begin
    lNextNode := Child;
    //lMakeFirst := False;

    while True do
    begin
     if (lChild <> lNextNode) then
     begin
      if CompareChild(lChild, lNextNode) < 0 then
      begin
       lMakeFirst := Child = lNextNode;
       lNextOfChild := lChild.Next;
       lpMoveNode(lChild, lNextNode, lMakeFirst);
       lChild := lNextOfChild;
       Break;
      end
     end
     else
     begin
      lChild := lChild.Next;
      Break;
     end;
     lNextNode := lNextNode.Next;
    end;

    if lEndList then
     Break; {конец списка}
    lEndList := lChild.IsLast;
   end;
  finally
   Changed;
  end;
 end;
end;

function Tl3CustomUsualNode.Move(aDirection: Tl3Direction): Boolean;
var
 ltParentNode       : Il3Node;
 ltParentParentNode : Il3Node;
 ltNextNode         : Il3Node;
 ltNextNextNode     : Il3Node;
 lUserParam         : Pointer;

begin
 Result := False;
 if Parent = Nil then
  Exit;
 if Parent.ChildSorted then
  Exit;

 Notify(ntMoveBegin, Self);
 try
  lUserParam := nil;
  BeginMove(lUserParam);
  try
   case aDirection of
    dUp:
     if not IsFirst then
     begin
      Changing;
      try
       Prev.Next := Next;
       Next.Prev := Prev;

       if Parent.Child = Prev then
        Parent.Child := Self;
       Next := Prev;
       Prev := Prev.Prev;
       Next.Prev := Self;
       Prev.Next := Self;
       Result := True;
      finally
       Changed;
      end;
     end;

    dUpMax:
     if not IsFirst then
     begin
      Changing;
      try
       Prev.Next := Next;
       Next.Prev := Prev;

       Next := Parent.Child;
       Prev := Parent.Child.Prev;
       Next.Prev := Self;
       Prev.Next := Self;
       Parent.Child := Self;
       Result := True;
      finally
       Changed;
      end;
     end;

    dDown:
     if not IsLast then
     begin
      Changing;
      try
       Prev.Next := Next;
       Next.Prev := Prev;

       if IsFirst then
        Parent.Child := Next;

       Prev := Next;
       Next := Next.Next;
       Next.Prev := Self;
       Prev.Next := Self;
       Result := True;
      finally
       Changed;
      end;
     end;
    (*
    dLeft:
     if Assigned(Parent) and Assigned(Parent.Parent) then
     begin
      ltParentNode := ParentNode;
      ltNextNode := NextNode;
      if ltParentNode.ParentNode.IsAcceptChild(Self) then
      begin
       Changing;
       try
        Remove;
        try
         ltParentNode.ParentNode.InsertChildBefore(ltParentNode, Self);
         Result := True;
        except
         ltParentNode.InsertChildBefore(ltNextNode, Self);
        end;
       finally
        Changed;
       end;
      end;
     end;

    dRight:
     if not IsLast then
     begin
      ltNextNode := NextNode;
      if ltNextNode.IsAcceptChild(Self) then
      begin
       Changing;
       try
        //ltNextNode := Next;
        Remove;
        try
         ltNextNode.InsertChildBefore(ltNextNode.ChildNode, Self);
         Result := True;
        except
         ltNextNode.ParentNode.InsertChildBefore(ltNextNode, Self);
        end;
       finally
        Changed;
       end;
      end;
     end;

     *)
    dLeft:
     if Assigned(Parent) and Assigned(Parent.Parent) then
     begin
      ltParentNode := ParentNode;
      ltNextNode := NextNode;
      if ltNextNode.IsFirst then
       ltNextNode := nil;

      ltParentParentNode := ltParentNode.ParentNode;
      if ltParentParentNode.IsAcceptChild(Self) then
      begin
       Changing;
       try
        Remove;
        try
         if ltParentNode.IsLast then
          ltParentNode := nil
         else
          ltParentNode := ltParentNode.NextNode;
         ltParentParentNode.InsertChildBefore(ltParentNode, Self);
         Result := True;

         While ltNextNode <> nil do
         begin
          ltNextNextNode := ltNextNode.NextNode;
          if ltNextNextNode.IsFirst then
           ltNextNextNode := nil;
          ltNextNode.Remove;
          InsertChild(ltNextNode);

          ltNextNode := ltNextNextNode;
         end;

        except
         // это работать не будет ltParentNode.InsertChildBefore(ltNextNode, Self);
         on E: Exception do
          l3System.Exception2Log(E);
        end;

       finally
        Changed;
       end;
      end;
     end;

    dRight:
     if not IsFirst then
     begin
      ltParentNode := PrevNode;

      if ltParentNode.IsAcceptChild(Self) then
      begin
       Changing;
       try
        //ltNextNode := Next;
        Remove;
        try
         ltParentNode.InsertChild(Self);
         Result := True;
        except
         on E: Exception do
         begin
          l3System.Exception2Log(E);
          if ltParentNode.IsLast then
           ltNextNode := nil
          else
           ltNextNode := ltParentNode.NextNode;
          ltParentNode.ParentNode.InsertChildBefore(ltNextNode, Self);
         end;
        end;
       finally
        Changed;
       end;
      end;
     end;
   end;
  finally
   EndMove(lUserParam);
  end;
 finally
  Notify(ntMoveEnd, Self);
 end;
end;

procedure Tl3CustomUsualNode.ReleaseChilds;
begin
 if Child = nil then
  Exit;

 Changing;
 try
  Notify(ntChildClear, Self);
  AllChildrenCount := 0;
  ReleaseChildsPrim;
 finally
  Changed;
 end;
end;

procedure Tl3CustomUsualNode.ReleaseChildsPrim;
var
 lCurNode : Tl3Node;
 lNextNode : Tl3Node;
 lLast : Boolean;
begin
 if Child = nil then
  Exit;

 lCurNode := Child.Prev; // Last
 repeat
  lLast := lCurNode = Child;
  lNextNode := lCurNode.Prev;
  lCurNode.Parent := nil;
  lCurNode.Free;
  lCurNode := lNextNode;
 until lLast;
 Child := nil;
end;

function Tl3CustomUsualNode.GetLevelForParent(const aNode: Il3SimpleNode): Integer;
var
 lCNode : Il3SimpleNode;
begin
 Result := 0;
 lCNode := Self;
 while (lCNode <> nil) and not lCNode.IsSame(aNode) do
 begin
  Inc(Result);
  lCNode := lCNode.Parent;
 end;//while (lCNode <> nil)
 if (lCNode = nil) then
  Result := -1;
end;

function Tl3CustomUsualNode.GetChildByNumber(aNum: Integer): Il3Node;
begin
 Result := ChildNode;
 while (Result <> nil) do
 begin
  if aNum = 0 then
   Break
  else
  if aNum <= Result.AllChildrenCount then
  begin
   Result := Result.GetNodeByNumber(aNum);
   Break;
  end
  else Dec(aNum, Succ(Result.AllChildrenCount));
  Result := Result.NextNode;
 end;
end;

function Tl3CustomUsualNode.IterateChild(Action: Tl3NodeAction;
 IterMode: Integer; const aFromNode: Il3Node = nil): Il3Node;
var
 lCurNode : Il3Node;
 lNextNode : Il3Node;

begin
 Result := nil;
 if not HasChild then
  Exit;
 if (aFromNode = nil) then
  lCurNode := ChildNode
 else
 begin
  if not IsSame(aFromNode.ParentNode) then
   Exit;
  lCurNode := aFromNode;
 end;

 repeat
  if lCurNode.IsLast then
   lNextNode := nil
  else lNextNode := lCurNode.NextNode;

  Result := lCurNode.Iterate(Action, IterMode);
  // ## Result := (lCurNode as Il3NodeWrap).GetSelf.Iterate(Action, IterMode);

  if (Result <> nil) or (lNextNode = nil) then
   Exit;

  lCurNode := lNextNode;
 until False;
 //until (lCurNode <> nil) and ((lCurNode as Il3NodeWrap).GetSelf = Child);
end;

function Tl3CustomUsualNode.IterateNoParent(Action: Tl3NodeAction; IterMode: Integer; const aFromNode: Il3Node = nil): Il3Node;
var
 //lParent,
 lNext : Il3Node;
 lCNode : Il3Node;
 function CheckMyChild: Boolean;
 begin
  Result := True;
  //aFromNode
 end;

begin
 Result := nil;
 if not CheckMyChild then
  Exit;
 lNext := nil;
 IterMode := IterMode and not imNoSubRoot and not imParentNeed;

 Result := aFromNode.Iterate(Action, IterMode);

 lCNode := aFromNode;
 while Result = nil do
 begin
  //lCNode := aFromNode;
  while lCNode.IsLast do
  begin
   lCNode := lCNode.ParentNode;
   if IsSame(lCNode) then
    exit;
  end;

  lNext := lCNode.NextNode;

  lCNode := lCNode.ParentNode;
  Result := lCNode.Iterate(Action, IterMode, lNext);
  if IsSame(lCNode) then
   exit;
  //Result := IterateChild(Action, IterMode);

 end;

end;

function Tl3CustomUsualNode.Iterate(Action: Tl3NodeAction;
 IterMode: Integer = 0;
 const aFromNode: Il3Node = nil): Il3Node;
var
 lCurNode : Il3Node;
 ActionResult : Boolean;
 lParentNeed : Boolean;
 lFromNode : Il3Node;
begin
 lFromNode := aFromNode;
 if IsSame(lFromNode) then
  lFromNode := nil
 else
  lFromNode := aFromNode;

 if (IterMode and imNoSubRoot > 0) and (lFromNode <> nil) then
 begin
  Result := IterateNoParent(Action, IterMode, lFromNode);
  Exit;
 end;

 Result := nil;
 lParentNeed := l3TestMask(IterMode, imParentNeed);
 IterMode := IterMode or imParentNeed;

 if (IterMode and imChildsBefore > 0) {l3TestFlag(IterMode, imChildsBefore)} and (IterMode and imNoChilds = 0) {not l3TestFlag(IterMode, imNoChilds)} and HasChild
 {and (not l3TestFlag(IterMode, imExpandOnly) or IsExpanded)} then
 begin
  if (IterMode and imOneLevel > 0) {l3TestFlag(IterMode, imOneLevel)} then
   l3SetMask(IterMode, imNoChilds);
  Result := IterateChild(Action, IterMode, lFromNode);
 end;

 if (Result = nil) and lParentNeed {and Not (() {or (IterMode and imNoSubRoot > 0))} then
 begin
  lCurNode := Self;
     {$IfDef SkipIterByExcept}
  try
   if (IterMode and imLeavesOnly > 0) then
   begin
    if (not lCurNode.HasChild) then
     ActionResult := Action(lCurNode)
    else
     ActionResult := False;
   end
   else
    ActionResult := Action(lCurNode);
  except
   on E: ESkipIterateChilds do
   begin
    ActionResult := False;
    l3SetMask(IterMode, imNoChilds);
   end;
   else raise;
  end;
     {$Else}
  if (IterMode and imLeavesOnly > 0) then
  begin
   if (not lCurNode.HasChild) then
    ActionResult := Action(lCurNode)
   else
    ActionResult := False;
  end
  else
   ActionResult := Action(lCurNode);

  if Byte(ActionResult) = 2 then
  begin
   ActionResult := False;
   if l3TestMask(IterMode, imCheckResult) then
    l3SetMask(IterMode, imNoChilds);
  end;
     {$EndIf}

  if (IterMode and imCheckResult > 0) and ActionResult then
  begin
   Result := lCurNode;
   Exit;
  end;
 end;

 if (IterMode and imChildsBefore = 0)     {not l3TestFlag(IterMode, imChildsBefore)} and (IterMode and imNoChilds = 0) {not l3TestFlag(IterMode, imNoChilds)} and HasChild
 //and (not l3TestFlag(IterMode, imExpandOnly) or IsExpanded)
 then
 begin
  if (IterMode and imOneLevel > 0) {l3TestFlag(IterMode, imOneLevel)} then
   l3SetMask(IterMode, imNoChilds);
  Result := IterateChild(Action, IterMode, lFromNode);
 end;
end;

// start class Tl3PlaceNode

class function Tl3PlaceNode.Make: Il3Node;
  //reintroduce;
  {-}
var
 l_Node : Tl3PlaceNode;
begin
 l_Node := Create;
 try
  Result := l_Node;
 finally
  l3Free(l_Node);
 end;//try..finally
end;

{ function Tl3PlaceNode.Get_Owner: Il3ItemStorage;
  begin
   Result := Il3ItemStorage(fOwner);
  end;

 procedure Tl3PlaceNode.Set_Owner(const Value: Il3ItemStorage);
  begin
   If fOwner <> Pointer(Value) then
    begin
     //If fOwner <> nil then fOwner._AddRef;
     fOwner := Pointer(Value);
     //If fOwner <> nil then fOwner._Release;
    end;
  end;
}
function Tl3PlaceNode.GetNext: Tl3Node;
begin
 Result := fNext;
end;

procedure Tl3PlaceNode.SetNext(Value: Tl3Node);
begin
 fNext := Value;
end;

function Tl3PlaceNode.GetPrev: Tl3Node;
begin
 Result := fPrev;
end;

procedure Tl3PlaceNode.SetPrev(Value: Tl3Node);
begin
 fPrev := Value;
end;

function Tl3PlaceNode.GetParent: Tl3Node;
begin
 Result := fParent;
end;

procedure Tl3PlaceNode.SetParent(Value: Tl3Node);
begin
 fParent := Value;
end;

function Tl3PlaceNode.GetChild: Tl3Node;
begin
 Result := fChild;
end;

procedure Tl3PlaceNode.SetChild(Value: Tl3Node);
begin
 fChild := Value;
end;

function Tl3PlaceNode.Get_AllChildrenCount: Integer;
begin
 Result := fChildCount;
end;

procedure Tl3PlaceNode.IncAllChildrenCount(aInc: Integer);
begin
 if aInc = 0 then
  Exit;
 {Set_AllChildrenCount(AllChildrenCount + aInc);}
 fChildCount := fChildCount + aInc;
 if ParentNode <> nil then
  ParentNode.IncAllChildrenCount(aInc);
end;

procedure Tl3PlaceNode.ReleaseChilds;
begin
 inherited;
 fChildCount := 0;
end;

function Tl3PlaceNode.IsFirstNode: Boolean;
var
 lNode : Tl3Node;
begin
 lNode := Parent;
 if lNode = nil then
  Result := True
 else
 begin
  lNode := lNode.Child;
  Result :=(lNode = nil) or (lNode = Self);
 end;
end;

function Tl3PlaceNode.IsLastNode: Boolean;
var
 lNode : Tl3Node;
begin
 lNode := Parent;
 if lNode = nil then
  Result := True
 else
 begin
  lNode := lNode.Child;
  Result := (lNode = nil) or (lNode.Prev = Self);
 end;
end;

function Tl3PlaceNode.HasChildNode: Boolean;
begin
 Result := Child <> nil;
end;

function Tl3PlaceNode.MaybeChild: Boolean;
begin
 Result := HasChild or ((Flags and nfHasChild) <> 0);
end;

{ function  Tl3PlaceNode.IsExpanded : Boolean;
  begin
   Result := (Flags and nfExpanded > 0);
  end;}

function Tl3PlaceNode.Get_Flag(anIndex: Integer): Boolean;
begin
 Result := FFlags and anIndex > 0;
end;

procedure Tl3PlaceNode.Set_Flag(anIndex: Integer; Value: Boolean);
begin
 if Value then
  FFlags := FFlags or anIndex
 else
  FFlags := FFlags and not anIndex;
end;

function Tl3PlaceNode.Get_Flags: Integer;
begin
 Result := FFlags;
end;

procedure Tl3PlaceNode.Set_Flags(Value: Integer);
begin
 fFlags := Value;
end;

{Tl3CacheableNode}

//  f_ExternalNode: Il3Node;

class function Tl3CacheableNode.Make(const anExternalNode: Il3SimpleNode) : Il3Node;
var
 lNode : Tl3CacheableNode;
begin
 lNode := Create(anExternalNode);
 try
  Result := lNode;
 finally
  l3Free(lNode);
 end;
end;

constructor Tl3CacheableNode.Create(const anExternalNode: Il3SimpleNode);
begin
 inherited Create;

 f_ExternalNode := anExternalNode;
end;

procedure Tl3CacheableNode.Cleanup;
begin
 f_ExternalNode := nil;
 l3Free(fText);
 inherited;
end;

function Tl3CacheableNode.COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
begin
 Result := inherited COMQueryInterface(IID, Obj);
 if Result.Fail then
 begin
  if (f_ExternalNode = nil) then
   Result.SetNOINTERFACE
  else
   Result := Tl3HResult_C(f_ExternalNode.QueryInterface(IID.IID, Obj));
 end;//l3IFail(Result)
end;

function Tl3CacheableNode.GetAsPCharLen: Tl3PCharLenPrim;
  //override;
  {-}
begin
 if (f_ExternalNode <> nil) then
  Result := f_ExternalNode.Text
 else
  Result := fText.AsPCharLen;
end;

procedure Tl3CacheableNode.DoSetAsPCharLen(const Value: Tl3PCharLen);
  //override;
  {-}
begin
 l3Set(fText, Value);
end;

{Tl3HandleNode}

function Tl3HandleNode.pm_GetStringID: Tl3Handle;
begin
 Result := Get_Handle;
end;

procedure Tl3HandleNode.pm_SetStringID(Value: Tl3Handle);
begin
 Set_Handle(Value);
end;

{Tl3UsualNode}

procedure Tl3UsualNode.Cleanup;
  //override;
  {-}
begin
 l3Free(fText);
 inherited;
end;

function Tl3UsualNode.Get_Handle: Integer;
begin
 Result := fHandle;
end;

procedure Tl3UsualNode.Set_Handle(Value: Integer);
begin
 Changing;
 try
  fHandle := Value;
  Notify(ntDataChange, Self);
 finally
  Changed;
 end;
end;

function Tl3UsualNode.GetAsPCharLen: Tl3PCharLenPrim;
  //override;
  {-}
begin
 Result := fText.AsPCharLen;
end;

procedure Tl3UsualNode.DoSetAsPCharLen(const Value: Tl3PCharLen);
  //override;
  {-}
begin
 l3Set(fText, Value);
end;

function l3IterateSubTreeF(const aRootNode: Il3Node;
                           Action: Tl3NodeAction;
                           aIterMode: Integer = 0;
                           const aFromNode: Il3Node = nil): Il3Node;
begin
 try
  if aRootNode = nil then
   Exit;
  Result := aRootNode.Iterate(Action, aIterMode, aFromNode);
 finally
  l3FreeFA(Tl3FreeAction(Action));
 end;{try..finally}
end;

function l3FindNodeByHandle(const aRootNode: Il3Node;
                            aHandle: Integer;
                            aIterMode: Integer = 0;
                            const aFromNode: Il3Node = nil): Il3Node;

 function IterHandler(const CurNode: Il3Node): Boolean; 
 var
  l_HandleNode : Il3HandleNode;
 begin
  try
   if l3IOk(CurNode.QueryInterface(Il3HandleNode, l_HandleNode)) then
    try
     Result := (aHandle = l_HandleNode.Handle);
    finally
     l_HandleNode := nil;
    end//try..finally
   else
    Result := False;
  except
   on E: Exception do
   begin
    Result := False;
    l3System.Exception2Log(E);
   end;
  end;
 end;

begin
 Result := l3IterateSubTreeF(aRootNode, l3L2NA( @IterHandler), imCheckResult or aIterMode, aFromNode);
end;

function l3SearchByName(const aRootNode : Il3Node;
                        const aNameStr  : AnsiString;
                        aIterMode       : Integer = 0;
                        const aFromNode : Il3Node = nil): Il3Node;
  //overload;
begin
 Result := l3SearchByName(aRootNode, l3PCharLen(aNameStr), aIterMode, aFromNode);
end;

function l3SearchByName(const aRootNode : Il3Node;
                        const aNameStr  : Tl3WString;
                        aIterMode       : Integer = 0;
                        const aFromNode : Il3Node = nil): Il3Node;
  {-}

 function IterHandler(const CurNode: Il3Node): Boolean;
 begin
  Result := l3Same(CurNode.Text, aNameStr, true);
 end;

begin
 Result := l3IterateSubTreeF(aRootNode, l3L2NA( @IterHandler), aIterMode or imCheckResult, aFromNode);
end;

function l3SearchByName(const aTree     : Il3SimpleTree;
                        const aNameStr  : Tl3WString;
                        aIterMode       : Integer = 0;
                        const aFromNode : Il3SimpleNode = nil): Il3SimpleNode;
  //overload;
  {-}

 function IterHandler(const CurNode: Il3SimpleNode): Boolean;
 begin
  Result := l3Same(CurNode.Text, aNameStr, true);
 end;

begin
 Result := aTree.SimpleIterateF(l3L2SNA(@IterHandler), aIterMode or imCheckResult, aFromNode);
end;
  
function l3SearchByName(const aRootNode : Il3Node;
                        const aNameStr  : Il3CString;
                        aIterMode       : Integer = 0;
                        const aFromNode : Il3Node = nil): Il3Node;
  //overload;
  {-}
begin
 Result := l3SearchByName(aRootNode, l3PCharLen(aNameStr), aIterMode, aFromNode);
end;

function l3SearchNameBegin(const aRootNode : Il3Node;
                           const aSrchStr        : Tl3WString;
                           aIterMode       : Integer;
                           const aFromNode : Il3Node = nil): Il3Node;

 function IterHandler(const CurNode: Il3Node): Boolean;
 begin
  Result := l3AnsiStrLICompExt(aSrchStr.S, CurNode.Text.S, aSrchStr.SLen) = 0;
 end;

begin
 Result := l3IterateSubTreeF(aRootNode, l3L2NA( @IterHandler), aIterMode or imCheckResult, aFromNode);
end;

function l3SearchNameOccur(const aRootNode: Il3Node;
                           const aSrchStr: Tl3WString;
                           aIterMode: Integer;
                           const aFromNode: Il3Node = nil): Il3Node;
var
 BT : Tl3BMTable;
 Pos : Cardinal;
 S : Tl3String;

 function IterHandler(const aCurNode: Il3Node): Boolean;
 begin
  Result := S.BMSearchUC((aCurNode as Il3NodeWrap).GetSelf, BT, Pos);
 end;

begin
 S := Tl3String.Make(aSrchStr);
 try
  S.MakeUpper;
  S.MakeBMTable(BT);
  Result := l3IterateSubTreeF(aRootNode, l3L2NA( @IterHandler), aIterMode or imCheckResult, aFromNode);
 finally
  l3Free(S);
 end;{try..finally}
end;

function l3SearchByNode(const aRootNode : Il3Node;
                        aCriterionNode  : Il3Node;
                        aIterMode       : Integer = 0;
                        const aFromNode : Il3Node = nil): Il3Node;
  {-}

 function IterHandler(const CurNode: Il3Node): Boolean; 
 begin
  Result :=  aCriterionNode.IsSame(CurNode);
 end;

begin
 Result := l3IterateSubTreeF(aRootNode, l3L2NA( @IterHandler), aIterMode or imCheckResult, aFromNode);
end;


function l3SearchByPath(const aRootNode: Il3Node;
                        const aPathStr: Tl3WString;
                        const aLevelSlash: AnsiString = '\'): Il3Node;
var
 l_Str: Tl3WString;
begin
 if l3IsNil(aPathStr) then
  Result := aRootNode // для пустого пути возвращаем корневой узел
 else
 begin
  l_Str := aPathStr;
  Result := l3GetPartPath(aRootNode, l_Str, aLevelSlash);
  if not l3IsNil(l_Str) then
   Result := nil;
 end;
end;

function l3GetPartPath(const aRootNode   : Il3Node;
                       var thePathStr    : Tl3WString;
                       const aLevelSlash : AnsiString = '\'): Il3Node;
var
 l_End : Integer;
 l_Res : Il3Node;
 l_LevSlash : Tl3WString;
 l_Len : integer;
begin
 Result := aRootNode;
 l_LevSlash := l3PCharLen(aLevelSlash);
 while not l3IsNil(thePathStr) do
 begin
  l_End := l3Pos(thePathStr, l_LevSlash);
  if l_End = 0 then
  begin
   thePathStr := l3Copy(thePathStr, l_LevSlash.SLen, MaxInt);
   Continue;
  end;

  if l_End <> l3NotFound then
   l_Len := l_End
  else
   l_Len := thePathStr.SLen;
   //MakeSubTree(CurNode);
  if l_Len = 0 then
   Break;

  l_Res := l3SearchByName(Result, l3PCharLen(thePathStr.S, l_Len), imOneLevel);
  if l_Res = nil then
   Break
  else
   Result := l_Res;
  if l_End = l3NotFound then
   l3AssignNil(thePathStr)
  else
   thePathStr := l3Copy(thePathStr, l_End + l_LevSlash.SLen, MaxInt);
 end;//while (aPathStr <> nil)
end;

function l3GetSPartPath(const aTree       : Il3SimpleTree;
                        var thePathStr    : Tl3WString;
                        const aLevelSlash : AnsiString = '\'): Il3SimpleNode;
var
 l_End : Integer;
 l_Res : Il3SimpleNode;
 l_LevSlash : Tl3WString;
 l_Len : integer;
begin
 Result := aTree.RootNode;
 l_LevSlash := l3PCharLen(aLevelSlash);
 while not l3IsNil(thePathStr) do
 begin
  l_End := l3Pos(thePathStr, l_LevSlash);
  if l_End = 0 then
  begin
   thePathStr := l3Copy(thePathStr, l_LevSlash.SLen, MaxInt);
   Continue;
  end;

  if l_End <> l3NotFound then
   l_Len := l_End
  else
   l_Len := thePathStr.SLen;
   //MakeSubTree(CurNode);
  if l_Len = 0 then
   Break;

  l_Res := l3SearchByName(aTree, l3PCharLen(thePathStr.S, l_Len), imOneLevel, Result);
  if l_Res = nil then
   Break
  else
   Result := l_Res;
  if l_End = l3NotFound then
   l3AssignNil(thePathStr)
  else
   thePathStr := l3Copy(thePathStr, l_End + l_LevSlash.SLen, MaxInt);
 end;//while (aPathStr <> nil)
end;

procedure l3GetFullPath(const aRootNode    : Il3SimpleNode;
                        const aNode        : Il3SimpleNode;
                        aPath              : PAnsiChar;
                        var MaxLen         : Cardinal;
                        const aLevelSlash  : AnsiString = '\';
                        const aLevelIndent : AnsiString = '';
                        aRootInclude       : Boolean = False;
                        aLevelNumerate     : Boolean = False);
var
 LN        : Integer;
 lSLen     : Integer;
 NewLen    : Integer;
 SlashLen  : Byte;
 IndLen    : Byte;
 N         : Integer;
 lOrdNum   : Integer;
 I         : Integer;
 lRootNode : Il3SimpleNode;
 l_Node    : Il3SimpleNode;
begin
 if aPath <> nil then
  aPath[0] := #0;
 if aNode = nil then
  Exit;
 l_Node := aNode;
 SlashLen := Length(aLevelSlash);
 IndLen := Length(aLevelIndent);
 NewLen := 0;
 N := l_Node.GetLevelFor(aRootNode) + 1;
 lRootNode := aRootNode;
 while (l_Node <> nil) and (aRootInclude or not lRootNode.IsSame(l_Node)) do
 begin
  lSLen := l_Node.Text.SLen;
  LN := lSLen;
  if NewLen > 0 then
  begin
   Inc(LN, SlashLen);
   Inc(LN, N * IndLen);
  end;
  Inc(LN, Ord(aLevelNumerate) * 4);
  if NewLen + LN > MaxLen then
   Break;
  if NewLen = 0 then
   StrMove( @aPath[Ord(aLevelNumerate) * 4], l_Node.Text.S, lSLen)
  else
  begin
   StrMove( @aPath[LN], aPath, NewLen);
   StrMove( @aPath[Ord(aLevelNumerate) * 4], l_Node.Text.S, lSLen {LN-SlashLen-Ord(aLevelNumerate)*4-N*IndLen});
   StrMove( @aPath[LN - SlashLen - N * IndLen], PAnsiChar(aLevelSlash), SlashLen);
   if IndLen > 0 then
    for I := 0 to Pred(N) do
     StrMove( PAnsiChar(@aPath[LN - SlashLen + (I - N) * IndLen + 1]), @aLevelIndent[1], IndLen);
  end;

  if aLevelNumerate then
  begin
   lOrdNum := l_Node.IndexInParent + 1;
   StrMove(aPath, PAnsiChar(Format('%.3d=', [lOrdNum])), 4);
  end;//aLevelNumerate

  Inc(NewLen, LN);
  Dec(N);
  l_Node := l_Node.Parent;
 end;
 MaxLen := NewLen;

 aPath[MaxLen] := #0;
end;

function l3GetFullPathLen(const aRootNode    : Il3SimpleNode;
                          const aNode        : Il3SimpleNode;
                          const aLevelSlash  : AnsiString = '\';
                          const aLevelIndent : AnsiString = '';
                          aRootInclude       : Boolean = False;
                          aLevelNumerate     : Boolean = False): Cardinal;
var
 LN        : Cardinal;
 MaxLen    : Cardinal;
 SlashLen  : Byte;
 CNode     : Il3SimpleNode;
 N         : Cardinal;
 lRootNode : Il3SimpleNode;
begin
 Result := 0;
 if aNode = nil then
  Exit;
 SlashLen := Length(aLevelSlash);
 MaxLen := High(Cardinal) - 20;
 CNode := aNode;

 lRootNode := aRootNode;

 while (CNode <> nil) and (aRootInclude or not lRootNode.IsSame(CNode)) do
 begin
  LN := CNode.Text.SLen;
  if Result > 0 then
   Inc(LN, SlashLen);
  Inc(LN, Ord(aLevelNumerate) * 4);
  if Result + LN > MaxLen then
   Break;
  Inc(Result, LN);
  CNode := CNode.Parent;
 end;//while (CNode <> nil)
 {If N > 0 then Dec(N);}
 //N:=GetLevel(aNode);
 if (Length(aLevelIndent) > 0) then
 begin
  N := aNode.GetLevelFor(aRootNode);
  N := ((N + 1) * N div 2) * Length(aLevelIndent);
  Inc(Result, N);
 end;//Length(aLevelIndent) > 0
 //Inc(Result,100);
end;

function l3GetFullPathAlloc(const aRootNode: Il3Node;
                            const aNode: Il3Node;
                            const aLevelSlash: AnsiString = '\';
                            const aLevelIndent: AnsiString = '';
                            aRootInclude: Boolean = False;
                            aLevelNumerate: Boolean = False): PAnsiChar;
var
 lStrLen : Cardinal;
begin
 lStrLen := l3GetFullPathLen(aRootNode, aNode, aLevelSlash, aLevelIndent, aRootInclude, aLevelNumerate);
 Result := l3StrAlloc(Succ(lStrLen));
 l3GetFullPath(aRootNode, aNode, Result, lStrLen, aLevelSlash, aLevelIndent, aRootInclude, aLevelNumerate);
end;

function l3GetFullPathCStr(const aRootNode: Il3SimpleNode;
                            const aNode: Il3SimpleNode;
                            aCodePage :  Integer = CP_ANSI;
                            const aLevelSlash: AnsiString = '\';
                            const aLevelIndent: AnsiString = '';
                            aRootInclude: Boolean = False;
                            aLevelNumerate: Boolean = False): Il3CString;
var
 lStrLen : Cardinal;
 lStr : PAnsiChar;
 ll3String : Tl3InterfacedString;
begin
 lStrLen := l3GetFullPathLen(aRootNode, aNode, aLevelSlash, aLevelIndent, aRootInclude, aLevelNumerate);
 l3System.GetLocalMem(lStr, Succ(lStrLen));
 l3GetFullPath(aRootNode, aNode, lStr, lStrLen, aLevelSlash, aLevelIndent, aRootInclude, aLevelNumerate);
 ll3String := Tl3InterfacedString.Make(l3PCharLen(lStr, lStrLen),True);
 try
  ll3String.CodePage := aCodePage;
  Result := ll3String;
 finally
  l3Free(ll3String);
 end;//try..finally
end;

function l3GetFullPathStr(const aRootNode: Il3SimpleNode;
                          const aNode: Il3SimpleNode;
                          const aLevelSlash: AnsiString = '\';
                          const aLevelIndent: AnsiString = '';
                          aRootInclude: Boolean = False;
                          aLevelNumerate: Boolean = False): AnsiString;
var
 lStrLen : Cardinal;
begin
 lStrLen := l3GetFullPathLen(aRootNode, aNode, aLevelSlash, aLevelIndent, aRootInclude, aLevelNumerate);
 SetLength(Result, lStrLen);
 if lStrLen > 0 then
  l3GetFullPath(aRootNode, aNode, PAnsiChar(Result), lStrLen,
   aLevelSlash, aLevelIndent, aRootInclude, aLevelNumerate);
end;

function l3GetFullPathStr(const aRootNode: Il3Node;
                          aNodeHandle: Integer;
                          const aLevelSlash: AnsiString = '\';
                          const aLevelIndent: AnsiString = '';
                          aRootInclude: Boolean = False;
                          aLevelNumerate: Boolean = False): AnsiString;

var
 lNode : Il3Node;
begin
 lNode := l3FindNodeByHandle(aRootNode, aNodeHandle);
 if lNode <> nil then
  Result := l3GetFullPathStr(aRootNode, lNode, aLevelSlash, aLevelIndent,
   aRootInclude, aLevelNumerate)
 else
  Result := '';

end;

function l3GetNodeIndentString(const aRootNode: Il3Node;
                               const aNode: Il3Node;
                               const aLevelIndent: AnsiString = ''): AnsiString;
begin
 Result := l3StringOfString(aLevelIndent, Pred(aNode.GetLevelFor(aRootNode)));
end;

function l3GetLastPartOfName(const aName : AnsiString; const aLevelSlash: AnsiString = '\') : AnsiString;
var
 lPos  : Integer;
 lPos2 : Integer;
begin
 lPos := 0;
 repeat
  lPos2 := PosEx(aLevelSlash, aName, lPos + 1);
  if lPos2 > 0 then lPos := lPos2;
 until lPos2 <= 0;

 if lPos = 0 then
  Result := aName
 else
  Result := Trim(Copy(aName, lPos + 1, MaxInt));
end;

// start class Tl3PrimNode

function Tl3PrimNode.Get_Text: Tl3PCharLenPrim;
begin
 Result := AsPCharLen;
end;

function Tl3PrimNode.Get_Parent: Il3SimpleNode;
  {-}
begin
 Result := Get_ParentNode;
end;

function Tl3PrimNode.Get_Child: Il3SimpleNode;
  {-}
begin
 Result := Get_ChildNode;
end;

function Tl3PrimNode.Get_Next: Il3SimpleNode;
  {-}
begin
 Result := Get_NextNode;
end;

function Tl3PrimNode.Get_Prev: Il3SimpleNode;
  {-}
begin
 Result := Get_PrevNode;
end;

function Tl3PrimNode.MaybeChild: Boolean;
begin
 Result := HasChild;
end;

function Tl3PrimNode.GetLevel: Integer;
  //virtual;
  {-}
var
 l_Node : Il3SimpleNode;
begin
 Result := 0;
 l_Node := Get_Parent;
 while (l_Node <> nil) do
 begin
  Inc(Result);
  l_Node := l_Node.Parent;
 end;//while (l_Node <> nil)
end;

function Tl3PrimNode.GetLevelFor(const aNode: Il3SimpleNode): Integer;
  {-}
begin
 Result := GetLevelForParent(aNode);
end;

function Tl3PrimNode.IsSame(const aNode: Il3SimpleNode): Boolean;
  {* - сравнивает ноды. }
begin
 Result := l3IEQ(Self, aNode);
end;

{ procedure Tl3CustomListContainerNode.Set_AllChildrenCount(Value: Integer);
  begin
   //
  end;
}
(*
 procedure Tl3CustomListContainerNode.ListChanged(Sender : TObject);
  begin
   AllChildrenCount := GetItemsCount;
   Changed;
  end;

 procedure Tl3CustomListContainerNode.ListChanging(Sender : TObject);
  begin
   Changing;
  end;
*)

{Tl3IListContainerNode}

procedure Tl3IListContainerNode.Cleanup;
begin
 Items := nil;
 inherited;
end;

procedure Tl3IListContainerNode.DeleteChildItem(aIndex: Integer; const aDelete: Il3Node);
begin
 Items.Delete(aIndex);
  //Inherited DeleteChildItem(aIndex,anOpProc, aDelete);  посылает Notify об удалении, который итак приходит от листа
end;

function Tl3IListContainerNode.GetItemFlag(aIndex: Integer): Integer;
begin
 Result := 0; //PAnsiChar(Items.Strings[aIndex]);
end;

function Tl3IListContainerNode.GetItemParam(aIndex: Integer): Integer;
begin
 Result := Integer(Items.Handle[aIndex]);
end;

function Tl3IListContainerNode.GetItems: Il3HandledStringList;
begin
 Result := fItems;
end;

function Tl3IListContainerNode.GetItemsCount: Integer;
begin
 if fItems <> nil then
  Result := fItems.Count
 else Result := 0;
end;

function Tl3IListContainerNode.GetStrings(aIndex: Integer): Tl3WString;
begin
 Result := Items[aIndex];
end;

procedure Tl3IListContainerNode.ListChanged(Sender: TObject);
begin
 Changed;
end;

procedure Tl3IListContainerNode.ListChanging(Sender: TObject);
begin
 Changing;
end;

function Tl3IListContainerNode.MakeChildNode: Tl3ListItemNode;
begin
 Result := Tl3ListItemNode.Create;
end;

procedure Tl3IListContainerNode.MoveChildItemPrim(aCurIndex, aNewIndex : Integer);
begin
 //Items.Move(aCurIndex, aNewIndex);
end;

procedure Tl3IListContainerNode.ReleaseChilds;
begin
 Changing;
 try
  Notify(ntChildClear, Self);
  Items := nil;
 finally
  Changed;
 end;
end;

procedure Tl3IListContainerNode.SetItemFlag(aIndex: Integer; Value: Integer);
begin
 {Items.Strings[aIndex] := GetStrPas(Value);}
end;

procedure Tl3IListContainerNode.SetItemParam(aIndex: Integer; Value: Integer);
begin
 Items.Handle[aIndex] := Value;
end;

procedure Tl3IListContainerNode.SetItems(Value: Il3HandledStringList);
begin
 if fItems = Value then
  Exit;
 Changing;
 try
  if fItems <> nil then
  begin
   Notify(ntChildClear, Self);
   with (fItems as Il3ChangeNotifier) do
   begin
    Unsubscribe(Il3ItemNotifyRecipient(Self));
    Unsubscribe(Il3ChangeRecipient(Self));
   end;
  end;

  fItems := Value;

  if fItems <> nil then
  begin
   with (fItems as Il3ChangeNotifier) do
   begin
    Subscribe(Il3ItemNotifyRecipient(Self));
    Subscribe(Il3ChangeRecipient(Self));
   end;
   IncAllChildrenCount(fItems.Count - fChildCount);
   Notify(ntChildInsert, Self);
  end;
 finally
  Changed;
 end;
end;

procedure Tl3IListContainerNode.SetStrings(aIndex: Integer; const Value: Tl3WString);
begin
 Items[aIndex] := Tl3PCharLen(Value);
end;

procedure Tl3PrimNode.ExpandCollapseAll(anExpand: Boolean);
begin
end;

function Tl3PrimNode.CanExpandCollapseAll: Boolean;
begin
 Result := False;
end;

procedure Tl3PrimNode.Delete;
begin
 // Changing/Changed in Remove
 //Notify(ntDelete, Self);
 Flags := Flags or nfWasDisappear;
 Remove;
 //Free;
end;

function Tl3PrimNode.CanAcceptData(const aData: Tl3TreeData): Boolean;
begin
 Result := False;
end;

function Tl3PrimNode.CanMove: Boolean;
  {* определяет возможность перемещения узла }
begin
 Result := False;
end;

function Tl3PrimNode.DropData(const aData: Tl3TreeData): Boolean;
begin
 Result := False;
end;

function Tl3PrimNode.Get_ThisChildrenCount: Integer;
begin
 Result := GetThisChildrenCount;
end;

function Tl3PrimNode.IsFirst: Boolean;
begin
 Result := IsFirstNode;
end;

function Tl3PrimNode.IsLast: Boolean;
begin
 Result := IsLastNode;
end;

function Tl3PrimNode.HasChild: Boolean;
begin
 Result := HasChildNode;
end;

procedure Tl3PrimNode.Remove;
begin
 DoRemove;
end;

end.

