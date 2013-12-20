unit evHAFPainterEx;

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evHAFPainterEx - }
{ Начат: 28.12.2004 19:02 }
{ $Id: evHAFPainterEx.pas,v 1.5 2010/10/26 13:02:50 lulin Exp $ }

// $Log: evHAFPainterEx.pas,v $
// Revision 1.5  2010/10/26 13:02:50  lulin
// {RequestLink:237503905}.
//
// Revision 1.4  2010/06/23 18:05:49  lulin
// {RequestLink:219124975}.
//
// Revision 1.3  2010/03/02 13:34:35  lulin
// {RequestLink:193823544}.
//
// Revision 1.2  2010/03/02 11:14:48  lulin
// {RequestLink:193823544}.
//
// Revision 1.1  2009/09/14 11:27:56  lulin
// - выводим пути и для незавершённых модулей.
//
// Revision 1.39  2009/04/08 12:56:39  lulin
// [$142610892]. Вычищаем ненужные контексты.
//
// Revision 1.38  2008/12/26 13:59:14  oman
// - fix: подключаем MacroReplacer (К-122675365)
//
// Revision 1.37  2008/12/26 09:21:35  oman
// - fix: меняем сигнатуру конструктора (К-122675365)
//
// Revision 1.36  2008/12/25 15:47:41  oman
// - fix: Начинаем пользовать MacroReplacer (К-122675365)
//
// Revision 1.35  2008/12/25 13:19:35  oman
// - fix: Готовимся к смене предка - nsConsultationHAFPainter (К-122675365)
//
// Revision 1.34  2008/12/25 11:18:54  oman
// - fix: Убираем лишние хвосты - TextSource (К-122675365)
//
// Revision 1.33  2008/06/20 14:48:58  lulin
// - используем префиксы элементов.
//
// Revision 1.32  2008/05/04 17:28:59  lulin
// - <K>: 89109263.
//
// Revision 1.31  2008/05/04 14:42:02  lulin
// - вычищен ненужный модуль.
//
// Revision 1.30  2008/04/02 14:22:05  lulin
// - cleanup.
//
// Revision 1.29  2008/04/02 10:55:49  lulin
// - модуль nevPrintableDocumentContainer переехал на модель.
//
// Revision 1.28  2008/03/26 17:59:06  lulin
// - <K>: 88080901.
//
// Revision 1.27  2008/03/26 17:40:16  lulin
// - <K>: 88080899.
//
// Revision 1.26  2008/03/26 11:36:58  lulin
// - зачистка в рамках <K>: 88080898.
//
// Revision 1.25  2008/03/26 11:13:11  lulin
// - зачистка в рамках <K>: 88080898.
//
// Revision 1.24  2008/02/04 14:02:38  oman
// - new: Предупреждение о редакциях все-таки не макрос (cq20237, 11152)
//
// Revision 1.23  2008/02/04 10:09:01  oman
// - new: Заготовки для макроса "Статус документа" (cq20237, 11152)
//
// Revision 1.22  2007/12/25 15:18:48  mmorozov
// - change: код шаблонов не используется в DesignTime (в рамках CQ: OIT5-27823);
//
// Revision 1.21  2007/12/10 12:44:45  mmorozov
// - new: реализуем шаблон publisher\subscriber при редактировании настроек, замены настроек (переключения конфигураций), настройке панелей инструментов (в рамках CQ: OIT5-27823);
//
// Revision 1.20  2007/12/04 12:47:41  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.15.6.16  2007/09/14 13:26:11  lulin
// - объединил с веткой B_Tag_Clean.
//
// Revision 1.15.6.15.2.1  2007/09/12 15:23:05  lulin
// - избавляемся от метода, дублирующего функциональность получения атрибута.
//
// Revision 1.15.6.15  2007/03/21 11:29:54  oman
// - new: добавил нотификацию о переключении конфигураций и возможной смене
//  всех настроек
//
// Revision 1.15.6.14  2007/03/16 14:47:20  lulin
// - cleanup.
//
// Revision 1.15.6.13  2007/03/05 11:56:02  lulin
// - cleanup.
//
// Revision 1.15.6.12  2007/03/05 11:31:31  lulin
// - для работы с колонтитулами используем строки с кодировкой.
//
// Revision 1.15.6.11  2007/02/13 17:32:57  lulin
// - избавляемся от использования стандартной функции поиска подстроки в строке.
//
// Revision 1.15.6.10  2007/02/12 18:45:02  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.15.6.9  2007/02/12 16:40:23  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.15.6.8  2007/02/09 15:44:42  lulin
// - cleanup.
//
// Revision 1.15.6.7  2007/02/09 15:40:27  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.15.6.5  2007/02/07 17:48:37  lulin
// - избавляемся от копирования строк при чтении из настроек.
//
// Revision 1.15.6.4  2007/01/24 10:21:44  oman
// - new: Локализация библиотек - ev (cq24078)
//
// Revision 1.15.6.3  2006/11/20 10:16:30  oman
// Merge from B_NEMESIS_6_4
//
// Revision 1.15.6.2.30.1  2006/11/20 09:41:58  oman
// - Новые макросы для печати (cq23193)
//
// Revision 1.15.6.2  2005/10/10 11:43:19  lulin
// - cleanup: используем интерфейсы из правильной библиотеки.
//
// Revision 1.15.6.1  2005/05/18 12:42:52  lulin
// - отвел новую ветку.
//
// Revision 1.14.2.1  2005/04/14 07:40:30  lulin
// - объединил с HEAD.
//
// Revision 1.15  2005/04/12 12:40:29  fireton
// - add: добавляем возможность выводить в колонитулах полное название документа
//
// Revision 1.14  2005/03/28 11:32:12  lulin
// - интерфейсы переехали в "правильный" модуль.
//
// Revision 1.13  2005/03/28 06:37:13  lulin
// - remove object: Tk2AtomW.
//
// Revision 1.12  2005/03/25 17:09:07  lulin
// - избавляемся от метода Tk2AtomW.sLong.
//
// Revision 1.11  2005/03/24 13:14:40  lulin
// - уделена ненужная функция преобразования Tk2AtomR к Ik2Tag.
//
// Revision 1.10  2005/03/19 16:39:57  lulin
// - спрятаны ненужные методы.
//
// Revision 1.9  2005/03/14 11:29:48  lulin
// - new behavior: теперь _Preview реагирует на изменение настроек (в частности колонтитулов).
//
// Revision 1.8  2005/03/14 09:08:00  lulin
// - new interface: IafwSettingsListner.SettingsChanged.
//
// Revision 1.7  2005/02/22 10:28:20  lulin
// - new behavior: сделана возможность печати нижнего колонтитула.
//
// Revision 1.6  2005/02/21 18:41:26  lulin
// - в метод TevHAFPainter.TuneHeader добавлен параметр aTop.
//
// Revision 1.5  2005/01/17 16:57:00  lulin
// - new method: Il3HAFPainter.NeedPagesCount.
//
// Revision 1.4  2004/12/29 11:51:23  lulin
// - построение _Preview практически полность перенесено из _Nemesis'а в Everest.
//
// Revision 1.3  2004/12/28 17:14:19  lulin
// - установлены колонтитулы по-умолчанию.
//
// Revision 1.2  2004/12/28 16:42:39  lulin
// - TevEditorWindowTextSourceDocumentContainer теперь умеет создавать _Preview.
//
// Revision 1.1  2004/12/28 16:20:24  lulin
// - new unit: evHAFPainterEx.
//

