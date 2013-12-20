unit TurnOnTimeMachine_Form;

////////////////////////////////////////////////////////////////////////////////
// Библиотека : Проект Немезис.
// Назначение : Диалог включения машины времени.
// Версия     : $Id: TurnOnTimeMachine_Form.pas,v 1.7 2013/05/15 14:31:45 morozov Exp $
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
  vtButton,

  vcmComponent,
  vcmBaseEntities,
  vcmEntities,
  vcmInterfaces,
  vcmBase,
  vcmEntityForm,

  l3InterfacedComponent,

  PresentationInterfaces,
  PrimTurnOnTimeMachine_Form,
  PrimTurnOnTimeMachineOptions_Form, eeButton
  ;

type
  Ten_TurnOnTimeMachine = class(TvcmEntityFormRef)
      Entities : TvcmEntities;
    pbDialogIcon: TPaintBox;
    lblTurnOnTimeMachineInfo: TvtLabel;
    rb_totmOnDate: TvtRadioButton;
    rb_totmOnCurrentRedation: TvtRadioButton;
    btnOk: TvtButton;
    btnCancel: TvtButton;
    deDate: TvtDblClickDateEdit;
    procedure btnOkClick(Sender: TObject);
    procedure deDateChange(Sender: TObject);
    procedure pbDialogIconPaint(Sender: TObject);
    procedure vcmEntityFormRefCreate(Sender: TObject);
    procedure vcmEntityFormRefShow(Sender: TObject);
  end;

implementation

uses
  vcmForm,
  vcmExternalInterfaces,

  nsConst,

  StdRes
  ;

{$R *.DFM}

procedure Ten_TurnOnTimeMachine.btnOkClick(Sender: TObject);
begin
 DoOk;
end;

procedure Ten_TurnOnTimeMachine.deDateChange(Sender: TObject);
begin
 rb_totmOnDate.Checked := True;
end;

procedure Ten_TurnOnTimeMachine.pbDialogIconPaint(Sender: TObject);
begin
 with Sender as TPaintBox do
  dmStdRes.LargeImageList.Draw(Canvas,
                               Width - c_LargeSizeIcon,
                               (Height - c_LargeSizeIcon) div 2,
                               cTimeMachineOn);
end;

procedure Ten_TurnOnTimeMachine.vcmEntityFormRefCreate(Sender: TObject);
begin
 rb_totmOnDate.Font.Charset := RUSSIAN_CHARSET;
 rb_totmOnCurrentRedation.Font.Charset := RUSSIAN_CHARSET;
end;

procedure Ten_TurnOnTimeMachine.vcmEntityFormRefShow(Sender: TObject);
//http://mdp.garant.ru/pages/viewpage.action?pageId=449678181
begin
 rb_totmOnDate.Top := lblTurnOnTimeMachineInfo.Top +
  lblTurnOnTimeMachineInfo.Height + 11;
 deDate.Top := rb_totmOnDate.Top + rb_totmOnDate.Height + 11;
 rb_totmOnCurrentRedation.Top := deDate.Top + deDate.Height + 10;
 btnOk.Top := rb_totmOnCurrentRedation.Top + rb_totmOnCurrentRedation.Height + 24;
 btnCancel.Top := btnOk.Top;
 Self.ClientHeight := btnOk.Top + btnOk.Height + 18;
end;

end.
