unit ddDossierMaker;
{ Автоматическое создание досье для Постановлений Арбитражных судов }

interface

Uses
 l3Base, l3TempMemoryStream, l3Filer,
 //ServerTask,
 dt_Types, dt_AttrSchema, l3CustomString, ddProgressObj, CsExport, csProcessTask;

type
 TalcuDossierMaker = class(Tl3Base)
 private
  f_Filer: Tl3CustomFiler;
  f_Stream: Tl3TempMemoryStream;
  f_TopicNo: Integer;
  function ExportDocuments(aTask: TddProcessTask; aProgressor:
      TddProgressObject): Boolean;
  procedure GenerateDocId(var DocID: TDocID; const Alias: AnsiString);
  function ImportDocuments(aProgressor: TddProgressObject): Boolean;
  procedure _SkipDocument(aDocID : TDocID; WhyFlag : TSkipDocReason; UserID :
      Longint);
  procedure _StartTopic(aTopicNo: Longint; const aMessage: AnsiString);
  function _UpdateDicts(aDictType: TDLType; aDocID, aSubID: TSubID; aName:
      Tl3CustomString): Boolean;
 public
  function Execute(aTask: TddProcessTask; aProgressor: TddProgressObject):
      Boolean;
 end;

type
 TddDossierMakeTask = class(TcsExport)
 protected
  procedure DoRun(aProgressor: TddProgressObject); override;
  function GetDescription: AnsiString; override;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
 end;

procedure CorrectDossier(aProgressor: TddProgressObject);

implementation

Uses
 SewerPipe, ddImportPipeKernel,
 dd_lcDossierMaker, Document_Const, ddAppConfig, DT_Sab, dt_Doc, DT_Const,
 DT_Serv, evdWriter, evEvdRd, Classes, DT_User, DT_UserConst, DT_IFltr,
 SysUtils, csTaskTypes, Dt_Query, l3LongintList, DT_Link, DT_LinkServ,
 DT_DictConst, DT_Dict, DT_Renum, l3FieldSortRecList, DT_Record, DT_ATbl, ddServerTask;

type
 PRelInfoRec = ^TRelInfoRec;
 TRelInfoRec = packed record
  CaseCode: TNumberStr;
  RelID: TDocID;
  DocID: TDocID;
 end;


function CreateDossierSab(const aSab: ISab; aRenum: Boolean = False): IJoinSab;
var
 lSabLnk: ISab;
 lFileSab: ISab;
 lRenumSab : ISab;
 lJoinRenum_Link,
 lJoinFile_Link: IJoinSab;
 lJoinDict_Link: IJoinSab;
 lJoinSabSum: IJoinSab;
 lJoinFile_Renum   : IJoinSab;
const
 cCaseCodeType : TDNType = dnLawCaseNum;
 cDocTypeDossier : TUserType = utDossier;
begin
 lFileSab := MakeSabCopy(aSab);

 if aRenum then
 begin
  lRenumSab := MakeSabCopy(aSab);
  lRenumSab.ValuesOfKey(fRelated_fld);
 end;

 aSab.ValuesOfKey(fId_Fld);
 aSab.TransferToPhoto(lnkDocIDFld, LinkServer(CurrentFamily).Attribute[atDateNums]);
 aSab.ValuesOfKey(lnkDictIDFld);
 aSab.TransferToPhoto(dnIDFld, DictServer(CurrentFamily).GroupTbl[dlDateNums]);
 aSab.RecordsByKey;
 aSab.SubSelect(dnTypFld, cCaseCodeType);

 lSabLnk := MakeSabCopy(aSab);
 lSabLnk.ValuesOfKey(dnIDFld);

 lSabLnk.TransferToPhoto(lnkDictIDFld, LinkServer(CurrentFamily).Attribute[atDateNums]);
 lSabLnk.RecordsByKey;


 lJoinDict_Link := MakeJoinSab(lSabLnk, lnkDictIDFld,
                               aSab, dnIDFld);
 lJoinFile_Link := MakeJoinSab(lFileSab, fID_fld,
                               lSabLnk, lnkDocIDFld);

 if aRenum then
 begin
  lRenumSab.TransferToPhoto(lnkDocIDFld, LinkServer(CurrentFamily).Attribute[atRenum]);
  lRenumSab.RecordsByKey;

  lJoinFile_Renum := MakeJoinSab(lRenumSab, rnRealID_fld,
                                lFileSab, fRelated_fld);
  lJoinRenum_Link := MakeJoinSab(lJoinFile_Renum, lJoinFile_Link, True);
  lJoinSabSum := MakeJoinSab(lJoinRenum_Link, lJoinDict_Link, True); // <- все справки с сс
 end
 else
  lJoinSabSum := MakeJoinSab(lJoinFile_Link, lJoinDict_Link, True); // <- все справки с сс

 lJoinSabSum.SortJoin([JFRec(aSab.Table, dnNumFld)]);
 Result := lJoinSabSum;
