unit ddAutolinkCache;

{ $Id: ddAutolinkCache.pas,v 1.23 2013/04/25 03:56:21 fireton Exp $ }

// $Log: ddAutolinkCache.pas,v $
// Revision 1.23  2013/04/25 03:56:21  fireton
// - нормализуем номер судебного дела
//
// Revision 1.22  2013/04/11 16:46:27  lulin
// - отлаживаем под XE3.
//
// Revision 1.21  2013/02/05 08:17:24  fireton
// - не ругаемся при обновлении, если нет таблиц кэша автопростановщика
//
// Revision 1.20  2012/12/20 09:08:11  narry
// Обновление
//
// Revision 1.19  2012/12/17 09:32:41  fireton
// - bugfix: не работало определение наличия на диске кэша структур
//
// Revision 1.18  2012/12/12 10:51:43  fireton
// - строим все возможные комбинации номеров и дат опубликования
//
// Revision 1.17  2012/11/28 09:00:05  fireton
// - bugfix: некорректно копировался внешний кэш структур на splitted storage
//
// Revision 1.16  2012/11/27 03:54:14  fireton
// - обновляем таблицы кэша автопростановщика
//
// Revision 1.15  2012/11/22 09:57:03  fireton
// - поддержка splitted storage
//
// Revision 1.14  2012/09/14 08:12:02  fireton
// - выделяем создание кэша в отдельную процедуру
//
// Revision 1.13  2012/08/14 11:37:21  fireton
// - отдельное поле номера дела в кэше автопростановщика
//
// Revision 1.12  2011/06/10 11:52:40  voba
// - DocumentServer сделал функцией function DocumentServer(aFamily : TFamilyID), что бы отдельно Family не присваивать
//
// Revision 1.11  2011/06/03 11:14:19  fireton
// - не было индексов и всё дико тормозило
//
// Revision 1.10  2011/06/02 13:18:47  narry
// no message
//
// Revision 1.9  2011/06/02 12:13:20  fireton
// - держим таблицы автопростановки ссылок постоянно открытыми
//
// Revision 1.8  2011/05/17 12:28:42  fireton
// - тестовый код попал в CVS (исправлено)
//
// Revision 1.7  2011/05/13 14:31:53  fireton
// - слияние с веткой
//
// Revision 1.6.2.3  2011/05/13 14:25:40  fireton
// - избегаем ненужных действий при обновлении кэша
// - не удаляем кэш структур при обновлении
//
// Revision 1.6.2.2  2011/05/12 13:05:44  fireton
// - обновление кэшей
//
// Revision 1.6.2.1  2011/05/06 12:26:10  fireton
// - двойной кэш автопростановщика
//
// Revision 1.6  2011/04/13 10:50:20  fireton
// - переводим простановку ссылок на внешние номера документов
//
// Revision 1.5  2011/03/15 14:39:04  fireton
// - оптимизация по скорости
//
// Revision 1.4  2011/03/09 13:09:21  fireton
// - оптимизация построения кэша редакций
//
// Revision 1.3  2011/03/04 07:57:32  fireton
// - разнёс процедуры по локальным
//
// Revision 1.2  2011/03/03 08:38:20  fireton
// - кэш структур для простановщика ссылок
//
// Revision 1.1  2011/03/01 13:23:02  fireton
// - кэш данных для простановщика ссылок
//

{$I ProjectDefine.inc}

interface
uses
 l3Types,
 l3Date,

 HT_Const,

 DtIntf,
 DT_Types,
 DT_Sab
 ;


type
 PCacheRec = ^TCacheRec;
 TCacheRec = packed record
  rExtDocID : TDocID;
  rIntDocID : TDocID;
  rType     : TDictID;
  rSource   : TDictID;
  rDate     : TStDate;
  rNumber   : TNumberStr;
  rCaseCode : TNumberStr;
 end;

 PVersionRec = ^TVersionRec;
 TVersionRec = packed record
  rMasterDoc : TDocID;
  rIntDocID  : TDocID;
  rExtDocID  : TDocID;
  rStart     : TStDate;
  rFinish    : TStDate;
 end;

 TddAutolinkCacheType  = (dsLocal, dsRemote);
 TddAutolinkCacheTypes = set of TddAutolinkCacheType;

const
 falmExtDocID    = 1;
 falmIntDocID    = 2;
 falmType        = 3;
 falmSource      = 4;
 falmDate        = 5;
 falmNumber      = 6;
 falmLawCase     = 7;

 falvMasterDocID = 1;
 falvIntDocID    = 2;
 falvExtDocID    = 3;
 falvStart       = 4;
 falvFinish      = 5;

const
 cALCacheMainTblStruct : array[1..7] of ThtElementInfo = (
  (wLength: 4;  wOffset: 0;  cClass: EC_FIELD; cType: ET_DWRD; cKey: EK_NOTKEY; mName: 'EXTDOCID'), // внешний
  (wLength: 4;  wOffset: 4;  cClass: EC_FIELD; cType: ET_DWRD; cKey: EK_NOTKEY; mName: 'INTDOCID'), // внутренний
  (wLength: 4;  wOffset: 8;  cClass: EC_FIELD; cType: ET_DWRD; cKey: EK_COMMON; mName: 'DTYPE'),
  (wLength: 4;  wOffset: 12; cClass: EC_FIELD; cType: ET_DWRD; cKey: EK_COMMON; mName: 'SOURCE'),
  (wLength: 4;  wOffset: 16; cClass: EC_FIELD; cType: ET_DWRD; cKey: EK_COMMON; mName: 'DATE'),
  (wLength: 50; wOffset: 20; cClass: EC_FIELD; cType: ET_CHAR; cKey: EK_COMMON; mName: 'NUM'),
  (wLength: 50; wOffset: 70; cClass: EC_FIELD; cType: ET_CHAR; cKey: EK_COMMON; mName: 'LAWCASE')
 );

 cALCacheVerTblStruct : array[1..5] of ThtElementInfo = (
  (wLength: 4; wOffset: 0;  cClass: EC_FIELD; cType: ET_DWRD; cKey: EK_COMMON; mName: 'MDOCID'),    // внешний
  (wLength: 4; wOffset: 4;  cClass: EC_FIELD; cType: ET_DWRD; cKey: EK_NOTKEY; mName: 'INTDOCID'),  // внутренний
  (wLength: 4; wOffset: 8;  cClass: EC_FIELD; cType: ET_DWRD; cKey: EK_NOTKEY; mName: 'EXTDOCID'),  // внешний
  (wLength: 4; wOffset: 12; cClass: EC_FIELD; cType: ET_DWRD; cKey: EK_COMMON; mName: 'START'),
  (wLength: 4; wOffset: 16; cClass: EC_FIELD; cType: ET_DWRD; cKey: EK_COMMON; mName: 'FINISH')
 );

