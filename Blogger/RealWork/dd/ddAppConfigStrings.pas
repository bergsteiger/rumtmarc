unit ddAppConfigStrings;
{ Элементы конфигурации, работающие со строками }

{$Include ddDefine.inc}

interface

uses
 Classes, Controls,
 ddAppConfigTypes, ddAppConfigTypesModelPart, ddConfigStorages, StdCtrls, ddAppConfigConst;

type
  TddStringConfigItem = class(TddVisualConfigItem)
  private
    FPasswordChar: AnsiChar;
  protected
    function ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl; override;
    procedure _OnChange(Sender: TObject);
  public
    constructor Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue; aMasterItem: TddBaseConfigItem =
        nil); override;
    constructor Make(const aAlias, aCaption: AnsiString; const aDefault: AnsiString = ''; aMasterItem: TddBaseConfigItem = nil);
    procedure Assign(P: TPersistent); override;
    function ControlHeight(aParent: TWinControl): Integer; override;
    procedure GetValueFromControl; override;
    procedure LoadValue(const aStorage: IddConfigStorage); override;
    function MinWidth(aParent: TWinControl): Integer; override;
    procedure SaveValue(const aStorage: IddConfigStorage); override;
    procedure SetValueToControl(aDefault: Boolean); override;
    property PasswordChar: AnsiChar read FPasswordChar write FPasswordChar;
  end;//TddStringConfigItem

  TddFillType = (dd_ftAsIs, dd_ftFull, dd_ftShort);
  TddBrowseConfigItem = class(TddStringConfigItem)
  private
    FAllowTest: Boolean;
    FBrowseButton: TButton;
    FTestButton: TButton;
    FTestButtonCaption: AnsiString;
    f_PathFill: TddFillType;
    procedure pm_SetEnabled(Value: Boolean); override;
  protected
    function ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl; override;
    function CorrectValue(const aValue: AnsiString): AnsiString;
    function pm_GetStringValue: AnsiString; override;
    function MakeFullPath(const aValue: AnsiString): AnsiString; virtual;
    function MakeShortPath(const aValue: AnsiString): AnsiString; virtual;
    procedure OnBrowseClick(Sender: TObject); virtual; abstract;
    procedure OnTestClick(Sender: TObject); virtual; abstract;
  public
    constructor Create(const aAlias, aCaption: AnsiString; const aDefaultValue:
            TddConfigValue; aMasterItem: TddBaseConfigItem = nil); override;
    function MinWidth(aParent: TWinControl): Integer; override;
    property AllowTest: Boolean read FAllowTest write FAllowTest;
    property PathFill: TddFillType read f_PathFill write f_PathFill;
    property TestButtonCaption: AnsiString read FTestButtonCaption write
            FTestButtonCaption;
  end;//TddBrowseConfigItem

  TddFolderNameConfigItem = class(TddBrowseConfigItem)
  protected
    procedure OnBrowseClick(Sender: TObject); override;
    procedure OnTestClick(Sender: TObject); override;
  end;//TddFolderNameConfigItem

  TddFileNameConfigItem = class(TddBrowseConfigItem)
  private
    FFilterMask: AnsiString;
  protected
    procedure OnBrowseClick(Sender: TObject); override;
    procedure OnTestClick(Sender: TObject); override;
  public
    property FilterMask: AnsiString read FFilterMask write FFilterMask;
  end;//TddFileNameConfigItem

  TddSoundFileNameConfigItem = class(TddFileNameConfigItem)
  protected
    procedure OnTestClick(Sender: TObject); override;
  public
    constructor Create(const aAlias, aCaption: AnsiString; const aDefaultValue:
            TddConfigValue; aMasterItem: TddBaseConfigItem = nil); override;
  end;//TddSoundFileNameConfigItem

type
  TddTextConfigItem = class(TddVisualConfigItem)
  private
  protected
    function ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl; override;
    procedure _OnChange(Sender: TObject);
  public
    constructor Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue; aMasterItem: TddBaseConfigItem =
        nil); override;
    constructor Make(const aAlias, aCaption: AnsiString; const aDefault: AnsiString = ''; aMasterItem: TddBaseConfigItem = nil);
    function ControlHeight(aParent: TWinControl): Integer; override;
    procedure GetValueFromControl; override;
    procedure LoadValue(const aStorage: IddConfigStorage); override;
    function MinWidth(aParent: TWinControl): Integer; override;
    procedure SaveValue(const aStorage: IddConfigStorage); override;
    procedure SetValueToControl(aDefault: Boolean); override;
  end;//TddTextConfigItem

