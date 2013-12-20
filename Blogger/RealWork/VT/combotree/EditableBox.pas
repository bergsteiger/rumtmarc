unit EditableBox;

{ Библиотека "ComboTree"  }
{ Начал: Люлин А.В.       }
{ Модуль: EditableBox -   }
{ Начат: 04.06.2008 21:55 }
{ $Id: EditableBox.pas,v 1.25 2013/04/04 11:20:16 lulin Exp $ }

// $Log: EditableBox.pas,v $
// Revision 1.25  2013/04/04 11:20:16  lulin
// - портируем.
//
// Revision 1.24  2012/10/26 14:58:02  lulin
// {RequestLink:406489593}
//
// Revision 1.23  2012/10/26 14:19:44  lulin
// {RequestLink:406489593}
//
// Revision 1.22  2012/01/27 14:26:02  lulin
// - bug fix: вспоминаем про старый редактор.
//
// Revision 1.21  2012/01/27 14:16:52  lulin
// - bug fix: вспоминаем про старый редактор.
//
// Revision 1.20  2012/01/20 15:02:42  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=278854646
//
// Revision 1.19  2009/12/15 14:26:27  oman
// - fix: Неверно подгоняли высоту {RequestLink:173933662}
//
// Revision 1.18  2009/12/15 14:19:20  oman
// - fix: Неверно подгоняли высоту {RequestLink:173933662}
//
// Revision 1.17  2009/03/05 14:35:08  lulin
// - bug fix: не читаем весь текст, когда нужна только его длина.
//
// Revision 1.16  2009/02/09 08:55:13  lulin
// http://mdp.garant.ru/pages/viewpage.action?pageId=118391181&focusedCommentId=136263451#comment-136263451
//
// Revision 1.15  2008/10/01 12:01:29  lulin
// - <K>: 120719160.
//
// Revision 1.14  2008/08/19 10:21:52  mmorozov
// - bugfix: исправляем ошибки запроса <K> - 96483875, найдено в запросе <K> - 109086702;
//
// Revision 1.13  2008/08/18 11:52:58  mmorozov
// - bugfix: обновление текущего после переключения базы (<K>: 96483875);
//
// Revision 1.12  2008/08/15 13:13:58  lulin
// - <K>: 108626698.
//
// Revision 1.11  2008/07/18 05:51:24  oman
// - fix: Код для фильтрации перенесен в более подходящее место (К-103448901)
//
// Revision 1.10  2008/07/15 14:37:47  lulin
// - <K>: 98828459.
//
// Revision 1.9  2008/07/14 16:05:51  lulin
// - <K>: 102041333.
//
// Revision 1.8  2008/07/09 17:32:05  lulin
// - лишний раз не пересоздаём документ.
//
// Revision 1.7  2008/07/09 10:42:14  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.6  2008/07/09 09:03:32  lulin
// - bug fix: не компилировался Архивариус.
//
// Revision 1.5  2008/07/08 11:26:31  lulin
// - избавился от хранения и выставления свойства IsList.
// - починил выбор в списке пользователей.
//
// Revision 1.4  2008/07/08 09:48:49  lulin
// - не перекладываем строки в ноды, а просто реализуем интерфейс ноды.
//
// Revision 1.3  2008/07/07 13:40:33  lulin
// - чистка кода.
//
// Revision 1.2  2008/07/07 13:35:32  lulin
// - чистка кода.
//

{$Include vtDefine.inc}

interface

uses
  Messages,
  
  Classes,

  Controls,
  StdCtrls,
  
  treedrop,

  l3Interfaces,
  l3TreeInterfaces,
  l3VCLStrings,

  {$IfNDef NoVCM}
  vcmExternalInterfaces,
  {$EndIf  NoVCM}

  ctTypes
  ;
                    
