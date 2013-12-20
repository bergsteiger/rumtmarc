unit dt_DictSup;

interface

Uses
 dt_Types, dt_AttrSchema;

procedure dictChangeToLogFile(aAttrType: TCacheType; aDictID, aDocID, aSubID: Integer);

function dictLogFileToText: String;


implementation

Uses
 dt_TblCache, dt_Dict, dt_DictConst,
 RxStrUtils,
 SysUtils, Windows, Classes, dt_Const, dt_Doc, l3Base, l3String;

procedure dictChangeToLogFile(aAttrType: TCacheType; aDictID, aDocID, aSubID: Integer);
var
 l_S: String;
 l_Handle: Integer;
begin
 l_S:= Format('%d %d %d %d'#13#10, [Ord(aAttrType), aDictID, aDocID, aSubID]);
 if FileExists(DictChangeFileName) then
  l_Handle:= FileOpen(DictChangeFileName, fmOpenReadWrite + fmShareDenyNone)
 else
  l_Handle:= FileCreate(DictChangeFileName, fmOpenReadWrite + fmShareDenyNone);
 try
  if l_Handle > 0 then
  begin
   repeat
   until LockFile(l_Handle, 0, 0, 1, 0);
   try
    FileSeek(l_Handle, 0, soFromEnd);
    FileWrite(l_Handle, Pointer(l_S)^, Length(l_S));
   finally
    Win32Check(UnlockFile(l_Handle, 0, 0, 1, 0));
   end;
  end;
 finally
  if l_Handle > 0 then
   FileClose(l_Handle);
 end;
end;

function dictLogFileToText: String;

 function lp_ExtractParams(const aStr: String; out aDict: TDLType; out aDictID, aDocID, aSubID: Integer): Boolean;
 var
  i, l_Int: Integer;
  l_Word: String;
 begin
  l_Int:= StrToIntDef(ExtractWord(1, aStr, [' ']), -1);
  Result:= l_Int <> -1;
  if Result then
  begin
   if AttrCType2DictType(TCacheType(l_Int), aDict) then
   begin
    aDictID:= StrToIntDef(ExtractWord(2, aStr, [' ']), 0);
    aDocID:= StrToIntDef(ExtractWord(3, aStr, [' ']), 0);
    aSubID:= StrToIntDef(ExtractWord(4, aStr, [' ']), 0);
   end

  end;
 end;

var
 l_List, l_Result: TStringList;
 i: Integer;
 l_DictID, l_DocID, l_SubID: Integer;
 l_PrevDict, l_PrevDictID: Integer;
 l_Dict: TDLType;
 l_Dictionary: TDictionary;
begin
 Result := '';
 { 1. Читаем содержимое файла в память
   2. Из каждой строки выделяем словарь, документ и метку
   3. Преобразовываем идентификаторы в текст и добавляем к результату }
 l_List:= TStringList.Create;
 try
  l_List.LoadFromFile(DictChangeFileName);
  if l_List.Count > 0 then
  begin
   l_List.Sort; // список отсортирован по словарю и элементу словаря
   l_Result:= TStringList.Create;
   try
    l_PrevDict:= -1; l_PrevDictID:= -1;
    for i:= 0 to Pred(l_List.Count) do
    begin
     if lp_ExtractParams(l_List.Strings[i], l_Dict, l_DictID, l_DocID, l_SubID) then
     begin
      if l_PrevDict <> ord(l_Dict) then
      begin
       if l_Result.Count > 0 then
        l_Result.Add('');
       l_PrevDict:= ord(l_Dict);
       l_Dictionary:= DictServer(CurrentFamily).Dict[l_Dict];
       l_Dictionary.RootNode;
       l_Result.Add('Атрибут: '+cDLPassports[l_Dict].rName);
      end; // l_PrevAttr <> ord(l_Attr)
      if l_PrevDictID <> l_DictID then
      begin
       l_PrevDictID:= l_DictID;
       l_Result.Add('  Элемент: '+ l_Dictionary.GetFullDictItemName(l_DictID, False));
      end;
      l_Result.Add(Format('    Документ.Метка: %d.%d', [DocumentServer(CurrentFamily).GetRelImportNum(l_DocID), l_SubID]));
     end; // lp_ExtractParams
    end; // for i
    Result:= l_Result.Text;
   finally
    l3Free(l_Result);
   end;
  end;
 finally
  l3Free(l_List);
 end;
end;

end.