end;

procedure CorrectDossier(aProgressor: TddProgressObject);
var
 lSab      : ISab;

 l_FASSab,
 l_AASSab  : ISab;
 l_RelSab,
 l_RelFASSab: IJoinSab;

 l_ResQuery: TdtAndQuery;
 l_Q       : TdtQuery;
 l_List: Tl3LongintList;
 l_FASList: Tl3FieldSortRecList;
 l_AASList: Tl3FieldSortRecList;
 l_Rec: TRelInfoRec;
 l_Index: Integer;
 i: Integer;
 lRecord: TdtRecord;
 l_Docs, l_Rels: Tl3LongintList;
begin
 lSab := MakeEmptySab(MakePhoto(GlobalHtServer.GetTblObjectEx(CurrentFamily, Ord(ftFile))));
 lSab.SelectAll;
 //l_RelSab:= CreateDossierSab(lSab);
 // Ищем все ФАСы
 l_ResQuery := TdtAndQuery.Create;
 try
  l_List := Tl3LongintList(ddAppConfiguration.AsObject['ccSource']); // Выбранные группы документов
  l_Q := TdtDictQuery.Create(dlSources, l_List, False, True {WithSubTree});
  l_ResQuery.AddQueryF(l_Q);

   l_List := Tl3LongintList(ddAppConfiguration.AsObject['ccType']);
   l_Q := TdtDictQuery.Create(dlTypes, l_List, False, True {WithSubTree});
   l_ResQuery.AddQueryF(l_Q);
  l_FASSab:= l_ResQuery.FoundList;
 finally
  l3Free(l_ResQuery);
 end;
 // Ищем все ААСы
 l_ResQuery := TdtAndQuery.Create;
 try
  l_List := Tl3LongintList(ddAppConfiguration.AsObject['dosSource']); // Выбранные группы документов
  l_Q := TdtDictQuery.Create(dlSources, l_List, False, True {WithSubTree});
  l_ResQuery.AddQueryF(l_Q);

   l_List := Tl3LongintList(ddAppConfiguration.AsObject['dosType']);
   l_Q := TdtDictQuery.Create(dlTypes, l_List, False, True {WithSubTree});
   l_ResQuery.AddQueryF(l_Q);
  l_AASSab:= l_ResQuery.FoundList;
 finally
  l3Free(l_ResQuery);
 end;

  l_AASSab.ValuesOfKey(fRelated_fld);
  l_AASSab.RecordsByKey;

  l_FASSab.SubtractSab(l_AASSab);

  l_RelFASSab:= CreateDossierSab(l_FASSab);// Список справок с сс
  l_RelSab:= CreateDossierSab(l_AASSab);

 l_FASList := dtMakeRecListByJoinSab(l_RelFASSab, [JFRec(DictServer(CurrentFamily).GroupTbl[dlDateNums], dnNumFld),
                                                JFRec(DocumentServer.FileTbl, fRelated_fld),
                                                JFRec(DocumentServer.FileTbl, fId_Fld)], [1]);
 try
  l_AASList := dtMakeRecListByJoinSab(l_RelSab, [JFRec(DictServer(CurrentFamily).GroupTbl[dlDateNums], dnNumFld),
                                                 JFRec(DocumentServer.FileTbl, fRelated_fld),
                                                JFRec(DocumentServer.FileTbl, fId_Fld)], [1]);
  try
   // Теперь нужно пробежаться по l_FASList и найти для них правильные справки
   aProgressor.Start(l_FASList.Hi);
   DocumentServer.FileTbl.StartCaching([roUpdate]);
   try
    l_Docs:= Tl3LongintList.Make;
    try
     l_Rels:= Tl3LongintList.Make;
     try
      for i:= 0 to l_FASList.Hi do
      begin
       l_Rec:= PRelInfoRec(l_FASList.ItemSlot(i))^;
       if l_AASList.FindRecord(l_Rec, l_Index) then
       begin
        lRecord := DocumentServer.FileTbl.GetRecordByUniq(l_Rec.DocID);
        if lRecord.WasFound then
        begin
         l3System.Msg2Log('DocID:%d RelID:%d->%d', [l_Rec.DocID, l_Rec.RelID, PRelInfoRec(l_AASList.ItemSlot(l_Index))^.RelID]);
         l_Rels.Add(l_Rec.RelID);
         lRecord.Get;
         lRecord.FillField(fRelated_Fld, [PRelInfoRec(l_AASList.ItemSlot(l_Index))^.RelID]);
         lRecord.Update;
         l_Docs.Add(l_Rec.DocID);
        end;
       end; // if l_AASList.FindRecord(l_Rec, l_Index)
       aProgressor.ProcessUpdate(1);
      end; // for i
      // Пометить доки как измененные
      LinkServer(CurrentFamily).LogBook.PutLogRecToDocs(
              MakeValueSet(DocumentServer.FileTbl, fId_Fld, l_Docs), acAttrWork);
      //Удалить неправильные справки
      DocumentServer.DelDocs(MakeValueSet(DocumentServer.FileTbl, fRelated_fld, l_Rels));
     finally
      l3Free(l_Rels);
     end;
    finally
     l3Free(l_Docs);
    end;
   finally
    DocumentServer.FileTbl.StopCaching;
   end;
   aProgressor.Stop;
  finally
   l3Free(l_AASList);
  end;

 finally
  l3Free(l_FASList);
 end;