type
  TEditableState = (esNone, esSemiCompleted, esCompleted, esWrong);

  // логика фильтрации
  TEditableBox = class(TDropDownTree)
  private
    FOnClear             : TNotifyEvent;
    FAutoWidth           : TAutoWidthMode;
    {$IfNDef ctEverestEdit}
    FRestrictConsSpaces  : Boolean;
    {$EndIf  ctEverestEdit}
    FOnDataDisapeared    : TNotifyEvent;
    f_ProcessServerTreeNotification: Boolean;
    f_AfterCompletion    : TNotifyEvent;
  protected
    {$IfNDef DesignTimeLibrary}
    FTempObjectCompleted : Il3SimpleNode;
    {$EndIf DesignTimeLibrary}
    FBorder              : integer;
    FState               : TEditableState;
  private
    procedure SetState(const aValue: TEditableState);
    procedure SetAutoWidth(const aValue: TAutoWidthMode);
    {$IfNDef ctEverestEdit}
    procedure SetRestrictConsSpaces(const aValue: Boolean);
    {$EndIf  ctEverestEdit}
  private
  // property methods
    function pm_GetFullWidth : Integer;
      {-}
  protected
    FNeedDropFiltering : boolean;
    FNeedGotoNode    : boolean;
    FFiltCount       : integer;
    FNarrowSearch    : boolean;
    FSaveNode        : Il3SimpleNode;
    FSaveBorder      : integer;
    FSaveHint        : String;
    FHintSaved       : boolean;
    FRestrictHintChanging: Boolean;
    // дизейблит HintChanged
    {$IfNDef DesignTimeLibrary}
    FRootNode: Il3SimpleNode;
    {$EndIf DesignTimeLibrary}
    FItems          : Tl3Strings;
    FItemIndex      : integer;
    FTreeIsFiltered : boolean;
    // дерево было отфильтровано (чтобы не делать лишний раз Deselect Hidden)
  protected
  // internal methods
    {$IfDef ctEverestEdit}
      function  IsReadOnly: Boolean;
        override;
    {$Else  ctEverestEdit}
    function GetReadOnly: Boolean;
      override;
      {-}
    function TextLen: Integer;
      {-}  
    {$EndIf  ctEverestEdit}
    {$IfNDef DesignTimeLibrary}
    procedure SaveState;
    procedure RestoreState;
    procedure EscapePressed;
      override;
      {-}
    {$EndIf DesignTimeLibrary}
    procedure TriggerCaretXChangedEvent(var aValue:integer; var Allow:boolean);
      override;
      {-}
    procedure TriggerClearEvent;
      {-}
    function  GetIsList: Boolean;
      override;
      {-}
    procedure RecreateTreeIfNeeded(aValue:TComboStyle);
      override;
      {-}
    procedure InternalSetText(const aStr : Il3CString;
                              aBorder    : integer = -1);
      {-}
    {$IfNDef NoVCM}
    function  vcmSetRoot(const aRoot : IvcmNodes): Boolean;
      {-}
    {$EndIf  NoVCM}  
    {$IfNDef DesignTimeLibrary}
    procedure vcmSetCurrent(const aCurrent:Il3SimpleNode);
    procedure SetRoot(const aRoot:Il3SimpleNode);
    procedure SetCurrentNode(const aValue: Il3SimpleNode);
      override;
      {-}
    {$EndIf DesignTimeLibrary}
    procedure CMEnabledChanged(var Msg: TMessage);
      message CM_ENABLEDCHANGED;
      {-}
    procedure SetComboStyle(const aValue: TComboStyle);
      override;
      {-}
    function GetStyle: TComboBoxStyle;
      override;
    procedure SetStyle(const aValue:TComboBoxStyle);
      override;
      {-}
    {$IfNDef DesignTimeLibrary}
    {$IfDef l3HackedVCL}
    function HintChanged(const aHint: String): boolean;
      override;
    {$EndIf l3HackedVCL}
    {$EndIf DesignTimeLibrary}
    function IsSimpleTree: boolean;
      {-}
    {$IfNDef ctEverestEdit}
    procedure TreeChanged;
      override;
      {-}
    {$EndIf  ctEverestEdit}
    procedure TreeChangedNotification;
      override;
      {-}
    procedure ChangeUnsimpleTree;
     virtual;
      {-}
    property State : TEditableState
      read FState
      write SetState;
      {-}
  public
  // public methods
    {$IfNDef DesignTimeLibrary}
    procedure CustomDoEnter;
      override;
      {-}
    {$EndIf DesignTimeLibrary}
    function MakeNodesFromItems: boolean;

    procedure Change;
      override;
    procedure Clear;
    procedure DropDownCompletion;

    procedure InitFields;
      override;
    {$IfNDef DesignTimeLibrary}
    function getFullPath(const aNode: Il3SimpleNode): Il3CString;
    //new
    procedure SetNode(const aValue: Il3SimpleNode);
    function QueryInterface(const IID: TGUID; out Obj): HResult;
      override;
      stdcall;
    {$EndIf DesignTimeLibrary}
    constructor Create(AOwner: TComponent);
      override;
    procedure Cleanup;
      override;
      {-}
    procedure AdjustWidth; 
      {$IfDef ctEverestEdit}
      override;
      {$EndIf ctEverestEdit}
  public
  // public properties
    property FullWidth: Integer
      read pm_GetFullWidth;
      {* - ширина необходимая edit-у для отображения всей строки. }
    {$IfNDef ctEverestEdit}
    property RestrictConsSpaces: Boolean
      read FRestrictConsSpaces
      write SetRestrictConsSpaces;
      {-}
    {$EndIf  ctEverestEdit}
    property OnClear: TNotifyEvent
      read FOnClear
      write FOnClear;
      {-}
    property AutoWidth: TAutoWidthMode
      read FAutoWidth
      write SetAutoWidth
      stored false;
      {-}
    property ProcessServerTreeNotification: Boolean
      read f_ProcessServerTreeNotification
      write f_ProcessServerTreeNotification;
      {-}
    {$IfNDef DesignTimeLibrary}
    property RootNode: Il3SimpleNode
      read FRootNode
      write SetNode;
    {$EndIf DesignTimeLibrary}
  public
    property ComboStyle;
      {-}
    property Style
      stored false;
      {-}
    property OnKeyPress;
      {-}
    property OnDataDisapeared: TNotifyEvent
      read FOnDataDisapeared
      write FOnDataDisapeared;
      {-}
    property AfterCompletion: TNotifyEvent
      read f_AfterCompletion
      write f_AfterCompletion;
      {-}
    property ShowRoot;
      {-}
  end;//TEditableBox

