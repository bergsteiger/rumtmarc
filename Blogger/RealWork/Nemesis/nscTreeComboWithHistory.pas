unit nscTreeComboWithHistory;

{ $Id: nscTreeComboWithHistory.pas,v 1.90 2012/11/12 10:25:03 fireton Exp $ }

// $Log: nscTreeComboWithHistory.pas,v $
// Revision 1.90  2012/11/12 10:25:03  fireton
// - не собирался AllArchiComponents7
//
// Revision 1.89  2011/12/13 16:28:22  gensnet
// http://mdp.garant.ru/pages/viewpage.action?pageId=314216049
//
// Revision 1.88  2011/12/06 12:29:18  gensnet
// http://mdp.garant.ru/pages/viewpage.action?pageId=263291165
//
// Revision 1.87  2011/11/30 11:19:25  gensnet
// http://mdp.garant.ru/pages/viewpage.action?pageId=263291236
//
// Revision 1.86  2011/11/03 16:47:06  vkuprovich
// {RequestLink:284168731}
// - fix: не запоминалась ширина выпадающего списка БП
//
// Revision 1.85  2011/03/01 19:23:54  lulin
// {RequestLink:213254642}.
//
// Revision 1.84  2011/02/08 11:33:45  lulin
// {RequestLink:253659671}.
//
// Revision 1.83  2011/02/07 16:23:56  lulin
// {RequestLink:228688602}.
//
// Revision 1.82  2011/02/04 13:23:35  lulin
// {RequestLink:252524367}.
//
// Revision 1.81  2011/02/02 10:38:29  lulin
// {RequestLink:228688602}.
// - скругляем край кнопки.
//
// Revision 1.80  2011/02/01 18:59:20  lulin
// {RequestLink:228688602}.
// - убираем грязь.
// - используем кошерные цвета.
//
// Revision 1.79  2011/02/01 17:30:39  lulin
// {RequestLink:252512758}.
// - рисуем кнопку закрытия покрасивее.
//
// Revision 1.76  2011/02/01 16:11:54  lulin
// {RequestLink:252512758}.
//
// Revision 1.75  2011/02/01 15:37:27  lulin
// {RequestLink:252512758}.
// - рисуем закруглённый край.
//
// Revision 1.74  2011/02/01 12:45:27  lulin
// {RequestLink:252512758}.
// - рисуем рамку региона средствами GDI+.
//
// Revision 1.73  2011/01/31 18:47:55  lulin
// {RequestLink:252512758}.
// - инкапсулируем метод рисования рамки вокруг региона в утилитый объект.
//
// Revision 1.72  2011/01/31 17:29:43  lulin
// {RequestLink:252512754}.
// - добавлен комментарий.
//
// Revision 1.71  2011/01/31 17:27:50  lulin
// {RequestLink:252512754}.
// - избавляемся от рудиментов отрисовки.
//
// Revision 1.70  2011/01/31 17:10:30  lulin
// {RequestLink:252512754}.
// - переносим-таки кнопку закрытия дерева в клиентскую область.
//
// Revision 1.68  2011/01/31 15:38:46  lulin
// {RequestLink:252512754}.
// - рисуем скруглённый левый угол кнопки.
//
// Revision 1.67  2011/01/31 15:16:33  lulin
// {RequestLink:252512754}.
// - откатываем неудачные эксперименты.
//
// Revision 1.65  2011/01/31 10:47:54  lulin
// {RequestLink:228688602}.
// - "кнопку" закрытия рисуем "синим" цветом.
//
// Revision 1.64  2011/01/29 16:11:36  lulin
// {RequestLink:228688602}.
// - при вычислении ширины выпадающего дерева учитываем тот факт, что кнопка у нас внешняя.
//
// Revision 1.63  2011/01/29 15:19:31  lulin
// {RequestLink:228688602}.
// - подгоняем под макет.
//
// Revision 1.62  2010/12/07 15:55:07  lulin
// {RequestLink:228688602}.
// - что-то задышало.
//
// Revision 1.61  2010/07/07 08:57:36  oman
// - fix: {RequestLink:224134227}
//
// Revision 1.60  2010/06/02 09:31:31  oman
// - new: {RequestLink:213255402}
//
// Revision 1.59  2010/05/25 08:37:55  oman
// - new: {RequestLink:213255402}
//
// Revision 1.58  2010/03/10 19:41:58  lulin
// {RequestLink:196445017}.
//
// Revision 1.57  2009/04/14 08:09:27  oman
// - new: Пользуем кошерный класс - [$143392959]
//
// Revision 1.56  2009/04/14 05:35:00  oman
// - new: Убираемся по отпусканию мыши - [$143392959]
//
// Revision 1.55  2009/04/13 12:59:27  oman
// - new: Убираемся по отпусканию мыши - [$143392959]
//
// Revision 1.54  2009/04/13 12:54:38  oman
// - new: Локализация текста - [$143392959]
//
// Revision 1.53  2009/04/13 12:21:15  oman
// - new: Внешний вид - [$143392959]
//
// Revision 1.52  2009/04/13 11:16:17  oman
// - new: Готовим потроха - [$143392959]
//
// Revision 1.51  2009/01/19 11:11:34  oman
// - fix: Излишне глотали Alt++ (К-112723164)
//
// Revision 1.50  2009/01/15 11:23:48  oman
// - fix: Откручиваем шорткат "+" (К-112723164)
//
// Revision 1.49  2008/10/23 08:26:25  oman
// - fix: По другому обрабатываем WordLeft (К-121160125)
//
// Revision 1.48  2008/09/24 12:03:08  oman
// - fix: Корректируем каретку (К-119472351)
//
// Revision 1.47  2008/09/19 06:03:44  oman
// - fix: Логируем количество обращений к подсказке БП (К-111740091)
//
// Revision 1.46  2008/09/05 07:44:47  oman
// - fix: Не выбираем из закрытого дерева (K-112723074)
//
// Revision 1.45  2008/09/04 11:16:08  lulin
// - <K>: 88080895.
//
// Revision 1.44  2008/08/05 06:16:51  lulin
// - <K>: 103941645.
//
// Revision 1.43  2008/08/01 11:28:19  oman
// - fix: Открываем Home/End для редактируемых комбобоксов (K-105578687)
//
// Revision 1.42  2008/07/21 09:23:41  oman
// - new: Реакция на ESC (К-103451002)
//
// Revision 1.41  2008/07/21 08:46:24  oman
// - fix: Не меняем текст лишний раз (К-103451002)
//
// Revision 1.40  2008/07/21 07:38:46  oman
// Не собирались
//
// Revision 1.39  2008/07/21 07:19:24  oman
// - new: Повторяем поведение гугла (К-103451002)
//
// Revision 1.38  2008/07/17 06:18:38  oman
// - fix: Цвет фона у подсказок в БП (К-102957596)
//
// Revision 1.37  2008/07/16 07:09:57  oman
// - fix: Некорректно определяли что показывает выпавший список (К-102957572)
//
// Revision 1.36  2008/07/16 06:59:10  oman
// - fix: Гуляла высота (К-102957566)
//
// Revision 1.35  2008/07/16 06:41:46  oman
// - fix: Некорректно определяли что показывает выпавший список (К-102957572)
//
// Revision 1.34  2008/07/14 16:05:47  lulin
// - <K>: 102041333.
//
// Revision 1.33  2008/07/10 13:20:57  lulin
// - bug fix: в БП не показывалось VCM'ное меню.
//
// Revision 1.32  2008/07/10 10:41:49  lulin
// - <K>: 100958590.
//
// Revision 1.31  2008/07/09 18:07:38  lulin
// - лишний раз не пересоздаём документ.
// - не ломаем UndoBuffer.
//
// Revision 1.30  2008/07/08 09:48:42  lulin
// - не перекладываем строки в ноды, а просто реализуем интерфейс ноды.
//
// Revision 1.29  2008/07/04 15:43:45  lulin
// - <K>: 99647706.
//
// Revision 1.28  2008/07/04 13:41:42  lulin
// - чистка кода.
//
// Revision 1.27  2008/07/04 13:22:32  lulin
// - <K>: 99222143.
//
// Revision 1.26  2008/07/04 09:40:06  oman
// - fix: При выборе из дерева оно не закрывалось
//
// Revision 1.25  2008/07/04 09:28:54  oman
// Cleanup
//
// Revision 1.24  2008/07/04 07:25:54  oman
// - fix: Validate выдергивается не только при вставке из клипборда  =>
//  OnPasting дергается в неправильные моменты времени (К-99221562)
//
// Revision 1.23  2008/07/04 05:29:12  oman
// - fix: Падали по AV если дерево не вернулось (К-97353927)
//
// Revision 1.22  2008/07/03 08:58:09  oman
// Cleanup
//
// Revision 1.21  2008/07/02 13:27:31  oman
// - fix: Откручиваем заточки (К-91848911)
//
// Revision 1.20  2008/07/02 10:51:01  lulin
// - <K>: 95486333.
//
// Revision 1.19  2008/07/02 09:04:21  lulin
// - чистка кода.
//
// Revision 1.18  2008/07/01 09:15:25  oman
// - new: Выделяем разным шрифтом подсказки и историю (К-96484656)
//
// Revision 1.17  2008/07/01 06:05:17  oman
// - fix: Девево с подсказками могли вырвать из под ног (К-97353927)
//
// Revision 1.16  2008/06/27 07:46:52  oman
// - fix: Не всегда правильно переключали дерево
//
// Revision 1.15  2008/06/27 07:33:04  oman
// - fix: Выбираем только из дерева (cq29489)
//
// Revision 1.14  2008/06/26 06:24:35  oman
// - fix: Не было нотификации об изменении (cq29374)
//
// Revision 1.13  2008/06/26 06:14:46  oman
// - new: Выделяем новый компонент (cq29374)
//
// Revision 1.12  2008/06/26 05:53:25  oman
// - new: Меняем предка (cq29374)
//
// Revision 1.11  2008/06/25 14:02:40  oman
// - new: Боремся с переключением деревьев (cq29374)
//
// Revision 1.10  2008/06/25 13:45:14  oman
// - new: Боремся с переключением деревьев (cq29374)
//
// Revision 1.9  2008/06/25 13:38:09  oman
// - new: Ручка для количества видимых элементов (cq29374)
//
// Revision 1.8  2008/06/25 13:26:08  oman
// - new: Боремся с множественным Change (cq29374)
//
// Revision 1.7  2008/06/25 12:52:45  oman
// - new: Пытаемся фильтровать подсказки - скрываем вовремя (cq29374)
//
// Revision 1.6  2008/06/25 11:19:25  oman
// - new: Пытаемся фильтровать подсказки (cq29374)
//
// Revision 1.5  2008/06/25 06:55:03  oman
// - new: Подцепляем историю - реакция на клавиатуру (cq29374)
//
// Revision 1.4  2008/06/24 13:51:42  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.3  2008/06/24 13:41:20  oman
// - new: Подцепляем историю - более корректное переключение (cq29374)
//
// Revision 1.2  2008/06/24 13:38:10  oman
// - new: Подцепляем историю (cq29374)
//
// Revision 1.1  2008/06/24 12:29:26  oman
// - new: Заготовка для нового компонента (cq29374)
//
//

