unit dd_lcDocByTypeFilter;

interface

uses
 Classes,

 l3Types,
 l3StringList,
 evdBufferedFilter,
 k2Interfaces,
 k2TagGen,
 k2Types,

 dd_lcBaseDocFilter;

type
 TlcDocByTypeFilter = class(Tdd_lcBaseDocFilter)
 private
  f_DocHandle: Integer;
  f_HasProperType: Boolean;
  f_ProperTypes: Tl3StringList;
  procedure LoadProperTypes(const aFilename: AnsiString);
 protected
  function ChildTypeForFiltering: Integer; override;
  procedure Cleanup; override;
  procedure DoFlushBuffer(const aLeaf: Ik2Tag; aTagId: Integer; aNeedCloseBracket
      : Boolean); override;
 public
  procedure AddAtomEx(AtomIndex: Integer; const Value: Tk2Variant); override;
  procedure StartChild(TypeID: Long); override;
  class function SetTo(var theGenerator: Tk2TagGenerator; const aTypesFilename: AnsiString): Pointer; overload;
 end;

implementation

uses
 SysUtils,

 l3Base, l3String, l3Interfaces, l3Filer,

 Table_Const, Block_Const, Document_Const, TextPara_Const, DictItem_Const,

 k2Tags, l3StringListPrim;

procedure TlcDocByTypeFilter.AddAtomEx(AtomIndex: Integer; const Value: Tk2Variant);
var
 l_Name: Il3CString;
begin
 inherited;
 if CurrentType.InheritsFrom(k2_idDocument) then
  case AtomIndex of
   k2_tiExternalHandle: f_DocHandle:= Value.AsInteger;
   k2_tiInternalHandle: f_DocHandle:= -Value.AsInteger;
  end;
 if (f_ProperTypes <> nil) and (not f_HasProperType) and CurrentType.InheritsFrom(k2_idDictItem) and
    TopObject[1].IsProp and (TopObject[1].AsProp.TagIndex = k2_tiTypes) and (AtomIndex = k2_tiName) and
    (Value.Kind = k2_vkString) then
 begin
  l_Name := l3Upper(Value.AsString.AsWStr);
  if f_ProperTypes.IndexOf(l_Name) >= 0 then
   f_HasProperType := True;
 end;
end;

function TlcDocByTypeFilter.ChildTypeForFiltering: Integer;
begin
 Result := k2_idDocument;
end;

procedure TlcDocByTypeFilter.Cleanup;
begin
 inherited;
 FreeAndNil(f_ProperTypes);
end;

procedure TlcDocByTypeFilter.DoFlushBuffer(const aLeaf: Ik2Tag; aTagId: Integer;
    aNeedCloseBracket : Boolean);
begin
 if f_HasProperType then
  inherited;
end;

procedure TlcDocByTypeFilter.LoadProperTypes(const aFilename: AnsiString);
var
 l_Filer: Tl3DOSFiler;
 l_Str: Il3CString;
begin
 if f_ProperTypes <> nil then
  f_ProperTypes.Clear
 else
  f_ProperTypes := Tl3StringList.MakeSorted;
 l_Filer := Tl3DOSFiler.Make(aFilename);
 try
  l_Filer.Open;
  while not l_Filer.EOF do
  begin
   l_Str := l3Upper(l3Trim(l_Filer.ReadLn));
   if not l3IsNil(l_Str) then
    f_ProperTypes.Add(l_Str);
  end;
 finally
  FreeAndNil(l_Filer);
 end;
end;

class function TlcDocByTypeFilter.SetTo(var theGenerator: Tk2TagGenerator; const aTypesFilename: AnsiString): Pointer;
var
 l_Filter : TlcDocByTypeFilter;
begin
 l_Filter := Create(nil);
 try
  l_Filter.Generator := theGenerator;
  l_Filter.LoadProperTypes(aTypesFilename);
  l3Set(theGenerator, l_Filter);
 finally
  l3Free(l_Filter);
 end;//try..finally
 Result := theGenerator;
end;

procedure TlcDocByTypeFilter.StartChild(TypeID: Long);
begin
 {
 if TypeTable[TypeID].InheritsFrom([k2_idTextPara, k2_idTable, k2_idBlock]) and
    not TypeTable[TypeID].InheritsFrom(k2_idDocument) and not (f_HasProperType) and (SkipLevel = 2) then
 begin
  f_HasProperType:= True;
  StopBufferingAndFlush(False, TopObject[0], False);
 end; //
 }
 inherited;
 if CurrentType.InheritsFrom(k2_idDocument) then
 begin
  f_HasProperType:= False;
  f_DocHandle:= 0;
 end; // CurrentType.InheritsFrom(k2_idDocument)
end;

end.