{$Include evDefine.inc }

interface

// <no_string>

uses
  l3Interfaces,
  l3Types,
  l3Base,
  l3InternalInterfaces,

  afwInterfaces,

  k2Interfaces,

  evTypes,
  evSBSPar,
  evHAFPainter
  ;

type
  TevColontituls = array[TevPageColontituls] of Il3CString;
  _afwSettingChanged_Parent_ = TevHAFPainter;
  {$Include afwSettingChanged.imp.pas}
  _afwSettingsReplace_Parent_ = _afwSettingChanged_;
  {$Include afwSettingsReplace.imp.pas}
  TevHAFPainterEx = class(_afwSettingsReplace_)
  protected
  // IafwSettingListener
    function SettingChanged(const aSettingId : TafwSettingId): Boolean;
      override;
      {* - настройки изменились. }
  protected
  // IafwSettingsReplaceListener
    procedure SettingsReplaceFinish;
      override;
      {* - после замены настроек. }
  protected
  // internal fields
    f_Colontituls : TevColontituls;
  protected
    function  IsSettingAffectsUs(const aSettingId: TafwSettingId): Boolean;
      virtual;
      {-}
    procedure Cleanup;
      override;
      {-}
  public
  // public methods
    constructor Create(const aMacroReplacer: Il3HAFMacroReplacer);
      override;
      {-}
    procedure TuneHeader(const aCanvas : Il3Canvas;
                         const aHeader : Ik2Tag;
                         aTop          : Boolean);
      override;
      {-}
    function  NeedPagesCount: Boolean;
      override;
      {-}
    procedure ReadColontitulSettings;
      virtual;
      {-}
  end;//TevHAFPainterEx

  TevReadColontitulsEvent = procedure (var theColontituls : TevColontituls) of object;