{$Include nscDefine.inc }

interface

uses
 Classes,
 Messages,
 Controls,
 Graphics,
 Windows,
 ExtCtrls,

 l3Interfaces,
 l3InternalInterfaces,
 l3TreeInterfaces,
 l3VCLStrings,
 l3ControlsTypes,
 l3Region,

 afwFont,

 evEditorWithOperations,
 evTypes,

 ctTypes,
 treedrop,

 nscConst
 ;

type
  TnscOnPastingString = procedure (Sender: TObject; var aText: Il3CString) of object;

  TnscCustomTreeComboWithHistory = class;

 _RegionableControl_Parent_ = TSubTree;
 {$Include w:\common\components\gui\Garant\SkinnedControls\RegionableControl.imp.pas}
  TnscSubTree = class(_RegionableControl_)
  private
   f_UseCloseHyperlink: Boolean;
   f_CloseSize: TSize;
   f_CloseRect: TRect;
  private
   procedure WMNCLButtonDown(var Message: TWMNCLButtonDown);
    message WM_NCLButtonDown;
     {-}
   procedure WMNCLButtonUp(var Message: TWMNCLButtonUp);
    message WM_NCLButtonUp;
     {-}
   procedure WMNCHitTest(var Message: TWMNCHitTest);
    message WM_NCHitTest;
     {-}
   procedure WMSetCursor(var Message: TWMSetCursor);
    message WM_SetCursor;
     {-}
    procedure WMNCCalcSize(var Message : TWMNCCalcSize);
      message WM_NCCALCSIZE;
      {-}
  protected
   procedure CreateParams(var Params: TCreateParams);
     override;
     {-}
   procedure Paint(const CN: Il3Canvas);
     override;
     {-}
    function IsShowGripper: Boolean;
    override;
     {-}
   procedure NCDraw(aDC: HDC);
    override;
     {-}
   procedure DrawCloseButton(aDC: HDC; const DrawRect: TRect);
     {-}
    function GetWidth: Integer; override;
     {-}
   procedure TuneRegion(aRegion: Tl3Region); override;
     {-}
   function  CanScrollWindow : Boolean; override;
     {-}
     procedure MouseWheelHandler(var Message: TMessage);          override;
     {-}
   procedure CreateHandle;
     override;
     {-}
    function  ExcludeRect : TRect;
      override;
      {-}
  public
   constructor Create(const aOwner: TnscCustomTreeComboWithHistory);
     reintroduce;
     {-}
  public
   property UseCloseHyperlink: Boolean
     read f_UseCloseHyperlink
     write f_UseCloseHyperlink;
  end;

  TnscCustomTreeComboWithHistory = class(TDropDownTree)
  private
   f_OnPastingString : TnscOnPastingString;
   {$IfNDef ctEverestEdit}
   f_Pasting         : Boolean;
   f_PastePassed     : Boolean;
   {$EndIf  ctEverestEdit}
   f_HistoryItems    : Tl3Strings;
   f_ShowHistory     : Boolean;
   f_HistoryRoot     : Il3SimpleRootNode;
   f_PromptTree      : Il3SimpleTree;
{$IfNDef DesignTimeLibrary}
   f_RootNode: Il3SimpleNode;
{$EndIf DesignTimeLibrary}
   f_DropDownCount: Integer;
   {$IfNDef ctEverestEdit}
   f_DoubleClickMoment: TDateTime;
   f_DoubleClickPoint: TSmallPoint;
   {$EndIf ctEverestEdit}
   f_LockShowPrompts: Integer;
   f_PromptColor: TColor;
   f_PromptStyle: TFontStyles;
   f_ListIsHistory: Boolean;
   f_PromptBackColor: TColor;
   f_PromptViewOptions : TvtViewOptions;
   f_SavedText: Il3CString;
   f_LockSaveText: Boolean;
   f_OnSelect: TNotifyEvent;
   f_Pasting : Boolean;
   f_Filtering: Boolean;
   f_PropmtTreeUsed: Boolean;
   f_CloseFont: TafwFont;
   f_CloseHyperLinkColor: TColor;
   f_ChangeTimer: TTimer;
   f_ChangeTime: Cardinal;
  private
   procedure pm_SetCloseHyperLinkColor(const Value: TColor);
     {-}
   procedure pm_SetHistoryItems(const Value: Tl3Strings);
     {-}
   procedure pm_SetPromptTree(const aValue: Il3SimpleTree);
     {-}
   procedure pm_SetDropDownCount(const aValue: Integer);
     {-}
   procedure MakeNodesFromItems;
     {-}
   procedure FilterNewTree;
     {-}
   procedure ChangeDropTree(ForHistory: Boolean; ForceChange: Boolean = False);
     {-}
   procedure TreeCurrentChanged(Sender:TObject; aNewCurrent : Longint; aOldCurrent : Longint);
     {-}
   procedure DoSetCOntextText(const aText: Il3CString; SetToEnd: Boolean);
     {-}
   function CloseFont: TFont;
     {-}
   procedure ChangeTimerTick(Sender: TObject);
     {-}
{$IfNDef DesignTimeLibrary}
   procedure pm_SetRootNode(const Value: Il3SimpleNode);
     {-}
   procedure SetRoot(const aRoot:Il3SimpleNode);
     {-}
   function getFullPath(const aNode: Il3SimpleNode): Il3CString;
     {-}
{$EndIf DesignTimeLibrary}
   procedure CNKeyDown(var Message: TWMKeyDown);
     message CN_KEYDOWN;
     {-}
   procedure CMFontChanged(var Message: TMessage);
     message CM_FONTCHANGED;
     {-}
   {$IfDef ctEverestEdit}
   procedure WMSysKeyDown(var Message: TWMSysKeyDown);
     message WM_SYSKEYDOWN;
     {-}
   {$EndIf ctEverestEdit}
 {$IfNDef ctEverestEdit}
    procedure WMLButtonDblClk(var Msg : TWMLButtonDblClk);
      message WM_LBUTTONDBLCLK;
      {-}
  protected
    procedure MouseDown(Button : TMouseButton;
                        Shift  : TShiftState;
                        X, Y   : Integer);
      override;
      {-}
  {$EndIf  ctEverestEdit}
  protected
   {$IfNDef ctEverestEdit}
   procedure TriggerTextChangedEvent(Sender    : TObject;
                                     var aText : Il3CString;
                                     var Allow : boolean);
     override;
     {-}
   {$EndIf  ctEverestEdit}
   {$IfNDef DesignTimeLibrary}
   procedure SetDropped(const Value:boolean);
     override;
     {-}
   {$EndIf  DesignTimeLibrary}
   {$IfDef ctEverestEdit}
   procedure Validate;
     override;
     {-}
   function DoDoDrop(aFormat       : Tl3ClipboardFormat;
                   const aMedium : Tl3StoragePlace;
                   var dwEffect  : Longint): Boolean;
     override;
     {-}
   {$EndIf ctEverestEdit}
   procedure ButtonClick(Sender:TObject);
     override;
     {-}
   procedure RecreateTreeIfNeeded(Value: TComboStyle);
     override;
     {-}
   procedure ProcessTreeSelect(ChooseFromTree : boolean;
                               aTriggerSelect : boolean);
     override;
     {-}
   procedure Change;
     override;
     {-}
   function EstimateTreeHeight(aMinSize, aMaxSize: integer): integer;
     override;
     {-}
   procedure DoSelect;
     {-}
   function TranslateHomeEndToDropDown: Boolean;
     override;
     {-}
   function DefineProvideOperations: TevEditorProvideOperationTypes;
     override;
      {* - Какие операции публикуются компонентом. }
   function CreateSubTree: TSubTree;
     override;
     {-}
   procedure CloseDropDownByHyperlink;
     {-}
   function  DoProcessCommand(Cmd    : TevOperationCode;
                              aForce : Boolean;
                              aCount : Integer): Boolean;
     override;
     {-}
    function EstimateTreeWidth(aMaxSizeX, aSizeY: integer): integer; override;
      {-}
  public
   {$IfNDef ctEverestEdit}
   function ReadTextFromClipboard: Il3CString;
    override;
     {-}
   function PasteFromClipboard: boolean;
    override;
     {-}
   {$EndIf  ctEverestEdit}
  protected
   procedure Cleanup;
     override;
     {-}
  public
   constructor Create(AOwner:TComponent);
     override;
     {-}
   procedure ResetPropmtTreeUsage;
     {-}
   function NeedAlignMarksOnSingleClick: Boolean; override;
  protected
{$IfNDef DesignTimeLibrary}
    property RootNode: Il3SimpleNode
      read f_RootNode
      write pm_SetRootNode;
      {-}
{$EndIf DesignTimeLibrary}
   property OnPastingString: TnscOnPastingString
       read f_OnPastingString
      write f_OnPastingString;
      {-}
   property DropDownCount: Integer
     read f_DropDownCount
     write pm_SetDropDownCount
     default 7;
     {-}
   property PromptColor: TColor
    read f_PromptColor
    write f_PromptColor
    default clWindowText;
     {-}
   property PromptStyle: TFontStyles
    read f_PromptStyle
    write f_PromptStyle
    default [];
     {-}
   property PromptBackColor: TColor
    read f_PromptBackColor
    write f_PromptBackColor
    default $02BDF9FF;
     {-}
    property PromptViewOptions : TvtViewOptions
      read f_PromptViewOptions
      write f_PromptViewOptions
      default [];
      {-}
   property OnSelect: TNotifyEvent
    read f_OnSelect
    write f_OnSelect;
     {-}
   property CloseHyperLinkColor: TColor
     read f_CloseHyperLinkColor
     write pm_SetCloseHyperLinkColor
     default clBlue;
     {-}
  public
   property HistoryItems: Tl3Strings read f_HistoryItems write pm_SetHistoryItems;
   property PromptTree: Il3SimpleTree read f_PromptTree write pm_SetPromptTree;
   property EmptyHintColor default cDefaultContextEmptyColor;
   property PropmtTreeUsed: Boolean read f_PropmtTreeUsed;
   property Button;
  end;//TnscCustomTreeComboWithHistory

  TnscTreeComboWithHistory = class(TnscCustomTreeComboWithHistory)
  published
   property Anchors;
   property Ctl3D;
   property EmptyHint;
   property EmptyHintColor;
   property Enabled;
   property Font;
   property ParentColor;
   property ParentCtl3D;
   property ParentFont;
   property ParentShowHint;
   property ShowHint;
   property TabOrder;
   property UseSystemMenu;
   property PopupMenu;
   property DropDownCount;
   property PromptColor;
   property PromptStyle;
   property PromptBackColor;
   property PromptViewOptions;
   property OnPastingString;
   property OnResize;
   property OnSelect;
   property CloseHyperLinkColor;
  end;//TnscCustomPreviewPanel

