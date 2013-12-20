unit ddParaList;

interface

uses
  ddBase,
  ddDocumentAtom,
  ddTextParagraph,
  ddCustomDestination,

  k2Prim,

  l3ProtoPersistentRefList;

type
  //(TYPE=A) - capital letters. e.g. A, B, C ...
  //(TYPE=a) - small letters. e.g. a, b, c ...
  //(TYPE=I) - large roman numerals. e.g. I, II, III ...
  //(TYPE=i) - small roman numerals. e.g. i, ii, iii ...
  //(TYPE=1) - or the default numbers. e.g. 1, 2, 3 ...

  TddParaList = class(TddDocumentAtom)
  private
    f_List: Tl3ProtoPersistentRefList;
    f_ListType: TddListType;
    f_Multilevel: Boolean;
    f_OrderStart: Integer;
    f_OrderType: TddOrderType;
  protected
    function GetLastPara: TddTextParagraph ;
    procedure Cleanup; override;
  public
    constructor Create(anOwner: TObject; aDetination: TddCustomDestination); override;
    procedure AddList(aList: TddParaList);
    procedure AddPara;
    procedure CloseLevel;
    procedure Write2Generator(const Generator: Ik2TagGenerator; aNeedProcessRow: Boolean; LiteVersion: Boolean); override;
    property LastPara: TddTextParagraph read GetLastPara;
    property ListType: TddListType read f_ListType write f_ListType;
    property Multilevel: Boolean read f_Multilevel;
    property OrderStart: Integer read f_OrderStart write f_OrderStart;
    property OrderType: TddOrderType read f_OrderType write f_OrderType;
  end;

implementation

uses
  SysUtils, l3String;

{
********************************* TddParaList **********************************
}
constructor TddParaList.Create(anOwner: TObject; aDetination: TddCustomDestination);
begin
 inherited Create(anOwner, aDetination);
 AtomType     := dd_docParaList;
 f_List       := Tl3ProtoPersistentRefList.Make;
 f_ListType   := ltUnordered;
 f_OrderType  := otNumbers;
 f_OrderStart := 0;
 f_Multilevel := False;
end;

procedure TddParaList.AddList(aList: TddParaList);
begin
  f_List.Add(aList);
  f_Multilevel:= True;
end;

procedure TddParaList.AddPara;
var
  l_P: TddTextParagraph;
begin
  l_P:= TddTextParagraph.Create(nil, nil);
  try
   l_P.PAP.xaFirst:= -100;
   l_P.PAP.xaLeft:= 1000;

   f_List.Add(l_P);
  finally
   FreeAndNil(l_P);
  end;
end;

procedure TddParaList.CloseLevel;
begin
  if f_MultiLevel then
    f_MultiLevel:= False;
end;

function TddParaList.GetLastPara: TddTextParagraph;
begin
 if f_List.Count > 0 then
 begin
  if TddDocumentAtom(f_List.Items[f_List.Hi]).AtomType = dd_docTextParagraph then
   Result:= TddTextParagraph(f_List.Items[f_List.Hi])
  else
   Result:= TddParaList(f_List.Items[f_List.Hi]).LastPara;
 end
 else
  Result:= nil;    
end;

procedure TddParaList.Cleanup;
begin
  FreeAndNil(f_List);
  inherited;
end;

procedure TddParaList.Write2Generator(const Generator: Ik2TagGenerator; aNeedProcessRow: Boolean; LiteVersion: Boolean);
var
  l_A: TddDocumentAtom;
  i: Integer;
  S: ShortString;
begin
  for i:= 0 to f_List.Hi do
  begin
    l_A:= TddDocumentAtom(f_List.Items[i]);
    if l_A.AtomType = dd_docTextParagraph then
    begin
      if ListType = ltOrdered then
      begin
        case OrderType of
          otCapitalLetters : S:= Chr(Ord('A')+i+OrderStart)+' ';
          otSmallLetters   : S:= Chr(Ord('a')+i+OrderStart)+' ';
          otLargeRoman     : ;
          otSmallRoman     : ;
          otNumbers        : S:= IntToStr(i+OrderStart+1) + ' ';
        end;
      end
      else
      begin
        S:= '-  ';
        //TddTextParagraph(l_A).Text.Insert('*', 0, 1);
        //TddTextParagraph(l_A).Text.Insert(' ', 1, 2);
      end;
      TddTextParagraph(l_A).Text.Insert(l3PCharLen(S), 0, 1);
    end;
    l_A.Write2Generator(Generator, aNeedProcessRow, LiteVersion);
  end;
end;

end.
