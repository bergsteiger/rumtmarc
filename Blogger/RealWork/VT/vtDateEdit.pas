unit vtDateEdit;

{$DEFINE TodayPadPresent}

{ $Id: vtDateEdit.pas,v 1.102 2013/05/07 11:51:20 morozov Exp $ }

// $Log: vtDateEdit.pas,v $
// Revision 1.102  2013/05/07 11:51:20  morozov
// {RequestLink:453150723}
//
// Revision 1.101  2013/04/24 09:35:37  lulin
// - портируем.
//
// Revision 1.100  2013/04/12 16:25:07  lulin
// - отлаживаем под XE3.
//
// Revision 1.99  2013/04/05 12:02:45  lulin
// - портируем.
//
// Revision 1.98  2013/01/22 15:51:48  kostitsin
// [$424399029]
//
// Revision 1.97  2012/10/05 09:43:54  fireton
// - если сработало событие на невалидную дату, не делаем ничего дальше в CMExit
//
// Revision 1.96  2011/05/06 14:28:10  lulin
// - правим IfDef'ы.
//
// Revision 1.95  2011/02/17 09:59:59  lulin
// {RequestLink:253659765}.
// - вычищаем мусорок.
//
// Revision 1.94  2010/09/28 08:26:49  dinishev
// [$235057525]. Не падаем.
//
// Revision 1.93  2010/03/11 15:13:44  lulin
// {RequestLink:196969151}.
// - избавляемся от ненужных зависимостей от VCM.
//
// Revision 1.92  2010/03/03 16:52:37  lulin
// {RequestLink:193825692}.
//
// Revision 1.91  2010/03/03 13:03:00  lulin
// {RequestLink:193825692}.
//
// Revision 1.90  2010/03/03 12:37:13  lulin
// {RequestLink:193825692}.
//
// Revision 1.89  2010/03/03 12:12:50  lulin
// {RequestLink:193825692}.
//
// Revision 1.88  2009/09/10 11:15:10  lulin
// - переносим на модель обработчик неверной даты.
//
// Revision 1.87  2009/02/27 10:59:28  oman
// - fix: Рюшки при вычислении ширины (К-137463778)
//
// Revision 1.86  2008/11/12 15:03:15  voba
// - change comment
//
// Revision 1.85  2008/06/19 10:27:47  lulin
// - <K>: 94732524.
//
// Revision 1.84  2008/06/18 14:44:28  voba
// - enh. TvtForm наследуем от Tl3Form
//
// Revision 1.83  2008/03/20 09:48:23  lulin
// - cleanup.
//
// Revision 1.82  2007/08/01 07:40:24  oman
// - new: Изменения во внешнем виде (cq26127)
//
// Revision 1.81  2007/04/09 06:27:51  lulin
// - используем родные метки и панели.
//
// Revision 1.80  2007/03/14 13:07:43  lulin
// - bug fix: не рисовались дни недели.
//
// Revision 1.79  2007/03/14 12:27:26  lulin
// - не записываем мусор.
//
// Revision 1.78  2007/02/12 16:40:32  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.77  2007/01/22 15:19:51  oman
// - new: Локализация библиотек - vt (cq24078)
//
// Revision 1.76  2007/01/17 13:50:40  oman
// - new: Локализация библиотек - vt (cq24078)
//
// Revision 1.75  2006/12/15 11:30:43  lulin
// - добавлена картинка со счетчиком ссылок.
//
// Revision 1.74  2006/06/09 06:34:01  oman
// - fix: Не собиралась библиотека
//
// Revision 1.73  2006/06/09 05:06:22  mmorozov
// - new behaviour: при вставке из буфера в качестве символов разделителей даты могут выступать любые символы кроме цифр (CQ: OIT500021261);
//
// Revision 1.72  2006/06/08 13:38:06  lulin
// - подготавливаем контролы к обработке числа повторений нажатия клавиши.
//
// Revision 1.71  2006/04/14 13:40:27  lulin
// - запрещаем перекрывать деструктор.
//
// Revision 1.70  2006/01/16 11:02:57  mmorozov
// change: форма календаря использует компонент TDblClickPopupCalendar (CQ: 00018465);
//
// Revision 1.69  2005/12/01 12:54:01  mmorozov
// - rename: l3CorrectDaysInDate -> l3CorrectDate;
//
// Revision 1.68  2005/11/03 10:27:09  mmorozov
// new behaviour: компонент сообщает, что вставку он обрабатывает самостоятельно;
//
// Revision 1.67  2005/09/14 13:17:05  voba
// - add  procedure   ClearDate;
//
// Revision 1.66  2005/09/08 15:36:04  dinishev
// Наследование TevPopupCalendar от TPanelCalendar для исключение дублирующего кода
//
// Revision 1.65  2005/09/08 12:59:25  fireton
// - bug fix: на NT надписи были не в русском charset'e
//
// Revision 1.64  2005/07/07 13:46:51  mmorozov
// bugfix: вернул потерянные иконки;
//
// Revision 1.63  2005/06/28 13:37:32  mmorozov
// - merge с веткой BNEMESIS_6_2;
//
// Revision 1.62.2.1  2005/06/28 13:12:16  mmorozov
// bugfix: наличие не благополучной иконки в ImageList-е приводило к невозможности загрузки из потока ImageList-а на WIN95;
//
// Revision 1.62  2005/04/28 15:03:57  lulin
// - переложил ветку B_Tag_Box в HEAD.
//
// Revision 1.61  2005/04/25 13:40:03  fireton
// - change: перевел свойство RestrictInvalidDate в public
//
// Revision 1.60  2005/04/21 12:42:27  mmorozov
// new: TvtBeforeCorrectDate, g_vtBeforeCorrectDate - для централизованного вывода сообщения перед корректировки даты;
//
// Revision 1.59.2.1  2005/04/22 10:02:22  mmorozov
// - merge с HEAD;
//
// Revision 1.60  2005/04/21 12:42:27  mmorozov
// new: TvtBeforeCorrectDate, g_vtBeforeCorrectDate - для централизованного вывода сообщения перед корректировки даты;
//
// Revision 1.59  2005/04/13 14:18:51  demon
// - new behavior: Для события OnAutoCorrectDate сделан триггер
//
// Revision 1.58  2005/04/13 13:18:33  fireton
// - bug fix: исправлена проверка на полное заполнение даты при наборе
//
// Revision 1.57  2005/04/13 12:11:52  fireton
// - change: автоматически корректируем дату, если пользователь ввел ее полностью
// - add: new event OnAutoCorrectDate
//
// Revision 1.56  2005/01/21 14:57:17  am
// new: TvtDblClickDateEdit, TDblClickPopupCalendar - наследники от _TvtDateEdit, TPopupCalendar соответственн для реализации календаря с возможностью выбора Second Single click'ом + ряд визуальных изменений. Часть функциональность родителей выделена в виртуальные функции, перекрытые в потомке.
//
// Revision 1.55  2004/11/02 09:48:56  fireton
// - bug fix: не работал ввод даты с помощью клавиатуры (календарик не реагировал на Enter)
//
// Revision 1.54  2004/09/14 13:07:35  am
// change: при фильтрации даты всегда даём вводить первый символ (дня, месяца или года)
//
// Revision 1.53  2004/08/24 14:32:16  am
// new: TvtCalendarForm - форма с лежащим на ней календариком.
//
// Revision 1.52  2004/08/18 08:46:19  voba
// - disable uses Themes for D6
//
// Revision 1.51  2004/08/17 14:21:11  fireton
// - bug fix: очищаем поле ввода перед вставкой из буфера чтобы избежать артефактов
//
// Revision 1.50  2004/08/17 14:13:49  fireton
// - календарик теперь поддерживает темы Windows XP
// - bug fix: правильный ресайз кнопки у TvtCustomCombo
//
// Revision 1.49  2004/08/11 10:39:53  mmorozov
// bugfix: method _TvtCustomDateEdit.AutoResize;
//
// Revision 1.48  2004/08/06 09:47:43  fireton
// - bug fix: принудительно убираем фокус из контрола перед нажатием на Enter и возвращаем его обратно после обработки (CQ8342)
//
// Revision 1.47  2004/08/04 12:07:58  am
// change: вытащил RestrictInvalidDate в published
//
// Revision 1.46  2004/08/04 11:17:09  am
// change: вместо наследника TvtSmartDateEdit сделал свойство RestrictInvalidDate в _TvtDateEdit (по умолчанию False)
//
// Revision 1.45  2004/08/04 10:53:54  am
// change: TvtSmartDateEdit - контрол с запретом ввода некорректной даты
//
// Revision 1.44  2004/07/30 13:07:05  am
// change: перенёс лок уровнем выше (vtCombo)
//
// Revision 1.43  2004/07/30 11:46:12  mmorozov
// new: _TvtCustomDateEdit.WMNCPaint, WMPaint, IsLockPaint (для замораживания отрисовки);
//
// Revision 1.42  2004/06/28 16:11:27  mmorozov
// bugfix: событие OnInvalidDate генерируется при выходе из компонента , а не при вводе каждого символа;
//
// Revision 1.41  2004/06/28 15:14:14  mmorozov
// new: function _TvtCustomDateEdit.IsBlank;
//
// Revision 1.40  2004/06/01 15:17:55  law
// - удалены конструкторы Tl3VList.MakeLongint, MakeLongintSorted - пользуйтесь _Tl3LongintList.
// - подчистил Archi, за сегодняшними переделками Димона.
//
// Revision 1.39  2004/05/28 09:38:10  demon
// - fix: событие от колеса мыши прокидываем Parent с помощью _Send, а не Post.
//
// Revision 1.38  2004/05/28 09:31:35  fireton
// - change: WM_MOUSEWHEEL теперь отдается Parent'у
//
// Revision 1.37  2004/05/05 14:30:56  voba
// no message
//
// Revision 1.36  2004/04/21 07:42:18  voba
// - выставление текущего буквой Т но в русской раскладке
//
// Revision 1.35  2004/04/01 14:25:53  fireton
// - new: добавлен эвент - OnInvalidDate
//
// Revision 1.34  2004/03/31 13:32:59  mmorozov
// rewrite: _TvtCustomDateEdit.IsValid;
//
// Revision 1.33  2004/02/26 14:37:27  fireton
// - замена проверки при входе в контрол
//
// Revision 1.32  2004/02/25 08:07:45  fireton
// - change behaviour: если дата не обозначена, то при получении фокуса курсор ставится в первую позицию
//
// Revision 1.31  2004/02/04 09:23:31  mmorozov
// new: из _TvtCustomDateEdit удалены изменения Морозова;
//
// Revision 1.30  2004/02/04 08:51:47  mmorozov
// new: property _TvtCustomDateEdit.IsRaiseIfNotValid;
//
// Revision 1.29  2004/01/21 13:09:42  fireton
// - fix: поведение календарика при нажатии Enter и рамочка
//
// Revision 1.28  2004/01/21 13:03:00  mmorozov
// no message
//
// Revision 1.27  2004/01/16 15:36:10  mmorozov
// new behaviour: при установке Text = '' устанавливаем в поле ввода маску (метод _TvtCustomDateEdit.CMTextChanged);
//
// Revision 1.26  2004/01/16 12:35:38  fireton
// - fix: пофиксено поведение меню (выбор года) при приближении к краю экрана
//
// Revision 1.25  2004/01/16 12:21:34  fireton
// - add: добавлен {$DEFINE TodayPadPresent} отвечающий за панель
//   с сегодняшней датой внизу календарика
// - fix: поправлена отрисовка
//
// Revision 1.24  2004/01/13 08:18:29  mmorozov
// new: вызываем OnExecute если пользователь выбрал значение из выпадающего окна;
//
// Revision 1.23  2004/01/08 19:00:49  mmorozov
// new: класс EvtDateEdit;
// new: property OnExecute - вызывается при нажитии кнопки Enter, если событие определено и значение даты не верное, то генерируется исключение;
// new: public functon _TvtCustomDateEdit.IsValid;
//
// Revision 1.22  2003/12/17 14:38:43  voba
// - bug fix
//
// Revision 1.21  2003/12/16 10:25:15  fireton
// - feature added: добавлен метод AutoResize для подгонки размеров контрола по текущему шрифту
//
// Revision 1.20  2003/12/16 09:38:32  fireton
// - bugfix: нормальная прорисовка календарного попапа под темами XP (не очень, правда, корректное решение)
//
// Revision 1.19  2003/12/10 12:20:47  fireton
// update: popup корректно масштабируется при больших шрифтах в системе
//
// Revision 1.18  2003/12/10 10:32:20  fireton
// added feature: добавлены кнопки "сегодня" и "отмена"
//
// Revision 1.17  2003/12/09 07:48:17  mmorozov
// - при клике на не клиентской области, в процедуре CloseUp производилась работа с fCalendarPanel = nil;
//
// Revision 1.16  2003/12/05 11:31:28  fireton
// - update: теперь можно выбрать год из списка
//
// Revision 1.15  2003/12/04 14:57:33  fireton
// - update: месяц теперь можно выбрать из выпадающего списка
//
// Revision 1.14  2003/04/19 11:24:49  law
// - new file: vtDefine.inc.
//
// Revision 1.13  2002/02/05 15:16:49  voba
// no message
//
// Revision 1.12  2001/11/05 16:19:54  voba
// no message
//
// Revision 1.11  2001/09/21 12:52:43  narry
// - change: часть функций перетащено из RX.
//
// Revision 1.10  2001/09/13 12:36:11  narry
// -update
//
// Revision 1.9  2001/08/29 15:36:27  law
// - cleanup: удалены ненужные зависимости от Orpheus и SysTools.
//
// Revision 1.8  2001/05/18 06:14:25  voba
// no message
//
// Revision 1.7  2001/04/05 13:58:33  voba
// new behavior : _TvtDateEdit
//
// Revision 1.6  2001/01/17 11:59:20  voba
// no message
//
// Revision 1.5  2000/12/15 15:36:29  law
// - вставлены директивы Log.
//

