unit ddAppConfigDataAdapters;

interface

uses
 Classes,
 l3Base, l3ObjectRefList,
 ddConfigStorages, ddAppConfigTypes, ddAppConfigTypesModelPart, ddAppConfigConst;

type
  TddBaseConfigDataAdapter = class(Tl3Base)
  private
    f_Alias: AnsiString;
    f_IsChanged: Boolean;
  protected
    function GetCount: Integer; virtual;
    function GetObjects(Index: Integer): TObject; virtual;
    function pm_GetStrings(Index: Integer): AnsiString; virtual;
    procedure pm_SetAlias(const Value: AnsiString); virtual;
    procedure pm_SetIsChanged(const Value: Boolean);
    procedure SetIsChangedToItems(const Value: Boolean); virtual;
  public
    function AddItem: Integer; virtual;
    function AsObject: TObject; virtual;
    function DeleteItem(Index: Integer): Boolean; virtual;
    function DownItem(aIndex: Integer): Boolean; virtual;
    function EditItem(Index: Integer): Boolean; virtual;
    procedure Load(const aStorage: IddConfigStorage; aAlias: AnsiString); virtual;
    procedure Save(const aStorage: IddConfigStorage; aAlias: AnsiString); virtual;
    function UpItem(aIndex: Integer): Boolean; virtual;
    property Alias: AnsiString read f_Alias write pm_SetAlias;
    property Count: Integer read GetCount;
    property IsChanged: Boolean read f_IsChanged write pm_SetIsChanged;
    property Objects[Index: Integer]: TObject read GetObjects;
    property Strings[Index: Integer]: AnsiString read pm_GetStrings;
  end;//TddBaseConfigDataAdapter

 TddSimpleListDataAdapter = class(TddBaseConfigDataAdapter)
 private
  f_DataConfig: TddAppConfigNode;
  f_Items: Tl3ObjectRefList;
  function pm_GetValues(Index: Integer; Alias: AnsiString): TddConfigValue;
  procedure pm_SetDataConfig(const Value: TddAppConfigNode);
  procedure pm_SetValues(Index: Integer; Alias: AnsiString; const aValue: TddConfigValue);
 protected
  procedure Cleanup; override;
  function GetCount: Integer; override;
  function GetObjects(Index: Integer): TObject; override;
  function pm_GetStrings(Index: Integer): AnsiString; override;
  procedure pm_SetAlias(const Value: AnsiString); override;
  procedure SetIsChangedToItems(const Value: Boolean); override;
 public
  constructor Make(aAlias: AnsiString);
  constructor Create(anOwner: TObject); override;
  function AddItem: Integer; override;
  function MakeItem: TddAppConfigNode;
  function AsObject: TObject; override;
  procedure Assign(P: TPersistent); override;
  function DeleteItem(Index: Integer): Boolean; override;
  function DownItem(aIndex: Integer): Boolean; override;
  function EditItem(Index: Integer): Boolean; override;
  procedure Load(const aStorage: IddConfigStorage; aAlias: AnsiString); override;
  procedure Save(const aStorage: IddConfigStorage; aAlias: AnsiString); override;
  function UpItem(aIndex: Integer): Boolean; override;
  property Count: Integer read GetCount;
  property DataConfig: TddAppConfigNode read f_DataConfig write pm_SetDataConfig;
  property Objects[Index: Integer]: TObject read GetObjects;
  property Values[Index: Integer; Alias: AnsiString]: TddConfigValue read pm_GetValues write pm_SetValues;
 end;

  TddStringDataAdapter = class(TddBaseConfigDataAdapter)
  private
    f_Strings: TStrings;
  protected
    procedure Cleanup; override;
    function GetCount: Integer; override;
    function pm_GetStrings(Index: Integer): AnsiString; override;
  public
    constructor Create(aOwner: TObject); override;
    function AsObject: TObject; override;
    procedure Assign(P: TPersistent); override;
    function DeleteItem(Index: Integer): Boolean; override;
    function DownItem(aIndex: Integer): Boolean; override;
    function EditItem(Index: Integer): Boolean; override;
    function GetStrings: TStrings;
    procedure Load(const aStorage: IddConfigStorage; aAlias: AnsiString); override;
    procedure Save(const aStorage: IddConfigStorage; aAlias: AnsiString); override;
    function UpItem(aIndex: Integer): Boolean; override;
  end;//TddStringDataAdapter

implementation

uses SysUtils, ddAppConfigUtils, Math, Dialogs, l3String, ddAppConfigStrings;

function TddBaseConfigDataAdapter.AddItem: Integer;
begin
 Result:= -1;
end;

function TddBaseConfigDataAdapter.AsObject: TObject;
begin
 Result := Self;
end;

{
*************************** TddBaseConfigDataAdapter ***************************
}
function TddBaseConfigDataAdapter.DeleteItem(Index: Integer): Boolean;
begin
  Result:= False;
end;

function TddBaseConfigDataAdapter.EditItem(Index: Integer): Boolean;
begin
  Result:= False;
end;

function TddBaseConfigDataAdapter.GetCount: Integer;
begin
  Result := 0;
