unit ddAppConfigUtils;

interface

uses
 l3Base,
 ddAppConfigTypes, ddAppConfigTypesModelPart, ddConfigStorages, l3ProtoObject;

function ExecuteNodeDialog(aNode: TddAppConfigNode; aValidate: Boolean = False): Boolean;
{ TODO : Расширить функциональность позиционированием на нужном элементе }

type
 TddItemLink = class(Tl3ProtoObject)
  Item: TddVisualConfigItem;
  Next: TddItemLink;
 protected
 public
  constructor Create(aItem: TddVisualConfigItem; aNext: TddItemLink);
 end;

function MakeString(const aAlias, aCaption, aDefault: AnsiString; aNext:
    TddItemLink = nil): TddItemLink; overload;
function MakeString(const aCaption, aDefault: AnsiString; aPassChar: Char; aNext: TddItemLink = nil): TddItemLink; overload;

function MakeFileName(const aCaption, aFilter, aDefault: AnsiString; aNext:
    TddItemLink = nil): TddItemLink; overload;
function MakeInteger(const aCaption: AnsiString; aDefault: Integer; aNext:
    TddItemLink = nil): TddItemLink; overload;

procedure AppendNode(aNode: TddAppConfigNode; aItems: TddItemLink);

function MakedefaultStorage: IddConfigStorage;

function MakeFolderName(const aAlias, aCaption, aDefault: AnsiString; aNext:
    TddItemLink = nil): TddItemLink; overload;

function MakeDate(const aCaption: AnsiString; aDefault: TDateTime; aNext:
    TddItemLink = nil): TddItemLink;

function MakeNode(const aAlias, aCaption: AnsiString; aLabelTop: Boolean;
    aItems: TddItemLink): TddAppConfigNode;

function MakeBoolean(const aAlias, aCaption: AnsiString; aDefault: Boolean; aNext:
    TddItemLink = nil): TddItemLink; overload;

function MakeStrings(const aCaption: AnsiString; aNext: TddItemLink = nil): TddItemLink;

function MakeCustomItem(aItem: TddVisualConfigItem; aNext: TddItemLink = nil): TddItemLink;

function MakeFolderName(const aCaption, aDefault: AnsiString; aNext: TddItemLink =
    nil): TddItemLink; overload;

function MakeBoolean(const aCaption: AnsiString; aDefault: Boolean; aNext:
    TddItemLink = nil): TddItemLink; overload;

function MakeInteger(const aAlias, aCaption: AnsiString; aDefault: Integer; aNext:
    TddItemLink = nil): TddItemLink; overload;

function MakeString(const aAlias, aCaption, aDefault: AnsiString; aPassChar: Char;
    aNext: TddItemLink = nil): TddItemLink; overload;

function MakeString(const aCaption, aDefault: AnsiString; aNext: TddItemLink = nil): TddItemLink; overload;

function MakeDivider(const aCaption: AnsiString; aNext: TddItemLink = nil): TddItemLink; overload;

function MakeFileName(const aAlias, aCaption, aFilter, aDefault: AnsiString;
    aNext: TddItemLink = nil): TddItemLink; overload;
{$IfNDef Nemesis}
function MakeTime(const aCaption: AnsiString; aDefault: TDateTime; aNext:
    TddItemLink = nil): TddItemLink;
{$endif Nemesis}

implementation

Uses
 Forms, Math, Windows, Controls, SysUtils, Dialogs, StrUtils,
 ddAppConfigSimpleBFrame, ddAppConfigStrings, ddAppConfigConst,
 afwVCL, ddIniStorage, ddAppConfigDates, ddAppConfigLists;

(*
procedure RecalcFormSize(aForm: TForm; aButtons: TFrame; );
var
  l_MaxHeight, l_CurHeight: Integer;
  l_MaxWidth: Integer;
  l_Height, l_Width: Integer;
begin
  l_MaxWidth:= 230;
  l_MaxHeight:= 202;
  aNode.FrameSize(l_Dlg, l_Height, l_Width);
  if not aNode.IsVerticalScrollBar then
   l_MaxHeight:= Max(l_MaxHeight, l_Height);
  if not aNode.IsHorizontalScrollBar then
   l_MaxWidth:= Max(l_MaxWidth, l_Width);

  // Окончательный пересчет
  l_Height:= l_ButtonsPanel.Height + l_MaxHeight;
  { TODO -oДмитрий Дудко -cРазвитие : Тщательно проверить пересчет }
  l_CurHeight:= MulDiv(l_Width, 10, 14);
  if l_CurHeight < l_Height then
   l_Width:= MulDiv(l_Height, 14, 10)
  else
   l_Height:= l_CurHeight;
  l_Dlg.ClientHeight:= l_Height;
  l_Dlg.ClientWidth:= l_Width;
end;
*)