implementation

Uses
 l3Base,
 l3String,
 l3Base64,
 StrUtils,
 ddUtils, 
 {$IFDEF RxLibrary}
 rxDialogs,
 {$Else  RxLibrary}
 FileCtrl,
 {$EndIF RxLibrary}
 Dialogs, MMSystem, SysUtils, Forms, l3FileUtils,

 ddAppConfigStringsRes
 ;

const
  PasswordPrefix = 'Base64:';

function MaskCRLF(const aString: AnsiString): AnsiString;
begin
 Result := StringReplace(aString, #13#10, '<13><10>', [rfReplaceAll]);
end;

function UnMaskCRLF(const aString: AnsiString): AnsiString;
begin
 Result := StringReplace(aString, '<13><10>', #13#10, [rfReplaceAll]);
end;


{
***************************** TddStringConfigItem ******************************
}
constructor TddStringConfigItem.Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue; aMasterItem:
    TddBaseConfigItem = nil);
begin
 inherited Create(aAlias, aCaption, aDefaultValue, aMasterItem);
 f_Value.Kind := dd_vkString;
end;

constructor TddStringConfigItem.Make(const aAlias, aCaption: AnsiString; const aDefault: AnsiString = ''; aMasterItem:
    TddBaseConfigItem = nil);
var
 l_Default: TddConfigValue;
begin
 l3FillChar(l_Default, SizeOf(l_Default), 0);
 l_Default.Kind:= dd_vkString;
 l_Default.AsString:= aDefault;
 Create(aAlias, aCaption, l_Default, aMasterItem);
end;

procedure TddStringConfigItem.Assign(P: TPersistent);
begin
 if P is TddStringConfigItem then
 begin
  inherited;
  PasswordChar := TddStringConfigItem(P).PasswordChar;
 end
 else
  inherited;
end;

function TddStringConfigItem.ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl;
begin
  //if not LabelTop then
  // aLeft:= aMaxLeft;
  Result:= TEdit.Create(aParent);
  Result.Parent:= aParent;
  Result.Top:= aTop;
  Result.Left:= aLeft;
  Result.Width:= aParent.ClientWidth - aLeft - ConfigItemRight;
  TEdit(Result).PasswordChar:= Char(PasswordChar);
  TEdit(Result).OnChange:= _OnChange;
end;

function TddStringConfigItem.ControlHeight(aParent: TWinControl): Integer;
var
  l_Edit: TEdit;
begin
  l_Edit:= TEdit.Create(aParent);
  try
   l_Edit.Parent:= aParent;
   Result:= l_Edit.Height;
  finally
   l_Edit.Free;
  end;
end;

procedure TddStringConfigItem.GetValueFromControl;
begin
  StringValue:= (Control as TEdit).Text;
end;

procedure TddStringConfigItem.LoadValue(const aStorage: IddConfigStorage);
var
 l_S: AnsiString;
begin
  StringValue:= l3Str(aStorage.ReadString(Alias, DefaultValue.AsString));
  if PasswordChar <> '' then
  begin
   if AnsiStartsStr(PasswordPrefix, StringValue) then
    StringValue:= Decrypt(l3DecodeBase64(Copy(StringValue, Length(PasswordPrefix)+1, Length(StringValue)-Length(PasswordPrefix))))
   else
    StringValue:= Decrypt(StringValue);
  end;
end;

function TddStringConfigItem.MinWidth(aParent: TWinControl): Integer;
begin
  Result:= 250;
end;

procedure TddStringConfigItem.SaveValue(const aStorage: IddConfigStorage);
begin
  if PasswordChar <> '' then
   aStorage.WriteString(Alias, PasswordPrefix + l3EncodeBase64(Encrypt(Value.AsString)))
  else
   aStorage.WriteString(Alias, Value.AsString);
end;

procedure TddStringConfigItem.SetValueToControl(aDefault: Boolean);
begin
  if aDefault then
   (Control as TEdit).Text:= DefaultValue.AsString
  else
   (Control as TEdit).Text:= StringValue;
end;

procedure TddStringConfigItem._OnChange(Sender: TObject);
begin
  Changed := True;
end;

{
***************************** TddBrowseConfigItem ******************************
}
constructor TddBrowseConfigItem.Create(const aAlias, aCaption: AnsiString;
        const aDefaultValue: TddConfigValue; aMasterItem: TddBaseConfigItem = nil);
begin
  inherited Create(aAlias, aCaption, aDefaultValue, aMasterItem);
  TestButtonCaption:= str_ddcmCheckButton.AsStr;
  AllowTest:= False;
  f_PathFill:= dd_ftAsIs;
end;

function TddBrowseConfigItem.ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl;
var
  l_Delta: Integer;
begin
  if AllowTest then
   l_Delta:= 3*ConfigItemLeft + GetCanvas(aParent).TextWidth(TestButtonCaption)
  else
   l_Delta:= 0;
  // Строка ввода
  Result:= TEdit.Create(aParent);
  Result.Parent:= aParent;
  Result.Top:= aTop;
  Result.Left:= aLeft;
  Result.Width:= aParent.ClientWidth - aLeft - 2*ConfigItemLeft-Result.Height{это ширина Browse} - l_Delta;
  TEdit(Result).OnChange:= _OnChange;
  // кнопка "просмотр"
  FBrowseButton:= TButton.Create(aParent);
  FBrowseButton.Parent:= aParent;
  FBrowseButton.Left:= Result.Left+Result.Width+ConfigItemLeft;
  FBrowseButton.Top:= aTop;
  FBrowseButton.Width:= Result.Height;
  FBrowseButton.Height:= Result.Height;
  FBrowseButton.Caption:= '...';
  FBrowseButton.OnClick:= OnBrowseClick;
  // кнопка "тест"
  if AllowTest then
  begin
    FTestButton:= TButton.Create(aParent);
    FTestButton.Parent:= aParent;
    FTestButton.Left:= FBrowseButton.Left+FBrowseButton.Width+ConfigItemLeft;
    FTestButton.Top:= aTop;
    FTestButton.Width:= l_Delta-ConfigItemLeft;
    FTestButton.Height:= Result.Height;
    FTestButton.Caption:= TestButtonCaption;
    FTestButton.OnClick:= OnTestClick;
  end; // AllowTest
end;

function TddBrowseConfigItem.CorrectValue(const aValue: AnsiString): AnsiString;
begin
 case PathFill of
  dd_ftFull: Result:= MakeFullPath(aValue);
  dd_ftShort: Result:= MakeShortPath(aValue);
 else
  Result:= aValue
 end;
end;

function TddBrowseConfigItem.pm_GetStringValue: AnsiString;
begin
  Result:= CorrectValue(f_Value.AsString);
end;

function TddBrowseConfigItem.MakeFullPath(const aValue: AnsiString): AnsiString;
begin
 // Дополнить путь путем к приложению
 if IsRelativePath(aValue) then
  Result:= ConcatDirname(ExtractFilePath(Application.ExeName), aValue)
 else
  Result:= aValue;
end;

function TddBrowseConfigItem.MakeShortPath(const aValue: AnsiString): AnsiString;
begin
 // Выдернуть короткий путь
 Result:= ExtractRelativePath(ExtractFilePath(Application.ExeName), aValue);
end;

function TddBrowseConfigItem.MinWidth(aParent: TWinControl): Integer;
begin
  Result:= inherited MinWidth(aParent){Строка ввода}+ConfigItemLeft+25{кнопка Browse};
  if AllowTest then
   Inc(Result, 2*ConfigItemLeft+75);
end;

procedure TddBrowseConfigItem.pm_SetEnabled(Value: Boolean);
begin
  inherited pm_SetEnabled(Value);
  if Control <> nil then
  begin
   if AllowTest then
    FTestButton.Enabled:= Enabled;
   FBrowseButton.Enabled:= Enabled;
  end; // Control <> nil
end;

{
*************************** TddFolderNameConfigItem ****************************
}
procedure TddFolderNameConfigItem.OnBrowseClick(Sender: TObject);
var
  S: {$IFDEF RxLibrary}AnsiString{$Else}String{$EndIf};
begin
  S:= (Control as TEdit).Text;
  
  {$IFDEF RxLibrary}
  if BrowseDirectory(S, Caption, 0) then
   (Control as TEdit).Text:= S;
  {$ELSE}
  if SelectDirectory(S, [sdAllowCreate, sdPerformCreate, sdPrompt], 0) then
   (Control as TEdit).Text:= S;
  {$ENDIF}
end;

procedure TddFolderNameConfigItem.OnTestClick(Sender: TObject);
begin
end;

{
**************************** TddFileNameConfigItem *****************************
}
procedure TddFileNameConfigItem.OnBrowseClick(Sender: TObject);
begin
  // Показываем окно выбора файла
  with TOpenDialog.Create(nil) do
  try
   Title:= Caption;
   Filter:= FilterMask;
   FileName:= (Control as TEdit).Text;
   if Execute then
    (Control as TEdit).Text:= FileName;
  finally
   Free;
  end;
end;

procedure TddFileNameConfigItem.OnTestClick(Sender: TObject);
begin
end;

{
************************** TddSoundFileNameConfigItem **************************
}
constructor TddSoundFileNameConfigItem.Create(const aAlias, aCaption: AnsiString;
        const aDefaultValue: TddConfigValue; aMasterItem: TddBaseConfigItem = nil);
begin
  inherited Create(aAlias, aCaption, aDefaultValue, aMasterItem);
  FilterMask:= str_ddcmSoundFiles.AsStr;
  AllowTest:= True;
end;

procedure TddSoundFileNameConfigItem.OnTestClick(Sender: TObject);
begin
  sndPlaySound(nil, SND_NODEFAULT);
  sndPlaySoundA(PAnsiChar((Control as TEdit).Text), SND_NOSTOP or SND_ASYNC or SND_NODEFAULT);
end;

constructor TddTextConfigItem.Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue; aMasterItem:
    TddBaseConfigItem = nil);