{$Include vtDefine.inc }
{$Define SupportStDate}

interface

uses
  Windows,
  Messages,
  SysUtils,
  Buttons,
  Menus,
  Classes,
  Controls,
  ExtCtrls,
  Graphics,

  l3Types,
  l3Date,

  vtStdRes,
  vtForm,
  vtCombo,
  vtPanel,

  CalPanel
  ;

 Type
  //TvtOnAcceptDate = procedure(Sender: TObject; var ADate: TDateTime; var Action: Boolean) of object;
  TYearDigits = (dyDefault, dyFour, dyTwo);

  TvtOnApplyDate  = function (aSender: TObject; var aValue : TDateTime) : boolean of object;
  TvtOnAppliedDate = procedure (aSender: TObject; aValue : TDateTime) of object;

  EvtDateEdit = class(Exception);

  TvtCustomDateEdit = class(TvtCustomCombo)
   private
    FHooked            : Boolean;
    fOnApplyDate       : TvtOnApplyDate;
    fOnAppliedDate     : TvtOnAppliedDate;
    FOnAutoCorrectDate : TNotifyEvent;
    fOnExecute         : TNotifyEvent;

    {FDefaultToday : Boolean;}

    //FPopupColor   : TColor;
    FRestrictInvalidDate : Boolean;
    FBlanksChar   : Char;
    FStartOfWeek  : TStDayType;

    FWeekends: TDaysOfWeek;
    FWeekendColor: TColor;
    FYearDigits: TYearDigits;

    FCheckOnExit: Boolean;
    FDateFormat: string[10];
    FFormatting: Boolean;

    //fDate : TDateTime;
    FOnInvalidDate: TNotifyEvent;
    //fDirectInput   : Boolean;
    function  GetDate: TDateTime;
    procedure SetDate(Value: TDateTime);
    {$IfDef SupportStDate}
    function  GetStDate: TStDate;
    procedure SetStDate(Value: TStDate);
    {$EndIf}
    procedure SetYearDigits(Value: TYearDigits);
    {function  GetPopupColor: TColor;
    procedure SetPopupColor(Value: TColor);}
    procedure SetWeekendColor(Value: TColor);
    procedure SetWeekends(Value: TDaysOfWeek);
    procedure SetStartOfWeek(Value: TStDayType);
    procedure SetBlanksChar(Value: Char);
    function  TextStored: Boolean;
    function  FourDigitYear: Boolean;
    function  FormatSettingsChange(var Message: TMessage): Boolean;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
  protected
    fCalendarPanel : TWinControl;

    function  ProcessCommand(Cmd    : Tl3OperationCode;
                             aForce : Boolean;
                             aCount : Integer): Boolean;
      override;
      {* - централизованная обработка ShortCut-ов. }
    procedure TriggerAutoCorrectDate;
      virtual;
      {* - сообщает об автокоррекции. }
    function TriggerOnInvalidDate: Boolean; virtual;
      {* - возникает при неправильно введенной дате при выходе из компонента. }
    procedure DoExecute; virtual;
    procedure ActionChange(Sender: TObject; CheckDefaults: Boolean);
      override;
    function  GetDropDownContainer: TWinControl;
      override;
    procedure MakeCalendar;
      virtual;
      {-}
    procedure Change;
      override;
    procedure KeyDown(var Key: Word; Shift: TShiftState);
      override;
    procedure KeyPress(var Key: Char);
      override;
    procedure CreateWindowHandle(const Params: TCreateParams);
      override;
    procedure DestroyWindowHandle;
      override;
    {$IfNDef DesignTimeLibrary}
    {$IfDef l3HackedVCL}
    function TextFromClipboard: String;
      override;
    {$EndIf l3HackedVCL}
    {$EndIf DesignTimeLibrary}
    ///function  AcceptPopup(var Value: Variant): Boolean; override;
    ///procedure AcceptValue(const Value: Variant); override;
    ///procedure SetPopupValue(const Value: Variant); override;
    function  GetDateFormat: string;
    procedure ApplyDate(Value: TDateTime); virtual;
    {$IfDef Delphi7}
    procedure UpdateButtonPosition; override;
    {$EndIf Delphi7}
    ///function  GetDefaultBitmap(var DestroyNeeded: Boolean): TBitmap; override;
    procedure UpdateFormat;
    procedure WMMouseWheel(var Message: TMessage); message WM_MOUSEWHEEL;
    procedure WMPaste(var Message: TMessage); message WM_PASTE;
   //// procedure UpdatePopup;
    ///procedure ButtonClick; override;
    property  BlanksChar: Char read FBlanksChar write SetBlanksChar default ' ';
    property  CheckOnExit: Boolean read FCheckOnExit write FCheckOnExit default False;
    ///property  DefaultToday: Boolean read FDefaultToday write FDefaultToday default False;
    property  EditMask stored False;
    property  Formatting: Boolean read FFormatting;
    ///property  GlyphKind default gkDefault;

    ///property  PopupColor: TColor read GetPopupColor write SetPopupColor default clBtnFace;
    property  StartOfWeek: TStDayType read FStartOfWeek write SetStartOfWeek default Monday;
    property  Weekends: TDaysOfWeek read FWeekends write SetWeekends default [Sunday];
    property  WeekendColor: TColor read FWeekendColor write SetWeekendColor default clRed;
    property  YearDigits: TYearDigits read FYearDigits write SetYearDigits default dyDefault;

    property  OnApplyDate : TvtOnApplyDate read fOnApplyDate write fOnApplyDate;
    property  OnAppliedDate : TvtOnAppliedDate read fOnAppliedDate write fOnAppliedDate;
    property  OnAutoCorrectDate: TNotifyEvent read FOnAutoCorrectDate write FOnAutoCorrectDate;

    property  MaxLength stored False;
    property  Text stored TextStored;
    property  OnExecute: TNotifyEvent
      read fOnExecute
      write fOnExecute;
      {-}
    property  OnInvalidDate: TNotifyEvent
      read FOnInvalidDate
      write FOnInvalidDate;
      {-}
    procedure Cleanup;
      override;
      {-}
  public
    constructor Create(AOwner: TComponent);
      override;
    procedure   CheckValidDate;

    function    GetDateMask: string;
    procedure   UpdateMask; virtual;
    procedure   ClearDate;

    function    IsValid: Boolean;
      {* - введенная дата не является допустимой. Пустой бланк "__.__.____"
           тоже воспринимается как неверная дата. }
    function    IsEmpty : Boolean;
      {* - False, только когда введена верная дата.
           Пустой бланк "__.__.____" воспринимается как неверная дата. }
    function    IsBlank : Boolean;
      {* - пользователь ничего не ввел в поле редактирования ("__.__.____"). }

    procedure   DropDown;
      override;
    procedure   CloseUp(Accept: Boolean);
      override;
    procedure   AutoResize;

    property    Date: TDateTime read GetDate write SetDate;
    // запрет ввода неправильной даты
    property RestrictInvalidDate: Boolean read FRestrictInvalidDate write FRestrictInvalidDate default False;
    {$IfDef SupportStDate}
    property    StDate: TStDate
      read GetStDate
      write SetStDate;
      {-}
    {$EndIf}
  end;//TvtCustomDateEdit

  TvtDateEdit = class(TvtCustomDateEdit)
  published

    {$ifdef Delphi4}
    property Text;

    property Anchors;
    property BiDiMode;
    property Constraints;
    property ParentBiDiMode;
    {$endif}

    ///property UnboundAlignment;
    property AlignmentVertical;
    property AllowClearKey;
    ///property AutoDropDown;
    property AutoSelect;
    property AutoSize;
    property ShowButton;
    property BorderStyle;
    property ButtonStyle
      default cbsDefault;
    property CharCase;
    property CheckOnExit;
    property Color;
    property Ctl3D;
    property DragMode;
    property DragCursor;
    ///property DropDownCount;
    ///property DropDownWidth;
    property Enabled;
    property Font;
    {$ifdef Delphi3}
    property ImeMode;
    property ImeName;
    {$endif}

    property Images;
    property ImageIndex
      default vt_imgCalendar;

    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    property RestrictInvalidDate;
    property ShowHint;
    property Style default csDropDownList;
    property TabOrder;
    property TabStop;
    property Visible;

    property OnApplyDate;
    property OnAppliedDate;
    property OnAutoCorrectDate;
    property OnChange;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnDropDown;
    property OnCloseUp;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
    property OnExecute;
    property OnInvalidDate;
  end;//TvtDateEdit

  TvtDblClickDateEdit = class(TvtDateEdit)
    procedure MakeCalendar;
      override;
      {-}
  end;//TvtDblClickDateEdit

  TvtCalendarForm = class(TvtForm)
  private
    fCalendar   : TWinControl;
    fDateFormat : string[10];
    fDateText   : string;
    
    procedure SetDateText(const Value: string);
  protected
    procedure WndProc(Var Msg: TMessage);
      override;
      {-}
  public
    {$IfDef DesignTimeLibrary}
    procedure AfterConstruction;
    {$Else  DesignTimeLibrary}
    procedure InitFields;
    {$EndIf DesignTimeLibrary}
      override;
      {-}
    property DateText: string
      read fDateText
      write SetDateText;
      {-}
  end;//TvtCalendarForm

