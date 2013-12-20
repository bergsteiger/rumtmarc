unit StartupTips_Form;

{ $Id: StartupTips_Form.pas,v 1.9 2013/04/25 13:21:02 morozov Exp $ }

// $Log: StartupTips_Form.pas,v $
// Revision 1.9  2013/04/25 13:21:02  morozov
// {$RequestLink:363571639}
//
// Revision 1.8  2013/01/22 15:59:58  kostitsin
// [$424399029]
//
// Revision 1.7  2012/04/02 10:04:49  kostitsin
// - объединяем nsHooks и nsShutdownSupport
// - (+) перегенерация
//
// Revision 1.6  2012/03/29 14:56:28  kostitsin
// перегенерация
//
// Revision 1.5  2012/03/29 10:05:42  kostitsin
// приводим методы нотификации к общему виду
//
// Revision 1.4  2012/03/20 10:39:06  kostitsin
// [$346755166]
//
// Revision 1.3  2009/10/02 13:44:01  lulin
// - теперь формы инициализируются честными параметрами, поданными в фабрику, а не через список переменных параметров.
//
// Revision 1.2  2009/10/01 19:12:18  lulin
// - параметризуем фабрики конечных форм приложения.
//
// Revision 1.1  2009/09/23 09:09:24  lulin
// - модуль Совет дня переведён на модель.
//
// Revision 1.5  2009/02/10 18:47:26  lulin
// - <K>: 133891247. Выделяем интерфейсы работы с адаптером и советами дня.
//
// Revision 1.4  2008/12/29 16:40:57  lulin
// - <K>: 134316705.
//
// Revision 1.3  2008/02/20 09:37:31  oman
// - fix: Некорректно обрабатывали модальные окна (cq28223, 16723)
//
// Revision 1.2  2008/02/15 10:48:07  oman
// - fix: При переключении баз гасимся (cq28223, 16723)
//
// Revision 1.1  2008/02/15 08:09:55  oman
// - fix: Переносим файлы в более правильное место (cq28223, 16723)
//
// Revision 1.6  2008/02/14 13:57:34  oman
// - fix: Более кошерно готовим БО для советов дня (cq28223, 16723)
//
// Revision 1.5  2008/02/14 13:46:41  oman
// - new: Советик дня готов - ждем реальных данных в БО (cq28223, 16723)
//
// Revision 1.4  2008/02/14 12:33:32  oman
// - new: Советик дня отсылает в интернет (cq28223, 16723)
//
// Revision 1.3  2008/02/14 11:53:59  oman
// - new: Советик дня поднимает себя при показе (cq28223, 16723)
//
// Revision 1.2  2008/02/14 11:24:00  oman
// - new: Внешний вид мелкого совета дня (cq28223, 16723)
//
// Revision 1.1  2008/02/14 10:12:38  oman
// - new: Заготовка для меткого совета дня (cq28223, 16723)
//
//

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, vcmInterfaces, vcmBase, vcmEntityForm, vcmEntities,
  vcmBaseEntities, vcmComponent, OvcBase, afwControl, vtPanel,
  StdCtrls, vtLabel, ExtCtrls, vtFocusLabel, eeCheckBox,
  afwCustomCommonControl, ElXPThemedControl, ElBtnCtl, ElPopBtn,
  DayTipsInterfaces, l3Interfaces, l3InterfacedComponent,
  afwCustomCommonControlPrim, afwControlPrim, afwBaseControl,
  afwTextControlPrim, afwTextControl, vtCheckBox,
  
  PrimStartupTips_Form;