function GetAutolinkStructCacheFilePath(aType: TddAutolinkCacheType): AnsiString;

procedure BuildActualDocsCache(aProgressProc: Tl3ProgressProc = nil; aDocList: ISab = nil);
procedure BuildEditionsCache(aProgressProc: Tl3ProgressProc = nil; aDocList: ISab = nil);

procedure BuildStructCache(aProgressProc: Tl3ProgressProc = nil; const aDocList: ISab = nil);
// строит кэш структур документов для простановщика

procedure MakeRemoteAutolinkCache(const aDestDir: AnsiString);

procedure TouchAutolinkCache;
function  GetLastUpdateDateAndTime: TDateTime;

procedure CreateAutolinkCache(aProgressProc: Tl3ProgressProc = nil);
procedure UpdateAutolinkCache(aProgressProc: Tl3ProgressProc = nil);

procedure CreateOrUpdateAutoLinkCache(aProgressProc: Tl3ProgressProc = nil);

function GetALCacheMainTblPath(aCacheType: TddAutolinkCacheType; const aDir: AnsiString = ''): AnsiString;
function GetALCacheVerTblPath(aCacheType: TddAutolinkCacheType; const aDir: AnsiString = ''): AnsiString;

procedure UpdateAutolinkCacheTables;

implementation
uses
 SysUtils,
 StrUtils,

 l3Base,
 l3Interfaces,
 l3Filer,
 l3String,
 l3FileUtils,
 l3FieldSortRecList,
 l3IniFile,

 HT_Dll,

 DT_Const,
 DT_Table,
 DT_AttrSchema,
 DT_Active,
 DT_Doc,
 DT_Link,
 DT_LinkServ,
 DT_Serv,
 DT_Dict,
 DT_DictConst,
 DT_Query,
 DT_SrchQueries,
 DT_Err,
 DT_Renum,
 DT_Log,

 ddDocStruct,
 ddUtils,
 ddAutolinkUtils,

 m3StorageTools
 ;

const
 cALCacheMainTblName = 'ALINKM';
 cALCacheVerTblName  = 'ALINKV';

 cCacheFNSuffix: array[TddAutolinkCacheType] of string[2] = ('L', 'R');

 cALCfgSection = 'AutoLink';
 cALLastUpdate = 'LastCacheUpdate';

type
 PVersionCalcRec = ^TVersionCalcRec; // потому как ищем мы по внутреннему номеру, а на выходе нужен внешний...
 TVersionCalcRec = packed record
  rMasterIntDoc : TDocID;
  rMasterExtDoc : TDocID;
  rIntDocID     : TDocID;
  rExtDocID     : TDocID;
  rStart        : TStDate;
  rFinish       : TStDate;
 end;

function GetAllActualEditions(const aDocList: ISab = nil): ISab;
var
 l_UserType: TUserType;
 l_Query: TdtQuery;
 l_Q    : TdtQuery;
 l_DocType : TDocType;
begin
 l_UserType := utEdition;
 l_Query := TdtMainAttrQuery.Create(fUserType_Fld, l_UserType);
 try
  SQNot(l_Query);
  l_DocType := dtText;
  l_Q := TdtMainAttrQuery.Create(fType_Fld, l_DocType);
  SQAndF(l_Query, l_Q);

  if aDocList <> nil then
  begin
   l_Q := TdtIDListQuery.CreateFrom(aDocList);
   SQAndF(l_Query, l_Q);
  end;

  (*
  // для тестовых целей ограничиваем выборку
  l_Q := TdtDictQuery.Create(dlTypes, 248); // Федеральные законы
  SQAndF(l_Query, l_Q);
  *)

  Result := l_Query.FoundList;
 finally
  FreeAndNil(l_Query);
 end;
end;

function GetAutolinkStructCacheFileName(aType: TddAutolinkCacheType): AnsiString;
begin
 Result := 'linkcache' + cCacheFNSuffix[aType] + '.dat';
end;


function GetAutolinkStructCacheFilePath(aType: TddAutolinkCacheType): AnsiString;
begin
 Result := ConcatDirName(GlobalHtServer.Family[CurrentFamily].Path,
     GetAutolinkStructCacheFileName(aType));
end;

function GetALCacheMainTblPath(aCacheType: TddAutolinkCacheType; const aDir: AnsiString = ''): AnsiString;
var
 l_Name: AnsiString;
begin
 l_Name := cALCacheMainTblName + cCacheFNSuffix[aCacheType];
 if aDir <> '' then
  Result := ConcatDirName(aDir, l_Name)
 else
  Result := l_Name;
end;

function GetALCacheVerTblPath(aCacheType: TddAutolinkCacheType; const aDir: AnsiString = ''): AnsiString;
var
 l_Name: AnsiString;
