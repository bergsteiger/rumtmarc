unit rtfListTable;
{ Таблица списков для чтения из RTF }

interface

uses
 l3ProtoObject, l3ProtoObjectRefList,
 ddCharacterProperty;

type
 TrtfListLevel = class(Tl3ProtoObject)
 private
  f_CHP: TddCharacterProperty;
  f_CurNumber: Integer;
  f_Follow: Integer;
  f_Justify: Integer;
  f_LevelJC: Integer;
  f_LevelJCN: Integer;
  f_LevelNFC: Integer;
  f_LevelNFCN: Integer;
  f_Numbers: AnsiString;
  f_NumberType: Integer;
  f_StartAt: Integer;
  f_Text: AnsiString;
  function pm_GetCurNumber: Integer;
  function pm_GetNextNumber: Integer;
 protected
  procedure Cleanup; override;
 public
  constructor Create;
  procedure Restart;
  property CHP: TddCharacterProperty read f_CHP;
  property CurNumber: Integer read pm_GetCurNumber;
  property Follow: Integer read f_Follow write f_Follow;
  property Justify: Integer read f_Justify write f_Justify;
  property LevelJC: Integer read f_LevelJC write f_LevelJC;
  property LevelJCN: Integer read f_LevelJCN write f_LevelJCN;
  property LevelNFC: Integer read f_LevelNFC write f_LevelNFC;
  property LevelNFCN: Integer read f_LevelNFCN write f_LevelNFCN;
  property NextNumber: Integer read pm_GetNextNumber;
  property Numbers: AnsiString read f_Numbers write f_Numbers;
  property NumberType: Integer read f_NumberType write f_NumberType;
  property StartAt: Integer read f_StartAt write f_StartAt;
  property Text: AnsiString read f_Text write f_Text;
 end;

 TrtfList = class(Tl3ProtoObjectRefList)
 private
  f_ID: Integer;
  f_ListName: AnsiString;
  f_TemplateID: Integer;
  function pm_GetLevels(Index: Integer): TrtfListLevel;
 public
  procedure AddLevel(aLevel: TrtfListLevel);
  property ID: Integer read f_ID write f_ID;
  property Levels[Index: Integer]: TrtfListLevel read pm_GetLevels; default;
  property ListName: AnsiString read f_ListName write f_ListName;
  property TemplateID: Integer read f_TemplateID write f_TemplateID;
 end;

 TrtfListTable = class(Tl3ProtoObjectRefList)
 private
  function pm_GetLists(Index: Integer): TrtfList;
 public
  procedure AddList(aList: TrtfList);
  property Lists[Index: Integer]: TrtfList read pm_GetLists; default;
 end;


 TrtfListOverride = class(Tl3ProtoObject)
 private
  f_ListID: Integer;
  f_ListOverrideCount: Integer;
  f_LS: Integer;
 public
  property ListID: Integer read f_ListID write f_ListID;
  property ListOverrideCount: Integer read f_ListOverrideCount write
      f_ListOverrideCount;
  property LS: Integer read f_LS write f_LS;
 end;

 TrtfListOverrideTable = class(Tl3ProtoObjectRefList)
 end;



implementation

uses
  SysUtils;

procedure TrtfList.AddLevel(aLevel: TrtfListLevel);
var
 l_Level: TrtfListLevel;
begin
 l_Level:= TrtfListLevel.Create;
 try
  l_Level.CHP.Assign(aLevel.CHP);
  l_Level.Follow:= aLevel.Follow;
  l_Level.Justify:= aLevel.Justify;
  l_Level.LevelJC:= aLevel.LevelJC;
  l_Level.LevelJCN:= aLevel.LevelJCN;
  l_Level.LevelNFC:= aLevel.LevelNFC;
  l_Level.LevelNFCN:= aLevel.LevelNFCN;
  l_Level.Numbers:= aLevel.Numbers;
  l_Level.NumberType:= aLevel.NumberType;
  l_Level.StartAt:= aLevel.StartAt;
  l_Level.Text:= aLevel.Text;
  Add(l_Level);
 finally
  FreeAndNil(l_Level);
 end;
end;

function TrtfList.pm_GetLevels(Index: Integer): TrtfListLevel;
begin
 Result := Items[Index] as TrtfListLevel;
end;

procedure TrtfListTable.AddList(aList: TrtfList);
var
 l_List: TrtfList;
 i: Integer;
begin
 l_List:= TrtfList.Make;
 try
  l_List.ID:= aList.ID;
  l_List.ListName:= aList.ListName;
  l_List.TemplateID:= aList.TemplateID;
  for i:= 0 to aList.Hi do
   l_List.AddLevel(aList.Levels[i]);
  Add(l_List);
 finally
  FreeAndNil(l_List);
 end;
end;

function TrtfListTable.pm_GetLists(Index: Integer): TrtfList;
begin
 Result := Items[Index] as TrtfList;
end;

constructor TrtfListLevel.Create;
begin
 inherited Create;
 f_CHP := TddCharacterProperty.Create(nil);
 f_CurNumber := 0;
 f_StartAt:= 1;
end;

procedure TrtfListLevel.Cleanup;
begin
 inherited;
 FreeAndNil(f_CHP);
end;

function TrtfListLevel.pm_GetCurNumber: Integer;
begin
 if f_CurNumber = 0 then
  Result:= StartAt
 else
  Result:= f_CurNumber;
end;

function TrtfListLevel.pm_GetNextNumber: Integer;
begin
 if f_CurNumber = 0 then
  f_CurNumber:= StartAt
 else
  Inc(f_CurNumber);
 Result:= f_CurNumber;
end;

procedure TrtfListLevel.Restart;
begin
 f_CurNumber:= 0;
end;

end.
