unit Dt_TblCache;

{ $Id: Dt_TblCache.pas,v 1.79 2013/08/23 09:14:14 voba Exp $ }

// $Log: Dt_TblCache.pas,v $
// Revision 1.79  2013/08/23 09:14:14  voba
// - K:236721575 (Загрузка и запись атрибутов из тегов EVD)
//
// Revision 1.78  2013/04/19 13:07:39  lulin
// - портируем.
//
// Revision 1.77  2012/09/07 14:32:24  voba
// - bug fix
//
// Revision 1.76  2012/04/19 06:06:00  voba
// - bug fix
//
// Revision 1.75  2012/04/18 12:42:47  voba
// Борьба с расходом памяти
//
// Revision 1.74  2011/06/10 12:49:03  voba
// - DocumentServer сделал функцией function DocumentServer(aFamily : TFamilyID), что бы отдельно Family не присваивать
//
// Revision 1.73  2011/05/31 12:31:56  voba
// - k : 236721575
//
// Revision 1.72  2011/03/25 11:03:15  voba
// - k : 236721575
//
// Revision 1.71  2010/09/24 12:11:14  voba
// - k : 235046326
//
// Revision 1.70  2009/10/26 14:39:35  voba
// - Похоже была бага приведения типов в TVarRec
//
// Revision 1.69  2009/07/22 11:27:26  narry
// - изменение доступа к DictServer
//
// Revision 1.68  2009/06/23 07:32:59  voba
// - стандартизация доступа к атрибутам
//
// Revision 1.67  2009/06/08 13:23:25  voba
// - enh. унификация атрибутов. Избавился от псевдоатрибутов atDateNumsChDate, atRelHLink,
//
// Revision 1.66  2009/05/08 11:10:08  voba
// - заменил TblH на Handle
//
// Revision 1.65  2009/04/13 07:10:58  narry
// - разделение определения типов и реализации
//
// Revision 1.64  2009/02/20 13:27:58  fireton
// - команда !CHANGE (K 77235676)
// - 131 версия базы
//
// Revision 1.63  2009/02/18 13:54:52  voba
// - попилил список удаленных на два - реально удаленных и удаленных для эмуляции редактирования
//
// Revision 1.62  2009/02/16 09:20:32  voba
// - вытащил function AttrType2DictType в интерфесную секцию
//
// Revision 1.61  2009/02/06 07:29:47  voba
// - enh. проверка на пустой список в MakeValueSet
//
// Revision 1.60  2008/03/13 12:53:35  voba
// - bug fix
//
// Revision 1.59  2008/03/13 12:51:13  voba
// - add  class TCacheDirectAddAttrData
//
// Revision 1.58  2008/03/04 11:39:10  voba
// - add TCachingMode cmAddDirect
//
// Revision 1.57  2008/02/22 18:26:35  lulin
// - доперевёл списки на модель.
//
// Revision 1.56  2008/02/22 16:57:41  lulin
// - упорядочиваем примеси.
//
// Revision 1.55  2008/02/20 18:25:23  lulin
// - удалён ненужный тип.
//
// Revision 1.54  2008/02/20 11:41:02  lulin
// - bug fix: не собирался Архивариус.
//
// Revision 1.53  2008/02/13 13:45:00  voba
// - refact.
//
// Revision 1.52  2008/02/12 12:53:17  lulin
// - избавляемся от излишнего метода на базовом классе.
//
// Revision 1.51  2008/02/01 16:41:34  lulin
// - используем кошерные потоки.
//
// Revision 1.50  2008/01/30 09:15:42  narry
// - range check  в результате неверного результата функции
//
// Revision 1.49  2008/01/22 13:34:19  voba
// - cc
//
// Revision 1.48  2007/11/12 07:28:04  voba
// - refact загрузка main-записей
//
// Revision 1.47  2007/10/25 14:28:22  voba
// - refact
//
// Revision 1.46  2007/08/14 20:25:14  lulin
// - bug fix: не собиралася Архивариус.
//
// Revision 1.45  2007/08/14 19:31:56  lulin
// - оптимизируем очистку памяти.
//
// Revision 1.44  2007/08/14 14:30:09  lulin
// - оптимизируем перемещение блоков памяти.
//
// Revision 1.43  2007/06/25 12:18:50  narry
// - поддержка команды !SERVICEINFO
//
// Revision 1.42  2007/05/25 17:08:54  voba
// - bug fix
//
// Revision 1.41  2007/05/25 15:15:00  voba
// - переделал procedure TAttrComponent.EraseRecForDelete из-за вероятной ошибки с заливкой
//
// Revision 1.40  2007/02/16 16:17:10  voba
// - _move some func to Dt_Misc
//
// Revision 1.39  2007/02/12 16:11:00  voba
// - заменил использование htModifyRecs на вызов TAbsHtTbl.ModifyRecs
// - выделил TdtTable в модуль dt_Table (обертка вокруг функций HyTech по работе с таблицей целиком)
// - выделил функции HyTech по работе с Sab в dt_Sab, потом объект сделаю
//
// Revision 1.38  2007/02/06 09:11:17  narry
// - отключение отладочного вывода
//
// Revision 1.37  2007/02/02 15:02:56  voba
// - enh. debug out
//
// Revision 1.36  2006/12/21 15:12:10  voba
// - new beh. procedure AddRecord научил выковыривать строки из  Ik2Tag
//
// Revision 1.35  2006/11/23 13:49:58  voba
// - recover
//
// Revision 1.34  2006/11/23 12:52:51  voba
// - bugfix
// Revision 1.33  2006/11/23 12:49:08  voba
// - add CachingMode
//
// Revision 1.32  2006/11/17 15:27:15  voba
// - ren  dtSortValueSab ->  dtSortSab
//
// Revision 1.31  2006/10/09 12:07:24  voba
// - del SavingType
//
// Revision 1.30  2006/10/04 08:39:32  voba
// - merge with b_archi_ht64
//
// Revision 1.29  2006/09/15 07:44:11  voba
// - убрал проверку результата добавления записи для TCacheTblData
//
// Revision 1.28.2.2  2006/09/22 06:22:46  voba
// - add debug code
//
// Revision 1.28.2.1  2006/09/19 08:37:27  voba
// - code clean
//
// Revision 1.28  2006/09/04 07:23:02  voba
// - bug fix
//
// Revision 1.27  2006/08/29 15:27:38  voba
// - bug fix
//
// Revision 1.26  2006/08/25 15:17:24  voba
// -bug fix
//
// Revision 1.25  2006/08/25 15:15:12  voba
// -bug fix
//
// Revision 1.24  2006/08/23 10:54:42  voba
// - bug fix
//
// Revision 1.23  2006/08/23 10:39:17  voba
// - merge with b_archi_ifltr_opt
//
// Revision 1.22.12.11  2006/08/23 07:09:42  voba
// - optimization
//
// Revision 1.22.12.10  2006/08/03 14:12:24  voba
// - enh разделил  кеш для ctLog
//
// Revision 1.22.12.9  2006/07/14 14:12:17  voba
// - modif. новый кешатор для мейн записей
//
// Revision 1.22.12.8  2006/06/29 11:19:15  voba
// no message
//
// Revision 1.22.12.7  2006/06/19 09:14:40  voba
// - add "Индекс" списка новых записей NewRecList
//
// Revision 1.22.12.6  2006/06/15 11:30:08  voba
// - merge
//
// Revision 1.22.12.5  2006/06/14 12:03:01  voba
// no message
//
// Revision 1.22.12.4  2006/06/07 10:22:26  voba
// no message
//
// Revision 1.22.12.3  2006/06/02 08:01:41  voba
// no message
//
// Revision 1.22.12.2  2006/05/30 11:50:37  voba
// no message
//
// Revision 1.22.12.1  2006/04/14 13:48:22  voba
// no message
//
// Revision 1.22  2006/01/17 09:22:48  narry
// - исправление: замена Tl3MemoryStream на Tl3TmpStream
//
// Revision 1.21  2004/10/08 10:18:16  step
// - исправлена ошибка: поиск при закрытой таблице
// - увеличен объем буфера
//
// Revision 1.20  2004/09/21 12:04:21  lulin
// - Release заменил на Cleanup.
//
// Revision 1.19  2004/09/13 13:32:36  voba
// - tuning в TCacheTblData.Save уменьшили количество записей для добавления по-одной (HyTech очень медленно добавляет пачку, надо разбираться)
//
// Revision 1.18  2004/09/09 11:02:11  voba
// - заменил функции работы с памятью (heap)
//
// Revision 1.17  2004/08/27 12:50:34  voba
// - tuning в TCacheTblData.Save уменьшили количество записей для добавления по-одной
//
// Revision 1.16  2004/08/23 09:23:50  step
// изменен тип буфера: _TFileStream --> Tl3MemoryStream
//
// Revision 1.15  2004/08/03 08:52:51  step
// замена dt_def.pas на DtDefine.inc
//
// Revision 1.14  2004/07/20 19:48:04  step
// добавлены проверки (исправления) новых записей
//
// Revision 1.13  2004/07/14 13:28:28  step
// продолжительность транзакции задается в StartTA
//
// Revision 1.12  2004/06/02 09:51:57  step
// обеспечена уникальность имени временного файла
//
// Revision 1.11  2004/05/13 13:51:56  step
// замена GlobalHTServer.StartTransactionWithWait на GlobalHTServer.StartTransaction
//
// Revision 1.10  2004/02/09 15:45:00  step
// bug fix
//
// Revision 1.9  2004/02/09 15:34:34  step
// добавлен поиск по кэшу
//
// Revision 1.8  2004/02/09 14:33:23  step
// отключен кэш при записи в Publish
//
// Revision 1.7  2003/03/31 13:48:59  demon
// - new: увеличен размер буферов, выделяемых по умолчанию с 64кб до 8Мб
//
// Revision 1.6  2002/12/24 13:02:00  law
// - change: объединил Int64_Seek c основной веткой.
//
// Revision 1.5.4.1  2002/12/24 11:56:43  law
// - new behavior: используем 64-битный Seek вместо 32-битного.
//
// Revision 1.5  2002/06/18 15:58:50  voba
// -new behavior : некорректная работа фильтра добавляющего метки в пакетном режиме
//
// Revision 1.4  2002/05/30 09:57:45  demon
// - new behavior: now TGetClipboardFilter is buffered
//
// Revision 1.3  2002/05/30 06:37:41  demon
// - add cvs log
//

