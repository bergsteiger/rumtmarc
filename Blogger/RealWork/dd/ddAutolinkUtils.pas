unit ddAutolinkUtils;

{ $Id: ddAutolinkUtils.pas,v 1.1 2013/04/25 03:56:21 fireton Exp $ }

interface
uses
 l3Interfaces;

function NormalizeCasecode(const aNum: Il3CString): Il3CString;

implementation
uses
 SysUtils,
 
 l3Base,
 l3RegEx,
 l3Date,
 l3String;

var
 gNormCaseCodeRE: Tl3RegularSearch;
                               
const
 cCaseCodeSearchPattern = '^{À\d+\-[0-9À-ß\-]+\/}{(\d\d\d\d)|(\d\d)}';

function NormalizeCasecode(const aNum: Il3CString): Il3CString;
var
 l_MP: Tl3MatchPosition;
begin
 if gNormCaseCodeRE = nil then
 begin
  gNormCaseCodeRE := Tl3RegularSearch.Create;
  gNormCaseCodeRE.IgnoreCase := True;
  gNormCaseCodeRE.SearchPattern := cCaseCodeSearchPattern;
 end;
 if gNormCaseCodeRE.SearchInString(aNum.AsWStr, l_MP) then
 begin
  Result := l3Cat([l3CStr(gNormCaseCodeRE.TagParts[0]),
    l3Fmt('%d', [ExpandYear(l3StrToInt(gNormCaseCodeRE.TagParts[1].AsWStr))])])
 end
 else
  Result := aNum;
end;

initialization
 gNormCasecodeRE := nil;
finalization
 FreeAndNil(gNormCasecodeRE);
end.