var
 g_OnReadColontituls : TevReadColontitulsEvent = nil;

implementation

uses
  SysUtils,
  Classes,
  Forms,

  afwFacade,

  l3Const,
  l3Chars,
  l3String,

  k2Types,
  k2Tags,
  k2Except,
  k2TagGen,

  evInternalInterfaces,
  evdStyles,
  evHAFPainterMacros,

  nevInterfaces
  ;

{$Include afwSettingChanged.imp.pas}

{$Include afwSettingsReplace.imp.pas}

// start class TevHAFPainterEx

constructor TevHAFPainterEx.Create(const aMacroReplacer: Il3HAFMacroReplacer);
  {-}
begin
 inherited;
 ReadColontitulSettings;
end;

procedure TevHAFPainterEx.Cleanup;
  //override;
  {-}
var
 i : TevPageColontituls;
begin
 for i := Low(f_Colontituls) to High(f_Colontituls) do
  f_Colontituls[i] := nil;
 inherited;
end;

procedure TevHAFPainterEx.TuneHeader(const aCanvas : Il3Canvas;
                                     const aHeader : Ik2Tag;
                                     aTop          : Boolean);

 procedure TuneColontitul(const aCanvas : Il3Canvas;
                          const aPara   : Ik2Tag;
                          const aFormat : Il3CString;
                          aLeft         : Boolean);
 const
  RF = [rfReplaceAll];                         
 var
  l_String : Il3CString;
  l_Canvas : IafwPreviewCanvas;
 begin//TuneColontitul
  if l3IsNil(aFormat) then
   Exit;
//
  if (PagesCount = 0) AND Supports(aCanvas, IafwPreviewCanvas, l_Canvas) AND
     not l_Canvas.IsPagesCounter then
   try
    PagesCount := l_Canvas.PagesInfo.rPagesCount;
   finally
    l_Canvas := nil;
   end;//try..finally
  if MacroReplacer <> nil then
   l_String := MacroReplacer.Replace(aFormat)
  else
   l_String := aFormat;
  l_String := l3StringReplace(l_String, l3PCharLen(SAppTitle), l3PCharLen(Application.Title), RF);
  l_String := l3StringReplace(l_String, l3PCharLen(SDocCurrentPage), MacroDocCurrentPage(aCanvas), RF);
  l_String := l3StringReplace(l_String, l3PCharLen(SDocPagesCount), MacroDocPagesCount, RF);
  l_String := l3StringReplace(l_String, l3PCharLen(SCurrentDate), l3PCharLen(DateToStr(Date)), RF);
  l_String := l3StringReplace(l_String, l3PCharLen(SCurrentTime), l3PCharLen(TimeToStr(Time)), RF);
