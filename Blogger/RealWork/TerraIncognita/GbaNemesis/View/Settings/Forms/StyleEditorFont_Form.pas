unit StyleEditorFont_Form;

// $Id: StyleEditorFont_Form.pas,v 1.9 2012/03/06 11:26:03 kostitsin Exp $

// $Log: StyleEditorFont_Form.pas,v $
// Revision 1.9  2012/03/06 11:26:03  kostitsin
// [$342868879]
//
// Revision 1.8  2012/03/02 09:14:25  kostitsin
// [$338463119]
//
// Revision 1.7  2011/06/17 12:31:40  lulin
// {RequestLink:228688486}.
//
// Revision 1.6  2009/11/10 12:29:59  lulin
// - перестаём выливать идентификаторы внутренних операций.
//
// Revision 1.5  2009/11/05 18:34:00  lulin
// - избавился от переменных списков параметров.
//
// Revision 1.4  2009/10/30 17:11:36  lulin
// - третья волна компании по борьбе со старыми внутренними операциями.
//
// Revision 1.3  2009/10/29 14:36:14  lulin
// - вторая волна компании по борьбе со старыми внутренними операциями.
//
// Revision 1.2  2009/10/02 19:10:38  lulin
// - окончательно избавился от инициализации форм переменными списками параметров. Всё перевёл на фабрики.
//
// Revision 1.1  2009/09/23 13:32:43  lulin
// - начинаем перенос модуля Настройки на модель.
//
// Revision 1.72  2009/08/26 08:15:34  lulin
// - декорируем имена операций, чтобы можно было искать.
// - bug fix: не собирались мониторинги.
//
// Revision 1.71  2009/07/31 17:30:14  lulin
// - убираем мусор.
//
// Revision 1.70  2009/03/24 07:46:21  oman
// Не мыргаем при хождении по стилям
//
// Revision 1.69  2009/03/23 15:09:06  lulin
// [$139442655]. Переименовываем файл.
//
// Revision 1.68  2009/03/23 14:54:21  lulin
// [$139442655]. Переименовываем новый контрол.
//
// Revision 1.67  2009/03/19 10:12:00  oman
// - fix: Подложили контролы (К-137463980)
//
// Revision 1.66  2009/02/20 17:23:00  lulin
// - <K>: 136941122.
//
// Revision 1.65  2009/02/10 19:03:57  lulin
// - <K>: 133891247. Вычищаем морально устаревший модуль.
//
// Revision 1.64  2009/02/10 12:53:46  lulin
// - <K>: 133891247. Выделяем интерфейсы настройки.
//
// Revision 1.63  2009/01/28 11:55:36  oman
// - fix: Последствия изменения дефолтного шрифта (К-136252939)
//
// Revision 1.62  2009/01/16 15:49:46  lulin
// - правим размеры.
//
// Revision 1.61  2008/07/11 12:03:29  lulin
// - <K>: 101417264.
//
// Revision 1.60  2008/07/08 09:48:45  lulin
// - не перекладываем строки в ноды, а просто реализуем интерфейс ноды.
//
// Revision 1.59  2008/07/07 14:27:12  lulin
// - подготавливаемся к переименованию.
//
// Revision 1.58  2008/06/20 14:48:39  lulin
// - используем префиксы элементов.
//
// Revision 1.57  2008/05/15 18:16:31  lulin
// - вычищаем ненужное.
//
// Revision 1.56  2008/05/13 16:24:30  lulin
// - изменения в рамках <K>: 90441490.
//
// Revision 1.55  2008/01/10 07:23:32  oman
// Переход на новый адаптер
//
// Revision 1.54.4.1  2007/11/23 10:41:11  oman
// cleanup
//
// Revision 1.54  2007/07/19 13:55:24  mmorozov
// - add units;
//
// Revision 1.53  2007/04/05 12:10:07  lulin
// - убран метод добавления стандартной строки - дабы не было соблазна для преобразований туда-сюда.
//
// Revision 1.52  2007/03/28 19:43:06  lulin
// - ЭлПаковский редактор переводим на строки с кодировкой.
//
// Revision 1.51  2007/03/22 12:42:26  lulin
// - с комбобокса убрано свойство сортированности, т.к. сортировать надо данные, а не представление.
//
// Revision 1.50  2007/03/20 08:19:33  lulin
// - не теряем кодировку при присваивании заголовков форм.
//
// Revision 1.49  2007/03/16 12:20:29  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.48  2007/02/16 19:19:21  lulin
// - в выпадающих списках используем родной список строк.
//
// Revision 1.47  2007/01/20 18:36:33  lulin
// - вычищаем ненужное создание параметров.
//
// Revision 1.46  2007/01/20 15:30:28  lulin
// - разделяем параметры операции для выполнения и для тестирования.
//
// Revision 1.45  2007/01/19 09:47:22  lulin
// - выделяем интерфейс параметров для создания формы.
//
// Revision 1.44  2006/12/06 08:00:40  lulin
// - везде используем одни и те же метки.
//
// Revision 1.43  2006/06/22 08:44:04  oman
// - fix: Для опеределения заголовков для кнопок С/Р/П в редакторе
//  стилей по возможности пользуется HotKey от строки: в резурсах, для
//  удобства перевода можно теперь писать "&Собственный" или
//  "Ро&дительский"
//
// Revision 1.42  2006/05/17 13:29:11  oman
// - fix: Перекладываем StdStr в _StdRes (cq20412)
//
// Revision 1.41  2006/04/25 13:52:28  oman
// - change: Собирание интерфейсов по редактированию настроек в одно место
// - new beh: Интерфейсы по работе с настройками конфигурации и
//  списком конфигураций (cq20377)
//
// Revision 1.40  2006/04/17 14:42:33  oman
// - new beh: перекладываем StdStr в _StdRes
//
// Revision 1.39  2006/03/31 07:42:23  lulin
// - изменен тип параметров, подаваемый в Execte операции.
//
// Revision 1.38  2006/03/30 14:01:48  lulin
// - операция инициализации разделена на две - с параметрами и без - для того, чтобы в итоге избавится от первой.
//
// Revision 1.37  2006/03/16 11:35:59  oman
// - new beh: Перекладываем все текстовые константы в три места (StdStr, DebugStr и SystemStr)
//
// Revision 1.36  2006/01/18 09:36:43  oman
// - мелкий рефакторинг
//
// Revision 1.35  2005/12/13 16:17:39  oman
// - new behavior: Для таблицы стилей появилась операция "Записать по умолчанию"
// - fix: При редактировании таблицы стилей неактивных насторек, редактировали не ту таблицу
//
// Revision 1.34  2005/06/09 09:51:22  mmorozov
// change: TComboBoxQS заменен на TvtComboBoxQS;
//
// Revision 1.33  2005/05/27 14:46:38  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.32  2005/05/23 14:42:25  lulin
// - bug fix: не компилировалось.
//
// Revision 1.31  2005/05/19 13:22:52  lulin
// - remove unit: evFont.
//
// Revision 1.30  2005/02/01 16:03:57  migel
// - fix: редактирование таблицы стилей.
//
// Revision 1.29  2005/01/25 13:24:08  am
// bugfix: при загрузке дефолтных настроек грузим из ресурсов
//
// Revision 1.28  2005/01/13 16:46:11  am
// change: поменялась идеология прошивания стилей
//
// Revision 1.27  2005/01/11 16:26:15  am
// change: TevStyleInterface -> TnsStyleInterface
//
// Revision 1.26  2004/11/01 11:13:01  fireton
// - bug fix: кнопки изменения наследования теперь доскупны с клавиатуры
//
// Revision 1.25  2004/10/20 12:18:29  mmorozov
// bugfix: TFakeBox не поддерживал ItemIndex := -1;
// change: маленький рефакторинг;
//
// Revision 1.24  2004/10/20 10:19:24  demon
// - new behavior: переименован UserType для формы редактирования параметров шрифтов
//
// Revision 1.23  2004/09/22 10:28:08  lulin
// - оптимизщация - кешируем результат преобразования Name -> ID при посылке операций.
//
// Revision 1.22  2004/06/25 16:47:45  migel
// - change/fix: для совместимости с win9x перешли на собственную реализацию `Interlocked*` функций.
//
// Revision 1.21  2004/06/01 08:25:40  demon
// - new behavior: изменена иерархия наследования деревьев и часть модулей переехали в VT
//
// Revision 1.20  2004/05/06 06:08:45  mmorozov
// change: VCtrls.pas - > vtCtrls.pas;
//
// Revision 1.19  2004/03/31 14:25:02  migel
// - fix: не перегружаем таблицу стилей, если она не изменилась и пользователь "нажал" отмену + мелкий багфикс.
//
// Revision 1.18  2004/03/22 13:58:08  nikitin75
// shortcuts support: vcm-операции ok, cancel перенесены на контейнер;
//
// Revision 1.17  2004/03/19 13:53:35  nikitin75
// контролы поддерживающие шорткаты
//
// Revision 1.16  2004/03/19 11:46:19  nikitin75
// используем контролы поддерживающие шорткаты
//
// Revision 1.15  2004/03/18 19:54:42  migel
// - fix: не перечитывались параметры шрифта при восстановлении таблицы стилей.
//
// Revision 1.14  2004/03/18 14:17:43  demon
// - fix: Stack overflowd
// - разрешено использование системных цветов и Default
//
// Revision 1.13  2004/03/15 12:23:59  migel
// - fix: доступна кнопка `maximize`.
// - add: логи CVS.
//