begin
  inherited Create(aAlias, aCaption, aDefaultValue, aMasterItem);
  f_Value.Kind:= dd_vkString;

end;

constructor TddTextConfigItem.Make(const aAlias, aCaption: AnsiString; const aDefault: AnsiString = ''; aMasterItem:
    TddBaseConfigItem = nil);
var
 l_Default: TddConfigValue;
begin
 l3FillChar(l_Default, SizeOf(l_Default), 0);
 l_Default.Kind:= dd_vkString;
 l_Default.AsString:= aDefault;
 Create(aAlias, aCaption, l_Default, aMasterItem);
end;

function TddTextConfigItem.ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl;
begin
  //if not LabelTop then
  // aLeft:= aMaxLeft;
  Result:= TMemo.Create(aParent);
  Result.Parent:= aParent;
  Result.Top:= aTop;
  Result.Left:= aLeft;
  Result.Width:= aParent.ClientWidth - aLeft - ConfigItemRight;
  TMemo(Result).OnChange:= _OnChange;
end;

function TddTextConfigItem.ControlHeight(aParent: TWinControl): Integer;
var
  l_Memo: TMemo;
begin
  l_Memo:= TMemo.Create(aParent);
  try
   l_Memo.Parent:= aParent;
   Result:= l_Memo.Height;
  finally
   l_Memo.Free;
  end;
end;

procedure TddTextConfigItem.GetValueFromControl;
begin
  StringValue:= (Control as TMemo).Lines.Text;
end;

procedure TddTextConfigItem.LoadValue(const aStorage: IddConfigStorage);
begin
  StringValue:= UnMaskCRLF(l3Str(aStorage.ReadString(Alias, DefaultValue.AsString)));
end;

function TddTextConfigItem.MinWidth(aParent: TWinControl): Integer;
begin
  Result:= 250;
end;

procedure TddTextConfigItem.SaveValue(const aStorage: IddConfigStorage);
begin
 aStorage.WriteString(Alias, MaskCRLF(Value.AsString));
end;

procedure TddTextConfigItem.SetValueToControl(aDefault: Boolean);
begin
  if aDefault then
   (Control as TMemo).Text:= DefaultValue.AsString
  else
   (Control as TMemo).Text:= StringValue;
end;

procedure TddTextConfigItem._OnChange(Sender: TObject);
begin
  Changed := True;
end;

end.