type
  TvtBeforeCorrectDate = procedure (const aDate : AnsiString) of object;
    {* - процедура обработки неверного значения даты. }

var
  g_vtBeforeCorrectDate : TvtBeforeCorrectDate = nil;
    {* - используется для общности вывода сообщения, для всех календарей
         системы. Имеет приоритет перед обработчиком экземпляра
         TvtDateEdit.OnAutoCorrectDate. }

type
  TPopupCalendar = class(TvtPanel)
  private
    fTitlePanel : TvtPanel;
    FMonthLabel : TSpeedButton;
    FYearLabel  : TSpeedButton;
    FMonthMenu  : TPopupMenu;
    FYearMenu   : TPopupMenu;
    fFourDigitYear: Boolean;
    //fBtns: array[0..3] of TTimerSpeedButton;
    procedure CalendarMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer); virtual;
    procedure PrevMonthBtnClick(Sender: TObject);
    procedure NextMonthBtnClick(Sender: TObject);
    procedure PrevYearBtnClick(Sender: TObject);
    procedure NextYearBtnClick(Sender: TObject);
    procedure CalendarChange(Sender: TObject);
    procedure TopPanelDblClick(Sender: TObject);
    procedure SetDate(DT : TDateTime);
    function  GetDate : TDateTime;
    procedure MonthClick(Sender: TObject);
    procedure MonthMenuSelect(Sender: TObject);
    procedure YearClick(Sender: TObject);
    procedure YearMenuSelect(Sender: TObject);
  protected
    fCalendar : TCalendarPanel;
    MenuOpen  : Boolean;
    procedure CancelClick(Sender: TObject);
      virtual;
      {-}
    procedure ClickToday(Sender: TObject);
      virtual;
      {-}
    procedure CreateParams(var Params: TCreateParams);
      override;
      {-}
    ///procedure KeyPress(var Key: Char); override;
    {function GetValue: Variant; override;
    procedure SetValue(const Value: Variant); override;}

    procedure MakeTodayPad;
      virtual;
      {-}
    function CalcTodayPadWidth: Integer;
      virtual;
      {-}
    procedure AdjustTitleButtonFont(const aLabel: TSpeedButton);
      virtual;
      {-}
  public
    procedure KeyDown(var Key: Word; Shift: TShiftState);
      override;
      {-}
    constructor Create(AOwner: TComponent);
      override;
      {-}
    property Date: TDateTime
      read GetDate
      write SetDate;
      {-}
  end;//TPopupCalendar

  TDblClickPopupCalendar = class(TPopupCalendar)
  protected
    procedure OKClick(Sender: TObject);
      virtual;
      {-}
    procedure MakeTodayPad;
      override;
      {-}
    function CalcTodayPadWidth: Integer;
      override;
      {-}
    procedure CalendarMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
      override;
      {-}
    procedure AdjustTitleButtonFont(const aLabel: TSpeedButton);
      override;
      {-}
  end;//TDblClickPopupCalendar
         