//
  l3DeleteChars(l_String, [#$D]);
  if aLeft then
   aPara.IntA[k2_tiStyle] := ev_saHFLeft
  else
   aPara.IntA[k2_tiStyle] := ev_saHFRight;
  aPara.PCharLenA[k2_tiText] := l3PCharLen(l_String);
 end;//TuneColontitul

var
 l_UpLeft    : Il3CString;
 l_UpRight   : Il3CString;
 l_DownLeft  : Il3CString;
 l_DownRight : Il3CString;
begin
 if (aCanvas.PageNumber = 1) then
 begin
  l_UpLeft := f_Colontituls[pcUpLeftFirst];
  l_UpRight := f_Colontituls[pcUpRightFirst];
  l_DownLeft := f_Colontituls[pcDownLeftFirst];
  l_DownRight := f_Colontituls[pcDownRightFirst];
 end//aCanvas.PageNumber = 1
 else
 begin
  l_UpLeft := f_Colontituls[pcUpLeft];
  l_UpRight := f_Colontituls[pcUpRight];
  l_DownLeft := f_Colontituls[pcDownLeft];
  l_DownRight := f_Colontituls[pcDownRight];
 end;//aCanvas.PageNumber = 1
 if aTop then
 begin
  TuneColontitul(aCanvas, evSBS_LeftPara(aHeader), l_UpLeft, true);
  TuneColontitul(aCanvas, evSBS_RightPara(aHeader), l_UpRight, false);
 end//aTop
 else
 begin
  TuneColontitul(aCanvas, evSBS_LeftPara(aHeader), l_DownLeft, true);
  TuneColontitul(aCanvas, evSBS_RightPara(aHeader), l_DownRight, false);
 end;//aTop
// TuneColontitul(aCanvas, , l_DownLeft);
// TuneColontitul(aCanvas, , l_DownRight);
end;

function TevHAFPainterEx.NeedPagesCount: Boolean;
  //override;
  {-}
var
 l_Index : TevPageColontituls;   
begin
 Result := inherited NeedPagesCount;
 l_Index := Low(TevPageColontituls);
 if not Result then
  while true do
  begin
   if (l3Pos(f_Colontituls[l_Index], SDocPagesCount) <> l3NotFound) then
   begin
    Result := true;
    break;
   end;//l3Pos(f_Colontituls[l_Index], SDocPagesCount) <> l3NotFound
   if (l_Index = High(TevPageColontituls)) then
    break;
   Inc(l_Index);
  end;//while true
end;

procedure TevHAFPainterEx.ReadColontitulSettings;
begin
 f_Colontituls[pcUpLeftFirst] := l3CStr(SAppTitle);
 f_Colontituls[pcUpLeft] := l3CStr(SAppTitle);

 f_Colontituls[pcUpRightFirst] := l3Fmt(str_nevpmDefaultColontitul.AsCStr,
                                         [SDocName, SDocPagesCount, SCurrentDate]);
 f_Colontituls[pcUpRight] := l3Fmt('%s/%s', [SDocCurrentPage, SDocPagesCount]);
 if Assigned(g_OnReadColontituls) then
  g_OnReadColontituls(f_Colontituls);
end;

function TevHAFPainterEx.SettingChanged(const aSettingId: TafwSettingId): Boolean;
  {* - настройки изменились. }
begin
 Result := IsSettingAffectsUs(aSettingID);
 if Result then
  ReadColontitulSettings;
end;

procedure TevHAFPainterEx.SettingsReplaceFinish;
begin
 ReadColontitulSettings;
end;

function TevHAFPainterEx.IsSettingAffectsUs(const aSettingId: TafwSettingId): Boolean;
  {-}
begin
 Result := false;
end;

end.