interface

uses
 Windows, Buttons, Classes, Controls, ExtCtrls, OvcBase, StdCtrls, SysUtils, vtLister, vtOutliner,
 eeTreeView, eeTreeViewExport,  evStyleTableTools, l3Types,
 vcmBase, vcmBaseEntities, vcmEntities, vcmEntityForm, vcmInterfaces, Forms,
 eeCheckBox, ElXPThemedControl, absdrop, treedrop,
 vtComboBoxQS, vcmComponent, ElBtnCtl, ElPopBtn,
 evStyleInterface, vtLabel, afwControl, vtColorBox,
  afwCustomCommonControl, l3Interfaces, evEditorWindow,
  evMultiSelectEditorWindow, evCustomEditor, evEditorWithOperations,
  evCustomMemo, evCustomEdit, elCustomEdit, elCustomButtonEdit,
  ctButtonEdit, ctAbstractEdit, EditableBox, FakeBox, nevControl,
  afwControlPrim, afwBaseControl, afwCustomCommonControlPrim,
  l3InterfacedComponent,
  ConfigInterfaces, evCustomEditorWindowModelPart,

  PrimStyleEditorFont_Form, evCustomEditorWindowPrim, evCustomEditorWindow,
  evCustomEditorModelPart
  ;

const
 fiSpecialParentTransparent = 0;
 // Специальное значение в UI попадать не должно...
 fiOwn = 1;
 // "С"обственный шрифт
 fiParent = 2;
 // Унаследованный от "Р"одителя шрифт
 fiTransparent = 3;
 // "П"розрачный шрифт