implementation

uses
  Forms,
  StdCtrls,
  DateUtils,
  Mask,
  MaskUtils,
  ImgList,
  ActnList,
  {$ifDef XE}
  VCL.Samples.Spin,
  {$Else}
  Spin,
  {$EndIf}
  Clipbrd,
  Math,

  OvcConst,

  l3String,

  vtInterfaces,
  vtCtrls,
  vtLabel

  {$IfDef Delphi7}
  ,
  Themes
  {$EndIf Delphi7}

  ,
  vtDateEditRes,

  l3StringIDEx
  ;

{$R calendar.RES}

type
  THackCalendarPanel = class(TCalendarPanel);

const
  SBtnGlyphs: array[0..3] of PChar = ('VTPREV2', 'VTPREV1', 'VTNEXT1', 'VTNEXT2');

procedure FontSetDefault(AFont: TFont);
var
  NonClientMetrics: TNonClientMetrics;
begin
  NonClientMetrics.cbSize := SizeOf(NonClientMetrics);
  if SystemParametersInfo(SPI_GETNONCLIENTMETRICS, 0, @NonClientMetrics, 0)
   then
    AFont.Handle := CreateFontIndirect(NonClientMetrics.lfMessageFont)
   else
    with AFont do
    begin
     Color := clWindowText;
     Name := 'MS Sans Serif';
     Size := 8;
     Style := [];
    end;//with AFont
  AFont.Size := 10;
end;

{TPopupCalendar}

const
  imap_vt_MonthsCaptions : array [TvtMonths] of Pl3StringIDEx = (
   @str_vtJanuary,
   @str_vtFebruary,
   @str_vtMarch,
   @str_vtApril,
   @str_vtMay,
   @str_vtJune,
   @str_vtJuly,
   @str_vtAugust,
   @str_vtSeptember,
   @str_vtOctober,
   @str_vtNovember,
   @str_vtDecember
  );

constructor TPopupCalendar.Create(AOwner: TComponent);
const
  BtnSide = 21;
  cBevelWidth = 2;
var
 I: Integer;
 MItem: TMenuItem;
begin
  inherited Create(AOwner);
  FFourDigitYear := FourDigitYear;
  I := Screen.PixelsPerInch;
  {$IFDEF TodayPadPresent}
  Height := Round(1.875*I);
  {$ELSE}
  Height := Round(1.6145833333333333333333333333333*I);
  {$ENDIF}
  {$IFDEF TodayPadPresent}
  Width := Max(Round(2.0104166666666666666666666666667*I), CalcTodayPadWidth + 2*cBevelWidth);
  {$ELSE}
  Width := Round(2.0104166666666666666666666666667*I);
  {$ENDIF}
  Color := clBtnFace;
  FontSetDefault(Font);
  Font.Charset := RUSSIAN_CHARSET; // чтоб на NT-ях правильно все рисовалось
  ShowHint := True;

  ControlStyle := ControlStyle + [csReplicatable];

  BevelInner := bvNone;
  BevelOuter := bvRaised;
  BevelWidth := cBevelWidth;

  FTitlePanel := TvtPanel.Create(Self);
  with FTitlePanel do
  begin
    Parent := Self;
    Align := alTop;
    Width := Self.Width - 4;
    Height := 23;
    BevelOuter := bvNone;
    ParentColor := True;
    OnDblClick := TopPanelDblClick;
    ControlStyle := ControlStyle + [csReplicatable];
  end;

  {$IFDEF TodayPadPresent}
  MakeTodayPad;
  {$ENDIF}

  FMonthMenu := TPopupMenu.Create(Self);
  with FMonthMenu do
  begin
   Font.Charset := RUSSIAN_CHARSET;
   for I := 1 to 12 do
   begin
    MItem := TMenuItem.Create(Self);
    MItem.Caption := imap_vt_MonthsCaptions[I].AsStr;
    MItem.OnClick := MonthMenuSelect;
    MItem.RadioItem := True;
    Items.Add(MItem);
   end;
  end;

  FYearMenu := TPopupMenu.Create(Self);

  FMonthLabel := TSpeedButton.Create(Self);
  AdjustTitleButtonFont(FMonthLabel);
  FTitlePanel.InsertControl(FMonthLabel);
  with FMonthLabel do
  begin
   Left := 40;
   Top := 2;
   Width := Round((FTitlePanel.Width - BtnSide * 4)/3*2) ;
   Height := 20;
   Flat := True;
   Alignment := taRightJustify;
   Anchors := [akLeft,akRight,akTop];
   Caption := imap_vt_MonthsCaptions[9].AsStr;
   OnClick := MonthClick;
   Font.Charset := RUSSIAN_CHARSET;
  end;


  FYearLabel := TSpeedButton.Create(Self);
  AdjustTitleButtonFont(FYearLabel);
  with FYearLabel do
  begin
   Parent := FTitlePanel;
   Left := FMonthLabel.Left+FMonthLabel.Width;
   Top := 2;
   Alignment := taLeftJustify;
   Anchors := [akLeft,akRight,akTop];
   Height := 20;
   Width := FTitlePanel.Width - Left - BtnSide*2;
   Flat := True;
   OnClick := YearClick;
   Font.Charset := RUSSIAN_CHARSET;   
  end;

  fCalendar := TCalendarPanel.Create(Self);
  with FCalendar do
   begin
    Parent := Self;
    Align := alClient;
    //ControlStyle := ControlStyle - [csFramed];
    BevelInner := bvLowered;
    BevelOuter := bvNone;
    BorderStyle := bsNone;
    OnChange := CalendarChange;
    OnMouseUp := CalendarMouseUp;
   end;

  with TTimerSpeedButton.Create(Self) do
    begin
     Parent := FTitlePanel;
     SetBounds(1, 1, BtnSide, BtnSide);
     Glyph.Handle := LoadBitmap(hInstance, SBtnGlyphs[0]);
     OnClick := PrevYearBtnClick;
     Hint := str_vtStrPrevYear.AsStr;
     Flat:=True;
     TimeBtnState := [tbAllowTimer];
    end;

  with TTimerSpeedButton.Create(Self) do
    begin
     Parent := FTitlePanel;
     SetBounds(BtnSide + 1, 1, BtnSide, BtnSide);
     Glyph.Handle := LoadBitmap(hInstance, SBtnGlyphs[1]);
     OnClick := PrevMonthBtnClick;
     Hint := str_vtStrPrevMonth.AsStr;
     Flat:=True;
     TimeBtnState := [tbAllowTimer];
   end;

  with TTimerSpeedButton.Create(Self) do
   begin
     Parent := FTitlePanel;
     SetBounds(FTitlePanel.Width - 2 * BtnSide - 2 , 1, BtnSide, BtnSide);
     Glyph.Handle := LoadBitmap(hInstance, SBtnGlyphs[2]);
     OnClick := NextMonthBtnClick;
     Hint := str_vtStrNextMonth.AsStr;
     Flat:=True;
     TimeBtnState := [tbAllowTimer];
   end;

  with TTimerSpeedButton.Create(Self) do
   begin
     Parent := FTitlePanel;
     SetBounds(FTitlePanel.Width - BtnSide - 2, 1, BtnSide, BtnSide);
     Glyph.Handle := LoadBitmap(hInstance, SBtnGlyphs[3]);
     OnClick := NextYearBtnClick;
     Hint := str_vtStrNextYear.AsStr;
     Flat:=True;
     TimeBtnState := [tbAllowTimer];
   end;
  CalendarChange(Self);

 {$IfDef Delphi7}
  ParentBackground := False;
 {$EndIf}