function ExecuteNodeDialog(aNode: TddAppConfigNode; aValidate: Boolean = False): Boolean;
var
 l_Dlg: TForm;
 l_ButtonsPanel: TSimpleButtonsFrame;
 l_Work: TCustomFrame;
 l_Ok: Boolean;
 l_Msg: AnsiString;

 procedure lp_RecalcFormSize;
 var
   l_MaxHeight, l_CurHeight: Integer;
   l_MaxWidth: Integer;
   l_Height, l_Width: Integer;
 begin
   l_MaxWidth:= 450;
   l_MaxHeight:= 230;
   aNode.DoFrameSize(l_Dlg, l_Height, l_Width);
   if not aNode.IsVerticalScrollBar then
    l_MaxHeight:= Max(l_MaxHeight, l_Height);
   if not aNode.IsHorizontalScrollBar then
    l_MaxWidth:= Max(l_MaxWidth, l_Width);

   // Окончательный пересчет
   l_Height:= l_ButtonsPanel.Height + l_MaxHeight;
   { TODO -oДмитрий Дудко -cРазвитие : Тщательно проверить пересчет }
   l_CurHeight:= MulDiv(l_Width, 10, 14);
   if l_CurHeight < l_Height then
    l_Width:= MulDiv(l_Height, 14, 10)
   else
    l_Height:= l_CurHeight;
   l_Dlg.ClientHeight:= l_Height;
   l_Dlg.ClientWidth:= l_Width;
 end;

 function DialogCaption: AnsiString;
 var
  l_Index: Integer;
 begin
  if aNode.HasValue('Caption') then
   Result:= aNode.AsString['Caption']
  else
   Result:= aNode.Caption;
 end;

begin
 Result := False;
 l_Dlg:= TForm.Create(nil{Application.MainForm});
 AfwHackControlFont(l_Dlg);
 with l_Dlg do
 try
  BorderStyle:= bsDialog;
  Position:= poScreenCenter;
  Caption:= DialogCaption;
  l_ButtonsPanel:= TSimpleButtonsFrame.Create(l_Dlg);
  l_ButtonsPanel.Align:= alBottom;
  l_ButtonsPanel.Parent:= l_Dlg;
  lp_RecalcFormSize;
  l_Work := aNode.DoCreateFrame(l_Dlg, 0);
  aNode.DoSetControlValues(False);
  
  l_Ok:= True;
  repeat
   Result:=  IsPositiveResult(ShowModal);
   if Result then
   begin
    Result:= True;
    aNode.DoGetControlValues;
    { TODO -oДмитрий Дудко -cОшибка : Не устанавливается флаг Changed }
    if aValidate then
    begin
     l_Ok:= not aNode.IsRequired(l_Msg);
     if not l_Ok then
      MessageDlg(Format('Не заполнено обязательное поле "%s"', [l_Msg]), mtError, [mbOk], 0);
    end
    else
     l_Ok:= True;
   end // Result
   else
   begin
    Result:= False;
    l_Ok:= True;
   end;
 until l_Ok;
  aNode.DoClearControls;
 finally
  FreeAndNil(l_Dlg);
 end

end;

function MakeNode(const aAlias, aCaption: AnsiString; aLabelTop: Boolean;
    aItems: TddItemLink): TddAppConfigNode;
var
 l_ItemLink: TddItemLink;
begin
 Result := TddAppConfigNode.Create(IfThen(aAlias = '', 'Params', aAlias), aCaption);
 Result.LabelTop:= aLabelTop;
 while aItems <> nil do
 begin
  if Result.HasValue(aItems.Item.Alias) then
   aItems.Item.Alias:= 'Item'+IntToStr(Result.Count);
  Result.AddItem(aItems.Item);
  l_ItemLink:= aItems.Next;
  l3Free(aItems);
  aItems:= l_ItemLink;
 end;
end;

function MakeFileName(const aCaption, aFilter, aDefault: AnsiString; aNext:
    TddItemLink = nil): TddItemLink;
var
 l_Value: TddConfigValue;
begin
 l_Value:= ddEmptyValue;
 l_Value.AsString:= aDefault;
 Result:= MakeCustomItem(TddFileNameConfigItem.Create('Item', aCaption, l_Value), aNext);
 TddFileNameConfigItem(Result.Item).FilterMask:= aFilter;
end;

function MakeInteger(const aAlias, aCaption: AnsiString; aDefault: Integer; aNext:
    TddItemLink = nil): TddItemLink;
var
 l_Value: TddConfigValue;
begin
 l_Value:= ddEmptyIntValue;
 l_Value.AsInteger:= aDefault;
 Result:= MakeCustomItem(TddIntegerConfigItem.Create(aAlias, aCaption, l_Value), aNext);
end;