type
 TFontInheritance = fiSpecialParentTransparent..fiTransparent;

type
 TStyleEditorFontForm = class(TvcmEntityFormRef)
  Entities: TvcmEntities;
  //
  f_FontScrollBox: TScrollBox;
  f_FontBackColorBox: TvtColorBox;
  f_FontBackColorInheritanceButton: TElPopupButton;
  f_FontBackColorLabel: TvtLabel;
  f_FontBoldCheckBox: TeeCheckBox;
  f_FontBoldInheritanceButton: TElPopupButton;
  f_FontBoldLabel: TvtLabel;
  f_FontForeColorBox: TvtColorBox;
  f_FontForeColorInheritanceButton: TElPopupButton;
  f_FontForeColorLabel: TvtLabel;
  f_FontItalicCheckBox: TeeCheckBox;
  f_FontItalicInheritanceButton: TElPopupButton;
  f_FontItalicLabel: TvtLabel;
  f_FontNameComboBox: TvtComboBoxQS;
  f_FontNameInheritanceButton: TElPopupButton;
  f_FontNameLabel: TvtLabel;
  f_FontSizeComboBox: TvtComboBoxQS;
  f_FontSizeInheritanceButton: TElPopupButton;
  f_FontSizeLabel: TvtLabel;
  f_FontStrikeoutCheckBox: TeeCheckBox;
  f_FontStrikeoutInheritanceButton: TElPopupButton;
  f_FontStrikeoutLabel: TvtLabel;
  f_FontUnderlineCheckBox: TeeCheckBox;
  f_FontUnderlineInheritanceButton: TElPopupButton;
  f_FontUnderlineLabel: TvtLabel;
  f_FontScalableCheckBox: TeeCheckBox;
  f_FontScalableLabel: TvtLabel;
  f_FontScalableBevel: TBevel;
  //
  procedure FontNameInheritanceButtonClick(aSender: TObject);
  procedure FontNameComboBoxChange(aSender: TObject);
  //
  procedure FontSizeInheritanceButtonClick(aSender: TObject);
  procedure FontSizeComboBoxChange(aSender: TObject);
  //
  procedure FontForeColorInheritanceButtonClick(aSender: TObject);
  procedure FontForeColorBoxChange(aSender: TObject);
  //
  procedure FontBackColorInheritanceButtonClick(aSender: TObject);
  procedure FontBackColorBoxChange(aSender: TObject);
  //
  procedure FontBoldInheritanceButtonClick(aSender: TObject);
  procedure FontBoldCheckBoxClick(aSender: TObject);
  //
  procedure FontItalicInheritanceButtonClick(aSender: TObject);
  procedure FontItalicCheckBoxClick(aSender: TObject);
  //
  procedure FontUnderlineInheritanceButtonClick(aSender: TObject);
  procedure FontUnderlineCheckBoxClick(aSender: TObject);
  //
  procedure FontStrikeoutInheritanceButtonClick(aSender: TObject);
  procedure FontStrikeoutCheckBoxClick(aSender: TObject);
  procedure FontScalableCheckBoxClick(Sender: TObject);
 private
  f_UpdateLockCount: Integer;
  //
  procedure SendToAggregateReloadStylesTreeNotify(const aStyleName: Il3CString); override;
  procedure SendToAggregateReloadStyleTableNotify(aModified: Boolean = True); override;
  //
  procedure DisableUpdate; override;
  procedure EnableUpdate; override;
  //
  function  IsUpdateEnabled: Boolean;
  //
  procedure UpdateFontInheritanceState(const aInheritance: TFontInheritance; const aTagIndex: Long);
  //
  procedure UpdateControlsFromStyleInterface(const aChangeEnabled: Boolean; const aEnabled: Boolean = True);
  //
  procedure LoadCurrentStateFromStyleInterface(aId: Long); override;
  //
  procedure ReloadFontNameList;
  procedure ReloadFontSizeList(const aFontName: string);
  //
  procedure SetCurrentComboBoxItemByString(const aComboBox: TvtComboBoxQS; const aString: string);
  //
  procedure SynchronizeFontNameComboBoxByFontName(const aFontName : string);
  procedure SynchronizeFontSizeComboBoxByFontSize(const aFontSize : string);
  //
  function GetNextInheritance(const aInheritance: TFontInheritance): TFontInheritance;
  //
  function GetInheritanceFromFontByTagIndex(const aTagIndex: Long; const aParentTransparent: Boolean = False): TFontInheritance;
  //
  procedure ModifyControlsJoinWithInheritanceButton(const aSender: TObject); overload;
  procedure ModifyControlsJoinWithInheritanceButton(const aSender: TObject; const aEnabled: Boolean); overload;
 protected
  procedure Cleanup; override;
  procedure InitControls; override;
 end;

