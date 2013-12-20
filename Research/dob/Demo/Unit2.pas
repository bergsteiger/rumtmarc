unit Unit2;

{$mode delphi}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  Menus, ActnList, ExtCtrls,

  DrawObjects1,
  DrawObjects2
  ;

type
  TDragListRec = record
    control: TControl;
    startPt: TPoint;
  end;
  PDragListRec = ^TDragListRec;

  { TForm2 }

  TForm2 = class(TForm)
    actAlignBottom: TAction;
    actAlignCenterHorz: TAction;
    actAlignCenterVert: TAction;
    actAlignLeft: TAction;
    actAlignRight: TAction;
    actAlignTop: TAction;
    actArc: TAction;
    actArrow: TAction;
    actBackground: TAction;
    actBezier: TAction;
    actBringToFront: TAction;
    actCopy: TAction;
    actCopyAsBitmap: TAction;
    actCopyAsMetafile: TAction;
    actCut: TAction;
    actDelete: TAction;
    actDiamond: TAction;
    actEllipse: TAction;
    actEqualHeights: TAction;
    actEqualWidths: TAction;
    actFlip: TAction;
    actGrid: TAction;
    actGrow: TAction;
    actGrowTop: TAction;
    ActionManager1: TActionList;
    actLine: TAction;
    actLLine: TAction;
    actOpen: TAction;
    actPaste: TAction;
    actPic: TAction;
    actPlainText: TAction;
    actPolygon: TAction;
    actPrint: TAction;
    actProperties: TAction;
    actRectangle: TAction;
    actRotate: TAction;
    actSave: TAction;
    actSaveAs: TAction;
    actSavePicToBMP: TAction;
    actSendToBack: TAction;
    actShrink: TAction;
    actShrinkTop: TAction;
    actSnapToGrid: TAction;
    actSolidBezier: TAction;
    actSolidPoint: TAction;
    actSpaceHorz: TAction;
    actSpaceVert: TAction;
    actStar: TAction;
    actTextBezier: TAction;
    actZLine: TAction;
    Align1: TMenuItem;
    AlignBottom1: TMenuItem;
    AlignCenterHorzontally1: TMenuItem;
    AlignCenterHorzontally2: TMenuItem;
    AlignLeft1: TMenuItem;
    AlignRight1: TMenuItem;
    AlignTop1: TMenuItem;
    Configure1: TMenuItem;
    CopyAllObjectsasImage1: TMenuItem;
    CopyAllObjectsasMetafile1: TMenuItem;
    CopyFocusedObjects1: TMenuItem;
    CutFocusedObjects2: TMenuItem;
    DefaultLineProperties1: TMenuItem;
    DefaultSolidProperties1: TMenuItem;
    DeleteObjects1: TMenuItem;
    DisableDesigning1: TMenuItem;
    EqualHeights1: TMenuItem;
    EqualWidths1: TMenuItem;
    Exit1: TMenuItem;
    File1: TMenuItem;
    GrowLine2: TMenuItem;
    GrowLinefromTop2: TMenuItem;
    MainMenu1: TMainMenu;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    New1: TMenuItem;
    Object1: TMenuItem;
    Open1: TMenuItem;
    OpenDialog1: TOpenDialog;
    PaintBox1: TPaintBox;
    PasteObjects1: TMenuItem;
    Print1: TMenuItem;
    Properties2: TMenuItem;
    Rotate2: TMenuItem;
    Save1: TMenuItem;
    Save2: TMenuItem;
    SaveDialog1: TSaveDialog;
    ScrollBox1: TScrollBox;
    SetBackgroundColor1: TMenuItem;
    ShowGrid1: TMenuItem;
    ShrinkLinefromBottom2: TMenuItem;
    ShrinkLinefromTop2: TMenuItem;
    Sizing1: TMenuItem;
    SnaptoGrid1: TMenuItem;
    SpaceEquallyHorizontally1: TMenuItem;
    SpaceEquallyVertically1: TMenuItem;
    Spacing1: TMenuItem;
    UseHitTest1: TMenuItem;
    UseTextDialogPrompt1: TMenuItem;
    procedure actOpenExecute(Sender: TObject);
    procedure New1Click(Sender: TObject);
  private
    { private declarations }
    popupPt: TPoint;
    tmpLine: TLine;
    tmpSolid: TRectangle;
    fPastingFromClipboard: boolean;
    fCustomColors: TStringList;
    DragList: TList;
    startDragPt: TPoint;
    procedure OpenObjects(const Filename: string);
    procedure DrawObjLoaded(Sender: TObject);
    procedure DrawFocusRec(Rec: TRect);
    procedure ClearAllDrawObjFocuses;
    function ScrollboxHasDrawObjects: boolean;
    procedure DrawObjMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DrawObjMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure DrawObjMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DrawObjDblClick(Sender: TObject);
    procedure CountFocusedDrawObjs(out cnt: integer; out last: TDrawObject);
    function GetSolidObjFromScreenPt(pt: TPoint): TSolid;
    procedure ClearDragList;
    procedure AddControlToDragList(control: TControl);
    function DragListObj(index: integer): PDragListRec;
  public
    { public declarations }
  end; 

