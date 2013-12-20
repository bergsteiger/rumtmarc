unit evSubPn;
{* Панели меток. }

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evSubPn - панель для Sub'ов}
{ Начат: 27.08.1997 16:31 }
{ $Id: evSubPn.pas,v 1.111 2013/08/12 15:11:36 kostitsin Exp $ }

// $Log: evSubPn.pas,v $
// Revision 1.111  2013/08/12 15:11:36  kostitsin
// [$476366422]
//
// Revision 1.110  2013/07/17 14:06:22  kostitsin
// [$454531102]
//
// Revision 1.109  2012/08/10 13:47:16  kostitsin
// [$382421266]
//
// Revision 1.108  2011/11/09 10:18:00  lulin
// {RequestLink:290953654}
//
// Revision 1.106  2011/07/05 15:28:16  lulin
// {RequestLink:269060906}.
//
// Revision 1.105  2011/06/07 17:50:01  lulin
// {RequestLink:268342184}.
// - делаем чтобы иконка не прилипала к краю панели.
//
// Revision 1.104  2011/06/07 17:06:38  lulin
// {RequestLink:268342184}.
//
// Revision 1.103  2011/05/19 10:35:57  lulin
// {RequestLink:266409354}.
//
// Revision 1.102  2010/02/26 16:35:04  lulin
// {RequestLink:190677208}.
// - упрощаем хранимые элементы.
//
// Revision 1.101  2010/02/26 15:20:37  lulin
// {RequestLink:190677208}.
// - упрощаем хранимые элементы.
//
// Revision 1.100  2010/02/26 15:07:14  lulin
// {RequestLink:190677208}.
// - типизируем элементы списка.
//
// Revision 1.99  2010/02/26 14:35:40  lulin
// {RequestLink:190677208}.
// - типизируем элементы списка.
//
// Revision 1.98  2010/02/26 13:53:31  lulin
// {RequestLink:190677208}.
// - убираем лишний класс.
//
// Revision 1.97  2010/02/26 13:31:13  lulin
// {RequestLink:190677208}.
// - правим приведение типов.
//
// Revision 1.95  2008/08/07 12:46:52  lulin
// - <K>: 96483822.
//
// Revision 1.94  2008/06/09 11:45:47  lulin
// - <K>: 93264011.
//
// Revision 1.93  2008/02/21 18:37:17  lulin
// - вычищен ненужный параметр.
//
// Revision 1.92  2008/02/21 18:13:20  lulin
// - избавляемся от ненужных типов.
//
// Revision 1.91  2008/02/19 16:45:34  lulin
// - используем типизацию элементов.
//
// Revision 1.90  2008/02/19 14:58:43  lulin
// - переводим сортировку списков на новые, менее виртуальные, рельсы.
//
// Revision 1.89  2008/02/19 11:05:47  lulin
// - восстановил всякие экзотические поиски в списках объектов.
//
// Revision 1.88  2008/02/14 17:08:55  lulin
// - cleanup.
//
// Revision 1.87  2008/02/14 09:40:22  lulin
// - удалён ненужный класс.
//
// Revision 1.86  2008/02/13 20:20:00  lulin
// - <TDN>: 73.
//
// Revision 1.85  2008/02/13 16:03:02  lulin
// - убраны излишне гибкие методы поиска.
//
// Revision 1.84  2008/02/12 16:35:55  lulin
// - итераторы переехали на примесь.
//
// Revision 1.83  2008/02/12 12:52:59  lulin
// - избавляемся от излишнего метода на базовом классе.
//
// Revision 1.82  2008/02/07 19:12:55  lulin
// - избавляемся от излишне универсальных методов базовых списков.
//
// Revision 1.81  2008/02/06 15:36:51  lulin
// - каждому базовому объекту по собственному модулю.
//
// Revision 1.80  2008/02/06 09:30:38  lulin
// - базовые списки объектов выделяем в отдельные файлы.
//
// Revision 1.79  2008/02/05 09:57:38  lulin
// - выделяем базовые объекты в отдельные файлы и переносим их на модель.
//
// Revision 1.78  2008/02/01 15:14:29  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.77  2008/01/31 18:53:27  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.76  2007/12/05 12:35:06  lulin
// - вычищен условный код, составлявший разницу ветки и Head'а.
//
// Revision 1.75  2007/12/04 13:04:55  lulin
// - объединяем два каталога с исходниками Эвереста.
//
// Revision 1.27  2007/09/20 16:17:25  lulin
// - cleanup.
//
// Revision 1.26  2007/08/14 19:31:27  lulin
// - оптимизируем очистку памяти.
//
// Revision 1.25  2007/03/28 12:22:33  lulin
// - для документа можем показывать отдельную иконку.
//
// Revision 1.24  2007/03/26 08:17:58  lulin
// - уменьшаем размер колонки с текстом.
//
// Revision 1.23  2007/03/13 09:43:15  voba
// - bug fix от Шуры
//
// Revision 1.22  2007/03/13 09:16:19  lulin
// - вытерто ненужное свойство.
//
// Revision 1.21  2007/03/13 09:07:57  lulin
// - не туда попала ссылка на родительский объект.
//
// Revision 1.20  2007/03/07 13:45:23  lulin
// - сдклан единый курсор по-умолчанию для всех слоев меток.
//
// Revision 1.19  2007/03/07 12:31:57  lulin
// - сделана настройка - какой слой меток показывать.
//
// Revision 1.18  2007/03/07 10:03:14  lulin
// - уменьшаем зазор между колонками.
//
// Revision 1.17  2007/03/07 09:53:25  lulin
// - не пишем ненужные свойства.
//
// Revision 1.16  2007/03/07 09:42:46  lulin
// - автоматически рассчитываем ширину колонки меток.
//
// Revision 1.15  2007/03/06 15:31:59  lulin
// - автоматически рассчитываем ширину колонки меток.
//
// Revision 1.13  2007/03/06 12:51:33  lulin
// - cleanup.
//
// Revision 1.12  2007/03/06 12:08:42  lulin
// - сделана возможность для каждого слоя отдельно указывать список иконок.
//
// Revision 1.11  2007/03/06 11:59:01  lulin
// - сделана возможность выбирать иконки из списка, а не задавать только руками.
//
// Revision 1.10  2007/02/12 18:06:10  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.9  2007/01/31 12:01:06  lulin
// - сделана возможность показа меню по клику на метке.
//
// Revision 1.8  2006/12/13 15:48:09  lulin
// - cleanup.
//
// Revision 1.7  2006/10/10 15:32:30  lulin
// - cleanup.
//
// Revision 1.6  2006/10/10 15:12:28  lulin
// - убран излишний метод.
//
// Revision 1.5  2006/04/28 12:41:43  lulin
// - cleanup.
//
// Revision 1.4  2006/04/28 12:22:36  lulin
// - cleanup.
//
// Revision 1.3  2006/04/28 11:54:48  lulin
// - cleanup.
//
// Revision 1.2  2006/04/28 11:38:54  lulin
// - модуль переехал в общую папку.
//
// Revision 1.1  2006/04/28 11:14:16  lulin
// - модуль переехал в общую папку.
//
// Revision 1.69.4.14  2006/04/28 11:06:04  lulin
// - cleanup.
//
// Revision 1.69.4.13  2006/04/24 12:58:33  lulin
// - выпиливаем из списков общую функциональность.
//
// Revision 1.69.4.12  2005/12/02 18:23:28  lulin
// - обрабока нотфификации об удалении/добавлении параграфа практически полностью перенесена на процессор.
//
// Revision 1.69.4.11  2005/10/25 11:05:44  lulin
// - не получаем напрямую информационную канву экрана, а получаем ее через фасад.
//
// Revision 1.69.4.10  2005/10/06 09:17:50  lulin
// - базовый класс панелей переехал в более правильное место.
//
// Revision 1.69.4.9  2005/08/30 10:38:34  lulin
// - bug fix: убран потенциальный Range Check при неправильных данных.
//
// Revision 1.69.4.8  2005/07/19 12:50:06  lulin
// - часть базовых интерфейсов переехала в модуль nevTools.
//
// Revision 1.69.4.7  2005/07/04 06:51:16  lulin
// - bug fix: в документе, полученном как дерево, не рисовались Sub'ы.
//
// Revision 1.69.4.6  2005/05/26 13:19:29  lulin
// - new unit: l3ScreenIC.
//
// Revision 1.69.4.5  2005/05/24 12:48:15  lulin
// - для канвы используем интерфейс, а не объект.
//
// Revision 1.69.4.4  2005/05/19 15:49:26  lulin
// - класс _TevCustomFont выделен в отдельный модуль.
//
// Revision 1.69.4.3  2005/05/19 13:49:44  lulin
// - класс _TevFont вынесен в отдельный модуль.
//
// Revision 1.69.4.2  2005/05/19 13:18:43  lulin
// - remove unit: evFont.
//
// Revision 1.69.4.1  2005/05/18 12:42:47  lulin
// - отвел новую ветку.
//
// Revision 1.68.2.1  2005/04/28 09:18:30  lulin
// - объединил с веткой B_Tag_Box.
//
// Revision 1.68.4.1  2005/04/26 14:30:39  lulin
// - ускоряем l3Free и l3Use.
//
// Revision 1.68  2005/02/22 12:27:39  lulin
// - рефакторинг работы с Tl3Point и Tl3Rect.
//
// Revision 1.67  2005/01/31 11:59:21  lulin
// - bug fix: при скроллировании вверх размножались картинки на панели сабов (CQ OIT5-9698).
//
// Revision 1.66  2004/12/14 14:16:30  lulin
// - bug fix: не перерисовывалась панель Sub'ов.
//
// Revision 1.65  2004/11/16 12:21:39  lulin
// - new behavior: для Sub-панели тоже обновляем Hint'ы, если изменилось их содержимое.
//
// Revision 1.64  2004/09/21 12:55:41  lulin
// - Release заменил на Cleanup.
//
// Revision 1.63  2004/09/16 12:20:50  lulin
// - удалено большинство нечитабельных include'ов.
//
// Revision 1.62  2004/09/15 16:44:56  lulin
// - в зависимости от DesignTimeLibrary перекрываем Destroy или Cleanup.
//
// Revision 1.61  2004/09/15 16:20:37  lulin
// - bug fix: AllEverestComponents7 не собирался из-за Str_Man'а.
// - bug fix: AllEverestComponents7 не загружался из-за шаблонов.
//
// Revision 1.60  2004/09/02 15:04:30  fireton
// - bug fix: ошибка прорисовки Bevel у TvtCustomPanel
//
// Revision 1.59  2004/07/09 14:38:37  law
// - bug fix: при удалении Sub'а не обновлялась панель меток.
//
// Revision 1.58  2004/06/02 16:07:32  law
// - bug fix: используем "правильные" списки.
//
// Revision 1.57  2004/06/02 08:30:24  law
// - удален конструктор Tl3VList.MakePersistentSorted - пользуйтесь _Tl3ObjectRefList.MakeSorted.
//
// Revision 1.56  2003/10/20 15:28:49  demon
// - bug fix: _CheckSubOnPoint не возвращал корректный Result.
//
// Revision 1.55  2003/09/12 11:18:13  law
// - new prop: TevCustomSubDescriptors.BookmarksLayer, MarksLayer.
//
// Revision 1.54  2003/05/28 13:47:11  law
// - bug fix: _TevCustomSubPanel не поддерживал интерфейс IevSubPanel.
//
// Revision 1.53  2003/05/28 13:13:35  law
// - change: развязал модули evEdWnd и evSubPanel, так что чисто теоретически можно использовать другую панель Sub'ов.
//
// Revision 1.52  2003/05/22 13:10:09  law
// - cleanup.
//
// Revision 1.51  2003/03/20 12:56:22  law
// - new method: _CheckSubOnPoint.
//
// Revision 1.50  2003/02/13 12:27:31  law
// - cleanup: IevFont переименован в _TevCustomFont, чтобы не путать его с интерфейсом.
//
// Revision 1.49  2003/02/12 14:05:09  law
// - bug fix: поправлены рудименты отрисовки при скроллировании панели Sub'ов.
//
// Revision 1.48  2002/11/13 15:22:45  law
// - new class: TeeSubPanel.
//
// Revision 1.47  2002/09/17 14:20:33  law
// - bug fix.
//
// Revision 1.46  2002/09/17 14:09:02  law
// - change param: используем IevSub вместо (LayerID, SubID).
// - new behavior: выводим имя метки в Hint'е.
//
// Revision 1.45  2002/07/09 12:02:21  law
// - rename unit: evUnits -> l3Units.
//
// Revision 1.44  2001/11/23 08:35:19  law
// - cleanup.
//
// Revision 1.43  2001/11/23 08:24:33  law
// - cleanup: немного упрощена логика evSubPn (теперь используем IevSub и Il3Canvas).
//
// Revision 1.42  2001/09/07 08:53:01  law
// - rename procedures: evPointX -> l3PointX, evPointY -> l3PointY.
//
// Revision 1.41  2001/08/29 07:01:08  law
// - split unit: l3Intf -> l3BaseStream, l3BaseDraw, l3InterfacedComponent.
//
// Revision 1.40  2001/04/25 14:56:16  law
// - comments.
//
// Revision 1.39  2001/03/27 08:01:58  law
// - TevPoint -> Tl3Point, TevRect -> Tl3Rect.
//
// Revision 1.38  2001/01/31 10:37:31  law
// - оптимизировано использование QueryInterface.
//
// Revision 1.37  2000/12/19 15:52:40  law
// - убраны ненужные директивы компиляции.
//
// Revision 1.36  2000/12/15 15:10:38  law
// - вставлены директивы Log.
//

