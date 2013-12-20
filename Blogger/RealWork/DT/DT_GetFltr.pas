Unit Dt_GetFltr;

{ $Id: DT_GetFltr.pas,v 1.69 2013/04/19 13:07:39 lulin Exp $ }

// $Log: DT_GetFltr.pas,v $
// Revision 1.69  2013/04/19 13:07:39  lulin
// - портируем.
//
// Revision 1.68  2013/03/26 12:21:31  fireton
// - удаляем поле Comment из дат/номеров
//
// Revision 1.67  2013/01/17 10:11:56  voba
// - перенес интерфейсы в отдельный модуль
//
// Revision 1.66  2011/06/10 12:49:03  voba
// - DocumentServer сделал функцией function DocumentServer(aFamily : TFamilyID), что бы отдельно Family не присваивать
//
// Revision 1.65  2010/09/24 12:11:14  voba
// - k : 235046326
//
// Revision 1.64  2009/09/29 13:25:07  voba
// - bug fix
//
// Revision 1.63  2009/07/22 11:27:26  narry
// - изменение доступа к DictServer
//
// Revision 1.62  2009/07/20 12:38:48  voba
// - Засунул renum в атрибуты
//
// Revision 1.61  2009/06/23 07:32:59  voba
// - стандартизация доступа к атрибутам
//
// Revision 1.60  2009/06/08 13:23:24  voba
// - enh. унификация атрибутов. Избавился от псевдоатрибутов atDateNumsChDate, atRelHLink,
//
// Revision 1.59  2009/04/13 09:13:18  narry
// - разделение определения типов и реализации
//
// Revision 1.58  2009/03/04 16:26:03  lulin
// - <K>: 137470629. Bug fix: не собирался Архивариус.
//
// Revision 1.57  2008/05/08 14:04:12  fireton
// - перенос объектов в потоках из ветки
//
// Revision 1.56  2008/05/07 16:04:02  voba
// - Refact. function .GetRelImportNum и GetINumber убил, вместо нех использовать GetExtDocID
//
// Revision 1.55  2008/02/22 18:26:35  lulin
// - доперевёл списки на модель.
//
// Revision 1.54  2007/11/12 13:51:12  voba
// - add attr ServiceInfo
// - bug fix
//
// Revision 1.53  2007/10/09 08:53:53  voba
// - merge with b_archi_export_refact2
//
// Revision 1.52.4.2  2007/09/17 10:53:31  voba
// no message
//
// Revision 1.52.4.1  2007/09/14 15:45:58  voba
// no message
//
// Revision 1.52  2007/09/10 13:53:55  voba
// - Добавляем Publisheds с fAddDocID
//
// Revision 1.51  2007/08/30 14:20:24  voba
// - bug fix
//
// Revision 1.50  2007/08/30 13:01:32  lulin
// - удален ненужный модуль.
//
// Revision 1.49  2007/08/15 11:29:08  voba
// - add TAddDocAttributeFilter..AddDocID (bug fix)
//
// Revision 1.48  2007/08/14 20:25:14  lulin
// - bug fix: не собиралася Архивариус.
//
// Revision 1.47  2007/08/14 14:30:07  lulin
// - оптимизируем перемещение блоков памяти.
//
// Revision 1.46  2007/08/13 14:16:27  voba
// - add  property    AddDocID
//
// Revision 1.45  2007/08/09 18:05:27  lulin
// - избавляемся от излишнего использования интерфейсов, т.к. переносимость может быть достигнута другими методами.
//
// Revision 1.44  2007/08/09 11:19:23  lulin
// - cleanup.
//
// Revision 1.43.4.2  2007/08/30 15:01:57  voba
// no message
//
// Revision 1.43.4.1  2007/08/20 06:31:29  voba
// no message
//
// Revision 1.43  2007/06/28 11:16:25  voba
// - refact. убрал из function TAbstractList.GetItem второй параметр
//
// Revision 1.42  2007/04/11 13:42:47  voba
// - bug fix
//
// Revision 1.41  2007/04/10 10:48:21  voba
// - refact.
//
// Revision 1.40  2007/03/26 09:34:03  fireton
// - изменился формат l3System.FreeLocalMem
//
// Revision 1.39  2006/06/05 13:58:32  voba
// - _move TdtFilterAttributes  to DT_GetFltr,  add atNotTM
//
// Revision 1.38  2005/05/16 11:00:00  voba
// - попилил atLogInfo на atDocLogInfo, atAnnoLogInfo
//
// Revision 1.37  2005/03/28 11:32:25  lulin
// - интерфейсы переехали в "правильный" модуль.
//
// Revision 1.36  2005/03/22 14:41:56  step
// исправлено название метода у LinkServer
//
// Revision 1.35  2005/03/22 10:42:20  voba
// - фильтруем AnnoDate при копировании
//
// Revision 1.34  2005/03/21 10:05:03  lulin
// - new interface: _Ik2Type.
//
// Revision 1.33  2005/03/16 08:38:27  voba
// - improve заменили PAnsiChar на AnsiString
//
// Revision 1.32  2004/09/21 12:04:20  lulin
// - Release заменил на Cleanup.
//
// Revision 1.31  2004/09/14 15:58:14  lulin
// - удален модуль Str_Man - используйте вместо него - l3String.
//
// Revision 1.30  2004/08/30 12:14:18  step
// директива RecalcHyperLinks заменена на одноименное свойство
//
// Revision 1.29  2004/08/26 17:06:07  step
// добавлена директива RecalcHyperLinks, отключающая проверку-исправление гиперссылок по HT-таблице
//
// Revision 1.28  2004/08/03 08:52:49  step
// замена dt_def.pas на DtDefine.inc
//
// Revision 1.27  2004/07/22 14:19:49  voba
// - rename fPriceLevel_Fld ->  fStatus_Fld  PriceLevel ->  Status, который выполняет функцию набора флагов состояния документа (см.dstatChargeFree, dstatNotTM   в  Dt_Const)
//
// Revision 1.26  2004/05/14 16:58:47  law
// - new units: k2TagTerminator, k2TagFilter.
//
// Revision 1.25  2004/05/14 14:48:59  law
// - исправлены префиксы у констант.
//
// Revision 1.24  2004/05/14 14:29:05  law
// - change: TevVariant переименован в Tk2Variant и переехал в k2Types.
//
// Revision 1.23  2004/03/16 08:06:40  step
// исправлена TAddDocAttributeFilter.WriteCurActive (учтено добавленное поле TYP)
//
// Revision 1.22  2004/03/05 16:54:43  step
// чистка кода
//
// Revision 1.21  2003/10/30 09:20:33  voba
// - new behavior : более гибкая настройка параметров для фильтрации атрибутов
//
// Revision 1.20  2003/04/30 08:19:48  demon
// - add: фильтрация всех полей из шапки документа, которые могут прийти на вход данного фильтра
//
// Revision 1.19  2003/04/09 16:11:26  demon
// - code fix
//
// Revision 1.18  2003/04/09 14:50:49  demon
// - new behavior: добавлено кэширование гипертекстовых ссылок.
//
// Revision 1.17  2003/04/04 13:58:22  demon
// -del: TAttributes - cписок атрибутов документа перенесен в Dt_Const
//
// Revision 1.16  2003/04/04 09:45:47  demon
// - new behavior: добавлено свойство Attributes, позволяющее настраивать
// какие атрибуты документа должны читаться из базы.
//
// Revision 1.15  2003/03/14 12:33:36  demon
// - new: добавлена поддержка команд Active и Alarm.
//
// Revision 1.14  2003/03/13 09:48:15  demon
// - new: добавлена обработка нового поля в данных документа - VerLink
//
// Revision 1.13  2003/03/12 10:35:43  demon
// - del: Внесены изменения в связи с удалением полей
// NoActive и PreActive из таблицы File
//
// Revision 1.12  2003/03/12 08:26:38  voba
// - демон поправил маленькую ошибку
//
// Revision 1.11  2003/02/11 10:04:38  voba
// - rename proc: l3NodeActionL2FA -> l3L2IA.
//
// Revision 1.10  2003/01/27 10:57:50  demon
// - new: add special type sDoNotGetNames, для словарей у которых имена
// не должны попадать в поток.
//
// Revision 1.9  2003/01/24 13:33:44  demon
// - bug fix
//
// Revision 1.8  2003/01/24 13:21:04  demon
// - bug fix
//
// Revision 1.7  2003/01/24 12:47:25  demon
// - bug fix: добавлена выливка комментария у записи DateNum
//
// Revision 1.6  2003/01/23 16:48:16  demon
// - new: объект TGetDocumentFilter переименован в TAddDocAttributeFilter.
// - new: добавлена поддержка расширенной информации о DateNum, Log, Check и Published атрибутах
//
// Revision 1.5  2003/01/20 13:46:52  demon
// - new: добавил выливку ExternalHandle для документа и справки.
//
// Revision 1.4  2003/01/20 12:41:00  demon
// - new behavior: добавлена возможность вывода имен словарных атрибутов в поток
// (свойство GetDictNames)
//
// Revision 1.3  2003/01/17 10:26:22  demon
// - bug fix
//
// Revision 1.2  2003/01/17 10:20:45  demon
// - new behavior: добавлено свойство SourceDocID, для ручного задания идентификатора документа.
//
// Revision 1.1  2003/01/16 15:29:04  demon
// - new behavior: Фильтр для загрузки атрибутов одного документа во внутреннем формате в трубу.
//

