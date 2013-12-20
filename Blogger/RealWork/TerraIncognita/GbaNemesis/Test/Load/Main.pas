unit Main;

interface

{$Include evDefine.inc}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, OvcBase,  evEditorWindow,
  evMultiSelectEditorWindow, evCustomEditor, evEditorWithOperations,
  evTunedEditor, evEditor, l3InterfacedComponent, l3ProgressComponent,
  evTextSource, W95Meter, StdCtrls,
  evLoadDocumentManager, Mask, ToolEdit, vtLister, vtOutliner, afwControl,
  evEditorWindowTextSource, afwInputControl, vtLabel, eeCheckBox,
  vtPanel, evCustomTextSource, afwControlPrim, afwBaseControl,
  afwTextControlPrim, afwTextControl, nevControl,
  evTextSourcePublished, vtSizeablePanel, evCustomEditorWindowModelPart
  ;

type
  TMainForm = class(TForm)
    Toolbar: TvtPanel;
    Footer: TvtPanel;
    Editor: TevEditor;
    TextSource: TevTextSource;
    Meter: TW95Meter;
    btLoad: TButton;
    LoadManager: TevLoadDocumentManager;
    edFileName: TFilenameEdit;
    lbProgress: TvtLabel;
    lbTime: TvtLabel;
    cbShow: TeeCheckBox;
    lbTotal: TvtLabel;
    cbWeb: TeeCheckBox;
    vtSizeablePanel1: TvtSizeablePanel;
    Contents: TvtOutliner;
    vtSizeablePanel2: TvtSizeablePanel;
    btScroll: TButton;
    procedure btLoadClick(Sender: TObject);
    procedure MeterSetStr(const aStr: String);
    procedure btScrollClick(Sender: TObject);
  private
    { Private declarations }
    f_InLoad : Boolean;
    f_Delta  : Integer;
    f_F      : Integer;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  l3Base,
  l3InternalInterfaces,
  l3Const,

  k2Tags,
  k2Base,

  evTypes,
  evOp,

  Document_Const
  ;

{.$Define NeedLog}  

procedure TMainForm.btLoadClick(Sender: TObject);
var
 l_t : DWord;
 l_S : Integer;
begin
 if f_InLoad then
  Exit;
 Editor.WebStyle := cbWeb.Checked; 
 Editor.Canvas.DrawSpecial := true;
 {$IfDef NeedLog}
 l3System.Msg2Log(Format('Format: %s %s Load: %s', [lbProgress.Caption, lbTotal.Caption, lbTime.Caption]));
 {$EndIf NeedLog}
 f_InLoad := true;
 try
  f_Delta := 0;
  f_F := 0;
  lbTime.Caption := '';
  lbProgress.Caption := '';
  lbTotal.Caption := '';
  if cbShow.Checked then
   Editor.TextSource := TextSource
  else
   Editor.TextSource := nil;
  LoadManager.FileName := edFileName.Text;
  lbTime.Caption := '';
  Editor.AllowMultiSelect := true;
  //Editor.AllowMultiSelect := false;
  TextSource.Indicator.NeedProgressProc := true;
 // TevCustomProgressIndicator(TextSource.Indicator).Meter := Meter;
  {$If Declared(k2Null)}
  TextSource.Document := k2Null;
  {$Else}
  TextSource.DocumentContainer := nil;
  {$IfEnd}
  l_t := GetTickCount;
  {$If Declared(k2Null)}
  LoadManager.Load(TextSource{, cf_EverestBin});
  {$Else}
  LoadManager.Load(TextSource, k2_idDocument);
  {$IfEnd}
  l_S := GetTickCount - l_t;
  lbTime.Caption := Format('%d (%d)', [l_S, l_S - f_Delta]);
 finally
  f_InLoad := false;
 end;//try..finally
 {$IfDef NeedLog}
 l3System.Msg2Log(Format('Loaded: %s', [LoadManager.FileName]));
 {$EndIf NeedLog}
end;

procedure TMainForm.MeterSetStr(const aStr: String);
begin
 //lbProgress.Caption := aStr;
end;

procedure TMainForm.btScrollClick(Sender: TObject);
var
 l_t : DWord;
 l_S : Integer;
begin
 lbTime.Caption := '';
 if (Editor.View <> nil) then
 begin
  Il3CommandTarget(Editor).ProcessCommand(ev_ocTopLeft, true, 1);
  l_t := GetTickCount;
  while not Editor.View.IsDocumentTailVisible do
   Il3CommandTarget(Editor).ProcessCommand(ev_ocPageDown, true, 1);
  l_S := GetTickCount - l_t;
  lbTime.Caption := Format('%d (%d)', [l_S, l_S - f_Delta]);
 end;//Editor.View <> nil
end;

end.