{$Include evDefine.inc }

interface

uses
  Windows,
  Messages,
  Classes,
  Controls,
  Graphics,
  Forms,
  ImgList,

  l3Interfaces,
  l3Base,
  l3Types,
  l3InterfacedComponent,
  l3InternalInterfaces,
  l3Units,
  l3ObjectRefList,
  l3ObjectList,
  l3ObjectWithHandleRefList,

  afwInterfaces,

  evdTypes,

  evConst,
  evTypes,

  evVisualInterfaces,
  evDef,
  evLinkedToolPanel,
  evInternalInterfaces,
  evCustomFont,

  nevTools,

  evSubPanelSubArray,
  evSubPanelSubCollection,
  evSubPanelSub
  ;

const
  DefColumn = Pred(High(Integer));
  DefSubPanelWidth = 5;
  
type
  TevSubDrawType = (ev_sdtNumber, ev_sdtChar, ev_sdtCharNumber,
                    ev_sdtBitmap, ev_sdtOwnerDraw);
   {* Тип отображения метки. }

  TevClickSubEvent = procedure(Sender    : TObject;
                               SubType,
                               SubHandle : Tl3Handle;
                               aKind     : TafwClickKind) of object;
   {* Событие для обработки нажатия клавиши мыши на метке. }                            

  TevMouseOverSubEvent = function(Sender     : TObject;
                                  const Pt   : Tl3SPoint;
                                  const R    : Tl3SRect;
                                  const aSub : IevSub;
                                  aLayer     : Long): Bool of object;

  TevMenuSubEvent = procedure(Sender    : TObject;
                              const Pt  : Tl3SPoint;
                              const R   : Tl3SRect;
                              SubType,
                              SubHandle : Tl3Handle) of object;

  TevGetSubBitmapIndexEvent = procedure(Sender     : TObject;
                                        aSubType   : Long;
                                        aSubHandle : Long;
                                        var Bitmap : TImageIndex;
                                        var Images : TCustomImageList) of object;

  TevCustomSubDescriptors = class;

  TevSubDescriptor = class(Tl3Base)
   {* Описание свойств отображения метки. }
    private
    // property fields
      f_Handle           : Tl3Handle;
      f_BitmapIndex      : TImageIndex;
      f_BlockBitmapIndex : TImageIndex;
      f_DocumentBitmapIndex : TImageIndex;
      f_Font             : TevCustomFont;
      f_NumberOffset     : Byte;
      f_DrawType         : TevSubDrawType;
      f_Visible          : Bool;
      f_Column           : Integer;
      f_Offset           : TevPixel;
      f_Cursor           : TCursor;
      f_Owner            : TevCustomSubDescriptors;
      f_Images           : TCustomImageList;
    private
    // event fields
      f_OnGetBitmapIndex : TevGetSubBitmapIndexEvent;
    protected
    // property methods
      procedure CheckFont;
        {-}
      function  OffsetStored: Boolean;
        {-}  
      function  pm_GetFont: TevCustomFont;
      procedure pm_SetFont(Value: TevCustomFont);
        {-}
      procedure pm_SetVisible(Value: Boolean);
        {-}
      function  pm_GetHandle: Tl3Handle;
        override;
      procedure pm_SetHandle(Value: Tl3Handle);
        override;
        {-}
      function  GetOwner: TPersistent;
        override;
        {-}
      procedure DoSetOwner(Value: TObject);
        override;
        {-}
    protected
    // internal methods
      procedure BuildColumns;
        {-}
      function  VisibleDef: Boolean;
        virtual;
        {-}
      function  VisibleStored: Boolean;
        {-}
      function  FontStored: Boolean;
        {-}
      function  CursorStored: Boolean;
        {-}
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(anOwner: TObject);
        override;
        {-}
      procedure Assign(P: TPersistent);
        override;
        {-}
      function  OCompare(anObject: TObject): Long;
        override;
        {-}
    public
    // public properties    
      property Descriptors: TevCustomSubDescriptors
        read f_Owner;
        {-}
    published
    // published properties
      property Images: TCustomImageList
        read f_Images
        write f_Images;
        {-}
      property BitmapIndex: TImageIndex
        read f_BitmapIndex
        write f_BitmapIndex
        default -1;
        {* - индекс иконки для отображения обычной метки. }
      property BlockBitmapIndex: TImageIndex
        read f_BlockBitmapIndex
        write f_BlockBitmapIndex
        default -1;
        {* - индекс иконки для отображения метки блока. }
      property DocumentBitmapIndex: TImageIndex
        read f_DocumentBitmapIndex
        write f_DocumentBitmapIndex
        default -1;
        {* - индекс иконки для отображения метки документа. }
      property Font: TevCustomFont
        read pm_GetFont
        write pm_SetFont
        stored FontStored;
        {* - шрифт для отображения метки. }
      property DrawType: TevSubDrawType
        read f_DrawType
        write f_DrawType
        default ev_sdtNumber;
        {* - тип отображения метки. }
      property NumberOffset: Byte
        read f_NumberOffset
        write f_NumberOffset
        default 0;
        {-}
      property Visible: Bool
        read f_Visible
        write pm_SetVisible
        stored VisibleStored;
        {* - видимы ли данные метки. }
      property Offset: TevPixel
        read f_Offset
        write f_Offset
        stored OffsetStored;
        {-}
      property Column: Integer
        read f_Column
        write f_Column
        default DefColumn;
        {-}  
      property Cursor: TCursor
        read f_Cursor
        write f_Cursor
        stored CursorStored;
        {* - курсор, для отображения над данной меткой. }  
    published
    // published events
      property OnGetBitmapIndex: TevGetSubBitmapIndexEvent
        read f_OnGetBitmapIndex
        write f_OnGetBitmapIndex;
        {* - событие для получения индекса иконки. }
  end;//TevSubDescriptor

  TevSubLayerDescriptor = class(TevSubDescriptor)
   {* Описание свойств отображения слоя меток. }
    protected
    // property methods
      function  pm_GetFlag(Index: Integer): TevSubDescriptor;
      procedure pm_SetFlag(Index: Integer; Value: TevSubDescriptor);
        {-}
      function  VisibleDef: Boolean;
        override;
        {-}
    public
    // public properties
      property Flags[Index: Integer]: TevSubDescriptor
        read pm_GetFlag
        write pm_SetFlag;
        {* - описание отображения флагов метки. }
    published
    // published properties
      property Flag0: TevSubDescriptor
        index 0
        read pm_GetFlag
        write pm_SetFlag;
        {* - описание отображения флага № 0. }
      property Flag1: TevSubDescriptor
        index 1
        read pm_GetFlag
        write pm_SetFlag;
        {* - описание отображения флага № 1. }
      property Flag2: TevSubDescriptor
        index 2
        read pm_GetFlag
        write pm_SetFlag;
        {* - описание отображения флага № 2. }
      property Flag3: TevSubDescriptor
        index 3
        read pm_GetFlag
        write pm_SetFlag;
        {* - описание отображения флага № 3. }
      property Flag4: TevSubDescriptor
        index 4
        read pm_GetFlag
        write pm_SetFlag;
        {* - описание отображения флага № 4. }
      property Flag5: TevSubDescriptor
        index 5
        read pm_GetFlag
        write pm_SetFlag;
        {* - описание отображения флага № 5. }
      property Flag6: TevSubDescriptor
        index 6
        read pm_GetFlag
        write pm_SetFlag;
        {* - описание отображения флага № 6. }
      property Flag7: TevSubDescriptor
        index 7
        read pm_GetFlag
        write pm_SetFlag;
        {* - описание отображения флага № 7. }
  end;//TevSubLayerDescriptor

  TevCustomSubDescriptors = class(Tl3InterfacedComponent)
   {* Набор описаний свойств отображения слоев меток. }
    private
    // property fields
      f_SubDescriptors : Tl3ObjectWithHandleRefList;
      f_Images         : TCustomImageList;
      f_InBuild        : Boolean;
      f_Width          : Integer;
      f_Controls       : Tl3ObjectList;
      f_Cursor         : TCursor;
    protected
    // property methods
      function  pm_GetSubDescriptor(Index: Integer): TevSubDescriptor;
      procedure pm_SetSubDescriptor(Index: Integer; Value: TevSubDescriptor);
        {-}
      function  pm_GetSubLayerDescriptor(Index: Integer): TevSubLayerDescriptor;
      procedure pm_SetSubLayerDescriptor(Index: Integer; Value: TevSubLayerDescriptor);
        {-}
      procedure pm_SetImages(Value: TCustomImageList);
        {-}
    protected
    // internal methods
      procedure Loaded;
        override;
        {-}
      procedure PlaceControls;
        {-}  
      procedure PlaceControl(aControl: TControl);
        {-}  
      procedure Cleanup;
        override;
        {-}
    protected
    // public properties
      property SubDescriptor[Index: Integer]: TevSubDescriptor
        read pm_GetSubDescriptor
        write pm_SetSubDescriptor;
        default;
        {* - свойства отображения слоя. }
    public
    // public methods
      procedure BuildColumns;
        {-}
      procedure LinkControl(aControl: TControl);
        {-}
      procedure UnlinkControl(aControl: TControl);
        {-}
    public
    // public properties
      property SubsLayer: TevSubLayerDescriptor
        index ev_sbtSub
        read pm_GetSubLayerDescriptor
        write pm_SetSubLayerDescriptor;
        {* - свойства отображения слоя меток. }
      property MarkersLayer: TevSubLayerDescriptor
        index ev_sbtMarker
        read pm_GetSubLayerDescriptor
        write pm_SetSubLayerDescriptor;
        {* - свойства отображения слоя маркеров. }
      property BookmarksLayer: TevSubLayerDescriptor
        index ev_sbtBookmark
        read pm_GetSubLayerDescriptor
        write pm_SetSubLayerDescriptor;
        {* - свойства отображения слоя маркеров. }
      property MarksLayer: TevSubLayerDescriptor
        index ev_sbtMark
        read pm_GetSubLayerDescriptor
        write pm_SetSubLayerDescriptor;
        {* - свойства отображения слоя вспомогательных значков. }
      property Images: TCustomImageList
        read f_Images
        write pm_SetImages;
        {* - набор иконок для отображения. }
      property Cursor: TCursor
        read f_Cursor
        write f_Cursor
        default crDefault;
        {* - курсор, по умолчанию. }  
  end;//TevCustomSubDescriptors

  TevSubDescriptors = class(TevCustomSubDescriptors)
   {*! Набор описаний свойств отображения слоев меток с published свойствами. }
    published
    // published properties
      property Images;
        {-}
      property SubsLayer;
        {-}
      property MarkersLayer;
        {-}
      property BookmarksLayer;
        {-}
      property MarksLayer;
        {-}
      property Cursor;
        {-}
  end;//TevSubDescriptors

  TevCustomSubPanel = class(TevCustomLinkedToolPanel,
                            IevSubCache,
                            IevSubFlagsSpy,
                            IevZoomedLinkedToolWindow,
                            IevSubPanel)
   {* Панель меток. }
    private
    // internal fields
      fl_HintSub     : TevSubPanelSub;
    private
    // property fields
      f_Zoom           : SmallInt;
      f_Subs           : TevSubPanelSubCollection;
      f_SubDescriptors : TevCustomSubDescriptors;
    private
    // event fields
      f_OnClickSub     : TevClickSubEvent;
      f_OnMenuSub      : TevMenuSubEvent;
      f_OnMouseOverSub : TevMouseOverSubEvent;
    private
    // message handlers
      procedure WMLButtonDblClk(var Msg: TWMLButtonDblClk);
        message WM_LBUTTONDBLCLK;
        {-}
      procedure WMLButtonUp(var Msg: TWMLButtonUp);
        message WM_LBUTTONUp;
        {-}
      procedure WMRButtonDown(var Msg: TWMRButtonDown);
        message WM_RBUTTONDOWN;
        {-}
      procedure WMNCHitTest(var Msg: TWMNCHitTest);
        message WM_NCHitTest;
        {-}
      procedure WMSetCursor(var Msg : TWMSetCursor);
        message WM_SETCURSOR;
        {-}
    protected
    // property methods
      function  pm_GetZoom: SmallInt;
      procedure pm_SetZoom(Value: SmallInt);
        {-}
      function  pm_GetSubDescriptors: TevCustomSubDescriptors;
      procedure pm_SetSubDescriptors(Value: TevCustomSubDescriptors);
        {-}
    protected
    // internal methods
      function  SubDescriptorsStored: Bool;
        {-}
      procedure OrientationChanged;
        override;
        {-}
      procedure DoOnClickSub(SubType,
                             SubHandle : Tl3Handle;
                             aKind    : TafwClickKind);
        virtual;
        {-}
      procedure DoOnMenuSub(const Pt  : Tl3SPoint;
                            R         : Tl3SRect;
                            SubType,
                            SubHandle : Tl3Handle);
        virtual;
        {-}
      function  DoOnMouseOverSub(const Pt   : Tl3SPoint;
                                 const R    : Tl3SRect;
                                 const aSub : IevSub;
                                 aLayer     : Long): Bool;
        virtual;
        {-}
      procedure ClearSubs;
        {-}
      procedure Paint(const CN: Il3Canvas);
        override;
        {-}
      procedure DrawSub(const aCanvas : Il3Canvas;
                        aSubDescr     : TevSubDescriptor;
                        aSub          : TevSubPanelSub;
                        aRealPaint    : Boolean);
        {-}
      procedure MakeSubRect(var R: Tl3Rect);
        {-}
      procedure DrawSubs(const Canvas: Il3Canvas);
        {-}
      function  ScrollSub(SPS : TevSubPanelSub;
                          P   : Tl3Point): Bool;
        virtual;
        {-}
      procedure AddSub(const CN   : Il3Canvas;
                       aR         : Tl3Rect;
                       aSubType   : Tl3Handle;
                       const aSub : IevSub);
        {-}
      function  DeleteSubPrim(aSubType, aSubHandle: Tl3Handle): Bool;
        {-}
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(AOwner: TComponent);
        override;
        {-}
      procedure NeedDrawSub(const aR   : Tl3Rect;
                            const aSub : IevSub);
        {* - нотификации о необходимости перерисовки метки. }
      procedure Scroll(iD: TevPixel);
        override;
        {-}
      function  SubOnPoint(const Pt: Tl3SPoint; out st: Tl3Handle): TevSubPanelSub;
        {-}
      function  CheckSubOnPoint(aX, aY      : Integer;
                                out theSub  : IevSub;
                                out theFlag : Long): Bool;
        overload;
        {-}
      function  CheckSubOnPoint(aX, aY      : Integer;
                                out theSub  : IevSub): Bool;
        overload;
        {-}
      procedure NotifySubDeleted(const aSub: IevSub);
        {* - нотификация об удалении метки. }
      procedure DeleteSub(aSubType, aSubHandle: Tl3Handle);
        {-}
      procedure NotifyFlagsChange(const aSub: IevSub);
        {* - нотификация об изменении флагов метки. }
