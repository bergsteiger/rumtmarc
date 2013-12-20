unit ddMDPIntegration;

{ $Id: ddMDPIntegration.pas,v 1.51 2013/04/17 11:18:52 fireton Exp $ }

// $Log: ddMDPIntegration.pas,v $
// Revision 1.51  2013/04/17 11:18:52  fireton
// - не собиралось
//
// Revision 1.50  2013/04/15 08:01:14  narry
// Не собиралось
//
// Revision 1.49  2013/04/11 16:46:28  lulin
// - отлаживаем под XE3.
//
// Revision 1.48  2013/03/19 13:00:20  fireton
// - падало с External Exception
//
// Revision 1.47  2013/03/15 08:40:40  fireton
// - новый функционал
//
// Revision 1.46  2013/02/12 04:27:01  fireton
// - не собиралось
//
// Revision 1.45  2013/01/18 03:11:38  fireton
// - не собиралось
//
// Revision 1.44  2012/08/15 07:23:42  fireton
// - добавляем отладочную информацию по образам в лог MDP-импорта
//
// Revision 1.43  2012/03/28 06:54:09  fireton
// - bug fix: один ошибочный образ ломал всю обработку образов документов
//
// Revision 1.42  2012/02/20 10:56:23  narry
// изменение сортировки
//
// Revision 1.41  2012/01/13 12:25:32  narry
// Мелкие исправления
//
// Revision 1.40  2012/01/13 12:04:53  fireton
// - добавляем пометку "интернет" (K 321986237)
//
// Revision 1.39  2012/01/13 09:30:05  fireton
// - проверяем наличие документа не только по таблице FILE, но и по логу (K 326776318)
//
// Revision 1.38  2012/01/12 08:13:05  narry
// Хочется что бы список был отсортирован (307790632)
//
// Revision 1.37  2011/12/26 07:04:15  fireton
// - мог получиться неопределённый timestamp
// - убрал все "нефатальные" exceptions, заменил на DoReport
//
// Revision 1.36  2011/12/26 05:23:16  narry
// Хочется что бы список был отсортирован (307790632)
//
// Revision 1.35  2011/12/23 12:35:12  fireton
// - вернул предупреждение о пустом образе
//
// Revision 1.34  2011/12/23 04:18:03  fireton
// - добавление Urgency в отчётную запись (К 317261251)
// - косметические правки
//
// Revision 1.33  2011/12/21 09:29:21  narry
// Чистка вывода в лог
//
// Revision 1.32  2011/12/21 09:20:06  fireton
// - убираем ошибку, которая не ошибка
//
// Revision 1.31  2011/12/15 13:00:46  narry
// Управление из Парня (319488062)
//
// Revision 1.30  2011/12/12 12:10:11  narry
// Переход на отдельностоящее приложение
//
// Revision 1.29  2011/12/12 08:00:42  fireton
// - если документа вообще никогда не было в базе, он ошибочно опознавался как существующий
//
// Revision 1.28  2011/12/09 12:59:40  fireton
// - формируем "красивое" имя у документа (316114798)
//
// Revision 1.27  2011/12/09 12:28:23  narry
// Открывать хранилище только после получения списка документов (317265075)
//
// Revision 1.26  2011/12/09 10:40:17  narry
// Логирование обмена с MDP
//
// Revision 1.25  2011/12/09 10:26:09  narry
// Логирование обмена с MDP
//
// Revision 1.24  2011/12/09 09:33:10  fireton
// - если "новый" документ уже есть в базе, то не перетираем (317263027)
//
// Revision 1.23  2011/12/08 14:05:48  fireton
// - не перетираем файл образа, если поток пустой (315262237)
//
// Revision 1.22  2011/12/07 11:40:26  fireton
// - добавляем комментарий из MDP в документ (315261944)
//
// Revision 1.21  2011/12/06 15:17:37  fireton
// - чистка
// - обрабатываем ошибки связи с сервером MDP
//
// Revision 1.20  2011/12/06 12:04:54  narry
// вкрутить Срочность (314215383)
//
// Revision 1.19  2011/12/06 09:59:39  narry
// Справки в Арчи (314214467)
//
// Revision 1.18  2011/12/06 09:48:18  narry
// Справки в Арчи (314214467)
//
// Revision 1.17  2011/12/05 12:25:24  fireton
// - формируем имя документа из атрибутов (К 313754761)
//
// Revision 1.16  2011/12/05 08:21:40  fireton
// - добавляем в документ пустой абзац
//
// Revision 1.15  2011/12/05 07:35:35  fireton
// - вставляем проверки на nil для списков (во избежание AV)
//
// Revision 1.14  2011/12/02 08:48:16  fireton
// - пусть тестовый вывод в лог пока будет
//
// Revision 1.13  2011/12/02 08:03:35  fireton
// - добавляем первый блок как группу доступа (K310675403)
//
// Revision 1.12  2011/11/30 10:10:55  fireton
// - генерим имя сразу
// - fix: timestamp не обновлялся
//
// Revision 1.11  2011/11/29 06:29:38  fireton
// - поменялись имена типов
//
// Revision 1.10  2011/11/28 11:31:14  fireton
// - формируем "имя" документа из атрибутов
//
// Revision 1.9  2011/11/23 12:57:45  fireton
// - отчитываемся о получении документов из MDP в логе
//
// Revision 1.8  2011/11/23 12:22:48  fireton
// - самостоятельно запоминаем дату последнего обновления в base.ini
//
// Revision 1.7  2011/11/16 13:18:33  narry
// Нотификация о появлении новых документов (288786332)
//
// Revision 1.6  2011/11/15 12:15:33  fireton
// - OnResult (подокументный отчёт об импорте)
//
// Revision 1.5  2011/10/28 13:54:13  fireton
// - информация о пустых образах
//
// Revision 1.4  2011/10/28 13:25:30  fireton
// - update
//
// Revision 1.3  2011/07/28 12:13:37  fireton
// - записываем mdp-топик
//
// Revision 1.2  2011/07/22 12:25:01  fireton
// - доработка
//
// Revision 1.1  2011/07/14 09:14:49  fireton
// - интеграция с MDP
//

