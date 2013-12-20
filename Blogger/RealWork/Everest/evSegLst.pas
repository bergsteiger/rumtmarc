unit evSegLst;
{* Объекты для работы со слоями сегментов. }

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evSegLst - описание списка отрезков}
{ Начат: 13.03.1997 16:39 }
{ $Id: evSegLst.pas,v 1.130 2013/04/24 09:35:36 lulin Exp $ }

// $Log: evSegLst.pas,v $
// Revision 1.130  2013/04/24 09:35:36  lulin
// - портируем.
//
// Revision 1.129  2012/08/15 12:47:17  narry
// Разбивка и формулы (382408375)
//
// Revision 1.128  2012/08/08 13:16:09  dinishev
// {Requestlink:380623516}
//
// Revision 1.127  2012/08/08 11:04:56  dinishev
// {Requestlink:380623516}
//
// Revision 1.126  2012/08/08 08:11:28  dinishev
// {Requestlink:380623516}
//
// Revision 1.125  2012/07/09 12:34:52  dinishev
// {Requestlink:375849907}
//
// Revision 1.124  2012/07/09 12:17:07  dinishev
// Cleanup
//
// Revision 1.123  2012/04/20 14:56:33  lulin
// {RequestLink:283610570}
//
// Revision 1.122  2011/02/28 18:12:18  lulin
// {RequestLink:254944075}.
// - сделан унифицированный разбор макросов.
//
// Revision 1.121  2010/05/04 15:28:02  lulin
// {RequestLink:208701762}.
// - bug fix: продолжение ссылки не накладывалось на уже существующий сегмент.
//
// Revision 1.120  2010/04/20 12:48:01  lulin
// {RequestLink:180060974}.
// - bug fix: в "Немезисе" NSRC писался не так как в Архивариусе.
//
// Revision 1.119  2010/04/16 13:02:04  lulin
// {RequestLink:204112481}.
// - теряли сегменты при объединении абзацев.
//
// Revision 1.118  2010/04/12 14:53:46  lulin
// {RequestLink:203129570}.
// - убираем ненужный тип подитеративной функции.
//
// Revision 1.117  2010/03/26 14:28:05  lulin
// {RequestLink:200081692}.
//
// Revision 1.116  2010/03/25 15:12:50  lulin
// {RequestLink:199591524}.
// - не складываем в Undo-буфер ненужную информацию.
//
// Revision 1.115  2009/11/10 10:59:58  dinishev
// компилируем Head
//
// Revision 1.114  2009/07/23 13:42:11  lulin
// - переносим процессор операций туда куда надо.
//
// Revision 1.113  2009/06/25 12:57:30  lulin
// - вычищаем ненужный контекст.
//
// Revision 1.112  2009/06/04 08:30:07  dinishev
// comment changed
//
// Revision 1.111  2009/06/04 08:01:34  dinishev
// Bug fix: формулы в конце текста не выливались.
//
// Revision 1.110  2009/03/31 12:04:36  lulin
// [$140286997].
//
// Revision 1.109  2009/03/05 19:14:34  lulin
// - убираем ненужное использование интерфейса.
//
// Revision 1.108  2009/03/05 13:09:36  lulin
// - <K>: 137470629. Используем ссылки на типы.
//
// Revision 1.107  2009/03/04 11:00:36  lulin
// - <K>: 112723038. Переносим изменения в HEAD.
//
// Revision 1.106  2008/06/20 14:48:51  lulin
// - используем префиксы элементов.
//
// Revision 1.105  2008/06/20 14:02:45  lulin
// - используем префиксы элементов.
//
// Revision 1.104  2008/06/20 12:48:40  lulin
// - используем префиксы элементов.
//
// Revision 1.103  2008/05/21 17:05:14  lulin
// - <K>: 90441490.
//
// Revision 1.102  2008/05/08 16:10:55  lulin
// - изменения в рамках <K>: 90442475.
//
// Revision 1.101  2008/05/08 07:03:13  lulin
// - <K>: 90441963.
//
// Revision 1.100  2008/05/07 18:29:48  lulin
// - изменения в рамках <K>: 90441963.
//
// Revision 1.99  2008/03/21 14:09:12  lulin
// - cleanup.
//
// Revision 1.98  2008/03/21 12:17:25  lulin
// - <K>: 87590980.
//
// Revision 1.97  2008/03/21 10:38:37  lulin
// - <K>: 87590380.
//
// Revision 1.96  2008/03/20 15:00:47  lulin
// - <K>: 87590377.
//
// Revision 1.95  2008/03/19 14:23:34  lulin
// - cleanup.
//
// Revision 1.94  2008/02/07 19:12:55  lulin
// - избавляемся от излишне универсальных методов базовых списков.
//
// Revision 1.93  2008/02/04 08:51:24  lulin
// - класс _Tl3InterfaceList выделен в отдельный модуль.
//
// Revision 1.92  2008/01/31 18:53:27  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.91  2008/01/24 07:50:58  dinishev
// Bug fix: при двойном применении невидимости в Арчи срабатывал Assert
//
// Revision 1.90  2007/12/29 12:41:50  dinishev
// _CleanUp
//
// Revision 1.89  2007/12/28 10:04:51  dinishev
// Bug fix: не переформатировали параграф после изменения стиля, шрифта и т.п.
//
// Revision 1.88  2007/12/05 12:35:06  lulin
// - вычищен условный код, составлявший разницу ветки и Head'а.
//
// Revision 1.87  2007/12/04 12:47:04  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.78.4.27  2007/09/21 14:02:46  lulin
// - bug fix: параграф при установке параметров шрифта сегменту не помечался как модифицированный (CQ OIT5-26708).
//
// Revision 1.78.4.26  2007/09/14 13:26:06  lulin
// - объединил с веткой B_Tag_Clean.
//
// Revision 1.78.4.25.2.3  2007/09/12 17:51:48  lulin
// - cleanup.
//
// Revision 1.78.4.25.2.2  2007/09/12 16:14:07  lulin
// - убран ненужный параметр по-умолчанию.
//
// Revision 1.78.4.25.2.1  2007/09/12 15:23:01  lulin
// - избавляемся от метода, дублирующего функциональность получения атрибута.
//
// Revision 1.78.4.25  2007/09/11 18:49:58  lulin
// - удален ненужный параметр.
//
// Revision 1.78.4.24  2007/09/07 18:50:49  lulin
// - удалены ненужные значения по-умолчанию.
//
// Revision 1.78.4.23  2007/09/06 09:37:37  lulin
// - переименовано свойство.
//
// Revision 1.78.4.22  2007/09/04 17:06:00  lulin
// - cleanup.
//
// Revision 1.78.4.21  2007/08/21 16:10:27  lulin
// - неверно трактовали отсутствующий конец сегмента при переборе сегментов (CQ OIT5-25634).
//
// Revision 1.78.4.20  2007/08/16 16:11:26  lulin
// - учитываем граничные условия.
//
// Revision 1.78.4.19  2007/08/09 11:19:13  lulin
// - cleanup.
//
// Revision 1.78.4.18  2007/02/13 17:32:55  lulin
// - избавляемся от использования стандартной функции поиска подстроки в строке.
//
// Revision 1.78.4.17  2006/11/03 11:00:06  lulin
// - объединил с веткой 6.4.
//
// Revision 1.78.4.16.6.1  2006/10/26 12:03:56  lulin
// - спрятаны ненужные теги.
//
// Revision 1.78.4.16  2006/09/18 16:44:33  lulin
// - сделан переход по гиперссылкам назад (CQ OIT5-21613).
//
// Revision 1.78.4.15  2006/09/04 08:54:15  lulin
// - bug fix: не рисовались ссылки у которых конец был не указан.
//
// Revision 1.78.4.14  2006/08/02 10:51:53  lulin
// - объединил с веткой в которой боролся со скроллингом.
//
// Revision 1.78.4.13.2.1  2006/07/28 14:11:13  lulin
// - убрана функция переформатирования параграфа.
//
// Revision 1.78.4.13  2006/06/26 17:19:22  lulin
// - cleanup.
//
// Revision 1.78.4.12  2006/06/26 15:25:02  lulin
// - убраны параметры по-умолчанию.
//
// Revision 1.78.4.11  2006/06/26 15:05:04  lulin
// - cleanup.
//
// Revision 1.78.4.10  2006/06/26 13:58:45  lulin
// - cleanup.
//
// Revision 1.78.4.9  2006/05/18 13:26:58  lulin
// - cleanup.
//
// Revision 1.78.4.8  2006/04/17 18:15:52  lulin
// - bug fix: не учитывались прозрачные параметры (CQ OIT5-20496).
//
// Revision 1.78.4.7  2006/01/16 14:28:17  lulin
// - cleanup.
//
// Revision 1.78.4.6  2006/01/16 10:46:48  lulin
// - не используем напрямую, тег отвечающий за признак сформатированности параграфа.
//
// Revision 1.78.4.5  2005/11/09 15:28:24  lulin
// - базовые интерфейсы перенесены в правильный модуль.
//
// Revision 1.78.4.4  2005/10/18 10:32:48  lulin
// - реализация базовой Undo-записи, изменения свойств тегов, перенесена в правильное место.
//
// Revision 1.78.4.3  2005/10/18 09:29:29  lulin
// - cleanup.
//
// Revision 1.78.4.2  2005/05/18 15:53:54  lulin
// - объединил с HEAD.
//
// Revision 1.78.4.1  2005/05/18 12:42:47  lulin
// - отвел новую ветку.
//
// Revision 1.76.2.3  2005/05/18 12:32:09  lulin
// - очередной раз объединил ветку с HEAD.
//
// Revision 1.76.2.2  2005/04/28 09:18:30  lulin
// - объединил с веткой B_Tag_Box.
//
// Revision 1.76.2.1  2005/04/18 16:43:25  lulin
// - используем _Box, а не Ik2Tag (пока выигрыша в производительности не дало).
//
// Revision 1.77.2.2  2005/04/23 16:07:25  lulin
// - удален временный интерфейс Ik2TagBox.
//
// Revision 1.77.2.1  2005/04/21 14:46:55  lulin
// - избавляемся от обертки над тегами - теперь объекты посредством шаблонов сами реализуют интерфейс Ik2Tag.
//
// Revision 1.77  2005/04/18 17:18:22  lulin
// - используем _Box, а не Ik2Tag (пока выигрыша в производительности не дало).
//
// Revision 1.79  2005/05/18 15:44:32  lulin
// - bug fix: не вставлялись сегменты, состоящие из одной буквы.
//
// Revision 1.78  2005/04/28 15:03:38  lulin
// - переложил ветку B_Tag_Box в HEAD.
//
// Revision 1.77.2.2  2005/04/23 16:07:25  lulin
// - удален временный интерфейс Ik2TagBox.
//
// Revision 1.77.2.1  2005/04/21 14:46:55  lulin
// - избавляемся от обертки над тегами - теперь объекты посредством шаблонов сами реализуют интерфейс Ik2Tag.
//
// Revision 1.77  2005/04/18 17:18:22  lulin
// - используем _Box, а не Ik2Tag (пока выигрыша в производительности не дало).
//
// Revision 1.76  2005/03/28 11:32:08  lulin
// - интерфейсы переехали в "правильный" модуль.
//
// Revision 1.75  2005/03/25 17:09:01  lulin
// - избавляемся от метода Tk2AtomW.sLong.
//
// Revision 1.74  2005/03/24 09:23:06  lulin
// - удалены ненужные утилитные классы и лишние преобразования между Ik2Tag и Tk2AtomR.
//
// Revision 1.73  2005/03/23 14:14:12  lulin
// - убран ненужный утилитный класс.
//
// Revision 1.72  2005/03/23 13:36:29  lulin
// - убран ненужный утилитный класс.
//
// Revision 1.71  2005/03/23 09:51:59  lulin
// - new prop: Ik2Tag.BoolA.
//
// Revision 1.70  2005/03/22 12:42:16  lulin
// - bug fix: установка стиля убивала гиперссылки.
//
// Revision 1.69  2005/03/21 10:04:49  lulin
// - new interface: _Ik2Type.
//
// Revision 1.68  2005/03/21 06:44:53  lulin
// - убраны ненужные методы.
//
// Revision 1.67  2005/03/19 16:39:51  lulin
// - спрятаны ненужные методы.
//
// Revision 1.66  2005/03/17 11:06:26  lulin
// - переходим к Ik2Tag.
//
// Revision 1.65  2005/03/15 15:30:02  lulin
// - cleanup.
//
// Revision 1.64  2005/03/15 10:30:18  lulin
// - от Tk2AtomR переходим к Ik2Tag.
//
// Revision 1.63  2005/03/09 18:40:19  lulin
// - remove method: Tk2AtomR.DeleteChild.
// - new method: Ik2Tag.DeleteChild.
//
// Revision 1.62  2005/03/04 19:43:33  lulin
// - remove method: Tk2AtomR.Assign.
//
// Revision 1.61  2005/03/04 15:49:02  lulin
// - спрятана процедура Tk2Type.New.
//
// Revision 1.60  2005/03/04 13:59:17  lulin
// - remove method: Tk2AtomR._AddChild.
//
// Revision 1.59  2005/02/18 16:04:52  lulin
// - перевел на Ik2Tag.
//
// Revision 1.58  2005/02/03 14:33:43  lulin
// - для Undo-записей используем фабричные методы ToUndo, вместо конструкторов.
//
// Revision 1.57  2004/10/29 09:26:48  lulin
// - добавлены комментарии.
//
// Revision 1.56  2004/10/28 15:53:09  lulin
// - new behavior: по Ctrl-Shift-Space снимаем параметры шрифта и для слоя гиперссылок тоже.
//
// Revision 1.55  2004/10/28 14:10:55  lulin
// - remove unit: evParam.
//
// Revision 1.54  2004/10/28 13:54:26  lulin
// - remove type: TevParam.
//
// Revision 1.53  2004/09/21 12:55:41  lulin
// - Release заменил на Cleanup.
//
// Revision 1.52  2004/09/08 10:10:13  lulin
// - bug fix: не работало Undo на операцию изменения стиля параграфа, содержащего гипертекстовые ссылки.
//
// Revision 1.51  2004/06/29 14:26:41  law
// - избавляемся от метода Tk2AtomR._Set.
//
// Revision 1.50  2004/06/04 15:06:59  law
// - убрал прямое обращение к _Tl3PVList (т.к. для оптимизации предполагается, что в теле документа не всегда он может хранится).
//
// Revision 1.49  2004/06/03 15:59:51  law
// - убрал прямое обращение к _Tl3PVList (т.к. для оптимизации предполагается, что в теле документа не всегда он может хранится).
//
// Revision 1.48  2004/06/02 10:20:33  law
// - удален конструктор Tl3VList.MakeIUnknown - пользуйтесь _Tl3InterfaceList.Make.
//
// Revision 1.47  2004/06/01 09:40:54  law
// - change: _Tl3ObjectRefList теперь не хранит тип элементов.
//
// Revision 1.46  2003/11/28 14:11:07  law
// - new unit: evSegmentsListConst.
//
// Revision 1.45  2002/11/19 16:35:22  law
// - bug fix: не учитывалась прозрачность параметров шрифта при наложении сегментов.
//
// Revision 1.44  2002/11/19 10:09:25  law
// - remove unit: evBseSeg.
// - new unit: evSegment.
//
// Revision 1.43  2002/11/18 10:43:37  law
// - cleanup.
//
// Revision 1.42  2001/09/26 12:03:35  law
// - bug fix: проблема с Undo ссылок. Задача №770. См. _TestSet\Segments\Hyperlinks\3.evd .
//
// Revision 1.41  2001/09/21 09:58:54  law
// - cleanup.
//
// Revision 1.40  2001/06/05 15:13:20  law
// - new method: IevDocumentPart.Merge.
//
// Revision 1.39  2001/03/16 13:10:49  law
// - GetSegments сделан на основе IterateSegments.
//
// Revision 1.38  2001/03/11 14:58:33  law
// - добавлены еще комментарии.
//
// Revision 1.37  2001/03/06 09:42:26  law
// - удалены ненужные параметры.
//
// Revision 1.36  2001/03/05 14:08:28  law
// - поменялся порядок у методов _IterateChildren...
//
// Revision 1.35  2000/12/15 15:10:37  law
// - вставлены директивы Log.
//