begin
 l_Name := cALCacheVerTblName + cCacheFNSuffix[aCacheType];
 if aDir <> '' then
  Result := ConcatDirName(aDir, l_Name)
 else
  Result := l_Name;
end;


procedure BuildActualDocsCache(aProgressProc: Tl3ProgressProc = nil; aDocList: ISab = nil);
var
 I: Integer;
 l_DNType: TDNType;
 l_Sab1, l_Sab2: ISab;
 l_DNLinkTbl: ITblInfo;
 l_DNDataTbl1, l_DNDataTbl2 : ITblInfo;
 l_TypesTbl: ITblInfo;
 l_SrcTbl  : ITblInfo;
 l_RenumTbl: ITblInfo;
 l_DNTypesSab: ISab;
 l_CaseCodeSab: ISab;
 l_CC: Il3CString;
 l_ResultSab: IJoinSab;
 l_JoinSab, l_JoinSab2: IJoinSab;
 l_DocSab1, l_DocSab2 : IJoinSab;
 l_FileDNLink1, l_FileDNLink2, l_FileDNLink3: IJoinSab;
 l_SC: ISabCursor;
 l_RTableName: AnsiString;
 l_H: ThtTblHandle;
 l_Table: TdtTable;
 l_Rec: TCacheRec;
 l_DocSab: ISab;
 l_FileTbl: ITblInfo;
 l_LCDataTbl: ITblInfo;
 l_Tbl : TdtTable;
 l_Value: TNumberStr;

 procedure DoProgress(aState: Byte; aValue: Integer; const aMsg: AnsiString = '');
 begin
  if Assigned(aProgressProc) then
   aProgressProc(aState, aValue, aMsg);
 end;