type
  TefStartupTips = class(TvcmEntityFormRef,
                         Il3WndProcListener)
    Entities: TvcmEntities;
    TopPanel: TvtPanel;
    TitlePaintBox: TPaintBox;
    TitleLabel: TvtLabel;
    BottomPanel: TvtPanel;
    HintPanel: TvtPanel;
    DetailLabel: TvtFocusLabel;
    ShowCheckBox: TvtCheckBox;
    wwwPanel: TvtPanel;
    wwwPaintBox: TPaintBox;
    wwwLabel: TvtFocusLabel;
    NextButton: TElPopupButton;
    PrevButton: TElPopupButton;
    CloseButton: TElPopupButton;
    TipLabel: TvtLabel;
    procedure TitlePaintBoxPaint(Sender: TObject);
    procedure wwwPaintBoxPaint(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure vcmEntityFormInit;
    procedure vcmEntityFormShow(Sender: TObject);
    procedure wwwLabelClick(Sender: TObject);
    procedure DetailLabelClick(Sender: TObject);
    procedure NextButtonClick(Sender: TObject);
    procedure PrevButtonClick(Sender: TObject);
    procedure ShowCheckBoxClick(Sender: TObject);
   protected
    procedure UpdateTip; override;
      {-}
   protected
    //Il3WndProcListener
    //Поддержка нотификации требуется поскольку при подъеме не-vcm модального окна
    //эта формочка остается поверх всех
    //Запил в копировании и упрощении поведения vtNavigator через хуки сообщений
    //ключевые слова TvtNavigator.hGetMessage
    //По хорошему надо бы обощить до уровня vcm убрав заточки в
    //vcmEntityForm.ShowModal по поводу спец. обработки ZoneType = vcm_ztFloating
    procedure WndProcListenerNotify(aMsg: PCWPStruct; var Result: Tl3HookProcResult);
      {-}
    procedure FinishDataUpdate;
     override;
      {-}
   protected
    procedure Cleanup;
     override;
      {-}
   public
    { Public declarations }
  end;

implementation

{$R *.DFM}

uses
 l3ListenersManager,

 afwInterfaces,

 vtNavigatorUtils,

 evCursorShapeMisc,

 nsConst,

 StdRes
 ;

procedure TefStartupTips.TitlePaintBoxPaint(Sender: TObject);
begin
 with Sender as TPaintBox do
  dmStdRes.LargeImageList.Draw(Canvas, width - c_LargeSizeIcon, (Height - c_LargeSizeIcon) div 2, cDayTips);
end;

procedure TefStartupTips.wwwPaintBoxPaint(Sender: TObject);
begin
 with Sender as TPaintBox do
  dmStdRes.SmallImageList.Draw(Canvas, width - c_SmallSizeIcon, (Height - c_SmallSizeIcon) div 2, cInternetTips);
end;

procedure TefStartupTips.CloseButtonClick(Sender: TObject);
begin
 SafeClose;
end;

procedure TefStartupTips.vcmEntityFormInit;
begin
 Tl3ListenersManager.AddWndProcListener(Self);
 wwwLabel.Cursor := evCursorShape2Cursor(ev_csExternalHand);
 DetailLabel.Left := HintPanel.Width - DetailLabel.Width - (HintPanel.Height - DetailLabel.Top - DetailLabel.Height);
end;

procedure TefStartupTips.vcmEntityFormShow(Sender: TObject);
begin
 PostMessage(Handle, WM_SETFOCUS, 0, 0);
end;

procedure TefStartupTips.wwwLabelClick(Sender: TObject);
begin
 f_Data.GotoWeb;
end;

procedure TefStartupTips.DetailLabelClick(Sender: TObject);
begin
 f_Data.ShowDetails;
 SafeClose;
end;

procedure TefStartupTips.Cleanup;
begin
 Tl3ListenersManager.RemoveWndProcListener(Self);
 inherited;
end;

procedure TefStartupTips.UpdateTip;
var
 l_Delta: Integer;
begin
 TipLabel.Autosize := False;
 try
  TipLabel.Width := HintPanel.Width - 2 * TipLabel.Left; 
  TipLabel.CCaption := f_Data.TipCaption;
 finally
  TipLabel.Autosize := True;
 end;
 l_Delta := TipLabel.Top + TipLabel.Height - (DetailLabel.Top - DetailLabel.Height);
 if l_Delta > 0 then
 begin
  Height := Height + l_Delta;
  wwwPanel.Top := wwwPanel.Top + l_Delta;
  ShowCheckBox.Top := ShowCheckBox.Top + l_Delta;
  HintPanel.Height := HintPanel.Height + l_Delta;
  DetailLabel.Top := DetailLabel.Top + l_Delta;
  CloseButton.Top := CloseButton.Top + l_Delta;
 end;
end;

procedure TefStartupTips.NextButtonClick(Sender: TObject);
begin
 f_Data.Next;
 UpdateTip;
end;

procedure TefStartupTips.PrevButtonClick(Sender: TObject);
begin
 f_Data.Prev;
 UpdateTip;
end;

procedure TefStartupTips.ShowCheckBoxClick(Sender: TObject);
begin
 f_Data.DontShow := ShowCheckBox.Checked;
end;

procedure TefStartupTips.FinishDataUpdate;
begin
 inherited;
 SafeClose;
end;

procedure TefStartupTips.WndProcListenerNotify(aMsg: PCWPStruct; var Result: Tl3HookProcResult);
var
 l_IsAct: Boolean;
 l_ActWnd: THandle;

 function lpIsDropDown(aWnd : THandle) : Boolean;
 var
  lControl    : TWinControl;
  lDropWindow : IafwDropDownWindow;
 begin
  Result := False;
  lControl := FindControl(aWnd);
  if Assigned(lControl) then
   if Supports(lControl, IafwDropDownWindow, lDropWindow) then
   try
    Result := True;
   finally
    lDropWindow := nil;
   end
   else
    Result := not Assigned(lControl.Parent) and not Assigned(lControl.Owner);
 end;

 procedure lpDoActivate(aActivate : Boolean);
 const
  cFlag: array [Boolean] of Cardinal = (SWP_HIDEWINDOW, SWP_SHOWWINDOW);
  cInsertAfter: array [Boolean] of HWND = (0, HWND_TOPMOST);
 begin
  SetWindowPos(Handle, cInsertAfter[aActivate], 0, 0, 0, 0,
   SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE or cFlag[aActivate]);
 end;

begin
 if aMsg.message = WM_ACTIVATE then
 begin
  l_IsAct := LoWord(aMsg.WParam) <> WA_INACTIVE;
  if l_IsAct then
  begin
   l_ActWnd := aMsg.hwnd;
   if lpIsDropDown(l_ActWnd) then
    Exit;
   (* Показали модальную форму, прячем навигатор и выходим *)
   if npIsModalForm(l_ActWnd) then
   begin
    lpDoActivate(False);
    Exit;
   end;
   (* Активировали плавающую форму *)
   if not npIsInFloatNavigator(l_ActWnd) and npIsFloatingForm(l_ActWnd) then
   begin
    lpDoActivate(True);
    Exit;
   end;
  end
  else
  begin
  (* Окну aMessage.hwnd пришло сообщение о деактивации, handle активированного
     окна содержится в THandle(aMessage.lParam). Если окно принадлежит
     главному окну навигатора ничего не делаем или активируем, в противном
     случае спрячем *)
   l_ActWnd := THandle(aMsg.lParam);
   (* Информацию о деактивации нет смысла обрабатывать если фокус не ушел на
      рабочий стол, потому что когда придет, через HOOK сообщение об активации
      окна, то мы спрячем навигаторы если активировалось окно другой главной
      формы, или совсем чужое окно *)
   if  l_ActWnd <> HWND_DESKTOP then
    Exit;
  end;
  (* Изменим состояние *)
  lpDoActivate(npIsOwnerWindow(Owner, l_ActWnd));
 end;
end;

end.