end;

procedure TPopupCalendar.CreateParams(var Params: TCreateParams);
 begin
  inherited CreateParams(Params);
  with Params do
   begin
    //Style := Style or WS_BORDER;
    ExStyle := WS_EX_TOOLWINDOW;
    WindowClass.Style := CS_SAVEBITS;
    ControlStyle := ControlStyle + [csNoDesignVisible];
   end;
 end;

procedure TPopupCalendar.SetDate(DT : TDateTime);
 begin
  If fCalendar <> nil then
   try
    fCalendar.Date := DT;
   except
    fCalendar.Date := Now;
   end;
 end;

function  TPopupCalendar.GetDate : TDateTime;
 begin
  If fCalendar <> nil
   then Result := fCalendar.Date
   else Result := NullDate;
 end;

procedure TPopupCalendar.CalendarMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  MenuOpen := False;
  if (Button = mbLeft) and (Shift = []) then
   begin
    if THackCalendarPanel(fCalendar).GetDayFromPoint(Point(X,Y)) > 0 then
     if Owner is TWinControl then
      PostMessage(TWinControl(Owner).Handle, WM_vt_CALLCLOSEUP, 1, 0)
   end;
end;

procedure TPopupCalendar.KeyDown(var Key: Word; Shift: TShiftState);
begin
 inherited KeyDown(Key, Shift);
 if (fCalendar <> nil) then
  THackCalendarPanel(fCalendar).KeyDown(Key, Shift);
end;

procedure TPopupCalendar.PrevYearBtnClick(Sender: TObject);
begin
  fCalendar.PrevYear;
end;

procedure TPopupCalendar.NextYearBtnClick(Sender: TObject);
begin
  fCalendar.NextYear;
end;

procedure TPopupCalendar.PrevMonthBtnClick(Sender: TObject);
begin
  fCalendar.PrevMonth;
end;

procedure TPopupCalendar.NextMonthBtnClick(Sender: TObject);
begin
  fCalendar.NextMonth;
end;

procedure TPopupCalendar.MonthClick(Sender: TObject);
var
 lPos: TPoint;
begin
 lPos.X := FMonthLabel.Left;
 lPos.Y := FMonthLabel.Top + FMonthLabel.Height;
 lPos := fTitlePanel.ClientToScreen(lPos);
 FMonthMenu.Items[MonthOf(GetDate)-1].Checked := True;
 MenuOpen := True;
 FMonthMenu.Popup(lPos.X, lPos.Y);
 MenuOpen := False;
end;

procedure TPopupCalendar.MonthMenuSelect(Sender: TObject);
var
 lMonth: Integer;
 Y,M,D: Word;
 TmpDate: TDateTime;
begin
 lMonth := FMonthMenu.Items.IndexOf(TMenuItem(Sender))+1;
 DecodeDate(GetDate, Y, M, D);
 if not IsValidDate(Y, lMonth, D) then
  TmpDate := EndOfTheMonth(EncodeDate(Y,lMonth, 1))
 else
  TmpDate := EncodeDate(Y,lMonth, D);
 SetDate(TmpDate);
 MenuOpen := False;
end;