begin
 DoProgress(piStart, 0, 'Кэш документов: получение данных');

 // сначала отбираем актуальные редакции

 l_FileTbl := DocumentServer(CurrentFamily).FileTbl;
 l_DocSab := GetAllActualEditions(aDocList);

 // теперь нам надо получить список дат и номеров (published и casecode)
 l_DNLinkTbl := LinkServer(CurrentFamily).Links[dlDateNums];
 l_DNDataTbl1 := DictServer(CurrentFamily).Tbl[dlDateNums]; // даты-номера для дат
 l_Tbl := TdtTable.CreateDup(DictServer(CurrentFamily).Tbl[dlDateNums]); // дубликат дат-номеров для номеров
 try
  l_DNDataTbl2 := l_Tbl;
 finally
  FreeAndNil(l_Tbl);
 end;
 l_Tbl := TdtTable.CreateDup(DictServer(CurrentFamily).Tbl[dlDateNums]); // дубликат дат-номеров для кейскодов
 try
  l_LCDataTbl := l_Tbl;
 finally
  FreeAndNil(l_Tbl);
 end;

 l_Sab1 := MakeSabCopy(l_DocSab);
 l_Sab2 := MakeAllRecords(l_DNLinkTbl);
 l_FileDNLink1 := MakeJoinSab(l_Sab1, fId_Fld, l_Sab2, lnkDocIDFld);  // FILE + LinkDN
 l_FileDNLink2 := MakeJoinSab(l_Sab1, fId_Fld, l_Sab2, lnkDocIDFld);  // FILE + LinkDN
 l_FileDNLink3 := MakeJoinSab(l_Sab1, fId_Fld, l_Sab2, lnkDocIDFld);  // FILE + LinkDN
 l_Sab1 := nil;
 l_Sab2 := nil;

 // теперь готовим выборку нужных дат-номеров
 l3FillChar(l_Value, SizeOf(TNumberStr));
 l_DNTypesSab := MakeSab(l_DNDataTbl1);
 l_DNType := dnPublish;
 l_DNTypesSab.Select(dnTypFld, l_DNType);
 l_DNTypesSab.SubSelect(dnDateFld, l_Value, NOT_EQUAL); // выкидываем данные с пустой датой
 l_JoinSab := MakeJoinSab(MakeAllRecords(l_DNLinkTbl), lnkDictIDFld, l_DNTypesSab, dnIDFld); // LinkDN + DN
 l_DocSab1 := MakeJoinSab(l_FileDNLink1, l_JoinSab, True); // FILE + DN
 l_FileDNLink1 := nil;
 l_JoinSab := nil;

 l_DNTypesSab := MakeSab(l_DNDataTbl2);
 l_DNType := dnPublish;
 l_DNTypesSab.Select(dnTypFld, l_DNType);
 l_DNTypesSab.SubSelect(dnNumFld, l_Value, NOT_EQUAL); // выкидываем данные с пустым номером
 l_JoinSab := MakeJoinSab(MakeAllRecords(l_DNLinkTbl), lnkDictIDFld, l_DNTypesSab, dnIDFld); // LinkDN + DN

 l_DocSab2 := MakeJoinSab(l_FileDNLink2, l_JoinSab, True); // FILE + DN
 l_FileDNLink2 := nil;
 l_JoinSab := nil;

 l_DocSab1 := MakeJoinSab(l_DocSab1, l_DocSab2, False, DRAFT_ALL); // перемножаем даты и номера сами на себя с тем,
 l_DocSab2 := nil;                                                 // чтобы получились все возможные комбинации дат и номеров

 // а теперь - выборку из кейскодов
 l_CaseCodeSab := MakeSab(l_LCDataTbl);
 l_DNType := dnLawCaseNum;
 l_CaseCodeSab.Select(dnTypFld, l_DNType);
 l_JoinSab2 := MakeJoinSab(MakeAllRecords(l_DNLinkTbl), lnkDictIDFld, l_CaseCodeSab, dnIDFld); // LinkDN + LC
 l_DocSab2 := MakeJoinSab(l_FileDNLink3, l_JoinSab2, True); // FILE + LC
 l_FileDNLink3 := nil;
 l_JoinSab2 := nil;

 l_CaseCodeSab := nil;
 l_DNTypesSab := nil;

 l_ResultSab := MakeJoinSab(l_DocSab1, l_DocSab2, False, DRAFT_ALL); // FILE + DN/LC
 l_DocSab1 := nil;
 l_DocSab2 := nil;

 // получаем выборку из типов
 l_TypesTbl := LinkServer(CurrentFamily).Links[dlTypes];
 l_Sab1 := MakeSabCopy(l_DocSab);
 l_Sab2 := MakeAllRecords(l_TypesTbl);
 l_JoinSab := MakeJoinSab(l_Sab1, fId_Fld, l_Sab2, lnkDocIDFld);  // FILE + LinkTypes
 l_Sab1 := nil;
 l_Sab2 := nil;

 l_ResultSab := MakeJoinSab(l_ResultSab, l_JoinSab); // FILE + DN + Types
 l_JoinSab := nil;

 // повторяем фокус с источниками
 l_SrcTbl := LinkServer(CurrentFamily).Links[dlSources];
 l_Sab1 := MakeSabCopy(l_DocSab);
 l_Sab2 := MakeAllRecords(l_SrcTbl);
 l_JoinSab := MakeJoinSab(l_Sab1, fId_Fld, l_Sab2, lnkDocIDFld);  // FILE + LinkSources
 l_Sab1 := nil;
 l_Sab2 := nil;

 l_ResultSab := MakeJoinSab(l_ResultSab, l_JoinSab); // FILE + DN + Types + Sources
 l_JoinSab := nil;

 // добавляем внешние номера документов
 l_RenumTbl := LinkServer(CurrentFamily).Renum;
 l_Sab1 := MakeSabCopy(l_DocSab);
 l_Sab2 := MakeAllRecords(l_RenumTbl);
 l_JoinSab := MakeJoinSab(l_Sab1, fId_Fld, l_Sab2, rnRealID_fld);  // FILE + Renum
 l_Sab1 := nil;
 l_Sab2 := nil;

 l_ResultSab := MakeJoinSab(l_ResultSab, l_JoinSab); // FILE + DN + Types + Sources + Renum
 l_JoinSab := nil;


 // а теперь - ДИСКОТЕКА!
 l_SC := l_ResultSab.MakeJoinSabCursor([JFRec(l_RenumTbl,  rnImportID_fld),
                                        JFRec(l_FileTbl,   fId_Fld),
                                        JFRec(l_TypesTbl,  lnkDictIDFld),
                                        JFRec(l_SrcTbl,    lnkDictIDFld),
                                        JFRec(l_DNDataTbl1, dnDateFld),
                                        JFRec(l_DNDataTbl2, dnNumFld),
                                        JFRec(l_LCDataTbl, dnNumFld)],
                                        cmForward, ROPEN_READ);

 l_RTableName := ConcatDirName(GlobalHTServer.Family[CurrentFamily].Path, GetALCacheMainTblPath(dsLocal));
 if FileExists(l_RTableName+'.HTB') then
 begin
  if aDocList = nil then
   htDropTableData(PAnsiChar(l_RTableName), nil, nil) // очищаем всю таблицу
  else
  begin
   // очищаем только те документы, которые меняются
   l_Sab1 := MakeSabCopy(aDocList);
   l_Table := TdtTable.CreateWithOpen(GlobalHTServer.Family[CurrentFamily].Path, '', GetALCacheMainTblPath(dsLocal), TAB_PRIVATE);
   try
    l_Sab1.TransferToPhoto(falmIntDocID, l_Table);
   finally
    FreeAndNil(l_Table)
   end;
   l_Sab1.RecordsByKey;
   l_Sab1.DeleteFromTable;
   l_Sab1 := nil;
  end;
 end
 else
 begin
  // таблицы нет - надо создать
  Ht(htTableCreate(PAnsiChar(l_RTableName), @cALCacheMainTblStruct, High(cALCacheMainTblStruct), nil, nil, nil, TAB_PRIVATE or TAB_ANSI, l_H));
  htTableClose(l_H);
 end;

 l_Table := TdtTable.CreateWithOpen(GlobalHTServer.Family[CurrentFamily].Path, '', GetALCacheMainTblPath(dsLocal), TAB_PRIVATE);
 try
  DoProgress(piStart, l_SC.Count, 'Кэш документов: вывод данных');
  for I := 0 to l_SC.Count - 1 do
  begin
   l_Rec := PCacheRec(l_SC.GetItem(I))^;
   l_Rec.rIntDocID := 0; // в кэше первоначально нет внутренних номеров документов
   l_CC := l3CStr(l3ArrayToPCharLen(l_Rec.rCaseCode,cDNNumberLen));
   l_CC := NormalizeCasecode(l_CC);
   l3PCharLenToArray(l_Rec.rCaseCode, cDNNumberLen, l_CC.AsWStr);
   l_CC := nil;
   l_Table.AddRec(@l_Rec);
   if I mod 500000 = 0 then
    l_Table.UpdateTbl;
   if I mod 200 = 0 then
    DoProgress(piCurrent, I + 1);
  end;
  DoProgress(piEnd, 0);
  l_Table.UpdateTbl;
 finally
  FreeAndNil(l_Table);
 end;
end;

