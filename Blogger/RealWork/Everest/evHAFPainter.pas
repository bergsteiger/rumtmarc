unit evHAFPainter;

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evHAFPainter -  }
{ Начат: 14.09.2001 17:33 }
{ $Id: evHAFPainter.pas,v 1.5 2013/05/31 04:58:21 lulin Exp $ }

// $Log: evHAFPainter.pas,v $
// Revision 1.5  2013/05/31 04:58:21  lulin
// - портируем под XE4.
//
// Revision 1.4  2010/12/29 16:43:38  dinishev
// [$235874801]
//
// Revision 1.3  2010/10/13 14:08:06  lulin
// {RequestLink:210437077}.
//
// Revision 1.2  2010/07/01 08:33:56  dinishev
// [$220595811]
//
// Revision 1.1  2010/06/23 18:05:49  lulin
// {RequestLink:219124975}.
//
// Revision 1.92  2010/04/19 12:21:53  oman
// - fix: {RequestLink:203751508}
//
// Revision 1.91  2010/04/14 14:28:43  dinishev
// [$201491447]
//
// Revision 1.90  2010/04/06 12:06:46  dinishev
// [$198673042]
//
// Revision 1.89  2009/10/31 13:27:16  dinishev
// [$159361037]
//
// Revision 1.88  2009/08/11 07:39:08  dinishev
// [$156371297]
//
// Revision 1.87  2009/08/04 11:50:25  dinishev
// [$156371297]. Вычищаем.
//
// Revision 1.86  2009/07/11 10:43:39  lulin
// - не вычисляем курсор для низа отрисовки, там где он не нужен.
//
// Revision 1.85  2009/07/01 10:55:03  lulin
// - избавляемся от лишнего дёранья счётчиков ссылок.
//
// Revision 1.84  2009/06/25 12:57:35  lulin
// - вычищаем ненужный контекст.
//
// Revision 1.83  2009/04/14 18:11:57  lulin
// [$143396720]. Подготовительная работа.
//
// Revision 1.82  2009/04/10 06:12:30  lulin
// - чистка кода.
//
// Revision 1.81  2009/04/08 12:56:39  lulin
// [$142610892]. Вычищаем ненужные контексты.
//
// Revision 1.80  2009/04/01 11:45:34  lulin
// [$141262980]. Вкладываем интерфейсы друг в друга. Утилиты переносим в отдельный модуль.
//
// Revision 1.79  2009/03/31 12:04:39  lulin
// [$140286997].
//
// Revision 1.78  2009/03/12 14:23:47  lulin
// - <K>: 139430195. Bug fix: не рисовали нижнюю палку колонтитула.
//
// Revision 1.77  2009/03/05 13:09:40  lulin
// - <K>: 137470629. Используем ссылки на типы.
//
// Revision 1.76  2009/03/04 13:32:54  lulin
// - <K>: 137470629. Генерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.75  2008/12/29 12:22:48  oman
// - fix: Не подаем HAFPainter снаружи (К-122675365)
//
// Revision 1.74  2008/12/26 13:59:14  oman
// - fix: подключаем MacroReplacer (К-122675365)
//
// Revision 1.73  2008/12/26 09:21:35  oman
// - fix: меняем сигнатуру конструктора (К-122675365)
//
// Revision 1.72  2008/12/25 15:47:41  oman
// - fix: Начинаем пользовать MacroReplacer (К-122675365)
//
// Revision 1.71  2008/12/25 14:33:41  oman
// - fix: Заготовки интерфейсов (К-122675365)
//
// Revision 1.70  2008/12/25 13:19:35  oman
// - fix: Готовимся к смене предка - nsConsultationHAFPainter (К-122675365)
//
// Revision 1.69  2008/12/25 11:18:54  oman
// - fix: Убираем лишние хвосты - TextSource (К-122675365)
//
// Revision 1.68  2008/09/26 09:19:06  dinishev
// <K>: 90444908
//
// Revision 1.67  2008/06/20 14:48:58  lulin
// - используем префиксы элементов.
//
// Revision 1.66  2008/06/20 14:02:49  lulin
// - используем префиксы элементов.
//
// Revision 1.65  2008/05/30 13:24:17  lulin
// http://mdp.garant.ru/pages/viewpage.action?pageId=13239272&focusedCommentId=93258428#comment-93258428
//
// Revision 1.64  2008/05/16 15:20:40  lulin
// - переносим на модель.
//
// Revision 1.63  2008/05/06 16:27:06  lulin
// - bug fix: не учитывали правое поле.
//
// Revision 1.62  2008/05/06 16:18:41  lulin
// - изменения в рамках <K>: 90441024.
//
// Revision 1.61  2008/05/04 14:42:02  lulin
// - вычищен ненужный модуль.
//
// Revision 1.60  2008/05/04 14:03:11  lulin
// - <K>: 89850975.
//
// Revision 1.59  2008/05/04 12:58:32  lulin
// - <K>: 89850849.
//
// Revision 1.58  2008/05/04 11:08:31  lulin
// - прячем хакерский код.
//
// Revision 1.57  2008/04/30 13:00:34  lulin
// - <CQ>: 28980.
//
// Revision 1.56  2008/04/25 13:56:27  lulin
// - <K>: 89107692.
//
// Revision 1.55  2008/04/11 14:26:19  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.54  2008/04/07 16:52:36  lulin
// - подготавливаем инфраструктуру для <K>: 89096920.
//
// Revision 1.53  2008/04/07 15:42:32  lulin
// - группируем параметры операции рисования параграфа, в рамках <K>: 89096920.
//
// Revision 1.52  2008/04/07 14:59:09  lulin
// - группируем параметры операции рисования параграфа.
//
// Revision 1.51  2008/04/02 14:22:05  lulin
// - cleanup.
//
// Revision 1.50  2008/01/28 13:23:27  lulin
// - поборолись с утечками памяти.
// - вычищен ненужный интерфейс.
//
// Revision 1.49  2007/12/29 11:50:22  oman
// - fix: Правильная отрисовка полей (cq23109, c79303231)
//
// Revision 1.48  2007/12/24 22:38:46  lulin
// - удален ненужный модуль.
//
// Revision 1.47  2007/12/04 12:47:41  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.44.4.27  2007/11/28 13:22:44  dinishev
// Совместимость с Арчи
//
// Revision 1.44.4.26  2007/09/14 13:26:11  lulin
// - объединил с веткой B_Tag_Clean.
//
// Revision 1.44.4.25.2.1  2007/09/12 15:23:05  lulin
// - избавляемся от метода, дублирующего функциональность получения атрибута.
//
// Revision 1.44.4.25  2007/09/04 17:06:04  lulin
// - cleanup.
//
// Revision 1.44.4.24  2007/07/18 15:07:21  lulin
// - выпрямляем зависимости. Схема документа, теперь не зависит от Эвереста.
//
// Revision 1.44.4.23  2007/06/25 13:29:10  lulin
// - cleanup.
//
// Revision 1.44.4.22  2007/04/20 11:07:35  lulin
// - убираем ненужную функциональность.
//
// Revision 1.44.4.21  2007/03/16 14:47:20  lulin
// - cleanup.
//
// Revision 1.44.4.20  2007/02/09 15:11:36  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.44.4.19  2006/12/12 09:47:13  lulin
// - cleanup.
//
// Revision 1.44.4.18  2006/11/03 11:00:13  lulin
// - объединил с веткой 6.4.
//
// Revision 1.44.4.17.4.1  2006/10/16 11:04:22  lulin
// - bug fix: не всегда печатались линии нижних колонтитулов.
//
// Revision 1.44.4.17  2006/10/02 11:38:37  lulin
// - объединяем с веткой в которой размеры параграфов подсчитываются методами канвы.
//
// Revision 1.44.4.16.2.2  2006/09/22 15:09:21  lulin
// - убран выходной параметр - размеры отрисованного элемента.
//
// Revision 1.44.4.16.2.1  2006/09/22 08:49:15  lulin
// - начинаем переводить отрисовку на использование карты форматирования.
//
// Revision 1.44.4.16  2006/08/02 12:50:01  lulin
// - убрано лишнее свойство.
//
// Revision 1.44.4.15  2006/08/02 12:30:18  lulin
// - избавляемся от рекурсии ввсерх, при расчете максимальной ширины форматирования.
//
// Revision 1.44.4.14  2006/08/02 10:51:58  lulin
// - объединил с веткой в которой боролся со скроллингом.
//
// Revision 1.44.4.13.2.4  2006/08/01 15:29:45  lulin
// - имя свойства убрано из комментария.
//
// Revision 1.44.4.13.2.3  2006/08/01 12:35:18  lulin
// - убран ненужный метод.
//
// Revision 1.44.4.13.2.2  2006/08/01 12:07:28  lulin
// - восстановлена печать/предварительный просмотр.
//
// Revision 1.44.4.13.2.1  2006/07/26 12:15:41  lulin
// - из функции отрисовки теперь возвращается карта форматирования параграфа.
//
// Revision 1.44.4.13  2006/07/13 17:50:06  lulin
// - bug fix: неправильно отображались ячейки таблицы с нестандартным выравниванием.
//
// Revision 1.44.4.12  2006/02/21 09:13:19  lulin
// - new behavior: рассчитываем новый Top при смене положения курсора, без перепривязывания параграфа к новому View.
//
// Revision 1.44.4.11  2006/01/24 12:54:10  lulin
// - cleanup.
//
// Revision 1.44.4.10  2006/01/16 14:28:20  lulin
// - cleanup.
//
// Revision 1.44.4.9  2005/12/07 15:34:06  lulin
// - cleanup.
//
// Revision 1.44.4.8  2005/12/07 14:59:09  lulin
// - cleanup.
//
// Revision 1.44.4.7  2005/12/07 13:22:44  lulin
// - вычищен ненужный параметр.
//
// Revision 1.44.4.6  2005/12/02 13:31:18  lulin
// - установкой/сбрасыванием родительского тега управляем в базовых методах.
//
// Revision 1.44.4.5  2005/09/23 16:04:01  lulin
// - выделен модуль с общими интерфейсами.
//
// Revision 1.44.4.4  2005/08/30 12:31:32  lulin
// - cleanup: удалены ненужные интерфейсы, связанные с сохранением форматирования.
//
// Revision 1.44.4.3  2005/07/18 09:20:50  lulin
// - убран устаревший интерфейс.
//
// Revision 1.44.4.2  2005/06/01 16:22:30  lulin
// - remove unit: evIntf.
//
// Revision 1.44.4.1  2005/05/18 12:42:52  lulin
// - отвел новую ветку.
//
// Revision 1.41.2.10  2005/04/28 09:18:35  lulin
// - объединил с веткой B_Tag_Box.
//
// Revision 1.41.2.9  2005/04/18 16:43:28  lulin
// - используем _Box, а не Ik2Tag (пока выигрыша в производительности не дало).
//
// Revision 1.41.2.8  2005/04/12 14:14:36  lulin
// - new interface: InevAnchorEx.
//
// Revision 1.41.2.7  2005/04/11 16:06:18  lulin
// - new type: TnevFrame.
//
// Revision 1.41.2.6  2005/04/11 14:51:19  lulin
// - удален устаревший интерфейс.
//
// Revision 1.41.2.5  2005/04/11 13:00:19  lulin
// - используем другой тип для определения начала координат.
//
// Revision 1.41.2.4  2005/04/09 11:57:55  lulin
// - new property - максимальная ширина вывода.
//
// Revision 1.41.2.3  2005/04/09 11:03:50  lulin
// - new property: InevMetrics._FontTool.
//
// Revision 1.41.2.2  2005/04/09 09:50:53  lulin
// - new interface: InevMetrics.
//
// Revision 1.41.2.1  2005/04/08 13:35:07  lulin
// - _Processor стал обязательным параметром.
//
// Revision 1.43.2.2  2005/04/23 16:07:30  lulin
// - удален временный интерфейс Ik2TagBox.
//
// Revision 1.43.2.1  2005/04/21 14:46:57  lulin
// - избавляемся от обертки над тегами - теперь объекты посредством шаблонов сами реализуют интерфейс Ik2Tag.
//
// Revision 1.43  2005/04/21 05:11:43  lulin
// - используем _Box (пока из-за постоянных преобразований туда и обратно - по скорости стало только хуже).
//
// Revision 1.42  2005/04/18 17:18:27  lulin
// - используем _Box, а не Ik2Tag (пока выигрыша в производительности не дало).
//
// Revision 1.41  2005/04/06 11:50:22  lulin
// - new interface: _InevDrawingShape.
//
// Revision 1.40  2005/04/04 15:46:28  lulin
// - используем параграф, вместо "безликого" тега.
//
// Revision 1.39  2005/04/04 06:44:02  lulin
// - в связи с появлением механизма событий и фасада библиотеки K-2, удалены глобальные "заплатки" связанные с созданием/уничтожением таблицы тегов.
//
// Revision 1.38  2005/03/30 17:04:04  lulin
// - в процедуре печати/отрисовки убран ненужный параметр (aBottomCursor).
//
// Revision 1.37  2005/03/28 11:32:12  lulin
// - интерфейсы переехали в "правильный" модуль.
//
// Revision 1.36  2005/03/28 06:37:13  lulin
// - remove object: Tk2AtomW.
//
// Revision 1.35  2005/03/25 18:29:33  lulin
// - избавляемся от метода Tk2AtomW.sClass.
//
// Revision 1.34  2005/03/25 17:09:07  lulin
// - избавляемся от метода Tk2AtomW.sLong.
//
// Revision 1.33  2005/03/24 13:14:40  lulin
// - уделена ненужная функция преобразования Tk2AtomR к Ik2Tag.
//
// Revision 1.32  2005/03/14 10:00:36  lulin
// - от Tk2AtomR переходим к Ik2Tag.
//
// Revision 1.31  2005/03/10 11:35:14  lulin
// - от Tk2AtomR переходим к Ik2Tag.
//
// Revision 1.30  2005/03/04 15:49:05  lulin
// - спрятана процедура Tk2Type.New.
//
// Revision 1.29  2005/03/04 13:59:23  lulin
// - remove method: Tk2AtomR._AddChild.
//
// Revision 1.28  2005/02/25 14:34:00  lulin
// - new behavior: печать теперь учитывает верхний отступ.
//
// Revision 1.27  2005/02/22 12:27:41  lulin
// - рефакторинг работы с Tl3Point и Tl3Rect.
//
// Revision 1.26  2005/02/22 10:28:20  lulin
// - new behavior: сделана возможность печати нижнего колонтитула.
//
// Revision 1.25  2005/02/21 18:41:26  lulin
// - в метод TevHAFPainter.TuneHeader добавлен параметр aTop.
//
// Revision 1.24  2005/02/21 18:38:55  lulin
// - в метод Il3HAFPainter.StartPage добавлен параметр aTop.
//
// Revision 1.23  2005/02/18 12:37:49  lulin
// - Painter'ы переехали на Ik2Tag.
//
// Revision 1.22  2004/12/29 11:51:23  lulin
// - построение _Preview практически полность перенесено из _Nemesis'а в Everest.
//
// Revision 1.21  2004/12/21 16:45:03  lulin
// - вернул Caption форме предварительного просмотра.
//
// Revision 1.20  2004/12/15 14:56:04  lulin
// - перетащил диалог печати на новый Print-_preview.
//
// Revision 1.19  2004/12/11 15:33:58  lulin
// - вернул колонтитулы на историческую родину.
//
// Revision 1.18  2004/12/09 18:41:49  lulin
// - bug fix: не всегда учитывалась максимальная ширина страницы.
//
// Revision 1.17  2004/12/06 12:02:21  lulin
// - от классов переходим к интерфейсам.
//
// Revision 1.16  2004/11/01 18:29:44  lulin
// - new behavior: при возможности не форматируем документ, а читаем форматирование из пула сохраненных.
//
// Revision 1.15  2004/07/08 15:46:10  law
// - ускорена вставка/удаление параграфов в длинных документах.
//
// Revision 1.14  2004/07/01 17:41:49  law
// - new behavior: Formatter'ы переведены с Tk2AtomR на Ik2Tag.
//
// Revision 1.13  2004/05/19 12:35:09  nikitin75
// добавлена реализация _IevPrepareContext для передачи в _evFormatTag: для передачи "правильной" InfoCanavas
//
// Revision 1.12  2003/10/14 16:35:52  law
// - rename unit: evTxtSrc -> evTextSource.
//
// Revision 1.11  2003/10/13 15:04:18  law
// - rename unit: evEdWnd -> evEditorWindow.
//
// Revision 1.10  2003/10/09 15:24:55  law
// - new behavior: оптимизирован процесс форматирования.
//
// Revision 1.9  2003/07/04 19:39:49  law
// - оптимизация переформатирования текста в фоновом режиме (до конца не доделано, но светлые мысли есть).
//
// Revision 1.8  2002/12/26 12:58:24  law
// - new dll: собрана pe.dll без _evDisp.
//
// Revision 1.7  2002/12/25 15:48:07  law
// - new proc: peTextSource_AddHeader.
//
// Revision 1.6  2002/12/24 15:31:35  law
// - new units: TevTreeParaFormatter, TevTreeParaConst, TevSBSParaFormatter.
//
// Revision 1.5  2002/12/19 17:21:50  law
// - rename unit: evBsePar -> evBasePara.
//
// Revision 1.4  2002/07/09 12:02:23  law
// - rename unit: evUnits -> l3Units.
//
// Revision 1.3  2002/02/07 17:56:09  law
// - cleanup: из _TevBasePara убраны знания о TevBaseParaList.
//
// Revision 1.2  2001/11/19 15:08:46  law
// - rename class: Il3HAFPainter -> Tl3HAFPainter.
// - new interface: Il3HAFPainter.
//
// Revision 1.1  2001/09/14 14:21:54  law
// - new unit: evHAFPainter.
//

