unit ddHeaderFilter;

interface
uses
 l3Types,

 k2Types,
 k2TagGen,
 k2TagTerminator,
 
 k2DocumentBuffer, k2Interfaces;

type
 TddHeaderFilter = class(Tk2TagTerminator)
 private
   f_Buffer: Tk2DocumentBuffer;
   f_Filtered: Boolean;
   procedure WriteBuffer;
 protected
   procedure AfterFlushHeader(aHeaderRoot: Ik2Tag); virtual;
   procedure BeforeFlushHeader(aHeaderRoot: Ik2Tag); virtual;
 public
   constructor Create(anOwner: Tk2TagGeneratorOwner); override;
   procedure Cleanup; override;

   procedure StartChild(TypeID: Long); override;
     {-}
   procedure AddAtomEx(AtomIndex: Long; const Value: Tk2Variant); override;
     {-}
   procedure StartTag(TagID: Long); override;
     {-}
   procedure CloseStructure(NeedUndo: Bool);
     override;
 end;

implementation
uses
 l3Base,
 
 k2Base,
 k2Tags,

 Document_Const,
 TextPara_Const,
 Block_Const,
 Table_Const,
 BitmapPara_Const,
 SectionBreak_Const,
 PageBreak_Const
 ;

constructor TddHeaderFilter.Create(anOwner: Tk2TagGeneratorOwner);
begin
 inherited Create(anOwner);
 f_Buffer:= Tk2DocumentBuffer.Create(nil);
 f_Buffer.RewriteAtoms:= False;
 f_Buffer.Start;
 f_Filtered:= False;
end;

procedure TddHeaderFilter.AddAtomEx(AtomIndex: Long; const Value: Tk2Variant);
begin
 if CurrentType.InheritsFrom(k2_idDocument) then
  if TopType[1] <> nil then // - учитываем вложенные документы
   Exit;
 if f_Filtered then
  f_Buffer.AddAtomEx(AtomIndex, Value)
 else
 if Generator <> nil then
  Generator.AddAtomEx(AtomIndex, Value);
end;

procedure TddHeaderFilter.AfterFlushHeader(aHeaderRoot: Ik2Tag);
begin
 // does nothing in base class
end;

procedure TddHeaderFilter.BeforeFlushHeader(aHeaderRoot: Ik2Tag);
begin
 // does nothing in base class
end;

procedure TddHeaderFilter.Cleanup;
begin
 f_Buffer.Finish;
 l3Free(f_Buffer);
 inherited;
end;

procedure TddHeaderFilter.CloseStructure(NeedUndo: Bool);
  {override;}
  {-}
begin
  if CurrentType.InheritsFrom(k2_idDocument) then
  if TopType[1] <> nil then // - учитываем вложенные документы
  begin
   inherited;
   Exit;
  end;
 if f_Filtered then
 begin
  if CurrentType.InheritsFrom(k2_idDocument) then
  begin
   WriteBuffer;
   Generator.Finish(NeedUndo);
  end
  else
   f_Buffer.Finish(NeedUndo)
 end
 else
 if Generator <> nil then
  Generator.Finish(NeedUndo);

 inherited;
end;

procedure TddHeaderFilter.StartChild(TypeID: Long);
var
 TT, l_Type: Tk2Type;

begin
 l_Type := TypeTable[TypeID];
 if l_Type.InheritsFrom(k2_idDocument) then
  if CurrentType <> nil then // - учитываем вложенные документы
  begin
   inherited;
   Exit;
  end;
 inherited;
 TT:= CurrentType;
 if TT.InheritsFrom(k2_idDocument) then
  f_Filtered:= True;
 if f_Filtered then
 begin
  if not TT.InheritsFrom(k2_idDocument) and
     TT.InheritsFrom([k2_idTextPara, k2_idBlock, k2_idTable, k2_idBitmapPara, k2_idSectionBreak, k2_idPageBreak]) then
  begin
   WriteBuffer;
   if Generator <> nil then
    Generator.StartChild(TypeID);
  end
  else
   f_Buffer.StartChild(TypeID)
 end
 else
  if Generator <> nil then
   Generator.StartChild(TypeID);
end;

procedure TddHeaderFilter.StartTag(TagID: Long);
begin
 inherited;
 if f_Filtered then
  f_Buffer.StartTag(TagID)
 else
 if Generator <> nil then
  Generator.StartTag(TagID);
end;

procedure TddHeaderFilter.WriteBuffer;
begin
 f_Filtered:= False;
 f_Buffer.Finish;
 if (Generator <> nil)  then
 begin
  if (f_Buffer.Root <> nil) AND f_Buffer.Root.IsValid then
  begin
   BeforeFlushHeader(f_Buffer.Root);
   Generator.StartChild(f_Buffer.Root.TagType.ID);
   f_Buffer.Root.Write(Generator);
   AfterFlushHeader(f_Buffer.Root);
  end;
 end;
 f_Buffer.Root := nil;
end;


end.