{$Include evDefine.inc }

interface

uses
  l3Interfaces,
  l3Types,
  l3Base,

  k2Types,
  k2Tags,
  k2Interfaces,
  k2InterfacesEx,
  k2InternalInterfaces,
  k2Op,

  evInternalInterfaces,
  {$IfDef k2ForEditor}
  evBseOp,
  {$EndIf k2ForEditor}
  nevTools
  ;

function evIsSegmentsLayerEmpty(const aPara     : Ik2Tag;
                                const aLayer    : Ik2Tag;
                                aStart, aFinish : Long): Boolean;

procedure evSegmentsLayer_AddSegment(const aPara     : Ik2Tag;
                                     const aLayer  : Ik2Tag;
                                     const Seg     : Ik2Tag;
                                     const Context : InevOp = nil);
  {* - добавляет отрезок выделения. }
function  evSegmentsLayer_GetSegments(const aPara     : Ik2Tag;
                                      const aLayer    : Ik2Tag;
                                      aStart, aFinish : Long;
                                      DoClone         : Bool = false): Ik2TagList;
  {* - возвращает список сегментов попадающих в отрезок [Start..Finish]. }
procedure evSegmentsLayer_IterateSegments(const aPara     : Ik2Tag;
                                          const aLayer    : Ik2Tag;
                                          aStart, aFinish : Long;
                                          IA              : Ik2Tag_IterateChildrenF_Action;
                                          aBack           : Boolean);
  {* - перебирает сегменты попадающие в отрезок [Start..Finish]. }