{$Include evDefine.inc }

interface

uses
 Classes,

 l3Units,
 l3Types,
 l3Base,
 l3Interfaces, 
 l3InternalInterfaces,

 k2Interfaces,
  
 evInternalInterfaces,
 evSBSPar,
 evdStyles,

 nevBase,
 nevBaseView,
 nevTools
 ;

type
  TevHAFPainter = class(Tl3Base, Il3HAFPainter)
    private
      f_PagesCount        : Integer;
      f_MacroReplacer: Il3HAFMacroReplacer;
    protected
    // internal methods
      function Get_MacroReplacer: Il3HAFMacroReplacer;
        {-}
      function  DocumentName: Il3CString;
        {-}
      function  NeedPagesCount: Boolean;
        virtual;
        {-}
      procedure SetPagesCount(aValue: Integer);
        {-}
      function MacroDocCurrentPage(const aCanvas: Il3Canvas): Il3CString;
        {-}
      function MacroDocPagesCount: Il3CString;
    protected
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(const aMacroReplacer: Il3HAFMacroReplacer);
        reintroduce;
        virtual;
        {-}
      class function Make(const aMacroReplacer: Il3HAFMacroReplacer): Il3HAFPainter;
        reintroduce;
        {-}
      procedure StartPage(const aCanvas: Il3Canvas; aTop: Boolean);
        {-}
      procedure TuneHeader(const aCanvas : Il3Canvas;
                           const aHeader : Ik2Tag;
                           aTop          : Boolean);
        virtual; abstract;
        {-}
    public
      property PagesCount: Integer
        read f_PagesCount
        write f_PagesCount;
        {-}
      property MacroReplacer: Il3HAFMacroReplacer
        read Get_MacroReplacer;
  end;//TevHAFPainter