implementation

{$R *.DFM}

uses
 Graphics, vtCtrls, eeInterfaces, eeNode, l3Base, l3Nodes, l3Tree_TLB, k2Tags,
 evStyleTableSpy, evdStyles, StdRes, nsSettings, vcmExternalInterfaces,
 DebugStr, Menus, l3String, nsTypes
 , vcmForm,
 Settings_Strange_Controls
 ;

const            
 CInheritanceCaptions: array [TFontInheritance] of PvcmSTringID = (
  @str_Empty, // fisSpecialParentTransparent
  @str_FontInheritanceOwn, // fisOwn
  @str_FontInheritanceParent, // fisParent
  @str_FontInheritanceTransparent // fisTransparent
 );

 CRootStyleId = ev_saTxtNormalANSI;

(* fisSpecialParentTransparent = 0;
 // Специальное значение в UI попадать не должно...
 fisOwn = 1;
 // "С"обственный шрифт
 fisParent = 2;
 // Унаследованный от "Р"одителя шрифт
 fisTransparent = 3;
 // "П"розрачный шрифт
*)
function IsTransparentFont(const aInheritance : TFontInheritance) : Boolean;
begin
 Result := aInheritance in [fiSpecialParentTransparent, fiTransparent];
end;

procedure TStyleEditorFontForm.InitControls;

 procedure SetDoubleBuffered(AControls: array of TWinControl; aValue: Boolean);
 var
  I: Integer;
 begin
  for I := Low(AControls) to High(AControls) do
   AControls[I].DoubleBuffered := aValue;
 end;

begin
 inherited;

 {DoubleBuffered := True;
 //
 f_FontNameComboBox.DoubleBuffered := True;
 f_FontSizeComboBox.DoubleBuffered := True;
 //
 f_FontForeColorBox.DoubleBuffered := True;
 f_FontBackColorBox.DoubleBuffered := True;
 //
 f_FontBoldCheckBox.DoubleBuffered := True;
 f_FontItalicCheckBox.DoubleBuffered := True;
 f_FontStrikeoutCheckBox.DoubleBuffered := True;
 f_FontUnderlineCheckBox.DoubleBuffered := True;
}
 SetDoubleBuffered([Self,
                    f_FontNameComboBox,
                    f_FontSizeComboBox,
                    f_FontForeColorBox,
                    f_FontBackColorBox,
                    f_FontBoldCheckBox,
                    f_FontItalicCheckBox,
                    f_FontStrikeoutCheckBox,
                    f_FontUnderlineCheckBox,
                    f_FontScalableCheckBox], True);
 //
 ReloadFontNameList;
end;

procedure TStyleEditorFontForm.FontNameInheritanceButtonClick(aSender: TObject);
 procedure UpdateFontNameAndInheritanceState(const aInheritance: TFontInheritance);
 begin
  if (aInheritance = fiOwn) then
   with f_StyleInterface.Font do
    Name := Name
  else
   UpdateFontInheritanceState(aInheritance, k2_tiName);
 end;
begin
 if IsUpdateEnabled then
 begin
  with f_FontNameInheritanceButton do
  UpdateFontNameAndInheritanceState(GetNextInheritance(Tag));
  //
  UpdateControlsFromStyleInterface(False);
  SendToAggregateReloadStyleTableNotify;
 end;
end;

procedure TStyleEditorFontForm.FontNameComboBoxChange(aSender: TObject);
begin
 if IsUpdateEnabled then
 begin
  DisableUpdate;
  try
   with f_FontNameComboBox do
   begin
    ReloadFontSizeList(l3Str(Text));
    //
    f_StyleInterface.Font.Name := l3Str(Text);
   end;
   //
   UpdateControlsFromStyleInterface(False);
  finally
   EnableUpdate;
  end;//try..finally
  SendToAggregateReloadStyleTableNotify;
 end;
end;

procedure TStyleEditorFontForm.FontSizeInheritanceButtonClick(aSender: TObject);
 procedure UpdateFontSizeAndInheritanceState(const aInheritance: TFontInheritance);
 begin
  if (aInheritance = fiOwn) then
   with f_StyleInterface.Font do
    Size := Size
  else
   UpdateFontInheritanceState(aInheritance, k2_tiSize);
 end;
