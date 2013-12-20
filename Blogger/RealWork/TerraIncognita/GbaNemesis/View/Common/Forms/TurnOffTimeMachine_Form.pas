unit TurnOffTimeMachine_Form;

////////////////////////////////////////////////////////////////////////////////
// Библиотека : Проект Немезис.
// Назначение : Диалог выключения машины времени.
// Версия     : $Id: TurnOffTimeMachine_Form.pas,v 1.5 2013/05/15 14:31:43 morozov Exp $
////////////////////////////////////////////////////////////////////////////////

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
  Mask,
  ExtCtrls,

  vtCombo,
  vtDateEdit,
  vtLabel,
  vtRadioButton,

  vcmInterfaces,
  vcmBase,
  vcmEntityForm,
  vcmEntities,
  vcmComponent,
  vcmBaseEntities,

  l3InterfacedComponent,
  
  PresentationInterfaces,

  PrimTurnOffTimeMachine_Form,
  PrimTurnOffTimeMachineOptions_Form, eeButton, vtButton
  ;

type
  Ten_TurnOffTimeMachine = class(TvcmEntityFormRef)
      Entities : TvcmEntities;
    pbDialogIcon: TPaintBox;
    lblTurnOnTimeMachineInfo: TvtLabel;
    rb_totmChangeDate: TvtRadioButton;
    rb_totmStayInCurrentRedaction: TvtRadioButton;
    btnOk: TvtButton;
    btnCancel: TvtButton;
    deChangeDate: TvtDblClickDateEdit;
    rb_totmGotoActualRedaction: TvtRadioButton;
    procedure btnOkClick(Sender: TObject);
    procedure deChangeDateChange(Sender: TObject);
    procedure pbDialogIconPaint(Sender: TObject);
    procedure vcmEntityFormRefCreate(Sender: TObject);
    procedure vcmEntityFormRefShow(Sender: TObject);
  end;

implementation

uses
  vcmForm,
  vcmExternalInterfaces,

  DataAdapter,

  bsConvert,

  nsConst,

  StdRes
  ;

{$R *.DFM}

procedure Ten_TurnOffTimeMachine.btnOkClick(Sender: TObject);
begin
 DoOk;
end;

procedure Ten_TurnOffTimeMachine.deChangeDateChange(Sender: TObject);
begin
 rb_totmChangeDate.Checked := True;
end;

procedure Ten_TurnOffTimeMachine.pbDialogIconPaint(Sender: TObject);
begin
 with Sender as TPaintBox do
  dmStdRes.LargeImageList.Draw(Canvas,
                               Width - c_LargeSizeIcon,
                               (Height - c_LargeSizeIcon) div 2,
                               cTimeMachineOff);
end;

procedure Ten_TurnOffTimeMachine.vcmEntityFormRefCreate(Sender: TObject);
begin
 rb_totmChangeDate.Font.Charset := RUSSIAN_CHARSET;
 rb_totmStayInCurrentRedaction.Font.Charset := RUSSIAN_CHARSET;
end;

procedure Ten_TurnOffTimeMachine.vcmEntityFormRefShow(Sender: TObject);
//http://mdp.garant.ru/pages/viewpage.action?pageId=449678181
begin
 rb_totmGotoActualRedaction.Top := lblTurnOnTimeMachineInfo.Top + 
  lblTurnOnTimeMachineInfo.Height + 15;
 rb_totmStayInCurrentRedaction.Top := rb_totmGotoActualRedaction.Top + 
  rb_totmGotoActualRedaction.Height + 12;
 rb_totmChangeDate.Top := rb_totmStayInCurrentRedaction.Top + 
  rb_totmStayInCurrentRedaction.Height + 12;
 deChangeDate.Top := rb_totmChangeDate.Top + rb_totmChangeDate.Height + 7;
 btnOk.Top := deChangeDate.Top + deChangeDate.Height + 19;
 btnCancel.Top := btnOk.Top;
 Self.ClientHeight := btnOk.Top + btnOk.Height + 17;
end;

end.
