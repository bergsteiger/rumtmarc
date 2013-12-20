unit ddTable;

interface

uses
  k2Prim,
  
  ddTablePrim;

type
  TddTable = class(TddTablePrim)
  public
    procedure Write2Generator(const Generator: Ik2TagGenerator; aNeedProcessRow: Boolean; LiteVersion: Boolean); override;
  end;

implementation

uses
 ddTableRow,

 Table_Const;

{
*********************************** TddTable ***********************************
}
procedure TddTable.Write2Generator(const Generator: Ik2TagGenerator; aNeedProcessRow: Boolean; LiteVersion: Boolean);
var
 i         : Integer;
 l_Row     : TddTableRow;
 l_PrevRow : TddTableRow;
begin
 Generator.StartChild(k2_idTable);
 try
  l_PrevRow := nil;
  for i := 0 to RowList.Hi do
  begin
   l_Row := RowList.Items[i];
   if aNeedProcessRow then
    ProcessTableRow(l_Row, l_PrevRow);
   l_Row.Write2Generator(Generator, aNeedProcessRow, LiteVersion);
   l_PrevRow := l_Row;
  end; // for i := 0 to f_RowList.Hi do
 finally
  Generator.Finish;
 end;
end;

end.