(*      procedure CheckSubs;
        {-}*)
    public
    // public properties
      property Zoom: SmallInt
        read f_Zoom
        write pm_SetZoom
        default def_Zoom;
        {-}
      property SubDescriptors: TevCustomSubDescriptors
        read pm_GetSubDescriptors
        write pm_SetSubDescriptors
        stored SubDescriptorsStored;
        {* - набор описаний свойств отображения слоев меток. }
    public
    // public events
      property OnClickSub: TevClickSubEvent
        read f_OnClickSub
        write f_OnClickSub;
        {* - событие для обработки нажатия левой клавиши мыши на метке. }
      property OnMenuSub: TevMenuSubEvent
        read f_OnMenuSub
        write f_OnMenuSub;
        {-}
      property OnMouseOverSub: TevMouseOverSubEvent
        read f_OnMouseOverSub
        write f_OnMouseOverSub;
        {-}
    published
      property Width
        default DefSubPanelWidth;
        {-}     
  end;//TevCustomSubPanel

  TevSubPanel = class(TevCustomSubPanel)
   {*! Панель меток с published свойствами. }
    published
    // parents' properties
      property Align;
      property Alignment;
      property BevelInner;
      property BevelOuter;
      property BevelWidth;
      property BorderWidth;
      property BorderStyle;
      property DragCursor;
      property DragMode;
      property Enabled;
      property Caption;
      property Color;
      property Ctl3D;
      property Font;
      property ParentColor;
      property ParentCtl3D;
      property ParentFont;
      property ParentShowHint;
      property PopupMenu;
      property ShowHint;
      property TabOrder;
      property TabStop;
      property Visible;
      property OnClick;
      property OnDblClick;
      property OnDragDrop;
      property OnDragOver;
      property OnEndDrag;
      property OnEnter;
      property OnExit;
      property OnMouseDown;
      property OnMouseMove;
      property OnMouseUp;
      property OnResize;
    published
    // published properties
      property SubDescriptors;
        {-}
      property Orientation
        default ev_orVertical;
        {-}
      property OnClickSub;
        {-}
      property OnMenuSub;
        {-}
      property OnMouseOverSub;
        {-}
  end;//TevSubPanel

  PevSubPanelSub = ^TevSubPanelSub;
  
