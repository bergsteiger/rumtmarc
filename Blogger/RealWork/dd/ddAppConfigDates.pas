unit ddAppConfigDates;
{ Ёлементы конфигурации дл€ работы с датами и временем }

{$Include ddDefine.inc}

interface

uses
 Controls, ddAppConfigTypes, ddAppConfigTypesModelPart, ddAppConfigConst, ddConfigStorages, vtLabel, l3Interfaces;

type
  TddDateTimeConfigItem = class(TddVisualConfigItem)
  private
    procedure _OnChange(Sender: TObject);
  protected
    function ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl; override;
  public
    constructor Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue; aMasterItem: TddBaseConfigItem =
        nil); override;
    function ControlHeight(aParent: TWinControl): Integer; override;
    procedure GetValueFromControl; override;
    procedure LoadValue(const aStorage: IddConfigStorage); override;
    procedure SaveValue(const aStorage: IddConfigStorage); override;
    procedure SetValueToControl(aDefault: Boolean); override;
  end;//TddDateTimeConfigItem

{$IfNDef Nemesis}
  TddTimeConfigItem = class(TddDateTimeConfigItem)
  protected
    procedure AfterConstruct(var aLeft, aMaxLeft, aTop: Integer; theControl:
            TControl; theLabel: TvtLabel); override;
  public
    function MinWidth(aParent: TWinControl): Integer; override;
  end;//TddTimeConfigItem
{$EndIf Nemesis}

  TddDateConfigItem = class(TddDateTimeConfigItem)
  protected
    procedure AfterConstruct(var aLeft, aMaxLeft, aTop: Integer; theControl:
            TControl; theLabel: TvtLabel); override;
  public
    function MinWidth(aParent: TWinControl): Integer; override;
  end;//TddDateConfigItem

{$IfNDef Nemesis}  
 TddWeekDayCombo = class(TddComboBoxConfigItem)
 public
  constructor Make(aAlias, aCaption: AnsiString; aDefaultValue: TddConfigValue; aCase: Integer);
 end;

 TddMonthDayCombo = class(TddComboBoxConfigItem)
 public
  constructor Make(aAlias, aCaption: AnsiString; aDefaultValue: TddConfigValue; aCase: Integer);
 end;

 TddMonthsCombo = class(TddComboBoxConfigItem)
 public
  constructor Make(aAlias, aCaption: AnsiString; aDefaultValue: TddConfigValue; aCase: Integer);
 end;

 TddWeekDaysCheckListItem = class(TddCheckListConfigItem)
 public
  constructor Make(const aAlias, aCaption: AnsiString; aDefaultValue: TddConfigValue; aMasterItem: TddBaseConfigItem = nil);
 end;
{$EndIf Nemesis}

implementation

uses
 ComCtrls, SysUtils
 {$IfNDef Nemesis}
 ,
 l3TypedIntegerValueMap
 {$EndIf  Nemesis}
 ;

{$IfNDef Nemesis}
type
 TMonthType = (m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12);
 TWeekType = (Dw1, Dw2, Dw3, Dw4, Dw5, Dw6, Dw7);
 TDayType = (d1, d2, d3, d4, d5, d6, d7, d8, d9, d10,
             d11, d12, d13, d14, d15, d16, d17, d18, d19, d20,
             d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31);
 TDayArray = array[TDayType] of AnsiString;

const
 WeekDaysArray : Array[0..2, TWeekType] of AnsiString =
                (('ѕонедельник', '¬торник', '—реда', '„етверг', 'ѕ€тница', '—уббота', '¬оскресенье'),
                 ('ѕонедельника', '¬торника', '—реды', '„етверга', 'ѕ€тницы', '—убботы', '¬оскресень€'),
                 ('ѕонедельникам', '¬торникам', '—редам', '„етвергам', 'ѕ€тницам', '—убботам', '¬оскресень€м'));
 MonthsArray : Array[0..1, TMonthType] of AnsiString =
                 (('январь', '‘евраль', 'ћарт', 'јпрель', 'ћай', '»юнь',
                  '»юль', 'јвгуст', '—ент€брь', 'ќкт€брь', 'Ќо€брь', 'ƒекабрь'),
                  ('январ€', '‘еврал€', 'ћарта', 'јпрел€', 'ћа€', '»юн€',
                  '»юл€', 'јвгуста', '—ент€бр€', 'ќкт€бр€', 'Ќо€бр€', 'ƒекабр€'));

 weekID : Tl3ValueMapID = (rName: 'ƒни недели'; rID : 1);
 MonthID : Tl3ValueMapID = (rName: 'ћес€цы'; rID : 1);
 DayID : Tl3ValueMapID = (rName: '„исла'; rID : 1);


{
****************************** TddTimeConfigItem *******************************
}
procedure TddTimeConfigItem.AfterConstruct(var aLeft, aMaxLeft, aTop: Integer;
        theControl: TControl; theLabel: TvtLabel);
begin
  inherited AfterConstruct(aLeft, aMaxLeft, aTop, theControl, theLabel);
  (theControl as TDateTimePicker).Kind:= dtkTime;
end;

function TddTimeConfigItem.MinWidth(aParent: TWinControl): Integer;
begin
  Result := 40 + GetCanvas(aParent).TextWidth(TimeToStr(Time))+ConfigItemLeft;
end;

{$EndIf  Nemesis}