begin
 if IsUpdateEnabled then
 begin
  with f_FontSizeInheritanceButton do
   UpdateFontSizeAndInheritanceState(GetNextInheritance(Tag));
  //
  UpdateControlsFromStyleInterface(False);
  SendToAggregateReloadStyleTableNotify;
 end;
end;

procedure TStyleEditorFontForm.FontSizeComboBoxChange(aSender: TObject);
begin
 if IsUpdateEnabled then
 begin
  with f_FontSizeComboBox do
  begin
   if ((Items.IndexOf(Text) = -1) and (StrToIntDef(l3Str(Text), 0) <= 0)) then
    Text := l3CStr(f_LastKnowGoodFontSizeComboBoxText)
   else
    f_LastKnowGoodFontSizeComboBoxText := l3Str(Text);
   //
   f_StyleInterface.Font.Size := StrToInt(l3Str(Text));
  end;
  //
  UpdateControlsFromStyleInterface(False);
  SendToAggregateReloadStyleTableNotify;
 end;
end;

procedure TStyleEditorFontForm.FontForeColorInheritanceButtonClick(aSender: TObject);
 procedure UpdateFontForeColorAndInheritanceState(const aInheritance: TFontInheritance);
 begin
  if (aInheritance = fiOwn) then
   with f_StyleInterface.Font do
    ForeColor := ForeColor
  else
   UpdateFontInheritanceState(aInheritance, k2_tiForeColor);
 end;
begin
 if IsUpdateEnabled then
 begin
  with f_FontForeColorInheritanceButton do
   UpdateFontForeColorAndInheritanceState(GetNextInheritance(Tag));
  //
  UpdateControlsFromStyleInterface(False);
  SendToAggregateReloadStyleTableNotify;
 end;
end;

procedure TStyleEditorFontForm.FontForeColorBoxChange(aSender: TObject);
begin
 if IsUpdateEnabled then
 begin
  with f_FontForeColorBox do
   f_StyleInterface.Font.ForeColor := Selected;
  //
  UpdateControlsFromStyleInterface(False);
  SendToAggregateReloadStyleTableNotify;
 end;
end;

procedure TStyleEditorFontForm.FontBackColorInheritanceButtonClick(aSender: TObject);
 procedure UpdateFontBackColorAndInheritanceState(const aInheritance: TFontInheritance);
 begin
  if (aInheritance = fiOwn) then
   with f_StyleInterface.Font do
    BackColor := BackColor
  else
   UpdateFontInheritanceState(aInheritance, k2_tiBackColor);
 end;
begin
 if IsUpdateEnabled then
 begin
  with f_FontBackColorInheritanceButton do
   UpdateFontBackColorAndInheritanceState(GetNextInheritance(Tag));
  //
  UpdateControlsFromStyleInterface(False);
  SendToAggregateReloadStyleTableNotify;
 end;
end;

procedure TStyleEditorFontForm.FontBackColorBoxChange(aSender: TObject);
begin
 if IsUpdateEnabled then
 begin
  with f_FontBackColorBox do
   f_StyleInterface.Font.BackColor := Selected;
  //
  UpdateControlsFromStyleInterface(False);
  SendToAggregateReloadStyleTableNotify;
 end;
end;

procedure TStyleEditorFontForm.FontBoldInheritanceButtonClick(aSender: TObject);
 procedure UpdateFontBoldAndInheritanceState(const aInheritance: TFontInheritance);
 begin
  if (aInheritance = fiOwn) then
   with f_StyleInterface.Font do
    Bold := Bold
  else
   UpdateFontInheritanceState(aInheritance, k2_tiBold);
 end;
begin
 if IsUpdateEnabled then
 begin
  with f_FontBoldInheritanceButton do
   UpdateFontBoldAndInheritanceState(GetNextInheritance(Tag));
  //
  UpdateControlsFromStyleInterface(False);
  SendToAggregateReloadStyleTableNotify;
 end;
end;

procedure TStyleEditorFontForm.FontBoldCheckBoxClick(aSender: TObject);
begin
 if IsUpdateEnabled then
 begin
  with f_FontBoldCheckBox do
   f_StyleInterface.Font.Bold := Checked;
  //
  UpdateControlsFromStyleInterface(False);
  SendToAggregateReloadStyleTableNotify;
 end;
end;

procedure TStyleEditorFontForm.FontItalicInheritanceButtonClick(aSender: TObject);
 procedure UpdateFontItalicAndInheritanceState(const aInheritance: TFontInheritance);
 begin
  if (aInheritance = fiOwn) then
   with f_StyleInterface.Font do
    Italic := Italic
  else
   UpdateFontInheritanceState(aInheritance, k2_tiItalic);
 end;
begin
 if IsUpdateEnabled then
 begin
  with f_FontItalicInheritanceButton do
   UpdateFontItalicAndInheritanceState(GetNextInheritance(Tag));
  //
  UpdateControlsFromStyleInterface(False);
  SendToAggregateReloadStyleTableNotify;
 end;