interface
uses
 k2Reader,
 l3Base,
 l3Interfaces,

 l3ProtoObject,
 l3Except,
 l3CustomString,
 l3Date,
 l3DateSt,
 l3LingLib,

 dt_Types,
 dt_AttrSchema,
 dt_DictIntf,
 dt_Serv,

 m3DBInterfaces,

 k2TagGen,

 GarDocsUnit,

 evNestedDocumentEliminator,

 ddTypes,
 ddProgressObj,
 ddRTFReader,
 ddNSRC_r,

 dd_lcDocImageConverter;

type
 TddMDPImportResultObj = class(Tl3Base)
 protected
  function OCompare(anObject: TObject): Integer; override;
 public
  rName    : AnsiString;
  rIsNew   : Boolean;
  rDocID   : TDocID;
  rComment : AnsiString;
  rUrgency : Byte;
 end;

 TddMDPImportResultEvent = procedure (const aResult: TddMDPImportResultObj) of object;

 TddMDPReader = class(Tk2CustomReader)
 private
  f_DocList:  IGardocList;
  f_IsDocumentBodyExists: Boolean;
  f_OnError: TddErrorEvent;
  f_OnResult: TddMDPImportResultEvent;
  f_Progressor: TddProgressObject;
  f_Result: TddMDPImportResultObj;
  f_Timestamp: TDateTime;
  f_RTFReader: TddRTFReader;
  f_NSRCReader: TCustomNSRCReader;
  procedure AddDateNumber(const aGDRec: TGardoc);
  procedure AddDocAttributes(const aGDRec: TGardoc);
  procedure AddRelAttributes(const aGDRec: TGardoc);
  procedure AddGroups(const aGDRec: TGardoc);
  procedure AddSources(const aGDRec: TGardoc);
  procedure AddToName(const aStr: Tl3WString; aNeedSpace: Boolean = True); overload;
  procedure AddToName(const aDate: TDateTime); overload;
  procedure AddToName(const aStr: AnsiString; aNeedSpace: Boolean = True); overload;
  procedure AddType(const aGDRec: TGardoc);
  procedure DoReport(const aMsg: AnsiString);
  procedure DropResult;
  procedure FormName(const aGDRec: TGardoc);
  procedure ImportDocuments(const aList: IGardocList);
  function IsTextEmpty(aIntDocID: TDocID): Boolean;
  procedure MakeDocumentHeader(const aGDRec: TGardoc);
  procedure MakeDocumentFooter;
  procedure MakeRelated(const aGDRec: TGardoc);
  procedure TranslateImageToDoc(const aFilename: AnsiString; aType: TImageType);
  procedure WorkupImage(const aGDRec: TGardoc; aIntDocID: TDocID);
 protected
  function ConvertUrgency(const aUrgency: TGardocUrgency): Byte;
  procedure Read; override;
  procedure Cleanup; override;
 public
  constructor Create(anOwner: Tk2TagGeneratorOwner = nil); override;
  property OnError: TddErrorEvent read f_OnError write f_OnError;
  property OnResult: TddMDPImportResultEvent read f_OnResult write f_OnResult;
  property DocList: IGardocList read f_DocList write f_DocList;
  property Progressor: TddProgressObject read f_Progressor write f_Progressor;
  property Timestamp: TDateTime read f_Timestamp write f_Timestamp;
 end;

 TddMDPImporter = class(Tl3ProtoObject)
 private
  f_OnError: TddErrorEvent;
  function DoOnDictUpdate(aDictType: TDLType; aDocID, aSubID: TSubID; aName: Tl3CustomString): Boolean;
  procedure DoReport(const aMsg: AnsiString);
  function GetLastTimestamp: TDateTime;
  procedure SaveLastTimestamp(const aTimestamp: TDateTime);
 public
  procedure Import(aOnError: TddErrorEvent; aOnResult: TddMDPImportResultEvent; aProgressor: TddProgressObject);
 published
  property OnError: TddErrorEvent read f_OnError write f_OnError;
 end;

 EMDPImportFatalError = class(El3Error);

