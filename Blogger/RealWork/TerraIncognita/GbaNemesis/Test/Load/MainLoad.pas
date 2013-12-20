unit MainLoad;

interface

uses
  Windows, 
  Messages, 

  Classes, 
  Variants, 
  SysUtils, 

  Mask, 
  Forms,
  Dialogs, 
  Buttons,
  ImgList, 
  Controls, 
  Graphics,   
  ExtCtrls, 
  StdCtrls,
  W95Meter, 
  ToolEdit, 
  FileCtrl, 
  ComCtrls, 
  
  OvcBase,  

  k2Interfaces,
  
  afwControl, 
  l3ProgressComponent,
  l3InternalInterfaces,
  l3InterfacedComponent,   

  vtLister, 
  vtOutliner, 
  vtPngImgList,
  vtLabel,

  evEditor,
  nevTools,
  evTextSource,
  evTunedEditor,
  evQueryCardInt,
  evCustomEditor,
  evEditorWindow,
  evQueryCardEditor,
  evInternalInterfaces,
  evSaveDocumentManager,
  evEditorWithOperations,
  evEditorWindowTextSource,
  evMultiSelectEditorWindow,
  eeCheckBox, vtPanel, evCustomTextSource, afwControlPrim,
  afwBaseControl, afwTextControlPrim, afwTextControl, nevControl,
  evCustomEditorWindowPrim, evCustomEditorWindowModelPart,
  evCustomEditorModelPart
  ;

type
  TMainForm = class(TForm)
    TextSource: TevTextSource;
    evSaveDocumentManager: TevSaveDocumentManager;
    ImageList: TvtPngImageList;
    CalImgList: TImageList;
    Panel2: TvtPanel;
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Panel3: TvtPanel;
    DriveComboBox1: TDriveComboBox;
    Panel1: TvtPanel;
    Editor: TevQueryCardEditor;
    Toolbar: TvtPanel;
    edFileName: TFilenameEdit;
    BinaryCB: TeeCheckBox;
    Label1: TvtLabel;
    SpeedButton1: TSpeedButton;
    ColorBox1: TColorBox;
    procedure btLoadClick(Sender: TObject);
    procedure SaveBTNClick(Sender: TObject);
    procedure TextSourceDocumentChanged(aSender: TObject;
      const anOldDocument, aNewDocument: Ik2Tag);
    procedure TextSourceGetControlItemImg(aSender: TObject;
      const aControl: TnevControlInfo;out theImageInfo: TnevControlImageInfo);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ColorBox1Change(Sender: TObject);
  private
    { Private declarations }
    f_InLoad: Boolean;
    f_QueryCard : IevQueryCard;
    procedure LoadDocument(const aFileName: string);
  protected
    destructor Destroy; override;
      {-}
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  Themes,
  UxTheme,
  DateUtils,

  l3Base,
  l3Tree,
  l3Nodes,
  l3Stream,
  
  k2Base,
  k2Tags,

  evdTypes,

  evTypes,
  evControlContainerEX,
  evQueryDocumentContainer,

  vtUtils
  ;

const
 csNewFileAppendix = '_bin';  

type
 THackManeger = class(TevSaveDocumentManager);

procedure TMainForm.btLoadClick(Sender: TObject);
begin
 LoadDocument(edFileName.Text);
end;

procedure TMainForm.SaveBTNClick(Sender: TObject);
begin
 if f_InLoad then Exit;
 f_InLoad := True;
 try  
  if not BinaryCB.Checked then 
   TextSource.FileName := edFileName.Text
  else 
   TextSource.FileName := '';
  TextSource.Indicator.NeedProgressProc := True;
  evSaveDocumentManager.Save(TextSource, nil);
 finally
  f_InLoad := False;
 end;//try..finally
end;

procedure TMainForm.TextSourceDocumentChanged(aSender: TObject;
  const anOldDocument, aNewDocument: Ik2Tag);
var
 l_QueryContainer: InevQueryDocumentContainer;
begin
 if (Editor <> nil) and Assigned(Editor.TextSource) and
    Assigned(Editor.TextSource.DocumentContainer) then
  if l3IOk(Editor.TextSource.DocumentContainer.QueryInterface(InevQueryDocumentContainer, l_QueryContainer)) then
   l_QueryContainer.ReleaseListners; 
end;

destructor TMainForm.Destroy;
begin
 f_QueryCard := nil;
 inherited;
end;

procedure TMainForm.TextSourceGetControlItemImg(aSender: TObject;
  const aControl: TnevControlInfo;out theImageInfo: TnevControlImageInfo);
var
 l_ControlType: TevControlType;
begin
 if f_InLoad then
  Exit;
 l_ControlType := TevControlType(aControl.rControl.IntA[k2_tiType]);
 if l_ControlType = ev_ctCalEdit then  
 begin
  theImageInfo.rImageList := vtMakeImageListWrapper(CalImgList);
  theImageInfo.rFirstIndex := 0;
 end
 else
  if l_ControlType = ev_ctPictureLabel then
  begin
   ImageList.CurSize := ps32x32;
   theImageInfo.rImageList := vtMakeImageListWrapper(ImageList);
   theImageInfo.rFirstIndex := 115;
  end
  else
  begin
   ImageList.CurSize := ps16x16;
   theImageInfo.rImageList := vtMakeImageListWrapper(ImageList);
  end;
end;

procedure TMainForm.LoadDocument(const aFileName: string);
var
 l_Container: InevDocumentContainer;
 l_Cont: InevQueryDocumentContainer;
begin
 if f_InLoad then Exit;
 f_InLoad := True;
 try
  f_QueryCard := nil;
  Editor.TextSource := TextSource;
  l_Container := TevQueryDocumentContainer.Make;
  Editor.TextSource.DocumentContainer := nil;
  TextSource.Indicator.NeedProgressProc := false;
  {$If Declared(k2Null)}
  TextSource.Document := k2Null;
  {$Else}
  //TextSource.Document := nil;
  {$IfEnd}
  TextSource.DocumentContainer := l_Container;

  l_Container.ReadFrom(Tl3FileStream.Make(aFileName));

  f_QueryCard := TevControlContainerEX.Make;
  if l3IOk(TextSource.DocumentContainer.QueryInterface(InevQueryDocumentContainer, l_Cont)) then
   f_QueryCard.LinkView(l_Cont);
 finally
  f_InLoad := False;
 end;//try..finally
 Editor.Invalidate;
end;

procedure TMainForm.FileListBox1DblClick(Sender: TObject);
var
 l_FileCaption : string;
 l_PosExt      : Integer;
begin
 LoadDocument(FileListBox1.FileName);
 l_FileCaption := ExtractFileName(FileListBox1.FileName);
 l_PosExt := LastDelimiter('.', l_FileCaption);
 if l_PosExt > 0 then
 begin
  l_FileCaption := ExtractFilePath(FileListBox1.FileName) + 
    Copy(l_FileCaption, 0, l_PosExt - 1) + csNewFileAppendix +  
    ExtractFileExt(FileListBox1.FileName);
  edFileName.FileName := l_FileCaption;
 end
 else
  edFileName.FileName := FileListBox1.FileName;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
 DriveComboBox1.Drive := 'W';
 DirectoryListBox1.Directory := 'W:\garant6x\implementation\Garant\GbaNemesis\EVD_Templates\';
 ColorBox1.Selected := Editor.Color;
end;

procedure TMainForm.ColorBox1Change(Sender: TObject);
begin
 Editor.Color := ColorBox1.Selected;
end;

end.