end;

procedure TStyleEditorFontForm.FontItalicCheckBoxClick(aSender: TObject);
begin
 if IsUpdateEnabled then
 begin
  with f_FontItalicCheckBox do
   f_StyleInterface.Font.Italic := Checked;
  //
  UpdateControlsFromStyleInterface(False);
  SendToAggregateReloadStyleTableNotify;
 end;
end;

procedure TStyleEditorFontForm.FontUnderlineInheritanceButtonClick(aSender: TObject);
 procedure UpdateFontUnderlineAndInheritanceState(const aInheritance: TFontInheritance);
 begin
  if (aInheritance = fiOwn) then
   with f_StyleInterface.Font do
    Underline := Underline
  else
   UpdateFontInheritanceState(aInheritance, k2_tiUnderline);
 end;
begin
 if IsUpdateEnabled then
 begin
  with f_FontUnderlineInheritanceButton do
   UpdateFontUnderlineAndInheritanceState(GetNextInheritance(Tag));
  //
  UpdateControlsFromStyleInterface(False);
  SendToAggregateReloadStyleTableNotify;
 end;
end;

procedure TStyleEditorFontForm.FontUnderlineCheckBoxClick(aSender: TObject);
begin
 if IsUpdateEnabled then
 begin
  with f_FontUnderlineCheckBox do
   f_StyleInterface.Font.Underline := Checked;
  //
  UpdateControlsFromStyleInterface(False);
  SendToAggregateReloadStyleTableNotify;
 end;
end;

procedure TStyleEditorFontForm.FontStrikeoutInheritanceButtonClick(aSender: TObject);
 procedure UpdateFontStrikeoutAndInheritanceState(const aInheritance: TFontInheritance);
 begin
  if (aInheritance = fiOwn) then
   with f_StyleInterface.Font do
    Strikeout := Strikeout
  else
   UpdateFontInheritanceState(aInheritance, k2_tiStrikeout);
 end;
begin
 if IsUpdateEnabled then
 begin
  with f_FontStrikeoutInheritanceButton do
   UpdateFontStrikeoutAndInheritanceState(GetNextInheritance(Tag));
  //
  UpdateControlsFromStyleInterface(False);
  SendToAggregateReloadStyleTableNotify;
 end;
end;

procedure TStyleEditorFontForm.FontStrikeoutCheckBoxClick(aSender: TObject);
begin
 if IsUpdateEnabled then
 begin
  with f_FontStrikeoutCheckBox do
   f_StyleInterface.Font.Strikeout := Checked;
  //
  UpdateControlsFromStyleInterface(False);
  SendToAggregateReloadStyleTableNotify;
 end;
end;

procedure TStyleEditorFontForm.FontScalableCheckBoxClick(Sender: TObject);
begin
 if IsUpdateEnabled then
 begin
  f_StyleInterface.Scalable := f_FontScalableCheckBox.Checked;
  //
  UpdateControlsFromStyleInterface(False);
  SendToAggregateReloadStyleTableNotify;
 end;
end;

procedure TStyleEditorFontForm.SendToAggregateReloadStylesTreeNotify(const aStyleName: Il3CString);
begin
 op_StyleEditor_ReloadStylesTree.Call(Aggregate, aStyleName);
end;

procedure TStyleEditorFontForm.SendToAggregateReloadStyleTableNotify(aModified: Boolean = True);
begin
 evNotifyStyleTableChanging;
 evNotifyStyleTableChanged;
 //
 if aModified then
  f_SettingsInfo.MarkModified;
 op_StyleEditor_ReloadStyleTable.Call(Aggregate);
end;

procedure TStyleEditorFontForm.DisableUpdate;
begin
 l3InterlockedIncrement(f_UpdateLockCount);
end;

procedure TStyleEditorFontForm.EnableUpdate;
begin
 l3InterlockedDecrement(f_UpdateLockCount);
end;

function TStyleEditorFontForm.IsUpdateEnabled: Boolean;
begin
 Result := (l3InterlockedExchangeAdd(@f_UpdateLockCount, 0) = 0);
end;

procedure TStyleEditorFontForm.UpdateFontInheritanceState(const aInheritance: TFontInheritance; const aTagIndex: Long);
begin
 case aInheritance of
  fiTransparent: f_StyleInterface.Font.IsTransparent[aTagIndex] := True;
  fiParent: f_StyleInterface.Font.IsOwn[aTagIndex] := False;
 else
  Assert(False);
 end;
 Assert(GetInheritanceFromFontByTagIndex(aTagIndex) = aInheritance);
end;

procedure TStyleEditorFontForm.UpdateControlsFromStyleInterface(const aChangeEnabled : Boolean;
                                                                const aEnabled       : Boolean);

 procedure UpdateInheritanceButtonStatus(const aSpeedButton: TElPopupButton;
                                         const aTagIndex      : Long);
 var
  l_Caption: String;
 begin
  with aSpeedButton do
  begin
   Tag := GetInheritanceFromFontByTagIndex(aTagIndex);
   l_Caption := GetHotkey(vcmConstString(CInheritanceCaptions[Tag]^));
   if l_Caption = '' then
    l_Caption := ANSIUpperCase(vcmConstString(CInheritanceCaptions[Tag]^));
   Caption := l_Caption;
   if aChangeEnabled then
    Enabled := aEnabled;
  end;
  ModifyControlsJoinWithInheritanceButton(aSpeedButton);
 end;

