unit ddAppConfigLists;

interface

uses
 classes, Controls, StdCtrls,
 ddAppConfigDataAdapters, ddAppConfigTypes, ddAppConfigTypesModelPart, ddConfigStorages, ddAppConfigConst, ddAppConfigUtils;

type
  TddListConfigItem = class(TddVisualConfigItem)
  private
    FAddButton: TButton;
    FDataAdapter: TddBaseConfigDataAdapter;
    FDeleteButton: TButton;
    FEditButton: TButton;
    FListBox: TListBox;
    f_DownButton: Tbutton;
    f_ShowMoveButtons: Boolean;
    f_UpButton: Tbutton;
    procedure ListDblClick(Sender: TObject);
    procedure pm_SetDataAdapter(const Value: TddBaseConfigDataAdapter);
  protected
    procedure Cleanup; override;
    function ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl; override;
    function pm_GetBooleanValue: Boolean; override;
    procedure pm_SetChanged(Value: Boolean); override;
    procedure pm_SetLabelTop(aValue: Boolean); override;
    function pm_GetValue: TddConfigValue; override;
    procedure pm_SetValue(const aValue: TddConfigValue); override;
    procedure pm_SetAlias(const Value: AnsiString); override;
  public
    constructor Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue; aMasterItem: TddBaseConfigItem =
        nil); override;
    constructor Make(const aAlias, aCaption: AnsiString; aDataAdapter: TddBaseConfigDataAdapter; aMasterItem:
        TddBaseConfigItem = nil); reintroduce;
    procedure AddButtonCLick(Sender: TObject);
    procedure UpButtonCLick(Sender: TObject);
    procedure DownButtonClick(Sender: TObject);
    procedure Assign(P: TPersistent); override;
    function ControlHeight(aParent: TWinControl): Integer; override;
    procedure DeleteButtonClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure GetValueFromControl; override;
    procedure LoadValue(const aStorage: IddConfigStorage); override;
    procedure SaveValue(const aStorage: IddConfigStorage); override;
    procedure SetValueToControl(aDefault: Boolean); override;
    property DataAdapter: TddBaseConfigDataAdapter read FDataAdapter write pm_SetDataAdapter;
    property ShowMoveButtons: Boolean read f_ShowMoveButtons write
        f_ShowMoveButtons;
  end;

 TddSimpleListConfigItem = class(TddListConfigItem) // Список содержащий в себе элементы конфигурации
 private
  function pm_GetConfig: TddAppConfigNode;
  function pm_GetTitleCaption: AnsiString;
  procedure pm_SetTitleCaption(const aValue: AnsiString);
 protected
 public
  constructor Make(const aAlias, aCaption: AnsiString; aMasterItem: TddBaseConfigItem = nil);
      reintroduce; overload;
  constructor Make(const aAlias, aCaption: AnsiString; aItems: TddItemLink; aMasterItem:
      TddBaseConfigItem = nil); reintroduce; overload;
  property Config: TddAppConfigNode read pm_GetConfig;
  property TitleCaption: AnsiString read pm_GetTitleCaption write pm_SetTitleCaption;
 end;

 TddStringListConfigItem = class(TddListConfigItem)
 private
 public
  constructor Make(const aAlias, aCaption: AnsiString; aMasterItem: TddBaseConfigItem = nil);
 end;

implementation

uses
 l3Base,
 l3String,
 Dialogs,
 SysUtils,
 vtGroupBox,

 ddAppConfigListsRes
 ;

{
****************************** TddListConfigItem *******************************
}
constructor TddListConfigItem.Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue; aMasterItem:
    TddBaseConfigItem = nil);
begin
 inherited Create(aAlias, aCaption, aDefaultValue, aMasterItem);
 Labeled:= False;
 f_ShowMoveButtons:= False;
end;

constructor TddListConfigItem.Make(const aAlias, aCaption: AnsiString; aDataAdapter: TddBaseConfigDataAdapter; aMasterItem:
    TddBaseConfigItem = nil);