var
  Form2: TForm2; 

implementation

uses
  Windows,
  Types
  ;

{ TForm2 }

procedure TForm2.actOpenExecute(Sender: TObject);
begin
  if OpenDialog1.Execute then OpenObjects(OpenDialog1.FileName);
end;

procedure TForm2.New1Click(Sender: TObject);
var
  i: integer;
begin
  //clear all DrawObjects
  with ScrollBox1 do
    for i := controlCount -1 downto 0 do
      if Controls[i] is TDrawObject then Controls[i].free;
  caption := Application.title + ' - [untitled]';
  SaveDialog1.FileName := '';
end;

procedure TForm2.OpenObjects(const Filename: string);
var
  strings: TStringList;
begin
  //first clear existing objects ...
  New1Click(nil);
  //now load new objects from file ...
  strings := TStringList.Create;
  try
    strings.LoadFromFile(FileName);
    DrawObjects1.LoadDrawObjectsFromStrings(strings, self, ScrollBox1, DrawObjLoaded);
    ClearAllDrawObjFocuses;
    caption := Application.title + ' - ' + extractfilename(FileName);
    SaveDialog1.FileName := FileName;
    OpenDialog1.FileName := FileName;
  finally
    strings.Free;
  end;
end;

procedure TForm2.DrawObjLoaded(Sender: TObject);
begin
  with TDrawObject(Sender) do
  begin
    OnMouseDown := DrawObjMouseDown;
    OnMouseMove := DrawObjMouseMove;
    OnMouseUp := DrawObjMouseUp;
    OnDblClick := DrawObjDblClick;
    CanFocus := not DisableDesigning1.Checked;
    Focused := CanFocus;
    if Sender is TBaseLine then
      TBaseLine(Sender).UseHitTest := UseHitTest1.Checked;

    //if pasting from the clipboard, offset new objects slightly ...
(*    if fPastingFromClipboard then
    begin
      left := left + 10;
      top := top + 10;
    end;*)
  end;
end;

//Implement rubberband selection of objects ...
var
  SelectionRec: TRect;
  SelectionShape: TShape;

procedure TForm2.DrawFocusRec(Rec: TRect);
begin
  if not Assigned(SelectionShape) then
  begin
    SelectionShape := TShape.create(self);
    SelectionShape.Parent := ScrollBox1;
    SelectionShape.Brush.Style := bsClear;
    SelectionShape.Pen.Style := psDot;
  end;
  with Rec do
    SelectionShape.SetBounds(left,top,right-left, bottom-top);
end;
//------------------------------------------------------------------------------

procedure TForm2.ClearAllDrawObjFocuses;
var
  i: integer;
begin
  //hide design buttons & bounding rect for all TDrawObjects ...
  with ScrollBox1 do
    for i := 0 to controlCount -1 do
      if Controls[i] is TDrawObject then
        TDrawObject(Controls[i]).Focused := false;
end;

function TForm2.ScrollboxHasDrawObjects: boolean;
var
  i: integer;
begin
  result := true;
  with ScrollBox1 do for i := 0 to controlCount -1 do
    if Controls[i] is TDrawObject then exit;
  result := false;
end;

function ConnectorHasStuckEnd(connector: TConnector): boolean;
begin
  with connector do
    result := (assigned(Connection1) and not Connection1.Focused) or
      (assigned(Connection2) and not Connection2.Focused);
end;

