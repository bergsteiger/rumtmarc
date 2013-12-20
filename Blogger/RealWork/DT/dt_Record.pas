Unit dt_Record;

{ $Id: dt_Record.pas,v 1.7 2013/05/31 07:20:40 lulin Exp $ }

// $Log: dt_Record.pas,v $
// Revision 1.7  2013/05/31 07:20:40  lulin
// - портируем под XE4.
//
// Revision 1.6  2013/04/19 13:07:39  lulin
// - портируем.
//
// Revision 1.5  2010/08/03 13:16:38  voba
// - k: 229672814
//
// Revision 1.4  2009/10/29 07:13:41  voba
// - cc
//
// Revision 1.3  2009/10/26 14:37:14  voba
// - развитие TdtRecord
//
// Revision 1.2  2009/09/15 12:34:56  voba
// - rename function WasFound
//
// Revision 1.1  2009/09/11 08:35:21  voba
// - новый объект дл€ доступа к пол€м записи
//

{$Include l3XE.inc}

interface
uses
 HT_Const,
 dt_Err,
 dtIntf;

const
 MaxRecSize = 2000;  //HT_Const.MAX_REC_LEN = $FFED;  (* ћаксимальна€ длина записи в таблице      *)

type
 TdtRecord = {$IfDef XE4}record{$Else}object{$EndIf}
  fRecBuffer : array[0 .. Pred(MaxRecSize)] of byte;
  fBufFilled : boolean;
  fTable     : ITblInfo;
  fAbsNum    : Longint;
  fRecH      : RHANDLE;

  procedure FindByUniq(aKeyFld : ThtField; const aKeyData);
   {* -  поиск записи по уникальному ключу}

  procedure Unlock; 
  procedure Get(aWithHold : Boolean = false);
   {* - получить тело записи во внутренний буфер, с захватом записи или без}
  procedure GetTo(aBuffer : Pointer);
   {* - получить тело записи в aBuffer}

  procedure Update;
   {* - сохранить изменени€ в таблицу}


  procedure GetField(aField : ThtField; var aBody);
   {* - получить поле записи}

  function GetStrField(aField : ThtField) : String;
   {* - получить строковое поле записи}
  procedure GetCharArrayField(aField : ThtField; var aBody);
   {* - «аполн€ет переменную типа array of Char}

  procedure FillField(aField: ThtField; const aValue: TVarRec);
   overload;
  procedure FillField(aField: ThtField; const aValue: array of const);
   overload;

  procedure FillRecord(const aRecordArr: array of const);

  function WasFound : Boolean;
   {* - запись найдена}
 end;

 function InitRecord(const aTable : ITblInfo) : TdtRecord;

implementation
uses
 SysUtils,
 HT_Dll,
 l3Chars,
 l3String,
 l3Base,
 l3MinMax,
 k2Interfaces;

function InitRecord(const aTable : ITblInfo) : TdtRecord;
begin
 with Result do
 begin
  fTable     := aTable;
  fBufFilled := False;
  fAbsNum    := 0;
  fRecH      := 0;
 end;
 Assert(aTable.RecSize <= MaxRecSize, Format('нужно увеличить TdtRecord.MaxRecSize до %d байт', [aTable.RecSize]));
end;

procedure TdtRecord.FindByUniq(aKeyFld : ThtField; const aKeyData);
begin
 fAbsNum := 0;
 fAbsNum := Ht(htRecordByUniq(nil, fTable.Handle, aKeyFld, @aKeyData, @fRecH));
 fBufFilled := False;
end;

function TdtRecord.WasFound : Boolean;
begin
 Result := fAbsNum > 0;
end;

procedure TdtRecord.GetTo(aBuffer : Pointer);
begin
 if fBufFilled then
 else
  l3Move(fRecBuffer, aBuffer^, fTable.RecSize);
 begin
  if fAbsNum = 0 then raise EHtErrors.CreateInt(ecNotFound);
  fTable.CheckIsOpen;
  Ht(htReadRecord(nil, fTable.Handle, fAbsNum, aBuffer));
 end;
end;

procedure TdtRecord.Get(aWithHold : Boolean = false);
begin
 if fAbsNum = 0 then raise EHtErrors.CreateInt(ecNotFound);

 if fBufFilled then Exit;
 fTable.CheckIsOpen;
 if aWithHold and (not fTable.IsTblHeld) then
  Ht(htHoldReadRecord(fTable.Handle, fAbsNum, @fRecBuffer))
 else
  Ht(htReadRecord(nil, fTable.Handle, fAbsNum, @fRecBuffer));
 fBufFilled := True;
end;

procedure TdtRecord.Update;
var
 lEditTbl : IEditTbl;
begin
 if Supports(fTable, IEditTbl, lEditTbl) then
  if WasFound then
   lEditTbl.UpdRec(fAbsNum, @fRecBuffer)
  else
   lEditTbl.AddRec(@fRecBuffer);
end;

procedure TdtRecord.Unlock;
var
 lEditTbl : IEditTbl;
begin
 if fAbsNum = 0 then raise EHtErrors.CreateInt(ecNotFound);
 Ht(htReleaseRecord(fTable.Handle, fAbsNum));
end;

function TdtRecord.GetStrField(aField : ThtField) : String;
begin
 Assert(fTable.ElementType[aField] = ET_CHAR, Format('“аблица %s поле %d не строка', [fTable.TblName, aField]));
 GetField(aField, Result);
end;

