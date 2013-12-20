unit enLongProcessForm;

// $Id: enLongProcessForm.pas,v 1.38 2013/04/24 09:35:55 lulin Exp $

// $Log: enLongProcessForm.pas,v $
// Revision 1.38  2013/04/24 09:35:55  lulin
// - портируем.
//
// Revision 1.37  2013/01/22 16:25:31  kostitsin
// [$424399029]
//
// Revision 1.36  2012/04/02 10:05:15  kostitsin
// - объединяем nsHooks и nsShutdownSupport
// - (+) перегенерация
//
// Revision 1.35  2011/11/16 17:35:12  lulin
// {RequestLink:232098711}
//
// Revision 1.34  2011/10/20 16:20:02  lulin
// {RequestLink:294588730}.
//
// Revision 1.33  2010/12/16 12:23:04  lulin
// {RequestLink:247793596}.
//
// Revision 1.32  2010/03/18 14:15:38  lulin
// {RequestLink:197951943}.
//
// Revision 1.31  2009/12/03 14:32:57  lulin
// {RequestLink:172986031}.
//
// Revision 1.30  2009/12/02 17:21:36  lulin
// {RequestLink:172984885}.
//
// Revision 1.29  2009/10/02 13:43:53  lulin
// - теперь формы инициализируются честными параметрами, поданными в фабрику, а не через список переменных параметров.
//
// Revision 1.28  2009/10/01 16:28:17  lulin
// - вычистил ненужный параметр.
//
// Revision 1.27  2009/08/25 14:13:05  lulin
// {RequestLink:159367405}.
//
// Revision 1.26  2009/07/31 17:29:55  lulin
// - убираем мусор.
//
// Revision 1.25  2007/07/09 12:59:02  oman
// - fix: Убрал суффикс "подождите" - он уже сожержиться в тексте
//  сообщения (cq25777)
//
// Revision 1.24  2007/06/21 11:26:16  mmorozov
// - переименовано свойство;
//
// Revision 1.23  2007/04/04 11:23:30  oman
// - fix: Текст сообщения (cq24690)
//
// Revision 1.22  2007/03/20 08:52:03  lulin
// - не теряем кодировку при присваивании заголовков форм.
//
// Revision 1.21  2007/02/13 13:44:22  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.20  2007/01/24 10:22:40  oman
// - new: Локализация библиотек - ev (cq24078)
//
// Revision 1.19  2007/01/19 09:47:20  lulin
// - выделяем интерфейс параметров для создания формы.
//
// Revision 1.18  2006/12/05 14:15:55  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.17  2006/11/13 15:13:56  mmorozov
// - MERGE WITH 6_4 (- new: возможность задания иконки для диалога длительного процесса; для инициализации диалога выделен отдельный интерфейс (CQ: OIT5-23597));
//
// Revision 1.16.4.1  2006/11/13 14:59:30  mmorozov
// - new: возможность задания иконки для диалога длительного процесса; для инициализации диалога выделен отдельный интерфейс (CQ: OIT5-23597);
//
// Revision 1.16  2006/10/06 16:02:05  migel
// - fix: не закрывалось ничего, если во время установки базы с отключением пользователей мы нажимали на кнопку `Выход` (CQ: 22203).
//
// Revision 1.15  2006/04/17 14:42:36  oman
// - new beh: перекладываем StdStr в _StdRes
//
// Revision 1.14  2006/03/31 07:42:20  lulin
// - изменен тип параметров, подаваемый в Execte операции.
//
// Revision 1.13  2006/03/30 14:01:45  lulin
// - операция инициализации разделена на две - с параметрами и без - для того, чтобы в итоге избавится от первой.
//
// Revision 1.12  2006/03/22 15:12:21  lulin
// - вычищены устаревшие Internal-операции.
//
// Revision 1.11  2006/03/16 07:58:40  oman
// - new beh: переход с _OnTest на _OnGetState для операций
//
// Revision 1.10  2006/02/02 14:53:51  mmorozov
// change: убрано указание модуля при создании формы;
//
// Revision 1.9  2005/11/21 09:41:57  mmorozov
// - add unit;
//
// Revision 1.8  2005/10/06 10:49:38  lulin
// - класс панелей переехал в более правильное место.
//
// Revision 1.7  2005/10/06 09:17:09  lulin
// - базовый класс панелей переехал в более правильное место.
//
// Revision 1.6  2005/05/30 10:00:20  lulin
// - метки переехали в библиотеку VT.
//
// Revision 1.5  2005/05/27 14:46:36  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.4  2005/04/14 12:42:41  migel
// - change: вместо сообщения при конвертации настроек на сервере показываем диалог с прогрессбаром (CQ:13424).
//
// Revision 1.3  2005/04/13 14:37:01  demon
// - new behavior: overload метод Маке для возможности подавать строчку не в параметрах, а напрямую
//
// Revision 1.2  2005/03/28 11:39:53  demon
// - add log
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
  StdCtrls,
  ExtCtrls,

  afwControl,

  eeButton,

  OvcBase,

  vtLabel,
  vtPanel,
  vtGradientWaitbar,

  vcmInterfaces,
  vcmBase,
  vcmEntityForm,
  vcmEntities,
  vcmBaseEntities,
  vcmComponent,

  PrimLongProcess_Form, l3InterfacedComponent, afwControlPrim,
  afwBaseControl, afwTextControlPrim, afwTextControl
  ;

