unit ddTextSegment;

interface

uses
  Classes, ddBase, ddCharacterProperty, l3CBaseRefList,
      l3ProtoPersistentDataContainer, ddDocumentAtom, l3Types, l3Base;

type
  TddTextSegment = class(Tl3ProtoPersistentDataContainer)
  private
    f_CHP: TddCharacterProperty;
    f_Data: TddDocumentAtom;
    f_HLHandle: Long;
    f_Index: Integer;
    f_ObjectType: TddSegmentObjectType;
    f_SegmentType: TddSegmentType;
    f_Start: LongInt;
    f_Stop: LongInt;
    f_Style: LongInt;
    f_TargetList: Tl3CBaseRefList;
    f_URL: Tl3String;
    function pm_GetIsHyperlink: Boolean;
    function pm_GetTargets(Index: Integer): TddHyperlinkTarget;
    procedure pm_SetData(const aValue: TddDocumentAtom);
    procedure pm_SetIsHyperlink(const aValue: Boolean);
    procedure SetURL(Value: Tl3String);
  protected
    procedure Cleanup; override;
    procedure SetCHP(aCHP: TddCharacterProperty);
  public
    constructor Create{(aOwner: TObject); override};
    procedure Clear;
    procedure AddTarget(aDocID, aSubID: Longint; aTypeID : Integer);
    procedure Assign(aSource: TPersistent); override;
    property CHP: TddCharacterProperty read f_CHP write SetCHP;
    property Data: TddDocumentAtom read f_Data write pm_SetData;
    property HLHandle: Long read f_HLHandle write f_HLHandle;
    property Index: Integer read f_Index write f_Index;
    property IsHyperlink: Boolean read pm_GetIsHyperlink write pm_SetIsHyperlink;
    property ObjectType: TddSegmentObjectType read f_ObjectType write f_ObjectType;
    property SegmentType: TddSegmentType read f_SegmentType write f_SegmentType;
    property Start: LongInt read f_Start write f_Start;
    property Stop: LongInt read f_Stop write f_Stop;
    property Style: LongInt read f_Style write f_Style;
    property TargetList: Tl3CBaseRefList read f_TargetList write f_TargetList;
    property Targets[Index: Integer]: TddHyperlinkTarget read pm_GetTargets;
    property URL: Tl3String read f_URL write SetURL;
  end;

implementation

{
******************************** TddTextSegment ********************************
}
constructor TddTextSegment.Create{(aOwner: TObject)};
begin
  inherited;
  f_CHP:= TddCharacterProperty.Create(nil);
  f_TargetList:= Tl3CBaseRefList.Make;
  f_URL:= Tl3String.Create;
  f_Start:= 0;
  f_Stop:= 0;
  f_Style:= propUndefined;
  f_SegmentType:= dd_segText;
  f_HLHandle:= -1;
end;

procedure TddTextSegment.Clear;
begin
end;

procedure TddTextSegment.AddTarget(aDocID, aSubID: Longint; aTypeID : Integer);
var
  l_T: TddHyperlinkTarget;
begin
  if aDocID > -1 then
  begin
   l_T:= TddHyperlinkTarget.Create(nil);
   try
    l_T.DocID:= aDocID;
    l_T.SubID:= aSubID;
    l_T.TypeID:= aTypeID;
    f_TargetList.Add(l_T);
   finally
    l3Free(l_T);
   end; // l_T
  end;
end;

procedure TddTextSegment.Assign(aSource: TPersistent);
var
  Value: TddTextSegment absolute aSource;
begin
  if (aSource Is TddTextsegment) then
  begin
   f_CHP.Assign(Value.CHP);
   f_TargetList.Assign(Value.TargetList);
   f_Start:= Value.Start;
   f_Stop:= Value.Stop;
   f_Style:= Value.Style;
   f_SegmentType:= Value.SegmentType;
   l3Set(f_Data, Value.Data);
   f_HLHandle:= Value.HLHandle;
   f_URL.Assign(Value.URL);
  end // aSource Is TddTextSegment
  else
   inherited;
end;

procedure TddTextSegment.Cleanup;
begin
 l3Free(f_Data);
 l3Free(f_URL);
 l3Free(f_TargetList);
 l3Free(f_CHP);
 inherited;
end;

function TddTextSegment.pm_GetIsHyperlink: Boolean;
begin
 Result := f_SegmentType = dd_segHLink;
end;

function TddTextSegment.pm_GetTargets(Index: Integer): TddHyperlinkTarget;
begin
 Result := TddHyperlinkTarget(f_TargetList[Index]);
end;

procedure TddTextSegment.pm_SetData(const aValue: TddDocumentAtom);
begin
 l3Set(f_Data, aValue);
end;

procedure TddTextSegment.pm_SetIsHyperlink(const aValue: Boolean);
begin
 if aValue then
  f_SegmentType := dd_segHLink
 else
  f_SegmentType := dd_segtext;
end;

procedure TddTextSegment.SetCHP(aCHP: TddCharacterProperty);
begin
  f_CHP.Assign(aCHP);
end;

procedure TddTextSegment.SetURL(Value: Tl3String);
begin
 f_URL.Assign(Value);
 IsHyperlink:= not f_URL.Empty;
end;

end.