procedure BuildEditionsCache(aProgressProc: Tl3ProgressProc = nil; aDocList: ISab = nil);
var
 J: Integer;
 I: Integer;
 l_RTableName: AnsiString;
 l_H: ThtTblHandle;
 l_Table: TdtTable;
 l_ActTable: ITblInfo;
 l_MasterVerSab: ISab;
 l_Sab: ISab;
 l_JoinSab: IJoinSab;
 l_MasterList     : Tl3FieldSortRecList;
 l_EditionsList   : Tl3FieldSortRecList;
 l_AccumulateList : Tl3FieldSortRecList;
 l_TempList       : Tl3FieldSortRecList;
 l_DocType : TDocType;
 l_UserType: TUserType;
 l_FoundSome: Boolean;
 l_MIdx, l_EIdx : Integer;
 l_CalcRec   : TVersionCalcRec;
 l_PCalcRec   : PVersionCalcRec;
 l_ResultRec : TVersionRec;
 l_AllRenumSab: ISab;
 l_RenumTblFile: ITblInfo;
 l_RenumSabFile: IJoinSab;
 l_RenumTblVLnk: ITblInfo;
 l_RenumSabVLnk: IJoinSab;
 l_TmpTbl : TdtTable;
 l_DocSab: ISab;
 l_FileTbl: ITblInfo;
const
 l_ActType    : Longword = 0;
 l_BlankDocID : TDocID = cBlankDocID;

 function l_CurM: PVersionCalcRec;
 begin
  Result := PVersionCalcRec(l_MasterList.ItemSlot(l_MIdx));
 end;

 function l_CurE: PVersionCalcRec;
 begin
  Result := PVersionCalcRec(l_EditionsList.ItemSlot(l_EIdx));
 end;

 procedure DoProgress(aState: Byte; aValue: Integer; const aMsg: AnsiString = '');
 begin
  if Assigned(aProgressProc) then
   aProgressProc(aState, aValue, aMsg);
 end;