begin
 Dispatcher.FormDispatcher.Lock;
 try
  DisableUpdate;
  try
   with f_StyleInterface.Font do
   begin
     SynchronizeFontNameComboBoxByFontName(Name);
     SynchronizeFontSizeComboBoxByFontSize(IntToStr(Size));
     //
     f_FontForeColorBox.Selected := ForeColor;
     f_FontBackColorBox.Selected := BackColor;
     //
     f_FontBoldCheckBox.Checked := Bold;
     f_FontItalicCheckBox.Checked := Italic;
     f_FontUnderlineCheckBox.Checked := Underline;
     f_FontStrikeoutCheckBox.Checked := Strikeout;
   end;
   f_FontScalableCheckBox.Checked := f_StyleInterface.Scalable;
   //
   UpdateInheritanceButtonStatus(f_FontNameInheritanceButton,
                                 k2_tiName);
   UpdateInheritanceButtonStatus(f_FontSizeInheritanceButton,
                                 k2_tiSize);
   //
   UpdateInheritanceButtonStatus(f_FontForeColorInheritanceButton,
                                 k2_tiForeColor);
   UpdateInheritanceButtonStatus(f_FontBackColorInheritanceButton,
                                 k2_tiBackColor);
   //
   UpdateInheritanceButtonStatus(f_FontBoldInheritanceButton,
                                 k2_tiBold);
   UpdateInheritanceButtonStatus(f_FontItalicInheritanceButton,
                                 k2_tiItalic);
   UpdateInheritanceButtonStatus(f_FontUnderlineInheritanceButton,
                                 k2_tiUnderline);
   UpdateInheritanceButtonStatus(f_FontStrikeoutInheritanceButton,
                                 k2_tiStrikeout);
  finally
   EnableUpdate;
  end;
 finally
  Dispatcher.FormDispatcher.UnLock;
 end;
end;

procedure TStyleEditorFontForm.LoadCurrentStateFromStyleInterface(aId: Long);
begin
 DisableUpdate;
 try
  with f_StyleInterface do
  begin
   SelectStyle(aId);
   //
   UpdateControlsFromStyleInterface(True, (aId <> CRootStyleId));
   //
   CCaption := vcmFmt(str_StyleEditorFontCaption, [Name]);
  end;
 finally
  EnableUpdate;
 end;
end;

procedure TStyleEditorFontForm.ReloadFontNameList;
begin
 with f_FontNameComboBox.Items do
 begin
  Sorted := false;
  try
   GetFontList(f_FontNameComboBox.Items);
  finally
   Sorted := true;
  end;//try..finally
 end;//with f_FontNameComboBox.Items
end;

procedure TStyleEditorFontForm.ReloadFontSizeList(const aFontName: string);
var
 l_Text : Il3CString;
begin
 with f_FontSizeComboBox do
 begin
  l_Text := Text;
  try
   GetFontSizeList(aFontName, Items);
  finally
   Text := l_Text;
  end;//try..finally
 end;//with f_FontSizeComboBox
end;

procedure TStyleEditorFontForm.SetCurrentComboBoxItemByString(const aComboBox: TvtComboBoxQS; const aString: string);
begin
 with aComboBox do
 begin
  ItemIndex := Items.IndexOf(aString);
  if (ItemIndex = -1) then
   Text := l3CStr(aString);
 end;
end;

procedure TStyleEditorFontForm.SynchronizeFontNameComboBoxByFontName(const aFontName : String);
begin
 (* Выходим при прозрачности поля пустые *)
 if (*not f_StyleInterface.Font.IsOwn[k2_tiName] and *)IsTransparentFont(
   GetInheritanceFromFontByTagIndex(k2_tiName, True)) then
  Exit;

 if not l3Same(f_FontNameComboBox.Text, aFontName) then
  ReloadFontSizeList(aFontName);
 //
 SetCurrentComboBoxItemByString(f_FontNameComboBox, aFontName);
end;

procedure TStyleEditorFontForm.SynchronizeFontSizeComboBoxByFontSize(const aFontSize : string);
begin
 (* Если установлена прозрачность, то поле пустое *)
 if (*not f_StyleInterface.Font.IsOwn[k2_tiSize] and *)not IsTransparentFont(
   GetInheritanceFromFontByTagIndex(k2_tiSize, True)) then
  SetCurrentComboBoxItemByString(f_FontSizeComboBox, aFontSize);
end;

function TStyleEditorFontForm.GetNextInheritance(const aInheritance: TFontInheritance): TFontInheritance;
begin
 if aInheritance = fiSpecialParentTransparent then
  Result := aInheritance
 else
  if aInheritance = High(TFontInheritance) then
   Result := Succ(Low(fiSpecialParentTransparent))
  else
   Result := Succ(aInheritance)