procedure evInvalidateRect(H: THandle; const R: Tl3Rect);
  {-}
  
implementation

uses
  SysUtils,

  l3Math,
  l3Bits,
  l3String,
  l3MinMax,
  l3CacheableBase,

  nevFacade,

  evFont
  ;

procedure evInvalidateRect(H: THandle; const R: Tl3Rect);
  {-}
begin
 nev.CrtIC.LR2DR(R).Invalidate(H, false);
end;

// start class TevCustomSubPanel

constructor TevCustomSubPanel.Create(AOwner: TComponent);
  {override;}
  {-}
begin
 inherited;
 ControlStyle := ControlStyle - [csSetCaption, csAcceptsControls,csCaptureMouse];
 Orientation := ev_orVertical;
 f_Zoom := def_Zoom;
 f_Subs := TevSubPanelSubCollection.Create(Self);
 Width := DefSubPanelWidth;
end;

procedure TevCustomSubPanel.Cleanup;
  {override;}
  {-}
begin
 l3Free(f_Subs);
 SubDescriptors := nil;
 inherited;
end;

function TevCustomSubPanel.SubDescriptorsStored: Bool;
  {-}
begin
 Result := (f_SubDescriptors <> nil) AND (f_SubDescriptors.Owner <> nil);
end;

procedure TevCustomSubPanel.OrientationChanged;
  {override;}
  {-}
begin
 ClearSubs;
end;

procedure TevCustomSubPanel.DoOnClickSub(SubType,
                                         SubHandle: Tl3Handle;
                                         aKind    : TafwClickKind);
  {virtual;}
  {-}
begin
 if Assigned(f_OnClickSub) then
  OnClickSub(Self, SubType, SubHandle, aKind);
end;

procedure TevCustomSubPanel.DoOnMenuSub(const Pt  : Tl3SPoint;
                                        R         : Tl3SRect;
                                        SubType,
                                        SubHandle : Tl3Handle);
  {virtual;}
  {-}
begin
 if Assigned(f_OnMenuSub) then
  OnMenuSub(Self, Pt, R, SubType, SubHandle);
end;

function TevCustomSubPanel.DoOnMouseOverSub(const Pt   : Tl3SPoint;
                                            const R    : Tl3SRect;
                                            const aSub : IevSub;
                                            aLayer     : Long): Bool;
  {virtual;}
  {-}
begin
 if Assigned(f_OnMouseOverSub) then
  Result := OnMouseOverSub(Self, Pt, R, aSub, aLayer)
 else begin
  Hint := IntToStr(aSub.ID) + '|' + l3PCharLen2String(aSub.Name);
  if (Hint = '') then
   CancelHint
  else
   ActivateHint;
  Result := true;
 end;
end;

procedure TevCustomSubPanel.Paint(const CN: Il3Canvas);
  {override;}
  {-}
{$IfNDef Nemesis}
var
 lRect: TRect;
{$EndIf  Nemesis}
begin
 with CN do
  FillRect(ClipRect);
 DrawSubs(CN);
 {$IfNDef Nemesis}
 lRect := GetClientRect;
 DrawFrame(CN, lRect);
 {$EndIf  Nemesis}
end;

type
 PevSubPanelSubArray = ^TevSubPanelSubArray;

function TevCustomSubPanel.SubOnPoint(const Pt : Tl3SPoint;
                                      out st   : Tl3Handle): TevSubPanelSub;
  {-}