{$I DtDefine.inc}

{!!}
{.$Define DEBUGOUT}
{.$Define DEBUGOUT2}
{.$Define DEBUGOUT_Detail}

interface
uses Windows,Classes,
     Ht_const,
     Dt_Types, Dt_const,
     dt_AttrSchema,
     Dt_aTbl,
     DT_Sab,
     DT_Doc,
     l3Base, l3Types, l3Memory, l3RecList;

type

 // TCacheTblData - примитивный кешатор табличных записей,
 // требует предварительного удаления всех записей связанных с обрабатываемыми документами, т к просто добавляет записи
 // запись берет из кеша записи встроенного в TPrometTbl
 // и записывает ее в Stream  (fBuffer)
 // по окончании процесса добавления записей скидывает их в таблицу, тем самым уменьшая количесто обращений к таблице
 // в настоящее время используется при загрузке KW
 TCacheTblData = class(Tl3Base)
  protected
   fTblObj     : TPrometTbl;
   fBuffer     : TStream;

   function  GetBuffer : TStream;

   procedure BeforeRelease; override;
   procedure Cleanup; override;
   property  Buffer : TStream read GetBuffer;
  public
   constructor Create(aTblObj : TPrometTbl); reintroduce;

   procedure Clear; virtual;
   procedure AddCurDataToCache;

   procedure Save;
   procedure Update;
   property  TblObj : TPrometTbl read fTblObj;
 end;

 TAttrComponentSelector = (atcLink, atcDict);

 TacOnEraseRecords = procedure (const aSab : ISab) of object;

 TAttrComponent = object
  fTbl           : TPrometTbl;
  fInsBuffer     : TStream;
  fRecsForDelete : Tl3RecList;
  fRecsForEdit   : Tl3RecList;
  fOnEraseRecords : TacOnEraseRecords;

  function  InsBuffer : TStream;

  procedure AddRecForDelete(aRecNo : Integer; aRealDelete : boolean = True);
  procedure EraseRecForDelete;

  procedure Clear;
 end;

 TFilterOfAttributeValuesEvent = procedure (fAttrType : TCacheType; var lFoundAttr : SAB) of object;

 TCachingMode = (cmReplace, // кеш добавляет новые записи и удаляет исчезнувшие
                 cmAddOnly, // кеш только добавляет новые
                 cmDelete,  // кеш вычитается из существующих
                 cmIgnore); // кеш ничего не делает

 // TBasisCacheAttrData - базовый предок "умного" кеша записей
 TBasisCacheAttrData = class(Tl3Base)
 private
  fItemKeySize : integer; //длина ключа записи
  fAttrList    : Tl3RecList;
  fCachingMode : TCachingMode;

  function  DocIDField : Integer; virtual;
 protected
  procedure BeforeRelease; override;
  procedure Cleanup; override;

  procedure Save; virtual; abstract;
  function MakeList(aItemSize : Longint; aKeyFieldArr : TSmallIntArray) : Tl3RecList; virtual;
  function GetList: Tl3RecList;
  function GetUniqFieldNum: Byte; virtual; abstract;
  function GetFieldsCount : Word; virtual; abstract;
  function GetFieldLength(aField : Word) : Word; virtual; abstract;

  procedure FillRecord(aRecPtr : Pointer; const aRecordArr: array of const);
  property  NewRecList : Tl3RecList read GetList;
 public
  procedure AddRecord(const aRecordArr: array of const); virtual;
  property CachingMode : TCachingMode read fCachingMode write fCachingMode;
 end;

 //TCacheMainData - для кеширования мейн записей
 // учитывает существование Аннотаций - топиков с тем же номером что и основной документ
 TCacheMainData = class(TBasisCacheAttrData)
  private
   fAttrTbl : TFileTbl;
   fAnnoIDs : Sab;
  protected
   function  GetUniqFieldNum: Byte; override;
   procedure Save; override;
   function  GetFieldsCount : Word; override;
   function  GetFieldLength(aField : Word) : Word; override;
   procedure Cleanup; override;
  public
   constructor Create(aFamily : TFamilyID); reintroduce;
   procedure AddRecord(const aRecordArr: array of const); override;
   procedure  AddAnno(aDocID : TDocID);
 end;

 TOnEraseRecords = procedure (aAttrType : TCacheType; const aSab : ISab) of object;

 // TCustomCacheAttrData предок кешей атрибутов
 TCustomCacheAttrData = class(TBasisCacheAttrData)
 private
  fAttrComponents : array[TAttrComponentSelector] of TAttrComponent;

  fAttrType : TCacheType;
  fCurDocID : TDocID;

  fOnEraseRecords : TOnEraseRecords;

  procedure Cleanup; override;
  procedure Clear;

  procedure SetOnEraseRecords(aOnEraseRecords : TOnEraseRecords);

  procedure SaveInsertBuffer;
  procedure AddRecForInsert(aRecBuff : Pointer);

  function  DocIDField : Integer; override;
  function  GetFieldsCount : Word; override;
  function  GetRecSize : Word;
  function  GetFieldLength(aField : Word) : Word; override;
  function  GetUniqFieldNum : Byte; override;
  procedure DoOnEraseRecords(const aSab : ISab);
 public
  constructor Create(aFamily : TFamilyID; aAttrType : TCacheType); reintroduce; virtual;
  procedure   CloseDoc(aDocID : TDocID); virtual;
  property    OnEraseRecords : TOnEraseRecords read fOnEraseRecords write SetOnEraseRecords;
 end;

 //TCacheDirectAddAttrData кеш добавляет новые без проверки на существование,
 //используется при массовой заливке в пустую базу или базу заведомо не содержащую заливаемых документов
 TCacheDirectAddAttrData = class(TCustomCacheAttrData)
 private
  fDataBuffer : Pointer;

  procedure Cleanup; override;
 public
  constructor Create(aFamily : TFamilyID; aAttrType : TCacheType); override;
  procedure AddRecord(const aRecordArr: array of const); override;
  procedure Save; override;
 end;

 // TCacheDiffAttrData умеет вычислять действительно изменившиеся записи, что сводит к минимуму изменения в таблице
 // записи добавляются через procedure AddRecord, структура передаваемых данных вычисляется из структуры таблицы
 // по окончании документа следует вызывать procedure CloseDoc, что является сигналом об окончании документа,
 //   а так же информирует кеш о документах, в которых нет атрибутов данного типа
 // Запись производится в три этапа:
 //  - на первом этапе коллекционируются все записи для данного документа (или группы документов)
 //  - на втором этапе сравниваются имеющиеся в таблице записи для данного документа (или группы документов) с вновь полученными,
 //    на основании этого принимается решение о занесении (удалении) записи, которые перекладываются в кеш второго уровня
 //  - по окончании процесса добавления записей кеш второго уровня скидывается в таблицу, тем самым уменьшая количесто обращений к таблице
 // !!!! Не может применяться для заливки KW, поскольку существенно заточен на тот факт, что добавляемые атрибуты упорядочены по номеру документа
 // !!!! т. е. не могут приходить вперемешку, скажем для документа 1, потом для документа 2, потом опять для документа 1.
 TCacheDiffAttrData = class(TCustomCacheAttrData)
  private
   fAttrListIndex : Tl3RecList;
   fAttrSABFilter : TFilterOfAttributeValuesEvent;
   fFlushCriteria  : Integer;
  protected
   function  GetListIndex : Tl3RecList;
   procedure Cleanup; override;

   procedure DeleteExcessRecords;

   procedure FlushLevel1Cache;
   procedure CheckNeedFlushL1Cache;
   procedure Save; override;
   property  NewRecListIndex : Tl3RecList read GetListIndex;

  public
   constructor Create(aFamily : TFamilyID; aAttrType : TCacheType); override;
   procedure AddRecord(const aRecordArr: array of const); override;
   procedure CloseDoc(aDocID : TDocID); override;

   property  AttrSABFilter : TFilterOfAttributeValuesEvent
     read fAttrSABFilter
     write fAttrSABFilter;
 end;

 function DictType2AttrCType(aDictType : TDLType) : TCacheType;
 function AttrCType2DictType(aAttrType : TCacheType; var aDictType : TDLType) : Boolean;