end;

function TalcuDossierMaker.Execute(aTask: TddProcessTask; aProgressor:
    TddProgressObject): Boolean;
begin
 Result := False;
 f_Stream:= Tl3TempMemoryStream.Create;
 try
  f_Filer:= Tl3CustomFiler.Create(nil);
  try
   f_Filer.Stream:= f_Stream;
   if ExportDocuments(aTask, aProgressor) then
    Result:= ImportDocuments(aProgressor);
  finally
   l3Free(f_Filer);
  end;
 finally
  l3Free(f_Stream);
 end;
end;

function TalcuDossierMaker.ExportDocuments(aTask: TddProcessTask; aProgressor:
    TddProgressObject): Boolean;
var
 l_OutPipe: TSewerPipe;
 l_Maker: TlcDossierMaker;
 l_Writer: TevdNativeWriter;
 l_DR: TDiapasonRec;
 l_Sab: ISab;
begin
 // Экспортируем во временный файл           l3IniFile
 l_OutPipe:= TSewerPipe.Create(nil);
 try
  l_OutPipe.Progressor:= aProgressor;
  l_OutPipe.ExportDocument:= True;
  l_DR.Typ:= TddDossierMakeTask(aTask).DiapasonType;
  if l_DR.Typ = tdNumList then
  begin
   DocumentServer.Family:= CurrentFamily;
   l_Sab:= MakeValueSet(DocumentServer.FileTbl, fID_Fld, TcsExport(aTask).SABStream);
   l_Sab.Sort;
   l_DR.List:= l_Sab.HTSab;
  end
  else
   l_DR.ID:= TcsExport(aTask).DocID;
  l_DR.ExternalFormat:= False;
  l_DR.Choise:= 1;
  l_OutPipe.Diapason:= l_DR;

  l_Maker:= TlcDossierMaker.Create(nil);
  try
   l_Maker.OnNewDocument:= GenerateDocID;
   l_Maker.SourcesList:= Tl3LongintList(ddAppConfiguration.AsObject['dosSource']);
   l_Writer:= TevdNativeWriter.Create(nil);
   try
    l_Writer.Filer:= f_Filer;
    l_OutPipe.Writer:= l_Maker;
    l_Maker.Generator:= l_Writer;
    Result:= l_OutPipe.Execute;
   finally
    l3Free(l_Writer);
   end;
  finally
   l3Free(l_Maker);
  end;
 finally
  l3Free(l_OutPipe);
 end;
end;

procedure TalcuDossierMaker.GenerateDocId(var DocID: TDocID; const Alias: AnsiString);
begin
 { TODO : Разобраться - это вообще кому-нибудь нужно? }
 DocID:= GlobalHTServer.FreeTbl[CurrentFamily].GetFree(Alias);
end;

function TalcuDossierMaker.ImportDocuments(aProgressor: TddProgressObject):
    Boolean;
var
 l_InPipe: TddImportPipeFilter;
 l_Reader: TevEvdReader;
 l_Filer: Tl3CustomFiler;