implementation

uses
 Forms,
 SysUtils,

 l3Base,
 l3Nodes,
 l3String,
 l3Chars,
 l3SimpleTree,
 l3Units,
 l3MinMax,

 afwFacade,

 {$IfDef ctEverestEdit}
 evMsgCode,
 nevTools,
 {$EndIf ctEverestEdit}

 OvcCmd,
 OvcConst,

 evOp,

 nscInterfaces,

 ComboBoxStrings,
 ctButtonEdit,

 nscCustomTreeComboWithHistoryRes,
 vtF1InterfaceConst

 {$If Defined(Nemesis) AND Defined(Shell)}
 ,
 vg_Scene
 {$IfEnd}

 ,
 l3Drawer
 ;

type _Instance_R_ = TnscSubTree;
type _RegionableControl_R_ = TnscSubTree;

{$Include w:\common\components\gui\Garant\SkinnedControls\RegionableControl.imp.pas}

const
 cHalfChangeInterval = 125;

{ TnscCustomTreeComboWithHistory }

constructor TnscCustomTreeComboWithHistory.Create(AOwner: TComponent);
begin
 inherited;
 EmptyHintColor := cDefaultContextEmptyColor;
 f_HistoryItems := TComboBoxStrings.Create;
 f_DropDownCount := 7;
 f_PromptColor := clWindowText;
 f_PromptStyle := [];
 f_ListIsHistory := True;
 f_PromptBackColor := $02BDF9FF;
 f_CloseHyperLinkColor := clBlue;
 f_ChangeTimer := TTimer.Create(nil);
 f_ChangeTimer.Interval := cHalfChangeInterval * 2;
 f_ChangeTimer.Enabled := False;
 f_ChangeTimer.OnTimer := ChangeTimerTick;