implementation
uses  SysUtils,
      vtDebug,
      Ht_Dll,
      DT_Misc, DT_serv, DT_err,
      DT_Link, DT_LinkServ, DT_Hyper, DT_Dict,
      l3MinMax, l3String, l3FileUtils, l3TempMemoryStream, l3LogicalArray,
      k2Interfaces,
      l3FieldSortRecList
      , dt_DictConst;

resourcestring
 rsDocWasntClosed = 'Не закрыли документ ID = %d';

Const
 //DataBufCapacity = 16*1024; {Maximum count elements in cache buffer}
 cFlushCriteria = 10000; //записей в листе
 cMainRecFlushCriteria = 10000;

 //- количество полей в таблице которые учитываются при сравнении и сортировке записей
 cAtrributeUniqFieldNum : Array[Low(TCacheType) .. High(TCacheType)] of Byte =(
 //0, //ctDoc,           //0

 4, //ctHLink,         //0
 2, //ctSub,           //1
 2, //ctSour,          //2
 2, //ctBase,          //3
 2, //ctTerritory,     //4
 2, //ctNorm,          //5
 2, //ctAccGroup,      //6
 2, //ctAnnoClasses    //7
 3, //ctType,          //8
 3, //ctKW,            //9
 3, //ctClass,         //10
 3, //ctPrefix,        //11
 2, //ctWarning,       //12
 2, //ctStage,         //13
 2, //ctActive,        //14
 2, //ctAlarm,         //15
 3, //ctLog_Doc,       //16
 3, //ctLog_Anno,      //17
 4, //ctDateNum,       //18
 6, //ctCorrects,      //19
 2, //ctPublisheds,    //20
 2, //ctServiceInfo    //21
 3  //ctDoc2DocLink    //22
 );


function DictType2AttrCType(aDictType : TDLType) : TCacheType;
begin
 case aDictType of
   dlTypes       : Result := ctType;
   dlSources     : Result := ctSour;
   dlClasses     : Result := ctClass;
   dlKeyWords    : Result := ctKW;
   dlPrefixes    : Result := ctPrefix;
   dlAnnoClasses : Result := ctAnnoClasses;
   dlTerritories : Result := ctTerritory;
   dlBases       : Result := ctBase;
   dlAccGroups   : Result := ctAccGroup;
   dlNorms       : Result := ctNorm;
   dlWarnings    : Result := ctWarning;
   dlPublisheds  : Result := ctPublisheds;
   dlServiceInfo : Result := ctServiceInfo
  else
   raise Exception.Create('error in DictType2AttrType');
  end;
end;

function AttrCType2DictType(aAttrType : TCacheType; var aDictType : TDLType) : Boolean;
begin
 Result := True;
 case aAttrType of
   ctType        : aDictType := dlTypes;
   ctSour        : aDictType := dlSources;
   ctClass       : aDictType := dlClasses;
   ctKW          : aDictType := dlKeyWords;
   ctPrefix      : aDictType := dlPrefixes;
   ctAnnoClasses : aDictType := dlAnnoClasses;
   ctTerritory   : aDictType := dlTerritories;
   ctBase        : aDictType := dlBases;
   ctAccGroup    : aDictType := dlAccGroups;
   ctNorm        : aDictType := dlNorms;
   ctWarning     : aDictType := dlWarnings;
   ctPublisheds  : aDictType := dlPublisheds;
   ctServiceInfo : aDictType := dlServiceInfo
  else
   Result := False;
 end;
end;

(****************************** TCacheTblData ************************************)

constructor TCacheTblData.Create(aTblObj : TPrometTbl);
begin
 inherited Create;
 fTblObj := aTblObj;
end;

procedure TCacheTblData.BeforeRelease;
begin
 Save;
 inherited;
end;

procedure TCacheTblData.Cleanup;
begin
 l3Free(fBuffer);
 inherited;
end;

function TCacheTblData.GetBuffer : TStream;
begin
 if fBuffer = nil then
  fBuffer := Tl3TempMemoryStream.Create(1024*1024);
 Result := fBuffer;
end;

procedure TCacheTblData.Clear;
begin
 inherited;
 l3Free(fBuffer);
end;

procedure TCacheTblData.AddCurDataToCache;
begin
 fTblObj.CheckRecord(fTblObj.FullRecord);
 Buffer.WriteBuffer(fTblObj.FullRecord^, fTblObj.RecSize);
end;

procedure TCacheTblData.Save;
begin
 fTblObj.AddRecs(fBuffer);
 Clear;
end;

procedure TCacheTblData.Update;
begin
 try
  fTblObj.UpdateTbl;
 except
  on E: Exception do
   l3System.Exception2Log(E);
 end;
end;

(****************************************************************************)

type
 PIndexRec = ^TIndexRec;
 TIndexRec = packed record
  DocID : TDocID;
  Index : Integer;
  Count : Integer;
 end;

{TAttrComponent}
function TAttrComponent.InsBuffer : TStream;
begin
 if fInsBuffer = nil then
  fInsBuffer := Tl3TempMemoryStream.Create(1024*1024);
 Result := fInsBuffer;
end;

procedure TAttrComponent.AddRecForDelete(aRecNo : Integer; aRealDelete : boolean = True);
begin
 if aRealDelete or not Assigned(fOnEraseRecords) then
 begin
  if fRecsForDelete = nil then
   fRecsForDelete := Tl3RecList.Create(ht_SizeOfSurrogateKey);
  fRecsForDelete.Add(aRecNo);
 end
 else
 begin
  if fRecsForEdit = nil then
   fRecsForEdit := Tl3RecList.Create(ht_SizeOfSurrogateKey);
  fRecsForEdit.Add(aRecNo);
 end;
end;

procedure TAttrComponent.EraseRecForDelete;
var
 lSab : ISab;
begin
 if (fTbl = nil) or (((fRecsForDelete = nil) or (fRecsForDelete.Count = 0)) and
                     ((fRecsForEdit = nil) or (fRecsForEdit.Count = 0))) then Exit;

 if (fRecsForDelete <> nil) and (fRecsForDelete.Count > 0) then
 begin
  lSab := MakeValueSet(fTbl, 0 {aField}, fRecsForDelete);
  lSab.RecordsByKey;

  if Assigned(fOnEraseRecords) then fOnEraseRecords(lSab);

  lSab.DeleteFromTable;
  fRecsForDelete.Count := 0;
end;
// fRecsForEdit = это удаление вместо изменения. Удаляем, но не сообщаем никому об этом.
 if (fRecsForEdit <> nil) and (fRecsForEdit.Count > 0) then
 begin
  lSab := MakeValueSet(fTbl, 0 {aField}, fRecsForEdit);
  lSab.RecordsByKey;

  lSab.DeleteFromTable;
  fRecsForEdit.Count := 0;
 end;
end;

procedure TAttrComponent.Clear;
begin
 l3Free(fInsBuffer);
 l3Free(fRecsForDelete);
 l3Free(fRecsForEdit);
end;

{TCustomCacheAttrData}
constructor TCustomCacheAttrData.Create(aFamily : TFamilyID; aAttrType : TCacheType);
var
 lDictType : TDLType;
begin
 inherited Create;
 fAttrType := aAttrType;

 if AttrCType2DictType(fAttrType, lDictType) then
 begin
  fAttrComponents[atcLink].fTbl := LinkServer(aFamily).Links[lDictType].Table;
 end
 else
  case fAttrType of
   ctHLink :
     fAttrComponents[atcLink].fTbl := LinkServer(aFamily)[atHLink].Table;
   ctSub :
     fAttrComponents[atcLink].fTbl := LinkServer(aFamily)[atSub].Table;
   ctLog_Doc,
   ctLog_Anno:
    fAttrComponents[atcLink].fTbl := LinkServer(aFamily).LogBook.Table;
   ctStage :
     fAttrComponents[atcLink].fTbl := LinkServer(aFamily)[atStages].Table;
   ctActive :
     fAttrComponents[atcLink].fTbl := LinkServer(aFamily)[atActiveIntervals].Table;
   ctAlarm :
     fAttrComponents[atcLink].fTbl := LinkServer(aFamily)[atAlarms].Table;
   ctDateNum :
    begin
     fAttrComponents[atcDict].fTbl := DictServer(aFamily).GroupTbl[dlDateNums];
     fAttrComponents[atcLink].fTbl := LinkServer(aFamily)[atDateNums].Table;
    end;
   ctCorrects :
    begin
     fAttrComponents[atcDict].fTbl := DictServer(aFamily).GroupTbl[dlCorrects];
     fAttrComponents[atcLink].fTbl := LinkServer(aFamily)[atCorrects].Table;
    end;
   ctDoc2DocLink :
     fAttrComponents[atcLink].fTbl := LinkServer(aFamily)[atDoc2DocLink].Table;
   else
    Assert(False);
  end;