procedure evSegmentsLayer_IterateSegmentsF(const aPara     : Ik2Tag;
                                           const aLayer    : Ik2Tag;
                                           aStart, aFinish : Long;
                                           IA              : Ik2Tag_IterateChildrenF_Action;
                                           aBack           : Boolean = false);
  {* - перебирает сегменты попадающие в отрезок [Start..Finish]. }
procedure evSegments_AddSegment(const aPara     : InevObject;
                                const aSegments : Ik2Tag;
                                LayerHandle     : Tl3Handle;
                                const Seg       : Ik2Tag;
                                const Container : InevOp = nil);
  {* - добавляет отрезок выделения. }
procedure evSegments_PaintSegment(const aPara     : InevObject;
                                  const aSegments : Ik2Tag;
                                  const aB        : TevPair;
                                  anAtom          : Long;
                                  const aValue    : Ik2Tag;
                                  const Container : InevOp;
                                  aPaintHyper     : Boolean);
  {* - установить цвет с позиции Start по Finish. }
function  evSegments_GetLayer(const aSegments : Ik2Tag;
                   Handle          : Long): Ik2Tag;
  {-}
procedure evSegments_DeleteSegment(const aPara : InevObject;
                        LayerHandle     : Long;
                        Si              : Long;
                        const Container : InevOp);
  {* - удаляет отрезок выделения. }