var
 Res : TevSubPanelSub absolute Result;

 function LayerOnPoint(SL: PevSubPanelSubArray; Index: Long): Bool;
 var
  Cont : Bool absolute Result;

  function _SubOnPoint(Sub: PevSubPanelSub; Index: Long): Bool;
  begin{_SubOnPoint}
   if nev.CrtIC.LR2DR(Sub^.DrawRect).ContainsPt(Pt) then
   begin
    st := SL^.Handle;
    Res := Sub^;
    Result := false;
   end
   else
    Result := true;
   Cont := Result;
  end;{_SubOnPoint}

 begin{LayerOnPoint}
  Cont := true;
  SL^.IterateAllF(l3L2IA(@_SubOnPoint));
 end;{LayerOnPoint}

begin{SubOnPoint}
 Result := nil;
 f_Subs.IterateAllF(l3L2IA(@LayerOnPoint));
end;{SubOnPoint}

function TevCustomSubPanel.CheckSubOnPoint(aX, aY      : Integer;
                                           out theSub  : IevSub;
                                           out theFlag : Long): Bool;
  {-}
var
 l_Sub     : TevSubPanelSub;
 l_LayerID : Tl3Handle;
begin
 Result := false;
 l_Sub := SubOnPoint(l3SPoint(aX, aY), l_LayerID);
 if (l_Sub <> nil) then
 begin
  Result := true;
  if (l_LayerID < 0) then
  begin
   l_LayerID := -l_LayerID;
   theFlag := Succ(l_LayerID mod 10);
   l_LayerID := l_LayerID div 10;
  end
  else
   theFlag := 0;
  theSub := l_Sub.RealSub;
 end;//l_Sub <> nil
end;

function TevCustomSubPanel.CheckSubOnPoint(aX, aY      : Integer;
                                           out theSub  : IevSub): Bool;
  //overload;
  {-}
var
 l_Flag : Long;
begin
 Result := CheckSubOnPoint(aX, aY, theSub, l_Flag);
end;

(*procedure TevCustomSubPanel.CheckSubs;
  {-}

 function CheckSubLayer(SA: PevSubPanelSubArray; Index: Long): Bool;
 var
  i     : Long;
  l_Sub : IevSub;
 begin//CheckSubLayer
  if (SA^.Handle >= 0) then
  begin
   i := 0;
   try
    while (i < SA^.Count) do
    begin
     l_Sub := SA^.Items[i].RealSub;
     if (l_Sub = nil) OR l_Sub.Exists then
      Inc(i)
     else
      NotifySubDeleted(l_Sub);
    end;//while (i < SA^.Count)
   finally
    l_Sub := nil;
   end;//try..finally
  end;//SA^.Handle >= 0
  Result := true;
 end;//CheckSubLayer

begin
 f_Subs.IterateAllF(l3L2IA(@CheckSubLayer));
end;*)

function TevCustomSubPanel.DeleteSubPrim(aSubType, aSubHandle: Tl3Handle): Bool;
  {-}
var
 SL : TevSubPanelSubArray;
 i  : Long;
begin
 if f_Subs.FindData(aSubType, i) then
 begin
  SL := f_Subs.Items[i];
  if SL.FindData(aSubHandle, i) then
  begin
   if HandleAllocated then
    evInvalidateRect(Handle, SL.Items[i].R);
   SL.Delete(i);
   Result := true;
  end//SL.Find(aSubHandle, i)
  else
   Result := false;
 end//f_Subs.Find(aSubType, i)
 else
  Result := false;
end;

procedure TevCustomSubPanel.NotifySubDeleted(const aSub: IevSub);
  {-}
begin
 DeleteSub(aSub.LayerID, aSub.ID);
 Invalidate;
end;

procedure TevCustomSubPanel.DeleteSub(aSubType, aSubHandle: Tl3Handle);
  {-}
var
 i : Long;
begin
 if DeleteSubPrim(aSubType, aSubHandle) then
  for i := 0 to 7 do
   DeleteSubPrim(-(aSubType*10+i), aSubHandle);
end;

procedure TevCustomSubPanel.NotifyFlagsChange(const aSub: IevSub);
  {-}
var
 SL      : TevSubPanelSubArray;
 i, j    : Long;
 Sub     : TevSubPanelSub;
 CN      : Il3Canvas;
 l_Flags : Long;
begin
 if f_Subs.FindData(aSub.LayerID, i) then
 begin
  SL := f_Subs.Items[i];
  if SL.FindData(aSub.ID, i) then
  begin
   Sub := SL.Items[i];
   CN := Canvas;
   CN.BeginPaint;
   try
    CN.DrawEnabled := true;
    l_Flags := aSub.Flags;
    for j := 0 to 7 do
    begin
     if l3TestBit(l_Flags, j) then
      AddSub(CN, Sub.R, -(aSub.LayerID*10+j), (Sub As TevSubPanelSub).RealSub)
     else
      DeleteSubPrim(-(aSub.LayerID*10+j), aSub.ID);
    end;//for j
   finally
    CN.EndPaint;
   end;//try..finally
  end;//SL <> nil
 end;//f_Subs.Find
end;

procedure TevCustomSubPanel.WMLButtonDblClk(var Msg : TWMLButtonDblClk);
  //message WM_LBUTTONDBLCLK;
var
 st  : Tl3Handle;
 SPS : TevSubPanelSub;
begin
 if not (csDesigning in ComponentState) then
 begin
  with Msg do
   SPS := SubOnPoint(l3SPoint(XPos, YPos), st);
  if (SPS <> nil) then
   DoOnClickSub(st, SPS.Handle, afw_ckDouble)
  else
   inherited;
 end
 else
  inherited;
end;

procedure TevCustomSubPanel.WMLButtonUp(var Msg: TWMLButtonUp);
  //message WM_LBUTTONUp;
  {-}
var
 st  : Tl3Handle;
 SPS : TevSubPanelSub;
begin
 if not (csDesigning in ComponentState) then
 begin
  with Msg do
   SPS := SubOnPoint(l3SPoint(XPos, YPos), st);
  if (SPS <> nil) then
   DoOnClickSub(st, SPS.Handle, afw_ckSingle)
  else
   inherited;
 end
 else
  inherited;
end;

procedure TevCustomSubPanel.WMRButtonDown(var Msg : TWMRButtonDown);
  //message WM_RBUTTONDOWN;
var
 Pt  : Tl3SPoint;
 CPt : Tl3SPoint;
 st  : Tl3Handle;
 SPS : TevSubPanelSub;
begin
 if not (csDesigning in ComponentState) then
 begin
  with Msg do
   Pt := l3SPoint(XPos, YPos);
  CPt := Pt;
  Pt.Convert(ClientToScreen);
  SPS := SubOnPoint(CPt, st);
  if (SPS <> nil) then
   DoOnMenuSub(Pt, nev.CrtIC.LR2DR(SPS.DrawRect), st, SPS.Handle)
  else
   inherited
 end
 else
  inherited;
end;

procedure TevCustomSubPanel.WMNCHitTest(var Msg: TWMNCHitTest);
  {message WM_NCHitTest;}
var
 Pt  : Tl3SPoint;
 CPt : Tl3SPoint;
 st  : Tl3Handle;
 SPS : TevSubPanelSub;
begin
 if not (csDesigning in ComponentState) then
 begin
  with Msg do
   Pt := l3SPoint(XPos, YPos);
  CPt := Pt;
  CPt.Convert(ScreenToClient);
  SPS := SubOnPoint(CPt, st);
  if (SPS <> nil) then
  begin
   if (SPS <> fl_HintSub) then
   begin
    fl_HintSub := SPS;
    DoOnMouseOverSub(Pt, nev.CrtIC.LR2DR(SPS.DrawRect), SPS.RealSub, st);
   end;//SPS <> fl_HintSub..
  end//SPS <> nil
  else
  begin
   fl_HintSub := nil;
   CancelHint;
  end;//SPS <> nil
 end;
 inherited;
end;

procedure TevCustomSubPanel.WMSetCursor(var Msg : TWMSetCursor);
  {message WM_SETCURSOR;}
  {-}
var
 Pt  : Tl3SPoint;
 st  : Tl3Handle;
 l_SubDescriptor : TevSubDescriptor;
 l_Cursor        : TCursor;
begin
 if not (csDesigning in ComponentState) AND
  (Msg.HitTest = HTCLIENT) then begin
  {get the mouse position in client coordinates}
  Pt.GetCursorPos;
  Pt.Convert(ScreenToClient);
  if (SubOnPoint(Pt, st) = nil) then
   inherited
  else
  begin
   l_SubDescriptor := SubDescriptors[st];
   if (l_SubDescriptor = nil) then
    l_Cursor := crDefault
   else
    l_Cursor := l_SubDescriptor.Cursor;
   if (l_Cursor = crDefault) then
    l_Cursor := SubDescriptors.Cursor;
   if (l_Cursor = crDefault) then
    inherited
   else
    SetCursor(Screen.Cursors[l_Cursor]);
  end;//SubOnPoint  
 end//not (csDesigning in ComponentState)
 else
  inherited;