end;

function TddBaseConfigDataAdapter.GetObjects(Index: Integer): TObject;
begin
  Result := nil;
end;

procedure TddBaseConfigDataAdapter.Load(const aStorage: IddConfigStorage; aAlias:
        AnsiString);
begin
end;

function TddBaseConfigDataAdapter.pm_GetStrings(Index: Integer): AnsiString;
begin
 Result := '';
end;

procedure TddBaseConfigDataAdapter.pm_SetAlias(const Value: AnsiString);
begin
 f_Alias := Value;
end;

procedure TddBaseConfigDataAdapter.pm_SetIsChanged(const Value: Boolean);
begin
 if f_IsChanged <> Value then
 begin
  f_IsChanged := Value;
  SetIsChangedToItems(Value);
 end;
end;

procedure TddBaseConfigDataAdapter.Save(const aStorage: IddConfigStorage; aAlias:
        AnsiString);
begin
end;

procedure TddBaseConfigDataAdapter.SetIsChangedToItems(const Value: Boolean);
begin
end;

function TddBaseConfigDataAdapter.UpItem(aIndex: Integer): Boolean;
begin
 Result:= False;
end;

function TddBaseConfigDataAdapter.DownItem(aIndex: Integer): Boolean;
begin
 Result:= False;
end;


constructor TddSimpleListDataAdapter.Create(anOwner: TObject);
begin
 inherited Create(nil);
 f_Items:= Tl3ObjectRefList.Make;
 f_DataConfig:= TddAppConfigNode.Create('Adapter', 'Новый элемент');
 f_DataConfig.AddItem(TddStringConfigItem.Create('Caption', 'Название', ddEmptyValue));
end;

constructor TddSimpleListDataAdapter.Make(aAlias: AnsiString);
begin
 Create(nil);
 f_DataConfig.Alias:= aAlias;
end;

function TddSimpleListDataAdapter.AddItem: Integer;
var
 l_Node: TddAppConfigNode;
begin
 l_Node:= MakeItem;
 try
  Result:= f_Items.Add(l_Node);
 finally
  FreeAndNil(l_Node);
 end;
end;

function TddSimpleListDataAdapter.MakeItem: TddAppConfigNode;
var
 l_Node: TddAppConfigNode;
 l_Alias: AnsiString;
begin
 l_Alias:= Alias + 'I'+IntToStr(f_Items.Count);
 Result:= DataConfig.Clone(nil);
 Result.Alias:= l_Alias;
end;

function TddSimpleListDataAdapter.AsObject: TObject;
begin
 Result := Self;
end;

procedure TddSimpleListDataAdapter.Assign(P: TPersistent);
var
 i: Integer;
 l_Item: TddBaseConfigItem;
begin
 if P is TddSimpleListDataAdapter then
 begin
  f_DataConfig.Assign(TddSimpleListDataAdapter(P).DataConfig);
  f_Items.Clear;
  for i:= 0 to TddSimpleListDataAdapter(P).f_Items.Hi do
  begin
   l_Item:= TddSimpleListDataAdapter(P).f_Items.Items[i].Clone;
   try
    f_Items.Add(l_Item);
   finally
    l3Free(l_Item);
   end;
  end;
  Alias:= TddSimpleListDataAdapter(P).Alias;
 end
 else
  inherited;
end;

procedure TddSimpleListDataAdapter.Cleanup;
begin
 inherited;
 l3Free(f_Items);
 l3Free(f_DataConfig);
end;

function TddSimpleListDataAdapter.DeleteItem(Index: Integer): Boolean;
begin
  Result:= True;
  f_Items.Delete(Index);
end;

function TddSimpleListDataAdapter.DownItem(aIndex: Integer): Boolean;
begin
 Result:= True;
 f_Items.Exchange(aIndex, Succ(aIndex));
end;

function TddSimpleListDataAdapter.EditItem(Index: Integer): Boolean;
var
 l_Node: TddAppConfigNode;
 l_Alias: AnsiString;
begin
 if Index < 0 then
 begin
  // Новый элемент
  l_Node:= MakeItem;
 end
 else
  l_Node:= TddAppConfigNode(f_Items.Items[Index]);
 Result:= ExecuteNodeDialog(l_Node);
 if Result then
 begin
  l_Node.Caption:= l_Node.Items[0].StringValue;
  if Index < 0 then
   f_Items.Add(l_Node);
 end;
 if Index < 0 then
  l3Free(l_Node);
end;

function TddSimpleListDataAdapter.GetCount: Integer;
begin
  Result := f_Items.Count;
end;

function TddSimpleListDataAdapter.GetObjects(Index: Integer): TObject;
begin
  Result := f_Items[Index];
end;

function TddSimpleListDataAdapter.pm_GetStrings(Index: Integer): AnsiString;
begin
  Result := TddAppConfigNode(f_Items.Items[Index]).Caption;
end;

procedure TddSimpleListDataAdapter.Load(const aStorage: IddConfigStorage; aAlias: AnsiString);
var
 l_Count, i: Integer;
 l_Node: TddAppConfigNode;