begin
 // сначала отбираем актуальные редакции
 l_DocSab := GetAllActualEditions(aDocList);
 l_FileTbl := DocumentServer(CurrentFamily).FileTbl;

 // данные для построения версий документов
 l_ActTable := LinkServer(CurrentFamily)[atActiveIntervals];
 l_MasterVerSab := MakeSab(l_ActTable);
 l_MasterVerSab.Select(actTyp, l_ActType); // только периоды действий

 l_RenumTblFile := LinkServer(CurrentFamily).Renum;
 l_RTableName := ConcatDirName(GlobalHTServer.Family[CurrentFamily].Path, GetALCacheVerTblPath(dsLocal));
 if FileExists(l_RTableName+'.HTB') then
 begin
  if aDocList = nil then
   htDropTableData(PAnsiChar(l_RTableName), nil, nil) // чистим всю таблицу
  else
  begin
   // надо очистить только изменяющиеся данные
   // но поскольку в таблице редакций только внешние номера мастер-документов, надо сначала их найти
   l_Sab := MakeSabCopy(aDocList);
   l_Sab.TransferToPhoto(rnRealID_fld, l_RenumTblFile);
   l_Sab.RecordsByKey;
   l_Sab.ValuesOfKey(rnImportID_fld);
   l_TmpTbl := TdtTable.CreateWithOpen(GlobalHTServer.Family[CurrentFamily].Path, '', GetALCacheVerTblPath(dsLocal), TAB_PRIVATE);
   try
    l_Sab.TransferToPhoto(falvMasterDocID, l_TmpTbl);
   finally
    FreeAndNil(l_TmpTbl);
   end;
   l_Sab.RecordsByKey;
   l_Sab.DeleteFromTable;
   l_Sab := nil;
  end;
 end
 else
 begin
  Ht(htTableCreate(PAnsiChar(l_RTableName), @cALCacheVerTblStruct, High(cALCacheVerTblStruct), nil, nil, nil, TAB_PRIVATE or TAB_ANSI, l_H));
  htTableClose(l_H);
 end;

 DoProgress(piStart, 0, 'Кэш редакций: получение данных');
 // Для начала работы надо:
 // 1. Список актуальных редакций с непустыми VERLINK (смержить по этому VERLINK c ACTIVE)
 // 2. Список ВСЕХ редакций с непустыми VERLINK (смержить по этому VERLINK c ACTIVE)
 // 3. Пустой список для найденных редакций (следующих в цепочках)

 // Нужны joined sab с внешними номерами документов - для DOCID и для VERLINK
 l_TmpTbl := TdtTable.CreateDup(LinkServer(CurrentFamily).Renum.Table);
 try
  l_RenumTblVLnk := l_TmpTbl;
 finally
  FreeAndNil(l_TmpTbl);
 end;

 l_Sab := MakeSabCopy(l_DocSab);

 l_AllRenumSab := MakeAllRecords(l_RenumTblFile);
 l_RenumSabFile := MakeJoinSab(l_Sab, fId_Fld, l_AllRenumSab, rnRealID_fld);

 l_AllRenumSab := MakeAllRecords(l_RenumTblVLnk);
 l_RenumSabVLnk := MakeJoinSab(l_MasterVerSab, actDocID, l_AllRenumSab, rnRealID_fld);

 // строим список 1
 //l_Sab := MakeSabCopy(l_DocSab); - уже
 l_Sab.SubSelect(fVerLink_fld, l_BlankDocID, NOT_EQUAL);
 l_JoinSab := MakeJoinSab(l_Sab, fVerLink_fld, l_MasterVerSab, actDocID);
 l_JoinSab := MakeJoinSab(l_JoinSab, l_RenumSabFile);
 l_JoinSab := MakeJoinSab(l_JoinSab, l_RenumSabVLnk);

 l_MasterList := dtMakeRecListByJoinSab(l_JoinSab, [JFRec(l_FileTbl, fId_Fld),
                                                    JFRec(l_RenumTblFile, rnImportID_fld),
                                                    JFRec(l_FileTbl, fVerLink_fld),
                                                    JFRec(l_RenumTblVLnk, rnImportID_fld),
                                                    JFRec(l_ActTable, actStart),
                                                    JFRec(l_ActTable, actFinish)], [3]);
 try
  // строим список 2
  l_Sab := MakeSab(l_FileTbl);
  l_DocType := dtText;
  l_Sab.Select(fType_Fld, l_DocType);
  l_UserType := utEdition;
  l_Sab.SubSelect(fUserType_Fld, l_UserType);
  l_Sab.SubSelect(fVerLink_fld, l_BlankDocID, NOT_EQUAL);
  l_JoinSab := MakeJoinSab(l_Sab, fVerLink_fld, l_MasterVerSab, actDocID);

  l_AllRenumSab := MakeAllRecords(l_RenumTblFile);
  l_RenumSabFile := MakeJoinSab(l_Sab, fId_Fld, l_AllRenumSab, rnRealID_fld);

  l_AllRenumSab := MakeAllRecords(l_RenumTblVLnk);
  l_RenumSabVLnk := MakeJoinSab(l_MasterVerSab, actDocID, l_AllRenumSab, rnRealID_fld);

  l_JoinSab := MakeJoinSab(l_JoinSab, l_RenumSabFile);
  l_JoinSab := MakeJoinSab(l_JoinSab, l_RenumSabVLnk);

  l_EditionsList := dtMakeRecListByJoinSab(l_JoinSab, [JFRec(l_FileTbl, fId_Fld),
                                                       JFRec(l_RenumTblFile, rnImportID_fld),
                                                       JFRec(l_FileTbl, fVerLink_fld),
                                                       JFRec(l_RenumTblVLnk, rnImportID_fld),
                                                       JFRec(l_ActTable, actStart),
                                                       JFRec(l_ActTable, actFinish)], [1]);
  try
   // создаём список 3
   l_AccumulateList := Tl3FieldSortRecList.Create(SizeOf(TVersionCalcRec), [SizeOf(TDocID), // master int
                                                                            SizeOf(TDocID), // master ext
                                                                            SizeOf(TDocID), // verlink int
                                                                            SizeOf(TDocID), // verlink ext
                                                                            SizeOf(TStDate),
                                                                            SizeOf(TStDate)], [3]);
   try
    l_EditionsList.Sort;
    repeat
     l_FoundSome := False;
     l_MIdx := 0;
     l_EIdx := 0;
     l_MasterList.Sort;
     while (l_MIdx < l_MasterList.Count) and (l_EIdx < l_EditionsList.Count) do
     begin
      if l_CurM.rIntDocID > l_CurE.rMasterIntDoc then
       Inc(l_EIdx)
      else
       if l_CurM.rIntDocID < l_CurE.rMasterIntDoc then
        Inc(l_MIdx)
       else
       begin
        // найдено совпадение (звено цепочки)
        while (l_EIdx < l_EditionsList.Count) and (l_CurM.rIntDocID = l_CurE.rMasterIntDoc) do
        begin
         l_CalcRec := l_CurE^;
         l_CalcRec.rMasterIntDoc := l_CurM.rMasterIntDoc;
         l_CalcRec.rMasterExtDoc := l_CurM.rMasterExtDoc;
         l_AccumulateList.Add(l_CalcRec);
         Inc(l_EIdx);
        end;
       end;
     end;
     // выливаем список 1 в таблицу
     l_Table := TdtTable.CreateWithOpen(GlobalHTServer.Family[CurrentFamily].Path, '', GetALCacheVerTblPath(dsLocal), TAB_PRIVATE);
     try
      DoProgress(piStart, l_MasterList.Count, 'Кэш редакций: построение');
      for I := 0 to l_MasterList.Hi do
      begin
       l_PCalcRec := PVersionCalcRec(l_MasterList.ItemSlot(I));
       l_ResultRec.rMasterDoc := l_PCalcRec^.rMasterExtDoc;
       l_ResultRec.rIntDocID  := 0; // в кэше первоначально нет внутренних номеров документов
       l_ResultRec.rExtDocID  := l_PCalcRec^.rExtDocID;
       l_ResultRec.rStart     := l_PCalcRec^.rStart;
       l_ResultRec.rFinish    := l_PCalcRec^.rFinish;
       l_Table.AddRec(@l_ResultRec);
       if I mod 50 = 0 then
        DoProgress(piCurrent, I);
      end;
      DoProgress(piEnd, 0);
      l_Table.UpdateTbl;
     finally
      FreeAndNil(l_Table);
     end;
     // теперь выясняем, надо ли уходить на следующую итерацию
     l_FoundSome := l_AccumulateList.Count > 0;
     if l_FoundSome then
     begin
      // надо, делаем накопленные записи - списком 1
      l_TempList := l_MasterList;
      l_MasterList := l_AccumulateList;
      // а список 3 - очищаем
      l_AccumulateList := l_TempList;
      l_AccumulateList.Clear;
     end;
    until not l_FoundSome;
   finally
    FreeAndNil(l_AccumulateList);
   end;
  finally
   FreeAndNil(l_EditionsList);
  end;
 finally
  FreeAndNil(l_MasterList);
 end;
end;

procedure BuildStructCache(aProgressProc: Tl3ProgressProc = nil; const aDocList: ISab = nil);
var
 l_DocSab: ISab;
 l_SC: ISabCursor;
 I: Integer;
 l_StructCache: TddDocStructBuilder;
 l_FN: AnsiString;
 l_StartTime: TDateTime;
 l_Query: TdtQuery;
 l_Q: TdtQuery;

 procedure DoProgress(aState: Byte; aValue: Integer; const aMsg: AnsiString = '');
 begin
  if Assigned(aProgressProc) then
   aProgressProc(aState, aValue, aMsg);
 end;