function  evSegments_GetSegmentOnPos(const aSegments : Ik2Tag;
                          LayerHandle : Long;
                          aPos        : Long;
                          out i       : Long): Ik2Tag;
  {-}
function  evSegments_CheckSegmentOnPos(const aSegments : Ik2Tag;
                            LayerHandle : Tl3Handle;
                            aPos        : Long;
                            out i       : Long;
                            out theB    : TevPair): Ik2Tag;
  {-}
procedure evSegments_AddSegments(const aPara : InevObject;
                                 const SA    : Ik2Tag;
                                 aPos        : Long;
                                 Delta       : Long;
                                 const anOp  : InevOp;
                                 aTextLen    : Integer = -1);
  {-}
procedure evSegments_ClearSuper(const aPara : InevObject;
                     const anOpPack : InevOp);
  {-}
function EvIsParaFormula(const aPara : Ik2Tag): Boolean;
  {-}

{$IfDef k2ForEditor}
type
  // !!! Нельзя огульно удалять !!!
  // ибо откат не работает - http://mdp.garant.ru/pages/viewpage.action?pageId=200081692
  OevClearSuper = class(Tk2Op)
    private
    // interanal fields
      f_Para : InevTag;
    protected
    // internal methods
      procedure DoIt(const Container: InevOp);
        {-}
      procedure DoUndo(const Container: InevOp);
        override;
        {* - Отменить операцию. }
      procedure DoRedo(const Container: InevOp);
        override;
        {* - Повторить операцию. }
      procedure Cleanup;
        override;
        {-}
      function CanJoinWith(anOperation: Tk2Op): Bool;
        override;
        {-}
      function DoJoin(anOperation: Tk2Op): Tk2Op;
        override;
        {* - Соединяет две операции и возвращает:
          nil  - соединение неудачно
          Self - соединение удачно и все поместилось в старую запись
          New  - распределена новая операция }
    public
    // public methods
      class procedure ToUndo(const anOpPack : InevOp;
                             const aTag     : InevObject);
        {-}
    public
    // public properties
      property Para: InevTag
        read f_Para
        write f_Para;
        {-}
  end;//OevClearSuper

  {-}
function EvIsParaHyperlink(const aPara : Ik2Tag): Boolean;

{$EndIf k2ForEditor}

{$IFDEF Nemesis}
var
 g_Hack112723038 : Integer = 0;
{$EndIF Nemesis}

implementation

uses
  l3Const,
  l3MinMax,

  k2Base,
  k2TagTools,
  k2PropertyOperation,
  k2InterfacedTagList,
  k2Facade,

  evdTypes,
  evdStyles,

  nevBase,

  evSegment,  // - описание базового класса отрезков

  Segment_Const,
  TextSegment_Const,
  Hyperlink_Const
  , ObjectSegment_Const;

function evIsSegmentsLayerEmpty(const aPara     : Ik2Tag;
                                const aLayer    : Ik2Tag;
                                aStart, aFinish : Long): Boolean;
var
 l_List: Ik2TagList;
begin
 l_List := evSegmentsLayer_GetSegments(aPara, aLayer, aStart, aFinish);
 Result := l_List.Empty;
end;