function MakeString(const aAlias, aCaption, aDefault: AnsiString; aNext: TddItemLink = nil): TddItemLink;
begin
 Result:= MakeString(aAlias, aCaption, aDefault, #0, aNext);
end;

function MakedefaultStorage: IddConfigStorage;
begin
 Result := TddIniStorage.Create(ChangeFileExt(Application.ExeName, '.ini'));
end;

function MakeFolderName(const aAlias, aCaption, aDefault: AnsiString; aNext:
    TddItemLink = nil): TddItemLink;
var
 l_Value: TddConfigValue;
begin
 l_Value:= ddEmptyValue;
 l_Value.AsString:= aDefault;
 Result:= MakeCustomItem(TddFolderNameConfigItem.Create(aAlias, aCaption, l_Value), aNext);
end;

function MakeDate(const aCaption: AnsiString; aDefault: TDateTime; aNext:
    TddItemLink = nil): TddItemLink;
var
 l_Value: TddConfigValue;
begin
 l_Value:= ddEmptyValue;
 l_Value.AsDateTime:= aDefault;
 Result:= MakeCustomItem(TddDateConfigItem.Create('Item', aCaption, l_Value), aNext);
end;

procedure AppendNode(aNode: TddAppConfigNode; aItems: TddItemLink);
var
 l_ItemLink: TddItemLink;
begin
 while aItems <> nil do
 begin
  if aItems.Item.Alias = '' then
   aItems.Item.Alias := 'Item' + IntToStr(aNode.Count);
  aNode.AddItem(aItems.Item);
  l_ItemLink:= aItems.Next;
  l3Free(aItems);
  aItems:= l_ItemLink;
 end;
end;

function MakeBoolean(const aAlias, aCaption: AnsiString; aDefault: Boolean; aNext: TddItemLink = nil): TddItemLink;
var
 l_Value: TddConfigValue;
begin
 l_Value:= ddEmptyValue;
 l_Value.AsBoolean:= aDefault;
 Result:= MakeCustomItem(TddBooleanConfigItem.Create(aAlias, aCaption, l_Value), aNext);
end;

function MakeStrings(const aCaption: AnsiString; aNext: TddItemLink = nil): TddItemLink;
begin
 Result:= TddItemLink.Create(TddStringListConfigItem.Make('Item', aCaption), aNext);
end;

function MakeString(const aCaption, aDefault: AnsiString; aPassChar: Char; aNext: TddItemLink = nil):
    TddItemLink;
begin
 Result:= MakeString('Item', aCaption, aDefault, aPassChar, aNext);
end;

function MakeCustomItem(aItem: TddVisualConfigItem; aNext: TddItemLink = nil): TddItemLink;
begin
 Result:= TddItemLink.Create(aItem, aNext);
end;

function MakeFolderName(const aCaption, aDefault: AnsiString; aNext: TddItemLink = nil): TddItemLink;
begin
 Result := MakeFolderName('FolderItem', aCaption, aDefault, aNext);
end;

function MakeBoolean(const aCaption: AnsiString; aDefault: Boolean; aNext: TddItemLink = nil): TddItemLink;
begin
 Result:= MakeBoolean('BooleanItem', aCaption, aDefault, aNext);
end;

function MakeInteger(const aCaption: AnsiString; aDefault: Integer; aNext:
    TddItemLink = nil): TddItemLink;
begin
 Result:= MakeInteger('IntegerItem', aCaption, aDefault, aNext);
end;

function MakeString(const aAlias, aCaption, aDefault: AnsiString; aPassChar: Char;
    aNext: TddItemLink = nil): TddItemLink;
var
 l_Value: TddConfigValue;
begin
 l_Value:= ddEmptyValue;
 l_Value.AsString:= aDefault;
 Result:= MakeCustomItem(TddStringConfigItem.Create(aAlias, aCaption, l_Value), aNext);
 TddStringConfigItem(Result.Item).PasswordChar:= AnsiChar(aPassChar);
end;

function MakeString(const aCaption, aDefault: AnsiString; aNext: TddItemLink = nil): TddItemLink;
begin
 Result:= MakeString(aCaption, aDefault, #0, aNext);
end;

function MakeDivider(const aCaption: AnsiString; aNext: TddItemLink = nil): TddItemLink;
begin
 Result:= MakeCustomItem(TddDividerConfigItem.Create('DividerItem', aCaption, ddEmptyValue), aNext);
end;

function MakeFileName(const aAlias, aCaption, aFilter, aDefault: AnsiString;
    aNext: TddItemLink = nil): TddItemLink;
var
 l_Value: TddConfigValue;
begin
 l_Value:= ddEmptyValue;
 l_Value.AsString:= aDefault;
 Result:= MakeCustomItem(TddFileNameConfigItem.Create(aAlias, aCaption, l_Value), aNext);
 TddFileNameConfigItem(Result.Item).FilterMask:= aFilter;
end;

{$IfNDef Nemesis}
function MakeTime(const aCaption: AnsiString; aDefault: TDateTime; aNext:
    TddItemLink = nil): TddItemLink;
var
 l_Value: TddConfigValue;
begin
 l_Value:= ddEmptyValue;
 l_Value.AsDateTime:= aDefault;
 Result:= MakeCustomItem(TddTimeConfigItem.Create('Item', aCaption, l_Value), aNext);
end;
{$endif Nemesis}

constructor TddItemLink.Create(aItem: TddVisualConfigItem; aNext: TddItemLink);
begin
 inherited Create;
 Item:= aItem;
 Next:= aNext;
end; 

end.
