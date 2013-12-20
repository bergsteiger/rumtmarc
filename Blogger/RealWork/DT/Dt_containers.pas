unit Dt_containers;

{ $Id: Dt_containers.pas,v 1.5 2004/09/21 12:04:21 lulin Exp $ }

// $Log: Dt_containers.pas,v $
// Revision 1.5  2004/09/21 12:04:21  lulin
// - Release заменил на Cleanup.
//

{$I DtDefine.inc}

interface

uses
 l3Base, Contnrs;

type

 // вспомогательный тип дл€ TNumSet
 TNumRange = class(TL3Base)
 public
  LowNum,
  HiNum: LongWord;
  constructor Create(aLowNum, aHiNum: LongWord);
  function HasIntersectionWith(aRange: TNumRange): Boolean;
  function JoinWith(aRange: TNumRange): Integer;
   // возвращает число добавленных ((кол-во в aRange) - (кол-во дубликатов)) номеров
  function Amount: Integer;
 end;

 TNumSet = class(TL3Base)
  // ѕросто пачка (i.e. set) номеров. »спользуетс€ при передаче туда-сюда.
  // ƒобавление дубликатов обрабатывает корректно.
 private
  f_Ranges: TObjectList;
  f_Amount: Integer;
  function GetRange(Index: Integer): TNumRange;
 protected
  procedure Cleanup; override;
 public
  constructor Create;
  procedure Clear;
  procedure AddNum(aNum: LongWord); // добавление одного номера
  procedure AddRange(aLowNum, aHiNum: LongWord); // добавление группы номеров
  procedure AddSet(aSet: TNumSet); // добавление номеров из другой пачки
  function Pick: LongWord; // извлечение одного номера
  function RangesAmount: Integer;
  property Ranges[Index: Integer]: TNumRange read GetRange;
  property Amount: Integer read f_Amount; // кол-во номеров "в наличии"
 end;

implementation

uses
 SysUtils, Math;

{ TNumSet }

procedure TNumSet.AddNum(aNum: LongWord);
begin
 AddRange(aNum, aNum);
end;

procedure TNumSet.AddRange(aLowNum, aHiNum: LongWord);
var
 l_NewRange,
 l_CurRange: TNumRange;
 I: Integer;
begin
 l_NewRange := TNumRange.Create(aLowNum, aHiNum);

 // ”даление дубликатов след. образом:
 // перебирам все имеющиес€ интервалы - если среди них встречаем пересекающийс€
 // с новым, то его содержимое переносим в новый, а его самого удал€ем.
 for I := f_Ranges.Count - 1 downto 0 do
 begin
  l_CurRange := TNumRange(f_Ranges[I]);

  if l_NewRange.HasIntersectionWith(l_CurRange) then
  begin
   l_NewRange.JoinWith(l_CurRange);
   Dec(f_Amount, l_CurRange.Amount);
   f_Ranges.Delete(I);
  end;
 end;

 f_Ranges.Add(l_NewRange);
 Inc(f_Amount, l_NewRange.Amount);
end;

procedure TNumSet.AddSet(aSet: TNumSet);
var
 I: Integer;
begin
 for I := 0 to aSet.F_Ranges.Count - 1 do
  AddRange(TNumRange(aSet.F_Ranges[I]).LowNum,
           TNumRange(aSet.F_Ranges[I]).HiNum);
end;

procedure TNumSet.Clear;
begin
 f_Ranges.Clear;
 f_Amount := 0;
end;

constructor TNumSet.Create;
begin
 f_Ranges := TObjectList.Create(True);
end;

function TNumSet.GetRange(Index: Integer): TNumRange;
begin
 Result := TNumRange(f_Ranges[Index]);
end;

function TNumSet.Pick: LongWord;
var
 l_Range: TNumRange;
begin
 if Amount = 0 then
  raise Exception.Create('ѕопытка получени€ элемента из пустого множества.');

 l_Range := TNumRange(f_Ranges.Items[0]);
 Result := l_Range.LowNum;
 if l_Range.Amount > 1 then
  Inc(l_Range.LowNum)
 else
  f_Ranges.Delete(0);

 Dec(f_Amount, 1);
end;

function TNumSet.RangesAmount: Integer;
begin
 Result := f_Ranges.Count;
end;

procedure TNumSet.Cleanup;
begin
 FreeAndNil(f_Ranges);

 inherited;
end;

{ TNumRange }

function TNumRange.Amount: Integer;
begin
 Result := HiNum - LowNum + 1;
end;

constructor TNumRange.Create(aLowNum, aHiNum: LongWord);
begin
 if aLowNum <= aHiNum then
 begin
  LowNum := aLowNum;
  HiNum  := aHiNum;
 end
 else
 begin
  LowNum := aHiNum;
  HiNum  := aLowNum;
 end;
end;

function TNumRange.HasIntersectionWith(aRange: TNumRange): Boolean;
begin
 Result := (Self.HiNum  >= aRange.LowNum) and
           (Self.LowNum <= aRange.HiNum);
end;

function TNumRange.JoinWith(aRange: TNumRange): Integer;
begin
 if not HasIntersectionWith(aRange) then
  raise Exception.Create('ѕопытка объединени€ непересекающихс€ диапазонов.');

 Self.LowNum := Min(Self.LowNum, aRange.LowNum);
 Self.HiNum  := Max(Self.HiNum,  aRange.HiNum);
end;

end.