procedure TdtRecord.GetCharArrayField(aField : ThtField; var aBody);
begin
 Assert(fTable.ElementType[aField] = ET_CHAR, Format('“аблица %s поле %d не строка', [fTable.TblName, aField]));
 Get;
 with fTable.Element[aField] do
  l3Move(fRecBuffer[wOffset], aBody, wLength);
end;

procedure TdtRecord.GetField(aField : ThtField; var aBody);
begin
 Get;
 with fTable do
 begin
  with Element[aField] do
  case cType of
   ET_CHAR :
    String(aBody) := l3ArrayToString(fRecBuffer[wOffset], wLength);

   ET_ARRA :
    Assert(false, 'TdtRecord.GetField ET_ARRA!!!');
    //begin
    // Assert(false, 'TdtRecord.GetField ET_ARRA!!!');
    // l3System.GetLocalMem(Pointer(aBody),PElemArr(fFields)^[aField].wLength);
    // l3Move(aRecord[PElemArr(fFields)^[aField].wOffset], Pointer(aBody)^, PElemArr(fFields)^[aField].wLength);
    //end;

   ET_BYTE,
   ET_INTR,
   ET_WORD,
   ET_DATE,
   ET_NMBR,
   ET_LONG,
   ET_DWRD,
   ET_FLOA,
   ET_CURR,
   ET_DFLT :
    l3Move(fRecBuffer[wOffset], aBody, wLength);
  end;
 end;
end;
(*
procedure TdtTblInfo.CheckFieldValue(aField: ThtField; pValue: Pointer);

 procedure CheckValue(aTestResult: Boolean);
 begin
  if not aTestResult then
   raise EHtErrors.CreateInt(ecWrongFieldValue,
                             [ValueAsString(aField, pValue),
                              FieldName(aField),
                              fTableName]);
 end;

 procedure ReplaceWrongSymbols; // мен€ет недопустимые символы на пробелы (только на коротких символьных пол€х (длина < 255))
 var
  lWrongChar : array[boolean] of Char = [#255, #160];
 begin
  if (pValue = nil)
   or (PElemArr(fFields)^[aField].wLength > 255) // на длинных пол€х все символы допустимы (из док. по HT)
  then
   Exit;

   lWrongChar[fTable.IsAnsi]

 end;

begin
 CheckFieldNum(aField);

 with Ftable.ElementInfo[aField]
 case cType of
  ET_CHAR,
  ET_ARRA:
   if (wLength <= 255) then // на длинных пол€х все символы допустимы (из док. по HT)
    l3Replace(var aString   : String; lWrongChar[fTable.IsAnsi], cc_HardSpace);

   begin

   end;
  ET_BYTE: CheckValue(PByte(pValue)^ <> 255);
  ET_INTR: CheckValue(PSmallInt(pValue)^ <> -32768);
  ET_WORD,
  ET_DATE: CheckValue(PWord(pValue)^ <> 65535);
  ET_LONG: CheckValue(PLongInt(pValue)^ >= -2147483647);
  ET_DWRD: CheckValue(PLongWord(pValue)^ <> 4294967295);
//  ET_NMBR:
//  ET_FLOA:
//  ET_CURR:
//  ET_DFLT:
 end;
end;
*)

procedure TdtRecord.FillField(aField: ThtField; const aValue: array of const);
begin
 Assert(High(aValue) = 0, 'procedure TdtRecord.FillField:  только одно поле можно подать');

 FillField(aField, aValue[0]);
end;

procedure TdtRecord.FillField(aField: ThtField; const aValue: TVarRec);
var
 lFieldLen : Integer;
 lRecPtr   : Pointer;

 procedure AddStrToData(aStr : PAnsiChar; aStrLen : Integer);
 begin
  if aStrLen > 0 then
   l3Move(aStr^, lRecPtr^, Min(aStrLen, lFieldLen));
  if lFieldLen > aStrLen then
   l3FillChar((PAnsiChar(lRecPtr) + aStrLen)^, lFieldLen - aStrLen, 32);
 end;

var
 lTag : Ik2Tag;
 lInt : Integer;
begin
 lRecPtr := PAnsiChar(@fRecBuffer) + fTable.FldOffset[aField];
 lFieldLen := fTable.FldLength[aField];

 with aValue do
  case VType of
   vtInteger :
    l3Move(VInteger, lRecPtr^, lFieldLen);

   vtPChar :
    AddStrToData(VPChar, l3StrLen(VPChar));

   vtAnsiString :
    AddStrToData(PAnsiChar(String(VAnsiString)), Length(String(VAnsiString)));

   vtObject :
    if VObject = nil then
     AddStrToData(nil, 0)
    else
     if VObject is Tl3CustomString then
      with Tl3CustomString(VObject) do
       AddStrToData(St, Len);

   vtInterface:
    if Supports(IInterface(VInterface), Ik2Tag, lTag) then
     with lTag.AsPCharLen do
      AddStrToData(S, SLen)
    else
     AddStrToData(nil, 0);

   vtBoolean :
    begin
     lInt := Ord(VBoolean);
     l3Move(lInt, lRecPtr^, lFieldLen);
    end
   else
     Assert(False,'TCacheDiffAttrData.AddRecord данные левого типа');

  end; //case VType of
end;

procedure TdtRecord.FillRecord(const aRecordArr: array of const);
var
 I : Integer; // номер пол€ в рекорде = номер пол€ в таблице - 1 (суррогатный ключ не передаем)
begin
 Assert(High(aRecordArr) = fTable.FldCount, Format('“аблица %s Ќеверное количество полей', [fTable.TblName]));
 for I := 0 to High(aRecordArr) do
  FillField(Succ(I), aRecordArr[I]);
end;

end.