implementation

uses
  Windows,
  
  SysUtils,
  Forms,

  Graphics,

  l3Chars,
  l3Const,
  l3String,

  k2Facade,
  k2Base,
  k2Tags,
  k2InternalInterfaces,

  evdTypes,

  evDef,
  evConst,
  {$IfNDef evOnlyForPrinting}
  evEditorWindow,
  {$EndIf  evOnlyForPrinting}
  evParaTools,
  nevHAFPainterView,
  evHAFPainterMacros,

  nevRealTools,

  Document_Const,
  SBS_Const
  ;

// start class TevHAFPainter

class function TevHAFPainter.Make(const aMacroReplacer: Il3HAFMacroReplacer): Il3HAFPainter;
  //reintroduce;
  {-}
var
 l_Painter : TevHAFPainter;
begin
 l_Painter := Create(aMacroReplacer);
 try
  Result := l_Painter;
 finally
  l3Free(l_Painter);
 end;//try..finally
end;

function TevHAFPainter.NeedPagesCount: Boolean;
  //virtual;
  {-}
begin
 Result := false;
end;

procedure TevHAFPainter.SetPagesCount(aValue: Integer);
  //virtual;
  {-}
begin
 f_PagesCount := aValue;
end;

function TevHAFPainter.DocumentName: Il3CString;
  //virtual;
  {-}