begin
 l_FN := GetAutolinkStructCacheFilePath(dsLocal); // генерится всегда локальный кэш
 if m3IsStorageExists(l_FN) and (aDocList = nil) then
  if not m3DeleteStorage(l_FN) then
   raise EInOutError.Create('Файл кэша автопростановщика занят!');

 DoProgress(piStart, 1, 'Подготовка данных для построение кэша структур документов');
 l_DocSab := GetAllActualEditions(aDocList);
 DoProgress(piEnd, 1, '');

 DocumentServer(CurrentFamily).FileTbl.ExpandAllEdition(l_DocSab, False);

 l_DocSab.ValuesOfKey(fId_Fld);
 l3System.Msg2Log('Начался процесс построения кэша структур');
 l_StartTime := Now;
 l_StructCache := TddDocStructBuilder.Create(l_FN, GlobalHtServer.TextBase[CurrentFamily]);
 try
  l_StructCache.BuildDocStruct(l_DocSab, aProgressProc);
  l3System.Msg2Log('Построение кэша структур завершено за ' + CalcElapsedTime(l_StartTime));
 finally
  FreeAndNil(l_StructCache);
 end;
end;

function ExtractFileExtSpecial(const aFileName: AnsiString): AnsiString;
var
 l_N, l_Pos : Integer;