procedure TForm2.DrawObjMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i: integer;
begin
  if not (ssShift in Shift) and not TDrawObject(Sender).Focused then
      ClearAllDrawObjFocuses;

  //prepare for possible drag moving ...
  ClearDragList;
  GetCursorPos(startDragPt);
  with ScrollBox1 do
    for i := 0 to ControlCount -1 do
      if (Controls[i] is TDrawObject) and TDrawObject(Controls[i]).Focused then
      begin
        //connectors with a fixed (non-moving) end are very tricky so ...
        if (Controls[i] is TConnector) and
          ConnectorHasStuckEnd(TConnector(Controls[i])) then continue;

        AddControlToDragList(Controls[i]);
      end;
end;

procedure TForm2.DrawObjMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  i: integer;
  screenPt: TPoint;
begin
  if not (ssLeft in Shift) or (dragList.Count < 2) then exit;
  //drag move all focused objects ...
  GetCursorPos(screenPt);
  for i := 0 to dragList.Count -1 do with DragListObj(i)^ do
    control.SetBounds(
      startPt.X + (screenPt.X - startDragPt.X),
      startPt.Y + (screenPt.Y - startDragPt.Y),
      control.Width,
      control.Height);
end;

procedure TForm2.DrawObjMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ClearDragList;
end;

procedure TForm2.DrawObjDblClick(Sender: TObject);
(*var
  pt: TPoint;
  btnIdx: integer;
  solid: TSolid;*)
begin
(*  //check if there's a TSolid under the cursor point ...
  GetCursorPos(pt);
  solid := GetSolidObjFromScreenPt(pt);
  if not (Sender is TConnector) or not assigned(solid) then
  begin
    Properties1Click(sender);
    exit;
  end;

  //also check if a TDrawObject designer 'button' is under the cursor point ...
  pt := TConnector(Sender).ScreenToClient(pt);
  if not TConnector(Sender).BtnIdxFromPt(pt,true, btnIdx) then
  begin
    Properties1Click(sender);
    exit;
  end;

  if (btnIdx = 0) then
  begin
    //the button at the beginning of the line was clicked, so ...
    TConnector(Sender).Connection1 := solid;
  end else if (btnIdx = TConnector(Sender).ButtonCount -1) then
  begin
    //the button at the end of the line was clicked, so ...
    TConnector(Sender).Connection2 := solid;
    //let's give it an arrow too ...
    //TConnector(Sender).Arrow2 := true;
  end;*)
end;

//------------------------------------------------------------------------------
procedure TForm2.ClearDragList;
var
  i: integer;
begin
  for i := 0 to dragList.Count -1 do
    dispose(PDragListRec(dragList[i]));
  dragList.Clear;
end;
//------------------------------------------------------------------------------

procedure TForm2.AddControlToDragList(control: TControl);
var
  DragListRec: PDragListRec;
begin
  if not assigned(control) then exit;
  New(DragListRec);
  dragList.Add(DragListRec);
  DragListRec.control := control;
  DragListRec.startPt := Point(control.Left, control.Top);
end;
//------------------------------------------------------------------------------

function TForm2.DragListObj(index: integer): PDragListRec;
begin
  if (index < 0) or (index >= dragList.Count) then
    result := nil else
    result := PDragListRec(dragList[index]);
end;

procedure TForm2.CountFocusedDrawObjs(out cnt: integer; out last: TDrawObject);
var
  i: integer;
begin
  //Count 'focused' TDrawObjects (ie with visible designer buttons).
  //nb: TGraphicControl descendants never get real 'focus' (ie they don't
  //respond directly to keyboard input).
  cnt := 0;
  last := nil;
  with ScrollBox1 do
    for i := 0 to controlCount -1 do
      if (Controls[i] is TDrawObject) and TDrawObject(Controls[i]).Focused then
      begin
        last := TDrawObject(Controls[i]);
        inc(cnt);
      end;
end;

function TForm2.GetSolidObjFromScreenPt(pt: TPoint): TSolid;
var
  i: integer;
begin
  with ScrollBox1 do
    for i := 0 to controlCount -1 do
      if (Controls[i] is TSolid) and
        TSolid(Controls[i]).PointOverObject(pt) then
      begin
        result := TSolid(Controls[i]);
        exit;
      end;
  result := nil;
end;

initialization
  {$I Unit2.lrs}

end.