procedure ddImportFromMDP(const aOnError: TddErrorEvent;
                          const aOnResult: TddMDPImportResultEvent;
                                aProgressor: TddProgressObject);

implementation
uses
 SysUtils,
 ArchiAdapter,
 IOUnit,

 l3IString,
 l3String,
 l3DateTimeBox,
 l3Stream,
 l3Filer,
 l3FileUtils,
 l3Types,
 l3Nodes,
 l3Tree_TLB,
 l3IniFile,
 l3Bits,

 m2COMLib,

 k2Tags,
 Document_Const,
 DictItem_Const,
 NumAndDate_Const,
 TextPara_Const,


 DT_Const,
 DT_Doc,
 DT_DocImages,
 DT_LinkServ,
 Dt_ReNum,
 Dt_Dict,

 {$IFDEF MDP_TEST}
 ddMDPIntegrationTestData,
 {$ENDIF}

 {$IFDEF MDP_TOFILE}
 evdWriter,
 {$ENDIF}

 ddImportPipeKernel, StrUtils, Math, Classes;

const
 cSuccessEventStr = 'save_or_update';
 cMDPCfgSection   = 'MDP';
 cMDPLastUpdate   = 'LastUpdate';
 c_MinDocSize = 150;

resourcestring
 sNoDocIDRangeError        = 'Не определён диапазон для получения номеров топиков';
 sEmptyPublishNameError    = 'Пустое имя источника опубликования';
 sPublishNameNotFoundError = 'Источник опубликования не найден: %s';

constructor TddMDPReader.Create(anOwner: Tk2TagGeneratorOwner = nil);
begin
 inherited;
 f_RTFReader := TddRTFReader.Create(nil);
 f_RTFReader.LiteVersion := False;
 f_NSRCReader := TCustomNSRCReader.Create(nil);
 f_NSRCReader.StrictFormat := False;
end;

procedure TddMDPReader.AddDateNumber(const aGDRec: TGardoc);
var
 l_PubDate: TStDate;
 l_MUDate: TStDate;
 l_PubNum: Il3CString;
 l_MUNum: Il3CString;
begin
 // Dates and Nums
 l_PubNum := l3CStr(aGDRec.rNumber);
 l_PubDate := l3BoxToStDate(aGDRec.rDate);
 l_MUNum := l3CStr(aGDRec.rMuNumber);
 l_MUDate := l3BoxToStDate(aGDRec.rMuDate);
 if (not l3IsNil(l_PubNum)) or (l_PubDate <> 0) or (not l3IsNil(l_MUNum)) or (l_MUDate <> 0) then
 begin
  StartTag(k2_tiNumANDDates);
  try
   if (not l3IsNil(l_PubNum)) or (l_PubDate <> 0) then
   begin
    StartChild(k2_idNumAndDate);
    try
     AddIntegerAtom(k2_tiType, Ord(dnPublish));
     if not l3IsNil(l_PubNum) then
      AddPCharLenAtom(k2_tiNumber, l_PubNum.AsWStr);
     if l_PubDate <> 0 then
      AddIntegerAtom(k2_tiStart, l_PubDate);
    finally
     Finish;
    end;
   end;

   if (not l3IsNil(l_MUNum)) or (l_MUDate <> 0) then
   begin
    StartChild(k2_idNumAndDate);
    try
     AddIntegerAtom(k2_tiType, Ord(dnMU));
     if not l3IsNil(l_MUNum) then
      AddPCharLenAtom(k2_tiNumber, l_MUNum.AsWStr);
     if l_MUDate <> 0 then
      AddIntegerAtom(k2_tiStart, l_MUDate);
    finally
     Finish;
    end;
   end;
  finally
   Finish;
  end;
 end;
end;

procedure TddMDPReader.AddDocAttributes(const aGDRec: TGardoc);
var
 l_Status: Integer;
begin
 AddIntegerAtom(k2_tiExternalHandle, aGDRec.rTopic);
 if aGDRec.rRelated <> 0 then
  AddIntegerAtom(k2_tiRelExternalHandle, aGDRec.rRelated);
 AddStringAtom(k2_tiName, f_Result.rName);
 AddStringAtom(k2_tiNameComment, f_Result.rComment);
 AddInt64Atom(k2_tiMDPPageID, aGDRec.rConfluenceId);
 AddIntegerAtom(k2_tiUrgency, f_Result.rUrgency);

 l_Status := 0;
 if aGDRec.rIsInternet then
  l3SetMask(l_Status, dstatInternet);
 if l_Status <> 0 then // это всё на случай, если позже мы будем добавлять другие флажки
  AddIntegerAtom(k2_tiPriceLevel, l_Status);