implementation

uses
  SysUtils,

  Forms,
  
  l3Tree_TLB,
  l3InternalInterfaces,
  l3String,
  l3Base,
  l3Nodes,
  l3ScreenIC,
  l3InterfacesMisc,
  l3MinMax,
  l3Units,
  l3ControlsTypes,
  l3SimpleTree,

  vtOutliner
  ;

// start class TEditableBox

procedure TEditableBox.Clear;
begin
 {$IfNDef DesignTimeLibrary}
 CurrentMode := CurrentMode + [cmClear];
 FTempObjectCompleted := nil;
 if ComboStyle <> ct_cbEdit then
  ProcessTreeSelect(false, false)
 else
  Text := nil;
 CurrentMode := CurrentMode - [cmClear];
 {$EndIf DesignTimeLibrary}
end;

{$IfNDef DesignTimeLibrary}
function TEditableBox.getFullPath(const aNode: Il3SimpleNode): Il3CString;

 function GetPath(const aNode: Il3SimpleNode): Il3CString;
 begin//GetPath
  Result := nil;
  if (aNode.Parent <> nil) and not aNode.IsSame(RootNode) then
  begin
   Result := GetPath(aNode.Parent);
   if not l3IsNil(Result) then
    Result := l3Cat(Result, '\');
   Result := l3Cat([Result, l3CStr(aNode)]);
  end;
 end;//GetPath

begin
 if (aNode = nil) then
  Result := nil
 else
 { если передают рутовую ноду - показываем иначе строим путь без рутовой ноды (СКР в Немезисе) }
 if (Tree.ShowRoot) and (aNode.Parent = nil) then
  Result := l3CStr(aNode)
 else
  Result := GetPath(aNode);
end;
{$EndIf DesignTimeLibrary}

procedure TEditableBox.TriggerClearEvent;
begin
 {$IfNDef DesignTimeLibrary}
 CurrentMode := CurrentMode + [cmClear];
 try
  FTempObjectCompleted := nil;
  if (ComboStyle <> ct_cbEdit) then
   ProcessTreeSelect(false, false);
 finally
  CurrentMode := CurrentMode - [cmClear];
 end;//try..finally 
 {$EndIf DesignTimeLibrary}
 if Assigned(FOnClear) then
  FOnClear(Self);
end;

procedure TEditableBox.InitFields;
begin
 inherited;
 State := esNone;
 FBorder := 0;
 FSaveHint := '';
 FHintSaved := false;
end;

procedure TEditableBox.Change;

{$IfNDef DesignTimeLibrary}
(*var
 l_Str : Il3CString;*)
{$EndIf DesignTimeLibrary}
begin
 {$IfNDef DesignTimeLibrary}
 (* вырежем последовательные пробелы *)
 {$IfNDef ctEverestEdit}
 if FRestrictConsSpaces then
  Paras.ParagraphStrings[0] := l3DeleteDoubleSpace(Text);
 {$EndIf  ctEverestEdit}

(* l_Str := Text;*)
 if IsSimpleTree then
 begin
  FNeedDropFiltering := false;
  FNeedGotoNode := false;
 end//IsSimpleTree
 else
  ChangeUnsimpleTree;
 inherited;
 if (TextLen <= 0) then
 //if l3IsNil(Text) then
  TriggerClearEvent;
 {$EndIf DesignTimeLibrary}
end;

procedure TEditableBox.SetState(const aValue: TEditableState);
begin
 if (FState <> aValue) then
 begin
  FState := aValue;
  Invalidate;
 end;//FState <> aValue
end;

procedure TEditableBox.TriggerCaretXChangedEvent(var aValue: integer;
  var Allow: boolean);
begin
 Allow := (Tree <> nil) and Supports(Tree.TreeStruct, Il3Tree);
end;

function TEditableBox.MakeNodesFromItems: boolean;
  {-}
{$IfNDef DesignTimeLibrary}
(*var
 lRoot     : Tl3UsualNode;
 lSubNode  : Tl3UsualNode;
 lCount    : integer;
 lOldIndex : integer;*)
var 
 l_Node    : Il3SimpleRootNode;
{$EndIf DesignTimeLibrary}
begin
 Result := false;
 {$IfNDef DesignTimeLibrary}
 if (FItems.Count > 0) then
 begin
  if Supports(FItems, Il3SimpleRootNode, l_Node) then
   try
    if not l_Node.IsSame(FRootNode) then
    begin
     FRootNode := l_Node;
     Tree.TreeStruct := Tl3SimpleTree.Make(l_Node);
     Tree.ViewOptions := Tree.ViewOptions - [voShowOpenChip];
     Tree.IsShowLines := false
    end;//not l_Node.IsSame(FRootNode)
   finally
    l_Node := nil;
   end;//try..finally
(*  if (FItemCachedText <> FItems.FuckItems.Text) then
  begin
   Result := true;
   lOldIndex := FItemIndex;
   lRoot := Tl3UsualNode.Create;
   try
    for lCount := 0 to FItems.Count - 1 do
    begin
     lSubNode := Tl3UsualNode.Create;
     try
      lSubNode.Text := FItems.ItemW[lCount];
      lRoot.InsertChild(lSubNode);
     finally
      l3Free(lSubNode);
     end;//try..finally
    end;//for lCount
    RootNode := lRoot;
    FItemCachedText := FItems.FuckItems.Text;
    FItemIndex := lOldIndex;
   finally
    l3free(lRoot);
   end;//try..finally
  end;//FItemCachedText <> FItems.FuckItems.Text*)
 end;//FItems.Count > 0
 {$EndIf DesignTimeLibrary}
end;

procedure TEditableBox.InternalSetText(const aStr : Il3CString;
                                       aBorder    : integer);
var
 l_IC : Il3InfoCanvas;                                       
begin
 Inc(FRestrictOnTextChange);
 try
  if HandleAllocated then
  begin
   FRestrictHintChanging := true;
   try
    l_IC := l3CrtIC;
    l_IC.Font.AssignFont(Self.Font);
    if (l_IC.LP2DP(l_IC.TextExtent(l3PCharLen(aStr))).X + Button.Width + 7 > Width) then
    begin
     if not FHintSaved then
     begin
      FSaveHint := Hint;
      FHintSaved := true;
     end;//not FHintSaved
     Button.Hint:=FSaveHint;
     Hint := l3Str(aStr);
    end//l_IC.LP2DP(l_IC.TextExtent(l3PCharLen(aStr))).X + Button.Width + 7 > Width
    else
    begin
     if FHintSaved then
     begin
      Hint := FSaveHint;
      FHintSaved := false;
     end;//FHintSaved
     Button.Hint := '';
    end;//l_IC.LP2DP(l_IC.TextExtent(l3PCharLen(aStr))).X + Button.Width + 7 > Width
   finally
    FRestrictHintChanging := false;
   end;//try..finally 
  end;//HandleAllocated

  Paras.ParagraphStrings[0] := aStr;
  if (aBorder = -1) then
  begin
   // в обычных(Readonly) и фильтрованых комбобоксах скроллим текст вправо
   case ComboStyle of
    ct_cbDropDown{, cbDropDownList}:
     FBorder := TextLen;
    else
     FBorder := 0;
   end;//case ComboStyle
  end//aBorder = -1
  else
   FBorder := aBorder;
  DoMoveCursor(FBorder);
  {$IfNDef ctEverestEdit}
  RepaintRightMargin((EditRect.Right - RightMargin) - (EditRect.Left + LeftMargin)-1, true);
  {$EndIf  ctEverestEdit}
 finally
  Dec(FRestrictOnTextChange);
 end;//try..finally 
end;

// start class TEditableBox

constructor TEditableBox.Create;
begin
 inherited;
 ShowGripper := true;
 SizeableTree := true;
 FSaveNode := nil;
 FSaveBorder := 0;
 FFiltCount := 0;

 FAutoWidth := awNone;
 {$IfNDef ctEverestEdit}
 FRestrictConsSpaces := False;
 FRightBorderSpace := false;
 {$EndIf  ctEverestEdit}
 FItemIndex := -1;
 f_ProcessServerTreeNotification := False;
end;

{$IfNDef DesignTimeLibrary}
procedure TEditableBox.SetNode(const aValue: Il3SimpleNode);
var
 l_Wake: Il3Wake;
begin
 if (aValue <> nil) and not aValue.IsSame(FRootNode) then
 begin
  FRootNode := aValue;
  SetRoot(aValue);

  FDropWidth:=Width;
  Tree.Width:=FDropWidth;
  if Supports(FRootNode, Il3Wake, l_Wake) then
   l_Wake.Wake;
  FDropHeight:=EstimateTreeHeight(Tree.GetMinSizeY, Tree.GetMaxSizeY);
  Tree.Height:=FDropheight;
  inc(FDropHeight, Tree.getBorderSize);

  Dropped:=false;
 end;//aValue <> nil
end;

procedure TEditableBox.SetRoot(const aRoot: Il3SimpleNode);
begin
 if not Tree.TreeStruct.RootNode.IsSame(aRoot) then
 begin
  DropSessionSettings;
  Tree.SetTreeRoot(aRoot);
  FTreeIsFiltered := false;
  FItemIndex := -1;
  {$IfNDef ctEverestEdit}
  TreeChanged;
  {$EndIf  ctEverestEdit}
 end;//not Tree.TreeStruct.RootNode.IsSame(aRoot)
end;

function TEditableBox.QueryInterface(const IID: TGUID; out Obj): HResult;
begin
 if IsEqualGUID(Il3SimpleNode, IID) then
 begin
  if (CurrentNode <> nil) then
  begin
   Result := CurrentNode.QueryInterface(IID, Obj);
   Exit;
  end;//CurrentNode <> nil
 end;//IsEqualGUID(Il3SimpleNode, IID)
 if IsEqualGUID(Il3Node, IID) then
 begin
  if (CurrentNode <> nil) then
  begin
   Result := CurrentNode.QueryInterface(IID, Obj);
   Exit;
  end;//CurrentNode <> nil
 end;
 if IsEqualGUID(Il3RootNode, IID) then
 begin
  if (RootNode <> nil) then
  begin
   Result := RootNode.QueryInterface(IID, Obj);
   Exit;
  end;//RootNode <> nil
 end;//IsEqualGUID(Il3RootNode, IID)
 Result := inherited QueryInterface(IID, Obj);
end;

procedure TEditableBox.SetCurrentNode(const aValue: Il3SimpleNode);
begin
 if (aValue <> FTempObjectCompleted) then
 begin
  (*=============================*)
  // http://mdp.garant.ru/pages/viewpage.action?pageId=93264987
  // http://mdp.garant.ru/pages/viewpage.action?pageId=98337580
  if (ComboStyle <> ct_cbEdit) then
   if (aValue <> nil) AND not aValue.IsSame(FTempObjectCompleted) then
   // - иначе теряем текущего - http://mdp.garant.ru/pages/viewpage.action?pageId=120719160
    Tree.GotoOnNode(aValue);
  (*=============================*)
  FTempObjectCompleted := aValue;
  CurrentMode := CurrentMode + [cmSetCurrent];
  try
   ProcessTreeSelect(false, false);
  finally
   CurrentMode := CurrentMode - [cmSetCurrent];
  end;//try..finally
 end;//aValue <> FTempObjectCompleted
 CurrentMode := CurrentMode - [cmWMSetText];
end;
{$EndIf DesignTimeLibrary}

{$IfDef ctEverestEdit}
function TEditableBox.IsReadOnly: Boolean;
  //override;
begin
 Result := (ComboStyle in ReadOnlyComboStyles) OR not Enabled OR
           inherited IsReadOnly;
end;
{$Else  ctEverestEdit}
function TEditableBox.GetReadOnly: Boolean;
begin
 Result := (ComboStyle in ReadOnlyComboStyles) OR inherited GetReadOnly;
end;

function TEditableBox.TextLen: Integer;
  {-}
begin
 Result := l3Len(Text);
end;
{$EndIf ctEverestEdit}

procedure TEditableBox.CMEnabledChanged(var Msg: TMessage);
  //message CM_ENABLEDCHANGED;
  {-}
begin
 inherited;
 NoCaret := not Enabled OR (ComboStyle in ReadOnlyComboStyles);
end;

procedure TEditableBox.SetComboStyle(const aValue: TComboStyle);
begin
 if (aValue <> ComboStyle) then
 begin
  RecreateTreeIfNeeded(aValue);
  InternalSetText(Text); // ? надо ли ? для скроллинга начало\конец
 end;//aValue <> ComboStyle
 inherited;
{$IfNDef DesignTimeLibrary}
 {$IfNDef ctEverestEdit}
 FDropSelection := true;
 {$EndIf  ctEverestEdit}
 FArrowsSelect := true;

 NoCaret := not Enabled OR (aValue in ReadOnlyComboStyles);

 {$IfNDef ctEverestEdit}
 FDeltaSize := 0;
 {$EndIf  ctEverestEdit}
 
 Button.Visible := (aValue <> ct_cbEdit) ;

{$EndIf DesignTimeLibrary}
end;

function TEditableBox.GetStyle: TComboBoxStyle;
begin
 if (ComboStyle = ct_cbDropDown) then
  Result := csDropDown
 else
 if (ComboStyle = ct_cbDropDownList) then
  Result := csDropDownList
 else
  Result := csSimple;
end;

procedure TEditableBox.SetStyle(const aValue: TComboBoxStyle);
begin
 if (aValue = csDropDown) then
  ComboStyle := ct_cbDropDown
 else
 if (aValue = csDropDownList) then
  ComboStyle := ct_cbDropDownList
 else
  Assert(false);
end;

procedure TEditableBox.Cleanup;
begin
 {$IfNDef DesignTimeLibrary}
 FTempObjectCompleted := nil;
 {$EndIf DesignTimeLibrary}
 FSaveNode := nil;
 inherited;
 {$IfNDef DesignTimeLibrary}
 fRootNode := nil;
 {$EndIf  DesignTimeLibrary}
end;

{$IfNDef NoVCM}
function TEditableBox.vcmSetRoot(const aRoot: IvcmNodes): Boolean;
  {-}
begin
 Result := false;
 if (aRoot <> nil) then
 begin
  if (aRoot.Tree <> nil) then
  begin
   if not l3IEQ(TreeStruct, aRoot.Tree) then
   begin
    ComboStyle := ct_cbDropDownList;
    FItems.Clear;
    Tree.isShowLines := true;
    TreeStruct := aRoot.Tree;
   end;//not l3IEQ(TreeStruct, aRoot.Tree)
   Result := true;
  end//aRoot.Tree <> nil
  else
  if (aRoot.Count = 1) then
  begin
   ComboStyle := ct_cbDropDownList;
   FItems.Clear;
   Tree.isShowLines := true;
   {$IfNDef DesignTimeLibrary}
   SetNode(aRoot[0]);
   {$EndIf  DesignTimeLibrary}
   Result := true;
  end;//aRoot.Count = 1
 end;//aRoot <> nil
end;
{$EndIf  NoVCM}

{$IfNDef DesignTimeLibrary}
procedure TEditableBox.vcmSetCurrent(const aCurrent: Il3SimpleNode);
  {-}

 procedure DoSet;
 begin
  CurrentMode := CurrentMode + [cmVcmExecute];
  try
   CurrentNode := aCurrent;
  finally
   CurrentMode := CurrentMode - [cmVcmExecute];
  end;//try..finally
 end;

begin
 if (FItems.Count = 0) then
 begin
  if (cmWMSetText in CurrentMode) then
   DoSet
  else
  if (aCurrent = nil) then
   DoSet
  else
  (*if aCurrent.IsSame(aCurrent) then
  // - чтобы не дёргалось постоянно в OnTest
  // например при выборе "Австралия" в http://mdp.garant.ru/pages/viewpage.action?pageId=98337580
   Exit
  else*)
  // - код выше закомментирован, т.к. выпадающее дерево перестало скрываться
  if not aCurrent.IsSame(CurrentNode) then
   DoSet;
 end;//FItems.Count = 0
end;

procedure TEditableBox.SaveState;
begin
 if not (cmAppNotActive in CurrentMode) then
 begin
  FSaveNode := FTempObjectCompleted;
  FSaveBorder := FBorder;
 end;//not (cmAppNotActive in CurrentMode)
end;

procedure TEditableBox.CustomDoEnter;
begin
  inherited;
  if ComboStyle <> ct_cbEdit then
   SaveState;
end;

procedure TEditableBox.RestoreState;
begin
 if not (cmAppNotActive in CurrentMode) then
 begin
  if (ComboStyle <> ct_cbEdit) and (ComboStyle <> ct_cbDropDownList) then
  begin
   Paras.ParagraphStrings[0] := getFullPath(FSaveNode);
   FTempObjectCompleted := FSaveNode;
   if (FSaveNode <> nil) then
    State := esCompleted
   else
    State := esNone;
   FBorder := FSaveBorder;
   DoSelect(FBorder, TextLen);
   DoMoveCursor(FBorder);
   FNeedDropFiltering := true;
   FNeedGotoNode := true;
   Repaint;
  end;//ComboStyle <> cbEdit..
 end;//not (cmAppNotActive in CurrentMode)
end;

procedure TEditableBox.EscapePressed;
begin
 inherited;
 RestoreState;
end;
{$EndIf DesignTimeLibrary}

procedure TEditableBox.SetAutoWidth(const aValue: TAutoWidthMode);
begin
 if (aValue <> FAutoWidth) then
  FAutoWidth := aValue;
end;

{$IfNDef DesignTimeLibrary}
function GetMaxWidth(aTree: TvtCustomOutliner): integer;
var
 lMaxWidth : integer;

 function findWidth(const aNode: Il3Node):boolean;
 var
  lX:integer;
 begin//findWidth
  Result := true;
  lX := aTree.GetItemDim(aTree.TreeStruct.GetIndex(aNode)).X;
  if (lX > lMaxWidth) then
   lMaxWidth := lX;
 end;//findWidth

begin
 lMaxWidth := 0;
 aTree.IterateF(l3L2NA(@findWidth), imOneLevel);
 Result := lMaxWidth;
end;
{$EndIf DesignTimeLibrary}

function TEditableBox.pm_GetFullWidth : Integer;
var
 l_BtnWidth : Integer;
 l_Temp     : Integer;
 l_IC       : Il3InfoCanvas;
begin
 // Шрифт
 Canvas.Canvas.Font := Self.Font;
 Canvas.Canvas.TextWidth('W');
 // - это ХАК, иначе тулбары почему-то большие :-( // <hack>
 l_IC := l3CrtIC;
 l_IC.Font.AssignFont(Self.Font);
 // Учитываем ширину кнопки
 if Button.Visible then
  l_BtnWidth := Button.Width
 else
  l_BtnWidth := 0;
 // Размер
 with l_IC do               
 begin
  l_Temp := Max(TextExtent(
                           {$IfDef ctEverestEdit}
                           Buffer
                           {$Else ctEverestEdit}
                           l3PCharLen(Self.Text)
                           {$EndIf ctEverestEdit}
                          ).X,
                TextExtent(l3PCharLen(CEmptyHint)).X);
  l_Temp := Max(l_Temp, TextExtent(l3PCharLen('W')).X);
  Result := LP2DP(l3PointX(l_Temp)).X + l_BtnWidth + 12;
 end;//l_IC
end;

procedure TEditableBox.AdjustWidth;
{$IfNDef DesignTimeLibrary}
var
  lWidth : Integer;
{$EndIf DesignTimeLibrary}
begin
{$IfNDef DesignTimeLibrary}
 if (FAutoWidth <> awNone) then
 begin
  if (FAutoWidth = awCurrent) then
  begin
   lWidth := FullWidth;
   if (Width <> lWidth) then
    Width := lWidth
  end;//FAutoWidth = awCurrent
  if (FAutoWidth = awMax) then
  begin
   lWidth:=GetMaxWidth(Tree)+10;
    if (lWidth <> Width) then
     Width := lWidth;
  end;//FAutoWidth = awMax
 end;//FAutoWidth <> awNone
{$EndIf DesignTimeLibrary}
end;

procedure TEditableBox.RecreateTreeIfNeeded(aValue:TComboStyle);
begin
 inherited;
{$IfNDef DesignTimeLibrary}
 if (aValue <> ct_cbEdit) then
 begin
  with Tree do
  begin
   ControlStyle := ControlStyle - [csCaptureMouse];
   Visible := false;
   BorderStyle := bsSingle;
   Align := alNone;
   OnActionElement := ActionElementHandler;
   Font := Self.Font;
   ActionElementMode := l3_amSingleClick;
   OnGetItemImage := GetItemImageHandler;
   isShowLines := true;
  end;//with Tree
  ShowIcons := false;
 end;//aValue <> cbEdit
{$EndIf DesignTimeLibrary}
end;

procedure TEditableBox.DropDownCompletion;
  {-}
var
 l_Str    : Il3CString;
 l_CurLen : integer;

 function FindNode(const aNode: Il3SimpleNode): boolean;
   {-}
 begin
  Result := (l3CommonPartLen(l3CStr(aNode), l_Str, true) = l_CurLen);
 end;

var
 l_Node   : Il3SimpleNode;
 l_NewLen : integer;
begin
 if IsList then
 begin
  l_Str := Text;
  l_CurLen := l3Len(l_Str);
  MakeNodesFromItems;
  l_Node := Tree.TreeStruct.SimpleIterateF(l3L2SNA(@FindNode), imCheckResult);
  if (l_Node <> nil) then
  begin
   l_NewLen := l_Node.Text.SLen;
   if (l_NewLen > l_CurLen) then
   begin
    Inc(FRestrictOnTextChange);
    try
     Text := l3Cat([Text, l3Copy(l3CStr(l_Node), l_CurLen, l_NewLen - l_CurLen)]);
    finally
     Dec(FRestrictOnTextChange);
    end;//try..finally
    DoMoveCursor(l_NewLen);
    DoSelect(l_CurLen, l_NewLen);
    Dropped := true;
    if Assigned(f_AfterCompletion) then
     f_AfterCompletion(Self);
   end//l_NewLen > l_CurLen
   else
    Dropped := false;
  end//l_Node <> nil
  else
   Dropped := False;
 end;//IsList
end;

function TEditableBox.GetIsList: Boolean;
begin
 Result := (FItems.Count > 0); 
end;

{$IfNDef DesignTimeLibrary}
{$IfDef l3HackedVCL}
function TEditableBox.HintChanged(const aHint: String): boolean;
begin
 Result := true;
 if FHintSaved and not FRestrictHintChanging then
 begin
  FSaveHint := aHint;
  Result := false;
 end;//FHintSaved
end;
{$EndIf l3HackedVCL}
{$EndIf DesignTimeLibrary}

function TEditableBox.IsSimpleTree: boolean;
begin
 Result := (Tree = nil) or Supports(Tree.TreeStruct, Il3Tree);
end;

{$IfNDef ctEverestEdit}
procedure TEditableBox.TreeChanged;
begin
 inherited;
 FDropSelection := true;
end;
{$EndIf  ctEverestEdit}

procedure TEditableBox.TreeChangedNotification;
begin
 inherited;
{$IfNDef DesignTimeLibrary}
 if ProcessServerTreeNotification and Assigned(FTempObjectCompleted) then
  if (Tree.TreeStruct.GetIndex(FTempObjectCompleted) <> -1) then
   Paras.ParagraphStrings[0] := getFullPath(FTempObjectCompleted)
  else
  begin
   Dropped := False;
   // ноду убили надо зачистить все поле ввода
   if Assigned(FOnDataDisapeared) then
    FOnDataDisapeared(Self);
  end;//Tree.TreeStruct.GetIndex(FTempObjectCompleted) <> -1
 // Дерево обновилось нужно обновить внутренний текущий:
 if (FTempObjectCompleted <> nil)  and
   not FTempObjectCompleted.IsSame(Tree.GetCurrentNode) then
  ActionElementHandler(Tree, Tree.Current);
{$EndIf DesignTimeLibrary}
end;

{$IfNDef ctEverestEdit}
procedure TEditableBox.SetRestrictConsSpaces(const aValue: Boolean);
begin
 FRestrictConsSpaces := aValue;
end;
{$EndIf  ctEverestEdit}

procedure TEditableBox.ChangeUnsimpleTree;
begin
// Do Nothing;
end;

end.