end;

procedure TnscCustomTreeComboWithHistory.MakeNodesFromItems;
{$IfNDef DesignTimeLibrary}
(*var
 l_Root     : Tl3UsualNode;
 l_SubNode  : Tl3UsualNode;
 l_Count    : integer;
 l_OldIndex : integer;*)
var 
 l_Node    : Il3SimpleRootNode;
{$EndIf DesignTimeLibrary}
begin
 {$IfNDef DesignTimeLibrary}
 if (f_HistoryItems.Count > 0) then
 begin
  if Supports(f_HistoryItems, Il3SimpleRootNode, l_Node) then
   try
    f_HistoryRoot := l_Node;
   finally
    l_Node := nil;
   end;//try..finally
(*  if (f_ItemCachedText <> f_HistoryItems.FuckItems.Text) then
  begin
   l_Root := Tl3UsualNode.Create;
   try
    for l_Count := 0 to f_HistoryItems.Count - 1 do
    begin
     l_SubNode := Tl3UsualNode.Create;
     try
      l_SubNode.Text := f_HistoryItems.ItemW[l_Count];
      l_Root.InsertChild(l_SubNode);
     finally
      l3Free(l_SubNode);
     end;//try..finally
    end;//for lCount
    f_HistoryRoot := l_Root;
    f_ItemCachedText := f_HistoryItems.FuckItems.Text;
   finally
    l3free(l_Root);
   end;//try..finally
  end;//FItemCachedText <> FItems.FuckItems.Text*)
 end;//FItems.Count > 0
 {$EndIf DesignTimeLibrary}
end;

{$IfNDef ctEverestEdit}
function TnscCustomTreeComboWithHistory.PasteFromClipboard: boolean;
begin
 f_Pasting := True;
 f_PastePassed := False;
 try
  Result := Inherited PasteFromClipboard;
  if not Result and f_PastePassed then
  begin
   SetSelText(ReadTextFromClipboard);
   UnSelect;
   Result := True;
   if NotifyUserChangeOnly then
    Change;
  end;//not Result
  if not Result then
  begin
   f_Pasting := False;
   Result := Inherited PasteFromClipboard;
  end;//not Result
 finally
  f_Pasting := False;
 end;//try..finally
end;

function TnscCustomTreeComboWithHistory.ReadTextFromClipboard: Il3CString;
begin
 Result := Inherited ReadTextFromClipboard;
 if Assigned(f_OnPastingString) then
  f_OnPastingString(Self, Result);
end;
{$EndIf ctEverestEdit}

procedure TnscCustomTreeComboWithHistory.pm_SetHistoryItems(
  const Value: Tl3Strings);
begin
 f_HistoryItems.Assign(Value);
end;

{$IfNDef ctEverestEdit}
procedure TnscCustomTreeComboWithHistory.TriggerTextChangedEvent(
  Sender: TObject; var aText: Il3CString; var Allow: boolean);
begin
 inherited;
 if f_Pasting then
 begin
  f_PastePassed := Allow;
  Allow := False;
 end;
end;
{$EndIf  ctEverestEdit}

procedure TnscCustomTreeComboWithHistory.Cleanup;
begin
 {$IfNDef DesignTimeLibrary}
 f_RootNode := nil;
 {$EndIf  DesignTimeLibrary}
 f_HistoryRoot := nil;
 f_PromptTree := nil;
 f_SavedText := nil;
 l3Free(f_HistoryItems);
 l3Free(f_CloseFont);
 f_ChangeTimer.Enabled := False;
 l3Free(f_ChangeTimer);
 inherited;
end;

{$IfNDef DesignTimeLibrary}
procedure TnscCustomTreeComboWithHistory.pm_SetRootNode(
  const Value: Il3SimpleNode);
begin
 if (Value <> f_RootNode) or (Assigned(Value) and not Value.IsSame(f_RootNode)) then
 begin
  f_RootNode := Value;
  SetRoot(Value);

  {$If Defined(Nemesis) AND Defined(Shell)}
  if (FDropWidth = 0) then
   FDropWidth := Width;
  if (ExtButton <> nil) then
  begin
   FDropWidth := Max(FDropWidth,
                 Trunc(ExtButton.Scene.LocalToScreen(ExtButton.LocalToAbsolute(vgPoint(0, 0))).X
                  + ExtButton.Width)
                  - Self.ClientToScreen(Point(0, 0)).X);
  end;//ExtButton <> nil
  {$Else}
   FDropWidth := Width;
  {$IfEnd}
  Tree.Width:=FDropWidth;
  FDropHeight:=EstimateTreeHeight(Tree.GetMinSizeY, Tree.GetMaxSizeY);
  inc(FDropHeight, Tree.getBorderSize);
  Tree.Height:=FDropheight;

  Dropped:=false;
 end;//if not Value.IsSame(f_RootNode)
end;

procedure TnscCustomTreeComboWithHistory.SetRoot(
  const aRoot: Il3SimpleNode);
begin
 if not Tree.TreeStruct.RootNode.IsSame(aRoot) then
 begin
  DropSessionSettings;
  Tree.SetTreeRoot(aRoot);
  {$IfNDef ctEverestEdit}
  TreeChanged;
  {$EndIf  ctEverestEdit}
 end;//not Tree.TreeStruct.RootNode.IsSame(aRoot)
end;

function TnscCustomTreeComboWithHistory.getFullPath(
  const aNode: Il3SimpleNode): Il3CString;

 function GetPath(const aNode: Il3SimpleNode): Il3CString;
 begin//GetPath
  Result := nil;
  if (aNode.Parent <> nil) and not aNode.IsSame(RootNode) then
  begin
   Result := GetPath(aNode.Parent);
   if not l3IsNil(Result) then
    Result := l3Cat(Result, '\');
   Result := l3Cat([Result, l3CStr(aNode)]);
  end;
 end;//GetPath

begin
 if (aNode = nil) then
  Result := nil
 else
 { если передают рутовую ноду - показываем иначе строим путь без рутовой ноды (СКР в Немезисе) }
 if (Tree.ShowRoot) and (aNode.Parent = nil) then
  Result := l3CStr(aNode)
 else
  Result := GetPath(aNode);
end;
{$EndIf DesignTimeLibrary}

function FindCurrent(const aTree : Il3SimpleTree;
                     const aText : Il3CString): Il3SimpleNode;

 function FindCurr(const aIterNode: Il3SimpleNode): boolean;
 begin//FindCurr
  Result := l3Same(aIterNode.Text, aText, true);
 end;//FindCurr

begin
 Result := aTree.SimpleIterateF(l3L2SNA(@FindCurr), imCheckResult);
end;

{$IfNDef DesignTimeLibrary}
procedure TnscCustomTreeComboWithHistory.SetDropped(const Value: boolean);
var
 l_Node: Il3SimpleNode;
begin
 if (Value <> FDropped) then
 begin
  if Value then
  begin
   if (Windows.GetFocus <> Self.Handle) then
     Windows.SetFocus(Self.Handle);
   if cmButtonClick in FCurrentMode then
    f_ShowHistory := True;
   if f_ShowHistory then
   begin
    MakeNodesFromItems;
    ChangeDropTree(True);
    if (f_HistoryRoot <> nil) then
     if not f_HistoryRoot.IsSame(f_RootNode) then
     begin
      f_RootNode := f_HistoryRoot;
      Tree.TreeStruct := Tl3SimpleTree.Make(f_HistoryRoot);
     end;//not f_HistoryRoot.IsSame(f_RootNode)
    l_Node := FindCurrent(Tree.TreeStruct, Text);
    if (l_Node <> nil) then
     Tree.GotoOnNode(l_Node);
   end//f_ShowHistory
   else
   begin
    ChangeDropTree(False);
    if Assigned(f_PromptTree) and (f_PromptTree.CountView > 0) then
     RootNode := f_PromptTree.RootNode
    else
     RootNode := nil;
   end;//f_ShowHistory
   CalcDropDimensions;
  end//Value
  else
  begin
   if not f_ShowHistory then
   begin
    Inc(f_LockShowPrompts);
    try
     DoSetCOntextText(f_SavedText, False);
    finally
     Dec(f_LockShowPrompts);
    end;
   end;
  end;//Value
(*  if Value then
   (Tree As TnscSubTree).UpdateRegion;*)
  inherited;
 end;//Value <> FDropped
end;
{$EndIf  DesignTimeLibrary}

{$IfDef ctEverestEdit}
const
 op_Paste = ev_msgLast + 1;
 
procedure TnscCustomTreeComboWithHistory.Validate;
  //override;
  {-}
var
 l_Text : Il3CString;
 l_Prev : Il3CString;
 l_X    : Integer;
begin
 inherited;
 if f_Pasting then
  if Assigned(f_OnPastingString) then
  begin
   l_Text := Text;
   l_Prev := l_Text;
   f_OnPastingString(Self, l_Text);
   if not l3Same(l_Prev, l_Text) then
   begin
    l_X := CaretX;
    try
     f_Pasting := false;
     try
      Paras.ParagraphStrings[0] := l_Text;
     finally
      f_Pasting := true;
     end;//try..finally
    finally
     CaretX := l_X;
    end;//try..finally
   end;//not l3Same
  end;//Assigned(f_OnPastingString)
end;

function TnscCustomTreeComboWithHistory.DoDoDrop(aFormat: Tl3ClipboardFormat;
  const aMedium: Tl3StoragePlace; var dwEffect: Integer): Boolean;
var
 l_Op   : InevOp;
begin
 Assert(not f_Pasting);
 f_Pasting := true;
 try
  l_Op := StartOp(op_Paste);
  try
   Result := inherited DoDoDrop(aFormat, aMedium, dwEffect);
  finally
   l_Op := nil;
  end;//try..finally
 finally
  f_Pasting := false;
 end;//try..finally
end;
{$EndIf ctEverestEdit}

procedure TnscCustomTreeComboWithHistory.ProcessTreeSelect(ChooseFromTree,
  aTriggerSelect: boolean);
begin
 inherited;
{$IfNDef DesignTimeLibrary} //morozov
 if ChooseFromTree then
 begin
  Inc(f_LockShowPrompts);
  try
   if Tree.Current <> -1 then
    Paras.ParagraphStrings[0] := getFullPath(Tree.GetCurrentNode);
   DoSelect;
  finally
   Dec(f_LockShowPrompts);
  end;//try..finally
 end;//ChooseFromTree
{$EndIf DesignTimeLibrary} //morozov
end;

procedure TnscCustomTreeComboWithHistory.ButtonClick(Sender: TObject);
begin
 if not Dropped then
  f_ShowHistory := True;
 inherited;
end;

procedure TnscCustomTreeComboWithHistory.RecreateTreeIfNeeded(
  Value: TComboStyle);
begin
 inherited;
{$IfNDef DesignTimeLibrary}
 with Tree do
 begin
  ControlStyle := ControlStyle - [csCaptureMouse];
  Visible := false;
  BorderStyle := bsSingle;
  Align := alNone;
  OnActionElement := ActionElementHandler;
  Font := Self.Font;
  ActionElementMode := l3_amSingleClick;
  OnGetItemImage := GetItemImageHandler;
  isShowLines := true;
  Tree.OnCurrentChanged := TreeCurrentChanged;
  ViewOptions := PromptViewOptions;
  MultiStrokeItem := true;
 end;//with Tree
 ShowIcons := false;
{$EndIf DesignTimeLibrary}
end;

procedure TnscCustomTreeComboWithHistory.CNKeyDown(
  var Message: TWMKeyDown);
{$IfNDef ctEverestEdit}
var
 l_ShiftState    : TShiftState;
 l_CheckShortcut : boolean;
{$EndIf ctEverestEdit}
begin
 if (Message.CharCode = VK_SUBTRACT) and (KeyDataToShiftState(Message.KeyData) = []) then
  Message.CharCode := cMinusKeyCode;
 if (Message.CharCode = VK_ADD) and (KeyDataToShiftState(Message.KeyData) = []) then
  Message.CharCode := cPlusKeyCode;
 afw.BeginOp;
 try
  {$IfNDef DesignTimeLibrary}
  {$IfNDef ctEverestEdit}
  l_ShiftState := KeyDataToShiftState(Message.KeyData);

  l_CheckShortcut := True;
  if FDropped and (l_ShiftState = []) then
   if (Message.CharCode = VK_RETURN) or (Message.CharCode = VK_ESCAPE) then
    l_CheckShortcut := False;

  if l_CheckShortcut then
  begin
   with Controller.EntryCommands do
   begin
    l_Translation := TranslateUsing(OvcCmd.ovcTextEditorCommands,
     TMessage(Message), GetTickCount, Self);
    case l_Translation of
     ccShortCut: begin
      Message.CharCode := 0;
      Message.Result := 1;
      exit;
     end;
    end;//case l_Translation
   end;//with Controller.EntryCommands
  end;//l_CheckShortcut
  {$EndIf  ctEverestEdit}

  if (Message.CharCode = VK_RETURN) then
  begin
   if FDropped then
   begin
    Dropped:=false;
    ProcessTreeSelect(true, true);
   end//FDropped
   else
   begin
    ProcessTreeSelect(false, true);
    {$IfDef ctEverestEdit}
    // - здесь обрабатываем ShortCut'ы.
    inherited;
    Exit;
    {$EndIf ctEverestEdit}
   end;//FDropped

   Message.CharCode := 0;
   Message.Result := 1;
   exit;
  end;//ComboboxStyle <> cbEdit..
  {$EndIf DesignTimeLibrary}
  inherited;
 finally
  afw.EndOp;
 end;
end;

{$IfDef ctEverestEdit}
procedure TnscCustomTreeComboWithHistory.WMSysKeyDown(
  var Message: TWMSysKeyDown);
begin
 afw.BeginOp;
 try
  if (Controller.EntryCommands.TranslateUsing([OvcCmd.scDefaultTableName], TMessage(Message), GetTickCount) <> ccShortcut) then
   inherited;
 finally
  afw.EndOp;
 end;//try..finally
end;
{$EndIf ctEverestEdit}

procedure TnscCustomTreeComboWithHistory.pm_SetPromptTree(
  const aValue: Il3SimpleTree);
begin
 f_PromptTree := aValue;
end;

procedure TnscCustomTreeComboWithHistory.Change;
begin
 if not f_LockSaveText then
 begin
  if not l3Same(f_SavedText, Text) then
  begin
   f_SavedText := Text;
   if Assigned(f_PromptTree) and (TextLen > 0) and (f_LockShowPrompts = 0) then
   begin
    f_ChangeTimer.Enabled := True;
    f_ChangeTime := GetTickCount;
   end;
  end;
  if (not f_ShowHistory)
     and (TextLen = 0) // http://mdp.garant.ru/pages/viewpage.action?pageId=263291165
  then
   Dropped := False;
 end;
 inherited;
end;

procedure TnscCustomTreeComboWithHistory.FilterNewTree;
{$IfNDef DesignTimeLibrary}
var
 l_FilterableTree : Il3FilterableTree;
 l_SyncIndex      : Integer;
{$EndIf DesignTimeLibrary}
begin
 {$IfNDef DesignTimeLibrary}
 f_Filtering := True;
 try
  if Supports(f_PromptTree, Il3FilterableTree, l_FilterableTree) then
  begin
   f_PromptTree := l_FilterableTree.MakeFiltered(l_FilterableTree.
                                                 CloneFilters.
                                                 SetContext(Text),
                                                 nil,
                                                 l_SyncIndex);
   ChangeDropTree(False, True);
   if Assigned(f_PromptTree) then
   begin
    RootNode := f_PromptTree.RootNode;
    Tree.Current := -1;
   end
   else
    RootNode := nil;
  end//if Supports(f_PromptTree, Il3FilterableTree, l_FilterableTree)
 finally
  f_Filtering := False;
 end;
 {$EndIf DesignTimeLibrary}
end;

const
 cFrameWidth = 3;
 
function TnscCustomTreeComboWithHistory.EstimateTreeHeight(aMinSize,
  aMaxSize: integer): integer;
begin
 Result := (Tree.RowHeight + Tree.InterRowIndent + 1) * DropDownCount +
           cFrameWidth * 2 +
           Tree.InterRowIndent;
end;

procedure TnscCustomTreeComboWithHistory.pm_SetDropDownCount(
  const aValue: Integer);
begin
 if (aValue < 0) or (aValue > 120) then
 begin
  Assert(False);
  Exit;
 end;
 f_DropDownCount := aValue;
end;

{$IfNDef ctEverestEdit}
procedure TnscCustomTreeComboWithHistory.MouseDown(Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if (Button = mbLeft) and (MilliSecondsBetween(Now, f_DoubleClickMoment) < GetDoubleClickTime) and
 (Abs(f_DoubleClickPoint.X - X) < GetSystemMetrics(SM_CXDOUBLECLK)) and
 (Abs(f_DoubleClickPoint.Y - Y) < GetSystemMetrics(SM_CYDOUBLECLK)) then
  SelectAll
 else
  inherited;
end;

procedure TnscCustomTreeComboWithHistory.WMLButtonDblClk(
  var Msg: TWMLButtonDblClk);
begin
 inherited;
 f_DoubleClickMoment := Now;
 f_DoubleClickPoint := Msg.Pos;
end;
{$EndIf ctEverestEdit}

procedure TnscCustomTreeComboWithHistory.ChangeDropTree(
  ForHistory: Boolean; ForceChange: Boolean = False);
begin
 Tree.SelectColor.TextColor := clWhite;
 Tree.SelectColor.BackColor := cGarant2011SelectionColor;
 Tree.SelectNonFocusColor.TextColor := clWhite;
 Tree.SelectNonFocusColor.BackColor := cGarant2011SelectionColor;
 if ForHistory then
 begin
  if not f_ListIsHistory or ForceChange then
  begin
   f_ListIsHistory := True;
   Tree.SetSimpleTree(nil);
   Tree.Font := Self.Font;
   Tree.Color := Color;
   Tree.AllowWithoutCurrent := False;
   TnscSubTree(Tree).UseCloseHyperLink := False;
   Tree.ViewOptions := PromptViewOptions;
   Tree.MultiStrokeItem := true;
  end;//not f_ListIsHistory or ForceChange
 end//ForHistory
 else
 begin
  if f_ListIsHistory or ForceChange then
  begin
   f_ListIsHistory := False;
   Tree.SetSimpleTree(f_PromptTree);
   Tree.Font := Self.Font;
   Tree.Font.Style := PromptStyle;
   Tree.Font.Color := PromptColor;
   Tree.Color := PromptBackColor;
   Tree.AllowWithoutCurrent := True;
   Tree.Current := -1;
   TnscSubTree(Tree).UseCloseHyperLink := True;
   Tree.ViewOptions := PromptViewOptions;
   Tree.MultiStrokeItem := true;
  end;//f_ListIsHistory or ForceChange
 end;//ForHistory
end;

procedure TnscCustomTreeComboWithHistory.TreeCurrentChanged(Sender:TObject; aNewCurrent,
  aOldCurrent: Integer);
begin
{$IfNDef DesignTimeLibrary}
 if not f_ListIsHistory and (f_Filtering or Dropped) then
 begin
  if Dropped and not f_Filtering then
   f_PropmtTreeUsed := True;

  f_LockSaveText:=True;
  Inc(FRestrictOnTextChange); // http://mdp.garant.ru/pages/viewpage.action?pageId=314216049
  try
   if aNewCurrent = -1 then
    DoSetCOntextText(f_SavedText, Dropped and not f_Filtering)
   else
    DoSetCOntextText(getFullPath(Tree.GetCurrentNode), Dropped and not f_Filtering);
  finally
   f_LockSaveText:=False;
   Dec(FRestrictOnTextChange);
  end;
 end;
{$EndIf DesignTimeLibrary}
end;

procedure TnscCustomTreeComboWithHistory.DoSelect;
begin
 if Assigned(f_OnSelect) then
  f_OnSelect(Self);
end;

procedure TnscCustomTreeComboWithHistory.DoSetCOntextText(
  const aText: Il3CString; SetToEnd: Boolean);
begin
 if not l3Same(Text, aText) then
  Paras.ParagraphStrings[0] := aText;
 if SetToEnd then
  ProcessCommand(ev_ocLineEnd, False, 1);
end;

function TnscCustomTreeComboWithHistory.TranslateHomeEndToDropDown: Boolean;
begin
 Result := False;
end;

procedure TnscCustomTreeComboWithHistory.ResetPropmtTreeUsage;
begin
 f_PropmtTreeUsed := False;
end;

function TnscCustomTreeComboWithHistory.NeedAlignMarksOnSingleClick: Boolean;
begin
 Result := false;
end;

function TnscCustomTreeComboWithHistory.DefineProvideOperations: TevEditorProvideOperationTypes;
begin
 Result := inherited DefineProvideOperations - [potText];
end;

function TnscCustomTreeComboWithHistory.CreateSubTree: TSubTree;
begin
 Result := TnscSubTree.Create(Self);
end;

procedure TnscCustomTreeComboWithHistory.CloseDropDownByHyperlink;
begin
 ButtonClick(Button);
end;

function TnscCustomTreeComboWithHistory.CloseFont: TFont;
begin
 if f_CloseFont = nil then
 begin
  f_CloseFont := TafwFont.Create;
  f_CloseFont.Assign(Font);
  f_CloseFont.Size := f_CloseFont.Size - 2;
  f_CloseFont.Style := f_CloseFont.Style + [fsUnderline];
  f_CloseFont.Color := CloseHyperLinkColor;
  // Открытый вопрос с CharSet. Сейчас берется от Self.Font, но возможно
  // надо вычислять от Il3CString.AsWStr.SCodePage..
 end;
 Result := f_CloseFont;
end;

procedure TnscCustomTreeComboWithHistory.CMFontChanged(
  var Message: TMessage);
begin
 inherited;
 l3Free(f_CloseFont);
end;

procedure TnscCustomTreeComboWithHistory.pm_SetCloseHyperLinkColor(
  const Value: TColor);
begin
 if f_CloseHyperLinkColor <> Value then
 begin
  f_CloseHyperLinkColor := Value;
  invalidate;
 end;
end;

procedure TnscCustomTreeComboWithHistory.ChangeTimerTick(Sender: TObject);
begin
 if f_ChangeTimer.Enabled and ((GetTickCount - f_ChangeTime) > cHalfChangeInterval) then
 begin
  f_SavedText := Text;
  if Assigned(f_PromptTree) and (TextLen > 0) and (f_LockShowPrompts = 0) then
  begin
   FilterNewTree;
   if Assigned(f_PromptTree) and (f_PromptTree.CountView > 0) then
   begin
    if FDropped and f_ShowHistory then
     Dropped := False;
    f_ShowHistory := False;
    Dropped := True;
   end
   else
    Dropped := False;
  end;
  if (TextLen = 0) and not f_ShowHistory then
   Dropped := False;
  f_ChangeTimer.Enabled := False;
 end;
end;

function TnscCustomTreeComboWithHistory.DoProcessCommand(
  Cmd: TevOperationCode; aForce: Boolean; aCount: Integer): Boolean;
begin
 if Cmd = ev_ocBreakPara then
  Result := False
 else
  Result := inherited DoProcessCommand(Cmd, aForce, aCount);
end;

function TnscCustomTreeComboWithHistory.EstimateTreeWidth(aMaxSizeX, aSizeY: integer): integer; //override;
  {-}
begin
 Result := inherited EstimateTreeWidth(aMaxSizeX, aSizeY);
 {$If Defined(Nemesis) AND Defined(Shell)}
 if (ExtButton <> nil) then
 begin
  Result := Max(Result,
                Trunc(ExtButton.Scene.LocalToScreen(ExtButton.LocalToAbsolute(vgPoint(0, 0))).X
                 + ExtButton.Width)
                 - Self.ClientToScreen(Point(0, 0)).X);
 end;//ExtButton <> nil
 {$IfEnd}
end;

{ TnscSubTree }

constructor TnscSubTree.Create(
  const aOwner: TnscCustomTreeComboWithHistory);
begin
 inherited Create(aOwner);
end;

const
 cButtonHeight = 22;
 
procedure TnscSubTree.Paint(const CN: Il3Canvas);
  //override;
  {-}
begin
 inherited;
 with Self.ClientRect do
  DrawCloseButton(CN.DC, Rect(Left, Bottom - cButtonHeight + 1, Right, Bottom + 1));
end;

procedure TnscSubTree.DrawCloseButton(aDC: HDC; const DrawRect: TRect);
  {-}
var
 l_BkMode  : Cardinal;
 l_Font    : HFont;
 l_Height  : Integer;
 l_Color   : TColorRef;
 l_Message : Tl3WString;
 l_Rgn     : hRGN;
 l_R       : Tl3Region;
 l_Rad     : Integer;
 l_RgnRect : TRect;
 l_D       : Tl3Drawer;
 l_FW      : Integer;
begin
 if UseCloseHyperlink then
 begin

  {$If defined(Nemesis)}
  l_Message := str_nsc_CloseHyperlinkText.AsCStr.AsWStr;
  {$IfEnd}

  l_Height := DrawRect.Bottom - DrawRect.Top;

  with TnscCustomTreeComboWithHistory(FSubOwner).CloseFont do
  begin
   Style := (Style - [fsUnderline]) + [fsItalic];
   Size := 10;
  end;//with TnscCustomTreeComboWithHistory(FSubOwner).CloseFont
  l_Font := SelectObject(aDC, TnscCustomTreeComboWithHistory(FSubOwner).CloseFont.Handle);
  try
   if (f_CloseSize.CY = 0) then
   begin
    if l_Message.SCodePage = CP_UNICODE then
     GetTextExtentPoint32W(aDC, PWideChar(l_Message.S), l_Message.SLen, f_CloseSize)
    else
     GetTextExtentPoint32A(aDC, l_Message.S, l_Message.SLen, f_CloseSize)
   end;//f_CloseSize.CY = 0
   f_CloseRect := DrawRect;
   f_CloseRect.Right := f_CloseRect.Right - l_Height div 3;
   f_CloseRect.Left := f_CloseRect.Right - f_CloseSize.CX;
   f_CloseRect.Top := f_CloseRect.Top + (l_Height - f_CloseSize.CY) div 2;
   f_CloseRect.Bottom := f_CloseRect.Top + f_CloseSize.CY;

   if f_CloseRect.Left < l_Height then
    f_CloseRect.Left := l_Height;

   l_D := Tl3Drawer.Create(aDC);
   try
    l_R := Tl3Region.Create;
    try
     l_Rad := l_Height div 2 + 1;
     l_RgnRect := Rect(f_CloseRect.Left - l_Height div 3,
                       DrawRect.Top,
                       DrawRect.Right,
                       DrawRect.Bottom + 1);
     l_R.Rgn := CreateRoundRectRgn(l_RgnRect.Left,
                                   l_RgnRect.Top,
                                   l_RgnRect.Right,
                                   l_RgnRect.Bottom,
                                   l_Rad,
                                   l_Rad);
     l_R.CombineRect(l3SRect(l_RgnRect.Left + l_Rad,
                             l_RgnRect.Top,
                             l_RgnRect.Right,
                             l_RgnRect.Bottom), RGN_OR);
     l_R.CombineRect(l3SRect(l_RgnRect.Left,
                             l_RgnRect.Top + l_Rad,
                             l_RgnRect.Right,
                             l_RgnRect.Bottom), RGN_OR);
     l_D.FillRegion(l_R.Rgn, cGarant2011SelectionColor);
     l_FW := 2;
     Dec(l_Rad);
     l_D.DrawArc(l_RgnRect.Left + l_FW - 1,
                 l_RgnRect.Top + 1{ + l_Rad - l_FW{ + 1},
                 l_Rad, l_Rad, 180, 90, l_FW + 1, cGarant2011SelectionColor);
    finally
     FreeAndNil(l_R);
    end;//try..finally
    l_BkMode := SetBkMode(aDC, TRANSPARENT);
    try
     SelectObject(aDC, TnscCustomTreeComboWithHistory(FSubOwner).CloseFont.Handle);
     SetBkColor(aDC, cGarant2011SelectionColor);
     l_Color := SetTextColor(aDC, clWhite{ColorToRGB(TnscCustomTreeComboWithHistory(FSubOwner).CloseFont.Color)});
     try
      if l_Message.SCodePage = CP_UNICODE then
       DrawTextW(aDC, PWideChar(l_Message.S), l_Message.SLen, f_CloseRect, DT_END_ELLIPSIS)
      else
       DrawTextA(aDC, l_Message.S, l_Message.SLen, f_CloseRect, DT_END_ELLIPSIS);
     finally
      SetTextColor(aDC, l_Color);
     end;//try..finally
    finally
     SetBkMode(aDC, l_BkMode);
    end;//try..finally
    f_CloseRect.Left := l_RgnRect.Left;
   finally
    FreeAndNil(l_D);
   end;//try..finally
  finally
   SelectObject(aDC, l_Font);
  end;//try..finally
 end;//UseCloseHyperlink
end;

function TnscSubTree.IsShowGripper: Boolean;
  {-}
begin
 Result := false;
end;

const
 cRad = 26;

procedure TnscSubTree.NCDraw(aDC: HDC);
var
 l_D : Tl3Drawer;
 l_Rgn : hRgn;
 l_FW  : Integer;
begin
 inherited;
 l_Rgn := CreateRectRgn(0,0,0,0);
 try
  GetWindowRgn(Self.Handle, l_Rgn);
  l_D := Tl3Drawer.Create(aDC);
  try
   l_FW := cFrameWidth + 3;
   l_D.FrameRegion(l_Rgn, l_FW, Self.Color);
   l_D.DrawArc(0 + l_FW - 1, Height - cRad - l_FW{ + 1}, cRad, cRad, 90, 90, l_FW + 1, Self.Color);
   l_FW := cFrameWidth - 1;
   l_D.FrameRegion(l_Rgn, l_FW, cGarant2011GradientStartColor);
   l_D.DrawArc(0 + l_FW - 1, Height - cRad - l_FW{ + 1}, cRad, cRad, 90, 90, l_FW + 1, cGarant2011GradientStartColor);
  finally
   FreeAndNil(l_D);
  end;//try..finally
 finally
  DeleteObject(l_Rgn);
 end;//try..finally
 with Self.ClientRect do
  DrawCloseButton(aDC, Rect(Left + cFrameWidth + 3,
                            Bottom + cFrameWidth - cButtonHeight + 2,
                            Right + cFrameWidth + 3,
                            Bottom + cFrameWidth + 2));
end;

function TnscSubTree.GetWidth: Integer;
 {-}
begin
 Result := inherited GetWidth;
(* {$If Defined(Nemesis) AND Defined(Shell)}
 if (FSubOwner.ExtButton <> nil) then
 begin
  Result := Max(Result, Trunc(FSubOwner.ExtButton.Position.X) - FSubOwner.Left);
 end;//FSubOwner.ExtButton <> nil
 {$IfEnd}*)
end;

procedure TnscSubTree.TuneRegion(aRegion: Tl3Region);
var
 l_R : Tl3Region;
begin
 //if Regionable then
 begin
  l_R := Tl3Region.Create;
  try
   l_R.Rgn := CreateRoundRectRgn(0, 0, Width + 1, Height + 1, cRad, cRad);
   aRegion.Combine(l_R, RGN_OR);
   aRegion.CombineRect(l3SRect(Width - cRad, 0, Width, Height), RGN_OR);
   aRegion.CombineRect(l3SRect(0, 0, Width, cRad), RGN_OR);
  finally
   FreeAndNil(l_R);
  end;//try..fianlly
 end;//Regionable
end;//TevCustomEdit.TuneRegion

function TnscSubTree.CanScrollWindow : Boolean;
  {-}
begin
 Result := false;
end;

procedure TnscSubTree.MouseWheelHandler(var Message: TMessage);
  {-}
begin
 inherited;
 Invalidate;
 // http://mdp.garant.ru/pages/viewpage.action?pageId=252512754&focusedCommentId=252514373#comment-252514373
 // - если этого не сделать, то можем видеть мусор от кнопки "Закрыть".
end;

const
 WS_EX_LAYERED = $00080000;
 
procedure TnscSubTree.CreateHandle;
  //override;
  {-}
begin
 inherited;
 //SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_LAYERED);
end;

procedure TnscSubTree.CreateParams(var Params: TCreateParams);
begin
 inherited;

 // http://mdp.garant.ru/pages/viewpage.action?pageId=263291236
 Params.Style := Params.Style and (not WS_BORDER);
end;

function TnscSubTree.ExcludeRect : TRect;
  //override;
  {-}
begin
 if UseCloseHyperlink then
  Result := f_CloseRect
 else
  Result := inherited ExcludeRect;
end;
  
procedure TnscSubTree.WMNCHitTest(var Message: TWMNCHitTest);
begin
 inherited;
 if UseCloseHyperlink and ptInRect(f_CloseRect, ScreenToClient(SmallPointToPoint(Message.Pos))) then
  Message.Result := HTCLOSE;
end;

procedure TnscSubTree.WMNCLButtonDown(var Message: TWMNCLButtonDown);
begin
 if Message.HitTest <> HTCLOSE then
  inherited;
end;

procedure TnscSubTree.WMNCLButtonUp(var Message: TWMNCLButtonUp);
begin
 inherited;
 if Message.HitTest = HTCLOSE then
  TnscCustomTreeComboWithHistory(FSubOwner).CloseDropDownByHyperlink;
end;

procedure TnscSubTree.WMSetCursor(var Message: TWMSetCursor);   
begin
 if UseCloseHyperlink and (Message.HitTest = HTCLOSE) then
 begin
  Windows.SetCursor(Screen.Cursors[crHandPoint]);
  Message.Result := 1;
 end//UseCloseHyperlink and (Message.HitTest = HTCLOSE)
 else
  inherited;
end;

procedure TnscSubTree.WMNCCalcSize(var Message: TWMNCCalcSize);
begin
 inherited;
 Inc(Message.CalcSize_Params.rgrc[0].Top, cFrameWidth);
 Dec(Message.CalcSize_Params.rgrc[0].Bottom, cFrameWidth + 2);
 Inc(Message.CalcSize_Params.rgrc[0].Left, cFrameWidth + 2);
 Dec(Message.CalcSize_Params.rgrc[0].Right, cFrameWidth);
end;

end.