end;

function TStyleEditorFontForm.GetInheritanceFromFontByTagIndex(const aTagIndex: Long; const aParentTransparent: Boolean): TFontInheritance;
 function CheckParentTransparent(const aStyleInterface: TevStyleInterface; const aTagIndex: Long): Boolean;
 begin
  with aStyleInterface do
   if (Param[k2_tiHandle] = ParentInterface.Param[k2_tiHandle]) then
    Result := False // fix: если попали сюда, значит "что-то не в порядке" и стиль имеет в качестве родителя самого себя.
   else
    with Font do
     if not(IsOwn[aTagIndex]) then
      Result := CheckParentTransparent(ParentInterface, aTagIndex)
     else
      Result := IsTransparent[aTagIndex];
 end;
begin
 with f_StyleInterface.Font do
  if IsOwn[aTagIndex] then
   if IsTransparent[aTagIndex] then
    Result := fiTransparent
   else
    Result := fiOwn
  else
   Result := fiParent;
 //
 if (aParentTransparent and (Result = fiParent) and CheckParentTransparent(f_StyleInterface.ParentInterface, aTagIndex)) then
  Result := fiSpecialParentTransparent;
end;

procedure TStyleEditorFontForm.ModifyControlsJoinWithInheritanceButton(const aSender: TObject);
begin
 with (aSender as TElPopupButton) do
  if Tag in [fiParent, fiTransparent] then
   ModifyControlsJoinWithInheritanceButton(aSender, False)
  else
   if Tag = fiOwn then
    ModifyControlsJoinWithInheritanceButton(aSender, True)
   else
    Assert(False);
end;

procedure TStyleEditorFontForm.ModifyControlsJoinWithInheritanceButton(const aSender  : TObject;
                                                                       const aEnabled : Boolean);

 procedure ModifyComboBoxStatus(const aTagIndex : Long;
                                const aComboBox : TvtComboBoxQS;
                                const aEnabled  : Boolean);
 begin
  with aComboBox do
  begin
   if IsTransparentFont(GetInheritanceFromFontByTagIndex(aTagIndex,
     True)) then
    ItemIndex := -1;
   //
   Enabled := aEnabled;
   if Enabled then
    Color := clWindow
   else
    Color := $00F9F8FA;
  end;
 end;
 //
 procedure ModifyColorBoxStatus(const aTagIndex : Long;
                                const aColorBox : TvtColorBox;
                                const aEnabled  : Boolean);
 begin
  with aColorBox do
  begin
   if IsTransparentFont(GetInheritanceFromFontByTagIndex(aTagIndex,
     True)) then
    ItemIndex := -1;
   //
   Enabled := aEnabled;
   if Enabled then
    Color := clWindow
   else
    Color := $00F9F8FA;
  end;
 end;
 //
 procedure ModifyCheckBoxStatus(const aTagIndex : Long;
                                const aCheckBox : TeeCheckBox;
                                const aEnabled  : Boolean);
 var
  l_Inheritance: TFontInheritance;
 begin
  with aCheckBox do
  begin
   l_Inheritance := GetInheritanceFromFontByTagIndex(aTagIndex, True);

   Visible := not IsTransparentFont(l_Inheritance);

   Enabled := aEnabled;
  end;
 end;
 
begin
 if (aSender = f_FontNameInheritanceButton) then
  ModifyComboBoxStatus(k2_tiName, f_FontNameComboBox, aEnabled)
 else
  if (aSender = f_FontSizeInheritanceButton) then
   ModifyComboBoxStatus(k2_tiSize, f_FontSizeComboBox, aEnabled)
  else
   if (aSender = f_FontForeColorInheritanceButton) then
    ModifyColorBoxStatus(k2_tiForeColor, f_FontForeColorBox, aEnabled)
   else
    if (aSender = f_FontBackColorInheritanceButton) then
     ModifyColorBoxStatus(k2_tiBackColor, f_FontBackColorBox, aEnabled)
    else
     if (aSender = f_FontBoldInheritanceButton) then
      ModifyCheckBoxStatus(k2_tiBold, f_FontBoldCheckBox, aEnabled)
     else
      if (aSender = f_FontItalicInheritanceButton) then
       ModifyCheckBoxStatus(k2_tiItalic, f_FontItalicCheckBox, aEnabled)
      else
       if (aSender = f_FontUnderlineInheritanceButton) then
        ModifyCheckBoxStatus(k2_tiUnderline, f_FontUnderlineCheckBox, aEnabled)
       else
        if (aSender = f_FontStrikeoutInheritanceButton) then
         ModifyCheckBoxStatus(k2_tiStrikeout, f_FontStrikeoutCheckBox, aEnabled)
        else
         Assert(False);
end;

procedure TStyleEditorFontForm.Cleanup;
begin
 Assert(f_UpdateLockCount = 0);
 l3Free(f_StyleInterface);
 //
 inherited;
end;

end.