begin
 l_InPipe:= TddImportPipeFilter.Create(CurrentFamily);
 try
  l_InPipe.UpdateTables:= False;
  l_InPipe.CheckDocuments:= False;
  l_InPipe.NeedLockBase:= False;
  l_InPipe.DocumentReaction:= sdrIgnore;
  l_InPipe.DeleteConditions := [dcAny];
  l_InPipe.InternalFormat:= False;
  l_InPipe.UserID:= usServerService;
  l_InPipe.OnTopicStart:= _StartTopic;
  l_InPipe.OnSkipDocument:= _SkipDocument;
  l_InPipe.OnDictionaryUpdate:= _UpdateDicts;
  l_Reader:= TevEvdReader.Create;
  try
   l_Filer:= Tl3CustomFiler.Create(nil);
   try
    l_Filer.Indicator.OnProgressProc:= aProgressor.ProcessUpdate;
    l_Filer.Indicator.NeedProgressProc:= True;
    f_Stream.Seek(0, 0);
    l_Filer.Stream:= f_Stream;
    l_Reader.Filer:= l_Filer;
    l_Reader.Generator:= l_InPipe;
    l_Reader.Execute;
   finally
    l3Free(l_Filer);
   end;
  finally
   l3Free(l_Reader);
  end;
 finally
  l3Free(l_InPipe);
 end;
end;

procedure TalcuDossierMaker._SkipDocument(aDocID : TDocID; WhyFlag :
    TSkipDocReason; UserID: Longint);
var
 aUserName,aLoginName : ShortString;
 aActFlag             : Byte;
 l_Msg: AnsiString;
begin
 if UserID > -1 then
  UserManager.GetUserInfo(UserID, aUserName, aLoginName, aActFlag);
  { Накапливаем сообщения о пропущенных документах }
 case WhyFlag of
  srUnknown       : l_Msg:= 'Причина неизвестна';
  srAlreadyExists : l_Msg:= Format('   #%d - существует в базе', [aDocID]);
  srBusy          : l_Msg:= Format('   #%d - занят пользователем %s', [aDocID, aUserName]);
  srCantBeDeleted : l_Msg:= Format('   #%d - не прошел проверку условий удаления', [aDocID]);
  srAccessDenied  : l_Msg:= 'Не удалось удалить исходный документ';
  srNoHandle      : l_Msg:= 'Не задан номер документа';
 end; // case WhyFlag
 l3System.Msg2Log(l_Msg);
end;

procedure TalcuDossierMaker._StartTopic(aTopicNo: Longint; const aMessage: AnsiString);
var
 l_Msg : AnsiString;
begin
 f_TopicNo:= aTopicNo;
 l_Msg := Format('Начался документ № %d', [f_TopicNo]);
 l3System.Msg2Log(l_Msg);
end;

function TalcuDossierMaker._UpdateDicts(aDictType: TDLType; aDocID, aSubID:
    TSubID; aName: Tl3CustomString): Boolean;
begin
 Result:= True;
end;

constructor TddDossierMakeTask.Create(aOwner: TObject; aUserID: TUserID);
begin
  inherited;
  TaskType              := cs_ttDossierMake;
  DiapasonType          := tdNumList;
  ExportEmptyKW         := False;
  ExportDocument        := True;
  ExportRTFBody         := False;
  ExportKW              := False;
  ExportDocImage        := False;
  MultiUser             := True;
  Family                := CurrentFamily;
  InternalFormat        := False;
  OutFileType           := ord(outEVD);
  SeparateFiles         := Ord(divNone);
  DocumentFileNameMask  := '';
  ReferenceFileNameMask := '';
  ObjTopicFileName      := '';
  KWFileName            := '';
  OutputFileSize        := 0;
  ExportAnnoTopics      := False;
  AnnoTopicFileName     := '';
end;

procedure TddDossierMakeTask.DoRun(aProgressor: TddProgressObject);
begin
 with TalcuDossierMaker.Create(nil) do
 try
  Execute(Self, aProgressor);
 finally
  Free;
 end;
end;

function TddDossierMakeTask.GetDescription: AnsiString;
begin
 Result:= 'Создание справок для постановлений ААС';
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\dd\ddDossierMaker.pas initialization enter'); {$EndIf}
 RegisterTaskClass(cs_ttDossiermake, TddDossierMakeTask, 'Создание справок постановленим ААС');
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\dd\ddDossierMaker.pas initialization leave'); {$EndIf}
end.