end;

procedure TevCustomSubPanel.ClearSubs;
  {-}
var
 i : Long;
begin
 if not f_Subs.Empty then
  for i := 0 to Pred(f_Subs.Count) do
   f_Subs.Items[i].Clear;
 Invalidate;
end;

procedure TevCustomSubPanel.AddSub(const CN   : Il3Canvas;
                                   aR         : Tl3Rect;
                                   aSubType   : Tl3Handle;
                                   const aSub : IevSub);
  {-}
var
 SPS   : TevSubPanelSub;
 OldR  : Tl3Rect;
 OldDR : Tl3Rect;
 SD    : TevSubDescriptor;
 SL    : TevSubPanelSubArray;
 i     : Long;
begin
 if aSub.Exists then
 begin
  SD := SubDescriptors[aSubType];
  if (SD <> nil) then
  begin
   MakeSubRect(aR);
   if f_Subs.FindData(aSubType, i) then
   begin
    SL := f_Subs.Items[i];
    if SL.FindData(aSub.ID, i) then
     SPS := SL.Items[i]
    else
     SPS := nil;
   end//f_Subs.Find(aSubType, i)
   else
    SPS := nil; 
   l3FillChar(OldDR, SizeOf(OldDR), 0);
   if (SPS <> nil) then
   begin
    OldR := SPS.R;
    OldDR := SPS.DrawRect;
    if not OldR.EQ(aR) then
     SPS := nil;
   end;
   if (SPS = nil) then
   begin
    SPS := TevSubPanelSub.Create(aSub);
    try
     SPS.R := aR;
     f_Subs.CheckLayer(aSubType).Add(SPS);
     evInvalidateRect(Handle, OldDR);
     SD := SubDescriptors[aSubType];
     if (SD <> nil) AND SD.Visible then
      DrawSub(CN, SD, SPS, false);
    finally
     l3Free(SPS);
    end;//try..finally
   end;//SPS = nil
  end;//SD <> nil
 end;//aSub.Exists
end;

procedure TevCustomSubPanel.NeedDrawSub(const aR   : Tl3Rect;
                                        const aSub : IevSub);
 {-}
var
 F         : Integer;
 i         : Byte;
 CN        : Il3Canvas;
 l_Rect    : Tl3SRect;
 l_SubIsVisible: Boolean;
begin
 if aSub.Exists {and aSub.IsVisibleOnSubPanel} then
 begin
  CN := Canvas;
  CN.BeginPaint;
  try
   CN.DrawEnabled := true;
   l_Rect.InitRect(ClientRect);
   {$IfNDef Nemesis}
   l_Rect.Inflate1(-Succ(BevelWidth));
   {$EndIf  Nemesis}
   with l_Rect do
    IntersectClipRect(CN.DC, Left, Top, Right, Bottom);
   AddSub(CN, aR, aSub.LayerID, aSub);
   F := aSub.Flags;
   l_SubIsVisible := aSub.IsVisibleOnSubPanel;
   if (F <> 0) then
    for i := 0 to 7 do
     if l3TestBit(F, i) then
      if (i = 0) or l_SubIsVisible then // 0 - колонка с номером блока/саба. Показываем всегда. 476366422 
       AddSub(CN, aR, -(aSub.LayerID*10+i), aSub);
  finally
   CN.EndPaint;
  end;//try..finanlly
 end;//aSub.IsValid
end;

procedure TevCustomSubPanel.DrawSubs(const Canvas: Il3Canvas);
  {-}
var
 CR  : Tl3Rect;

 function DrawSubLayer(SA: PevSubPanelSubArray; Index: Long): Bool;

 var
  SD  : TevSubDescriptor;

  function DrawSub(Sub: PevSubPanelSub; Index: Long): Bool; 
  begin
   if CR.IntersectsWith(Sub^.R) then
    Self.DrawSub(Canvas, SD, Sub^, true);
   Result := true;
  end;

 begin{DrawSubLayer}
  SD := SubDescriptors[SA^.Handle];
  if (SD <> nil) AND SD.Visible then
   SA^.IterateAllF(l3L2IA(@DrawSub));
  Result := true;
 end;{DrawSubLayer}

begin
 CR := Canvas.ClipRect;
 f_Subs.IterateAllF(l3L2IA(@DrawSubLayer));
end;

procedure TevCustomSubPanel.MakeSubRect(var R: Tl3Rect);
  {-}
var
 CR : Tl3SRect;
begin
 CR.InitRect(ClientRect);
 Case Orientation of
  ev_orHorizontal:
  begin
   with nev.CrtIC do
   begin
    Lock;
    try
     with R do
     begin
      Top := DP2LP(PointY(CR.Top)).Y;
      Bottom := DP2LP(PointY(CR.Bottom)).Y;
      Left := evPixelZoom(Zoom, Left);
      Right := evPixelZoom(Zoom, Right);
      {$IfNDef Nemesis}
      Inflate(DP2LP(PointY(-Succ(BevelWidth))));
      {$EndIf  Nemesis}
     end;//with R
    finally
     Unlock;
    end;//try..finally
   end;//with nev.CrtIC
  end;//ev_orHorizontal
  ev_orVertical:
  begin
   with nev.CrtIC do
   begin
    Lock;
    try
     with R do
     begin
      Left := DP2LP(PointX(CR.Left)).X;
      Right := DP2LP(PointX(CR.Right)).X;
      Top := evPixelZoom(Zoom, Top);
      Bottom := evPixelZoom(Zoom, Bottom);
      {$IfNDef Nemesis}
      Inflate(DP2LP(PointX(-Succ(BevelWidth))));
      {$EndIf  Nemesis}
     end;//with R
    finally
     Unlock;
    end;//try..finally
   end;//with nev.CrtIC
  end;//ev_orVertical
 end;//Case Orientation..
end;

procedure TevCustomSubPanel.DrawSub(const aCanvas : Il3Canvas;
                                    aSubDescr     : TevSubDescriptor;
                                    aSub          : TevSubPanelSub;
                                    aRealPaint    : Boolean);
var
 SDT        : TevSubDrawType;
 l_BmpIndex : TImageIndex;
 l_R        : Tl3Rect;
 H          : Tl3Handle;
 Str        : String;
 Ofs        : TevPixel;
 l_Block    : IevDocumentPart;
 l_Images   : TCustomImageList;
begin
 with aCanvas do
 begin
  Font := aSubDescr.Font;
  l_R := aSub.R;
  Ofs := DP2LP(PointX(aSubDescr.Offset)).X;
  Inc(l_R.R.Left, Ofs);
  Inc(l_R.R.Right, Ofs);
  H := aSub.Handle;
  SDT := aSubDescr.DrawType;
  Case SDT of
   ev_sdtNumber, ev_sdtChar, ev_sdtCharNumber:
   begin
    Str := '?';
    Case SDT of
     ev_sdtNumber : Str := IntToStr(H);
     ev_sdtCharNumber :
     begin
      H := aSubDescr.NumberOffset;
      if (H >= Low(Byte)) AND (H <= High(Byte)) then
       Str := Char(H);
     end;//ev_sdtCharNumber
     ev_sdtChar :
     begin
      Inc(H, aSubDescr.NumberOffset);
      if (H >= Low(Byte)) AND (H <= High(Byte)) then
       Str := Char(H);
     end;//ev_sdtChar
    end;//Case SDT
    l_R.R.BottomRight := l_R.TopLeft.Add(StringOut(l_R.TopLeft, l3PCharLen(Str)));
   end;//ev_sdtNumber, ev_sdtChar..
   ev_sdtBitmap:
   begin
    l_Images := aSubDescr.Images;
    if (l_Images = nil) then
     l_Images := SubDescriptors.Images;
    if (l_Images <> nil) then
    begin
     with aSubDescr do
     begin
      l_BmpIndex := BitmapIndex;
      if (f_BlockBitmapIndex >= 0) then
      begin
       if Supports(aSub.RealSub, IevDocumentPart) then
        try
         l_BmpIndex := f_BlockBitmapIndex;
        finally
         l_Block := nil;
        end;//try..finally
      end;// f_BlockBitmapIndex >= 0
      if (f_DocumentBitmapIndex >= 0) then
      begin
       if Supports(aSub.RealSub, IevDocument) then
        try
         l_BmpIndex := f_DocumentBitmapIndex;
        finally
         l_Block := nil;
        end;//try..finally
      end;// f_DocumentBitmapIndex >= 0
      if Assigned(f_OnGetBitmapIndex) then
       f_OnGetBitmapIndex(Self, Handle, H, l_BmpIndex, l_Images);
     end;//with aSubDescr
     if (l_BmpIndex >= 0) AND (l_Images <> nil) then
     begin
      with l_Images do
      begin
       if aRealPaint then
        with LP2DP(l_R.TopLeft) do
         Draw(Canvas, P.X, P.Y, l_BmpIndex);
       l_R.R.BottomRight := l_R.TopLeft.Add(DP2LP(l3SPoint(Width, Height)));
      end;//with l_Images
     end;//l_BmpIndex >= 0
    end;//l_Images <> nil
   end;//ev_sdtBitmap
   ev_sdtOwnerDraw:
    Self.DoDrawSub(Self, aCanvas, l_R, aSubDescr.Handle, aSub);
  end;//Case SDT
  aSub.DrawRect := l_R;
  if not aRealPaint then
   evInvalidateRect(Handle, l_R);
 end;//with aCanvas..