end;

procedure TCustomCacheAttrData.Cleanup;
begin
 fAttrComponents[atcLink].Clear;
 fAttrComponents[atcDict].Clear;
 inherited;
end;

procedure TCustomCacheAttrData.Clear;
begin
 inherited;
 fAttrComponents[atcLink].Clear;
 fAttrComponents[atcDict].Clear;
end;

procedure TCustomCacheAttrData.SetOnEraseRecords(aOnEraseRecords : TOnEraseRecords);
begin
 fOnEraseRecords := aOnEraseRecords;
 if Assigned(fOnEraseRecords) then
  fAttrComponents[atcLink].fOnEraseRecords := DoOnEraseRecords
 else
  fAttrComponents[atcLink].fOnEraseRecords := nil;
end;

procedure TCustomCacheAttrData.DoOnEraseRecords(const aSab : ISab);
begin
 fOnEraseRecords(fAttrType, aSab);
end;

function TCustomCacheAttrData.DocIDField : Integer;
begin
 if fAttrType = ctHLink then
  Result := 2
 else
  Result := 1;
end;

function TCustomCacheAttrData.GetFieldsCount : Word;
begin
 if fAttrComponents[atcDict].fTbl = nil then
  Result := fAttrComponents[atcLink].fTbl.fldCount
 else
  Result := fAttrComponents[atcDict].fTbl.fldCount {+ fLinkTbl.fldCount};
end;

function TCustomCacheAttrData.GetRecSize : Word;
begin
 if fAttrComponents[atcDict].fTbl = nil then
  Result := fAttrComponents[atcLink].fTbl.RecSize
 else
  Result := fAttrComponents[atcDict].fTbl.RecSize {+ fLinkTbl.fldCount};
end;

function TCustomCacheAttrData.GetFieldLength(aField : Word) : Word;
begin
 if fAttrComponents[atcDict].fTbl = nil then
  Result := fAttrComponents[atcLink].fTbl.fldLength[aField]
 else
  Result := fAttrComponents[atcDict].fTbl.fldLength[aField];
end;

function TCustomCacheAttrData.GetUniqFieldNum : Byte;
begin
 Result := cAtrributeUniqFieldNum[fAttrType];
end;

procedure TCustomCacheAttrData.CloseDoc(aDocID : TDocID);
begin
 if CachingMode = cmIgnore then Exit;

 Assert((fCurDocID = 0) or (fCurDocID = aDocID), Format(rsDocWasntClosed, [fCurDocID]));
 fCurDocID := 0;
end;

procedure TCustomCacheAttrData.AddRecForInsert(aRecBuff : Pointer);
var
 lRecID     : Integer;
begin
 if fAttrComponents[atcDict].fTbl <> nil then
  // двухкомпонентный словарь типа DateNum, Correct
 begin
  //получаем свободный уникальный ID для записи
  lRecID := fAttrComponents[atcDict].fTbl.GetFreeNum;

   //пишем в Dict
  with fAttrComponents[atcDict].InsBuffer do
  begin
   WriteBuffer(lRecID, SizeOf(lRecID));
   WriteBuffer((PAnsiChar(aRecBuff) + SizeOf(TDocID))^,
               NewRecList.ItemSize - SizeOf(TDocID)); //!!DocID первое поле DocID;
  end;

  //пишем в Link
  with fAttrComponents[atcLink].InsBuffer do
  begin
   WriteBuffer(aRecBuff^, SizeOf(TDocID));  //!!DocID   первое поле из aRecBuff
   WriteBuffer(lRecID, SizeOf(lRecID));
   //До настоящего момента, в Линках двухкомпонентных атрибутов, ничего кроме DocID и DictID не бывает
  end;
 end
 else
 begin
  fAttrComponents[atcLink].InsBuffer.WriteBuffer(aRecBuff^, NewRecList.ItemSize);  //!!DocID
 end;

 {$IfDef DEBUGOUT_Detail}
 dbgAppendToLogLN(format('D%-8d A%-8d I%d %8d %8d',
                                     [lCurDocID, Ord(fAttrType), aIndexInList,
                                      pByte(PAnsiChar(aRecBuff) + 0)^,
                                      pByte(PAnsiChar(aRecBuff) + 4)^
                                     ]));
 {$EndIf}

end;

procedure TCustomCacheAttrData.SaveInsertBuffer;

{$IfDef DEBUGOUT2}
var
 lStartTime : Cardinal;
{$EndIf}
begin
 with fAttrComponents[atcLink] do
 begin
  {$IfDef DEBUGOUT2}
  lStartTime := dbgStartTimeCounter;
  {$EndIf}

  fTbl.AddRecs(InsBuffer);

  {$IfDef DEBUGOUT2}
  if (InsBuffer <> nil) and (InsBuffer.size > 0) then
   l3System.Msg2Log('A%d insert %d records (Link) : %s', [Ord(fAttrType), InsBuffer.size div fTbl.RecSize, dbgFinishTimeCounter(lStartTime)]);
  {$EndIf}
  {$IfDef DEBUGOUT}
  if (InsBuffer <> nil) and (InsBuffer.size > 0) then
   dbgAppendToLogLN(format('A%d insert %d records (Link)', [Ord(fAttrType), InsBuffer.size div fTbl.RecSize]));
  {$EndIf}
  Clear;
 end;

 with fAttrComponents[atcDict] do
 begin
  {$IfDef DEBUGOUT2}
  lStartTime := dbgStartTimeCounter;
  {$EndIf}
  fTbl.AddRecs(InsBuffer);
  {$IfDef DEBUGOUT2}
  if (InsBuffer <> nil) and (InsBuffer.size > 0) then
   l3System.Msg2Log('A%d insert %d records (Dict) : %s', [Ord(fAttrType), InsBuffer.size div fTbl.RecSize, dbgFinishTimeCounter(lStartTime)]);
  {$EndIf}
  {$IfDef DEBUGOUT}
  if (InsBuffer <> nil) and (InsBuffer.size > 0) then
   dbgAppendToLogLN(format('A%d insert %d records (Dict)', [Ord(fAttrType), InsBuffer.size div fTbl.RecSize]));
  {$EndIf}
  Clear;
 end;
end;

{TCacheDirectAddAttrData}
constructor TCacheDirectAddAttrData.Create(aFamily : TFamilyID; aAttrType : TCacheType);
begin
 inherited;
 l3System.GetLocalMem(fDataBuffer, GetRecSize);
end;

procedure TCacheDirectAddAttrData.Cleanup;
begin
 l3System.FreeLocalMem(fDataBuffer);
 inherited;
end;

procedure TCacheDirectAddAttrData.AddRecord(const aRecordArr: array of const);
var
 lDataBuffer : Pointer;
begin
 if CachingMode = cmIgnore then Exit;
 FillRecord(fDataBuffer, aRecordArr);
 AddRecForInsert(fDataBuffer);
end;

procedure TCacheDirectAddAttrData.Save;
begin
 if CachingMode = cmIgnore then Exit;
 Assert(fCurDocID = 0, Format(rsDocWasntClosed, [fCurDocID]));

 SaveInsertBuffer;
end;

{TCacheDiffAttrData}

constructor TCacheDiffAttrData.Create(aFamily : TFamilyID; aAttrType : TCacheType);
begin
 inherited Create(aFamily, aAttrType);

 if aAttrType = ctHLink then
  fFlushCriteria := cFlushCriteria * 100
 else
  fFlushCriteria := cFlushCriteria;
end;

procedure TCacheDiffAttrData.Cleanup;
begin
 l3Free(fAttrListIndex);
 inherited;
end;

function  TCacheDiffAttrData.GetListIndex : Tl3RecList;
(*
 "Индекс" списка новых записей NewRecList
 в записи три поля: DocID, индекс первой записи, количество записей для данного документа см. TIndexRec
*)
begin
 if fAttrListIndex = nil then
  fAttrListIndex := Tl3FieldSortRecList.Create(SizeOf(TIndexRec), [4]);

 Result := fAttrListIndex;
end;

procedure TCacheDiffAttrData.DeleteExcessRecords;
begin
{$IfDef DEBUGOUT}
 with fAttrComponents[atcLink] do
 if (fRecsForDelete <> nil) and (fRecsForDelete.Count > 0) then
  dbgAppendToLogLN(format('A%d delete %d records (Link)', [Ord(fAttrType), fRecsForDelete.Count]));

 with fAttrComponents[atcDict] do
 if (fRecsForDelete <> nil) and (fRecsForDelete.Count > 0) then
  dbgAppendToLogLN(format('A%d delete %d records (Dict)', [Ord(fAttrType), fRecsForDelete.Count]));
{$EndIf}

 fAttrComponents[atcLink].EraseRecForDelete;
 fAttrComponents[atcDict].EraseRecForDelete;