procedure evSegmentsLayer_IterateSegments(const aPara     : Ik2Tag;
                                          const aLayer    : Ik2Tag;
                                          aStart, aFinish : Long;
                                          IA              : Ik2Tag_IterateChildrenF_Action;
                                          aBack           : Boolean);
  {* - Перебирает сегменты попадающие в отрезок [Start..Finish]. }

var
 l_SLen : Integer;  

 function CheckSegment(const Seg: Ik2Tag; Index: Long): Bool;
 var
  l_F : Integer;
 begin//CheckSegment
  Result := True;
  with Seg do
  begin
   l_F := IntA[k2_tiFinish];
   if (l_F = Pred(High(Long))) then
    l_F := l_SLen;
   if (l_F < aStart) then
    Exit;
   with Attr[k2_tiStart] do
    if IsValid then
    begin
     if (AsLong <= aFinish) AND IA(Seg, Index) then
      Exit
     else
      Result := false; //- выход так как сегменты сортированы
    end;//IsValid
  end;//with Seg
 end;//CheckSegment

 function CheckSegmentBack(const aSeg: Ik2Tag; anIndex: Long): Boolean;
 begin//CheckSegmentBack
  Result := True;
  with aSeg do
  begin
   with Attr[k2_tiFinish] do
    if IsValid AND (AsLong < aStart) then
     Exit;
   with Attr[k2_tiStart] do
    if IsValid then
    begin
     if (AsLong < aFinish) then
     begin
      if not IA(aSeg, anIndex) then
       Result := False;
     end;//AsLong < aFinish
    end;//IsValid
  end;//with aSeg
 end;//CheckSegmentBack

begin
 l_SLen := aPara.PCharLenA[k2_tiText].SLen;
 {$IFDEF Nemesis}
 {$IFnDef nsTest}
 if (g_Hack112723038 = 0) then
  aFinish := Min(aFinish, l_SLen);
 // - боремся с http://mdp.garant.ru/pages/viewpage.action?pageId=112723038&focusedCommentId=114065695#comment-114065695
 // V - криво боремся - отъехала выливка формул. :-(
 {$EndIF nsTest}
 {$ENDIF Nemesis}
 if aBack then
  aLayer.IterateChildrenBackF(k2L2TIA(@CheckSegmentBack))
 else
  aLayer.IterateChildrenF(k2L2TIA(@CheckSegment));
end;

procedure evSegmentsLayer_IterateSegmentsF(const aPara     : Ik2Tag;
                                           const aLayer    : Ik2Tag;
                                           aStart, aFinish : Long;
                                           IA              : Ik2Tag_IterateChildrenF_Action;
                                           aBack           : Boolean = false);
  {* - Перебирает сегменты попадающие в отрезок [Start..Finish]. }
begin
 try
  evSegmentsLayer_IterateSegments(aPara, aLayer, aStart, aFinish, IA, aBack);
 finally
  k2FreeTIA(IA);
 end;//try.finally
end;

procedure evSegmentsLayer_PaintSegment(const aPara   : Ik2Tag;
                                       const aLayer  : Ik2Tag;
                                       Start,
                                       Finish        : Long;
                                       anAtom        : Long;
                                       const aValue  : Ik2Tag;
                                       const SegType : Tk2Type;
                                       const Context : InevOp = nil);
  {* - Установить цвет с позиции Start по Finish. }

 function PaintOld(const l_OldSeg: Ik2Tag; Index: Long): Bool;
 var
  l_NewSeg : Ik2Tag; // - новый сегмент
 begin
  Result := true;
  if (l_OldSeg.IntA[k2_tiStart] > Start) then
  begin
   {-красим часть до выделения}
   l_NewSeg := SegType.MakeTag;
   try
    with l_NewSeg do
    begin
     IntA[k2_tiStart] := Start;
     IntA[k2_tiFinish] := Pred(l_OldSeg.IntA[k2_tiStart]);
    end;//with l_NewSeg
    evSegmentSetFontParam(l_NewSeg, anAtom, aValue);
    aLayer.AddChild(l_NewSeg, Context);
   finally
    l_NewSeg := nil;
   end;//try..finally
  end;//l_OldSeg.Start > Start
  if (l_OldSeg.IntA[k2_tiStart] < Start) then
  begin
   // - здесь обрабатываем пересечение
   //   видимо здесь же надо думать и о прозрачности
   //   - нет не надо - это как раз, то что остается от старого сегмента - см.
   //     комментарий ниже.
   l_NewSeg := l_OldSeg.CloneTag;
   try
    l_NewSeg.IntA[k2_tiFinish] := Pred(Start);
    l_OldSeg.IntW[k2_tiStart, Context] := Start;
    aLayer.AddChild(l_NewSeg, Context);
   finally
    l_NewSeg := nil;
   end;//try..finally
  end;//l_OldSeg.IntA[k2_tiStart] < Start
  if (l_OldSeg.IntA[k2_tiFinish] >= Finish) then
  begin
   // - это хвост, остающийся от старого сегмента
   l_NewSeg := l_OldSeg.CloneTag;
   try
    l_NewSeg.IntA[k2_tiStart] := Succ(Finish);
    // - конец выделения со старым цветом и прочими причиндалами. 
    l_OldSeg.IntW[k2_tiFinish, Context] := Finish;
    aLayer.AddChild(l_NewSeg, Context);
   finally
    l_NewSeg := nil;
   end;//try..finally
  end;//l_OldSeg.IntA[k2_tiFinish] >= Finish
  Start := Succ(l_OldSeg.IntA[k2_tiFinish]);  
  // А вот ниже нужно учитывать прозрачность:
{$IFNDEF Nemesis}
  if l_OldSeg.InheritsFrom(SegType.ID) then
   evSegmentSetFontParam(l_OldSeg, anAtom, aValue, Context)
  else
{$ENDIF Nemesis}  
  begin
   l_NewSeg := SegType.MakeTag;
   try                                            
    l_NewSeg.AssignTag(l_OldSeg);
    evSegmentSetFontParam(l_NewSeg, -k2_idSegment, l_OldSeg, Context);
    evSegmentSetFontParam(l_NewSeg, anAtom, aValue, Context);
    aLayer.DeleteChild(l_OldSeg, Context);
    aLayer.AddChild(l_NewSeg, Context);
   finally
    l_NewSeg := nil;
   end;//try..finally
  end;//l_OldSeg.InheritsFrom(SegType)
 end;//PaintOld