procedure TPopupCalendar.CalendarChange(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  DecodeDate(FCalendar.Date, Year, Month, Day);
  FMonthLabel.Caption := imap_vt_MonthsCaptions[Month].AsStr;
  FYearLabel.Caption := FormatDateTime('YYYY', FCalendar.Date);
end;

procedure TPopupCalendar.TopPanelDblClick(Sender: TObject);
begin
  FCalendar.Date := Trunc(Now);
end;

procedure TPopupCalendar.YearClick(Sender: TObject);
var
 lPos: TPoint;
 I,B,E,Y: Integer;
 MI: TMenuItem;
begin
 FYearMenu.Items.Clear;
 Y := YearOf(GetDate);
 B := Y - 8;
 E := B+16;
 FYearMenu.Items.AutoHotkeys := maManual;
 for I:= B to E do
 begin
  MI := TMenuItem.Create(Self);
  MI.AutoHotkeys := maManual;
  MI.Caption := IntToStr(I);
  MI.OnClick := YearMenuSelect;
  if I = Y then // пометим текущий год
  begin
   MI.RadioItem := True;
   MI.Checked := True;
  end;
  FYearMenu.Items.Add(MI);
 end;
 lPos.X := FYearLabel.Left;
 
 lPos.Y := FYearLabel.Top;// - GetSystemMetrics(SM_CYMENU)*7;
 lPos := fTitlePanel.ClientToScreen(lPos);
 if ((lPos.Y + GetSystemMetrics(SM_CYMENU)*9) < Screen.Height) and
    ((lPos.Y - GetSystemMetrics(SM_CYMENU)*9) > 0)  then
  lPos.Y := lPos.Y - GetSystemMetrics(SM_CYMENU)*8;
 MenuOpen := True;
 FYearMenu.Popup(lPos.X, lPos.Y);
 MenuOpen := False;
end;

procedure TPopupCalendar.YearMenuSelect(Sender: TObject);
var
 lIndex: Integer;
 YearS: String;
begin
 lIndex := FYearMenu.Items.IndexOf(TMenuItem(Sender));
 YearS := FYearMenu.Items[lIndex].Caption;
 SetDate(RecodeYear(GetDate, StrToInt(YearS)));
 MenuOpen := False;
end;

procedure TPopupCalendar.ClickToday(Sender: TObject);
begin
  fCalendar.Date := Trunc(Now);
  PostMessage(TWinControl(Owner).Handle, WM_vt_CALLCLOSEUP, 1, 0);
end;

procedure TPopupCalendar.CancelClick(Sender: TObject);
begin
 PostMessage(TWinControl(Owner).Handle, WM_vt_CALLCLOSEUP, 0, 0);
end;

procedure TPopupCalendar.MakeTodayPad;
var
 lPanel: TvtPanel;
begin
 lPanel := TvtPanel.Create(Self);
 with lPanel do
 begin
  Parent := Self;
  Height := 25;
  BevelOuter := bvNone;
  Align := alBottom;
 end;

 with TvtLabel.Create(Self) do
 begin
  Parent := lPanel;
  Left := 3;
  Top := 5;
  Font.Style := [fsBold];
  CCaption := l3Fmt(str_vtTodayLongLabel.AsCStr, [FormatDateTime('DD.MM.YYYY', Now)]);
  OnClick := ClickToday;
  ShowHint := True;
  Hint := str_vtTodayHint.AsStr;
 end;

 with TSpeedButton.Create(Self) do
 begin
  Parent := lPanel;
  SetBounds(lPanel.Width-3-19, 3, 19,19);
  Anchors := [akRight, akTop];
  vtStdResources.Images.GetBitmap(17, Glyph);
  Flat := True;
  OnClick := CancelClick;
  ShowHint := True;
  Hint := str_vtCancel.AsStr;
 end;
end;

function TPopupCalendar.CalcTodayPadWidth: Integer;
begin
 Result := 0;
end;

procedure TPopupCalendar.AdjustTitleButtonFont(const aLabel: TSpeedButton);
begin
// Do nothing;
end;

{TvtCustomDateEdit}

constructor TvtCustomDateEdit.Create(AOwner: TComponent);
 begin
  inherited Create(AOwner);
  FRestrictInvalidDate := false;
  FBlanksChar := ' ';
  //FPopupColor := clBtnFace;
  //FDefNumGlyphs := 2;
  FStartOfWeek := Monday;
  FWeekends := [Sunday];
  FWeekendColor := clRed;
  FYearDigits := dyDefault;
  ControlState := ControlState + [csCreating];
  try
    UpdateFormat;
    //GlyphKind := gkDefault; { force update }
  finally
    ControlState := ControlState - [csCreating];
  end;
  //CalendarStyle := dcsDefault;

  ButtonStyle := cbsDefault;
// Код закомментирован см. комментарий к vt_imgThemedCalendar (vtStdRes)
// {$IfDef Delphi7}
//  if ThemeServices.ThemesEnabled then
//   ImageIndex := vt_imgThemedCalendar
//  else
// {$EndIf Delphi7}
   ImageIndex := vt_imgCalendar;
end;

procedure TvtCustomDateEdit.Cleanup;
begin
  if FHooked then begin
    Application.UnhookMainWindow(FormatSettingsChange);
    FHooked := False;
  end;
  FreeAndNil(fCalendarPanel);
  inherited;
end;

procedure TvtCustomDateEdit.DropDown;
 begin
  if DroppedDown then
   SendMessage(TWinControl(Self).Handle, WM_vt_CALLCLOSEUP, 0, 0)
  else
  begin
   Date := Date;
   MakeCalendar;
   TPopupCalendar(fCalendarPanel).Date := NormDate(Date, Now);
   inherited DropDown;
   ///Windows.SetFocus(TPopupCalendar(fCalendarPanel).fCalendar.Handle);
  end; 
 end;

procedure TvtCustomDateEdit.CloseUp(Accept: Boolean);
 begin
  if Assigned(fCalendarPanel) and //morozov
   not TPopupCalendar(fCalendarPanel).MenuOpen then
  begin
   If Accept then
    ApplyDate(TPopupCalendar(fCalendarPanel).Date);
   Inherited CloseUp(Accept);
  end;
 end;

function  TvtCustomDateEdit.GetDropDownContainer: TWinControl;
 begin
  MakeCalendar;
  Result := fCalendarPanel;
  ///Result := TVPopupList.Create(owner);
 end;

procedure TvtCustomDateEdit.MakeCalendar;
 begin
  If fCalendarPanel <> nil then Exit;
  fCalendarPanel := TPopupCalendar.Create(Self);
 end;

procedure TvtCustomDateEdit.CreateWindowHandle(const Params: TCreateParams);
begin
  inherited CreateWindowHandle(Params);
  if Handle <> 0 then begin
    UpdateMask;
    if not (csDesigning in ComponentState) and not (IsLibrary or FHooked) then
    begin
      Application.HookMainWindow(FormatSettingsChange);
      FHooked := True;
    end;
  end;
end;

procedure TvtCustomDateEdit.DestroyWindowHandle;
begin
  if FHooked then begin
    Application.UnhookMainWindow(FormatSettingsChange);
    FHooked := False;
  end;
  inherited DestroyWindowHandle;
end;

procedure TvtCustomDateEdit.UpdateFormat;
begin
  FDateFormat := DefDateFormat(FourDigitYear);
end;

function TvtCustomDateEdit.GetDateFormat: string;
begin
  Result := FDateFormat;
end;

function TvtCustomDateEdit.TextStored: Boolean;
begin
  Result := not IsEmptyStr(Text, [#0, ' ', {$IfDef XE}FormatSettings.{$EndIf}DateSeparator, FBlanksChar]);
end;

procedure TvtCustomDateEdit.CheckValidDate;
begin
  if TextStored then
    try
      FFormatting := True;
      try
        SetDate(StrToDateFmt(FDateFormat, Text));
      finally
        FFormatting := False;
      end;
    except
      if CanFocus then SetFocus;
      raise;
    end;
end;

procedure TvtCustomDateEdit.Change;
begin
  if not FFormatting then inherited Change;
end;

function TvtCustomDateEdit.TriggerOnInvalidDate: Boolean;
begin
 if not IsBlank and not IsValid and Assigned(FOnInvalidDate) then
 begin
  FOnInvalidDate(Self);
  Result := True;
 end
 else
  Result := False; 
end;

procedure TvtCustomDateEdit.CMExit(var Message: TCMExit);
begin
 if not TriggerOnInvalidDate then
 begin
  Date := Date;
  if not (csDesigning in ComponentState) and CheckOnExit then
    CheckValidDate;
  inherited;
 end;
end;

{function TvtCustomDateEdit.GetDefaultBitmap(var DestroyNeeded: Boolean): TBitmap;
begin
  DestroyNeeded := False;
  if DateBitmap = nil then begin
    DateBitmap := Tl3Bitmap.Create;
    DateBitmap.Handle := LoadBitmap(hInstance, sDateBmp);
  end;
  Result := DateBitmap;
end;
 }
procedure TvtCustomDateEdit.SetBlanksChar(Value: Char);
begin
  if Value <> FBlanksChar then
   begin
    if (Value < ' ') then Value := ' ';
    FBlanksChar := Value;
    UpdateMask;
   end;
end;

procedure TvtCustomDateEdit.ClearDate;
begin
 Date := NullDate;
end;

procedure TvtCustomDateEdit.UpdateMask;
 var
  DateValue: TDateTime;
  OldFormat: string[10];
 begin
  FFormatting := True;
  try
   DateValue := GetDate;
   OldFormat := FDateFormat;
   UpdateFormat;
   If (GetDateMask <> EditMask) or (OldFormat <> FDateFormat) then begin
     { force update }
     EditMask := '';
     EditMask := GetDateMask;
   end;
   SetDate(DateValue);
  finally
    FFormatting := False;
  end;
  UpdateButtonPosition;
 end;

function TvtCustomDateEdit.FormatSettingsChange(var Message: TMessage): Boolean;
begin
  Result := False;
  if (Message.Msg = WM_WININICHANGE)
    {$IFDEF WIN32} and Application.UpdateFormatSettings {$ENDIF} then
    UpdateMask;
end;

function TvtCustomDateEdit.FourDigitYear: Boolean;
begin
  Result := (FYearDigits = dyFour) or ((FYearDigits = dyDefault) and
    (l3Date.FourDigitYear));
end;

function TvtCustomDateEdit.GetDateMask: string;
 begin
  Result := DefDateMask(FBlanksChar, FourDigitYear);
 end;

function TvtCustomDateEdit.GetDate: TDateTime;
begin
 {if DefaultToday then Result := SysUtils.Date
 else Result := NullDate;}
 Result := StrToDateFmtDef(FDateFormat, Text, NullDate {Result});
end;

function  TvtCustomDateEdit.IsEmpty : Boolean;
 begin
  Result := Date = NullDate;
 end;

procedure TvtCustomDateEdit.SetDate(Value: TDateTime);
{var
  D: TDateTime;}
 begin
  If not ValidDate(Value) then Value := NullDate;
  {if not ValidDate(Value) or (Value = NullDate) then
   begin
    if DefaultToday then Value := SysUtils.Date
    else Value := NullDate;
   end;}
  {D := Date;}
  If Value = NullDate
   then Text := ''
   else Text := FormatDateTime(FDateFormat, Value);
  If IsDroppedDown
   then TPopupCalendar(fCalendarPanel).Date := Value;
  {Modified := D <> Date;}
 end;

{$IfDef SupportStDate}
function  TvtCustomDateEdit.GetStDate: TStDate;
 begin
  Result := DateTimeToStDate(Date);
 end;

procedure TvtCustomDateEdit.SetStDate(Value: TStDate);
 begin
  If  Value = 0 //BlankDate
   then Date := NullDate
   else Date := StDateToDateTime(Value);
 end;
{$EndIf}

procedure TvtCustomDateEdit.ApplyDate(Value: TDateTime);
 begin
  If Assigned(fOnApplyDate) and not OnApplyDate(Self, Value) then Exit;
  SetDate(Value);
  SelectAll;
  If Assigned(fOnAppliedDate) then OnAppliedDate(Self, Value);
 end;

procedure TvtCustomDateEdit.SetYearDigits(Value: TYearDigits);
 begin
  if FYearDigits <> Value then
   begin
    FYearDigits := Value;
    UpdateMask;
   end;
 end;

{function TvtCustomDateEdit.GetPopupColor: TColor;
begin
  if FPopup <> nil then Result := TPopupWindow(FPopup).Color
  else Result := FPopupColor;
end;

procedure TvtCustomDateEdit.SetPopupColor(Value: TColor);
begin
  if Value <> PopupColor then begin
    if FPopup <> nil then TPopupWindow(FPopup).Color := Value;
    FPopupColor := Value;
  end;
end;
}

procedure TvtCustomDateEdit.SetWeekendColor(Value: TColor);
 begin
  if Value <> FWeekendColor
   then FWeekendColor := Value;
 end;

procedure TvtCustomDateEdit.SetWeekends(Value: TDaysOfWeek);
 begin
  if Value <> FWeekends
   then FWeekends := Value;
 end;

procedure TvtCustomDateEdit.SetStartOfWeek(Value: TStDayType);
 begin
  if Value <> FStartOfWeek
   then FStartOfWeek := Value;
 end;

procedure TvtCustomDateEdit.KeyDown(var Key: Word; Shift: TShiftState);
var
 l_DroppedDown: Boolean;
 lNeedReturnFocus: Boolean;
begin
 lNeedReturnFocus := False;
 if (DirectInput or IsDroppedDown) and (Shift = []) then
   begin
     case Key of
      ord('T'),
      ord('t'),
      ord('Е'),
      ord('е'):
       begin
         ApplyDate(Trunc(Now));
         Key := 0;
       end;
      VK_ADD:
       begin
         ApplyDate(NormDate(Date, Now) + 1);
         Key := 0;
       end;
      VK_SUBTRACT:
       begin
         ApplyDate(NormDate(Date, Now) - 1);
         Key := 0;
       end;
      VK_RETURN:
       begin
        l_DroppedDown := DroppedDown;
        Windows.SetFocus(0);
        lNeedReturnFocus := True;
        if l_DroppedDown then
         ApplyDate(TPopupCalendar(fCalendarPanel).Date)
        else
         DoExecute;
       end;
     end;
    end;
 if (Key <> 0) then
 begin
  if IsDroppedDown then
   THackCalendarPanel(fCalendarPanel).KeyDown(Key, Shift);
  inherited KeyDown(Key, Shift);
 end;//Key <> 0
 if lNeedReturnFocus then
  Windows.SetFocus(Handle);
end;

function TvtCustomDateEdit.ProcessCommand(Cmd    : Tl3OperationCode;
                                          aForce : Boolean;
                                          aCount : Integer): Boolean;
  // override;
  {* - централизованная обработка ShortCut-ов. }
begin
 Result := inherited ProcessCommand(Cmd, aForce, aCount);
 case Cmd of
  // Обработка вставки будет произведена в WMPaste
  ccPaste:
  begin
   Perform(WM_PASTE, 0, 0);
   Result := True;
  end;//ccPaste
 end;//case Cmd of
end;//ProcessCommand

procedure TvtCustomDateEdit.TriggerAutoCorrectDate;
// virtual;
{* - сообщает об автокоррекции. }
begin
 // Общий обработчик
 if Assigned(g_vtBeforeCorrectDate) then
  g_vtBeforeCorrectDate(Text)
 else
 // Обработчик данного экземпляра
 if Assigned(FOnAutoCorrectDate) then
  FOnAutoCorrectDate(Self);
end;

procedure TvtCustomDateEdit.KeyPress(var Key: Char);
var
  l_Text: string;
  l_Start, l_Stop, l_Index: integer;
begin
  if (DirectInput or IsDroppedDown) and (Key in ['T', 't', 'Е', 'е', '+', '-']) then
   Key := #0;
  if (Key = #0) then exit;
  if IsDroppedDown then
   THackCalendarPanel(fCalendarPanel).KeyPress(Key);

  if not FRestrictInvalidDate then
   inherited KeyPress(Key)
  else
  begin
   l_Text := Text;
   GetSel(l_Start, l_Stop);
   inherited KeyPress(Key);

   for l_Index := l_Start downto 0 do
   begin
    if ((ord(FDateFormat[l_Index]) < Ord('a')) or (ord(FDateFormat[l_Index]) > Ord('z'))) and
       ((ord(FDateFormat[l_Index]) < Ord('A')) or (ord(FDateFormat[l_Index]) > Ord('Z'))) then
     exit;
    if Text[l_Index] <> ' ' then
     break
   end;

   if not isDateHalfValid(FDateFormat, Text) then
   begin
    if IsDateFullyFilled(FDateFormat, Text) then
    begin
     TriggerAutoCorrectDate;
     Text := l3CorrectDate(FDateFormat, Text);
     SetCursor(l_Start);
     SetSel(l_Start, l_Stop);
    end
    else
    begin
     Text := l_Text;
     SetCursor(l_Start);
     SetSel(l_Start, l_Stop);
    end;
   end;
  end;
end;

procedure TvtCustomDateEdit.AutoResize;
const
 cBtnTextSpace = 10;
begin
 Width := Canvas.TextWidth('88.88.8888') + Button.Width + BorderWidth * 2 +
  cBtnTextSpace;
end;

{procedure TvtCustomDateEdit.ButtonClick;
var
  D: TDateTime;
  Action: Boolean;
begin
  inherited ButtonClick;
  if CalendarStyle = csDialog then begin
    D := Self.Date;
    Action := SelectDate(D, DialogTitle, FStartOfWeek, FWeekends,
      FWeekendColor, FCalendarHints);
    if CanFocus then SetFocus;
    if Action then begin
      if Assigned(FOnAcceptDate) then FOnAcceptDate(Self, D, Action);
      if Action then begin
        Self.Date := D;
        Modified:=True;
        if FFocused then inherited SelectAll;
      end;
    end;
  end;
end;
}
{function TvtCustomDateEdit.AcceptPopup(var Value: Variant): Boolean;
var
  D: TDateTime;
begin
  Result := True;
  if Assigned(FOnAcceptDate) then begin
    if VarIsNull(Value) or VarIsEmpty(Value) then D := NullDate
    else
      try
        D := VarToDateTime(Value);
      except
        if DefaultToday then D := SysUtils.Date else D := NullDate;
      end;
    FOnAcceptDate(Self, D, Result);
    if Result then Value := VarFromDateTime(D);
  end;
end;

procedure TvtCustomDateEdit.SetPopupValue(const Value: Variant);
begin
  inherited SetPopupValue(StrToDateFmtDef(FDateFormat, VarToStr(Value),
    SysUtils.Date));
end;

procedure TvtCustomDateEdit.AcceptValue(const Value: Variant);
begin
  SetDate(VarToDateTime(Value));
  if Modified then inherited Change;
end;
}

procedure TvtCustomDateEdit.ActionChange(Sender: TObject;
  CheckDefaults: Boolean);
begin
 inherited ActionChange(Sender, CheckDefaults);
 if Sender is TCustomAction then
  fOnExecute := TCustomAction(Sender).OnExecute;
end;

function TvtCustomDateEdit.IsValid: Boolean;
begin
 Result := not (StrToDateFmtDef(FDateFormat, Text, NullDate) = NullDate);
end;

procedure TvtCustomDateEdit.DoExecute;
begin
 if Assigned(fOnExecute) then
  fOnExecute(Self)
end;

procedure TvtCustomDateEdit.CMEnter(var Message: TCMEnter);
begin
 inherited;
 if not IsValid then
 begin
  SelStart := 0;
  SelLength := 1;
 end;
end;

procedure TvtCustomDateEdit.WMMouseWheel(var Message: TMessage);
begin
 if Parent <> nil then
  SendMessage(Parent.Handle, Message.Msg, Message.wParam, Message.lParam);
end;

function TvtCustomDateEdit.IsBlank: Boolean;
begin
 Result := PadInputLiterals(EditMask, '', FBlanksChar) = Text;
end;

{$IfDef Delphi7}
procedure TvtCustomDateEdit.UpdateButtonPosition;
begin
 inherited;
// Код закомментирован см. комментарий к vt_imgThemedCalendar (vtStdRes)
// if (ImageIndex = 0) and ThemeServices.ThemesEnabled then
//  ImageIndex := vt_imgThemedCalendar;
end;
{$EndIf Delphi7}

procedure TvtCustomDateEdit.WMPaste(var Message: TMessage);
begin
 Clear;
 inherited;
end;

{$IfNDef DesignTimeLibrary}
{$IfDef l3HackedVCL}
function TvtCustomDateEdit.TextFromClipboard: String;
begin
 Clipboard.Open;
 try
  Result := l3CorrectDateSeparators(EditMask, Clipboard.AsText, BlanksChar);
 finally
  Clipboard.Close;
 end;
end;
{$EndIf}
{$EndIf DesignTimeLibrary}

{ TvtCalendarForm }

{$IfDef DesignTimeLibrary}
procedure TvtCalendarForm.AfterConstruction;
{$Else  DesignTimeLibrary}
procedure TvtCalendarForm.InitFields;
{$EndIf DesignTimeLibrary}
begin           
  inherited;
  fCalendar := TDblClickPopupCalendar.Create(self);
  fCalendar.Parent := Self;
  AutoSize := True;
  BorderStyle := bsToolWindow;
end;

procedure TvtCalendarForm.SetDateText(const Value: string);
var
 l_Date: TDateTime;
begin
 if Value <> '' then
 begin
  TPopupCalendar(fCalendar).Date := StrToDateFmtDef(FDateFormat, Value, NullDate);
  fDateText := Value;
 end
 else
 begin
  l_Date := Now;
  TPopupCalendar(fCalendar).Date := l_Date;
  fDateText := FormatDateTime(fDateFormat, l_Date);
 end;
end;

procedure TvtCalendarForm.WndProc(var Msg: TMessage);
var
 l_Date: TDateTime;
begin
 if Msg.Msg = WM_vt_CALLCLOSEUP then
 begin
  if Msg.WParam = 1 then
  begin
   ModalResult := mrOk;
   l_Date := TPopupCalendar(fCalendar).Date;
   if l_Date = NullDate then
    fDateText := ''
   else
    fDateText := FormatDateTime(fDateFormat, l_Date);
  end
  else
   ModalResult := mrCancel;
 end
 else
  inherited;
end;

{ TDblClickPopupCalendar }

procedure TDblClickPopupCalendar.AdjustTitleButtonFont(
  const aLabel: TSpeedButton);
begin
 aLabel.Font.Style := aLabel.Font.Style + [fsUnderline];
 aLabel.Font.Color := clBlue;
end;

procedure TDblClickPopupCalendar.CalendarMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 MenuOpen := False;
 if (Button = mbLeft) and (Shift = []) then
  begin
   if (THackCalendarPanel(fCalendar).GetDayFromPoint(Point(X,Y)) > 0) and
      (THackCalendarPanel(fCalendar).GetDayFromPoint(Point(X,Y)) = THackCalendarPanel(fCalendar).OldDay) then
    if (Owner is TWinControl) then
     PostMessage(TWinControl(Owner).Handle, WM_vt_CALLCLOSEUP, 1, 0)
  end;
end;

const
 cButtonWidth = 95;
 cButtonHeight = 20;

procedure TDblClickPopupCalendar.MakeTodayPad;
var
 lPanel: TvtPanel;
begin
 lPanel := TvtPanel.Create(Self);
 with lPanel do
 begin
  Parent := Self;
  Height := 25;
  BevelOuter := bvNone;
  Align := alBottom;
 end;

// Убрано по ЦК26127
{ with TSpeedButton.Create(Self) do
 begin
  Parent := lPanel;
  SetBounds(3, 3, 80, cButtonHeight);
  Anchors := [akLeft, akTop];
  Flat := True;
  Caption := l3Str(vtIntegerMapManager.Map[imap_vt_Misc].ValueToDisplayName(ord(vtmmTodayShortLabel)));
  OnClick := ClickToday;
  ShowHint := True;
  Hint := l3Str(vtIntegerMapManager.Map[imap_vt_Misc].ValueToDisplayName(ord(vtmmTodayHint)));
 end;}

 with TSpeedButton.Create(Self) do
 begin
  Parent := lPanel;
  SetBounds(lPanel.Width-3-cButtonWidth-cButtonWidth, 3, cButtonWidth, cButtonHeight);
  Anchors := [akRight, akTop];
{$IF not Defined(nsTest) OR Defined(InsiderTest)}
  vtStdResources.Images.GetBitmap(vt_imgOk, Glyph);
{$IfEND}
  Flat := True;
  OnClick := OkClick;
  ShowHint := True;
  Caption := str_vtChoose.AsStr;
  Hint := str_vtChoose.AsStr;
  Font.Charset := RUSSIAN_CHARSET;
 end;

 with TSpeedButton.Create(Self) do
 begin
  Parent := lPanel;
  SetBounds(lPanel.Width-3-cButtonWidth, 3, cButtonWidth, cButtonHeight);
  Anchors := [akRight, akTop];
{$IF not Defined(nsTest) OR Defined(InsiderTest)}
  vtStdResources.Images.GetBitmap(vt_imgCancel, Glyph);
{$IfEND}
  Flat := True;
  OnClick := CancelClick;
  ShowHint := True;
  Caption := str_vtCancel.AsStr;
  Hint := str_vtCancel.AsStr;
 end;
end;

function TDblClickPopupCalendar.CalcTodayPadWidth: Integer;
begin
 Result := 2*(3 + cButtonWidth);
end;

procedure TDblClickPopupCalendar.OKClick(Sender: TObject);
begin
 PostMessage(TWinControl(Owner).Handle, WM_vt_CALLCLOSEUP, 1, 0);
end;

{ TvtDblClickDateEdit }

procedure TvtDblClickDateEdit.MakeCalendar;
begin
 If fCalendarPanel <> nil then Exit;
  fCalendarPanel := TDblClickPopupCalendar.Create(Self);
end;

end.