{$Include DtDefine.inc}

interface
uses
 Classes,
 l3Types, l3RecList, l3DatLst,
 k2Types, k2TagTerminator,

 Dt_Types, Dt_Const, dt_AttrSchema,
 Dt_DictTypes, dt_DictIntf,

 l3FieldSortRecList
 ;

type
(* Объект получает атрибуты одного документа из текущей базы
   и загружает их в поток (трубу).
   ID документа может быть выставлен как вручную (SourceDocID), так и
   определен автоматически (по тегу k2_tiInternalHandle) *)

  {используется только в CustEditWin procedure TCustomEditorWindow.DocumentSourceGetWriter}

 TAddDocAttributeFilter = class(Tk2TagTerminator, IDictChangeNotifyRecipient)
  private
   f_RecalcHyperLinks: Boolean;
   procedure SetRecalcHyperLinks(const aValue: Boolean);
  protected
   fFamily        : TFamilyID;
   fCurDocID      : TDocID;
   fCurDocType    : TDocType;

   fAddDocID      : TDocID;

   fAttributes    : TdtFilterAttributesSet;
   fMayGetHeader,
   fMayGetDictNames,
   fFiltredFlag   : Boolean;

   fHLinkList     : Tl3FieldSortRecList;

   fFullLists     : array[dlSources..dlAccGroups] of Tl3StringDataList;
   fFLGettedFlags : array[dlSources..dlAccGroups] of Boolean;
   fFLRefreshFlags: array[dlSources..dlAccGroups] of Boolean;

   procedure   SetDocID(aValue : TDocID);
   procedure   SetMayGetDictNames(aValue : Boolean);

   procedure   GetFullList(ListID : TDLType);
   procedure   CreateFullLists;
   procedure   FreeFullLists;
   procedure   GetFullLists;
   procedure   ClearFullLists;
   procedure   CheckRefreshFlags;
   procedure   GetDocHLinks;
   procedure   FreeDocHLinks;

   procedure   WriteCurDictData(DictType : TDLType;DictNum : TDictID);
   procedure   WriteCurStage(StageRec : PAnsiChar);
   procedure   WriteCurActive(ActiveRec : PAnsiChar);
   procedure   WriteCurAlarm(AlarmRec : PAnsiChar);
   procedure   WriteCurCheck(CheckRec : PAnsiChar);
   procedure   WriteCurPublish(PublishRec : PAnsiChar);

   procedure   GetHeaderData;
   procedure   GetHLinkData(aHLinkID : LongInt);
   procedure   GetSubData(SubID : TSubID);

   procedure   dcn_DictionaryChange(Info : TDictMessageRec);

   procedure   Cleanup; override;
  public
   constructor Create(aOwner : TComponent; aFamily : TFamilyID); reintroduce;

   {Main Data Initialization}
   procedure   OpenStream; override;
   procedure   CloseStream(NeedUndo : Boolean); override;

   procedure   AddAtomEx(AtomIndex : Long; const Value : Tk2Variant); override;

   procedure   StartTag(TagID : Long); override;
   procedure   StartChild(TypeID : Long); override;
   procedure   CloseStructure(NeedUndo : Boolean); override;

   { Свойство регулирует состав атрибутов, которые будут прочитаны из базы для
     текущего документа.
     По умолчанию из базы можно читать любые атрибуты - AllAttributes. }
   property    Attributes : TdtFilterAttributesSet read fAttributes write fAttributes;

   { Свойство регулирует возможность получения атрибутов, расположенных в заголовке
     текущего документа (header'а). Эта информация вставляется в поток данных сразу после
     InternalHandle.
     Этот флаг имеет больший приоритет, чем свойство Attributes. Т.е. даже если в
     Attributes перечислены атрибуты заголовка, а этот флаг не установлен - ни один
     атрибут заголовка читаться не будет.
     По умолчанию получение всех атрибутов header'а отключено - False. }
   property    MayGetHeader : Boolean read fMayGetHeader write fMayGetHeader;

   { Свойство регулирует возможность получения имен словарных атрибутов.
     По умолчанию получение имен атрибутов отключено - False. }
   property    MayGetDictNames : Boolean read fMayGetDictNames
                                         write SetMayGetDictNames;

   { Свойство позволяет присвоить идентификатор документа для которого будут
     выбираться данные. }
   property    SourceDocID  : TDocID read fCurDocID write SetDocID;

   { Свойство определяет, перечитывать ли гиперссылки по HT-таблице, или оставить их такими как есть
    (во избежание повторения обработки, которая была выполнена предыдущим фильтром)}
   property    RecalcHyperLinks: Boolean read f_RecalcHyperLinks write SetRecalcHyperLinks;

   //property    AddDocID : TDocID read fAddDocID write fAddDocID;
   {* - свойство определяет номер топика с которого будут копироваться атрибуты (сейчас только KW)}
 end;

implementation

uses
 SysUtils,
 HT_Dll, HT_Const,
 k2Tags, k2Interfaces,
 k2Base,
 l3Base, l3String, l3Chars, l3Date, l3Tree_TLB, l3Nodes, 
 dt_ImpExpTypes,
 Dt_err, DT_Hyper, Dt_Link, Dt_LinkServ, Dt_Doc,
 DT_Sab, DT_List, Dt_Serv, Dt_Log, DT_User,
 vtDebug,

  PIRec_Const,
  Check_Const,
  Stage_const,
  LogRecord_Const,
  Document_Const,
  Hyperlink_Const,
  Address_Const,
  Sub_Const,
  DocumentSub_Const,
  Block_Const,
  DictRec_Const,
  ActiveInterval_Const,
  Alarm_Const,
  NumAndDate_Const,
  AnnoTopic_Const,
  DictEntry_Const,
  DictItem_Const
 , dt_Dict;

type
 PReadHLinkRec = ^TReadHLinkRec;
 TReadHLinkRec = record
                  ID  : LongInt;
                  Doc : TDocID;
                  Sub : TSubID;
                 end;

constructor TAddDocAttributeFilter.Create(aOwner : TComponent; aFamily : TFamilyID);
var
 I : TDLType;
begin
 inherited Create(aOwner);
 if aFamily>0 then
  fFamily:=aFamily
 else
  raise EHtErrors.CreateInt(ecNotFamilyID);

 fCurDocID:=0;
 fCurDocType:=dtNone;
 fMayGetHeader:=False;
 fMayGetDictNames:=False;
 fAttributes := CdtAllAttributes;

 CreateFullLists;
end;

procedure TAddDocAttributeFilter.Cleanup;
begin
 FreeFullLists;

 inherited;
end;

procedure TAddDocAttributeFilter.SetDocID(aValue : TDocID);
begin
 if fCurDocID <> aValue then
 begin
  if StreamOpened then {in Process}
   raise EHtErrors.CreateInt(ecNotEnable)
  else
   fCurDocID:=aValue;
 end;
end;

procedure TAddDocAttributeFilter.SetMayGetDictNames(aValue : Boolean);
begin
 if fMayGetDictNames <> aValue then
 begin
  if StreamOpened then {in Process}
   raise EHtErrors.CreateInt(ecNotEnable)
  else
  begin
   fMayGetDictNames:=aValue;
   if fMayGetDictNames then
    GetFullLists
   else
    ClearFullLists;
  end;
 end;
end;

procedure TAddDocAttributeFilter.SetRecalcHyperLinks(const aValue: Boolean);
begin
 if StreamOpened then
  raise EHtErrors.CreateInt(ecNotEnable);

 f_RecalcHyperLinks := aValue;
end;

procedure TAddDocAttributeFilter.GetFullList(ListID : TDLType);
var
 TmpTree    : TDictRootNode;

 function IterHandler(CurNode : Il3Node) : Boolean; far;
 var
  TmpSize  : Word;
  TmpPChar : PAnsiChar;
 begin
  if not CurNode.HasChild then
  begin
   TmpPChar:=l3GetFullPathAlloc(TmpTree,CurNode);
   TmpSize:=StrLen(TmpPChar);
   fFullLists[ListID].Strings[(CurNode as IDictItem).Handle]:=TmpPChar;
   fFullLists[ListID].DataInt[(CurNode as IDictItem).Handle]:=TmpSize;
  end;
  Result:=False;
 end;

begin
 if not (ListID in [dlBases,dlNorms,dlAccGroups]) then
 begin
  fFullLists[ListID].Clear;
  fFullLists[ListID].NeedAllocStr:=False;
  fFullLists[ListID].DataSize:=SizeOf(Word);
  fFullLists[ListID].Count:=DictServer(fFamily).DictTbl[ListID].GetMaxID+1;
  TmpTree:=DictServer(fFamily).DictRootNode[ListID].Use;
  try
   TmpTree.IterateF(l3L2NA(@IterHandler),0);
  finally
   l3Free(TmpTree);
  end;
  fFLGettedFlags[ListID]:=True;
  fFLRefreshFlags[ListID]:=False;
 end
 else
 begin
  DictServer(fFamily).DictTbl[ListID].GetIndexDictList(fFullLists[ListID],false,False);
  fFLGettedFlags[ListID]:=True;
  fFLRefreshFlags[ListID]:=False;
 end;
end;

procedure TAddDocAttributeFilter.CreateFullLists;
var
 I : TDLType;
begin
 for I:=dlSources to dlAccGroups do
  if Not (I in sDoNotGetNames) then
   begin
    fFullLists[I]:=Tl3StringDataList.Create;
    fFLGettedFlags[I]:=False;
    fFLRefreshFlags[I]:=False;
   end
  else
   begin
    fFLGettedFlags[I]:=False;
    fFLRefreshFlags[I]:=False;
   end;
end;

procedure TAddDocAttributeFilter.FreeFullLists;
var
 I : TDLType;
begin
 for I:=dlSources to dlAccGroups do
  if not (I in sDoNotGetNames) then
   L3Free(fFullLists[I]);
end;

procedure TAddDocAttributeFilter.GetFullLists;
var
 I : TDLType;
begin
 for I:=dlSources to dlAccGroups do
  if not (I in sDoNotGetNames) then
   GetFullList(I);
end;

procedure TAddDocAttributeFilter.ClearFullLists;
var
 I : TDLType;
begin
 for I:=dlSources to dlAccGroups do
  if not (I in sDoNotGetNames) then
  begin
   fFullLists[I].Clear;
   fFLGettedFlags[I]:=False;
   fFLRefreshFlags[I]:=False;
  end;
end;

procedure TAddDocAttributeFilter.CheckRefreshFlags;
var
 lID : TDLType;
begin
 for lID:=dlSources to dlAccGroups do
  if fFLRefreshFlags[lID] then
  begin
   if fFLGettedFlags[lID] then
    GetFullList(lID);
   fFLRefreshFlags[lID]:=False;
  end;
end;

procedure TAddDocAttributeFilter.GetDocHLinks;
begin
 if not f_RecalcHyperLinks then Exit;
 if fCurDocID = 0 then
  raise EHtErrors.CreateInt(ecIDNotAssigned);

 fHLinkList := dtMakeRecListBySab(LinkServer(fFamily).HLinkTbl.GetHListOnDoc(fCurDocID).HTSab, [hlID_fld, hlDestD_fld, hlDestS_fld], [1]);
end;

procedure TAddDocAttributeFilter.FreeDocHLinks;
begin
 l3Free(fHLinkList);
end;

procedure TAddDocAttributeFilter.WriteCurDictData(DictType : TDLType;DictNum : TDictID);
begin
 Generator.StartChild(k2_idDictItem);
 try
  Generator.AddIntegerAtom(k2_tiHandle,DictNum);
  if fMayGetDictNames and
     not (DictType in sDoNotGetNames) and
     (fFullLists[DictType].Strings[DictNum]<>nil) then
   Generator.AddPCharLenAtom(k2_tiName,l3PCharLen(fFullLists[DictType].Strings[DictNum],
                                                  fFullLists[DictType].DataInt[DictNum],
                                                  CP_ANSI));
 finally
  Generator.Finish;
 end;
end;

procedure TAddDocAttributeFilter.WriteCurStage(StageRec : PAnsiChar);
const
 stTypeOffset  = 4;
 stBDateOffset = 5;
 stEDateOffset = 9;
 stUserOffset  = 13;
begin
 Generator.StartChild(k2_idStage);
 try
  Generator.AddIntegerAtom(k2_tiType,PByte(StageRec+stTypeOffset)^);
  Generator.StartTag(k2_tiUser);
  try
   Generator.AddIntegerAtom(k2_tiHandle,PDictID(StageRec+stUserOffset)^);
   if fMayGetDictNames and
      (UserManager.IndexedUsers.Strings[PDictID(StageRec+stUserOffset)^]<>nil) then
    Generator.AddPCharLenAtom(k2_tiName,l3PCharLen(UserManager.IndexedUsers.Strings[PDictID(StageRec+stUserOffset)^],
                                                   UserManager.IndexedUsers.DataInt[PDictID(StageRec+stUserOffset)^],
                                                   CP_ANSI));
  finally
   Generator.Finish;
  end;
  if PStDate(StageRec+stBDateOffset)^<>0 then
   Generator.AddIntegerAtom(k2_tiStart,PStDate(StageRec+stBDateOffset)^);
  if PStDate(StageRec+stEDateOffset)^<>0 then
   Generator.AddIntegerAtom(k2_tiFinish,PStDate(StageRec+stEDateOffset)^);
 finally
  Generator.Finish;
 end;
end;

procedure TAddDocAttributeFilter.WriteCurActive(ActiveRec : PAnsiChar);
const
 actRecIDOffset   = 4;
 actTypOffset     = 5;
 actStartOffset   = 6;
 actFinishOffset  = 10;
 actCommentOffset = 14;
 actCommentSize   = 1000;
var
 TmpPChar : PAnsiChar;
 TmpSize  : Word;
begin
 Generator.StartChild(k2_idActiveInterval);
 try
  Generator.AddIntegerAtom(k2_tiHandle,PByte(ActiveRec+actRecIDOffset)^);
  if PByte(ActiveRec + actTypOffset)^ <> 0 then
   Generator.AddIntegerAtom(k2_tiType, PByte(ActiveRec + actTypOffset)^);
  if PStDate(ActiveRec+actStartOffset)^<>0 then
   Generator.AddIntegerAtom(k2_tiStart,PStDate(ActiveRec+actStartOffset)^);
  if PStDate(ActiveRec+actFinishOffset)^<>0 then
   Generator.AddIntegerAtom(k2_tiFinish,PStDate(ActiveRec+actFinishOffset)^);
  TmpPChar:=ActiveRec+actCommentOffset;
  if TmpPChar[0] <> ' ' then
  begin
   TmpSize:=l3GetFilledArrayLength(TmpPChar,actCommentSize);
   Generator.AddPCharLenAtom(k2_tiComment,l3PCharLen(TmpPChar,TmpSize,CP_ANSI));
  end;
 finally
  Generator.Finish;
 end;
end;

procedure TAddDocAttributeFilter.WriteCurAlarm(AlarmRec : PAnsiChar);
const
 alRecIDOffset   = 4;
 alStartOffset   = 5;
 alCommentOffset = 9;
 alCommentSize   = 1000;
var
 TmpPChar : PAnsiChar;
 TmpSize  : Word;
begin
 Generator.StartChild(k2_idAlarm);
 try
  Generator.AddIntegerAtom(k2_tiHandle,PByte(AlarmRec+alRecIDOffset)^);
  if PStDate(AlarmRec+alStartOffset)^<>0 then
   Generator.AddIntegerAtom(k2_tiStart,PStDate(AlarmRec+alStartOffset)^);
  TmpPChar:=AlarmRec+alCommentOffset;
  if TmpPChar[0] <> ' ' then
  begin
   TmpSize:=l3GetFilledArrayLength(TmpPChar,alCommentSize);
   Generator.AddPCharLenAtom(k2_tiComment,l3PCharLen(TmpPChar,TmpSize,CP_ANSI));
  end;
 finally
  Generator.Finish;
 end;
end;

procedure TAddDocAttributeFilter.WriteCurCheck(CheckRec : PAnsiChar);
const
 chDateOffset  = 4;
 chPSourOffset = 8;
 chTypeOffset  = 12;
 chUserOffset  = 13;
 chCommOffset  = 17;
 chCommSize    = 70;
var
 TmpPChar : PAnsiChar;
 TmpSize  : Word;
begin
 Generator.StartChild(k2_idCheck);
 try
  Generator.AddIntegerAtom(k2_tiHandle,PLongInt(CheckRec)^);
  if PStDate(CheckRec+chDateOffset)^<>0 then
   Generator.AddIntegerAtom(k2_tiStart,PStDate(CheckRec+chDateOffset)^);
  Generator.AddIntegerAtom(k2_tiSource,PLongInt(CheckRec+chPSourOffset)^);
  Generator.AddIntegerAtom(k2_tiType,PByte(CheckRec+chTypeOffset)^);
  Generator.StartTag(k2_tiUser);
  try
   Generator.AddIntegerAtom(k2_tiHandle,PDictID(CheckRec+chUserOffset)^);
   if fMayGetDictNames and
      (UserManager.IndexedUsers.Strings[PDictID(CheckRec+chUserOffset)^]<>nil) then
    Generator.AddPCharLenAtom(k2_tiName,l3PCharLen(UserManager.IndexedUsers.Strings[PDictID(CheckRec+chUserOffset)^],
                                                   UserManager.IndexedUsers.DataInt[PDictID(CheckRec+chUserOffset)^],
                                                   CP_ANSI));
  finally
   Generator.Finish;
  end;
  TmpPChar:=CheckRec+chCommOffset;
  if TmpPChar[0] <> ' ' then
  begin
   TmpSize:=l3GetFilledArrayLength(TmpPChar,chCommSize);
   Generator.AddPCharLenAtom(k2_tiComment,l3PCharLen(TmpPChar,TmpSize,CP_ANSI));
  end;
 finally
  Generator.Finish;
 end;
end;

procedure TAddDocAttributeFilter.WriteCurPublish(PublishRec : PAnsiChar);
const
 piSourOffset  = 4;
 piSDateOffset = 8;
 piEDateOffset = 12;
 piNumberOffset= 16;
 piCommOffset  = 26;
 piNumSize     = 10;
 piCommSize    = 70;
var
 TmpPChar : PAnsiChar;
 TmpSize  : Word;
begin
 Generator.StartChild(k2_idPIRec);
 try
  Generator.AddIntegerAtom(k2_tiHandle,PLongInt(PublishRec)^);
  if PDictID(PublishRec+piSourOffset)^<>0 then
  begin
   Generator.StartTag(k2_tiSource);
   try
    Generator.AddIntegerAtom(k2_tiHandle,PDictID(PublishRec+piSourOffset)^);
    if fMayGetDictNames and
       (fFullLists[dlCorSources].Strings[PDictID(PublishRec+piSourOffset)^]<>nil) then
     Generator.AddPCharLenAtom(k2_tiName,l3PCharLen(fFullLists[dlCorSources].Strings[PDictID(PublishRec+piSourOffset)^],
                                                    fFullLists[dlCorSources].DataInt[PDictID(PublishRec+piSourOffset)^],
                                                    CP_ANSI));
   finally
    Generator.Finish;
   end;
  end;
  if PStDate(PublishRec+piSDateOffset)^<>0 then
   Generator.AddIntegerAtom(k2_tiStart,PStDate(PublishRec+piSDateOffset)^);
  if PStDate(PublishRec+piEDateOffset)^<>0 then
   Generator.AddIntegerAtom(k2_tiFinish,PStDate(PublishRec+piEDateOffset)^);
  TmpPChar:=PublishRec+piNumberOffset;
  if TmpPChar[0] <> ' ' then
  begin
   TmpSize:=l3GetFilledArrayLength(TmpPChar,piNumSize);
   Generator.AddPCharLenAtom(k2_tiNumber,l3PCharLen(TmpPChar,TmpSize,CP_ANSI));
  end;
  TmpPChar:=PublishRec+piCommOffset;
  if TmpPChar[0] <> ' ' then
  begin
   TmpSize:=l3GetFilledArrayLength(TmpPChar,piCommSize);
   Generator.AddPCharLenAtom(k2_tiComment,l3PCharLen(TmpPChar,TmpSize,CP_ANSI));
  end;
 finally
  Generator.Finish;
 end;
end;

procedure TAddDocAttributeFilter.GetHeaderData;
var
 I          : TdtFilterAttributes;
 TmpSab,
 LinkSab    : Sab;
 DictNum    : TDictID;

 DictType   : TDLType;
 TagType    : LongInt;

 DNList,
 LogList    : Tl3DataList;
 SortOrder  : TSortRec;
 J          : LongInt;

 TmpStDate  : TStDateTimeRec;
 K          : TLogActionType;
 TmpDates   : PStDate;
 DateCount  : Word;

 TmpMode    : TOpenMode;
 LinkList   : TAbstractList;
 TmpRec     : PAnsiChar;

 TmpSize    : Word;

 TmpCardRec : TExpCardRec;

 ExtID      : TDocID;

 procedure WriteDocHeader;
 var
  lStatusMask : Cardinal;
 begin
  Generator.AddIntegerAtom(k2_tiType,TmpCardRec.InternalType);
  fCurDocType:=TDocType(TmpCardRec.InternalType);

  if TUserType(TmpCardRec.Flag)<>utNone then
   Generator.AddIntegerAtom(k2_tiUserType,TmpCardRec.Flag);

  if (TmpCardRec.ShortName <> '') and
     (atShortName in fAttributes) then
   Generator.AddStringAtom(k2_tiShortName, TmpCardRec.ShortName);

  if (TmpCardRec.FullName <> '') and
     (atFullName in fAttributes) then
   Generator.AddStringAtom(k2_tiName,TmpCardRec.FullName);

  lStatusMask := 0;
  if atPriceLevel in fAttributes then
   lStatusMask := lStatusMask or dstatChargeFree;
  if atNotTM in fAttributes then
   lStatusMask := lStatusMask or dstatNotTM;

  if TmpCardRec.Status and lStatusMask <> 0 then
   Generator.AddIntegerAtom(k2_tiPriceLevel, TmpCardRec.Status and lStatusMask);

  if TmpCardRec.PriorFlag and
     (atPriority in fAttributes) then
   Generator.AddIntegerAtom(k2_tiPriority,TmpCardRec.Priority);
  if (TmpCardRec.SortDate<>0) and
     (atSortDate in fAttributes) then
   Generator.AddIntegerAtom(k2_tiSortDate,TmpCardRec.SortDate);
  if (TmpCardRec.Related<>0) and
     (atRelated in fAttributes) then
  begin
   Generator.AddIntegerAtom(k2_tiRelInternalHandle,TmpCardRec.Related);
   ExtID := LinkServer(fFamily).Renum.GetExtDocID(TmpCardRec.Related);
   if ExtID <> cUndefDocID then
    Generator.AddIntegerAtom(k2_tiRelExternalHandle,ExtID);
  end;
  if (TmpCardRec.VerLink<>0) and
     (atVerLink in fAttributes) then
  begin
   Generator.AddIntegerAtom(k2_tiInternalVerLink,TmpCardRec.VerLink);
   ExtID:=LinkServer(fFamily).Renum.GetExtDocID(TmpCardRec.VerLink);
   if ExtID <> cUndefDocID then
    Generator.AddIntegerAtom(k2_tiExternalVerLink,ExtID);
  end;
 end;

 procedure lOutLinkData(aDocID : TDocID);
 begin
  if DictType in sSubLinkDicts then
   TSubLinkTbl(LinkServer(fFamily).Links[DictType]).GetSubNodes(aDocID,0,LinkSab)
  else
   LinkServer(fFamily).Links[DictType].GetNodes(aDocID,LinkSab,True);
  try
   if LinkSab.gFoundCnt>0 then
   begin
    Ht(htOpenResults(LinkSab,ROPEN_READ,Nil,0));
    try
     Generator.StartTag(TagType);
     try
      while htReadResults(LinkSab,@DictNum,SizeOf(DictNum))<>0 do
       WriteCurDictData(DictType,DictNum);
     finally
      Generator.Finish;
     end;
    finally
     htCloseResults(LinkSab);
    end;
   end;
  finally
   htClearResults(LinkSab);
  end;
 end;

begin
 if  fCurDocID = 0 then
  raise EHtErrors.CreateInt(ecIDNotAssigned);

 l3FillChar(TmpCardRec,SizeOf(TExpCardRec));
 try
  DocumentServer(fFamily).FileTbl.GetExpCard(fCurDocID,@TmpCardRec);
  WriteDocHeader;
 except
  fCurDocType:=dtRelText;
  Generator.AddIntegerAtom(k2_tiType,Integer(dtRelText));
 end;

 if fCurDocType in [dtText,dtObject] then
  For I:=Low(TExpDictData) to High(TExpDictData) do
   if I in fAttributes then
   Case I of
    atSources,
    atTypes,
    atClasses,
    atKeyWords,
    atBases,
    atWarnings,
    atPrefixes,
    atTerritories,
    atNorms,
    atAccGroups,
    atServiceInfo :
     begin
      case I of
       atBases :
        begin
         DictType:=dlBases;
         TagType:=k2_tiGroups;
        end;
       atTypes :
        begin
         DictType:=dlTypes;
         TagType:=k2_tiTypes;
        end;
       atSources :
        begin
         DictType:=dlSources;
         TagType:=k2_tiSources;
        end;
       atTerritories :
        begin
         DictType:=dlTerritories;
         TagType:=k2_tiTerritory;
        end;
       atPrefixes :
        begin
         DictType:=dlPrefixes;
         TagType:=k2_tiPrefix;
        end;
       atClasses :
        begin
         DictType:=dlClasses;
         TagType:=k2_tiClasses;
        end;
       atKeyWords :
        begin
         DictType:=dlKeyWords;
         TagType:=k2_tiKeyWords;
        end;
       atWarnings :
        begin
         DictType:=dlWarnings;
         TagType:=k2_tiWarnings;
        end;
       atNorms :
        begin
         DictType:=dlNorms;
         TagType:=k2_tiNorm;
        end;
       atAccGroups :
        begin
         DictType:=dlAccGroups;
         TagType:=k2_tiAccGroups;
        end;
       atServiceInfo :
       begin
        DictType := dlServiceInfo;
        TagType := k2_tiServiceInfo;
       end
       else
        begin
         DictType:=dlNone;
         TagType:=0;
        end;
      end;

      lOutLinkData(fCurDocID);
      if (fAddDocID > 0) and (DictType = dlKeyWords) then
       lOutLinkData(fAddDocID);
     end;
    atDateNums :
     begin
      DNList:=Tl3DataList.Create;
      DNList.DataSize:=SizeOf(TDNDictRec);
      try
       l3FillChar(SortOrder,SizeOf(TSortRec));
       LinkServer(fFamily).GetDataList(dlDateNums,fCurDocID,DNList,SortOrder);

       if DNList.Count > 0 then
       begin
        Generator.StartTag(k2_tiNumANDDates);
        try
         for J:=0 to Pred(DNList.Count) do
         begin
          Generator.StartChild(k2_idNumANDDate);
          try
           with PDNDictRec(DNList.Data[J])^ do
           begin
            Generator.AddIntegerAtom(k2_tiHandle,ID);
            Generator.AddIntegerAtom(k2_tiType,Byte(Typ));
            if (Date<>BlankDate) then
             Generator.AddIntegerAtom(k2_tiStart,Date);
            if (Num[1] <> ' ') then
            begin
             TmpSize := l3GetFilledArrayLength(@Num,SizeOf(TNumberStr));
             Generator.AddPCharLenAtom(k2_tiNumber,l3PCharLen(@Num,TmpSize,CP_ANSI));
            end;
           end;
          finally
           Generator.Finish;
          end;
         end;
        finally
         Generator.Finish;
        end;
       end;
      finally
       L3Free(DNList);
      end;
     end;
    atLogRecords:
     if (atLogRecords in fAttributes) then
     begin
      LogList := Tl3DataList.Create;
      LogList.DataSize:=SizeOf(TReadDisplayLogRec);
      try
       LinkServer(fFamily).LogBook.GetLogDataList(fCurDocID,acfNone,LogList,True);

       // фильтруем часть записей
       if (LogList.Count > 0) then
       begin
        J := 0;
        while J < LogList.Count do
         with PReadDisplayLogRec(LogList.Data[J])^ do
          if (fCurDocType <> dtAnnotation) xor (TLogActionType(Action) in cAnnoLogActions) then
           LogList.Delete(J)
          else
           Inc(J);
       end;

       if LogList.Count>0 then
       begin
        Generator.StartTag(k2_tiLogRecords);
        try
         for J:=0 to LogList.Count-1 do
         begin
          Generator.StartChild(k2_idLogRecord);
          try
           with PReadDisplayLogRec(LogList.Data[J])^ do
           begin
            Generator.AddIntegerAtom(k2_tiType,Action);
            Generator.AddIntegerAtom(k2_tiStart,Date);
            Generator.AddIntegerAtom(k2_tiTime,Time);
            Generator.StartTag(k2_tiUser);
            try
             Generator.AddIntegerAtom(k2_tiHandle,Author);
             if fMayGetDictNames and
                (UserManager.IndexedUsers.Strings[Author]<>nil) then
              Generator.AddPCharLenAtom(k2_tiName,l3PCharLen(UserManager.IndexedUsers.Strings[Author],
                                                             UserManager.IndexedUsers.DataInt[Author],
                                                             CP_ANSI));
            finally
             Generator.Finish;
            end;
           end;
          finally
           Generator.Finish;
          end;
         end;
        finally
         Generator.Finish;
        end;
       end;
      finally
       L3Free(LogList);
      end;
     end;
    atStages:
     begin
      LinkSab := LinkServer(fFamily).Stages.GetStagesOnDoc(fCurDocID);
      try
       if LinkSab.gFoundCnt>0 then
       begin
        Generator.StartTag(k2_tiStages);
        try
         with TmpMode do
         begin
          openMode:=ROPEN_BODY;
          FldArr:=Nil;
          Count:=0;
         end;
         LinkList:=TAbstractList.Create(@LinkSab,TmpMode);
         try
          LinkList.ReadForvard:=True;
          for J:=0 to LinkList.Count-1 do
          begin
           TmpRec:=LinkList.GetItem(J);
           WriteCurStage(TmpRec);
          end;
         finally
          l3Free(LinkList);
         end;
        finally
         Generator.Finish;
        end;
       end;
      finally
       htClearResults(LinkSab);
      end;
     end;
    atActiveIntervals:
     begin
      LinkSab := LinkServer(fFamily).ActiveIntervals.GetActiveIntervalsOnDoc(fCurDocID);
      try
       if LinkSab.gFoundCnt>0 then
       begin
        Generator.StartTag(k2_tiActiveIntervals);
        try
         with TmpMode do
         begin
          openMode:=ROPEN_BODY;
          FldArr:=nil;
          Count:=0;
         end;
         LinkList:=TAbstractList.Create(@LinkSab,TmpMode);
         try
          LinkList.ReadForvard:=True;
          for J:=0 to LinkList.Count-1 do
          begin
           TmpRec:=LinkList.GetItem(J);
           WriteCurActive(TmpRec);
          end;
         finally
          l3Free(LinkList);
         end;
        finally
         Generator.Finish;
        end;
       end;
      finally
       htClearResults(LinkSab);
      end;
     end;
    atAlarms:
     begin
      LinkSab:=LinkServer(fFamily).Alarms.GetAlarmsOnDoc(fCurDocID);
      try
       if LinkSab.gFoundCnt>0 then
       begin
        Generator.StartTag(k2_tiAlarms);
        try
         with TmpMode do
         begin
          openMode:=ROPEN_BODY;
          FldArr:=nil;
          Count:=0;
         end;
         LinkList:=TAbstractList.Create(@LinkSab,TmpMode);
         try
          LinkList.ReadForvard:=True;
          for J:=0 to LinkList.Count-1 do
          begin
           TmpRec:=LinkList.GetItem(J);
           WriteCurAlarm(TmpRec);
          end;
         finally
          l3Free(LinkList);
         end;
        finally
         Generator.Finish;
        end;
       end;
      finally
       htClearResults(LinkSab);
      end;
     end;
    atCorrects:
     begin
      LinkServer(fFamily).Links[dlCorrects].GetNodes(fCurDocID,TmpSab,True);
      try
       LinkSab:=DictServer(fFamily).GroupTbl[dlCorrects].GetFullSabOnValues(TmpSab);
       try
        if LinkSab.gFoundCnt>0 then
        begin
         Generator.StartTag(k2_tiChecks);
         try
          with TmpMode do
          begin
           openMode:=ROPEN_BODY;
           FldArr:=Nil;
           Count:=0;
          end;
          LinkList:=TAbstractList.Create(@LinkSab,TmpMode);
          try
           LinkList.ReadForvard:=True;
           for J:=0 to LinkList.Count-1 do
           begin
            TmpRec:=LinkList.GetItem(J);
            WriteCurCheck(TmpRec);
           end;
          finally
           l3Free(LinkList);
          end;
         finally
          Generator.Finish;
         end;
        end;
       finally
        htClearResults(LinkSab);
       end;
      finally
       htClearResults(TmpSab);
      end;
     end;
    atPublisheds:
     begin
      LinkServer(fFamily).Links[dlPublisheds].GetNodes(fCurDocID,TmpSab,True);
      try
       LinkSab:=DictServer(fFamily).GroupTbl[dlPublisheds].GetFullSabOnValues(TmpSab);
       try
        if LinkSab.gFoundCnt>0 then
        begin
         Generator.StartTag(k2_tiPublishedIn);
         try
          with TmpMode do
          begin
           openMode:=ROPEN_BODY;
           FldArr:=Nil;
           Count:=0;
          end;

          LinkList:=TAbstractList.Create(@LinkSab,TmpMode);
          try
           LinkList.ReadForvard:=True;
           for J:=0 to LinkList.Count-1 do
           begin
            TmpRec:=LinkList.GetItem(J);
            WriteCurPublish(TmpRec);
           end;
          finally
           l3Free(LinkList);
          end;
           // Добавляем Publisheds с fAddDocID
           if (fAddDocID > 0) then
           begin
            LinkServer(fFamily).Links[dlPublisheds].GetNodes(fCurDocID, TmpSab, True);
            LinkSab := DictServer(fFamily).GroupTbl[dlPublisheds].GetFullSabOnValues(TmpSab);
            LinkList := TAbstractList.Create(@LinkSab,TmpMode);
            try
             LinkList.ReadForvard:=True;
             for J:=0 to LinkList.Count-1 do
             begin
              TmpRec:=LinkList.GetItem(J);
              WriteCurPublish(TmpRec);
             end;
            finally
             l3Free(LinkList);
            end;
           end;
         finally
          Generator.Finish;
         end;
        end;
       finally
        htClearResults(LinkSab);
       end;
      finally
       htClearResults(TmpSab);
      end;
     end;
   end; //Case I of
end;

procedure TAddDocAttributeFilter.GetSubData(SubID : TSubID);
var
 LinkSab   : Sab;
 I         : TdtFilterAttributes;
 DictNum   : TDictID;

 DictType  : TDLType;
 TagType   : LongInt;

 procedure lOutLinkData(aDocID : TDocID);
 begin
  TSubLinkTbl(LinkServer(fFamily).Links[DictType]).GetSubNodes(aDocID,SubID,LinkSab);
  try
   if LinkSab.gFoundCnt > 0 then
   begin
    Ht(htOpenResults(LinkSab,ROPEN_READ,Nil,0));
    try
     Generator.StartTag(TagType);
     try
      while htReadResults(LinkSab,@DictNum,SizeOf(DictNum))<>0 do
       WriteCurDictData(DictType,DictNum);
     finally
      Generator.Finish;
     end;
    finally
     htCloseResults(LinkSab);
    end;
   end;
  finally
   htClearResults(LinkSab);
  end;
 end;
begin
 if  fCurDocID = 0 then
  raise EHtErrors.CreateInt(ecIDNotAssigned);

 For I:=Low(TExpDictData) to High(TExpDictData) do
  if I in fAttributes then
  case I of
   atTypes,
   atClasses,
   atKeyWords,
   atPrefixes,
   atServiceInfo :
    begin
     case I of
      atTypes :
       begin
        DictType:=dlTypes;
        TagType:=k2_tiTypes;
       end;
      atPrefixes :
       begin
        DictType:=dlPrefixes;
        TagType:=k2_tiPrefix;
       end;
      atClasses :
       begin
        DictType:=dlClasses;
        TagType:=k2_tiClasses;
       end;
      atKeyWords :
       begin
        DictType:=dlKeyWords;
        TagType:=k2_tiKeyWords;
       end;
      atServiceInfo :
       begin
        DictType := dlServiceInfo;
        TagType := k2_tiServiceInfo;
       end
      else
       begin
        DictType:=dlNone;
        TagType:=0;
       end
     end;

     lOutLinkData(fCurDocID);
     if (fAddDocID > 0) and (DictType = dlKeyWords) then
       lOutLinkData(fAddDocID);

    end;
  end;
end;

procedure TAddDocAttributeFilter.GetHLinkData(aHLinkID : LongInt);
var
 lCurItem  : PReadHLinkRec;
 lCurIndex : Integer;
begin
 if fCurDocID = 0 then
  raise EHtErrors.CreateInt(ecIDNotAssigned);

 if fHLinkList.FindPart(aHLinkID, SizeOf(aHLinkID), lCurIndex) then
 begin
  while lCurIndex < fHLinkList.Count do
  begin
   lCurItem := PReadHLinkRec(fHLinkList.ItemSlot(lCurIndex));
   if lCurItem.ID <> aHLinkID then Break;

   Generator.StartChild(k2_idAddress);
   try
    Generator.AddIntegerAtom(k2_tiDocID, lCurItem.Doc);
    Generator.AddIntegerAtom(k2_tiSubID, lCurItem.Sub);
   finally
    Generator.Finish;
   end;
   Inc(lCurIndex);
  end;
 end;
end;

procedure TAddDocAttributeFilter.dcn_DictionaryChange(Info : TDictMessageRec);
begin
 if (Info.Operation in [atAdd,atDelete,atEdit]) then
 begin
  if not StreamOpened then {NOT in Process}
  begin
   if not (Info.DictType in sDoNotGetNames) and
    fFLGettedFlags[Info.DictType] then
   GetFullList(Info.DictType);
  end
 else
  if not (Info.DictType in sDoNotGetNames) then
   fFLRefreshFlags[Info.DictType]:=True;
 end;
end;

procedure TAddDocAttributeFilter.AddAtomEx(AtomIndex : Long; const Value : Tk2Variant);
var
 TmpHL      : LongInt;
 TmpSub     : TSubID;
 CurTopType : Tk2Type;
 ExtID      : TDocID;
begin
 if Not fFiltredFlag then
 begin
  If TopType[0].InheritsFrom(k2_idDocument) and
     ((AtomIndex = k2_tiType) or
      (AtomIndex = k2_tiShortName) or
      (AtomIndex = k2_tiName) or
      (AtomIndex = k2_tiUserType) or
      (AtomIndex = k2_tiPriceLevel) or
      (AtomIndex = k2_tiSortDate) or
      (AtomIndex = k2_tiPriority) or
      (AtomIndex = k2_tiRelExternalHandle) or
      (AtomIndex = k2_tiRelInternalHandle) or
      (AtomIndex = k2_tiExternalVerLink) or
      (AtomIndex = k2_tiRelInternalHandle)) then
   exit;

  Generator.AddAtomEx(AtomIndex,Value);
  case AtomIndex of
   k2_tiInternalHandle :
    if TopType[0].InheritsFrom(k2_idDocument) then
    begin
     if fCurDocID = 0 then
      if (Value.Kind=k2_vkInteger) then
      begin
       fCurDocID:=TDocID(Value.AsInteger);
       ExtID:=LinkServer(fFamily).Renum.GetExtDocID(fCurDocID);
       if ExtID <> cUndefDocID then
        Generator.AddIntegerAtom(k2_tiExternalHandle,ExtID);
       if f_RecalcHyperLinks then
        GetDocHLinks; // Буфферизация всех гипертекстовых ссылок документа
      end
      else
       ConvertErrorEx(Value.Kind);
     if fMayGetHeader then
      GetHeaderData;
    end;
   k2_tiHandle :
    if TopType[0].InheritsFrom(k2_idHyperLink) then
    begin
     if f_RecalcHyperLinks then
     begin
      if (Value.Kind=k2_vkInteger) then
      begin
       TmpHL:=LongInt(Value.AsInteger);
       GetHLinkData(TmpHL);
      end
      else
       ConvertErrorEx(Value.Kind);
     end;
    end
    else
    begin
     CurTopType:=TopType[0];
     if CurTopType.InheritsFrom(k2_idSub) and
        Not CurTopType.InheritsFrom(k2_idDocumentSub) and
        Not CurTopType.InheritsFrom(k2_idDocument) then
     begin
      if (Value.Kind=k2_vkInteger) then
      begin
       TmpSub:=TSubID(Value.AsInteger);
       GetSubData(TmpSub);
      end
      else
       ConvertErrorEx(Value.Kind);
     end;
    end;
  end;
 end;
end;

procedure TAddDocAttributeFilter.StartTag(TagID : Long);
begin
 inherited;
 Generator.StartTag(TagID);
end;

procedure TAddDocAttributeFilter.StartChild(TypeID : Long);
begin
 inherited;

 if f_RecalcHyperLinks
  and TopType[0].InheritsFrom(k2_idAddress)
  and TopType[1].InheritsFrom(k2_idHyperLink)
 then
  fFiltredFlag:=True;

 if not fFiltredFlag then Generator.StartChild(TypeID);
end;

procedure TAddDocAttributeFilter.CloseStructure(NeedUndo : Boolean);
begin
 try
  if f_RecalcHyperLinks
   and TopType[0].InheritsFrom(k2_idAddress)
   and TopType[1].InheritsFrom(k2_idHyperLink)
  then
   fFiltredFlag:=False
  else
   Generator.Finish;
 finally
  inherited;
 end;
end;

procedure TAddDocAttributeFilter.OpenStream;
begin
 fCurDocType:=dtNone;
 fFiltredFlag:=False;

 if f_RecalcHyperLinks and (fCurDocID <> 0) then
  GetDocHLinks; // Буфферизация всех гипертекстовых ссылок документа

 inherited;
end;

procedure TAddDocAttributeFilter.CloseStream(NeedUndo : Boolean);
begin
 fCurDocID:=0;
 fCurDocType:=dtNone;
 CheckRefreshFlags;
 FreeDocHLinks;

 inherited;
end;

end.