var
 L   : Ik2TagList;
 ATS : Ik2Tag;
 Sg  : Bool;
begin{PaintSegment}
 Inc(Start);
 Inc(Finish);
 L := evSegmentsLayer_GetSegments(aPara, aLayer, Start, Finish, false);
 try
  L.ForEachF(k2L2TIA(@PaintOld));
 finally
  L := nil;
 end;//try..finally
 Sg := (anAtom = -k2_idSegment);
 if (Start <= Finish + Ord(Sg)) then
 begin
  ATS := k2NullTag;
  try
   if Sg then
   begin
    ATS := aValue;
    with ATS do
    begin
     IntA[k2_tiStart] := Start;
     IntA[k2_tiFinish] := Finish;
    end;//with ATS
   end//Sg
   else
   begin
    ATS := SegType.MakeTag;
    with ATS do
    begin
     IntA[k2_tiStart] := Start;
     IntA[k2_tiFinish] := Finish;
    end;//with ATS
    evSegmentSetFontParam(ATS, anAtom, aValue);
   end;//Sg
   aLayer.AddChild(ATS, Context);
  finally
   ATS := nil;
  end;//try..finally
 end;//Start < Finish
end;//PaintSegment

procedure evSegmentsLayer_AddSegment(const aPara   : Ik2Tag;
                                     const aLayer  : Ik2Tag;
                                     const Seg     : Ik2Tag;
                                     const Context : InevOp = nil);
  {* - Добавляет отрезок выделения. }
begin
 evSegmentsLayer_PaintSegment(aPara,
                              aLayer,
                              Pred(Seg.IntA[k2_tiStart]),
                              Pred(Seg.IntA[k2_tiFinish]),
                              -k2_idSegment, Seg, k2.TypeTable[Seg.TagType.ID],
                              Context);
end;

function evSegmentsLayer_GetSegments(const aPara     : Ik2Tag;
                                     const aLayer    : Ik2Tag;
                                     aStart, aFinish : Long;
                                     DoClone         : Bool = false): Ik2TagList;
  {* - Возвращает список сегментов попадающих в отрезок [Start..Finish]. }

var
 l_List : Tk2InterfacedTagList;

 function _AddSegment(const aSegment: Ik2Tag; Index: Long): Boolean;
 begin
  Result := true;
  if DoClone then
   l_List.Add(aSegment.CloneTag)
  else
   l_List.Add(aSegment);
 end;//_AddSegment

begin
 l_List := Tk2InterfacedTagList.Create;
 try
  Result := l_List;
  evSegmentsLayer_IterateSegmentsF(aPara, aLayer, aStart, aFinish, k2L2TIA(@_AddSegment));
 finally
  l3Free(l_List);
 end;//try..finally
end;

procedure evSegments_AddSegment(const aPara     : InevObject;
                                const aSegments : Ik2Tag;
                                LayerHandle     : Tl3Handle;
                                const Seg       : Ik2Tag;
                                const Container : InevOp = nil);
  {* - Добавляет отрезок выделения. }
begin
 evSegmentsLayer_AddSegment(aPara, aSegments.cAtomEx([k2_tiChildren, k2_tiHandle, LayerHandle], Container),
                            Seg,
                            Container);
 evSegments_ClearSuper(aPara, Container);
end;

procedure evSegments_PaintSegment(const aPara     : InevObject;
                                  const aSegments : Ik2Tag;
                                  const aB        : TevPair;
                                  anAtom          : Long;
                                  const aValue    : Ik2Tag;
                                  const Container : InevOp;
                                  aPaintHyper     : Boolean);
  {* - Установить цвет с позиции Start по Finish. }

 procedure PaintLayer(aLayerHandle: Long);
 var
  l_Count : Long;
  l_Layer : Ik2Tag;
 begin//PaintLayer
  with aSegments do
  begin
   l_Count := ChildrenCount;
   l_Layer := cAtomEx([k2_tiChildren, k2_tiHandle, aLayerHandle], Container);