end;

procedure TCacheDiffAttrData.Save;
begin
 if CachingMode = cmIgnore then
  Exit;

 Assert(fCurDocID = 0, Format(rsDocWasntClosed, [fCurDocID]));

 //CloseDocPrim;

 FlushLevel1Cache;

 DeleteExcessRecords;
 SaveInsertBuffer;
end;

procedure TCacheDiffAttrData.CloseDoc(aDocID : TDocID);

 procedure AddToNewRecListIndex;
 var
  aIndexRec : TIndexRec;
 begin
  aIndexRec.DocID := aDocID;

  if (NewRecListIndex.Count > 0) then
   with PIndexRec(NewRecListIndex.ItemSlot(NewRecListIndex.Hi))^ do
    aIndexRec.Index := Index + Count
  else
   aIndexRec.Index := 0;

  aIndexRec.Count := NewRecList.Count - aIndexRec.Index;

  NewRecListIndex.Add(aIndexRec);
 end;

begin
 Inherited;

 if CachingMode = cmIgnore then
  Exit;

 AddToNewRecListIndex;
 CheckNeedFlushL1Cache;
end;

procedure TCacheDiffAttrData.CheckNeedFlushL1Cache;
begin
 if NewRecList.Count > fFlushCriteria then
  FlushLevel1Cache;
end;

procedure TCacheDiffAttrData.FlushLevel1Cache;
// сравнивает накопленные атрибуты для документа(ов) с имеющимися в базе и
// сбрасывает разницу в Level2Cache (TAttrComponent.fRecsForDelete и TAttrComponent.fInsBuffer )

var
 I : Integer;

 lNeedReadFullRec : Boolean;
 lHiListItem      : Integer;
 lNewItemsCurItem : Integer;

 lSabSortFieldNum : Byte;
 lSabSortFieldArray    : TSmallIntArray;

 lOldItemsIter : TCustomValuesIterator;
 lOldRecord    : Pointer;

 lCompResult   : Longint;

 {$IfDef DEBUGOUT_Detail}
  lCurDocID : TDocID;
 {$EndIf}

 procedure lAddCurrentRecForDelete(aCurRecord : Pointer; aRealDelete : boolean);
 //var
 // lAbsNum : Longint;
 // lRecsForDelete : PSab;
 begin
  with fAttrComponents[atcLink] do
  begin
   {первое поле (4 байта) - суррогатный ключ Link}
   AddRecForDelete(PInteger(aCurRecord)^, aRealDelete);

   //lAbsNum := PInteger(aCurRecord)^;
   //lRecsForDelete := RecsForDelete;
   //Ht(htIncludeResultsItem(lRecsForDelete^, lRecsForDelete^.gFoundCnt, @lAbsNum));
  end;

  if fAttrComponents[atcDict].fTbl <> nil then
   // двухкомпонентный словарь типа DateNum, Correct
   with fAttrComponents[atcDict] do
   begin
    {Второе поле (4 байта) - суррогатный ключ Dict}
    AddRecForDelete(PInteger(PAnsiChar(aCurRecord) + SizeOf(Integer))^, aRealDelete);

    //lAbsNum := PInteger(PAnsiChar(aCurRecord) + SizeOf(Integer))^;
    //lRecsForDelete := RecsForDelete;
    //Ht(htIncludeResultsItem(lRecsForDelete^, lRecsForDelete^.gFoundCnt, @lAbsNum));
   end;
 end;

 procedure lAddRecForInsert(aIndexInList : Longint);
 begin
  AddRecForInsert(NewRecList.ItemSlot(aIndexInList));
 end;

 function GetRecordIterator : TCustomValuesIterator;
 var
  lArrNum  : integer;
  lFieldNums    : TSmallIntArray;
  lDocList      : SAB;
  lOldItemsLink,
  lOldItemsJoin : SAB;
  I : Integer;
  lLinkFldCnt : Integer;
  {$IfDef DEBUGOUT2}
   lStartTime : Cardinal;
  {$EndIf}
 begin
  {$IfDef DEBUGOUT2}
   lStartTime := dbgStartTimeCounter;
  {$EndIf}
  Result := nil;
  try
   NewRecListIndex.Sorted := True;

   if htCreateEmptySAB(nil, lDocList, fAttrComponents[atcLink].fTbl.Handle, DocIDField, Res_Value {Res_Record}) = nil then
    Ht(lDocList.nRetCode);
   try
    Ht(htOpenResults(lDocList, ROPEN_READ, Nil, 0));

    (* не получится, тк там не только ID
    Ht(htIncludeResultsBlock(lDocList, 0,
                             fRecsForDelete.ItemSlot(0){указатель на буфер элементов},
                             fRecsForDelete.ItemSize * fRecsForDelete.Count {длина пачки в байтах}));
    *)
    for I := 0 to NewRecListIndex.Hi do
     Ht(htIncludeResultsItem(lDocList, lDocList.gFoundCnt,  NewRecListIndex.ItemSlot(I)));

    htCloseResults(lDocList);
    //htSortResults(lSorted, fRecsForDelete, 0, 0);

    htRecordsByKey(lOldItemsLink, lDocList);
   finally
    htClearResults(lDocList);
   end;

   //CleanSab(lOldItemsLink);
   //htSearch(nil, lOldItemsLink, fAttrComponents[atcLink].fTbl.Handle, DocIDField, EQUAL, @fCurDocID, nil);

   Ht(lOldItemsLink.nRetCode);

   if lOldItemsLink.gFoundCnt = 0 then Exit;

   if Assigned(fAttrSABFilter) then
    fAttrSABFilter(fAttrType, lOldItemsLink);

   if fAttrComponents[atcDict].fTbl <> nil then
   // двухкомпонентный словарь типа DateNum, Correct
   begin
    try
     with fAttrComponents[atcDict].fTbl do
     begin
      RefreshSrchList;
      if fSrchList.gFoundCnt = 0 then Exit;
      htTablesJoin(lOldItemsJoin,
                   lOldItemsLink, lnkDictIDFld,
                   EQUAL,
                   fSrchList, dtIDFld,
                   nil, False, DRAFT_ZERO);

      Ht(lOldItemsJoin.nRetCode);
      if lOldItemsJoin.gFoundCnt = 0 then Exit;
     end;
     //поля для сортировки
     lSabSortFieldNum := cAtrributeUniqFieldNum[fAttrType]; //!!DocID - 1{поле DictID пишем};
     SetLength(lSabSortFieldArray, lSabSortFieldNum);
     //!!DocID
     lArrNum  := 0;
     lSabSortFieldArray[lArrNum] := DocIDField; //!!DocID поле DocID из Link всегда первое в сортировке
     Inc(lArrNum);
     for I := 1 to cAtrributeUniqFieldNum[fAttrType] do
     begin
      if I = DocIDField then Continue; //!!DocID уже посчитали
      lSabSortFieldArray[lArrNum] := I + (fAttrComponents[atcLink].fTbl.fldCount + 1{суррогатный}) {сдвиг на поля от Link};
      Inc(lArrNum);
     end;

     // поля для чтения результатов
     SetLength(lFieldNums, GetFieldsCount{DictID не пишем, но пишем суррогатный} + 2 {суррогатный и DocID от Link});
     lArrNum := 0;
     lLinkFldCnt := fAttrComponents[atcLink].fTbl.fldCount + 1 {суррогатный};

     lFieldNums[0] := 0; // суррогатный Link
     lFieldNums[1] := 0 + lLinkFldCnt; // суррогатный Dict
     lFieldNums[2] := 1; // DocID от Link

     lArrNum := 3;
     for I := 1 to GetFieldsCount do
     begin
      if I = dtIDFld then Continue;  //dictID не читаем
      lFieldNums[lArrNum] := I + lLinkFldCnt;
      Inc(lArrNum);
     end;

     Result := TValuesIteratorForJoinedRecs.Create(lOldItemsJoin,
                                                   fAttrComponents[atcLink].fTbl,
                                                   fAttrComponents[atcDict].fTbl,
                                                   lFieldNums);
     (*
     Result := TValuesIteratorForJoinedRecs.Create(lOldItemsJoin,
                                                   fAttrComponents[atcLink].fTbl, [0, 1], // суррогатный и DocID от Link
                                                   fAttrComponents[atcDict].fTbl, lFieldNums);
     *)

     Result.Sort(lSabSortFieldArray);
    finally
     htClearResults(lOldItemsJoin);
    end;
   end
   else //однокомпонентный
   begin
    //поля для сортировки
    lSabSortFieldNum := cAtrributeUniqFieldNum[fAttrType];
    lArrNum  := 0;
    SetLength(lSabSortFieldArray, lSabSortFieldNum);
    lSabSortFieldArray[lArrNum] := DocIDField; //!!DocID поле DocID из Link всегда первое в сортировке
    Inc(lArrNum);
    for I := 1 to cAtrributeUniqFieldNum[fAttrType] do
    begin
     if I = DocIDField then Continue; //!!DocID уже посчитали
     lSabSortFieldArray[lArrNum] := I;
     Inc(lArrNum);
    end;

    // поля для чтения результатов
    SetLength(lFieldNums, GetFieldsCount + 1 {суррогатный}); // поле DocID пишем;
    lArrNum := 0;

    for I := 0 to GetFieldsCount do
    begin
     //if I = DocIDField then Continue; //!!DocID
     lFieldNums[lArrNum] := I;
     Inc(lArrNum);
    end;

    Result := TValuesIterator.Create(lOldItemsLink, lFieldNums, fAttrComponents[atcLink].fTbl);
    Result.Sort(lSabSortFieldArray);
   end;
  finally
   htClearResults(lOldItemsLink);
  end;
  {$IfDef DEBUGOUT2}
   l3System.Msg2Log('GetRecordIterator (Attr = %d) : %s', [Ord(fAttrType), dbgFinishTimeCounter(lStartTime)]);
  {$EndIf}
 end;

 function SizeOfSurrogateKeys : Integer;
 begin
  if fAttrComponents[atcDict].fTbl <> nil then
   // двухкомпонентный словарь типа DateNum, Correct
   Result := 2 * SizeOf(Integer)
  else
   Result := SizeOf(Integer);
 end;

 procedure ReadRecordFromOldList;
 begin
  if lNeedReadFullRec then
  begin
   lOldItemsIter.ReadFullRec(lOldRecord^);
   lNeedReadFullRec := False;
  end;
 end;

 procedure GoToNextRecordInOldList;
 begin
  lOldItemsIter.Next;
  lNeedReadFullRec := True;
 end;

 function HasAnyMoreRecordInOldList(aDocID : TDocID) : Boolean;
 begin
  Result := not lOldItemsIter.EOF; // список не кончился
  if Result then
  begin
   ReadRecordFromOldList;
   //полагаем что все поля до DocIDField по 4 байта
   Result := PDocID(PAnsiChar(lOldRecord) + SizeOfSurrogateKeys + 4 * Pred(DocIDField))^ = aDocID;
  end;
 end;

 procedure ClearL1Cache;
 begin
  with NewRecList do
  begin
   Clear;
   Sorted := False;
  end;

  with NewRecListIndex do
  begin
   Clear;
   Sorted := False;
  end;
 end;