begin
 l_Pos := 1;
 repeat
  l_N := PosEx('\', aFileName, l_Pos);
  if l_N > 0 then
   l_Pos := l_N + 1;
 until l_N = 0;
 l_N := PosEx('.', aFileName, l_Pos);
 if l_N > 0 then
  Result := Copy(aFileName, l_N, MaxInt)
 else
  Result := '';
end;

procedure MakeRemoteAutolinkCache(const aDestDir: AnsiString);
var
 l_BasePath: AnsiString;
 l_SrcMainTblMask: AnsiString;
 l_SrcVerTblMask : AnsiString;
 l_DestTblName   : AnsiString;
 l_SrcStructCacheMask: AnsiString;
 l_Tbl: TdtTable;
 l_Sab: ISab;
 l_ZeroDocID: TDocID;

 procedure Error(const aMsg: AnsiString);
 begin
  raise EInOutError.CreateFmt('Невозможно создать удалённый кэш: %s', [aMsg]);
 end;

 procedure RenameByMask(const aMask, aDestName: AnsiString);
 var
  l_SR: TSearchRec;
 begin
  if FindFirst(ConcatDirName(aDestDir, aMask), faAnyFile - faDirectory, l_SR) = 0 then
  begin
   repeat
    if not RenameFile(ConcatDirName(aDestDir, l_SR.Name),
           ConcatDirName(aDestDir, aDestName + ExtractFileExtSpecial(l_SR.Name))) then
     Error(Format('Не удаётся переименовать файл %s', [l_SR.Name]));
   until FindNext(l_SR) <> 0;
  end
  else
   Error('файлы почему-то не скопировались...');
 end;

begin
 if not DirExists(aDestDir) then
  Error(Format('директория %s не найдена', [aDestDir]));

 l_SrcMainTblMask := GetALCacheMainTblPath(dsLocal) + '.*';
 l_SrcVerTblMask  := GetALCacheVerTblPath(dsLocal) + '.*';
 l_SrcStructCacheMask := ChangeFileExt(GetAutolinkStructCacheFileName(dsLocal), '.*');

 // проверки наличия всего необходимого для работы
 l_BasePath := GlobalHTServer.Family[CurrentFamily].Path;
 if not SysUtils.FileExists(ConcatDirName(l_BasePath, l_SrcStructCacheMask)) then
  Error('отсутствует файл структур документов');
 if not l3FileUtils.FileExists(ConcatDirName(l_BasePath, l_SrcMainTblMask)) then
  Error('отсутствует таблица кэша документов');
 if not l3FileUtils.FileExists(ConcatDirName(l_BasePath, l_SrcVerTblMask)) then
  Error('отсутствует таблица кэша редакций');

 // копирование таблиц и кэша структур в выбранную директорию
 CopyFilesByMask(l_BasePath, aDestDir, l_SrcMainTblMask);
 CopyFilesByMask(l_BasePath, aDestDir, l_SrcVerTblMask);
 CopyFilesByMask(l_BasePath, aDestDir, l_SrcStructCacheMask);
 //CopyFile(l_SrcStructCacheMask, ConcatDirName(aDestDir, GetAutolinkStructCacheFileName(dsRemote)));

 // переименовываем таблицы кэшей
 RenameByMask(l_SrcMainTblMask, GetALCacheMainTblPath(dsRemote));
 RenameByMask(l_SrcVerTblMask, GetALCacheVerTblPath(dsRemote));
 RenameByMask(l_SrcStructCacheMask, ChangeFileExt(GetAutolinkStructCacheFileName(dsRemote), ''));

 // всё скопировалось, теперь надо подчистить внутренние номера в таблицах
 l_ZeroDocID := 0;
 l_Tbl := TdtTable.Create(aDestDir, '', GetALCacheMainTblPath(dsRemote), TAB_SHARE);
 try
  l_Tbl.OpenTbl;
  l_Sab := MakeSab(l_Tbl);
  l_Sab.Select(falmIntDocID, l_ZeroDocID, NOT_EQUAL);
  l_Sab.ModifyRecs(falmIntDocID, l_ZeroDocID);
  l_Sab := nil;
  l_Tbl.UpdateTbl;
 finally
  FreeAndNil(l_Tbl);
 end;

 l_Tbl := TdtTable.Create(aDestDir, '', GetALCacheVerTblPath(dsRemote), TAB_SHARE);
 try
  l_Tbl.OpenTbl;
  l_Sab := MakeSab(l_Tbl);
  l_Sab.Select(falvIntDocID, l_ZeroDocID, NOT_EQUAL);
  l_Sab.ModifyRecs(falmIntDocID, l_ZeroDocID);
  l_Sab := nil;
  l_Tbl.UpdateTbl;
 finally
  FreeAndNil(l_Tbl);
 end;

end;

function GetLastUpdateDateAndTime: TDateTime;
var
 l_Ini: TCfgList;
begin
 Result := 0;
 l_Ini := TCfgList.Create(ConcatDirName(GlobalHtServer.Family[CurrentFamily].Path, 'base.ini'));
 try
  l_Ini.Section := cALCfgSection;
  Result := l_Ini.ReadParamDateTimeDef(cALLastUpdate, 0);
 finally
  FreeAndNil(l_Ini);
 end;
end;

procedure TouchAutolinkCache;
var
 l_Ini: TCfgList;
begin
 l_Ini := TCfgList.Create(ConcatDirName(GlobalHtServer.Family[CurrentFamily].Path, 'base.ini'));
 try
  l_Ini.Section := cALCfgSection;
  l_Ini.WriteParamDateTime(cALLastUpdate, Now);
 finally
  FreeAndNil(l_Ini);
 end;
end;

procedure UpdateAutolinkCache(aProgressProc: Tl3ProgressProc = nil);
var
 l_DT  : TDateTime;
 l_Date: TStDate;
 l_Time: TStTime;
 l_DocList: ISab;

 procedure DoProgress(aState: Byte; aValue: Integer = 0; const aMsg: AnsiString = '');
 begin
  if Assigned(aProgressProc) then
   aProgressProc(aState, aValue, aMsg);
 end;

 function GetLogByOperations(const aOps: array of TLogActionType): ISab;
 var
  I: Integer;
  l_ActSab: ISab;
  l_DSab1, l_DSab2: ISab;
  l_VF : IValueSetFiller;
  l_Value: Byte;
 begin
  l_ActSab := MakeEmptySab(LinkServer(CurrentFamily).LogBook);
  l_VF := l_ActSab.MakeValueSetFiller(lgAction_Key);
  for I := Low(aOps) to High(aOps) do
  begin
   l_Value := Ord(aOps[I]);
   l_VF.AddValue(l_Value);
  end;
  l_VF := nil;
  l_ActSab.RecordsByKey;

  if l_Date <> 0 then
  begin
   l_DSab1 := MakeSab(LinkServer(CurrentFamily).LogBook);
   l_DSab1.Select(lgDate_Key, l_Date);
   l_DSab1.SubSelect(lgTime_Key, l_Time, GREAT_EQUAL); // из-за того, что дата и время - разные поля,
                                                       // приходится извращаться :(
   l_DSab2 := MakeSab(LinkServer(CurrentFamily).LogBook);
   l_DSab2.Select(lgDate_Key, l_Date, GREAT);

   l_DSab1.OrSab(l_DSab2);
   l_ActSab.AndSab(l_DSab1);
  end;
  l_ActSab.ValuesOfKey(lgDocID_Key);
  Result := l_ActSab;
 end;

begin
 l_DT := GetLastUpdateDateAndTime;
 if l_DT = 0 then
 begin
  l_Date := 0;
  l_Time := 0;
 end
 else
 begin
  l_Date := DateTimeToStDate(l_DT);
  l_Time := DateTimeToStTime(l_DT);
 end;
 // TODO: Как-то надо отслеживать изменения и в редакциях тоже.
 // Сейчас здесь будут отобраны редакции тоже, но потом они отфильтруются в GetAllActualEditions.
 // По-хорошему, надо предусмотреть механизм, который позволит пройтись по цепочке наверх и добавить
 // актуальную редакцию в список, с тем, чтобы все данные по ней обновились.

 // поищем сначала данные по измененным атрибутам
 l_DocList := GetLogByOperations([acAttrWork, acNew, acWasImported]);
 if (l_DocList <> nil) and (l_DocList.Count > 0) then
 begin
  BuildActualDocsCache(aProgressProc, l_DocList);
  BuildEditionsCache(aProgressProc, l_DocList);
 end;

 // теперь - изменённые текста (для кэша структур)
 l_DocList := GetLogByOperations([acTextWork, acNew, acWasImported]);
 if (l_DocList <> nil) and (l_DocList.Count > 0) then
  BuildStructCache(aProgressProc, l_DocList);

 // и "потрогаем" дату обновления кэша
 TouchAutolinkCache;
end;

procedure CreateAutolinkCache(aProgressProc: Tl3ProgressProc = nil);
begin
 BuildActualDocsCache(aProgressProc);
 BuildEditionsCache(aProgressProc);
 BuildStructCache(aProgressProc);
 TouchAutolinkCache;
end;

procedure CreateOrUpdateAutoLinkCache(aProgressProc: Tl3ProgressProc = nil);
begin
 if m3IsStorageExists(GetAutolinkStructCacheFilePath(dsLocal)) then
  UpdateAutolinkCache(aProgressProc)
 else
  CreateAutolinkCache(aProgressProc);
end;

procedure UpdateAutolinkCacheTables;
var
 l_Path: AnsiString;

 procedure UpdateOneTable(const aTable: AnsiString);
 begin
  if FileExists(ConcatDirName(l_Path, ChangeFileExt(aTable, '.HTB'))) then
  try
   GlobalHtServer.UpdateTbl(aTable, CurrentFamily, '');
   l3System.Msg2Log(aTable);
  except
   // гасим все ошибки
  end;
 end;

 procedure UpdateOneCache(const aCache: TddAutolinkCacheType);
 begin
  UpdateOneTable(GetALCacheMainTblPath(aCache));
  UpdateOneTable(GetALCacheVerTblPath(aCache));
 end;

begin
 l_Path := GlobalHTServer.Family[CurrentFamily].Path;
 UpdateOneCache(dsLocal);
 UpdateOneCache(dsRemote);
end;

end.