begin
 Create(aAlias, aCaption, ddEmptyValue, aMasterItem);
 DataAdapter:= aDataAdapter;
 f_Value.Kind:= dd_vkObject;
 f_Value.AsObject:= DataAdapter.AsObject;
end;

procedure TddListConfigItem.AddButtonCLick(Sender: TObject);
begin
  if DataAdapter.EditItem(-1) then
  begin
   SetValueToControl(False);
   Changed:= True;
  end;
end;

procedure TddListConfigItem.Assign(P: TPersistent);
begin
 if P is TddListConfigItem then
 begin
  inherited;
  FreeAndNil(FDataAdapter);
  FDataAdapter := TddListConfigItem(P).DataAdapter.Clone;
  end
 else
  inherited;
end;

procedure TddListConfigItem.Cleanup;
begin
 l3Free(FDataAdapter);
 inherited;
end;

function TddListConfigItem.ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl;
var
 l_Top, l_Left: Integer;
 l_ButtonWidth: Integer;
begin
  { Группа элементов }
  Result:= TvtGroupBox.Create(aParent);
  with Result do
  begin
   Parent:= aParent as TWinControl;
   Left:= aLeft;
   Top:= aTop;
   Width:= aParent.ClientWidth - aLeft - ConfigItemRight;
   Height:= ControlHeight(aParent);
  end;
  TvtGroupBox(Result).Caption:= Caption;
  { Список }
  l_ButtonWidth:= GetCanvas(aParent).TextWidth(str_ddcmChangeConfigValue.AsStr) + ConfigItemLeft + ConfigItemRight;
  FListBox:= TListBox.Create(Result);
  FListBox.Parent:= Result as TWinControl;
  l_Top:= LabelHeight(aParent)+ConfigItemTop;
  FListBox.Top:= l_Top;
  FListBox.Height:= 25*3 + 5*ConfigItemTop; { Три кнопки, два двойных промежутка }
  {$IFNDEF Nemesis}
  if ShowMoveButtons then
   FListBox.Height:= FListBox.Height + 25*2 + 3*ConfigItemTop;
  {$ENDIF}
  FListBox.Left:= ConfigItemLeft;
  FListBox.Width:= Result.ClientWidth - 3*ConfigItemLeft - l_ButtonWidth;
  FListBox.OnDblClick:= ListDblClick;
  { Кнопки }
  l_Left:= Result.ClientWidth - (l_ButtonWidth + ConfigItemLeft);
  FAddButton:= Tbutton.Create(Result);
  FAddButton.Width:= l_ButtonWidth;
  FAddButton.Parent:= Result as TWinControl;
  FAddButton.Top:= l_Top;
  FAddButton.Left:= l_Left;
  with (FAddButton as TButton) do
  begin
   Caption:= str_ddcmAddConfigValue.AsStr;
   Enabled:= Assigned(DataAdapter);
   OnClick:= AddButtonClick;
  end;
  Inc(l_Top, FAddButton.Height+2*ConfigItemTop);
  FEditButton:= Tbutton.Create(Result);
  FEDitButton.Width:= l_ButtonWidth;
  FEditButton.Parent:= Result as TWinControl;
  FEditButton.Top:= l_Top;
  FEditButton.Left:= l_Left;
  with (FEditButton as TButton) do
  begin
   Caption:= str_ddcmChangeConfigValue.AsStr;
   Enabled:= Assigned(DataAdapter);
   OnClick:= EditButtonClick;
  end;
  Inc(l_Top, FEditButton.Height+2*ConfigItemTop);
  FDeleteButton:= Tbutton.Create(Result);
  FDeleteButton.Width:= l_ButtonWidth;
  FDeleteButton.Parent:= Result as TWinControl;
  FDeleteButton.Top:= l_Top;
  FDeleteButton.Left:= l_Left;
  with (FDeleteButton as TButton) do
  begin
   Caption:= str_ddcmDeleteConfigValue.AsStr;
   Enabled:= Assigned(DataAdapter);
   OnClick:= DeleteButtonClick;
  end;
  {$IFNDEF Nemesis}
  // перемещение элементов
  if ShowMoveButtons then
  begin
   Inc(l_Top, FDeleteButton.Height+2*ConfigItemTop);
   f_UpButton:= Tbutton.Create(Result);
   f_UpButton.Width:= l_ButtonWidth;
   f_UpButton.Parent:= Result as TWinControl;
   f_UpButton.Top:= l_Top;
   f_UpButton.Left:= l_Left;
   with (f_UpButton as TButton) do
   begin
    Caption:= 'Вверх';
    Enabled:= Assigned(DataAdapter);
    OnClick:= UpButtonClick;
   end; // with (f_UpButton
   Inc(l_Top, f_UpButton.Height+2*ConfigItemTop);
   f_DownButton:= Tbutton.Create(Result);
   f_DownButton.Width:= l_ButtonWidth;
   f_DownButton.Parent:= Result as TWinControl;
   f_DownButton.Top:= l_Top;
   f_DownButton.Left:= l_Left;
   with (f_DownButton as TButton) do
   begin
    Caption:= 'Вниз';
    Enabled:= Assigned(DataAdapter);
    OnClick:= DownButtonClick;
   end; // with (f_DownButton
  end; // showovebuttons
  {$ENDIF}