end;

function TevCustomSubPanel.ScrollSub(SPS: TevSubPanelSub; P : Tl3Point): Bool;
  {virtual;}
  {-}
var
 l_R : Tl3Rect;
begin
 Result := true;
 l_R := SPS.R;
 l_R.OffsetPt(P);
 with nev.CrtIC.LR2DR(l_R) do
 begin
  if ((R.Left < 0) AND (R.Right < 0)) OR
     ((R.Left > Width) AND (R.Right > Width)) OR
     ((R.Top < 0) AND (R.Bottom < 0)) OR
     ((R.Top > Height) AND (R.Bottom > Height)) then
   Result := false
  else
   SPS.R := l_R;
 end;//with pR^
 l_R := SPS.DrawRect;
 l_R.OffsetPt(P);
 with nev.CrtIC.LR2DR(l_R) do
 begin
  if ((R.Left < 0) AND (R.Right < 0)) OR
     ((R.Left > Width) AND (R.Right > Width)) OR
     ((R.Top < 0) AND (R.Bottom < 0)) OR
     ((R.Top > Height) AND (R.Bottom > Height)) then
   Result := false
  else
   SPS.DrawRect := l_R;
 end;//with pR^
end;

procedure TevCustomSubPanel.Scroll(iD: TevInch);
  {-}
var
 P  : Tl3SPoint;
 CR : Tl3SRect;
 iP : Tl3Point;

 procedure ScrollSubs;

  function ScrollSubLayer(SA: PevSubPanelSubArray; Index: Long): Bool; 
  var
   i : Long;
  begin{ScrollSubLayer}
   i := 0;
   while (i < SA^.Count) do
    if ScrollSub(SA^.Items[i], iP) then
     Inc(i)
    else SA^.Delete(i);
   Result := true;
  end;{ScrollSubLayer}

 begin{ScrollSubs}
  if (P.X <> 0) OR (P.Y <> 0) then
  begin
   Windows.ScrollWindow(Handle, P.X, P.Y, @CR, @CR);
   f_Subs.IterateAllF(l3L2IA(@ScrollSubLayer));
   Update;
  end;{(P.X <> 0)..}
 end;{ScrollSubs}

var
 D : TevPixel;
 S : Bool;
begin
 iD  := evPixelZoom(Zoom, iD);
 D := nev.CrtIC.LP2DP(l3PointX(iD)).X;
 CR.InitRect(ClientRect);
 {$IfNDef Nemesis}
 CR.Inflate1(-Succ(BevelWidth));
 {$EndIf  Nemesis}
 S := true;
 P := Point0; iP := evPoint0;
 Case Orientation of
  ev_orHorizontal :
   if (Abs(D) < (CR.R.Right - CR.R.Left)) then
   begin
    P.X := D;
    iP.X := iD;
   end
   else
    S := false;
  ev_orVertical   :
   if (Abs(D) < (CR.R.Bottom - CR.R.Top)) then
   begin
    P.Y := D;
    iP.Y := iD;
   end
   else
    S := false;
 end;//Case Orientation
 if S then
  ScrollSubs
 else
  ClearSubs;
end;

function TevCustomSubPanel.pm_GetZoom: SmallInt;
  {-}
begin
 Result := f_Zoom;
end;

procedure TevCustomSubPanel.pm_SetZoom(Value: SmallInt);
  {-}
begin
 if (Zoom <> Value) then
 begin
  f_Zoom := Value;
  ClearSubs;
 end;
end;

function TevCustomSubPanel.pm_GetSubDescriptors: TevCustomSubDescriptors;
  {-}
(*var
 l_SD : TevSubDescriptors;*)
