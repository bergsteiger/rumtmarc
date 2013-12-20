unit ddDocNameUpdateFilter;

{ $Id: ddDocNameUpdateFilter.pas,v 1.3 2013/04/11 16:46:27 lulin Exp $ }

// $Log: ddDocNameUpdateFilter.pas,v $
// Revision 1.3  2013/04/11 16:46:27  lulin
// - отлаживаем под XE3.
//
// Revision 1.2  2011/06/10 11:52:40  voba
// - DocumentServer сделал функцией function DocumentServer(aFamily : TFamilyID), что бы отдельно Family не присваивать
//
// Revision 1.1  2010/11/12 15:18:50  fireton
// - проставляем ключевые темы в названии документа
//

interface
uses
 l3Types,
 l3Base,
 l3Interfaces,

 k2Types,
 k2TagFilter,

 DT_Types
 ;

type
 // Фильтр просматривает имя документа и вносит изменения в базу, если имя отличается от
 // существующего в базе
 TddDocNameUpdateFilter = class(Tk2TagFilter)
 private
  f_DocID: TDocID;
  f_Name : Tl3PrimString;
 protected
  procedure DoAddAtomEx(AtomIndex: Long; const Value: Tk2Variant); override;
  procedure Cleanup; override;
 public
  procedure StartChild(TypeID: Integer); override;
 end;

implementation
uses
 SysUtils,

 k2Tags,

 Document_Const,

 DT_Const,
 DT_Serv,
 DT_LinkServ,
 DT_Doc
 ;

procedure TddDocNameUpdateFilter.Cleanup;
begin
 FreeAndNil(f_Name);
 inherited;
end;

procedure TddDocNameUpdateFilter.DoAddAtomEx(AtomIndex: Long; const Value: Tk2Variant);
var
 l_OldName: AnsiString;
 l_Name: AnsiString;
 l_RNum: Longint;
begin
 if CurrentType.InheritsFrom(k2_idDocument) then
 begin
  case AtomIndex of
   k2_tiInternalHandle: f_DocID := Value.AsInteger;
   k2_tiName          : l3Set(f_Name, Value.AsString);
  end;
  with DocumentServer(CurrentFamily).FileTbl do
   if (f_DocID <> 0) and (f_Name <> nil) then
   begin
    l_RNum := GetFullRecOnID(f_DocID, True);
    try
     GetFromFullRec(fFName_Fld, l_OldName);
     l_Name := f_Name.AsString;
     if l_OldName <> l_Name then
     begin
      PutToFullRec(fFName_Fld, l_Name);
      UpdFRec(l_RNum);
      LinkServer(CurrentFamily).LogBook.PutLogRec(f_DocID, acAttrWork);
     end;
    finally
     FreeRec(l_RNum);
    end;
   end;
 end;
 inherited;
end;

procedure TddDocNameUpdateFilter.StartChild(TypeID: Integer);
begin
 if TypeID = k2_idDocument then
 begin
  f_DocID := 0;
  FreeAndNil(f_Name);
 end;
 inherited;
end;

end.