end;

function TddListConfigItem.ControlHeight(aParent: TWinControl): Integer;
begin
 Result:= 25*3{Три кнопки } +
              4*ConfigItemTop{Промежутки между кнопками}+
              LabelHeight(aParent) +
              4*ConfigItemTop;
 {$IFNDEF Nemesis}
 if ShowMoveButtons then
  Inc(Result, 25*2+4*ConfigItemTop);
 {$ENDIF}
end;

procedure TddListConfigItem.DeleteButtonClick(Sender: TObject);
var
  i: Integer;
begin
  I:= FListBox.ItemIndex;
  if I > -1 then
   if MessageDlg(Format(str_ddcmConfirmDeleteConfigValue.AsStr, [DataAdapter.Strings[i]]),
                 mtConfirmation, mbOkCancel, 0) = mrOk then
    if DataAdapter.DeleteItem(I) then
    begin
     SetValueToControl(False);
     Changed:= True;
    end;
end;

procedure TddListConfigItem.EditButtonClick(Sender: TObject);
var
  I: Integer;
begin
  I:= FListBox.ItemIndex;
  if I > -1 then
   if DataAdapter.EditItem(I) then
   begin
    SetValueToControl(False);
    Changed:= True;
   end;
end;

function TddListConfigItem.pm_GetBooleanValue: Boolean;
begin
  if Control <> nil then
   Result:= (Control as TCheckBox).Checked
  else
   Result:= inherited pm_GetBooleanValue;
end;

procedure TddListConfigItem.GetValueFromControl;
begin
end;

procedure TddListConfigItem.ListDblClick(Sender: TObject);
begin
  // реакция на двойное нажатие в списке
  if DataAdapter <> nil then
   EditButtonClick(Self);
end;

procedure TddListConfigItem.LoadValue(const aStorage: IddConfigStorage);
begin
  if DataAdapter <> nil then
   DataAdapter.Load(aStorage, Alias);
end;

procedure TddListConfigItem.pm_SetDataAdapter(const Value: TddBaseConfigDataAdapter);
begin
 if FDataAdapter <> Value then
 begin
  l3Set(FDataAdapter, Value);
  FDataAdapter.Alias:= Alias;
 end; // FDataAdapter <> Value
end;

procedure TddListConfigItem.pm_SetLabelTop(aValue: Boolean);
begin
 inherited pm_SetLabelTop(True);
end;

procedure TddListConfigItem.pm_SetAlias(const Value: AnsiString);
begin
 inherited;
 if DataAdapter <> nil then
  DataAdapter.Alias:= Value;
end;


procedure TddListConfigItem.SaveValue(const aStorage: IddConfigStorage);
begin
  if DataAdapter <> nil then
   DataAdapter.Save(aStorage, Alias);
end;

procedure TddListConfigItem.SetValueToControl(aDefault: Boolean);
var
  i: Integer;