procedure ProcessDoc(aDocID : TDocID;
                     aLoIndex, aHiIndex : Integer // диапазон записей в NewRecList для aDocID
                     );
var
 lCurIndex : Integer;
 I : Integer;
begin
 lCurIndex := aLoIndex;
 //
 //lNeedReadFullRec := True;
 //NewRecList.Sorted := True;
 //NewRecListIndex.Sorted := True;

 NewRecList.SortInterval(lCurIndex, aHiIndex);

 repeat
  if (lOldItemsIter = nil) or not HasAnyMoreRecordInOldList(aDocID) then
  //сливаем остатки в новые
  begin
   for I := lCurIndex to aHiIndex do
    lAddRecForInsert(I);
   Break;
  end;

  if (lCurIndex > aHiIndex) then
  //сливаем остатки в лишние
  begin
   while HasAnyMoreRecordInOldList(aDocID) do
   begin
    ReadRecordFromOldList;
    if fCachingMode = cmReplace then
     lAddCurrentRecForDelete(lOldRecord, True);
    GoToNextRecordInOldList;
   end;
   Break;
  end;

  ReadRecordFromOldList;

  lCompResult := NewRecList.CompareItem(lCurIndex, (PAnsiChar(lOldRecord) + SizeOfSurrogateKeys)^, 0);

  if lCompResult = 0 then
   //запись не изменилась
  begin
   if (fCachingMode = cmDelete) then
    lAddCurrentRecForDelete(lOldRecord, True)
   else
    if (fItemKeySize < NewRecList.ItemSize) // искали не по всем полям
       and not CompareMem(PAnsiChar(NewRecList.ItemSlot(lCurIndex)) + fItemKeySize,
                          PAnsiChar(lOldRecord) + SizeOfSurrogateKeys + fItemKeySize,
                          NewRecList.ItemSize - fItemKeySize) then// неключевые поля изменились
    begin
     //нужно изменить запись, но для простоты удалим и добавим
     lAddRecForInsert(lCurIndex);
     lAddCurrentRecForDelete(lOldRecord, False);
    end;

   GoToNextRecordInOldList;
   Inc(lCurIndex);
  end
  else
  if lCompResult < 0 then
   //появилась новая запись
  begin
   if (fCachingMode in [cmReplace, cmAddOnly]) then
    lAddRecForInsert(lCurIndex);
   Inc(lCurIndex);
  end
  else
   //удалили запись
  begin
   if fCachingMode = cmReplace then
    lAddCurrentRecForDelete(lOldRecord, True);
   GoToNextRecordInOldList;
  end;
 until False;
end;

begin
{$IfDef DEBUGOUT2}
 l3System.Msg2Log('FlushLevel1Cache Attr = %d', [Ord(fAttrType)]);
{$EndIf}

 if (NewRecListIndex.Count = 0) then Exit;
 if (NewRecList.Count = 0) and (fCachingMode in [cmAddOnly, cmDelete]) then Exit;

 lOldItemsIter := GetRecordIterator;
 try
  if (lOldItemsIter <> nil) then
   l3System.GetLocalMemZ(lOldRecord, lOldItemsIter.RecordSize)
  else
   lOldRecord := nil;
  try
   lNewItemsCurItem := 0;
   lHiListItem := NewRecList.Hi;

   NewRecListIndex.Sorted := True;
   lNeedReadFullRec := True;

   for I := 0 to NewRecListIndex.Hi do
    with PIndexRec(NewRecListIndex.ItemSlot(I))^ do
     ProcessDoc(DocID, Index, Index + Count - 1);

   ClearL1Cache;
  finally
   l3System.FreeLocalMem(lOldRecord);
  end;
 finally
  l3Free(lOldItemsIter);
 end;
end;

procedure TCacheDiffAttrData.AddRecord(const aRecordArr: array of const);
begin
 if CachingMode = cmIgnore then
  Exit;

 with aRecordArr[Pred(DocIDField)] do
 begin
  Assert(VType = vtInteger);
  if VInteger <> fCurDocID then
  begin
   Assert(fCurDocID = 0, Format(rsDocWasntClosed, [fCurDocID]));
   //CloseDocPrim;
     //сохранить данные для fCurDocID
   fCurDocID := VInteger;
  end;
 end;

 inherited AddRecord(aRecordArr);
end;


{TBasisCacheAttrData}
procedure TBasisCacheAttrData.Cleanup;
begin
 l3Free(fAttrList);
 inherited;
end;


procedure TBasisCacheAttrData.AddRecord(const aRecordArr: array of const);
begin
 if CachingMode = cmIgnore then
  Exit;

 with NewRecList do
 begin
  Count := Count + 1;
  FillRecord(ItemSlot(Hi), aRecordArr);
 end;
end;

procedure TBasisCacheAttrData.FillRecord(aRecPtr : Pointer; const aRecordArr: array of const);
var
 I         : integer; // номер поля в рекорде = номер поля в таблице - 1 (суррогатный ключ не передаем)
 lFieldLen : Integer;
 lInt      : Integer;
 lDataPtr  : Pointer;
 lSize     : Integer; // Размер записанного в элемент листа

 procedure AddStrToData(aStr : PAnsiChar; aStrLen : Integer);
 begin
  if aStrLen > 0 then
   l3Move(aStr^, aRecPtr^, Min(aStrLen, lFieldLen));
  if lFieldLen > aStrLen then
   l3FillChar((PAnsiChar(aRecPtr) + aStrLen)^, lFieldLen - aStrLen, 32);
 end;

var
 lTag : Ik2Tag;

begin

 lSize := 0;
 for I := 0 to High(aRecordArr) do
  with aRecordArr[I] do
  begin
   if lSize = NewRecList.ItemSize then Break; // например в словарях передаем третьим полем SubID, а не во всех словарях оно есть

   lFieldLen := GetFieldLength(Succ(I));
   Inc(lSize, lFieldLen);

   Assert(lSize <= NewRecList.ItemSize, 'TCacheDiffAttrData.AddRecord - неверный размер данных'); // а вот это уже косяк

   case VType of
    vtInteger :
     l3Move(VInteger, aRecPtr^, lFieldLen);

    vtPChar :
     AddStrToData(VPChar, l3StrLen(VPChar));

    vtAnsiString :
     AddStrToData(PAnsiChar(AnsiString(VAnsiString)), Length(AnsiString(VAnsiString)));
     //AddStrToData(PAnsiChar(VAnsiString), Length(PANSIString(VAnsiString)^));

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
      l3Move(lInt, aRecPtr^, lFieldLen);
     end
    else
     Assert(False,'TCacheDiffAttrData.AddRecord данные левого типа');

   end; //case VType of

   Inc(Integer(aRecPtr), lFieldLen);
  end;