end;

procedure TddMDPReader.AddRelAttributes(const aGDRec: TGardoc);
begin
 AddIntegerAtom(k2_tiExternalHandle, aGDRec.rRelated);
 AddIntegerAtom(k2_tiType, Ord(dtRelText));
end;

procedure TddMDPReader.AddGroups(const aGDRec: TGardoc);
var
 J: Integer;
 l_Str: IString;
begin
 if aGDRec.rBlocks <> nil then
 begin
  if aGDRec.rBlocks.Count > 0 then
  begin
   StartTag(k2_tiGroups);
   try
    for J := 0 to aGDRec.rBlocks.Count - 1 do
    begin
     aGDRec.rBlocks.pm_GetItem(J, l_Str);
     StartChild(k2_idDictItem);
     try
      AddPCharLenAtom(k2_tiShortName, l3CStr(l_Str).AsWStr);
     finally
      Finish;
     end;
    end;
   finally
    Finish;
   end;
   // добавляем первый блок как группу доступа
   StartTag(k2_tiAccGroups);
   try
    aGDRec.rBlocks.pm_GetItem(0, l_Str);
    StartChild(k2_idDictItem);
    try
     AddPCharLenAtom(k2_tiShortName, l3CStr(l_Str).AsWStr);
    finally
     Finish;
    end;
   finally
    Finish;
   end;
  end;
 end;
end;

procedure TddMDPReader.AddSources(const aGDRec: TGardoc);
var
 J: Integer;
 l_Str: IString;
begin
 if aGDRec.rOgvList <> nil then
 begin
  if aGDRec.rOgvList.Count > 0 then
  begin
   StartTag(k2_tiSources);
   try
    for J := 0 to aGDrec.rOgvList.Count - 1 do
    begin
     aGDRec.rOgvList.pm_GetItem(J, l_Str);
     StartChild(k2_idDictItem);
     try
      AddPCharLenAtom(k2_tiName, l3CStr(l_Str).AsWStr);
     finally
      Finish;
     end;
    end;
   finally
    Finish;
   end;
  end;
 end;
end;

procedure TddMDPReader.AddToName(const aStr: Tl3WString; aNeedSpace: Boolean = True);
begin
 AddToName(l3Str(aStr), aNeedSpace);
end;

procedure TddMDPReader.AddToName(const aDate: TDateTime);
begin
 AddToName(l3DateToStr(aDate, 'dd mmmm yyyy г.'));
end;

procedure TddMDPReader.AddToName(const aStr: AnsiString; aNeedSpace: Boolean = True);
begin
 if aNeedSpace and (f_Result.rName <> '') then
  f_Result.rName := f_Result.rName + ' ';
 f_Result.rName := f_Result.rName + aStr;
end;

procedure TddMDPReader.AddType(const aGDRec: TGardoc);
begin
 StartTag(k2_tiTypes);
 try
  StartChild(k2_idDictItem);
  try
   AddPCharLenAtom(k2_tiName, l3CStr(aGDRec.rType).AsWStr);
  finally
   Finish;
  end;
 finally
  Finish;
 end;
end;

procedure TddMDPReader.Cleanup;
begin
 FreeAndNil(f_RTFReader);
 FreeAndNil(f_NSRCReader);
 inherited;
end;