begin
  // заполняем список строками
  if DataAdapter <> nil then
  begin
   FLIstBox.Items.Clear;
   for i:= 0 to Pred(DataAdapter.Count) do
    FListBox.Items.Add(DataAdapter.Strings[i]);
   FEditButton.Enabled:= DataAdapter.Count > 0;
   FDeleteButton.Enabled:= DataAdapter.Count > 0;
  end; // Assigned(aItem.DataAdapter)
end;

function TddListConfigItem.pm_GetValue: TddConfigValue;
begin
 Result := ddEmptyObjectValue;
 Result.AsObject:= DataAdapter;
end;

procedure TddListConfigItem.pm_SetValue(const aValue: TddConfigValue);
begin
 if aValue.Kind <> dd_vkObject then
  raise EddInvalidValue.Create('');
 DataAdapter:= aValue.AsObject as TddBaseConfigDataAdapter;
 Changed:= True;
end;


{
****************************** TddListConfigItem *******************************
}
constructor TddSimpleListConfigItem.Make(const aAlias, aCaption: AnsiString; aMasterItem:
    TddBaseConfigItem = nil);
var
 l_DA: TddSimpleListDataAdapter;
begin
 l_DA:= TddSimpleListDataAdapter.Make(aAlias);
 try
  inherited Make(aAlias, aCaption, l_DA, aMasterItem);
 finally
  l3Free(l_DA);
 end;
end;

{
****************************** TddListConfigItem *******************************
}
constructor TddSimpleListConfigItem.Make(const aAlias, aCaption: AnsiString; aItems: TddItemLink;
    aMasterItem: TddBaseConfigItem = nil);
var
 l_DA: TddSimpleListDataAdapter;
begin
 l_DA:= TddSimpleListDataAdapter.Make(aAlias);
 try
  l_DA.DataConfig:= MakeNode('Adapter', 'Новый элемент', False, aItems);
  inherited Make(aAlias, aCaption, l_DA, aMasterItem);
 finally
  l3Free(l_DA);
 end;

end;

function TddSimpleListConfigItem.pm_GetConfig: TddAppConfigNode;
begin
 Result := (DataAdapter as TddSimpleListDataAdapter).DataConfig;
end;

function TddSimpleListConfigItem.pm_GetTitleCaption: AnsiString;
begin
 Result := (DataAdapter as TddSimpleListDataAdapter).DataConfig.Items[0].Caption;
end;

procedure TddSimpleListConfigItem.pm_SetTitleCaption(const aValue: AnsiString);
begin
 if TitleCaption <> aValue then
 begin
  (DataAdapter as TddSimpleListDataAdapter).DataConfig.Items[0].Caption := aValue;
 end;
end;

{
****************************** TddListConfigItem *******************************
}
constructor TddStringListConfigItem.Make(const aAlias, aCaption: AnsiString; aMasterItem: TddBaseConfigItem = nil);
var
 l_A: TddBaseConfigDataAdapter;
begin
 l_A:= TddStringDataAdapter.Create(nil);
 try
  inherited Make(aAlias, aCaption, l_A, aMasterItem);
 finally
  l3Free(l_A);
 end
end;

procedure TddListConfigItem.UpButtonCLick(Sender: TObject);
var
  I: Integer;
begin
  I:= FListBox.ItemIndex;
  if I > 0 then
   if DataAdapter.UpItem(I) then
   begin
    SetValueToControl(False);
    FListBox.ItemIndex:= Pred(I);
    Changed:= True;
   end;
end;

procedure TddListConfigItem.DownButtonClick(Sender: TObject);
var
  I: Integer;
begin
  I:= FListBox.ItemIndex;
  if I < Pred(FListBox.Items.Count) then
   if DataAdapter.DownItem(I) then
   begin
    SetValueToControl(False);
    FListBox.ItemIndex:= Succ(I);
    Changed:= True;
   end;
end;

procedure TddListConfigItem.pm_SetChanged(Value: Boolean);
begin
 inherited;
 if DataAdapter <> nil then
  DataAdapter.IsChanged:= Value
end;

end.
