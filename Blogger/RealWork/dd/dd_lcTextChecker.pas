unit dd_lcTextChecker;

interface

uses
 Classes, l3Types, evdBufferedFilter, k2Interfaces, k2TagGen, k2Types, dd_lcBaseDocFilter;

type
 TlcTextChecker = class(Tdd_lcBaseDocFilter)
 private
  f_DocHandle: Integer;
  f_Flushed: Boolean;
  f_HasText: Boolean;
  f_OnEmptyDocument: TNotifyEvent;
  f_OnNonEmptyDocument: TNotifyEvent;
  f_SkipEmpty: Boolean;
 protected
  function ChildTypeForFiltering: Integer; override;
  procedure DoFlushBuffer(const aLeaf: Ik2Tag; aTagId: Integer; aNeedCloseBracket
      : Boolean); override;
 public
    // public methods
  constructor Create(anOwner: Tk2TagGeneratorOwner = nil); override;
        {-}
  procedure AddAtomEx(AtomIndex: Integer; const Value: Tk2Variant); override;
        {-}
  procedure CloseStructure(NeedUndo: Boolean); override;
        {-}
  procedure StartChild(TypeID: Long); override;
  property SkipEmpty: Boolean read f_SkipEmpty write f_SkipEmpty;
  property OnEmptyDocument: TNotifyEvent read f_OnEmptyDocument write
      f_OnEmptyDocument;
  property OnNonEmptyDocument: TNotifyEvent read f_OnNonEmptyDocument write f_OnNonEmptyDocument;
 end;

implementation

uses Document_Const, TextPara_Const, l3Base, Table_Const, Block_Const, k2Tags,
 StrUtils;

constructor TlcTextChecker.Create(anOwner: Tk2TagGeneratorOwner = nil);
begin
 inherited;
 f_SkipEmpty:= True;
end;

procedure TlcTextChecker.AddAtomEx(AtomIndex: Integer; const Value: Tk2Variant);
begin
 inherited;
 if (not f_HasText) and CurrentType.InheritsFrom(k2_idTextPara) and (AtomIndex = k2_tiText) and
    (Value.Kind = k2_vkString) and (not Value.AsString.Empty) then
 begin
  f_HasText := True;
  f_Flushed := False;
 end;

 if CurrentType.InheritsFrom(k2_idDocument) then
  case AtomIndex of
   k2_tiExternalHandle: f_DocHandle:= Value.AsInteger;
   k2_tiInternalHandle: f_DocHandle:= -Value.AsInteger;
  end;
end;

function TlcTextChecker.ChildTypeForFiltering: Integer;
begin
 Result := k2_idDocument;
end;

procedure TlcTextChecker.CloseStructure(NeedUndo: Boolean);
begin
 if CurrentType.InheritsFrom(k2_idDocument) then
 begin
  if f_HasText then
  begin
   if Assigned(f_OnNonEmptyDocument) then
    f_OnNonEmptyDocument(Self);
  end
  else
  begin
   if Assigned(f_OnEmptyDocument) then
    f_OnEmptyDocument(Self)
   else
    if not Assigned(f_OnNonEmptyDocument) then
     l3System.Msg2Log('%d %s', [Abs(f_DocHandle), IfThen(f_DocHandle>0, '(внешний)', '')]);
  end;
 end;
 inherited;
 if CurrentType.InheritsFrom(k2_idTextPara) and f_HasText and not f_Flushed then
 begin
  StopBufferingAndFlush(False, TopObject[0], True);
  f_Flushed := True;
 end;
end;

procedure TlcTextChecker.DoFlushBuffer(const aLeaf: Ik2Tag; aTagId: Integer;
    aNeedCloseBracket : Boolean);
begin
 if f_HasText or not SkipEmpty then
  inherited;
end;

procedure TlcTextChecker.StartChild(TypeID: Long);
begin
 inherited;
 if CurrentType.InheritsFrom(k2_idDocument) then
 begin
  f_HasText:= False;
  f_DocHandle:= 0;
 end; // CurrentType.InheritsFrom(k2_idDocument)
end;

end.
