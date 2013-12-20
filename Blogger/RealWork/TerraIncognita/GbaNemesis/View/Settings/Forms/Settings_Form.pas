unit Settings_Form;

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

  vtPanel,

  l3Types,
  l3InternalInterfaces,

  OvcBase,

  vcmInterfaces,
  vcmBase,
  vcmEntityForm,
  vcmEntities,
  vcmContainerForm,
  vcmBaseEntities,
  vcmComponent,

  nsConfigurationList,

  ConfigInterfaces,

  l3InterfacedComponent,
  vcmExternalInterfaces,

  PrimSettings_Form
  ;

type
  Tcf_Settings = class(TvcmContainerFormRef, Il3CommandTarget)
      Entities : TvcmEntities;
    procedure vcmContainerFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure vcmContainerFormShow(Sender: TObject);
    procedure vcmContainerFormClose(Sender: TObject;
      var Action: TCloseAction);
  private
  // private fields
    f_Filled      : Boolean;
  protected
  // protected methods
    procedure Cleanup;
      override;
      {-}
  end;

implementation

uses
  l3String,

  afwFacade,

  vcmBaseMenuManager,
  vcmForm,

  StdRes,

  nsSettings,
  nsAppConfig,
  nsUtils,

  OvcCmd,
  OvcConst,

  bsInterfaces
  ;

{$R *.DFM}

procedure Tcf_Settings.Cleanup;
begin
 f_Filled := false;
 inherited;
end;

procedure Tcf_Settings.vcmContainerFormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var
 l_Controller : TOvcController;
 l_Msg: TWMKeyDown;
 l_Target: Il3CommandTarget;
begin
 l_Controller := GetDefController;
 if l_Controller <> nil then
  with l_Controller.EntryCommands do
  begin
   l_Msg.CharCode := Key;
   l_Msg.KeyData := 0;
   if Supports(Self, Il3CommandTarget, l_Target) and
      (l_Controller.EntryCommands.TranslateUsing([OvcCmd.scDefaultTableName],
                                                 TMessage(l_Msg), GetTickCount,
                                                 l_Target) = ccShortCut) then
    Key := 0;
  end;
end;

procedure Tcf_Settings.vcmContainerFormShow(Sender: TObject);
var
 l_Swap: TCursor;
begin
 // Делаем это здесь, т.к. необходимо чтобы toolbar-ы были созданы и мы могли
 // бы сообщить DocksHeight
 if not f_Filled then
 begin
  l_Swap := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
   f_ManagerConf.FillDialog(self.as_IvcmEntityForm, DocksHeight);
  finally
   Screen.Cursor := l_Swap;
  end;
  f_Filled := True;
 end;
end;

procedure Tcf_Settings.vcmContainerFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 f_ManagerConf.DoneEditing;
 f_Filled := False;
end;

end.