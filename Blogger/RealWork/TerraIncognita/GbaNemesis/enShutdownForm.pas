unit enShutdownForm;

// $Id: enShutdownForm.pas,v 1.34 2013/01/22 16:25:03 kostitsin Exp $
//
// $Log: enShutdownForm.pas,v $
// Revision 1.34  2013/01/22 16:25:03  kostitsin
// [$424399029]
//
// Revision 1.33  2012/04/02 10:04:52  kostitsin
// - объединяем nsHooks и nsShutdownSupport
// - (+) перегенерация
//
// Revision 1.32  2011/10/31 15:33:19  lulin
// {RequestLink:294589844}
//
// Revision 1.31  2010/12/16 12:23:01  lulin
// {RequestLink:247793596}.
//
// Revision 1.30  2009/10/29 14:35:41  lulin
// - вторая волна компании по борьбе со старыми внутренними операциями.
//
// Revision 1.29  2009/08/24 08:36:29  lulin
// - переносим системные операции на модель.
//
// Revision 1.28  2009/07/31 17:29:49  lulin
// - убираем мусор.
//
// Revision 1.27  2009/06/03 10:43:13  oman
// - new: Готовим проекты к отпилу - [$148014435]
//
// Revision 1.26  2008/10/30 07:08:02  oman
// - fix: Неправильно подгоняли высоту (К-121167397)
//
// Revision 1.25  2007/08/14 19:31:39  lulin
// - оптимизируем очистку памяти.
//
// Revision 1.24  2007/06/21 11:26:14  mmorozov
// - переименовано свойство;
//
// Revision 1.23  2007/03/15 15:19:04  lulin
// - заменяем на свою функцию форматирования строки.
//
// Revision 1.22  2007/03/05 09:43:25  lulin
// - для расчета высоты текста используем правильныю канву.
//
// Revision 1.21  2006/12/07 12:40:29  lulin
// - повторный переход на "правильные" панели.
//
// Revision 1.20  2006/12/05 14:15:30  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.19  2006/11/17 13:13:58  mmorozov
// MERGE WITH B_NEMESIS_6_4 ( bugfix: при измении тематик (добавлении/удалении/изменении), в процессе работы с ПРАЙМ, автоматом не вызывался метод выливки папок (CQ: OIT5-23672));
//
// Revision 1.18  2006/04/18 08:21:47  oman
// - new beh: перекладываем StdStr в _StdRes
//
// Revision 1.17  2006/03/31 07:41:52  lulin
// - изменен тип параметров, подаваемый в Execte операции.
//
// Revision 1.16  2006/03/30 14:01:28  lulin
// - операция инициализации разделена на две - с параметрами и без - для того, чтобы в итоге избавится от первой.
//
// Revision 1.15  2006/03/20 09:27:53  oman
// - new beh: Перекладываем все текстовые константы в три места (StdStr, DebugStr и SystemStr)
//
// Revision 1.14  2005/10/06 10:49:27  lulin
// - класс панелей переехал в более правильное место.
//
// Revision 1.13  2005/10/06 09:16:59  lulin
// - базовый класс панелей переехал в более правильное место.
//
// Revision 1.12  2005/09/02 12:35:27  demon
// - new behavior: Отработана нотификация о Logout'е
//
// Revision 1.11  2005/05/30 10:00:14  lulin
// - метки переехали в библиотеку VT.
//
// Revision 1.10  2005/05/27 14:46:15  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.9  2005/05/26 17:48:37  lulin
// - базовая канва вывода переехала из Эвереста в L3.
//
// Revision 1.8  2005/04/13 09:45:31  mmorozov
// - добавлен лог, упорядочены модули в uses;
//

{$Include nsDefine.inc}

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  ExtCtrls,
  StdCtrls,

  vcmInterfaces,
  vcmExternalInterfaces,
  vcmBase,
  vcmEntityForm,
  vcmEntities,
  vcmComponent,
  vcmBaseEntities,

  vtLabel,
  
  vtPanel,

  eeButton,

  OvcBase, afwControl, afwControlPrim, afwBaseControl, afwTextControlPrim,
  afwTextControl, l3InterfacedComponent,

  PrimShutDown_Form
  ;

type
  TenShutdown = class(TvcmEntityFormRef)
    Entities : TvcmEntities;
    vtPanel1: TvtPanel;
    pnlBottom: TvtPanel;
    WarningText: TvtLabel;
    CloseButton: TeeButton;
    ShutdownTimer: TTimer;
    LeftPanel: TvtPanel;
    Image: TImage;
    procedure vcmEntityFormInit;
    procedure ShutdownTimerTimer(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure vcmEntityFormCloseQuery(Sender: TObject;
      var CanClose: Boolean);
    protected
     procedure UpdateCloseButton; override;
     procedure ShutdownAll;
    procedure UpdateSize; override;
    public
      { Public declarations }
  end;

implementation

uses
  Math,

  l3InternalInterfaces,
  l3Base,
  l3String,
  l3ScreenIC,

  {$IFDEF Monitorings}
  nsPostingsLine,
  nsPostingsTreeSingle,
  {$ENDIF Monitorings}

  DataAdapter,
  StdRes
  ;

{$R *.DFM}

procedure TenShutdown.vcmEntityFormInit;
begin
 f_CloseCaption := CloseButton.Caption;
 Image.Picture.Icon.Handle := LoadIcon(0, IDI_EXCLAMATION);
 f_InShutdown := False;
end;

procedure TenShutdown.ShutdownTimerTimer(Sender: TObject);
begin
 dec(f_CloseInterval);
 UpdateCloseButton;
 if f_CloseInterval <= 0 then
  ShutdownAll;
end;

procedure TenShutdown.UpdateCloseButton;
var
 l_Str: string;
begin
 l_Str := f_CloseCaption;
 if f_CloseInterval > 0 then
  l_Str := l_Str + ' (' + IntToStr(f_CloseInterval) + ')'
 else
  SafeClose;
 CloseButton.Caption := l_Str;
end;

procedure TenShutdown.CloseButtonClick(Sender: TObject);
begin
 ShutdownAll;
end;

procedure TenShutdown.ShutdownAll;
begin
 f_InShutdown := False;
 {$IFDEF Monitorings}
 TnsPostingsTreeSingle.Instance.ServerDown := True;
 {$ENDIF Monitorings}
 {$IfNDef nsWithoutLogin}
 if defDataAdapter.Authorization.IsServerAlive then
 {$EndIf  nsWithoutLogin}
  g_Dispatcher.CloseAllWindows;
 try
  try
   g_ShowFinalSplash := False;
   GlobalCrashCleanup;
  finally
   GlobalDone;
  end;
 finally
  TerminateProcess(GetCurrentProcess, 255);
 end;
end;

procedure TenShutdown.UpdateSize;
var
 lRect   : TRect;
 lCanvas : Il3InfoCanvas;
begin
 l3FillChar(lRect, SizeOf(lRect), 0);
 lRect.Right := WarningText.Width;
 lCanvas := l3CrtIC;
 try
  lCanvas.Font.AssignFont(WarningText.Font);
  lCanvas.DrawText(l3PCharLen(WarningText.CCaption), lRect, DT_WORDBREAK or
   DT_CALCRECT);
  ClientHeight := Max(Image.Top + Image.Height, lRect.Bottom) + pnlBottom.Height;
 finally
  lCanvas := nil;
 end;
end;

procedure TenShutdown.vcmEntityFormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose := not f_InShutdown;
end;

end.