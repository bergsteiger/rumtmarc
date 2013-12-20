unit dd_lcDoublicateFilter;

interface

uses
 evdBufferedFilter, l3Types, k2Types, k2Interfaces, ddTypes, dd_lcBaseDocFilter;

type
 TlcDoublicateFilter = class(Tdd_lcBaseDocFilter)
 private
  f_Translate: Boolean;
 protected
  procedure AddAtomEx(AtomIndex: Long; const Value: Tk2Variant); override;
        {* - Определяет нужно ли сбрасывать Тег в трубу.  }
  procedure DoFlushBuffer(const aLeaf: Ik2Tag; aTagId: Integer; aNeedCloseBracket
      : Boolean); override;
 public
        {-}
  procedure StartChild(TypeID: Long); override;
 end;

implementation

uses
 Document_Const, k2Tags, l3Base;

procedure TlcDoublicateFilter.AddAtomEx(AtomIndex: Long; const Value:
    Tk2Variant);
begin
 if (SkipLevel = 2) and (AtomIndex = k2_tiExternalHandle) then
 begin
  f_Translate:= True;
  StopBufferingAndFlush(False, TopObject[0], False);
 end;
 inherited;
end;

procedure TlcDoublicateFilter.DoFlushBuffer(const aLeaf: Ik2Tag; aTagId:
    Integer; aNeedCloseBracket : Boolean);
var
 l_Msg: AnsiString;
begin
 if f_Translate then
  inherited
 else
  ErrorReaction('Документ пропущен');
end;

procedure TlcDoublicateFilter.StartChild(TypeID: Long);
  {override;}
  {-}
begin
 if TypeTable[TypeID].InheritsFrom(k2_idDocument) then
  f_Translate:= False;
 inherited;
end;

end.