begin
 l_Count:= aStorage.ReadInteger(aAlias+'.Count', 0);
 for i:= 0 to Pred(l_Count) do
 begin
  l_Node:= MakeItem;
  try
   l_Node.Load(aStorage);
   if l_Node.AsString['Caption'] <> '' then
    l_Node.Caption:= l_Node.AsString['Caption'];
   f_Items.Add(l_Node);
  finally
   l3Free(l_Node);
  end;
 end;
end;

function TddSimpleListDataAdapter.pm_GetValues(Index: Integer; Alias: AnsiString): TddConfigValue;
begin
 if InRange(Index, 0, Pred(Count)) then
   Result := TddAppConfigNode(Objects[Index]).ItemByAlias[Alias].Value
 else
  raise EListError.CreateFmt('Отсутствует элемент с индексом %d в списке из %d элементов', [Index, Count]);
end;

procedure TddSimpleListDataAdapter.pm_SetAlias(const Value: AnsiString);
var
 i: Integer; 
begin
 inherited;
 for i:= 0 to f_Items.Hi do
  TddAppConfigNode(Objects[i]).Alias:= Format('%sI%d', [Alias, i]);
end;

procedure TddSimpleListDataAdapter.pm_SetDataConfig(const Value: TddAppConfigNode);
begin
 l3Free(f_DataConfig);
 f_DataConfig:= Value;
end;

procedure TddSimpleListDataAdapter.SetIsChangedToItems(const Value: Boolean);
var
 i: Integer;
begin
 for i:= 0 to Pred(Count) do
  TddAppConfigNode(Objects[i]).Changed:= Value;
end;

procedure TddSimpleListDataAdapter.pm_SetValues(Index: Integer; Alias: AnsiString; const aValue: TddConfigValue);
begin
end;

procedure TddSimpleListDataAdapter.Save(const aStorage: IddConfigStorage; aAlias: AnsiString);
var
 i: Integer;
begin
 aStorage.WriteInteger(aAlias+'.Count', f_Items.Count);
 for i:= 0 to f_Items.Hi do
 begin
  IddConfigNode(TddAppConfigNode(Objects[i])).SaveData(aStorage);
 end;
end;

function TddSimpleListDataAdapter.UpItem(aIndex: Integer): Boolean;
begin
 Result:= True;
 f_Items.Exchange(aIndex, Pred(aIndex));
end;

{
***************************** TddStringDataAdapter *****************************
}
constructor TddStringDataAdapter.Create(aOwner: TObject);
begin
  inherited;
  f_Strings:= TStringList.Create;
end;

function TddStringDataAdapter.AsObject: TObject;
begin
 Result := f_Strings;
end;

procedure TddStringDataAdapter.Assign(P: TPersistent);
begin
 if P is TddStringDataAdapter then
 begin
  f_Strings.Assign(TddStringDataAdapter(P).f_Strings);
 end
 else
  inherited;
end;

procedure TddStringDataAdapter.Cleanup;
begin
  f_Strings.Free;
  inherited;
end;

function TddStringDataAdapter.DeleteItem(Index: Integer): Boolean;
begin
 Result:= True;
 f_Strings.Delete(Index);
end;

function TddStringDataAdapter.DownItem(aIndex: Integer): Boolean;
begin
 Result:= True;
 f_Strings.Exchange(aIndex, Succ(aIndex));
end;

function TddStringDataAdapter.EditItem(Index: Integer): Boolean;
var
 l_S: String;
begin
 if Index > -1 then
  l_S:= f_Strings[Index]
 else
  l_S:= '';
 Result := InputQuery('Редактирование элемента', 'Введите текст элемента', l_S);
 if Result then
  if Index = -1 then
   f_Strings.Add(l_S)
  else
   f_Strings.Strings[Index]:= l_S;
end;

function TddStringDataAdapter.GetCount: Integer;
begin
  Result:= f_Strings.Count;
end;

function TddStringDataAdapter.GetStrings: TStrings;
begin
 Result := f_Strings;
end;

function TddStringDataAdapter.pm_GetStrings(Index: Integer): AnsiString;
begin
  Result:= f_Strings[Index];
end;

procedure TddStringDataAdapter.Load(const aStorage: IddConfigStorage; aAlias: AnsiString);
var
 i: Integer;
 l_Count: Integer;
begin
  inherited;
  l_Count:= aStorage.ReadInteger(aAlias+'Count', 0);
  for i:= 0 to Pred(l_Count) do
   f_Strings.Add(l3Str(aStorage.ReadString(aAlias+IntToStr(i), '')));
end;

procedure TddStringDataAdapter.Save(const aStorage: IddConfigStorage; aAlias: AnsiString);
var
 i: Integer;
begin
  inherited;
  aStorage.WriteInteger(aAlias+'Count', f_Strings.Count);
  for i:= 0 to Pred(f_Strings.Count) do
   aStorage.WriteString(aAlias + IntToStr(i), f_Strings.Strings[i]);
end;

function TddStringDataAdapter.UpItem(aIndex: Integer): Boolean;
begin
 Result:= True;
 f_Strings.Exchange(aIndex, Pred(aIndex));
end;




end.