begin
 if Assigned(MacroReplacer) then
  Result := MacroReplacer.UnfoldOne(l3CStr(SDocName))
 else
  Result := nil;
end;

procedure TevHAFPainter.StartPage(const aCanvas: Il3Canvas; aTop: Boolean);
  //override;
  {-}
var
 l_Header   : Ik2Tag;
 l_Pnt      : IevPainter;
 l_WO       : Tl3Point;
 l_Delta    : Long;
 l_Info     : TnevShapeInfo;
 l_View     : InevView;
 l_PrintableMargins  : Tl3_Rect;
 l_Margins  : Tl3_Rect;
 l_Points   : TnevShapePoints;
 l_Area     : TnevShapeAreaEx;
 l_Doc      : Ik2Tag;
 l_S        : InevObject;
begin
 with aCanvas do
 begin
  l_PrintableMargins := PageSetup.{Printable}Margins;
  l_WO := WindowOrg;
  Canvas.Pen.Color := clBlack;

  l_PrintableMargins.Right := DeviceCaps(PHYSICALOFFSETX);
  if not aTop then
  begin
   BackColor := clBlack;
   FillRect(l3Rect(l3PointX(l_PrintableMargins.Left),
                   l3Point(PageSetup.Width - l_PrintableMargins.Right,
                           DP2LP(PointY(PenWidth)).Y)));
   Line(l3PointX(l_PrintableMargins.Left),
        l3PointX(PageSetup.Width - l_PrintableMargins.Right));
   MoveWindowOrg(DP2LP(PointY(PenWidth)).e_Y);
   MoveWindowOrg(l3PointY(-evInchMul div 16));
  end;//not aTop

  with Font do
  begin
   Name := def_FontName;
   Size := 6;
   BackColor := clWhite;
  end;//with Font

  l_Doc := k2_typDocument.MakeTag;
  try
   l_Header := k2_typSBS.MakeTag;
   try
    l_Margins := PageSetup.Margins;
    l_Doc.IntA[k2_tiLeftIndent] := l_Margins.Left;
    l_Doc.IntA[k2_tiRightIndent] := l_Margins.Right;
    l_Doc.IntA[k2_tiWidth] := PageSetup.PaperWidth;
    evSBS_Init(l_Header, l_Doc.IntA[k2_tiWidth]);
    evSBS_LeftColumn(l_Header).IntA[k2_tiVerticalAligment] := Ord(ev_valTop);
    evSBS_RightColumn(l_Header).IntA[k2_tiVerticalAligment] := Ord(ev_valTop);
    l_Doc.AddChild(l_Header);
    if not l_Doc.QT(InevObject, l_S) then
     Assert(false);
    l_View := TnevHAFPainterView.Make(l_S.ToList, aCanvas);
    try
     TuneHeader(aCanvas, l_Header, aTop);
     //l_Doc.QT(IevPainter, l_Pnt, nil);
     l_Header.QT(IevPainter, l_Pnt, nil);
     try
      MoveWindowOrg(l3PointX(-l_PrintableMargins.Left));
      l_Points.rTop := nil;
      l_Points.rCaret := nil;
      l_Points.rSelection := nil;
      l_Points.rPrevHeight := 0;
      l_Points.rRealTop := nil;
      l_Points.rFake := False;
      l_Points.rCheckCaret := nil;
      l_Points.rCheckSelection := nil;
      l_Area.Init(l_View, aCanvas, false);
      try
       //l_Area.rLimitWidth := PageSetup.Width - (l_PrintableMargins.Left + l_PrintableMargins.Right);
       // - на это надо внимательнее посмотреть
       //   убрано в http://mdp.garant.ru/pages/viewpage.action?pageId=90441024
       l_Pnt.Draw(l_Area{$IfDef XE4}.rTnevShapeArea{$EndIf}, l_Points, l_Info);
      finally
       l_Area.Free;
      end;//try..finally
      MoveWindowOrg(l3PointX(l_PrintableMargins.Left));
      WindowOrg := l3Point(WindowOrg.X, -l_Info.rMap.Bounds.Bottom);
     finally
      l_Pnt := nil;
     end;//try..finally
    finally
     l_View := nil;
    end;//try..finally
   finally
    l_Header := nil;
   end;//try..finally
  finally
   l_Doc := nil;
  end;//try..finally

  if aTop then
  begin
   l_Delta := -(WindowOrg.Y - l_WO.Y);
   if (l_Delta < l_PrintableMargins.Top) then
    MoveWindowOrg(l3PointY(l_PrintableMargins.Top - l_Delta).Neg);
   Line(l3PointX(l_PrintableMargins.Left),
        l3PointX(PageSetup.Width - l_PrintableMargins.Right));
   MoveWindowOrg(DP2LP(PointY(PenWidth)).e_Y);
   MoveWindowOrg(l3PointY(-evInchMul div 16));
  end;//aTop
 end;//with aCanvas
end;

function TevHAFPainter.MacroDocCurrentPage(
  const aCanvas: Il3Canvas): Il3CString;
begin
 if (aCanvas.PageWidthNumber = 0) then
  Result := l3Fmt('%d', [aCanvas.PageNumber])
 else
  Result := l3Fmt('%d.%d', [aCanvas.PageNumber, aCanvas.PageWidthNumber]);
end;

function TevHAFPainter.MacroDocPagesCount: Il3CString;
begin
 Result := l3Fmt('%d', [PagesCount]);
end;

constructor TevHAFPainter.Create(const aMacroReplacer: Il3HAFMacroReplacer);
begin
 inherited Create;
 f_MacroReplacer := aMacroReplacer;
 PagesCount := 0;
end;

function TevHAFPainter.Get_MacroReplacer: Il3HAFMacroReplacer;
begin
 Result := f_MacroReplacer;
end;

procedure TevHAFPainter.Cleanup;
begin
 f_MacroReplacer := nil;
 inherited Cleanup;
end;

end.

