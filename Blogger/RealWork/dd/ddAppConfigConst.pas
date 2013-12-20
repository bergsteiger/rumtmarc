unit ddAppConfigConst;
{ Типы и константы для использования в Конфигураторе }

{$Include ddDefine.inc}

{$IFDEF UseProjectDefine}
 {$I ProjectDefine.inc}
{$ENDIF}

interface

type
  TddConfigItemType = (dd_citUserDefined,
                       dd_citGroup,
                       dd_citString, dd_citBoolean,
                       dd_citInteger, dd_citRadioGroup,
                       dd_citDate, dd_citTime,
                       dd_citFileName, dd_citFolderName,
                       dd_citList, dd_citColorName, dd_citFont);

  TddValueKind = (dd_vkString, dd_vkInteger, dd_vkBoolean, dd_vkDateTime, dd_vkObject);
  TddConfigValue = record
   case Kind: TddValueKind of
    dd_vkString  : (AsString: ShortString);
    dd_vkInteger : (AsInteger: Integer);
    dd_vkBoolean : (AsBoolean: Boolean);
    dd_vkDateTime: (AsDateTime: TDateTime);
    dd_vkObject  : (AsObject: TObject);
  end;


const
 ConfigItemLeft = 10;
 ConfigItemTop = 4;

var
 c_ScrollBarWidth: Integer = 20;
 ConfigItemRight: Integer = 10;

const
 ddEmptyValue : TddConfigValue = (Kind: dd_vkString; AsString: '');
 ddEmptyIntValue : TddConfigValue = (Kind: dd_vkInteger; AsInteger: 0);
 ddEmptyDateValue : TddConfigValue = (Kind: dd_vkDateTime; AsDateTime: 1);
 ddEmptyObjectValue : TddConfigValue = (Kind: dd_vkObject; AsObject: nil);
 ddBooleanNames : Array[Boolean] of String = ('False', 'True');
 ddPasswordChar : Char = #149;
 ddRequiredSign : Char = '*';
 ddRequiredFont : AnsiString = 'Windings2';
 {$IFDEF ddUseVTSpin}
 ddMaxInt = High(Integer);
 ddMinInt = Succ(Low(Integer));
 {$ELSE}
 ddMaxInt = High(Smallint);//High(Integer); Ограничение связано с визуалкой (бред!)
 ddMinInt = Succ(Low(Smallint));//Succ(Low(Integer));
 {$ENDIF}

function EmptyConfigValue : TddConfigValue;

function IsValueEmpty(Value: TddConfigValue): Boolean;

function MakeIntValue(aValue: Integer): TddConfigValue;

function MakeBoolValue(aValue: Boolean = False): TddConfigValue;

function MakeDateValue(aDateTime: TDateTime): TddConfigValue; overload;

function MakeStrValue(const aValue: AnsiString): TddConfigValue;

function MakeDateValue(aYear: word = 0; aMonth: word = 1; aDay: word = 1):
    TddConfigValue; overload;

implementation

uses
 l3Base,
 SysUtils,
 Windows;

function EmptyConfigValue : TddConfigValue;
begin
 l3FillChar(Result, SizeOf(Result), 0);
end;

function IsValueEmpty(Value: TddConfigValue): Boolean;
begin
 case Value.Kind of
  dd_vkString:  Result := Value.AsString = '';
  dd_vkDateTime: Result := Value.AsDateTime = 0;
  dd_vkObject : Result:= Value.AsObject = nil;
 else
  Result := False
 end;
end;

function MakeIntValue(aValue: Integer): TddConfigValue;
begin
 Result := ddEmptyIntValue;
 Result.AsInteger:= aValue;
end;

function MakeBoolValue(aValue: Boolean = False): TddConfigValue;
begin
 Result := ddEmptyValue;
 Result.Kind:= dd_vkBoolean;
 Result.AsBoolean:= aValue;
end;

function MakeDateValue(aDateTime: TDateTime): TddConfigValue;
begin
 Result := ddEmptyValue;
 Result.Kind:= dd_vkDateTime;
 Result.AsDateTime:= aDateTime;
end;

function MakeStrValue(const aValue: AnsiString): TddConfigValue;
begin
 Result := ddEmptyValue;
 Result.AsString:= aValue;
end;

function MakeDateValue(aYear: word = 0; aMonth: word = 1; aDay: word = 1):
    TddConfigValue;
begin
 Result := ddEmptyValue;
 Result.Kind:= dd_vkDateTime;
 Result.AsDateTime:= EncodeDate(aYear, aMonth, aDay);
end;

initialization
 c_ScrollBarWidth := GetSystemMetrics(SM_CYVSCROLL);
end.