end;

function  TBasisCacheAttrData.DocIDField : Integer;
begin
 Result := 1;
end;

procedure TBasisCacheAttrData.BeforeRelease;
begin
 Save;
 inherited;
end;

function TBasisCacheAttrData.MakeList(aItemSize : Longint; aKeyFieldArr : TSmallIntArray) : Tl3RecList;
begin
 Result := Tl3FieldSortRecList.Create(aItemSize, aKeyFieldArr, []{сортировка по всем полям lKeyFieldArr});
end;

function TBasisCacheAttrData.GetList: Tl3RecList;
var
 I : Integer;
 lItemSize : Longint;
 lFieldSize : Longint;
 lKeyFieldArr : TSmallIntArray;
 lKFArrNum  : integer;
begin
 if fAttrList = nil then
 begin
  lItemSize := 0;
  lKFArrNum := 0;
  fItemKeySize := 0;
  SetLength(lKeyFieldArr, GetUniqFieldNum);

  for I := 1 to GetFieldsCount do
  begin
   {
   //DocID!!
   if I = DocIDField then
    Continue; //DocID не пишем - оно одинаковое
   }

   lFieldSize := GetFieldLength(I);
   Inc(lItemSize, lFieldSize);

   if lKFArrNum <= High(lKeyFieldArr) then
   begin
    lKeyFieldArr[lKFArrNum] := lFieldSize;

    Inc(fItemKeySize, lFieldSize);
    Inc(lKFArrNum);
   end;
  end;

  fAttrList := MakeList(lItemSize, lKeyFieldArr);
 end;

 Result := fAttrList;
end;

{TCacheMainData}
constructor TCacheMainData.Create(aFamily : TFamilyID);
var
 lDictType : TDLType;
begin
 inherited Create;
 fAttrTbl := DocumentServer(aFamily).FileTbl;
end;

procedure TCacheMainData.Cleanup;
begin
 htClearResults(fAnnoIDs);
 inherited;
end;

function TCacheMainData.GetUniqFieldNum: Byte;
begin
 Result := 1;
end;

procedure TCacheMainData.AddRecord(const aRecordArr: array of const);
begin
 if NewRecList.Count >= cMainRecFlushCriteria then
  Save;
 Inherited AddRecord(aRecordArr);
end;

function TCacheMainData.GetFieldsCount : Word;
begin
 Result := fAttrTbl.fldCount;
end;

function TCacheMainData.GetFieldLength(aField : Word) : Word;
begin
 Result := fAttrTbl.fldLength[aField];
end;

procedure TCacheMainData.AddAnno(aDocID : TDocID);
begin
 if CachingMode = cmIgnore then
  Exit;

 if htResultsType(fAnnoIDs) = Res_NProc then
 begin
  if htCreateEmptySAB(nil, fAnnoIDs, fAttrTbl.Handle, DocIDField, Res_Value {Res_Record}) = nil then
   Ht(fAnnoIDs.nRetCode);
  Ht(htOpenResults(fAnnoIDs, ROPEN_READ, Nil, 0));
 end;

 Ht(htIncludeResultsItem(fAnnoIDs, fAnnoIDs.gFoundCnt, @aDocID));
end;

procedure TCacheMainData.Save;
var
 lDocIDs        : Sab;
 lAnnoIDsForAdd : Sab;
 lDocHasAnno    : ISab;
 lModifyRecCount : Integer;
 lModifiedArray  : Tl3LogicalArray;


 procedure lAddToTable;
 var
  lRecCount : Cardinal;
  lFBStub   : TFillBufferProc;

  lLoadedCount : Integer;
  lItemsIterForAddDocRec : TValuesIterator;
  lRecordForAnnoAdd : Pointer;

  function lGetNextRecord : Pointer;
  var
   lAnnoID : TDocID;
  begin
   Result := nil;

   while True do
   begin
    if (lLoadedCount < NewRecList.Count) then
    begin
     if (lModifiedArray <> nil) and lModifiedArray[lLoadedCount] then
      Inc(lLoadedCount)
     else
     begin
      Result := NewRecList.ItemSlot(lLoadedCount);
      Break;
     end;
    end
    else
     if (lItemsIterForAddDocRec <> nil) and not lItemsIterForAddDocRec.EOF then
     begin
      lItemsIterForAddDocRec.Read(lAnnoID);
      lItemsIterForAddDocRec.Next;
      Result := lRecordForAnnoAdd;
      PDocID(Result)^ := lAnnoID;
      Break;
     end
     else
      Exit;
   end;
   Inc(lLoadedCount);
  end;

  function lFillBufferProc(aBuffer: Pointer; aBufSize: Longint): Longint; register;
  var
   lRecInBuff : Integer;
   lBuf : Pointer;
   lCurRec : Pointer;
  begin
   lRecInBuff := aBufSize div fAttrTbl.RecSize;
   Result := 0;

   while (lRecInBuff > 0) do
   begin
    lCurRec := lGetNextRecord;

    if lCurRec = nil then Exit;

    l3Move(lCurRec^, aBuffer^, fAttrTbl.RecSize);
    aBuffer := PAnsiChar(aBuffer) + fAttrTbl.RecSize;
    Dec(lRecInBuff);
    Inc(Result, fAttrTbl.RecSize);
   end;
  end;

 begin
  lRecCount := lDocIDs.gFoundCnt - lModifyRecCount + lAnnoIDsForAdd.gFoundCnt;
  if (lRecCount = 0) then Exit;

  //lDataAddHelper := TCacheMainDataAddHelper.Create(NewRecList, lAnnoIDsForAdd, fAttrTbl);
  lLoadedCount := 0;
  lItemsIterForAddDocRec := nil;
  if lAnnoIDsForAdd.gFoundCnt > 0 then
  begin
   lItemsIterForAddDocRec := TValuesIterator.Create(lAnnoIDsForAdd);
   l3System.GetLocalMemZ(lRecordForAnnoAdd, fAttrTbl.RecSize);
   PByte(PAnsiChar(lRecordForAnnoAdd) + fAttrTbl.fldOffset[fType_Fld])^ := Byte(dtText);
   PByte(PAnsiChar(lRecordForAnnoAdd) + fAttrTbl.fldOffset[fHasAnno_fld])^ := 1;
  end;

  try
   lFBStub := L2FillBufferProc(@lFillBufferProc);
   try
    fAttrTbl.AddRecs(lRecCount, lFBStub);
   finally
    FreeFillBufferProc(lFBStub);
   end;
  finally
   l3System.FreeLocalMem(lRecordForAnnoAdd);
   l3Free(lItemsIterForAddDocRec);
  end;
 end;

 function lModifyRecords : Integer; // возвращает количество измененных
 var
  lHTStub        : Pointer;
  lDocsForChange : ISab;
  lCurItem       : Integer;
  //lModifidCount  : Integer;

  (* // htPureModifyRecords НЕ РАБОТАЕТ С СОРТИРОВАННЫМИ САБАМИ, поэтому пришлось отказаться
  function lModifyRec(gRecNo : LongInt; fpRecord : Pointer) : MFUNC_RET;
  begin
   while {(lCurItem < NewRecList.Count) and } (PDocID(fpRecord)^ > PDocID(NewRecList.ItemPtr(lCurItem))^) do
   begin
    Inc(lCurItem);
    Assert(lCurItem < NewRecList.Count, 'TCacheMainData.Save.lModifyRec: нарушение логики');
    // Если запись не нашлась в NewRecList, то она не может попасть и в этот итератор, надо разбираться
   end;

   if PDocID(fpRecord)^ = PDocID(NewRecList.ItemPtr(lCurItem))^ then
   begin
    // перегрузим тело в fpRecord
    l3Move(NewRecList.ItemPtr(lCurItem)^, fpRecord^, fAttrTbl.RecSize);
    // кокнем ID в записи NewRecList, как флаг что ее исправили и добавлять не надо
    PDocID(NewRecList.ItemPtr(lCurItem))^ := 0;
    Inc(lModifidCount);
    Inc(lCurItem);
   end;

   Result := MFUNC_SUCCESS;
  end;
  *)
  function lModifyRec(gRecNo : LongInt; fpRecord : Pointer) : MFUNC_RET;
  var
   lIndex : Integer;
  begin
   if not NewRecList.Find(PDocID(fpRecord)^, lIndex) then
    Assert(False, 'TCacheMainData.Save.lModifyRec: нарушение логики');
    // Если запись не нашлась в NewRecList, то она не может попасть и в этот итератор, надо разбираться

   // перегрузим тело в fpRecord
   l3Move(NewRecList.ItemSlot(lIndex)^, fpRecord^, fAttrTbl.RecSize);
   // кокнем ID в записи NewRecList, как флаг что ее исправили и добавлять не надо
   //PDocID(NewRecList.ItemPtr(lIndex))^ := 0;
   //Inc(lModifidCount);
   lModifiedArray[lIndex] := True;
   Result := MFUNC_SUCCESS;
  end;

 begin
  lCurItem := 0;
  Result := 0;
  //lModifidCount := 0;

  if lDocIDs.gFoundCnt = 0 then Exit;
  //получим список записей,
  lDocsForChange := MakeSab(fAttrTbl, lDocIDs);
  //отсортируем их по ID
  //lDocsForChange.Sort; // уже отсортирован
  lDocsForChange.RecordsByKey;
  Result := lDocsForChange.Count;

  if Result = 0 then Exit;

  lModifiedArray := Tl3LogicalArray.Create;
  lModifiedArray.ArrayCapacity := NewRecList.Count;
  //lDocsForChange.Sort([DocIDField]);  // htPureModifyRecords НЕ РАБОТАЕТ С СОРТИРОВАННЫМИ САБАМИ
  //и модифицируем их пользуясь данными NewRecList.
  //для оптимизации поиска воспользуемся тем фактом, что lDocsForChange и NewRecList отсортированы по ID
  lHTStub := HTStub3(@lModifyRec);
  try
   lDocsForChange.ModifyRecs(lHTStub);
  finally
   HTStubFree(lHTStub);
  end;
 end;

 procedure lSetHasAnnoFlag;
 var
  lCurItem  : Integer;
  lStub     : TdtRecAccessProc;
  lHasAnnoOffset : Integer;

  function lRecAccessProc(aRec : Pointer) : Boolean;
  begin
   Result := True;
   while  PDocID(aRec)^ > PDocID(NewRecList.ItemSlot(lCurItem))^ do
   begin
    Inc(lCurItem);
    Assert(lCurItem < NewRecList.Count, 'TCacheMainData.Save.lSetHasAnnoFlag: нарушение логики');
    // Если запись не нашлась в NewRecList, то она не может попасть и в этот итератор, надо разбираться
   end;
   if PDocID(aRec)^ = PDocID(NewRecList.ItemSlot(lCurItem))^ then
   begin
    PByte(PAnsiChar(NewRecList.ItemSlot(lCurItem)) + lHasAnnoOffset)^ := 1;
    Inc(lCurItem);
   end;
  end;

 begin
  if (lDocHasAnno = nil) or (lDocHasAnno.Count = 0) then Exit;

  lCurItem := 0;
  lHasAnnoOffset := fAttrTbl.fldOffset[fHasAnno_fld];

  lStub := L2RecAccessProc(@lRecAccessProc);
  try
   lDocHasAnno.IterateRecords(lStub);
  finally
   FreeRecAccessProc(lStub);
  end;
  NewRecList;
 end;