type
  TenLongProcessMessage = class(TvcmEntityFormRef)
    Entities : TvcmEntities;
    ClientPanel: TvtPanel;
    BottomPanel: TvtPanel;
    LeftPanel: TvtPanel;
    MessageLabel: TvtLabel;
    Image: TImage;
    ButtonPanel: TvtPanel;
    btnExit: TeeButton;
    ProgressBar: TvtGradientWaitbar;
    procedure btnExitClick(Sender: TObject);
    procedure vcmEntityFormCloseQuery(Sender: TObject;
                                       var CanClose: Boolean);
  private
    f_InLongProcess : Boolean;
  private
  // internal methods
    procedure Prepare; override;
      {* - подготовка формы к открытию на основе данных f_Data. }
  protected
    function HasFormFloatingZoneTypeAndVisible: Boolean;
      override;
      {-}
    procedure CreateParams(var Params:TCreateParams);
      override;
      {-}
    procedure WMSysCommand(var message: TWMSysCommand);
      message WM_SYSCOMMAND;
      {-}
  public
    // специальный метод, когда VCM еще не полностью проинициализировался и нет возможности использовать `Make`
    constructor Create(const aData   : TnsLongProcessData);
      reintroduce;
      {-}
    function ShowModal: Integer; override;
  end;//TenLongProcessMessage

implementation

uses
  l3String,
  
  afwFacade,

  nsTypes,

  DataAdapter,

  StdRes,
  l3AsincMessageWindowRes
  ;

{$R *.DFM}

procedure TenLongProcessMessage.btnExitClick(Sender: TObject);
begin
 {$IfNDef nsWithoutLogin}
 if defDataAdapter.Authorization.IsServerAlive then
 {$EndIf nsWithoutLogin}
 begin
  Hide; // прячем текущую форму
  afw.ProcessMessages; // делаем так, чтобы форма спряталась, т.к. после этого мы уже не поподем в состояние Idle

  if Assigned(g_Dispatcher) then
   with g_Dispatcher do
   begin
    BeginCancelModal;
    try
     CloseAllWindows;
    finally
     EndCancelModal;
    end;
   end;
 end;//defDataAdapter.Authorization.IsServerAlive

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

procedure TenLongProcessMessage.WMSysCommand(var Message: TWMSysCommand);
begin
 if not (csDesigning in ComponentState) then
 begin
  with Message do begin
   if (CmdType and $FFF0 = SC_MINIMIZE) then
    DefaultHandler(Message)
   else
    inherited;
  end;//with Message
 end
 else
  inherited;
end;

procedure TenLongProcessMessage.CreateParams(var Params: TCreateParams);
var
 l_ExtendedStyle : Integer;
begin
 inherited;

 if not (csDesigning in ComponentState) then
 begin
  with Params do
  begin
   ExStyle := ExStyle or WS_EX_APPWINDOW;
   WndParent := GetDesktopWindow;
  end;
  l_ExtendedStyle := GetWindowLong(Application.Handle, GWL_EXSTYLE);
  SetWindowLong(Application.Handle,
                GWL_EXSTYLE,
                l_ExtendedStyle or WS_EX_TOOLWINDOW {AND NOT WS_EX_APPWINDOW}); 
 end;
end;

function TenLongProcessMessage.HasFormFloatingZoneTypeAndVisible: Boolean;
begin
 Result := False;
end;

procedure TenLongProcessMessage.vcmEntityFormCloseQuery(Sender: TObject;
                                                   var CanClose: Boolean);
begin
 {$IfDef l3HackedVCL}
 if f_InLongProcess 
    and
    NeedCancelModal then
  f_InLongProcess := false;
 {$EndIf l3HackedVCL} 

 if f_InLongProcess then
  CanClose := false;
end;

constructor TenLongProcessMessage.Create(const aData : TnsLongProcessData);
begin
 inherited Create(nil);
 f_Data := aData;
 Prepare;
end;

function TenLongProcessMessage.ShowModal: Integer;
begin
 {$IfDef InsiderTest}
 Inc(Self.g_AllowModal);
 try
 {$EndIf InsiderTest}
  Result := inherited ShowModal;
 {$IfDef InsiderTest}
 finally
  Dec(Self.g_AllowModal);
 end;//try..finally
 {$EndIf InsiderTest}
end;

procedure TenLongProcessMessage.Prepare;
begin
 //if f_Data <> nil then
 begin
  Image.Picture.Icon.Handle := LoadIconA(0, f_Data.rIconName);
  // в дальнейшем нужно икону как-то получать от главной формы
  ProgressBar.Active := True;
  FormStyle := fsNormal;
  f_InLongProcess := True;
  case f_Data.rMessageType of
   lptUpdate:
    begin
     CCaption := vcmCStr(str_lpUpdateCaption);
     MessageLabel.CCaption := l3Cat([vcmCStr(str_lpUpdateMessage), vcmCStr(str_lpExitMessage)]);
    end;
   lptProcessWithExit,
   lptProcessWithoutExit:
    begin
     if not l3IsNil(f_Data.rMessage) then
      MessageLabel.CCaption := l3Cat([f_Data.rMessage, vcmCStr(str_lpWaitMessage)])
     else
      MessageLabel.CCaption := l3Cat([str_l3mmLongOperation.AsCStr, vcmCStr(str_lpWaitMessage)]);
     if f_Data.rMessageType = lptProcessWithoutExit then
     begin
      ButtonPanel.Visible := False;
      Height := Height - ButtonPanel.Height;
     end
     else
      MessageLabel.CCaption := l3Cat([MessageLabel.CCaption, vcmCStr(str_lpExitMessage)]);
    end;
   else
    MessageLabel.CCaption := vcmCStr(str_lpWaitMessage);
  end;
 end;
end;

end.