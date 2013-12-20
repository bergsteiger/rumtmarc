unit ddAutoIncludeFilter;
{ Добавляет в документ запись о подключении ближайшей будущей субботой }


interface

uses
  ddHeaderFilter, k2Interfaces;

type
 TddAutoIncludeFilter = class(TddHeaderFilter)
 private
  function VersionDate: Integer;
 protected
  procedure BeforeFlushHeader(aHeaderRoot: Ik2Tag); override;
 end;

implementation

uses
  k2Tags, dt_Types, l3Date, l3Datest;

procedure TddAutoIncludeFilter.BeforeFlushHeader(aHeaderRoot: Ik2Tag);
var
 l_Record: Ik2Tag;
begin
 l_Record:= aHeaderRoot.cAtomEx([k2_tiLogRecords, k2_tiChildren, k2_tiType, Ord(acIncluded)], nil);
 l_Record.IntW[k2_tiStart, nil]:= VersionDate;
end;                         

function TddAutoIncludeFilter.VersionDate: Integer;
begin
 Result := StDateToDemon(DateTimeToStDate(vtGetNearestDayOfWeek(Saturday, False)));
end;

end.