begin
(* if (f_SubDescriptors = nil) then
 begin
  l_SD := TevSubDescriptors.Create(nil);
  try
   SubDescriptors := l_SD;
  finally
   l3Free(l_SD);
  end;//try..finally
 end;//f_SubDescriptors = nil*)
 // http://mdp.garant.ru/pages/viewpage.action?pageId=290953654
 // - не надо заглушки делать, усложняют они тут жизнь
 Result := f_SubDescriptors;
end;

procedure TevCustomSubPanel.pm_SetSubDescriptors(Value: TevCustomSubDescriptors);
  {-}
begin
 if (f_SubDescriptors <> Value) then
 begin
  if (f_SubDescriptors <> nil) then
   f_SubDescriptors.UnlinkControl(Self);
  l3Set(f_SubDescriptors, Value);
  if (f_SubDescriptors <> nil) then
   f_SubDescriptors.LinkControl(Self);
 end;//f_SubDescriptors <> Value
end;

// start class TevSubDescriptor 

constructor TevSubDescriptor.Create(anOwner: TObject);
  {override;}
  {-}
begin
 inherited;
 CheckFont;
 f_BitmapIndex := -1;
 f_BlockBitmapIndex := -1;
 f_DocumentBitmapIndex := -1;
 f_Visible := VisibleDef;
 f_Column := DefColumn;
end;

procedure TevSubDescriptor.Cleanup;
  {override;}
  {-}
begin
 l3Free(f_Font);
 inherited;
end;

function TevSubDescriptor.VisibleDef: Boolean;
  //virtual;
  {-}
begin
 Result := false;
end;

function TevSubDescriptor.VisibleStored: Boolean;
  {-}
begin
 Result := (f_Visible <> VisibleDef);
end;

function TevSubDescriptor.FontStored: Boolean;
  {-}
begin
 Result := (DrawType <> ev_sdtBitmap);
end;

function TevSubDescriptor.CursorStored: Boolean;
  {-}
begin
 Result := (f_Cursor <> crDefault) AND
           ((f_Owner = nil) OR (f_Owner.Cursor <> f_Cursor));
end;

procedure TevSubDescriptor.BuildColumns;
  {-}
begin
 if (f_Owner <> nil) then
  f_Owner.BuildColumns;
end;
  
function TevSubDescriptor.pm_GetHandle: Tl3Handle;
  {override;}
begin
 Result := f_Handle;
end;

procedure TevSubDescriptor.pm_SetHandle(Value: Tl3Handle);
  {override;}
  {-}
begin
 f_Handle := Value;
end;

function TevSubDescriptor.OCompare(anObject: TObject): Long;
  {override;}
  {-}
begin
     if (anObject Is Tl3Base) then
      Result := Handle - Tl3Base(anObject).Handle
     else
      Result := inherited OCompare(anObject);
end;

procedure TevSubDescriptor.Assign(P: TPersistent);
  {override;}
  {-}
var
 SD : TevSubDescriptor absolute P;
begin
 if (P Is TevSubDescriptor) then
 begin
  BitmapIndex := SD.BitmapIndex;
  BlockBitmapIndex := SD.BlockBitmapIndex;
  Font := SD.Font;
  DrawType := SD.DrawType;
  NumberOffset := SD.NumberOffset;
  f_Visible := SD.Visible;
  Offset := SD.Offset;
  BuildColumns;
 end;//P Is TevSubDescriptor
end;

procedure TevSubDescriptor.CheckFont;
  {-}
begin
 if (f_Font = nil) then
  f_Font := TevFont.Create;
end;

function TevSubDescriptor.OffsetStored: Boolean;
  {-}
begin
 Result := false;
 //Result := (f_Column = DefColumn) AND (f_Offset <> 0);
end;

function TevSubDescriptor.pm_GetFont: TevCustomFont;
  {-}
begin
 CheckFont;
 Result := f_Font;
end;

procedure TevSubDescriptor.pm_SetFont(Value: TevCustomFont);
  {-}
begin
 if (f_Font <> Value) then
 begin
  if (Value = nil) then
   l3Free(f_Font)
  else
   Font.Assign(Value);
 end;//f_Font <> Value
end;

procedure TevSubDescriptor.pm_SetVisible(Value: Boolean);
  {-}
begin
 if (f_Visible <> Value) then
 begin
  f_Visible := Value;
  BuildColumns;
 end;//f_Visible <> Value
end;

function  TevSubDescriptor.GetOwner: TPersistent;
  {override;}
  {-}
begin
 Result := f_Owner;
end;

procedure TevSubDescriptor.DoSetOwner(Value: TObject);
  {override;}
  {-}
begin
 f_Owner := Value As TevCustomSubDescriptors;
end;

// start class TevSubLayerDescriptor

function  TevSubLayerDescriptor.pm_GetFlag(Index: Integer): TevSubDescriptor;
  {-}
begin
 if (f_Owner = nil) then
  Result := nil
 else
  Result := f_Owner[-(Handle * 10 + Index)];
end;

procedure TevSubLayerDescriptor.pm_SetFlag(Index: Integer; Value: TevSubDescriptor);
  {-}
begin
 if (f_Owner <> nil) then
  f_Owner[-(Handle * 10 + Index)] := Value;
end;

function TevSubLayerDescriptor.VisibleDef: Boolean;
  //override;
  {-}
begin
 Result := true;
end;

// start class TevCustomSubDescriptors

procedure TevCustomSubDescriptors.Cleanup;
  {override;}
  {-}
begin
 l3Free(f_Controls);
 l3Free(f_SubDescriptors);
 inherited;
end;

procedure TevCustomSubDescriptors.Loaded;
  //override;
  {-}
begin
 inherited;
 BuildColumns;
end;

type
  TevSubData = class(Tl3CacheableBase)
    private
    // internal fields
      f_S : TevSubDescriptor;
      f_C : Integer;
    public
    // public methods
      function  OCompare(anObject: TObject): Long;
        override;
        {-}
  end;//TevSubData

function TevSubData.OCompare(anObject: TObject): Long;
  {override;}
  {-}
begin
     if (anObject Is TevSubData) then
      Result := (f_C - TevSubData(anObject).f_C)
     else
      Result := inherited OCompare(anObject);
end;

procedure TevCustomSubDescriptors.BuildColumns;
  {-}

var
 l_OfsL  : Tl3ObjectRefList;
 l_C     : Integer;

 procedure DoSub(aSub: TevSubDescriptor);
 var
  l_SD : TevSubData;
 begin//DoSub
  if aSub.Visible then
  begin
   l_SD := TevSubData.Create;
   try
    l_SD.f_C := aSub.Column;
    if (l_SD.f_C = DefColumn) then
    begin
     l_SD.f_C := l_C;
     Dec(l_C);
    end;//l_SD.f_C = DefColumn
    l_SD.f_S := aSub;
    if (l_OfsL = nil) then
     l_OfsL := Tl3ObjectRefList.MakeSorted;
    l_OfsL.Add(l_SD);
   finally
    l3Free(l_SD);
   end;//try..finally
  end;//aSub.Visible
 end;//DoSub

var
 l_SL     : TevSubLayerDescriptor;
 l_S      : TevSubDescriptor;
 l_Index  : Integer;
 l_F      : Integer;
 l_Ofs    : Integer;
 l_Images : TCustomImageList;
 l_IC     : Il3InfoCanvas;
begin
 if not (csLoading in ComponentState) then
 begin
  if not f_InBuild then
  begin
   f_InBuild := true;
   try
    l_OfsL := nil;
    try
     l_C := DefColumn;
     for l_Index := ev_sbtMark downto ev_sbtSub do
     begin
      l_SL := TevSubLayerDescriptor(SubDescriptor[l_Index]);
      if (l_SL <> nil) then
      begin
       for l_F := 7 downto 0 do
       begin
        l_S := l_SL.Flags[l_F];
        if (l_S <> nil) then
         DoSub(l_S);
       end;//for l_F
       DoSub(l_SL);
      end;//l_SL <> nil
     end;//for l_Index
     if (l_OfsL = nil) then
      f_Width := 0
     else
     begin
      l_Ofs := 3{0};
      with l_OfsL do
       for l_Index := Lo to Hi do
       begin
        l_S := TevSubData(Items[l_Index]).f_S;
        l_S.Offset := l_Ofs;
        Inc(l_Ofs, 1);
        Case l_S.DrawType of
         ev_sdtBitmap:
         begin
          l_Images := l_S.Images;
          if (l_Images = nil) then
           l_Images := Images;
          if (l_Images <> nil) AND
             ((l_S.BitmapIndex >= 0) OR (l_S.BlockBitmapIndex >= 0) OR
              Assigned(l_S.f_OnGetBitmapIndex)) then
          begin
           Inc(l_Ofs, l_Images.Width + 2);
           if (l_Images.Width >= 10) then
            Inc(l_Ofs);
          end;//l_Images <> nil
         end;//ev_sdtBitmap
         ev_sdtOwnerDraw :
          ;
         ev_sdtNumber:
         begin
          if (l_IC = nil) then
           l_IC := nev.CrtIC;
          l_IC.Font := l_S.Font;
          Inc(l_Ofs, 12 * l_IC.pxAverageCharWidth);
         end;//ev_sdtNumber
         else
         begin
          if (l_IC = nil) then
           l_IC := nev.CrtIC;
          l_IC.Font := l_S.Font;
          Inc(l_Ofs, l_IC.pxAverageCharWidth + 2);
         end;//else
        end;//Case l_S.DrawType
       end;//for l_Index
      f_Width := l_Ofs;
     end;//l_OfsL <> nil
     PlaceControls;
    finally
     l3Free(l_OfsL);
    end;//try..finally
   finally
    f_InBuild := false;
   end;//try..finally
  end;//not f_InBuild
 end;//not (csLoading in ComponentState)
end;

procedure TevCustomSubDescriptors.LinkControl(aControl: TControl);
  {-}
begin
 if (aControl <> nil) then
 begin
  if (f_Controls = nil) then
   f_Controls := Tl3ObjectList.Make;
  f_Controls.Add(aControl);
  PlaceControl(aControl);
 end;//aControl <> nil
end;

procedure TevCustomSubDescriptors.UnlinkControl(aControl: TControl);
  {-}
begin
 if (f_Controls <> nil) then
  f_Controls.Remove(aControl);
end;

procedure TevCustomSubDescriptors.PlaceControls;
  {-}
var
 l_Index : Integer;  
begin
 if (f_Controls <> nil) then
  with f_Controls do
   for l_Index := Lo to Hi do
    PlaceControl(TControl(Items[l_Index]));
end;

procedure TevCustomSubDescriptors.PlaceControl(aControl: TControl);
  {-}
begin
 with aControl do
 begin
  Width := Max(DefSubPanelWidth, f_Width);
  Invalidate;
 end;//with aControl
end;

function TevCustomSubDescriptors.pm_GetSubDescriptor(Index: Integer): TevSubDescriptor;
var
 SD : TevSubDescriptor;
 i  : Long;
begin
 Result := nil;
 if (f_SubDescriptors <> nil) AND f_SubDescriptors.FindData(Index, i) then
   Result := TevSubDescriptor(f_SubDescriptors.Items[i]);
 if (Result = nil) then
 begin
  if (f_SubDescriptors = nil) then
   f_SubDescriptors := Tl3ObjectWithHandleRefList.MakeSorted;
  if (Index > 0) then
   SD := TevSubLayerDescriptor.Create(Self)
  else
   SD := TevSubDescriptor.Create(Self);
  try
   SD.Handle := Index;
   f_SubDescriptors.Add(SD);
  finally
   Result := SD.Free;
  end;//try..finally
 end;
end;

procedure TevCustomSubDescriptors.pm_SetSubDescriptor(Index: Integer; Value: TevSubDescriptor);
  {-}
begin
 if (Value <> nil) then
  SubDescriptor[Index].Assign(Value);
end;

function TevCustomSubDescriptors.pm_GetSubLayerDescriptor(Index: Integer): TevSubLayerDescriptor;
  {-}
begin
 if (Index > 0) then
  Result := TevSubLayerDescriptor(SubDescriptor[Index])
 else
  Result := nil;
end;

procedure TevCustomSubDescriptors.pm_SetSubLayerDescriptor(Index: Integer; Value: TevSubLayerDescriptor);
  {-}
begin
 SubDescriptor[Index] := Value;
end;

procedure TevCustomSubDescriptors.pm_SetImages(Value: TCustomImageList);
  {-}
begin
 if (f_Images <> Value) then
  f_Images := Value;
end;

end.