(*   if (l_Count = 1) AND (ChildrenCount > 1) then
    // - появился новый слой
    cAtomEx([k2_tiChildren, k2_tiHandle, ev_slSuperposition], Container);
    // - надо создать суперпозицию*)
   // !!! Не надо создавать !!! Ибо создаётся в TnevTextParaRenderInfo.pm_GetViewSegmentsPlace
   // http://mdp.garant.ru/pages/viewpage.action?pageId=200081692  
  end;//with aSegments
  evSegmentsLayer_PaintSegment(aPara,
                               l_Layer,
                               aB.rStart, Pred(aB.rFinish),
                               anAtom, aValue,
                               k2_typTextSegment, Container);
 end;//PaintLayer

var
 l_Para: InevPara; 
begin//PaintSegment
 if (anAtom = k2_tiStyle) AND (aValue.AsLong = ev_saMistake) then
  PaintLayer(ev_slMistakes)
 else
  PaintLayer(ev_slView);
 if aPaintHyper then
  PaintLayer(ev_slHyperlinks);
 {$IFDEF Nemesis}
  aPara.MarkModified;
 {$ELSE}
  if (Container <> nil) and not Container.InUndo then
   Container.MarkModified(aPara);
 {$ENDIF Nemesis}
 evSegments_ClearSuper(aPara, Container);
end;//PaintSegment

{$IfDef k2ForEditor}
class procedure OevClearSuper.ToUndo(const anOpPack : InevOp;
                                     const aTag     : InevObject);
  {-}
var
 l_Op : OevClearSuper;  
begin
 if (anOpPack <> nil) then
 begin
  l_Op := Create;
  try
   l_Op.Para := aTag.Box;
   l_Op.Put(anOpPack);
  finally
   l3Free(l_Op);
  end;//try..finally
 end;//anOpPack <> nil
end;

procedure OevClearSuper.DoIt(const Container: InevOp);
  {-}
var
 l_O : InevObject;
begin
 if not Para.QT(InevObject, l_O) then
  Assert(false);
 evSegments_ClearSuper(l_O, Container);
end;

procedure OevClearSuper.DoUndo(const Container: InevOp);
  {override;}
  {* - Отменить операцию. }
begin
 DoIt(Container);
end;

procedure OevClearSuper.DoRedo(const Container: InevOp);
  {override;}
  {* - Повторить операцию. }
begin
 DoIt(Container);
end;

procedure OevClearSuper.Cleanup;
  {override;}
  {-}
begin
 Para := nil;
 inherited;
end;

function OevClearSuper.CanJoinWith(anOperation: Tk2Op): Bool;
  {override;}
  {-}
begin
 Result := True;
end;

function OevClearSuper.DoJoin(anOperation: Tk2Op): Tk2Op;
  {override;}
  {* - Соединяет две операции и возвращает:
       nil  - соединение неудачно
      Self - соединение удачно и все поместилось в старую запись
      New  - распределена новая операция }
begin
 Result := nil;
end;
{$EndIf k2ForEditor}

procedure evSegments_ClearSuper(const aPara : InevObject;
                                 const anOpPack : InevOp);
  {-}
var
 l_Layer : Ik2Tag;
begin
 aPara.Invalidate([nev_spSegments]);
 {$IfDef k2ForEditor}
 if not ((anOpPack = nil) OR not anOpPack.SaveUndo) then
  OevClearSuper.ToUndo(anOpPack, aPara);
 {$EndIf k2ForEditor}
 with aPara.Attr[k2_tiSegments] do
  if IsValid then
   while (ChildrenCount > 0) do
   begin
    l_Layer := Child[0];
    if (l_Layer.IntA[k2_tiHandle] > ev_slSuperposition) then
     Break
    else
     DeleteChild(0);
   end;//while (ChildrenCount > 0
end;

function evSegments_GetLayer(const aSegments : Ik2Tag;
                              Handle: Long): Ik2Tag;
  {-}
begin
 Result := aSegments.rAtomEx([k2_tiChildren, k2_tiHandle, Handle]);
end;

procedure evSegments_DeleteSegment(const aPara : InevObject;
                                    LayerHandle     : Long;
                                    Si              : Long;
                                    const Container : InevOp);
  {* - Удаляет отрезок выделения. }
begin
 with aPara.rAtomEx([k2_tiSegments, k2_tiChildren, k2_tiHandle, LayerHandle]) do
  if IsValid then
  begin
   DeleteChild(Si, Container);
   evSegments_ClearSuper(aPara, Container);
  end;//IsValid
end;

function evSegments_GetSegmentOnPos(const aSegments : Ik2Tag;
                                     LayerHandle : Long;
                                     aPos        : Long;
                                     out i       : Long): Ik2Tag;
  {-}
begin
 with evSegments_GetLayer(aSegments, LayerHandle) do
  if IsValid then
   Result := rAtomEx([k2_tiChildren, l3_siNative, Succ(aPos)], @i)
  else
  begin
   Result := k2NullTag;
   i := 0;
  end;//IsValid
end;

function evSegments_CheckSegmentOnPos(const aSegments : Ik2Tag;
                                       LayerHandle : Tl3Handle;
                                       aPos        : Long;
                                       out i       : Long;
                                       out theB    : TevPair): Ik2Tag;
  {-}
begin
 with evSegments_GetLayer(aSegments, LayerHandle) do
  if IsValid then
  begin
   Result := rAtomEx([k2_tiChildren, l3_siNative, Succ(aPos)], @i);
   if Result.IsValid then
   begin
    theB.rStart := Pred(Result.IntA[k2_tiStart]);
    theB.rFinish := Result.IntA[k2_tiFinish];
   end//Result.IsValid
   else
   begin
    if (i > 0) then
     theB.rStart := Child[Pred(i)].IntA[k2_tiFinish]
    else
     theB.rStart := 0;
    if (i < ChildrenCount) then
     theB.rFinish := Pred(Child[i].IntA[k2_tiStart])
    else
     theB.rFinish := l3NilLong;
   end//Result.IsValid
  end//IsValid
  else
  begin
   Result := k2NullTag;
   i := 0;
   theB.rStart := 0;
   theB.rFinish := l3NilLong;
  end;//IsValid
end;

procedure evSegments_AddSegments(const aPara : InevObject;
                                 const SA    : Ik2Tag;
                                 aPos        : Long;
                                 Delta       : Long;
                                 const anOp  : InevOp;
                                 aTextLen    : Integer = -1);
  {-}
var
 l_ViewLayer : Ik2Tag;
 l_Segments : Ik2Tag;

 function _AddSegments(const aForeignLayer: Ik2Tag; Index: Long): Bool; 
 var
  l_OwnLayer : Ik2Tag;

  function CloneSegment(const aSegment: Ik2Tag; Index: Long): Bool; 
  var
   l_NewSegment  : Ik2Tag;
   l_IsHyperlink : Bool;
   l_Start       : Long;
   l_Finish      : Long;
  begin
   Result := True;
   l_IsHyperlink := aSegment.InheritsFrom(k2_idHyperlink);
   if l_IsHyperlink AND
      (aSegment.IntA[k2_tiStart] < aPos) then
   begin
    // - здесь контролируем, чтобы ссылки не дублировались.
    l_NewSegment := k2_typTextSegment.MakeTag;
    try
     with l_NewSegment do
     begin
      IntA[k2_tiStyle] := ev_saHyperlinkCont;
      IntA[k2_tiStart] := aPos + Delta;
      l_Finish := aSegment.IntA[k2_tiFinish];
      if (l_Finish < Pred(High(Long))) then
       Inc(l_Finish, Delta);
      IntA[k2_tiFinish] := l_Finish;
     end;//with l_NewSegment
     if not l_ViewLayer.IsValid then
      l_ViewLayer := l_Segments.cAtomEx([k2_tiChildren, k2_tiHandle, ev_slView], nil);
     evSegmentsLayer_AddSegment(aPara, l_ViewLayer, l_NewSegment);
    finally
     l_NewSegment := nil;
    end;//try..finally
   end//l_IsHyperlink
   else
   begin
    with aSegment do
    begin
     l_Start := Max(IntA[k2_tiStart], aPos) + Delta;
     l_Finish := IntA[k2_tiFinish];
     if (l_Finish < Pred(High(Long))) then
      Inc(l_Finish, Delta);
     if not l_IsHyperlink then
     begin
      if (IntA[k2_tiStyle] = ev_saHyperlinkCont) then
      begin
       // - здесь пытаемся соединить продолжение ссылки с предыдущей ссылкой.
       with l_Segments.rAtomEx([k2_tiChildren, k2_tiHandle, ev_slHyperlinks,
                               k2_tiChildren, l3_siNative, Pred(l_Start)]) do
       begin
        if IsValid AND
           (IntA[k2_tiFinish] = Pred(l_Start)) then
        begin
         IntA[k2_tiFinish] := l_Finish;
         Exit;
        end;//IsValid..
       end;//with Self.rAtomEx(..
      end;//..ev_saHyperlinkCont..
     end;//not l_Hyperlink
    end;//with aSegment
    // V - http://mdp.garant.ru/pages/viewpage.action?pageId=375849907
    if (aTextLen > -1) and (l_Start > aTextLen) then Exit;
    l_NewSegment := aSegment.CloneTag;
    try
     with l_NewSegment do
     begin
      IntA[k2_tiStart] := l_Start;
      IntA[k2_tiFinish] := l_Finish;
     end;//with l_NewSegment
     l_OwnLayer.AddChild(l_NewSegment);
    finally
     l_NewSegment := nil;
    end;//try..finally
   end;//..k2_idHyperlink..
  end;

 var
  i        : Long;
  l_Handle : Long;
 begin
  Result := True;
  with aForeignLayer do
  begin
   l_Handle := IntA[k2_tiHandle];
   if (l_Handle > ev_slSuperposition) then
   begin
    l_OwnLayer := l_Segments.cAtomEx([k2_tiChildren, k2_tiHandle, l_Handle], nil);
    if (l_Handle = ev_slView) then
     l_ViewLayer := l_OwnLayer;
    rAtomEx([k2_tiChildren, l3_siNative, aPos], @i);
    IterateChildrenF(k2L2TIA(@CloneSegment), i);
   end;//l_Handle > ev_slSuperposition
  end;//with aForeignLayer
 end;

begin
 Inc(aPos);
 l_Segments := aPara.cAtom(k2_tiSegments, anOp);
 l_ViewLayer := k2NullTag;
 SA.IterateChildrenF(k2L2TIA(@_AddSegments));
 evSegments_ClearSuper(aPara, anOp);
end;

function EvIsParaHyperlink(const aPara : Ik2Tag): Boolean;
var
 l_Pos      : Integer;
 l_Len      : Integer;
 l_Seg      : Ik2Tag;
 l_Segments : Ik2Tag;
begin
 Result := False;
 l_Segments := aPara.Attr[k2_tiSegments];
 if l_Segments.IsValid then
 begin
  l_Len := aPara.PCharLenA[k2_tiText].SLen;
  l_Seg := evSegments_GetSegmentOnPos(l_Segments, ev_slHyperlinks, 1, l_Pos);
  Result := EvIsHyperlinkPara(l_Seg, l_Len);
  if not Result then
  begin
   l_Seg := evSegments_GetSegmentOnPos(l_Segments, ev_slView, 1, l_Pos);
   Result := EvIsHyperlinkPara(l_Seg, l_Len);
  end;{Seg = nil}
 end; // if l_Segments.IsValid then 
end;

function EvIsParaFormula(const aPara : Ik2Tag): Boolean;
var
 l_Pos      : Integer;
 l_Len      : Integer;
 l_Seg      : Ik2Tag;
 l_Segments : Ik2Tag;
begin
 Result := False;
 l_Segments := aPara.Attr[k2_tiSegments];
 if l_Segments.IsValid then
 begin
  l_Len := aPara.PCharLenA[k2_tiText].SLen;
  l_Seg := evSegments_GetSegmentOnPos(l_Segments, ev_slObjects, 0, l_Pos);
  Result := l_Seg.IsValid and l_Seg.InheritsFrom(k2_idObjectSegment);
 end; // if l_Segments.IsValid then
end;

end.