function TddMDPReader.ConvertUrgency(const aUrgency: TGardocUrgency): Byte;
begin
 case aUrgency of
 	guInVersion: Result := 2;  // в версию
	 guQuickly  : Result := 1   // срочный
 else
	{, guOrdinary // обычный
	, guUnknown // неизвестно }
  Result:= 0;
 end;
end;

procedure TddMDPReader.DoReport(const aMsg: AnsiString);
var
 l_ReportStr: AnsiString;
begin
 l_ReportStr := Format('%d: %s', [f_Result.rDocID, aMsg]);
 if Assigned(f_OnError) then
  f_OnError(l_ReportStr)
 else
  l3System.Msg2Log(l_ReportStr);
end;

procedure TddMDPReader.DropResult;
begin
 f_Result:= TddMDPImportResultObj.Create;
end;

procedure TddMDPReader.FormName(const aGDRec: TGardoc);
var
 J: Integer;
 l_Name: AnsiString;
 l_NameStr: Il3CString;
 l_PubDate: TDateTime;
 l_PubNum: Il3CString;
 l_Str: IString;
begin
 AddToName(l3CStr(aGDRec.rType).AsWStr);
 if aGDRec.rOgvList <> nil then
 begin
  for J := 0 to aGDRec.rOgvList.Count - 1 do
  begin
   if J > 0 then
    AddToName(',', False);
   aGDRec.rOgvList.pm_GetItem(J, l_Str);
   l_Name := l3Str(l3GetSuffix(l3CStr(l_Str).AsWStr, '\'));
   l_Name := mlmaRusDeclensionStr(l_Name, rdRodit);
   AddToName(l_Name);
  end;
 end;
 l_PubDate := l3BoxToDateTime(aGDRec.rDate);
 if l_PubDate <> 0 then
 begin
  AddToName(l3PCharLen('от'));
  AddToName(l_PubDate);
 end;
 l_PubNum := l3CStr(aGDRec.rNumber);
 if not l3IsNil(l_PubNum) then
 begin
  AddToName(l3PCharLen('№'));
  AddToName(l_PubNum.AsWStr, False);
 end;
 l_NameStr := l3CStr(aGDRec.rTitle);
 if not l3IsNil(l_NameStr) then
  AddToName(l3Cat([l3CStr('"'), l_NameStr, l3CStr('"')]).AsWStr);
end;

procedure TddMDPReader.ImportDocuments(const aList: IGardocList);
var
 I: Integer;
 l_GD: TGardoc;
 l_IntTopic: TDocID;
begin
 // для тестирования. вывод в лог.
 l3System.Msg2Log('Получено %d документов:', [aList.Count]);
 for I := 0 to Pred(aList.Count) do
 begin
  aList.pm_GetItem(I, l_GD);
  if l_GD.rTopic <> 0 then
  begin
   DropResult;
   try
    l3System.Msg2Log('%3d ID:%10d (K:%10d TS:%.2d.%.2d.%4d %.2d:%.2d:%.2d)',[
      Succ(I),
      l_GD.rTopic,
      l_GD.rConfluenceId,
      l_GD.rTimeStamp.rDay,
      l_GD.rTimestamp.rMounth,
      l_GD.rTimestamp.rYear,
      l_GD.rTimestamp.rHour,
      l_GD.rTimestamp.rMinute,
      l_GD.rTimestamp.rSecond
     ]);

     if l_GD.rTopic <> 0 then
     begin
     // DropResult;
      FormName(l_GD);
      f_Result.rComment := l3Str(l3CStr(l_GD.rComment));
      f_Result.rUrgency := ConvertUrgency(l_GD.rUrgency);

      // если это - обновление, то надо проверить наличие топика в базе
      // если такого топика нет, то надо его создать принудительно
      if l_GD.rState = gsUPDATED then
      begin
       l_IntTopic := LinkServer(CurrentFamily).Renum.ConvertToRealNumber(l_GD.rTopic);
       if l_IntTopic > 0 then
       begin
        if not DocumentServer(CurrentFamily).CheckDocEx(l_IntTopic) then
         l_GD.rState := gsNEW;
       end
       else
        l_GD.rState := gsNEW;
      end;

      f_Result.rDocID := l_GD.rTopic;
      if l_GD.rState = gsNEW then
      begin
       l_IntTopic  := l_GD.rTopic;
       LinkServer(CurrentFamily).Renum.GetRNumber(l_IntTopic);
       // если "нового" документа нет в базе Арчи...
       if not DocumentServer(CurrentFamily).CheckDocEx(l_IntTopic) then
       begin
        // Справка
        MakeRelated(l_GD);
       end
       else
       begin
        // Если документ, приехавший как новый, есть в базе...
        l_GD.rState := gsUPDATED;
        DoReport('Документ уже существует');
       end;
      end; // if l_GD.rState = gsNEW then

      f_Result.rIsNew := l_GD.rState = gsNEW;

      // обрабатываем информацию об образах
      if f_Result.rIsNew then
       MakeDocumentHeader(l_GD);
      try
       WorkupImage(l_GD, l_IntTopic);
      finally
       if f_Result.rIsNew then
        MakeDocumentFooter;
      end;
      f_TimeStamp := l3BoxToDateTime(l_GD.rTimestamp);
     end // if l_GD.rTopic <> 0 then
     else
      DoReport('Неправильный номер документа');
    if Assigned(f_OnResult) then
     f_OnResult(f_Result);
   finally
    FreeAndNil(f_Result);
   end;
  end; // l_GD.rTopic <> 0
  if Progressor <> nil then
   Progressor.ProcessUpdate(i);
 end; // for i;
end;

function TddMDPReader.IsTextEmpty(aIntDocID: TDocID): Boolean;
var
 l_DB: Im3DB;
 l_Doc: Im3DBDocument;
 l_Stream: IStream;
 l_Pos: Int64;
begin
 Result := True;
 l_DB := dtGetDB(CurrentFamily);
 try
  l_Doc := l_DB.GetDocument(aIntDocID);
  try
   l_Stream := l_Doc.Open;
   Result := (l_Stream = nil);
   if not Result then
    Result := (m2COMGetSize(l_Stream) <= c_MinDocSize);
  finally
   l_Doc := nil;
  end;
 finally
  l_DB := nil;
 end;
end;

procedure TddMDPReader.MakeDocumentHeader(const aGDRec: TGardoc);
begin
 l3System.Msg2Log(' Создание документа...');
 StartChild(k2_idDocument);
 AddDocAttributes(aGDRec);
 // Type
 AddType(aGDRec);
 // Sources
 AddSources(aGDRec);
 // Даты-номера
 AddDateNumber(aGDRec);
 // Groups (belongs)
 AddGroups(aGDRec);
 l3System.Msg2Log('  Заголовок записан');
 f_IsDocumentBodyExists := False;
end;

procedure TddMDPReader.MakeDocumentFooter;
begin
 if not f_IsDocumentBodyExists then
 begin
  // если не нагенерили документ, то добавляем пустой параграф
  StartChild(k2_idTextPara);
  Finish;
 end;
 Finish; // document
 l3System.Msg2Log(' Документ создан');
end;

procedure TddMDPReader.MakeRelated(const aGDRec: TGardoc);
begin
 if aGDRec.rRelated <> 0 then
 begin
  l3System.Msg2Log(' Создание справки...');
  StartChild(k2_idDocument);
  try
   AddRelAttributes(aGDRec);
   StartChild(k2_idTextPara);
   Finish;
  finally
   Finish; // document
  end;
  l3System.Msg2Log(' Справка создана');
 end;
end;

procedure TddMDPReader.Read;
begin
 if f_DocList <> nil then
 begin
  if Progressor <> nil then
   Progressor.Start(f_DocList.Count, 'Создание документов');
  Start;
  try
   //l3System.Msg2Log('ImportDocuments...');
   ImportDocuments(f_DocList);
   //l3System.Msg2Log('...done');
  finally
   Finish;
  end;
  if Progressor <> nil then
   Progressor.Stop;
 end; // f_DocList <> nil
end;

procedure TddMDPReader.TranslateImageToDoc(const aFilename: AnsiString; aType: TImageType);
var
 l_Filer: Tl3DOSFiler;
 l_Stream: TStream;
begin
 l_Filer := Tl3DOSFiler.Make(aFilename, l3_fmRead, False);
 try
  l_Filer.Open;
  case aType of
   giDOC, giRTF:
    begin
     l3IStream2Stream(l_Filer as IStream, l_Stream);
     try
      ddTranslateImage(l_Stream, Self, f_RTFReader);
      f_IsDocumentBodyExists := True;
     finally
      FreeAndNil(l_Stream);
      f_RTFReader.Generator := nil;
     end;
    end;

   giNSR:
    begin
     f_NSRCReader.Generator := Self;
     f_NSRCReader.Filer := l_Filer;
     try
      f_NSRCReader.Read;
      f_IsDocumentBodyExists := True;
      f_NSRCReader.Filer := nil;
     finally
      f_NSRCReader.Generator := nil;
     end;
    end;
  end; // case
 finally
  FreeAndNil(l_Filer);
 end;
end;

procedure TddMDPReader.WorkupImage(const aGDRec: TGardoc; aIntDocID: TDocID);
var
 J, l_Idx: Integer;
 l_DocTextEmpty: Boolean;
 l_Img: TImage;
 l_IsMain: Boolean;
 l_PDict: TDictionary;
 l_TempFN: AnsiString;
 l_Pages: AnsiString;
 l_Tr: Int64;
 l_Tw: Int64;
 l_StreamSize: Int64;
 l_IStream: IStream;
 l_L3Str: Il3CString;
 l_Node: Il3Node;
 l_PubSource: TDictID;
 l_WStr: Tl3WString;
 l_Str: IString;

const
 c_ImgTypeStr: array [TImageType] of string = ('ZIP','TIFF','DOC','RTF','NSR');
 c_ImgExtStr: array [TImageType] of string = ('.zip','.tif','.doc','.rtf','.nsr');

begin
 l3System.Msg2Log(' Обработка образа...');
 if aGDRec.rImages <> nil then
 begin
  l_PDict := DictServer(CurrentFamily).Dict[dlCorSources];
  l3System.Msg2Log('  Количество образов документа: %d', [aGDRec.rImages.Count]);
  l_DocTextEmpty := (aGDRec.rState = gsNEW) or IsTextEmpty(aIntDocID);
  f_IsDocumentBodyExists := not l_DocTextEmpty;
  for J := 0 to aGDRec.rImages.Count - 1 do
  begin
   aGDrec.rImages.pm_GetItem(J, l_Img);
   l3System.Msg2Log('  Образ #%d (%s)', [J+1, c_ImgTypeStr[l_Img.rType]]);
   // для начала проверим источник опубликования
   l_L3Str := l3CStr(l_Img.rSrcTitle);
   if not l3IsNil(l_L3Str) then
   begin
    l_WStr := l_L3Str.AsWStr;
    l_Node := l3SearchByName(l_PDict.RootNode, l_WStr);
    if l_Node <> nil then
    begin
     l_PubSource := (l_Node as IDictItem).Handle;
    end
    else
    begin
     DoReport(Format(sPublishNameNotFoundError, [l3Str(l_L3Str)]));
     Continue;
    end;
   end
   else
   begin
    DoReport(sEmptyPublishNameError);
    Continue;
   end;

   // теперь копируем образ в файл, откуда потом его подключим
   if l_Img.rData <> nil then
   begin
    l_TempFN := l3GetTempFileName('img');
    DeleteFile(l_TempFN);
    l_TempFN := ChangeFileExt(l_TempFN, c_ImgExtStr[l_Img.rType]);
    l_IStream := Tl3FileStream.Make(l_TempFN, l3_fmWrite);
    try
     l_StreamSize := High(Int64);
     l_Img.rData.CopyTo(l_IStream, l_StreamSize, l_Tr, l_Tw);
    finally
     l_IStream := nil;
    end;
    if l_Tr = 0 then
    begin
     // если поток пустой, то не надо записывать образ, а надо только добавить published
     DeleteFile(l_TempFN);
     l_TempFN := '';
    end
    else
    begin
     l_IsMain := aGDRec.rImages.Count = 1; // если он один, то его и использовать
     if not l_IsMain then
     begin // если их много - проверяем метку
      if l_Img.rLabels <> nil then
      begin
       for l_Idx := 0 to l_Img.rLabels.Count-1 do
       begin
        l_Img.rLabels.pm_GetItem(l_Idx, l_Str);
        l_L3Str := l3CStr(l_Str);
        if l3Same(l_L3Str, 'gardoc_image_main', True) then
        begin
         l_IsMain := True;
         Break;
        end;
       end;
      end;
     end;
     if (l_Img.rType in [giDOC, giRTF, giNSR]) and l_DocTextEmpty and l_IsMain then
      TranslateImageToDoc(l_TempFN, l_Img.rType);
    end;
   end
   else
   begin
    l_TempFN := '';
    DoReport('ВНИМАНИЕ: пустой образ документа!');
   end;

   if DocImageServer <> nil then
   begin
    l_Pages := l3Str(l3CStr(l_Img.rSrcPage));
    DocImageServer.Add(aIntDocID, l_TempFN, [l_PubSource], l_Pages,
                       l3Str(l3CStr(l_Img.rSrcNumber)), l3BoxToStDate(l_Img.rSrcDateStart),
                       l3BoxToStDate(l_Img.rSrcDateEnd), False);
   end;
  end;
 end;
 l3System.Msg2Log(' Образ обработан');
end;

procedure ddImportFromMDP(const aOnError: TddErrorEvent; const aOnResult: TddMDPImportResultEvent; aProgressor:
    TddProgressObject);
var
 l_Tool: TddMDPImporter;
begin
 l_Tool := TddMDPImporter.Create;
 try
  l_Tool.OnError := aOnError;
  l_Tool.Import(aOnError, aOnResult, aProgressor);
 finally
  FreeAndNil(l_Tool);
 end;
end;

function TddMDPImporter.DoOnDictUpdate(aDictType: TDLType; aDocID, aSubID: TSubID; aName: Tl3CustomString): Boolean;
var
 l_AttrName: AnsiString;
begin
 Result := False;
 l_AttrName := cAttrPassport[DLType2AttrID(aDictType)].rName;
 DoReport(Format('ОШИБКА: Не найдено значение "%s"в словаре "%s"!', [aName.AsString, l_AttrName]));
end;

procedure TddMDPImporter.DoReport(const aMsg: AnsiString);
begin
 if Assigned(OnError) then
  OnError(aMsg);
end;

function TddMDPImporter.GetLastTimestamp: TDateTime;
var
 l_Ini: TCfgList;
begin
 l_Ini := TCfgList.Create(ConcatDirName(GlobalHtServer.Family[CurrentFamily].Path, 'base.ini'));
 try
  l_Ini.Section := cMDPCfgSection;
  Result := l_Ini.ReadParamDateTimeDef(cMDPLastUpdate, Now);
 finally
  FreeAndNil(l_Ini);
 end;
end;

procedure TddMDPImporter.Import(aOnError: TddErrorEvent;
                                aOnResult: TddMDPImportResultEvent;
                                aProgressor: TddProgressObject);
var
 l_DateSt: AnsiString;
 l_Reader: TddMDPReader;
 {$IFDEF MDP_TOFILE}
 l_Pipe  : TevdNativeWriter;
 l_Filer : Tl3DosFiler;
 {$ELSE}
 l_Pipe  : TddImportPipeFilter;
 {$ENDIF}
 l_Timestamp: TDateTime;
 l_DLL: IArchiAdapterDll;
 l_Searcher: ISearcher;
 l_Date: TDateTimeBox;
 l_Listener: IArchiEventsListener;
// l_SuccStr : IString;
 l_List: IGardocList;
 l_TStamp: TDateTime;
 l_NDE: TevNestedDocumentEliminator;
begin
 //l3System.Msg2Log('TArchiAdapterDll.Make...');
 l_DLL := TArchiAdapterDll.Make;
 //l3System.Msg2Log('...done');
  if l_DLL <> nil then
  begin
   //l3System.Msg2Log('l_DLL.GetSearcher...');
   l_Searcher := l_DLL.GetSearcher;
   //l3System.Msg2Log('...done');
   //l3System.Msg2Log('l_DLL.GetArchiEventsListener...');
   l_Listener := l_DLL.GetArchiEventsListener;
   //l3System.Msg2Log('...done');
  //l_SuccStr := l_DLL.MakeString(cSuccessEventStr);
   if l_Searcher <> nil then
   begin

    l_TStamp := GetLastTimestamp;
    l3DateTimeToBox(l_TStamp, l_Date);
    try
     with l_Date do
      l3System.Msg2Log('Синхронизация документов с MDP с %s',
                       [Format('%.2d.%.2d.%4d %.2d:%.2d', [rDay, rMounth, rYear, rHour, rMinute])]);

     {$IFDEF MDP_TEST}
     l_List := GetTestSet1(l_DLL);
     {$ELSE}
     //l3System.Msg2Log('l_Searcher.GetRecentlyCreatedSince...');
     l_Searcher.GetRecentlyCreatedSince(l_Date, l_List);
     //l3System.Msg2Log('...done');
     {$ENDIF}

     if (l_List <> nil) and (l_List.Count > 0) then
     begin
      l_Reader := TddMDPReader.Create;
      try
       l_Reader.Timestamp := l_TStamp;
       l_Reader.DocList:= l_List;
       l_Reader.OnError := aOnError;
       l_Reader.OnResult := aOnResult;
       l_Reader.Progressor:= aProgressor;
       {$IFDEF MDP_TOFILE}
       l_Pipe := TevdNativeWriter.Create;
       l_Filer := Tl3DOSFiler.Make('c:\temp\mdp_import.evd', l3_fmWrite);
       try
        l_Pipe.Filer := l_Filer; 
       finally
        FreeAndNil(l_Filer);
       end;
       {$ELSE}
       l_Pipe := TddImportPipeFilter.Create(CurrentFamily);
       l_Pipe.OnDictionaryUpdate := DoOnDictUpdate;
       {$ENDIF}
       try
        l_NDE := TevNestedDocumentEliminator.Create;
        try
         l_Reader.Generator := l_NDE;
         l_NDE.Generator := l_Pipe;
         l_Reader.Execute;
         SaveLastTimestamp(l_Reader.Timestamp);
         l3System.Msg2Log('Следующая синхронизация документов с MDP с %s', [DateTimeToStr(l_Reader.Timestamp)]);
        finally
         FreeAndNil(l_NDE);
        end;
       finally
        FreeAndNil(l_Pipe);
       end;
      finally
       FreeAndNil(l_Reader);
      end;
     end // l_List.Count > 0
     else
      l3System.Msg2Log('Документов нет');
     l3System.Msg2Log('Синхронизация завершена');
    except
     on ECommunicationFailure do
      DoReport('Ошибка связи с сервером MDP');
     on  ECantFindServer do
      DoReport('Не найден сервер MDP');
    end;
   end;
  end;
end;

procedure TddMDPImporter.SaveLastTimestamp(const aTimestamp: TDateTime);
var
 l_Ini: TCfgList;
begin
 l_Ini := TCfgList.Create(ConcatDirName(GlobalHtServer.Family[CurrentFamily].Path, 'base.ini'));
 try
  l_Ini.Section := cMDPCfgSection;
  l_Ini.WriteParamDateTime(cMDPLastUpdate, aTimeStamp);
 finally
  FreeAndNil(l_Ini);
 end;
end;

function TddMDPImportResultObj.OCompare(anObject: TObject): Integer;
begin
(*
  rName    : AnsiString;
  rIsNew   : Boolean;
  rDocID   : TDocID;
  rComment : AnsiString;
  rUrgency : Byte;
*)
 (*
 if rUrgency < TddMDPImportResultObj(anObject).rUrgency then
  Result:= 1
 else
 if rUrgency > TddMDPImportResultObj(anObject).rUrgency then
  Result:= -1
 else
 *)
 if rIsNew <> TddMDPImportResultObj(anObject).rIsNew then
  Result:= IfThen(rIsNew, 1, -1)
 else
  Result:= AnsiCompareText(rComment, TddMDPImportResultObj(anObject).rComment);
end;

end.