{
****************************** TddDateConfigItem *******************************
}
procedure TddDateConfigItem.AfterConstruct(var aLeft, aMaxLeft, aTop: Integer;
        theControl: TControl; theLabel: TvtLabel);
begin
  inherited AfterConstruct(aLeft, aMaxLeft, aTop, theControl, theLabel);
  (theControl as TDateTimePicker).Kind:= dtkDate;
end;

function TddDateConfigItem.MinWidth(aParent: TWinControl): Integer;
begin
  Result := 40 + GetCanvas(aParent).TextWidth(DateToStr(Date))+ConfigItemLeft;
end;

{
**************************** TddDateTimeConfigItem *****************************
}
constructor TddDateTimeConfigItem.Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue; aMasterItem:
    TddBaseConfigItem = nil);
var
 l_DefValue: TddConfigValue;
begin
 l_DefValue := aDefaultValue;
 if l_DefValue.AsDateTime = 0 then
  l_DefValue.AsDateTime:= Now;
 inherited Create(aAlias, aCaption, l_DefValue, aMasterItem);
 f_Value.Kind:= dd_vkDateTime;
 f_Value.AsDateTime:= Now;
end;

function TddDateTimeConfigItem.ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl;
begin
  Result:= TDateTimePicker.Create(aParent);
  Result.Parent:= aParent;
  Result.Left:= aLeft;
  Result.Top:= aTop;
  if LabelTop then
   Result.Width:= aParent.ClientWidth - aLeft - ConfigItemRight
  else
   Result.Width:= MinWidth(aParent);
  TDateTimePicker(Result).OnChange := _OnChange;
end;

function TddDateTimeConfigItem.ControlHeight(aParent: TWinControl): Integer;
begin
  with TDateTimePicker.Create(aParent) do
  try
   Parent:= aParent;
   Result:= Height;
  finally
   Free;
  end;
end;

procedure TddDateTimeConfigItem.GetValueFromControl;
begin
  DateTimeValue:= TDateTimePicker(Control).DateTime;
end;

procedure TddDateTimeConfigItem.LoadValue(const aStorage: IddConfigStorage);
begin
 DateTimeValue:= aStorage.ReadDateTime(Alias, Now{DefaultValue.AsDateTime});
end;

procedure TddDateTimeConfigItem.SaveValue(const aStorage: IddConfigStorage);
begin
  aStorage.WriteDateTime(Alias, DateTimeValue);
end;

procedure TddDateTimeConfigItem.SetValueToControl(aDefault: Boolean);
begin
  if aDefault then
   TDateTimePicker(Control).DateTime:= DefaultValue.AsDateTime
  else
   TDateTimePicker(Control).DateTime:= DateTimeValue;
end;

procedure TddDateTimeConfigItem._OnChange(Sender: TObject);
begin
 Changed:= True;
end;

{$IfNDef Nemesis}

constructor TddWeekDayCombo.Make(aAlias, aCaption: AnsiString; aDefaultValue: TddConfigValue; aCase: Integer);
begin
 Create(aAlias, aCaption, aDefaultValue,
        Tl3SimpleTypedIntegerValueMap.Make(WeekID, TypeInfo(TWeekType), WeekDaysArray[aCase]));
end;

function MonthDaysArray: TDayArray;
var
 i: TDayType;
begin
 for i:= low(TDayType) to High(TDayType) do
  Result[i]:= Format('%d-го числа', [Succ(Ord(i))]);
end;

constructor TddMonthDayCombo.Make(aAlias, aCaption: AnsiString; aDefaultValue: TddConfigValue; aCase: Integer);
var
 l_A: TDayArray;
begin
 l_A:= MonthDaysArray;
 Create(aAlias, aCaption, aDefaultValue,
        Tl3SimpleTypedIntegerValueMap.Make(DayID, TypeInfo(TDayType), l_A));
end;

constructor TddMonthsCombo.Make(aAlias, aCaption: AnsiString; aDefaultValue: TddConfigValue; aCase: Integer);
begin
 Create(aAlias, aCaption, aDefaultValue,
        Tl3SimpleTypedIntegerValueMap.Make(MonthID, TypeInfo(TMonthType), MonthsArray[aCase]));
end;

constructor TddWeekDaysCheckListItem.Make(const aAlias, aCaption: AnsiString; aDefaultValue: TddConfigValue; aMasterItem:
    TddBaseConfigItem = nil);
var
 i: TWeekType;
begin
 Create(aAlias, aCaption, aDefaultValue, aMasterItem);
 Columns:= 2;
 for i:= Low(TWeekType) to High(TweekType) do
  Add(WeekDaysArray[1, i]);
end;

(*
падеж                               TDayTable

I муж.; грам.

case

именительный падеж Ч nominative, subjective case

дательный падеж Ч dative (case)

винительный падеж Ч accusative (case)

инструментальный падеж Ч instrumental case

местный падеж Ч locative, local case

звательный падеж Ч nominative of address, vocative

сравнительный падеж Ч (в финно-угорских €зыках) equative

изобразительный падеж Ч (в финно-угорских €зыках) essive

отделительный падеж, отложительный падеж Ч ablative

объектный падеж, косвенный падеж Ч objective, oblique case, objective case

общий падеж Ч common case

прит€жательный падеж Ч possessive

родительный разделительный падеж Ч partitive genitive

творительный падеж Ч instrumental (case); ablative

*)
{$EndIf Nemesis}

end.