var
 I : Integer;
 lRecForAnnoIDs     : Sab;
 lAnnoIDsExist      : Sab;
 lDocIDsSum         : Sab;
 lDocIDsDiff        : Sab;
 lDocIDsNeedHasAnno : Sab;
 lAnnoIDsExistNotHasAnno : Sab;
 lDocAndAnnoCommon : Sab;
 lDocIDs_HasAnno   : Sab;
 lPhoto  : Pointer;

begin
 if CachingMode = cmIgnore then
  Exit;

{$IfDef DEBUGOUT2}
 l3System.Msg2Log('Save MAIN Attr');
{$EndIf}
//закрываем AnnoIDs и сортируем
 //if (htResultsType(AnnoIDs) <> Res_NProc) then
 htCloseResults(fAnnoIDs);
 if (htResultsType(fAnnoIDs) <> Res_NProc) then
  dtSortSab(fAnnoIDs);

 dtCleanSab(lAnnoIDsForAdd);

//построим список значений DocID для добавленных документов
 dtCleanSab(lDocIDs);
 if NewRecList.Count > 0 then
 begin
  NewRecList.Sorted := True; //мы потом его используем при добавлении записей и нужно что бы он был в том же порядке что и lDocHasAnno
  if fAnnoIDs.gFoundCnt > 0 then
   lPhoto := @fAnnoIDs
  else
   lPhoto := nil;
  if htCreateEmptySAB(lPhoto, lDocIDs, fAttrTbl.Handle, DocIDField, Res_Value {Res_Record}) = nil then
    Ht(lDocIDs.nRetCode);
  Ht(htOpenResults(lDocIDs, ROPEN_READ, Nil, 0));
  try
   with NewRecList do
   begin
    Assert(DocIDField = 1, 'TCacheMainData : Поле DocID для таблицы File д. б. = 1!'); // а то след код работать не будет
    for I := 0 to Hi do
     Ht(htIncludeResultsItem(lDocIDs, lDocIDs.gFoundCnt, ItemSlot(I){указатель на запись = указатель на первое поле}));
   end;
  finally
   htCloseResults(lDocIDs);
   //dtSortValueSab(lDocIDs); // это лишнее т к NewRecList был сортирован
  end;
 end;

 dtCleanSab(lAnnoIDsExist);
 dtCleanSab(lRecForAnnoIDs);
 dtCleanSab(lDocAndAnnoCommon);

 if fAnnoIDs.gFoundCnt > 0 then
 begin
  // построим пересечение lDocIDs и fAnnoIDs = lDocAndAnnoCommon,
  // будем использовать его для взведения HasAnno
  dtAndResults(lDocAndAnnoCommon, lDocIDs, fAnnoIDs);

  //получим список записей по AnnoIDs
  htRecordsByKey(lRecForAnnoIDs, fAnnoIDs);

  if lRecForAnnoIDs.gFoundCnt > 0 then
  begin
   // преобразуем его в список значений AnnoIDsExist
   htValuesOfKey(lAnnoIDsExist, DocIDField, lRecForAnnoIDs);
   dtSortSab(lAnnoIDsExist);

   // lAnnoIDsForAdd - это аннотации без доков
   // их потом добавим "пустышками"
   // lAnnoIDsForAdd = fAnnoIDs xor (lDocAndAnnoCommon or lAnnoIDsExist)

   dtOrResults(lDocIDsSum, lDocAndAnnoCommon, lAnnoIDsExist);
   htClearResults(lAnnoIDsExist);
   dtXorResults(lAnnoIDsForAdd, fAnnoIDs, lDocIDsSum);
   htClearResults(lDocIDsSum);

   // AnnoIDsExist - lDocAndAnnoCommon => lDocIDsNeedHasAnno этим надо ТОЛЬКО HasAnno взвести
   // но сначала преобразовать в записи и вычесть те кот. уже с взведенным
   // AnnoIDsExist - lDocIDs = (AnnoIDsExist and lDocAndAnnoCommon) xor AnnoIDsExist

   fAttrTbl.GetAnnoSABonDocSAB(lRecForAnnoIDs {то же что и AnnoIDsExist}, lAnnoIDsExistNotHasAnno, False);

   if lAnnoIDsExistNotHasAnno.gFoundCnt > 0 then
   begin
    dtAndResults(lDocIDsDiff, lAnnoIDsExistNotHasAnno, lDocAndAnnoCommon);
    dtXorResults(lDocIDsNeedHasAnno, lAnnoIDsExistNotHasAnno, lDocIDsDiff);
    htClearResults(lDocIDsDiff);

    fAttrTbl.SetHasAnno(lDocIDsNeedHasAnno, True);
    htClearResults(lDocIDsNeedHasAnno);
   end;
   htClearResults(lAnnoIDsExistNotHasAnno);
  end
  else // if lRecForAnnoIDs.gFoundCnt > 0
   dtXorResults(lAnnoIDsForAdd, fAnnoIDs, lDocAndAnnoCommon);

  dtSortSab(lAnnoIDsForAdd);

  htClearResults(lRecForAnnoIDs);
 end;

// вычислим lDocHasAnno
 if dtSABHasData(lDocIDs) then
 begin
  fAttrTbl.GetAnnoSABonDocSAB(lDocIDs, lDocIDs_HasAnno, True);
  lDocHasAnno := MakeSab(fAttrTbl, lDocIDs_HasAnno);
  htClearResults(lDocIDs_HasAnno);
 end;

 if lDocAndAnnoCommon.gFoundCnt > 0 then
  if lDocHasAnno = nil then
   lDocHasAnno := MakeSab(fAttrTbl, lDocAndAnnoCommon)
  else
   lDocHasAnno.OrSab(MakeSab(fAttrTbl, lDocAndAnnoCommon));
 htClearResults(lDocAndAnnoCommon);

 // поправим флажок HasAnno у NewRecList
 lSetHasAnnoFlag;

 lModifiedArray := nil;
 try
  // Существующие записи исправим
  lModifyRecCount := lModifyRecords;

  //а потом добавим скопом попутно взводя HasAnno для DocID из списка lDocHasAnno
  // + добавляем "пустые" записи для lAnnoIDsForAdd
  lAddToTable;
 finally
  l3Free(lModifiedArray);
 end;

 htClearResults(lAnnoIDsForAdd);
 htClearResults(fAnnoIDs);

 NewRecList.Clear;
 NewRecList.Sorted := False;
end;

end.


