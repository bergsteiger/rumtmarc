unit m3StgCla;
{* Реализация IStorage, библиотеки m3. }

(*
//
//
// .Author: Mickael P. Golovin.
// .Copyright: 1997-2001 by Archivarius Team, _free for non commercial use.
//
//
*)
// $Id: m3stgcla.pas,v 1.56 2013/04/12 16:25:08 lulin Exp $

// $Log: m3stgcla.pas,v $
// Revision 1.56  2013/04/12 16:25:08  lulin
// - отлаживаем под XE3.
//
// Revision 1.55  2012/11/01 09:43:31  lulin
// - забыл точку с запятой.
//
// Revision 1.54  2012/11/01 07:45:58  lulin
// - делаем возможность логирования процесса загрузки модулей.
//
// Revision 1.53  2012/11/01 07:09:33  lulin
// - вычищаем мусор.
//
// Revision 1.52  2012/10/10 09:29:30  lulin
// - включаем костыль.
//
// Revision 1.51  2012/10/10 09:27:23  lulin
// - чистим код.
// - временно выключил костыль.
//
// Revision 1.50  2012/10/10 09:00:20  lulin
// - чистим код.
//
// Revision 1.49  2012/10/09 13:26:05  lulin
// - вставляем костыль.
//
// Revision 1.48  2012/09/12 14:15:26  lulin
// {RequestLink:392696007}
//
// Revision 1.47  2012/05/30 13:21:24  voba
// - bug fix : обработка некорректной ситуации недописанного файла в хранилище
//
// Revision 1.46  2012/05/25 13:43:52  lulin
// - чистка кода.
//
// Revision 1.45  2012/05/04 19:42:49  lulin
// {RequestLink:361038156}
//
// Revision 1.44  2012/05/04 10:04:36  lulin
// {RequestLink:361038156}
//
// Revision 1.43  2012/05/04 08:31:15  lulin
// {RequestLink:361038156}
//
// Revision 1.42  2012/01/20 13:16:24  dinishev
// {Requestlink:327822716}
//
// Revision 1.41  2011/12/28 16:14:37  lulin
// {RequestLink:325257155}
// - не храним вычисляемую константу.
//
// Revision 1.40  2011/12/28 15:53:06  lulin
// {RequestLink:325257155}
// - переходим от указателей к переменным.
//
// Revision 1.37  2011/12/28 09:29:10  lulin
// {RequestLink:325257155}
// - чистим код.
//
// Revision 1.36  2011/12/27 15:36:29  lulin
// {RequestLink:324571064}
// - аккуратнее чистим данные перед положением объекта в кеш.
//
// Revision 1.35  2011/10/05 11:12:11  voba
// - k : 281525254 Борьба с утечками
//
// Revision 1.34  2010/12/06 14:52:10  voba
// no message
//
// Revision 1.33  2009/11/27 12:54:08  lulin
// {RequestLink:172365087}.
//
// Revision 1.32  2009/07/20 11:22:23  lulin
// - заставляем работать F1 после - {RequestLink:141264340}. №7, 32, 33.
//
// Revision 1.31  2009/06/10 16:30:48  lulin
// - не записывали оглавление на новом месте, после создания индексной части, в результате имели битое хранилище.
//
// Revision 1.30  2009/06/09 06:21:25  oman
// Не собиралась библиотека
//
// Revision 1.29  2009/06/08 11:37:13  lulin
// - исправляем неправильные элементы каталога.
// - выводим отладочную информацию.
//
// Revision 1.28  2009/03/23 08:33:11  lulin
// - не записываем заголовок хранилища, если не читали его.
//
// Revision 1.27  2009/03/19 16:28:30  lulin
// [$139443095].
//
// Revision 1.26  2009/03/18 12:07:44  lulin
// - после успешной записи потока переименовываем его в то название по которому пытаемся его писать.
//
// Revision 1.25  2009/03/12 19:11:57  lulin
// - <K>: 138969458. Чистка устаревшего кода.
//
// Revision 1.23  2008/06/05 12:07:39  narry
// - отключение мусора
//
// Revision 1.22  2008/06/04 12:33:14  fireton
// - лог залочек root'а
//
// Revision 1.21  2007/12/21 10:02:19  lulin
// - модуль m3StorageInterfaces полностью перенесен на модель.
//
// Revision 1.20  2007/08/24 20:28:41  lulin
// - cleanup.
//
// Revision 1.19  2007/08/24 19:04:05  lulin
// - bug fix: не собирался Немезис.
//
// Revision 1.18  2007/08/24 18:57:39  lulin
// - избавляемся от "неправильного" перемещения памяти.
//
// Revision 1.17  2007/08/20 14:45:29  lulin
// - выводим исключение в log.
//
// Revision 1.16  2007/08/14 19:32:06  lulin
// - оптимизируем очистку памяти.
//
// Revision 1.15  2007/04/19 10:51:37  voba
// - спасение тверских данных
//
// Revision 1.14  2007/03/22 10:12:07  lulin
// - cleanup.
//
// Revision 1.13  2007/03/22 10:09:28  lulin
// - bug fix: некорректно проверяли неюникодные имена.
//
// Revision 1.12  2007/02/13 16:36:49  lulin
// - используем более простые функции сравнения.
//
// Revision 1.11  2005/05/24 11:07:42  lulin
// - cleanup.
//
// Revision 1.10  2005/02/16 07:55:55  lulin
// - bug fix: был AV при удалении директории в хранилище.
//
// Revision 1.9  2005/02/14 15:12:01  lulin
// - изменены сигнатуры методов.
//
// Revision 1.8  2005/01/18 10:23:38  lulin
// - уменьшен размер временных файлов для Немезиса.
//
// Revision 1.7  2004/09/24 09:36:58  lulin
// - выводим в лог сообщения об ошибках.
//
// Revision 1.6  2004/09/24 08:25:46  lulin
// - bug fix: не очищались поля.
//
// Revision 1.5  2004/09/21 11:22:28  lulin
// - Release заменил на Cleanup.
//
// Revision 1.4  2004/09/16 09:25:23  lulin
// - bug fix: наследники от evCtrl убивались в DesignTime произвольным образом.
//
// Revision 1.3  2004/09/09 16:29:57  lulin
// - отключил директиву m3LogLocks.
//
// Revision 1.2  2004/09/09 14:53:53  lulin
// - small fix.
// - сделан вывод в лог информации и залочках в новом хранилище.
//
// Revision 1.1  2004/09/02 08:09:49  law
// - cleanup.
//
// Revision 1.80  2004/09/01 16:23:32  voba
// - bug fix не отпускался элемент хранилища, перед освобождением цепочки блоков.
//
// Revision 1.79  2004/09/01 16:17:40  law
// - bug fix: был перепутан порядок параметров.
//
// Revision 1.78  2004/08/31 15:42:07  law
// - bug fix: в PlugIn'е для Far'а не перезаписывались отредактированные файлы.
//
// Revision 1.77  2004/08/31 15:11:14  law
// - bug fix: заточка для выливки в NSRC псевдографики странным образом сказалась на работоспособности хранилища (не опознавались индексные файлы).
// - bug fix: неправильно удалялись документы из индекса.
//
// Revision 1.76  2004/08/31 13:02:12  law
// - доделано удаление элементов из индексированного хранилища.
//
// Revision 1.75  2004/08/27 13:48:03  law
// - сделано получение документа из реальной базы.
//
// Revision 1.74  2004/08/27 09:25:19  law
// - даем индексным потокам более осмысленные имена.
//
// Revision 1.73  2004/08/26 16:04:17  law
// - проверка валидности считанных данных перенесена в более подходящее место.
//
// Revision 1.72  2004/08/23 14:55:03  law
// - bug fix: нельзя было открывать потоки внутри итератора.
//
// Revision 1.71  2004/05/27 14:32:18  law
// - new methods: _Tl3_CBase.IsCacheable, _NeedStoreInPool.
//
// Revision 1.70  2004/05/11 13:06:43  law
// - change: используем "свои" константы вместо констант Windows.
//
// Revision 1.69  2004/05/11 12:48:40  law
// - сделан более вразумительный тип входных параметров.
//
// Revision 1.68  2004/05/11 12:39:34  law
// no message
//
// Revision 1.67  2004/05/11 12:38:58  law
// - new directive: m3StorageHasGarbage.
//
// Revision 1.66  2004/05/11 12:28:41  law
// - change: вернул размер кластера 256.
//
// Revision 1.65  2004/05/07 15:45:38  law
// - поправлено форматирование.
// - добавлены директивы, выключающие ненужные данные в хранилище.
//
// Revision 1.64  2003/05/12 09:20:25  law
// - rename proc: ev_plIsNil -> l3IsNil.
//
// Revision 1.63  2002/10/16 14:13:31  narry
// - change: добавлена возможность открытия/создания потока без сжатия.
//
// Revision 1.62  2002/09/03 15:43:27  law
// - bug fix: не всегда правильно работала функция _IsValidName.
//
// Revision 1.61  2002/06/17 14:24:16  law
// - new method: _OpenStore.
//
// Revision 1.60  2002/06/17 13:44:46  law
// - new const: m3_saRead, m3_saReadWrite, m3_saCreate.
//
// Revision 1.59  2002/04/26 16:01:04  law
// - change: вставлена диагностика ошибки размера потока.
//
// Revision 1.58  2002/04/26 13:17:12  law
// - bug fix: пытаемся корректировать битые элементы каталога.
//
// Revision 1.57  2002/04/18 15:09:03  law
// - new behavior: _CopyTo копирует теперь и индексные элементы.
//
// Revision 1.56  2002/04/18 14:05:42  law
// - bug fix: неправильно копировались пакованные потоки.
//
// Revision 1.55  2002/04/18 13:28:43  law
// - bug fix: неправильно копировались пакованные потоки.
//
// Revision 1.54  2002/04/06 10:29:57  law
// - optimization: убрано чтение/запись CRC.
//
// Revision 1.53  2002/04/05 12:53:07  law
// - change: расширен интерфейс Im3IndexedStorage.
//
// Revision 1.52  2002/03/12 14:07:40  law
// - new behavior: в списках убран контроль CRC.
//
// Revision 1.51  2002/02/26 15:48:10  law
// - optimization: попытка оптимизации путем уменьшения фрагментации выделяемой памяти.
//
// Revision 1.50  2002/02/22 10:30:53  law
// - optimization: используем интерфейс Im3IndexedStorage.
//
// Revision 1.49  2002/02/21 15:58:17  law
// - optimization.
//
// Revision 1.48  2002/01/30 16:03:05  law
// - bug fix: не всегда работал PlugIn.
//
// Revision 1.47  2002/01/30 14:24:04  law
// - new interface: Im3IndexedStorage.
//
// Revision 1.46  2002/01/30 13:37:21  law
// - new methods: Tm3Storage.CreateOpenStorage & CheckIndex.
//
// Revision 1.45  2002/01/30 12:35:01  law
// - new behavior: сделан перебор элементов индекса.
//
// Revision 1.44  2002/01/29 12:51:28  law
// - new behavior: немного изменена схема доступа к индексным потокам.
//
// Revision 1.43  2002/01/29 09:13:48  law
// - new behavior: подготавливаем объект Tm3StorageStream к кешируемости.
//
// Revision 1.42  2002/01/28 13:02:34  law
// - new behavior: подготавливаем объект Tm3StorageStream к кешируемости.
//
// Revision 1.41  2002/01/24 16:30:25  law
// - new behavior: сделан доступ по индексу к элементам хранилища.
//
// Revision 1.40  2002/01/22 09:50:36  law
// - cleanup: число 20 заменил на соответствующую константу SizeOf(..).
//
// Revision 1.39  2002/01/21 16:56:31  law
// no message
//
// Revision 1.38  2002/01/21 16:44:22  law
// - temporary save: заготовки для использования целочисленного индекса.
//
// Revision 1.37  2002/01/21 13:22:59  law
// - cleanup.
//
// Revision 1.36  2002/01/18 17:51:48  law
// - cleanup.
//
// Revision 1.35  2002/01/18 17:32:23  law
// - new prop: Tm3TOCItemData.TOCListPosition.
//
// Revision 1.34  2002/01/18 16:44:24  law
// - cleanup.
//
// Revision 1.33  2002/01/18 14:54:16  law
// - change: процедуры *Storage и *Stream объединены в *Store.
//
// Revision 1.32  2002/01/17 18:41:33  law
// - new behavior: сделал логику Tm3BaseHandleList более похожей на Tl3VList.
//
// Revision 1.31  2002/01/17 16:00:47  law
// - optimization: убраны ненужные поля.
//
// Revision 1.30  2002/01/17 13:22:06  law
// - change data struct: Tl3PCharLen -> Tl3String.
// - optimization: убрана двойная буферизация.
//
// Revision 1.29  2002/01/17 12:37:51  law
// - optimizing: убраны ненужные поля.
//
// Revision 1.28  2002/01/17 11:46:03  law
// - reformatting & optimizing.
//
// Revision 1.27  2002/01/16 18:00:40  law
// - change: у TOCItem убивается строка при положении в кеш - во избежании коллизий при Shared-строках.
//
// Revision 1.26  2002/01/10 16:29:18  law
// - try to optimize: получение размера потока без _Seek.
//
// Revision 1.25  2002/01/10 14:08:41  law
// - change data struct: Tl3PCharLen -> Tl3String.
//
// Revision 1.24  2002/01/10 13:18:26  law
// - change data struct: _PWideChar -> Tl3PCharLen.
//
// Revision 1.23  2002/01/10 09:52:20  law
// - change data struct: _PWideChar -> Tl3PCharLen.
//
// Revision 1.22  2002/01/10 08:55:39  law
// - change data struct: WideString -> Tl3String.
//
// Revision 1.21  2002/01/10 08:27:30  law
// - new behavior: WideString -> Tl3String.
//
// Revision 1.20  2002/01/10 07:15:54  law
// - reformatting.
//
// Revision 1.19  2002/01/09 14:45:34  law
// - new behavior: сделана буферизация при чтении/записи оглавления.
//
// Revision 1.18  2002/01/09 13:51:24  law
// - reformatting.
//
// Revision 1.17  2002/01/09 13:16:06  law
// - new behavior: для зачитывания имени элемента каталога используем Tl3String, а не WideString.
//
// Revision 1.16  2001/12/27 14:53:56  law
// - reformatting.
//
// Revision 1.15  2001/12/26 18:26:22  law
// - bug fix: заточка под баг Delphi 5.
//
// Revision 1.14  2001/12/26 15:34:52  law
// - reformatting.
//
// Revision 1.13  2001/12/26 15:03:52  law
// - reformatting.
//
// Revision 1.12  2001/11/29 17:02:43  law
// - new directive: _m3NeedStorageFixer.
//
// Revision 1.11  2001/11/29 15:46:17  law
// - bug fix: исправляем некорректное поведение индексатора после прикручивания архивирования потоков. Временная копия. Пока не работает.
//
// Revision 1.10  2001/11/28 15:10:02  law
// - bug fix: поправлен PlugIn для Far'а - не читал архивированные хранилища.
//
// Revision 1.9  2001/11/28 14:19:32  law
// - new behavior: сделано создание хранилищ с автоматической паковкой.
//
// Revision 1.8  2001/11/02 08:06:16  law
// - new proc: l3NewMemoryChain.
//
// Revision 1.7  2001/11/01 17:56:25  law
// - optimization: на основе Tl3MemoryChain.
//
// Revision 1.6  2001/11/01 14:57:24  law
// - change: изменен формат вызова метода _Seek.
//
// Revision 1.5  2001/10/30 11:51:13  law
// - comments: xHelpGen.
// - optimize: учитываем режим ReadOnly.
//

{$I m3Define.inc}

{$IfNDef m3NotMultiThreadStorage}
 {$Define m3MultiThreadStorage}
{$EndIf  m3NotMultiThreadStorage}

{$Define m3StorageHasGarbage}

{$IfDef Nemesis}
{$IFDEF nsTest}
 {$DEFINE m3StorageHasGarbage}
{$ELSE}
 {$Undef m3StorageHasGarbage}
{$ENDIF nsTest}
{$EndIf Nemesis}

{$IfDef m3StorageHasGarbage}
 {$Define m3ClusterHasCRC}
 {$Define m3StoreHasCRC}
 {$Define m3StoreHas_Body}
 {$Define m3StoreHasGUID}
{$EndIf m3StorageHasGarbage}

{.$Define m3LogLocks}

interface

uses
  Windows,
  SysUtils,

  Classes,

  ActiveX,
  COMObj,

  l3Interfaces,
  l3Types,
  l3Base,

  m2AddDbg,
  m2AddPrc,
  m2S32Lib,
  m2S64Lib,
  m2MEMLib,
  m2HASLib,
  m2COMLib,

  m3StorageInterfaces,
  m3BasCla
  ;

type
  Tm3Storage = class;
  Rm3Storage = class of Tm3Storage;

  Pm3StgClaTOCItemBody = ^Tm3StgClaTOCItemBody;
  Tm3StgClaTOCItemBody = packed record
   {* Тело элемента оглавления. }
      RTOCBuffRootPosition: Int64;
        {* - указатель на первый блок потока. }
      RTOCItemListPosition: Int64;
        {* - указатель на позицию где в данном потоке находится оглавление. }
      RRealSize: Int64;
        {* - реальный размер потока. }
      {$IfDef m3StoreHasGUID}
      RCLSID: TCLSID;
        {* - GUID потока (для поддержки идеологии Microsoft OLE). }
      {$EndIf m3StoreHasGUID}  
      {$IfDef m3StoreHasStateBits}
      RStateBits: LongInt;
        {* - биты состояния потока (для поддержки идеологии Microsoft OLE). }
      {$EndIf m3StoreHasStateBits}
  end;//Tm3StgClaTOCItemBody

  Pm3StoreHeaderData = ^Tm3StoreHeaderData;
  Tm3StoreHeaderData = packed record
   {* Элемент оглавления IStorage. }
      RNextPosition: Int64;
        {* - позиция следующего свободного элемента каталога (для связывания в цепочки). }
      {$IfDef m3StoreHasCRC}
      RBodyCRC: LongInt;
        {* - контрольная сумма. }
      {$EndIf m3StoreHasCRC}
      RBody: Tm3StgClaTOCItemBody;
        {* - тело элемента оглавления. }
      {$IfDef m3StoreHas_Body}
      _Body: packed array [1..8] of AnsiChar;
        {* - резерв. }
      {$EndIf m3StoreHas_Body}
  end;//Tm3StoreHeaderData

  Pm3StgClaTOCBuffBody = ^Tm3StgClaTOCBuffBody;
  Tm3StgClaTOCBuffBody = packed array [0..65535] of AnsiChar;

  Pm3StgClaTOCBuffData = ^Tm3StgClaTOCBuffData;
  Tm3StgClaTOCBuffData = packed record
   {* - описатель блока потока. }
      RNextPosition: Int64;
        {* - следующий блок. }
      RPrevPosition: Int64;
        {* - предыдущий блок. }
      {$IfDef m3ClusterHasCRC}
      RBodyCRC: LongInt;
      {$EndIf m3ClusterHasCRC}
        {* - контрольная сумма. }
      RBody: Tm3StgClaTOCBuffBody;
        {* - собственно тело блока. }
  end;//Tm3StgClaTOCBuffData

  //Pm3StgClaBothMark = ^Tm3StgClaBothMark;
  Tm3StgClaBothMark = TGUID;

  Tm3RootStream = class(Tm3CustomHeaderStream)
    private


    protected


          function          InitHeaderData      (
                                                ): Pointer; override;

          function          InitHeaderDataSize  (
                                                ): LongInt; override;

          function          InitHeaderFullSize  (
                                                ): LongInt; override;


          procedure         DefaultInitAction   (
                                                ); override;

          procedure         DefaultDoneAction   (
                                                ); override;


    public
      class function HeaderID: TCLSID;
        override;
        {-}
  end;//Tm3RootStream

  Tm3TOCHandle = class;
  Tm3StoreHeader = class;

  Tm3RootStreamManager = class(Tm3BaseClass)
   {* - менеджер блоков. }
    private
    // property methods
      function pm_GetTOCItemRootPosition: Int64;
        {-}
    private


    _Status:                LongWord;


          function          InitProc00000001    (const ABitMask: LongWord;
                                                 const AStream: IStream
                                                ): LongWord;

          procedure         DoneProc00000001    (
                                                );


          {$IfDef m3MultiThreadStorage}
          function          InitProc00000002    (const ABitMask: LongWord
                                                ): LongWord;

          procedure         DoneProc00000002    (
                                                );
          {$EndIf m3MultiThreadStorage}                                      


          function          InitProc00000004    (const ABitMask: LongWord
                                                ): LongWord;

          procedure         DoneProc00000004    (
                                                );


    private
      {$IfDef m3MultiThreadStorage}
      FRTLCriticalSection:    TRTLCriticalSection;
      {$EndIf m3MultiThreadStorage}

      //FTOCBuffCompSize:       LongInt;
      FTOCBuffBodySize:       LongInt;
      FTOCBuffFullSize:       LongInt;

      FRootStream:            Tm3RootStream;


    private

          property          RootStream: Tm3RootStream read FRootStream;


(*          procedure         LoadBinaryData      (out ABothData;
                                                 const ABothSize: LongInt
                                                ); overload;*)

          procedure         LoadBinaryData      (const APosition: Int64;
                                                 out ABothData;
                                                 const ABothSize: LongInt
                                                ); //overload;


          procedure         SaveBinaryData      (const APosition: Int64;
                                                 const ABothData;
                                                 const ABothSize: LongInt
                                                ); overload;

          procedure         SaveBinaryData      (const APosition: Int64;
                                                 var   ABothFPOS: Int64;
                                                 const ABothData;
                                                 const ABothSize: LongInt
                                                ); overload;

      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(const AStream: IStream);
        {-}
      procedure CreateTOCItemData(var ATOCItemDataPosition: Int64);
        {* - выделить новый блок. }
      function  CreateTOCHandle(const aName : Tl3PCharLen;
                                aStoreType  : Tm3StoreType): Tm3TOCHandle;
        {* - выделить новый элемент. }

      procedure RemoveTOCItemData(const ATOCItemDataPosition: Int64);
        {* - удалить блок. }
      procedure LockTOCItemData(const ATOCItemDataPosition: Int64);
        {-}
      procedure UnlockTOCItemData(const ATOCItemDataPosition: Int64);
        {-}
      procedure LoadStoreHeader(aHeader : Tm3StoreHeader);
        {* - загрузить заголовок элемента хранилища. }
      procedure SaveStoreHeader(aHeader : Tm3StoreHeader);
        {* - сохранить заголовок элемента хранилища. }
          procedure         RemoveTOCBuffData   (var   ATOCBuffDataPosition: Int64
                                                );

    private
          procedure         LoadTOCBuffData     (const APrevPosition: Int64;
                                                 const ANextPosition: Int64;
                                                 var   ACurrPosition: Int64;
                                                 var ATOCBuffData: Tm3StgClaTOCBuffData;
                                                 var ATOCBuffDataCompare: Tm3StgClaTOCBuffData;
                                                 var   ATOCBuffDataModifed: LongBool;
                                                 const ATOCBuffDataDefault: LongBool
                                                );


      procedure SaveTOCBuffData(var ATOCBuffRootPosition  : Int64;
                                var ATOCBuffDataPosition  : Int64;
                                const ATOCBuffData        : Tm3StgClaTOCBuffData;
                                const ATOCBuffDataCompare : Tm3StgClaTOCBuffData;
                                var ATOCBuffDataModifed   : LongBool;
                                IsReadOnly                : Boolean);
        {-}
      function  CheckPosition(aPosition: Int64): Boolean;
        {-}
    public
    // public properties
      property TOCItemRootPosition: Int64
        read pm_GetTOCItemRootPosition;
        {-}
  end;//Tm3RootStreamManager

  Tm3StoreHeader = class(Tm3BaseClass)
   {* Описатель элемента хранилища (потока или подхранилища). }
    private
    // internal fields
      FRootStreamManager   : Tm3RootStreamManager;

      FTOCItemData         : Pm3StoreHeaderData;
      FTOCItemDataCompare  : Pm3StoreHeaderData;

      FTOCItemDataPosition : Int64;
      f_Name               : Tl3String;
      f_NeedLock           : Boolean;
      f_WasExceptionInCreate : Boolean;
    private
    // property methods
      function  pm_GetTOCListPosition: Int64;
      procedure pm_SetTOCListPosition(const aValue: Int64);
        {-}
    public
    // public methods
      constructor Create(IsReadOnly                 : Boolean;
                         aName                      : Tl3String;
                         const ARootStreamManager   : Tm3RootStreamManager;
                         const ATOCItemDataPosition : Int64;
                         aNeedLock                  : Boolean);
        {-}
      procedure Cleanup;
        override;
        {-}
    public
    // public properties
      property TOCItemDataPtr: Pm3StoreHeaderData
        read FTOCItemData;
        {* - собственно данные об элементе хранилища. }
      property TOCListPosition: Int64
        read pm_GetTOCListPosition
        write pm_SetTOCListPosition;
        {* - начальная позиция оглавления, в потоке содержащем оглавление. }
  end;//Tm3StoreHeader

  Tm3TOCHandle = class(Tm3BaseListHandle)
    private
    // internal fields
      f_HandleName : Tl3String;
    protected
    // property methods
      procedure pm_SetHandleName(aValue: Tl3String);
        {-}
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
      procedure BeforeAddToCache;
        override;
        {-}
      procedure CreateContext;
        override;
        {-}
    public
    // public fields
      Data : packed record
       HandleType          : LongInt;
       TOCItemDataPosition : Int64;
      end;//Data
    public
    // public methods
      class function IsCacheable: Boolean;
        override;
        {-}
      procedure AssignHandle(const AItem: Tm3BaseListHandle );
        override;
        {-}
      procedure LoadHandle(const AStream: IStream);
        override;
        {-}
      procedure SaveHandle(const AStream: IStream);
        override;
        {-}
    public
    // public properties
      property HandleName: Tl3String
        read f_HandleName
        write pm_SetHandleName;
        {* - имя вхождения директории. }
  end;//Tm3TOCHandle

  Tm3TOCHandleList = class(Tm3BaseHandleList)
    protected
    // internal methods
      procedure AllocItem(var   AItem: Pointer);
        override;
        {-}
      function  CompareKeyByItem(const AKey: Pointer;
                                 const AItem: Pointer): Integer;
        override;
        {-}
    public
    // public methods
      function  FindTOCItem(const AHandleName : Tl3PCharLen;
                            var   AIndex      : LongInt): LongBool;
        {-}
  end;//Tm3TOCHandleList

  Tm3IndexInfo = packed record
   {* Информация об индексе. }
    rPosition : Int64;
    rBits     : Byte;
    rMaxBits  : Byte;
  end;//Tm3IndexInfo

  Tm3StoreOperation = (m3_soOpen, m3_soCreate, m3_soDelete);
   {* Операция с элементом хранилища. } 

  Tm3Storage = class(Tm3BaseStorage, Im3IndexedStorage)
   {* Реализация IStorage, библиотеки m3. }
    private
    // interface methods
      function Im3IndexedStorage.CreateStream=COMCreateStream;
      function Im3IndexedStorage.OpenStream=COMOpenStream;
      function Im3IndexedStorage.CreateStorage=COMCreateStorage;
      function Im3IndexedStorage.OpenStorage=COMOpenStorage;
      function Im3IndexedStorage.CopyTo=COMCopyTo;
      function Im3IndexedStorage.MoveElementTo=COMMoveElementTo;
      function Im3IndexedStorage.Commit=COMCommit;
      function Im3IndexedStorage.Revert=COMRevert;
      function Im3IndexedStorage.EnumElements=COMEnumElements;
      function Im3IndexedStorage.DestroyElement=COMDestroyElement;
      function Im3IndexedStorage.RenameElement=COMRenameElement;
      function Im3IndexedStorage.SetElementTimes=COMSetElementTimes;
      function Im3IndexedStorage.SetClass=COMSetClass;
      function Im3IndexedStorage.SetStateBits=COMSetStateBits;
      function Im3IndexedStorage.Stat=COMStat;
    private
    // internal fields
      {$IfDef m3MultiThreadStorage}
      FRTLCriticalSection   : TRTLCriticalSection;
      {$EndIf m3MultiThreadStorage}
      f_StorageHeader       : Tm3StoreHeader;
      FTOCHandleList        : Tm3TOCHandleList;
      FTOCHandleListModifed : LongBool;
      f_IndexStream         : IStream;
      f_IndexInfo           : Tm3IndexInfo;
      f_InIterate           : Boolean;
    protected
    // property methods
      function pm_GetSize: Int64;
        override;
        {-}
    private
    // internal methods
      function  IsValidName(const AName: PWideChar; aLen : Long = -1): Boolean;
        overload;
        {-}
      function  IsValidName(const AName: Tl3PCharLen): Boolean;
        overload;
        {-}
      function  IsValidName(const aName : Tl3PCharLen;
                            out anIndex : LongInt): Boolean;
        overload;
        {-}
      procedure CheckIndexStream(NeedCreate: Boolean = false);
        {-}
      function  FindItem(const aName     : Tl3PCharLen;
                         aStoreType      : Tm3StoreType;
                         anOp            : Tm3StoreOperation;
                         out thePosition : Int64;
                         theStoreType    : Pm3StoreType = nil): Boolean;
        overload;
        {-}
      function  FindItem(anIndex         : LongInt;
                         aStoreType      : Tm3StoreType;
                         anOp            : Tm3StoreOperation;
                         out thePosition : Int64;
                         theStoreType    : Pm3StoreType = nil): Boolean;
        overload;
        {-}
      procedure RemoveElement(aName      : Tl3String;
                              aStoreType : Tm3StoreType;
                              aPosition  : Int64);
        overload;
        {-}
      procedure RemoveElement(const AIndex: LongInt);
        overload;
        {-}
    protected
    // internal methods
      function __IsValidOpenMode(const AStatStgMode: LongInt): LongBool;
        virtual;
        {-}
      function CreateOpenStore(aPosition  : Int64;
                               anAccess   : Tm3StoreAccess;
                               aName      : Tl3String;
                               aStoreType : Tm3StoreType;
                               aMode      : Tm3StoreMode;
                               aUseCompression : Boolean = true): IUnknown;
        overload;
        virtual;
        {-}
      function CreateOpenStore(aPosition   : Int64;
                               anAccess    : Tm3StoreAccess;
                               const aName : Tl3PCharLen;
                               aStoreType  : Tm3StoreType;
                               aMode       : Tm3StoreMode;
                               aUseCompression : Boolean = true): IUnknown;
        overload;
        {-}
      function CreateOpenStore(aPosition   : Int64;
                               anAccess    : Tm3StoreAccess;
                               anIndex     : Long;
                               aStoreType  : Tm3StoreType;
                               aMode       : Tm3StoreMode;
                               aUseCompression : Boolean = true): IUnknown;
        overload;
        {-}
      function OpenStore(aPosition   : Int64;
                         anAccess    : Tm3StoreAccess;
                         const aName : Tl3PCharLen;
                         aStoreType  : Tm3StoreType;
                         aUseCompression : Boolean = true): IUnknown;
        overload;
        {* - открывает элемент хранилища. }
      function DeleteStore(anIndex: Long): hResult;
        {* - удаляет элемент хранилища. } 
      procedure CreateStore(const AName   : Tl3PCharLen;
                            anAccess      : Tm3StoreAccess;
                            aStoreType    : Tm3StoreType;
                            var   AStream : IUnknown;
                            var   AReturn : HRESULT;
                            aUseCompression : Boolean = true);
        override;
        {-}
      function CreateStore(anIndex    : Long;
                           anAccess   : Tm3StoreAccess;
                           aStoreType : Tm3StoreType;
                           out aStore : IUnknown;
                           aUseCompression : Boolean = true): hResult;
        overload;                   
        {* - создает элемент хранилища. }                   
      procedure OpenStore(const AName   : Tl3PCharLen;
                          anAccess      : Tm3StoreAccess;
                          aStoreType    : Tm3StoreType;
                          var   AStream : IUnknown;
                          var   AReturn : HRESULT;
                          aUseCompression : Boolean = true);
        override;
        {-}
      function OpenStore(anIndex    : Long;
                         anAccess   : Tm3StoreAccess;
                         aStoreType : Tm3StoreType;
                         out aStore : IUnknown;
                         aUseCompression : Boolean = true): hResult;
        overload;
        {* - открывает элемент хранилища. }
      function OpenStore(aPosition  : Int64;
                         anAccess   : Tm3StoreAccess;
                         anIndex    : Long;
                         aStoreType : Tm3StoreType;
                         aUseCompression : Boolean = true): IUnknown;
        overload;
        {* - открывает элемент хранилища. }
      function CreateStore(const aName : Tl3PCharLen;
                           anAccess    : Tm3StoreAccess;
                           aStoreType  : Tm3StoreType;
                           out aStore  : IUnknown;
                           aUseCompression : Boolean = true): hResult;
        overload;
        {* - создает элемент хранилища. }
      function OpenStore(const aName : Tl3PCharLen;
                         anAccess    : Tm3StoreAccess;
                         aStoreType  : Tm3StoreType;
                         out aStore  : IUnknown;
                         aUseCompression : Boolean = true): hResult;
        overload;
        {* - открывает элемент хранилища. }
      function OpenStore(const aStoreInfo : Tm3StoreInfo;
                         const aName : Tl3PCharLen;
                         anAccess    : Tm3StoreAccess = m3_saRead;
                         aUseCompression : Boolean = true): IUnknown;
        overload;
        {* - открывает элемент хранилища. }
      function GetSubStorageClass: Rm3Storage;
        virtual;
        {-}
      procedure         CopyTo              (const AExcludeCount: LongInt;
                                             const AExcludeArray: PIID;
                                             const AExcludeSNB: TSNB;
                                             const AStorage: IStorage;
                                             var   AReturn: HRESULT
                                            );
        override;
        {-}
      procedure MoveElementTo(const ASrcName : Tl3PCharLen;
                              const AStorage : IStorage;
                              const ADstName : PWideChar;
                              const AFlags   : LongInt;
                              var   AReturn  : HRESULT);
        override;
        {-}
           procedure         EnumElements        (var   AEnumStatStg: IEnumStatStg;
                                                  var   AReturn: HRESULT
                                                 ); override;


     procedure DestroyElement(const AName   : Tl3PCharLen;
                              var   AReturn : HRESULT);
       override;
       {-}
   function RenameElementA(const aOldName: Tl3WString;
    const aNewName: Tl3WString): hResult;
     {* Переименовывает элемент хранилища }
     function ElementExists(const aName: Tl3WString): Boolean;
     procedure RenameElement(const AOldName : Tl3PCharLen;
                             const ANewName : Tl3PCharLen;
                             var   AReturn  : HRESULT);
       override;
       {-}
     procedure SetClass            (const ACLSID: TCLSID;
                                    var   AReturn: HRESULT
                                   ); override;


     procedure SetStateBits        (const AStateBits: LongInt;
                                    const AMask: LongInt;
                                    var   AReturn: HRESULT
                                   ); override;


     procedure StatStgName         (var   AResult: PWideChar;
                                    var   AReturn: HRESULT
                                   ); override;

     procedure StatStgCLSID        (var   AResult: TCLSID;
                                    var   AReturn: HRESULT
                                   ); override;

     procedure StatStgStateBits    (var   AResult: LongInt;
                                    var   AReturn: HRESULT
                                   ); override;


    public
    // public methods
      function SetIndexParam(aBits, aMaxBits: Byte): Boolean;
        {* - устанавливает параметры "размазывания" индекса. }
      procedure Iterate(anAction: Tm3StoreAction);
        overload;
        {-}
      procedure IterateF(anAction: Tm3StorageElementAction);
        overload;
        {* - перебирает элементы хранилища, потом освобождает заглушку. }
      procedure IterateF(anAction: Tm3StoreAction);
        overload;
        {-}
      procedure Iterate(anAction: Tm3StorageElementAction);
        overload;
        {* - перебирает элементы хранилища. }
      class function HeaderID: TCLSID;
        override;
        {-}
      class function MakeInterface(const AAccess : LongInt;
                                   const AStream : IStream): Im3IndexedStorage;
        overload;
        {-}
      class function MakeSafeInterface(out   AResult : Im3IndexedStorage;
                                       const AAccess : LongInt;
                                       const AStream : IStream): HRESULT;
        overload;
        {-}
      class function MakeInterface(const AAccess              : LongInt;
                                   const AEntryName           : Tl3String;
                                   aParentStorageHeader       : Tm3StoreHeader;
                                   const ATOCItemDataPosition : Int64): Im3IndexedStorage;
        overload;
        {-}
      class function MakeSafeInterface(out   AResult              : Im3IndexedStorage;
                                       const AAccess              : LongInt;
                                       const AEntryName           : Tl3String;
                                       aParentStorageHeader       : Tm3StoreHeader;
                                       const ATOCItemDataPosition : Int64): HRESULT;
        overload;
        {-}
      class function MakeInterface(const AAccess      : LongInt;
                                   const ATOCItemData : Tm3StoreHeader): Im3IndexedStorage;
       overload;
       {-}
      class function MakeSafeInterface(out   AResult      : Im3IndexedStorage;
                                       const AAccess      : LongInt;
                                       const ATOCItemData : Tm3StoreHeader): HRESULT;
       overload;
       {-}

      constructor Create(const AAccess : LongInt;
                         const AStream : IStream);
        overload;
        {-}
      constructor Create(const AAccess              : LongInt;
                         const AEntryName           : Tl3String;
                         aParentStorageHeader       : Tm3StoreHeader;
                         const ATOCItemDataPosition : Int64);
        overload;
        {-}
      constructor Create(const AAccess              : LongInt;
                         const AEntryName           : Tl3String;
                         aRootStreamManager         : Tm3RootStreamManager;
                         const ATOCItemDataPosition : Int64);
        overload;
        {-}
      constructor Create(const AAccess      : LongInt;
                         const ATOCItemData : Tm3StoreHeader);
        overload;
        {-}
      procedure Cleanup;
        override;
        {-}
  end;//Tm3Storage

  Tm3StorageStream = class(Tm3BaseStream)
   {* Реализация IStream для Tm3Storage. }
    private
    // internal fields
      FPosition            : Int64;
      f_CurFilePos         : Int64;

      f_StreamHeader       : Tm3StoreHeader;

      FTOCBuffData         : Pm3StgClaTOCBuffData;
      FTOCBuffDataCompare  : Pm3StgClaTOCBuffData;
      FTOCBuffDataModifed  : LongBool;

      FTOCBuffBodyOffset   : LongInt;

    protected
    // property methods
      function pm_GetSize: Int64;
        override;
        {-}
      function pm_GetTOCBuffBodySize: LongInt;
        {-}
    protected
    // internal methods
      procedure MoveStreamPointer(aOffset: LongInt);
        {-}
           procedure         Read                (ABuff: Pointer;
                                                  ASize: LongInt;
                                                  var   AResult: LongInt;
                                                  var   AReturn: HRESULT
                                                 ); override;

           procedure         Write               (ABuff: Pointer;
                                                  ASize: LongInt;
                                                  var   AResult: LongInt;
                                                  var   AReturn: HRESULT
                                                 ); override;


           procedure         Seek                (AOffset     : Int64;
                                                  AOrigin     : TSeekOrigin;
                                                  var AResult : Int64;
                                                  var AReturn : HRESULT
                                                 ); override;


           procedure         SetSize             (ASize: Int64;
                                                  var   AReturn: HRESULT
                                                 ); override;


           procedure         StatStgName         (var   AResult: PWideChar;
                                                  var   AReturn: HRESULT
                                                 ); override;

      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      procedure BeforeAddToCache;
        override;
        {-}
      class function IsCacheable: Boolean;
        override;
        {-}
      class function MakeInterface(const AAccess              : LongInt;
                                   const AEntryName           : Tl3String;
                                   aStorageHeader             : Tm3StoreHeader;
                                   const ATOCItemDataPosition : Int64;
                                   aNeedLock                  : Boolean = true): IStream;
        overload;
        {-}
      class function MakeSafeInterface(out   AResult              : IStream;
                                       const AAccess              : LongInt;
                                       const AEntryName           : Tl3String;
                                       aStorageHeader             : Tm3StoreHeader;
                                       const ATOCItemDataPosition : Int64): HRESULT;
        overload;
        {-}
      class function MakeInterface(const AAccess      : LongInt;
                                   const ATOCItemData : Tm3StoreHeader): IStream;
        overload;
        {-}
      class function MakeSafeInterface(out   AResult      : IStream;
                                       const AAccess      : LongInt;
                                       const ATOCItemData : Tm3StoreHeader): HRESULT;
        overload;
        {-}
      constructor Create(const AAccess              : LongInt;
                         const AEntryName           : Tl3String;
                         aStorageHeader             : Tm3StoreHeader;
                         const ATOCItemDataPosition : Int64;
                         aNeedLock                  : Boolean);
        overload;
        {-}
      constructor Create(const AAccess : LongInt;
                         ATOCItemData  : Tm3StoreHeader);
        overload;
        {-}
    public
    // public properties
      property TOCBuffBodySize: LongInt
        read pm_GetTOCBuffBodySize;
        {-}
  end;//Tm3StorageStream

implementation

uses
  Math,
  {$IfDef m3LogLocks}
  StrUtils,
  {$EndIf m3LogLocks}

  l3Chars,
  l3Const,
  l3Memory,
  l3String,
  l3StringEx,
  l3ExceptionsLog,

  m3Const,
  m3StorageTools
  ;

var
  m3TOCBuffers : Pl3MemoryChain = nil;
  m3StoreHeaderBuffers : Pl3MemoryChain = nil;

const
  CHeaderSize000 = Cm3BasClaDefHeaderSize;
  
type
  THeaderIDSType = (CIDRootStream);
  THeaderIDArray = packed array[THeaderIDSType] of TCLSID;

  PHeaderData000 = ^THeaderData000;
  THeaderData000 = packed record
   {* Заголовок потока в котором живет IStorage. }
    RZerroFrontierByte: Byte;
      {* - начальный ноль. }
    RTOCItemFreePosition: Int64;
      {* - начальная позиция цепочки свободных элементов каталога. }
    RTOCItemRootPosition: Int64;
      {* - начальная позиция корня IStorage. }
    RTOCBuffFreePosition: Int64;
      {* - начальная позиция цепочки свободных элементов данных потоков. }
    RTOCBuffBodySize: LongInt;
      {* - размер кластера. }
    RTOCRootSize: Int64;
      {* - размер корневого потока. }
  end;//THeaderData000

  PHeaderFull000 = ^THeaderFull000;
  THeaderFull000 = packed record
    RHeaderData: THeaderData000;
    _HeaderData: packed array[1..CHeaderSize000-SizeOf(THeaderData000)] of AnsiChar;
  end;//THeaderFull000

const
  CHeaderIDArray : THeaderIDArray = ('{37E90B6E-5CBC-4EB3-BF2C-75EDF2924172}');

  m3ClusterSize = 256;
  //m3ClusterSize = 512;
  //m3ClusterSize = 1024;

  CHeaderData000 : THeaderData000 = (RZerroFrontierByte: 0;
                                     RTOCItemFreePosition: Int64(-1);
                                     RTOCItemRootPosition: Int64(-1);
                                     RTOCBuffFreePosition: Int64(-1);
                                     RTOCBuffBodySize:
                                      m3ClusterSize -
                                      SizeOf(Tm3StgClaTOCBuffData) +
                                      SizeOf(Tm3StgClaTOCBuffBody);
                                     RTOCRootSize: 0);


  CBuffMark : Tm3StgClaBothMark = '{7FB727FD-7B09-497C-8419-AFAE7D2ECB19}';
  CItemMark : Tm3StgClaBothMark = '{40352C1C-FA3D-4FFD-B63C-802E6650236A}';

type
  PTHLKey = ^TTHLKey;
  TTHLKey = packed record
    RHandleName: Tl3PCharLen;
  end;//TTHLKey

// start class Tm3RootStream

function Tm3RootStream.InitHeaderData: Pointer;
begin
 Result:=@CHeaderData000;
end;

function Tm3RootStream.InitHeaderDataSize: LongInt;
begin
 Result:=SizeOf(CHeaderData000);
end;

function Tm3RootStream.InitHeaderFullSize: LongInt;
begin
 Result:=SizeOf(THeaderFull000);
end;

procedure Tm3RootStream.DefaultInitAction;
begin
end;

procedure Tm3RootStream.DefaultDoneAction;
begin
end;

class function Tm3RootStream.HeaderID: TCLSID;
begin
 Result:=CHeaderIDArray[CIDRootStream];
end;

// start class Tm3RootStreamManager

function Tm3RootStreamManager.InitProc00000001(const ABitMask: LongWord;
                                               const AStream: IStream): LongWord;
begin
 FRootStream:=Tm3RootStream.Create(AStream,m2COMModeAccess(m2COMGetStatStgMode(AStream)));
 Result:=ABitMask;
end;

procedure Tm3RootStreamManager.DoneProc00000001;
begin
 l3Free(FRootStream);
end;

{$IfDef m3MultiThreadStorage}
function Tm3RootStreamManager.InitProc00000002(const ABitMask: LongWord): LongWord;
begin
 InitializeCriticalSection(FRTLCriticalSection);
 Result:=ABitMask;
end;

procedure Tm3RootStreamManager.DoneProc00000002;
begin
 DeleteCriticalSection(FRTLCriticalSection);
end;
{$EndIf m3MultiThreadStorage}

function Tm3RootStreamManager.pm_GetTOCItemRootPosition: Int64;
  {-}
begin
 Result := PHeaderData000(FRootStream._HeaderData)^.RTOCItemRootPosition;
end;

const
 C_TOCBuffCompSize = SizeOf(Tm3StgClaTOCBuffData)-SizeOf(Tm3StgClaTOCBuffBody);

function Tm3RootStreamManager.InitProc00000004(const ABitMask: LongWord): LongWord;
begin
 with FRootStream do
 begin
  LockHeader;
  try
   LoadHeader;
   try
    with PHeaderData000(_HeaderData)^ do
    begin
     FTOCBuffBodySize:=RTOCBuffBodySize;
     //FTOCBuffCompSize:=SizeOf(Tm3StgClaTOCBuffData)-SizeOf(Tm3StgClaTOCBuffBody);
     FTOCBuffFullSize:=C_TOCBuffCompSize+FTOCBuffBodySize;
     if (RTOCItemRootPosition = Int64(-1)) then
      CreateTOCItemData(RTOCItemRootPosition);
    end;//with PHeaderData000(_HeaderData)^
   finally
    SaveHeader;
   end;//try..finally
  finally
   UnlockHeader;
  end;//try..finally
 end;//with FRootStream
 Result:=ABitMask;
end;

procedure Tm3RootStreamManager.DoneProc00000004;
begin
end;

// Tm3RootStreamManager.protected

(*procedure Tm3RootStreamManager.LoadBinaryData(out ABothData;
                                              const ABothSize: LongInt);
begin
 m2COMReadBuffer(FRootStream,ABothData,ABothSize);
end;*)

procedure Tm3RootStreamManager.LoadBinaryData(const APosition: Int64;
                                              out ABothData;
                                              const ABothSize: LongInt);
begin
 m2COMReadBuffer(FRootStream,APosition,ABothData,ABothSize);
end;

procedure Tm3RootStreamManager.SaveBinaryData(const APosition: Int64;
                                              const ABothData;
                                              const ABothSize: LongInt);
begin
 m2COMWriteBuffer(FRootStream,APosition,ABothData,ABothSize);
end;

procedure Tm3RootStreamManager.SaveBinaryData(const APosition: Int64;
                                              var   ABothFPOS: Int64;
                                              const ABothData;
                                              const ABothSize: LongInt);
var
 LBothFPOS : Int64;
begin
 LoadBinaryData(APosition,LBothFPOS,SizeOf(LBothFPOS));
 SaveBinaryData(APosition,ABothData,ABothSize);
 ABothFPOS:=LBothFPOS;
end;

// Tm3RootStreamManager.public

 constructor Tm3RootStreamManager.Create(const AStream: IStream
                                        );
 begin

  inherited Create;

  m2InitOperation(_Status,InitProc00000001($00000001,AStream));
  {$IfDef m3MultiThreadStorage}
  m2InitOperation(_Status,InitProc00000002($00000002));
  {$EndIf m3MultiThreadStorage}
  m2InitOperation(_Status,InitProc00000004($00000004));

 end;

procedure Tm3RootStreamManager.Cleanup;
begin
 try
  m2DoneOperation(_Status,$00000004,DoneProc00000004);
  {$IfDef m3MultiThreadStorage}
  m2DoneOperation(_Status,$00000002,DoneProc00000002);
  {$EndIf m3MultiThreadStorage}
  m2DoneOperation(_Status,$00000001,DoneProc00000001);
  inherited;
 finally
  _Status := 0;
  //FTOCBuffCompSize := 0;//       LongInt;
  FTOCBuffBodySize := 0;//       LongInt;
  FTOCBuffFullSize := 0;//       LongInt;
  FreeAndNil(FRootStream);//            Tm3RootStream;
 end;//try..finally
end;

procedure Tm3RootStreamManager.CreateTOCItemData(var ATOCItemDataPosition: Int64);

 procedure __FillTOCItemData(var ATOCItemData: Tm3StoreHeaderData);
 begin//__FillTOCItemData
  with ATOCItemData do begin
   RNextPosition:=Int64(-1);
   {$IfDef m3StoreHasCRC}
   RBodyCRC:=0;
   {$EndIf m3StoreHasCRC}
   with RBody do begin
    RTOCBuffRootPosition:=Int64(-1);
    RTOCItemListPosition:=Int64(-1);
    RRealSize:=0;
    {$IfDef m3StoreHasGUID}
    RCLSID:=TCLSID(GUID_NULL);
    {$EndIf m3StoreHasGUID}
    {$IfDef m3StoreHasStateBits}
    RStateBits:=0;
    {$EndIf m3StoreHasStateBits}
   end;//with RBody
   {$IfDef m3StoreHas_Body}
   m2MEMFill(@_Body,SizeOf(_Body),0);
   {$EndIf m3StoreHas_Body}
  end;//with ATOCItemData
 end;//__FillTOCItemData

 procedure _SaveBinaryData(const ABothMark: Tm3StgClaBothMark;
                           var   ARootSize: Int64;
                           var   APosition: Int64;
                           const ABothData: Tm3StoreHeaderData);
 var
  LPosition : Int64;
 begin
  m2COMSeek(FRootStream,ARootSize,STREAM_SEEK_SET);
  LPosition := m2COMGetPosition(FRootStream);
  try
   m2COMWriteBuffer(FRootStream,ABothMark,SizeOf(ABothMark));
   APosition := m2COMGetPosition(FRootStream);
   m2COMWriteBuffer(FRootStream,ABothData,SizeOf(ABothData));
   Inc(ARootSize,Int64(SizeOf(ABothMark)+SizeOf(ABothData)));
  except
   m2COMSetSize(LPosition,FRootStream);
   raise;
  end;//try..except
  //APosition:=LPosition+SizeOf(ABothMark);
 end;

var
 LTOCItemData : Tm3StoreHeaderData;
begin
 {$IfDef m3MultiThreadStorage}
 EnterCriticalSection(FRTLCriticalSection);
 try
 {$EndIf m3MultiThreadStorage}
  FRootStream.LockHeader;
  try
   FRootStream.LoadHeader;
   try
    with PHeaderData000(FRootStream._HeaderData)^ do
    begin
     __FillTOCItemData(LTOCItemData);
     ATOCItemDataPosition := RTOCItemFreePosition;
     if (ATOCItemDataPosition = Int64(-1)) then
      _SaveBinaryData(CItemMark, RTOCRootSize,
                     ATOCItemDataPosition,
                     LTOCItemData)
     else
      SaveBinaryData(ATOCItemDataPosition,
                     RTOCItemFreePosition,
                     LTOCItemData, SizeOf(LTOCItemData));
    end;//with PHeaderData000(_HeaderData)^
   finally
    FRootStream.SaveHeader;
   end;//try..finally
  finally
   FRootStream.UnlockHeader;
  end;//try..finally
 {$IfDef m3MultiThreadStorage}
 finally
  LeaveCriticalSection(FRTLCriticalSection);
 end;//try..finally
 {$EndIf m3MultiThreadStorage}
end;

function Tm3RootStreamManager.CreateTOCHandle(const aName : Tl3PCharLen;
                                              aStoreType  : Tm3StoreType): Tm3TOCHandle;
  {* - выделить новый элемент. }
var
 l_TOCItemDataPosition : Int64;
begin
 CreateTOCItemData(l_TOCItemDataPosition);
 try
  Result:=Tm3TOCHandle.Create;
  try
   with Result, Data do begin
    HandleName.AsPCharLen := aName;
    HandleType := aStoreType;
    TOCItemDataPosition := l_TOCItemDataPosition;
   end;//with LTOCHandle, Data
  except
   l3Free(Result);
   raise;
  end;//try..except
 except
  RemoveTOCItemData(l_TOCItemDataPosition);
  raise;
 end;//try..except
end;

procedure Tm3RootStreamManager.RemoveTOCItemData(const ATOCItemDataPosition: Int64);
var
 LTOCItemFreePosition : Int64;
begin
 {$IfDef m3MultiThreadStorage}
 EnterCriticalSection(FRTLCriticalSection);
 try
 {$EndIf m3MultiThreadStorage}
  with FRootStream do begin
   LockHeader;
   try
    LoadHeader;
    try
     LockTOCItemData(ATOCItemDataPosition);
     try
      with PHeaderData000(_HeaderData)^ do
      begin
       LTOCItemFreePosition := RTOCItemFreePosition;
       SaveBinaryData(ATOCItemDataPosition,
                      LTOCItemFreePosition, SizeOf(LTOCItemFreePosition));
       RTOCItemFreePosition := ATOCItemDataPosition;
      end;//with PHeaderData000(_HeaderData)^
     finally
      UnlockTOCItemData(ATOCItemDataPosition);
     end;//try..finally
    finally
     SaveHeader;
    end;//try..finally
   finally
    UnlockHeader;
   end;//try..finally
  end;//with FRootStream
 {$IfDef m3MultiThreadStorage}
 finally
  LeaveCriticalSection(FRTLCriticalSection);
 end;//try..finally
 {$EndIf m3MultiThreadStorage}
end;

{.$DEFINE LogLocks}

procedure Tm3RootStreamManager.LockTOCItemData(const ATOCItemDataPosition: Int64);
begin
 if (ATOCItemDataPosition = Int64(-1)) then
 begin
  LockTOCItemData(TOCItemRootPosition);
  {$IFDEF LogLocks}
  l3System.Stack2Log('ROOT LOCK');
  {$ENDIF}
 end//ATOCItemDataPosition = Int64(-1)
 else
 if m2COMIsLocksSupported(FRootStream) then
  m2COMTimeLock(FRootStream,ATOCItemDataPosition,SizeOf(Tm3StoreHeaderData));
end;

procedure Tm3RootStreamManager.UnlockTOCItemData(const ATOCItemDataPosition: Int64);
begin
 if (ATOCItemDataPosition = Int64(-1)) then
 begin
  UnlockTOCItemData(TOCItemRootPosition);
  {$IFDEF LogLocks}
  l3System.Msg2Log('ROOT UNLOCK', 1);
  {$ENDIF}
 end//ATOCItemDataPosition = Int64(-1)
 else
 if m2COMIsLocksSupported(FRootStream) then
  m2COMTimeUnlock(FRootStream,ATOCItemDataPosition,SizeOf(Tm3StoreHeaderData));
end;

procedure Tm3RootStreamManager.LoadStoreHeader(aHeader : Tm3StoreHeader);
  {* - загрузить заголовок элемента хранилища. }
var
 l_Pos : Int64;
begin
 with aHeader do begin
  l_Pos := FTOCItemDataPosition;
  if (l_Pos = Int64(-1)) then
   l_Pos := TOCItemRootPosition;
  {$IfDef m3MultiThreadStorage}
  EnterCriticalSection(FRTLCriticalSection);
  try
  {$EndIf m3MultiThreadStorage}
   LoadBinaryData(l_Pos, TOCItemDataPtr^, SizeOf(TOCItemDataPtr^));
   if (FTOCItemDataCompare <> nil) then
    m2MEMCopy(FTOCItemDataCompare,
              TOCItemDataPtr,
              SizeOf(Tm3StoreHeaderData));
  {$IfDef m3MultiThreadStorage}
  finally
   LeaveCriticalSection(FRTLCriticalSection);
  end;//try..finally
  {$EndIf m3MultiThreadStorage}
 end;//with aHeader
end;

procedure Tm3RootStreamManager.SaveStoreHeader(aHeader : Tm3StoreHeader);
  {* - сохранить заголовок элемента хранилища. }
var
 l_Pos : Int64;
begin
 with aHeader do begin
  if (FTOCItemDataCompare <> nil) then begin
   l_Pos := FTOCItemDataPosition;
   if (l_Pos = Int64(-1)) then
    l_Pos := TOCItemRootPosition;
    if (m2MEMCompare(TOCItemDataPtr, FTOCItemDataCompare, SizeOf(Tm3StoreHeaderData)) <> 0) then begin
     {$IfDef m3MultiThreadStorage}
     EnterCriticalSection(FRTLCriticalSection);
     try
     {$EndIf m3MultiThreadStorage}
      SaveBinaryData(l_Pos,
                     TOCItemDataPtr^, SizeOf(TOCItemDataPtr^));
      m2MEMCopy(FTOCItemDataCompare,
                TOCItemDataPtr,
                SizeOf(Tm3StoreHeaderData));
     {$IfDef m3MultiThreadStorage}
     finally
      LeaveCriticalSection(FRTLCriticalSection);
     end;//try..finally
     {$EndIf m3MultiThreadStorage}
    end;//m2MEMCompare(..
  end;//FTOCItemDataCompare <> nil
 end;//with aHeader
end;

 procedure   Tm3RootStreamManager.RemoveTOCBuffData(var   ATOCBuffDataPosition: Int64
                                                   );
 var
        LTOCBuffFreePosition1:    Int64;
        LTOCBuffFreePosition2:    Int64;
 begin

  if (ATOCBuffDataPosition <> Int64(-1))
   then
    begin

     {$IfDef m3MultiThreadStorage}
     EnterCriticalSection(FRTLCriticalSection);
      try
     {$EndIf m3MultiThreadStorage} 

       with FRootStream do
        begin

         LockHeader();
          try

           LoadHeader();
            try

             LTOCBuffFreePosition1:=ATOCBuffDataPosition;

             repeat

              LTOCBuffFreePosition2:=LTOCBuffFreePosition1;

              LoadBinaryData(LTOCBuffFreePosition2,
                             LTOCBuffFreePosition1,
                             SizeOf(LTOCBuffFreePosition1));

             until (LTOCBuffFreePosition1 = Int64(-1));

             LTOCBuffFreePosition1:=PHeaderData000(_HeaderData)^.RTOCBuffFreePosition;

             SaveBinaryData(LTOCBuffFreePosition2,
                            LTOCBuffFreePosition1,
                            SizeOf(LTOCBuffFreePosition1));

             PHeaderData000(_HeaderData)^.RTOCBuffFreePosition:=ATOCBuffDataPosition;

             ATOCBuffDataPosition:=Int64(-1);

            finally

             SaveHeader();

            end;

          finally

           UnlockHeader();

          end;

        end;

      {$IfDef m3MultiThreadStorage}
      finally

       LeaveCriticalSection(FRTLCriticalSection);

      end;
      {$EndIf m3MultiThreadStorage}

    end;

 end;

procedure Tm3RootStreamManager.LoadTOCBuffData(const APrevPosition: Int64;
                                               const ANextPosition: Int64;
                                               var   ACurrPosition: Int64;
                                               var ATOCBuffData: Tm3StgClaTOCBuffData;
                                               var ATOCBuffDataCompare: Tm3StgClaTOCBuffData;
                                               var   ATOCBuffDataModifed: LongBool;
                                               const ATOCBuffDataDefault: LongBool);
begin
 if (ANextPosition <> ACurrPosition) then
 begin
  ACurrPosition := ANextPosition;
  if (ACurrPosition <> Int64(-1)) then
  begin
   {$IfDef m3MultiThreadStorage}
   EnterCriticalSection(FRTLCriticalSection);
   try
   {$EndIf m3MultiThreadStorage}
    with FRootStream do
    begin
     if ATOCBuffDataDefault then
      LoadBinaryData(ACurrPosition,
                     ATOCBuffData,
                     FTOCBuffFullSize)
     else
      LoadBinaryData(ACurrPosition,
                     ATOCBuffData,
                     FTOCBuffFullSize-FTOCBuffBodySize);
    end;//with FRootStream
   {$IfDef m3MultiThreadStorage}
   finally
    LeaveCriticalSection(FRTLCriticalSection);
   end;//try..finally
   {$EndIf m3MultiThreadStorage}
  end//ACurrPosition <> Int64(-1)
  else
   with ATOCBuffData do
   begin
    RPrevPosition:=APrevPosition;
    RNextPosition:=Int64(-1);
    {$IfDef m3ClusterHasCRC}
    RBodyCRC:=0;
    {$EndIf m3ClusterHasCRC}
    m2MEMFill(@RBody,FTOCBuffBodySize,0);
   end;//with ATOCBuffData^
  m2MEMCopy(@ATOCBuffDataCompare,@ATOCBuffData,C_TOCBuffCompSize);
  ATOCBuffDataModifed:=False;
 end;//ANextPosition <> ACurrPosition
end;

procedure Tm3RootStreamManager.SaveTOCBuffData(var ATOCBuffRootPosition  : Int64;
                                               var ATOCBuffDataPosition  : Int64;
                                               const ATOCBuffData        : Tm3StgClaTOCBuffData;
                                               const ATOCBuffDataCompare : Tm3StgClaTOCBuffData;
                                               var ATOCBuffDataModifed   : LongBool;
                                               IsReadOnly                : Boolean);
                                               
 procedure _SaveBinaryData(const ABothMark : Tm3StgClaBothMark;
                           var   ARootSize : Int64;
                           var   APosition : Int64;
                           const ABothData : Tm3StgClaTOCBuffData;
                           ABothDataSize   : Integer);
 var
  LPosition : Int64;
 begin
  m2COMSeek(FRootStream,ARootSize,STREAM_SEEK_SET);
  LPosition := m2COMGetPosition(FRootStream);
  try
   m2COMWriteBuffer(FRootStream,ABothMark,SizeOf(ABothMark));
   APosition := m2COMGetPosition(FRootStream);
   m2COMWriteBuffer(FRootStream,ABothData,ABothDataSize);
   Inc(ARootSize,Int64(SizeOf(ABothMark)+ABothDataSize));
  except
   m2COMSetSize(LPosition,FRootStream);
   raise;
  end;//try..except
  //APosition:=LPosition+SizeOf(ABothMark);
 end;
 
begin
 if not IsReadOnly AND
    (ATOCBuffDataModifed OR
     (m2MEMCompare(@ATOCBuffData, @ATOCBuffDataCompare, C_TOCBuffCompSize) <> 0)) then
 begin
  {$IfDef m3MultiThreadStorage}
  EnterCriticalSection(FRTLCriticalSection);
  try
  {$EndIf m3MultiThreadStorage}
    with FRootStream do
    begin
     if (ATOCBuffDataPosition = Int64(-1)) then
     begin
      LockHeader;
      try
       LoadHeader;
       try
        with PHeaderData000(_HeaderData)^ do
        begin
         ATOCBuffDataPosition := RTOCBuffFreePosition;
         if (ATOCBuffDataPosition = Int64(-1)) then
          _SaveBinaryData(CBuffMark, RTOCRootSize, ATOCBuffDataPosition,
                         ATOCBuffData, FTOCBuffFullSize)
         else
          SaveBinaryData(ATOCBuffDataPosition, RTOCBuffFreePosition,
                         ATOCBuffData, FTOCBuffFullSize);
         with ATOCBuffData do
         begin
          if (RPrevPosition <> Int64(-1)) then
           SaveBinaryData(RPrevPosition,
                          ATOCBuffDataPosition, SizeOf(ATOCBuffDataPosition))
          else
           ATOCBuffRootPosition := ATOCBuffDataPosition;
         end;//with ATOCBuffData^
        end;//with PHeaderData000(_HeaderData)^
       finally
        SaveHeader;
       end;//try..finally
      finally
       UnlockHeader;
      end;//try..finally
     end//ATOCBuffDataPosition = Int64(-1)
     else
      SaveBinaryData(ATOCBuffDataPosition,
                     ATOCBuffData, FTOCBuffFullSize);
    end;//with FRootStream
    m2MEMCopy(@ATOCBuffDataCompare, @ATOCBuffData,C_TOCBuffCompSize);
  {$IfDef m3MultiThreadStorage}
  finally
   LeaveCriticalSection(FRTLCriticalSection);
  end;//try..finally
  {$EndIf m3MultiThreadStorage}
  ATOCBuffDataModifed := false;
 end;//not IsReadOnly
end;

function Tm3RootStreamManager.CheckPosition(aPosition: Int64): Boolean;
  {-}
var
 l_Size : Int64;  
begin
 if (aPosition < 0) then
  Result := false
 else
 begin
  l_Size := m2COMGetSize(RootStream);
  Result := (aPosition < l_Size);
  if not Result then
  begin
   Sleep(100);
   l_Size := m2COMGetSize(RootStream);
   Result := (aPosition < l_Size);
   if Result then
    l3System.Msg2Log('Ложная тревога')
   else
   begin
    Sleep(200);
    l_Size := m2COMGetSize(RootStream);
    Result := (aPosition < l_Size);
    if Result then
     l3System.Msg2Log('Ложная тревога №2')
    else
     l3System.Msg2Log(Format('Позиция %d больше размера потока (%d)', [aPosition, l_Size]));
    Result := true;
    // - костыль, для ловли ошибки 
   end;//Result
  end;//not Result
 end;//aPosition < 0
end;

// Tm3RootStreamManager.end

// start class Tm3StoreHeader

constructor Tm3StoreHeader.Create(IsReadOnly                 : Boolean;
                                  aName                      : Tl3String;
                                  const ARootStreamManager   : Tm3RootStreamManager;
                                  const ATOCItemDataPosition : Int64;
                                  aNeedLock                  : Boolean);
begin
 f_WasExceptionInCreate := false;
 try
  inherited Create;
  l3Set(f_Name, aName);
  if (FTOCItemData = nil) then
   m3StoreHeaderBuffers^.AllocItem(Pointer(FTOCItemData));
  if not IsReadOnly AND (FTOCItemDataCompare = nil) then
   m3StoreHeaderBuffers^.AllocItem(Pointer(FTOCItemDataCompare));
  l3Set(FRootStreamManager, ARootStreamManager);
  FTOCItemDataPosition := ATOCItemDataPosition;
  f_NeedLock := aNeedLock;
  if f_NeedLock then
  begin
   try
    FRootStreamManager.LockTOCItemData(FTOCItemDataPosition);
   except
    on E: EOleSysError do
    begin
     if (E.ErrorCode <> STG_E_LOCKVIOLATION) then
      l3System.Exception2Log(E);
     f_NeedLock := false;
     raise;
    end;//E: EOleSysError
    on E: Exception do
    begin
     l3System.Exception2Log(E);
     f_NeedLock := false;
     raise;
    end;//E: Exception
   end;//try..except
   {$IfDef m3LogLocks}
   if (f_Name <> nil) then
    if ANSIContainsText(f_Name.AsString, ':root:') then
     l3System.Msg2Log('Locked ' + f_Name.AsString + ' ' + IntToStr(FTOCItemDataPosition));
   {$EndIf m3LogLocks}
  end;//f_NeedLock
  FRootStreamManager.LoadStoreHeader(Self);
  if not FRootStreamManager.CheckPosition(fTOCItemData^.rBody.rRealSize) then
  begin
   //Exit;
   l3FillChar(TOCItemDataPtr^, SizeOf(TOCItemDataPtr^), 0);
   FRootStreamManager.LoadStoreHeader(Self);
   if not FRootStreamManager.CheckPosition(fTOCItemData^.rBody.rRealSize) then
    raise Exception.Create(Format('Документ #%S. Неправильный размер потока: %d', [f_Name.AsString, fTOCItemData^.rBody.rRealSize]));
  end;//not FRootStreamManager.CheckPosition
 except
  f_WasExceptionInCreate := true;
  raise;
 end;//try..except
end;

procedure Tm3StoreHeader.Cleanup;
begin
 try
  if not f_WasExceptionInCreate then
   FRootStreamManager.SaveStoreHeader(Self);
 finally
  try
   if f_NeedLock then
   begin
    FRootStreamManager.UnlockTOCItemData(FTOCItemDataPosition);
    {$IfDef m3LogLocks}
    if (f_Name <> nil) then
     if ANSIContainsText(f_Name.AsString, ':root:') then
      l3System.Msg2Log('Unlocked Name ' + f_Name.AsString + ' ' + IntToStr(FTOCItemDataPosition));
    {$EndIf m3LogLocks}
   end;//f_NeedLock
  finally
   f_NeedLock := false;
   l3Free(FRootStreamManager);
   m3StoreHeaderBuffers^.FreeItem(Pointer(FTOCItemDataCompare));
   m3StoreHeaderBuffers^.FreeItem(Pointer(FTOCItemData));
   l3Free(f_Name);
   FTOCItemDataPosition := 0;
   inherited;
  end;//try..finally
 end;//try..finally
end;

function Tm3StoreHeader.pm_GetTOCListPosition: Int64;
  {-}
begin
 Result := TOCItemDataPtr^.RBody.RTOCItemListPosition;
end;

procedure Tm3StoreHeader.pm_SetTOCListPosition(const aValue: Int64);
  {-}
begin
 TOCItemDataPtr^.RBody.RTOCItemListPosition := aValue;
end;

// start class Tm3TOCHandle

procedure Tm3TOCHandle.Cleanup;
  //override;
  {-}
begin
 HandleName := nil;
 inherited;
end;

procedure Tm3TOCHandle.BeforeAddToCache;
  //override;
  {-}
begin
 if (f_HandleName <> nil) then begin
  if (f_HandleName.RefCount = 1) then
   f_HandleName.BeforeAddToCache
  else
   l3Free(f_HandleName);
 end;//f_HandleName <> nil
 with Data do begin
  HandleType := 0;
  TOCItemDataPosition := 0;
 end;//with Data
 inherited;
end;

procedure Tm3TOCHandle.CreateContext;
  //override;
  {-}
begin
 inherited;
 if (HandleName = nil) then f_HandleName := Tl3String.Make(CP_Unicode);
end;

procedure Tm3TOCHandle.pm_SetHandleName(aValue: Tl3String);
  {-}
begin
 if (aValue = nil) then
  l3Free(f_HandleName)
 else if (f_HandleName = nil) then
  f_HandleName := Tl3String.Make(aValue)
 else
  f_HandleName.Assign(aValue); 
end;

class function Tm3TOCHandle.IsCacheable: Boolean;
  //override;
  {-}
begin
 //Result := false;
 Result := true;
end;

procedure Tm3TOCHandle.AssignHandle(const AItem: Tm3BaseListHandle);
begin
 HandleName := Tm3TOCHandle(aItem).HandleName;
 Data:=Tm3TOCHandle(aItem).Data;
end;

procedure Tm3TOCHandle.LoadHandle(const AStream : IStream);
begin
 LoadWideString(aStream, HandleName);
 with Data do begin
  LoadBuff(AStream, @HandleType, SizeOf(HandleType));
  LoadBuff(AStream, @TOCItemDataPosition, SizeOf(TOCItemDataPosition));
 end;//with Data
end;

procedure Tm3TOCHandle.SaveHandle(const AStream : IStream);
begin
 SaveWideString(aStream, HandleName);
 with Data do begin
  SaveBuff(AStream, @HandleType, SizeOf(HandleType));
  SaveBuff(AStream, @TOCItemDataPosition, SizeOf(TOCItemDataPosition));
 end;//with Data
end;

// Tm3TOCHandle.end

// start class Tm3TOCHandleList

procedure Tm3TOCHandleList.AllocItem(var AItem: Pointer);
begin
 Tm3TOCHandle(aItem):=Tm3TOCHandle.Create;
end;

function Tm3TOCHandleList.CompareKeyByItem(const AKey: Pointer;
                                           const AItem: Pointer): Integer;
begin
 Result := l3Compare(PTHLKey(AKey)^.RHandleName,
                     Tm3TOCHandle(aItem).HandleName.AsPCharLen,
                     l3_siCaseUnsensitive);
end;

function Tm3TOCHandleList.FindTOCItem(const AHandleName : Tl3PCharLen;
                                      var   AIndex      : LongInt): LongBool;
  //overload;
  {-}
var
 LTHLKey : TTHLKey;
begin
 LTHLKey.RHandleName := AHandleName;
 Result := FindItemByKey(@LTHLKey,AIndex);
end;

// start class Tm3Storage

const
 cBitsForPart = 8;

constructor Tm3Storage.Create(const AAccess      : LongInt;
                              const ATOCItemData : Tm3StoreHeader);
begin
 inherited Create(AAccess);
 with f_IndexInfo do begin
  rPosition := Int64(-1);
  rBits := cBitsForPart;
  rMaxBits := l3BitInLong;
 end;//with f_IndexInfo
 l3Set(f_StorageHeader, ATOCItemData);
 {$IfDef m3MultiThreadStorage}
 InitializeCriticalSection(FRTLCriticalSection);
 {$EndIf m3MultiThreadStorage}
 FTOCHandleList := Tm3TOCHandleList.Create;
(*
 Этот кусок был написан Люлиным А. В. для спасения тверских данных из побитой базы
 Хорошо бы разобраться зачем вообще хранятся данные, которые можно заменить константами

 if (f_StorageHeader.ftocitemdata^.RNextPosition > High(Longint)) then
 begin
  f_StorageHeader.ftocitemdata^.RNextPosition := Int64(-1);
  f_StorageHeader.ftocitemdata^.RBody.RTOCBuffRootPosition := 516;
  f_StorageHeader.ftocitemdata^.RBody.RTOCItemListPosition := 10;
  f_StorageHeader.ftocitemdata^.RBody.RRealSize := 140;
 end;
*)
 FTOCHandleList.LoadFromStream(Tm3StorageStream.MakeInterface(_Access,
                                                              f_StorageHeader),
                               f_StorageHeader.TOCListPosition);
 // - грузим оглавление
end;

constructor Tm3Storage.Create(const AAccess              : LongInt;
                              const AEntryName           : Tl3String;
                              aParentStorageHeader       : Tm3StoreHeader;
                              const ATOCItemDataPosition : Int64
                             );
begin
 Create(aAccess, aEntryName, aParentStorageHeader.FRootStreamManager, aTOCItemDataPosition);
end;

constructor Tm3Storage.Create(const AAccess              : LongInt;
                              const AEntryName           : Tl3String;
                              aRootStreamManager         : Tm3RootStreamManager;
                              const ATOCItemDataPosition : Int64);
  //overload;
  {-}
var
 l_Header : Tm3StoreHeader;
begin
 l_Header := Tm3StoreHeader.Create((AAccess AND (STGM_WRITE OR STGM_READWRITE) = 0),
                                   aEntryName,
                                   ARootStreamManager,
                                   ATOCItemDataPosition,
                                   true);
 try
  Create(AAccess, l_Header);
 finally
  l3Free(l_Header);
 end;
end;

procedure Tm3Storage.Cleanup;
var
 l_Stream : IStream;
 l_NewPos : Int64;
begin
 if FTOCHandleListModifed then begin
  // - сохраняем оглавление
  l_Stream := Tm3StorageStream.MakeInterface(_Access, f_StorageHeader);
  try
   with f_StorageHeader do begin
    if (TOCListPosition <> Int64(-1)) then
     m2COMSetPosition(TOCListPosition, l_Stream);
    l_NewPos := FTOCHandleList.SaveToStream(l_Stream);
    if (TOCListPosition = Int64(-1)) OR (l_NewPos <> Int64(-1)) then
     TOCListPosition := l_NewPos;
   end;//with f_StorageHeader
  finally
   l_Stream := nil;
  end;//try..finally
 end;//FTOCHandleListModifed
 l3Free(FTOCHandleList);
 {$IfDef m3MultiThreadStorage}
 DeleteCriticalSection(FRTLCriticalSection);
 {$EndIf m3MultiThreadStorage}
 l3Free(f_StorageHeader);
 f_IndexStream := nil;
 FTOCHandleListModifed := False;
 inherited;
end;

function Tm3Storage.IsValidName(const aName : Tl3PCharLen;
                                out anIndex : LongInt): Boolean;
  {-}
var
 l_Name : AnsiString;
begin
 Result := false;
 if not l3IsNil(aName) then begin
  if (aName.SCodePage = CP_Unicode) then
  begin
   if (aName.SLen > 0) AND (PWideChar(aName.S)[0] = m3UnicodeIndexPrefix) then
    PWideChar(aName.S)[0] := WideChar(m3IndexPrefix);
  end;//aName.SCodePage = CP_Unicode
  l_Name := l3PCharLen2String(aName);
  if (l_Name[1] = m3IndexPrefix) then begin
   System.Delete(l_Name, 1, 1);
   try
    anIndex := StrToInt(l_Name);
    Result := true;
   except
    on EConvertError do;
   end;//try..except
  end;//l_Name[1] = m3IndexPrefix
 end;//not l3IsNil(aName)
end;

procedure Tm3Storage.CheckIndexStream(NeedCreate: Boolean = false);
  {-}
var
 l_Stream : IStream;
 l_Name   : Tl3String;
begin
 if (f_IndexStream = nil) then begin
  if (f_StorageHeader.TOCListPosition > 0) then begin
   l_Stream := Tm3StorageStream.MakeInterface(_Access,
                                              f_StorageHeader);
   try
    m2COMReadBuffer(l_Stream, f_IndexInfo,
                    Min(SizeOf(f_IndexInfo), f_StorageHeader.TOCListPosition));
   finally
    l_Stream := nil;
   end;//try..finally
   // f_StorageHeader.TOCListPosition = SizeOf(Tm3IndexInfo)
  end;
  if (f_IndexInfo.rPosition = Int64(-1)) then begin
   if NeedCreate then begin
    // - распределяем поток под хранение индекса
    with f_StorageHeader do begin
     FRootStreamManager.CreateTOCItemData(f_IndexInfo.rPosition);
     if (f_IndexInfo.rPosition = Int64(-1)) then
      Exit;
     FTOCHandleListModifed := true;
     // - иначе оглавление не сохраняется куда надо (после индекса, насколько я понял) 
     TOCListPosition := SizeOf(Tm3IndexInfo);
    end;//with f_StorageHeader
    l_Stream := Tm3StorageStream.MakeInterface(_Access,
                                               f_StorageHeader);
    try
     m2COMWriteBuffer(l_Stream, f_IndexInfo, SizeOf(f_IndexInfo));
    finally
     l_Stream := nil;
    end;//try..finally
    // NeedCreate
   end else
    Exit;
  end;//f_IndexInfo.rPosition = Int64(-1)
  if (f_StorageHeader.f_Name = nil) then
   l_Name := Tl3String.Create
  else
   l_Name := f_StorageHeader.f_Name.Clone;
  try
   l_Name.Append(l3PCharLen('.Index'));
   f_IndexStream := Tm3BuffStream.MakeInterface(
                     Tm3StorageStream.MakeInterface(_Access,
                                                    l_Name,
                                                    f_StorageHeader,
                                                    f_IndexInfo.rPosition));
    // - а это уже честный индексный поток
  finally
   l3Free(l_Name);
  end;//try..finally
 end;//f_IndexStream = nil
end;

function Tm3Storage.FindItem(const aName     : Tl3PCharLen;
                             aStoreType      : Tm3StoreType;
                             anOp            : Tm3StoreOperation;
                             out thePosition : Int64;
                             theStoreType    : Pm3StoreType = nil): Boolean;
  //overload;
  {-}
var
 l_Index : LongInt;
begin
 Result := IsValidName(aName, l_Index) AND
           FindItem(l_Index, aStoreType, anOp, thePosition, theStoreType);
end;
  
function Tm3Storage.FindItem(anIndex         : LongInt;
                             aStoreType      : Tm3StoreType;
                             anOp            : Tm3StoreOperation;
                             out thePosition : Int64;
                             theStoreType    : Pm3StoreType = nil): Boolean;
  {-}
var
 l_Stream     : IStream;
 l_Info       : Tm3StoreInfo;
 l_MajorIndex : LongInt;
 l_Step       : Byte;
 l_StreamSize : Int64;
 l_FillIndex  : Long;
 l_RecordSize : Long;
 l_NeedCorrect : Boolean;
 l_Name        : Tl3String;
begin
 Result := false;
 CheckIndexStream(anOp = m3_soCreate);
 if (f_IndexStream <> nil) then begin
  l_Step := Pred(f_IndexInfo.rMaxBits div f_IndexInfo.rBits);
  l_Stream := f_IndexStream;
  try
   while true do begin
    l_RecordSize := SizeOf(Int64);
    if (l_Step = 0) then
     Inc(l_RecordSize, SizeOf(Tm3StoreType));
    l_MajorIndex := (anIndex shr (f_IndexInfo.rMaxBits - f_IndexInfo.rBits)) * l_RecordSize;
    anIndex := anIndex shl f_IndexInfo.rBits;
    l_StreamSize := m2COMGetSize(l_Stream);
    if (l_MajorIndex >= l_StreamSize) then
    begin
     if (anOp = m3_soCreate) then
     begin
      // - надо расширить коробку
      l_Info.rPosition := -1;
      l_Info.rStoreType := m3_stNone; // - в общем это все равно
      m2COMSetPosition(l_StreamSize, l_Stream);
      for l_FillIndex := 0 to ((l_MajorIndex - l_StreamSize) div l_RecordSize) do
      begin
       // - заполняем нераспределенные элементы
       m2COMWriteBuffer(l_Stream, l_Info, l_RecordSize);
       Assert(l_Info.rPosition = -1);
      end;//for l_FillIndex
     end//anOp = m3_soCreate
     else
      Exit;
    end;//l_MajorIndex >= m2COMGetSize(l_Stream)
    m2COMSetPosition(l_MajorIndex, l_Stream);
    m2COMReadBuffer(l_Stream, l_Info, l_RecordSize);
    if not f_StorageHeader.FRootStreamManager.CheckPosition(l_Info.rPosition) OR
       ((l_Step = 0) AND (l_Info.rStoreType = m3_stNone)) OR

       ((l_Step > 0) AND (l_Info.rPosition = 0) AND (l_Info.rStoreType = m3_stNone))
       // - пытаемся обработать ситуацию, когда почему-то создался пустой каталог документа с пустой позицией и пустым типом
       //   и в итоге Архивариус зависал на сохранении такого "битого" документа 
       // Чинил Люлин А. В. 30 мая 2012 года от Рождества Христова
       then
    begin
     if (l_Info.rPosition = Int64(-1)) then
      l_NeedCorrect := false
     else
     begin
   {$If Declared(Gm0EXCLibDefSrv)}
      Gm0EXCLibDefSrv.SaveMessage(Cm0EXCLibERR,
                                  'Неправильная позиция элемента каталога: ' +
                                  IntToStr(anIndex) + ' -> ' +
                                  IntToStr(l_Info.rPosition));
   {$IfEnd Declared(Gm0EXCLibDefSrv)}
      l_NeedCorrect := true;
     end;//l_Info.rPosition = Int64(-1)
     if (anOp = m3_soCreate) then
     begin
      // - распределяем еще один поток
      f_StorageHeader.FRootStreamManager.CreateTOCItemData(l_Info.rPosition);
   {$If Declared(Gm0EXCLibDefSrv)}
      if (l_Info.rPosition = 0) then
       Gm0EXCLibDefSrv.SaveMessage(Cm0EXCLibERR,
                                   'Распределён блок с нулевым адресом');
   {$IfEnd Declared(Gm0EXCLibDefSrv)}
      m2COMSetPosition(l_MajorIndex, l_Stream);
      l_Info.rStoreType := aStoreType;
      Assert(aStoreType <> m3_stNone);
      m2COMWriteBuffer(l_Stream, l_Info, l_RecordSize);
      Assert(l_Info.rStoreType <> m3_stNone);
   {$If Declared(Gm0EXCLibDefSrv)}
      if l_NeedCorrect then
       Gm0EXCLibDefSrv.SaveMessage(Cm0EXCLibERR,
                                   'Была исправлена на: ' +
                                   IntToStr(l_Info.rPosition));
   {$IfEnd Declared(Gm0EXCLibDefSrv)}
     end//anOp = m3_soCreate
     else
      Exit;
    end;//not f_StorageHeader.FRootStreamManager.CheckPosition(l_Info.rPosition)
    if (l_Step = 0) then
    begin
     if (l_Info.rStoreType = aStoreType) OR (theStoreType <> nil) then
     begin
      if (theStoreType <> nil) then
       theStoreType^ := l_Info.rStoreType;
      thePosition := l_Info.rPosition;
      if (anOp = m3_soDelete) then
      begin
       // - надо удалить информацию об элементе
       l_Info.rPosition := -1;
       l_Info.rStoreType := m3_stNone; // - в общем это все равно
       m2COMSetPosition(l_MajorIndex, l_Stream);
       m2COMWriteBuffer(l_Stream, l_Info, l_RecordSize);
      end;//anOp = m3_soDelete
      Result := true;
     end;//l_Info.rStoreType = aStoreType..
     Exit;
    end//l_Step = 0
    else
    begin
     l_Stream := nil;
     l_Name := f_StorageHeader.f_Name.Clone;
     try
      l_Name.Append(l3PCharLen('.Index.' + IntToStr(l_Step)));
      l_Stream := Tm3BuffStream.MakeInterface(
                   Tm3StorageStream.MakeInterface(_Access,
                                                  l_Name,
                                                  f_StorageHeader,
                                                  l_Info.rPosition,
                                                  not f_InIterate));
     finally
      l3Free(l_Name);
     end;//try..finally
     Dec(l_Step);
    end;//l_Step = 0
   end;//while true
  finally
   l_Stream := nil;
  end;//try..finally
 end;//f_IndexStream <> nil
end;

function Tm3Storage.SetIndexParam(aBits, aMaxBits: Byte): Boolean;
  {* - устанавливает параметры "размазывания" индекса. }
begin
 if (f_IndexStream = nil) then begin
  with f_IndexInfo do begin
   rBits := aBits;
   rMaxBits := aMaxBits;
  end;//with f_IndexInfo
  Result := true;
 end else
  Result := false;
end;

procedure Tm3Storage.Iterate(anAction: Tm3StoreAction);
  {-}

 function IterateStream(const aStream : IStream;
                        aStep         : Long;
                        aMajor        : Long): Boolean;
 var
  l_Info       : Tm3StoreInfo;
  l_RecordSize : Long;
  l_Result     : hResult;
  l_Junior     : Long;
  l_Stream     : IStream;
 begin
  Result := true;
  aMajor := aMajor shl f_IndexInfo.rBits;
  l_RecordSize := SizeOf(l_Info.rPosition);
  if (aStep = 0) then
   Inc(l_RecordSize, SizeOf(l_Info.rStoreType));
  l_Junior := 0;
  while true do begin
   l_Result := aStream.Read(@l_Info, l_RecordSize, nil);
   if l3IFail(l_Result) OR (l_Result = S_False) then
    break;
   if (l_Info.rPosition <> Int64(-1)) then begin
    if f_StorageHeader.FRootStreamManager.CheckPosition(l_Info.rPosition) then begin
     if (aStep = 0) then begin
      if not anAction(l_Info, aMajor or l_Junior) then begin
       Result := false;
       break;
      end;//not anAction
     end else begin
      try
       l_Stream := Tm3BuffStream.MakeInterface(
                    Tm3StorageStream.MakeInterface(_Access,
                                                   f_StorageHeader.f_Name,
                                                   f_StorageHeader,
                                                   l_Info.rPosition));
      except
       on E: Exception do
       begin
        l3System.Exception2Log(E);
        Inc(l_Junior);
        continue;
       end;//on E: Exception
       else
        Assert(false, 'Сюда не должны попасть'); 
      end;//try..except
      try
       if not IterateStream(l_Stream, Pred(aStep), aMajor or l_Junior) then begin
        Result := false;
        break;
       end;//not anAction
      finally
       l_Stream := nil;
      end;//try..finally
     end;//aStep = 0
    end;//f_StorageHeader.FRootStreamManager.CheckPosition
   end;//l_Info.rPosition <> Int64(-1)
   Inc(l_Junior);
  end;//while true
 end;

begin
 CheckIndexStream;
 if (f_IndexStream <> nil) then
 begin
  f_InIterate := true;
  try
   m2COMSetPosition(0, f_IndexStream);
   IterateStream(f_IndexStream, Pred(f_IndexInfo.rMaxBits div f_IndexInfo.rBits), 0);
  finally
   f_InIterate := false;
  end;//try..finally
 end;//f_IndexStream <> nil
end;

procedure Tm3Storage.IterateF(anAction: Tm3StoreAction);
  {-}
begin
 try
  Iterate(anAction);
 finally
  m3FreeSA(anAction);
 end;//try..finally
end;

procedure Tm3Storage.IterateF(anAction: Tm3StorageElementAction);
  {-}
begin
 try
  Iterate(anAction);
 finally
  m3FreeSEA(anAction);
 end;//try..finally
end;

procedure Tm3Storage.Iterate(anAction: Tm3StorageElementAction);
  {* - перебирает элементы хранилища. }

var
 l_Cont : Boolean;
   
 function __Forward(AItemPtr: PPointer; AIndex: LongInt): Boolean; far;

 var
  l_Info : Tm3StoreInfo;
 begin//__Forward
  with Tm3TOCHandle(AItemPtr^), Data do begin
   l_Info.rPosition := TOCItemDataPosition;
   l_Info.rStoreType := HandleType;
   Result := anAction(l_Info, HandleName.AsPCharLen);
  end;//with Tm3TOCHandle(AItemPtr^), Data do
  l_Cont := Result;
 end;//__Forward

 function _IndexElement(const aStoreInfo: Tm3StoreInfo; anIndex: Long): Boolean; far;
 const
  cFormatString = m3IndexPrefix+'%.10d';
 begin//_IndexElement
  Result := anAction(aStoreInfo, l3PCharLen(Format(cFormatString,[anIndex])));
 end;//_IndexElement

begin
 {$IfDef m3MultiThreadStorage}
 EnterCriticalSection(FRTLCriticalSection);
  try
 {$EndIf m3MultiThreadStorage}
  l_Cont := true;
  FTOCHandleList.IterateAllF(l3L2IA(@__Forward));
  if l_Cont then
   IterateF(m3L2SA(@_IndexElement));
 {$IfDef m3MultiThreadStorage}
 finally
  LeaveCriticalSection(FRTLCriticalSection);
 end;//try..finally
 {$EndIf m3MultiThreadStorage}
end;

function Tm3Storage.IsValidName(const AName: PWideChar; aLen : Long = -1): Boolean;
var
 l_Index : Long;
begin
 if (aName <> nil) then begin
  if (aLen = -1) then
   aLen := l3StrLen(aName);
  if (aLen > 0) then begin
   Result := true;
   for l_Index := 0 to Pred(aLen) do
    if (aName[l_Index] in [WideChar($003a),WideChar($002f),WideChar($005c)]) then begin
     Result := false;
     Exit;
    end;//aName[l_Index]
  end else
   Result := false;
 end else
  Result := false;  
end;

function  Tm3Storage.IsValidName(const AName: Tl3PCharLen): Boolean;
begin
 if (AName.SCodePage = CP_Unicode) then
  Result := IsValidName(PWideChar(aName.S), aName.SLen)
 else
  Result := IsValidName(PWideChar(Tl3Str(aName).AsWideString), aName.SLen);
end;

procedure Tm3Storage.RemoveElement(aName      : Tl3String;
                                   aStoreType : Tm3StoreType;
                                   aPosition  : Int64);
  //overload;
  {-}

 procedure DoRemove;
 begin//DoRemove
  case aStoreType of
   m3_stStorage:
    m2COMDestroyData(GetSubStorageClass.MakeInterface(_Access,
                                                      aName,
                                                      f_StorageHeader,
                                                      aPosition));
   m3_stStream:
    m2COMDestroyData(Tm3StorageStream.MakeInterface(_Access,
                                                    aName,
                                                    f_StorageHeader,
                                                    aPosition));
   else
    OleError(E_UNEXPECTED);
  end;//case aStoreType
 end;//DoRemove

begin
 DoRemove;
 f_StorageHeader.FRootStreamManager.RemoveTOCItemData(aPosition);
end;

procedure Tm3Storage.RemoveElement(const AIndex: LongInt);
begin
 with FTOCHandleList do
 begin
  with Tm3TOCHandle(Items[AIndex]), Data do
   RemoveElement(HandleName, HandleType, TOCItemDataPosition);
  Delete(AIndex);
 end;//with FTOCHandleList
 FTOCHandleListModifed := True;
end;

// Tm3Storage.protected

function Tm3Storage.GetSubStorageClass: Rm3Storage;
  //virtual;
  {-}
begin
 Result := Rm3Storage(ClassType);
end;

function Tm3Storage.CreateOpenStore(aPosition  : Int64;
                                    anAccess   : Tm3StoreAccess;
                                    aName      : Tl3String;
                                    aStoreType : Tm3StoreType;
                                    aMode      : Tm3StoreMode;
                                    aUseCompression : Boolean = true): IUnknown;
  //overload;
  {-}
begin
 if (aMode = m3_smCreate) then
  anAccess := m2COMModeAccess(anAccess or STGM_CREATE)
 else
  anAccess := m2COMModeAccess(anAccess);
 Case aStoreType of
  m3_stStream:
   Result := Tm3StorageStream.MakeInterface(anAccess,
                                            aName,
                                            f_StorageHeader,
                                            aPosition);
  m3_stStorage:
   Result := GetSubStorageClass.MakeInterface(anAccess,
                                              aName,
                                              f_StorageHeader,
                                              aPosition);
  else
   Result := nil
 end;//Case aStoreType
end;

function Tm3Storage.CreateOpenStore(aPosition   : Int64;
                                    anAccess    : Tm3StoreAccess;
                                    const aName : Tl3PCharLen;
                                    aStoreType  : Tm3StoreType;
                                    aMode       : Tm3StoreMode;
                                    aUseCompression : Boolean = true): IUnknown;
  //overload;
  {-}
var
 l_Name : Tl3String;
begin
 l_Name := Tl3String.Make(aName);
 try
  Result := CreateOpenStore(aPosition, anAccess, l_Name, aStoreType, aMode, aUseCompression);
 finally
  l3Free(l_Name);
 end;//try..finally
end;

function Tm3Storage.CreateOpenStore(aPosition  : Int64;
                                    anAccess   : Tm3StoreAccess;
                                    anIndex    : Long;
                                    aStoreType : Tm3StoreType;
                                    aMode      : Tm3StoreMode;
                                    aUseCompression : Boolean = true): IUnknown;
  //overload;
  {-}
const
 cFormatString = m3IndexPrefix+'%.10d';
begin
 Result := CreateOpenStore(aPosition,
                           anAccess,
                           l3PCharLen(WideString(Format(cFormatString, [anIndex]))),
                           aStoreType,
                           aMode,
                           aUseCompression)
end;

function __IsValidCreateMode(const AStatStgMode: LongInt): LongBool;
const
 CAccess = [STGM_READWRITE];

 CSharing = [STGM_SHARE_EXCLUSIVE];

 CFlags = STGM_CREATE or
          STGM_FAILIFTHERE or
          STGM_DIRECT;
begin
 Result:=((Byte(m2COMModeAccess(AStatStgMode)) in CAccess) and (Byte(m2COMModeSharing(AStatStgMode)) in CSharing) and ((m2COMModeFlags(AStatStgMode) and not(CFlags)) = 0));
end;

function Tm3Storage.__IsValidOpenMode(const AStatStgMode: LongInt): LongBool;
const
      CAccess=                  [STGM_READ,
                                 STGM_READWRITE
                                ];

      CSharing=                 [STGM_SHARE_EXCLUSIVE
                                ];

      CFlags=                   STGM_DIRECT;
begin
 Result:=((Byte(m2COMModeAccess(AStatStgMode)) in CAccess) and (Byte(m2COMModeSharing(AStatStgMode)) in CSharing) and ((m2COMModeFlags(AStatStgMode) and not(CFlags)) = 0));
end;

function Tm3Storage.CreateStore(anIndex    : Long;
                                anAccess   : Tm3StoreAccess;
                                aStoreType : Tm3StoreType;
                                out aStore : IUnknown;
                                aUseCompression : Boolean = true): hResult;
  {* - создает элемент хранилища. }

var
 l_StorePosition : Int64;
begin
 Result := S_Ok;
 if __IsValidCreateMode(anAccess) then begin
  {$IfDef m3MultiThreadStorage}
  EnterCriticalSection(FRTLCriticalSection);
  try
  {$EndIf m3MultiThreadStorage}
   if FindItem(anIndex, aStoreType, m3_soOpen, l_StorePosition) then
    Result := STG_E_FILEALREADYEXISTS
   else begin
    if FindItem(anIndex, aStoreType, m3_soCreate, l_StorePosition) then
     aStore := CreateOpenStore(l_StorePosition,
                               anAccess,
                               anIndex, aStoreType, m3_smCreate, aUseCompression)
    else
     Result := E_UNEXPECTED;
   end;//FindItem
  {$IfDef m3MultiThreadStorage}
  finally
   LeaveCriticalSection(FRTLCriticalSection);
  end;//try..finally
  {$EndIf m3MultiThreadStorage}
 end else
  Result := STG_E_INVALIDFLAG;
end;

function Tm3Storage.CreateStore(const aName : Tl3PCharLen;
                                anAccess    : Tm3StoreAccess;
                                aStoreType  : Tm3StoreType;
                                out aStore  : IUnknown;
                                aUseCompression : Boolean = true): hResult;
  //overload;
  {* - создает элемент хранилища. }
var
 l_Index     : LongInt;
 l_TOCHandle : Tm3TOCHandle;
begin
 Result := S_Ok;
 if IsValidName(AName) then begin
  if __IsValidCreateMode(anAccess) then begin
   {$IfDef m3MultiThreadStorage}
   EnterCriticalSection(FRTLCriticalSection);
   try
   {$EndIf m3MultiThreadStorage}
    with FTOCHandleList do begin
     if FindTOCItem(aName, l_Index) then
      Result := STG_E_FILEALREADYEXISTS
     else begin
      l_TOCHandle := f_StorageHeader.FRootStreamManager.CreateTOCHandle(aName, aStoreType);
      try
       Insert(l_Index, l_TOCHandle);
       FTOCHandleListModifed := true;
       with l_TOCHandle, Data do
        aStore := CreateOpenStore(TOCItemDataPosition,
                                  anAccess,
                                  HandleName, aStoreType, m3_smCreate, aUseCompression);
      finally
       l3Free(l_TOCHandle);
      end;//try..finally
     end;//FindTOCItem(aName, l_Index)
    end;//with FTOCHandleList
   {$IfDef m3MultiThreadStorage}
   finally
    LeaveCriticalSection(FRTLCriticalSection);
   end;//try..finally
   {$EndIf m3MultiThreadStorage}
  end else
   Result := STG_E_INVALIDFLAG;
 end else
  Result := STG_E_INVALIDNAME;
end;

function Tm3Storage.OpenStore(const aName : Tl3PCharLen;
                              anAccess    : Tm3StoreAccess;
                              aStoreType  : Tm3StoreType;
                              out aStore  : IUnknown;
                              aUseCompression : Boolean = true): hResult;
  //overload;
  {* - открывает элемент хранилища. }
var
 l_Index : Long;
 l_Mode  : Tm3StoreMode;
begin
 Result := S_Ok;
 if IsValidName(aName) then begin
  if __IsValidOpenMode(anAccess) then begin
   {$IfDef m3MultiThreadStorage}
   EnterCriticalSection(FRTLCriticalSection);
   try
   {$EndIf m3MultiThreadStorage}
    with FTOCHandleList do begin
     if FindTOCItem(AName, l_Index) then begin
      with Tm3TOCHandle(Items[l_Index]), Data do begin
       if (HandleType = aStoreType) then
       begin
        if (anAccess = m3_saCreate) then
         l_Mode := m3_smCreate
        else
         l_Mode := m3_smOpen;
        aStore := CreateOpenStore(TOCItemDataPosition,
                                  anAccess,
                                  HandleName, aStoreType, l_Mode, aUseCompression);
        Exit;
       end;//HandleType = aStoreType
      end;//with Tm3TOCHandle(Items[l_Index]), Data
     end;//FindTOCItem..
     Result := STG_E_FILENOTFOUND;
    end;//with FTOCHandleList
   {$IfDef m3MultiThreadStorage}
   finally
    LeaveCriticalSection(FRTLCriticalSection);
   end;//try..finally
   {$EndIf m3MultiThreadStorage}
  end else
   Result := STG_E_INVALIDFLAG;
 end else
   Result := STG_E_INVALIDNAME;
end;

procedure Tm3Storage.CreateStore(const AName   : Tl3PCharLen;
                                 anAccess      : Tm3StoreAccess;
                                 aStoreType    : Tm3StoreType;
                                 var   AStream : IUnknown;
                                 var   AReturn : HRESULT;
                                 aUseCompression : Boolean = true);
  {-}

var
 l_Index         : LongInt;
 l_StoreIndex    : LongInt;
 l_StorePosition : Int64;
 l_TOCHandle     : Tm3TOCHandle;
begin//CreateStore
 if SUCCEEDED(AReturn) then begin
  if IsValidName(AName) then begin
   if __IsValidCreateMode(anAccess) then begin
    {$IfDef m3MultiThreadStorage}
    EnterCriticalSection(FRTLCriticalSection);
    try
    {$EndIf m3MultiThreadStorage}
     with FTOCHandleList do begin
      if FindTOCItem(aName, l_Index) then
       aReturn := STG_E_FILEALREADYEXISTS
      else begin
       if IsValidName(aName, l_StoreIndex) then begin
        if FindItem(l_StoreIndex, aStoreType, m3_soOpen, l_StorePosition) then
         aReturn := STG_E_FILEALREADYEXISTS
        else begin
         if FindItem(l_StoreIndex, aStoreType, m3_soCreate, l_StorePosition) then
          aStream := CreateOpenStore(l_StorePosition,
                                     anAccess,
                                     aName, aStoreType, m3_smCreate, aUseCompression)
         else
          aReturn := E_UNEXPECTED;
        end;//FindItem
       end else begin
        l_TOCHandle := f_StorageHeader.FRootStreamManager.CreateTOCHandle(aName, aStoreType);
        try
         Insert(l_Index, l_TOCHandle);
         FTOCHandleListModifed := true;
         with l_TOCHandle, Data do
          aStream := CreateOpenStore(TOCItemDataPosition,
                                     anAccess,
                                     HandleName, aStoreType, m3_smCreate, aUseCompression);
        finally
         l3Free(l_TOCHandle);
        end;//try..finally
       end;//IsValidName
      end;//FindTOCItem(aName, l_Index)
     end;//with FTOCHandleList
    {$IfDef m3MultiThreadStorage}
    finally
     LeaveCriticalSection(FRTLCriticalSection);
    end;//try..finally
    {$EndIf m3MultiThreadStorage}
   end else
    AReturn:=STG_E_INVALIDFLAG;
  end else
   AReturn:=STG_E_INVALIDNAME;
 end;//SUCCEEDED(AReturn)
end;//CreateStore

function Tm3Storage.OpenStore(anIndex    : Long;
                              anAccess   : Tm3StoreAccess;
                              aStoreType : Tm3StoreType;
                              out aStore : IUnknown;
                              aUseCompression : Boolean = true): hResult;
  //overload;
  {* - открывает элемент хранилища. }
var
 l_StorePosition : Int64;
begin
 Result := S_Ok;
 if __IsValidOpenMode(anAccess) then begin
  {$IfDef m3MultiThreadStorage}
  EnterCriticalSection(FRTLCriticalSection);
  try
  {$EndIf m3MultiThreadStorage}
   if FindItem(anIndex, aStoreType, m3_soOpen, l_StorePosition) then
    aStore := CreateOpenStore(l_StorePosition,
                              anAccess,
                              anIndex, aStoreType, m3_smOpen, aUseCompression)
   else
    Result := STG_E_FILENOTFOUND;
  {$IfDef m3MultiThreadStorage}
  finally
   LeaveCriticalSection(FRTLCriticalSection);
  end;//try..finally
  {$EndIf m3MultiThreadStorage}
 end else
  Result := STG_E_INVALIDFLAG;
end;

procedure Tm3Storage.OpenStore(const AName   : Tl3PCharLen;
                               anAccess      : Tm3StoreAccess;
                               aStoreType    : Tm3StoreType;
                               var   AStream : IUnknown;
                               var   AReturn : HRESULT;
                               aUseCompression : Boolean = true);
  {-}

var
 l_Index         : LongInt;
 l_StorePosition : Int64;
 l_Mode          : Tm3StoreMode;
begin//OpenStore
 if SUCCEEDED(AReturn) then begin
  if IsValidName(AName) then begin
   if __IsValidOpenMode(anAccess) then begin
    {$IfDef m3MultiThreadStorage}
    EnterCriticalSection(FRTLCriticalSection);
    try
    {$EndIf m3MultiThreadStorage}
     with FTOCHandleList do begin
      if FindTOCItem(AName, l_Index) then begin
       with Tm3TOCHandle(Items[l_Index]), Data do begin
        if (HandleType = aStoreType) then begin
         if (anAccess = m3_saCreate) then
          l_Mode := m3_smCreate
         else
          l_Mode := m3_smOpen;
         AStream := CreateOpenStore(TOCItemDataPosition,
                                    anAccess,
                                    HandleName, aStoreType, l_Mode, aUseCompression);
         Exit;
        end;//HandleType = aStoreType
       end;//with Tm3TOCHandle(Items[l_Index]), Data
       //FindTOCItem(AName,l_Index)
      end//FindTOCItem(AName,l_Index)
      else
      if FindItem(aName, aStoreType, m3_soOpen, l_StorePosition) then
      begin
       if (anAccess = m3_saCreate) then
        l_Mode := m3_smCreate
       else
        l_Mode := m3_smOpen;
       AStream := CreateOpenStore(l_StorePosition,
                                  anAccess,
                                  aName, aStoreType, l_Mode, aUseCompression);
       Exit;
      end;//IsValidName..
      AReturn:=STG_E_FILENOTFOUND;
     end;//with FTOCHandleList
    {$IfDef m3MultiThreadStorage}
    finally
     LeaveCriticalSection(FRTLCriticalSection);
    end;//try..finally
    {$EndIf m3MultiThreadStorage}
   end else
    AReturn:=STG_E_INVALIDFLAG;
  end else
    AReturn:=STG_E_INVALIDNAME;
 end;//SUCCEEDED(AReturn)
end;//OpenStore

function Tm3Storage.OpenStore(aPosition   : Int64;
                              anAccess    : Tm3StoreAccess;
                              anIndex     : Long;
                              aStoreType  : Tm3StoreType;
                              aUseCompression : Boolean = true): IUnknown;
  //overload;
  {* - открывает элемент хранилища. }
begin
 Result := CreateOpenStore(aPosition, anAccess, anIndex, aStoreType, m3_smOpen, aUseCompression);
end;

function Tm3Storage.OpenStore(aPosition   : Int64;
                              anAccess    : Tm3StoreAccess;
                              const aName : Tl3PCharLen;
                              aStoreType  : Tm3StoreType;
                              aUseCompression : Boolean = true): IUnknown;
  //overload;
  {* - открывает элемент хранилища. }
begin
 Result := CreateOpenStore(aPosition, anAccess, aName, aStoreType, m3_smOpen, aUseCompression);
end;

function Tm3Storage.OpenStore(const aStoreInfo  : Tm3StoreInfo;
                              const aName : Tl3PCharLen;
                              anAccess    : Tm3StoreAccess = m3_saRead;
                              aUseCompression : Boolean = true): IUnknown;
  //overload;
  {* - открывает элемент хранилища. }
begin
 with aStoreInfo do
  Result := OpenStore(rPosition, anAccess, aName, rStoreType, aUseCompression);
end;
  
procedure __CopyStorage(const anInStorage          : Im3IndexedStorage;
                        const AEntryName           : Tl3PCharLen;
                        const ATOCItemDataPosition : Int64;
                        const AStorage             : IStorage;
                        const ADstName             : PWideChar);
begin
 m2COMCopyData(m2COMCreateStorage(AStorage, ADstName, m3_saReadWrite, True),
               IStorage(anInStorage.OpenStore(ATOCItemDataPosition,
                                              STGM_READ or STGM_SHARE_EXCLUSIVE,
                                              aEntryName,
                                              m3_stStorage)));
end;

procedure   __CopyStream(const anInStorage          : Im3IndexedStorage;
                         const AEntryName           : Tl3PCharLen;
                         const ATOCItemDataPosition : Int64;
                         const AStorage             : IStorage;
                         const ADstName             : PWideChar
                        );
begin
 m2COMCopyData(m2COMCreateStream(AStorage, ADstName, m3_saCreate, False),
               IStream(anInStorage.OpenStore(aTOCItemDataPosition,
                                             STGM_READ or STGM_SHARE_EXCLUSIVE,
                                             aEntryName,
                                             m3_stStream)));
end;

procedure Tm3Storage.CopyTo(const AExcludeCount : LongInt;
                            const AExcludeArray : PIID;
                            const AExcludeSNB   : TSNB;
                            const AStorage      : IStorage;
                            var   AReturn       : HRESULT);

 function _CopyElement(const aStoreInfo : Tm3StoreInfo;
                       const aName      : Tl3PCharLen): Boolean;
 begin
  Result := true;
  with aStoreInfo do
   case rStoreType of
    m3_stStorage:
     __CopyStorage(Self, aName, rPosition, AStorage, PWideChar(aName.S));
    m3_stStream:
     __CopyStream(Self, aName, rPosition, AStorage, PWideChar(aName.S));
    else
     OleError(E_UNEXPECTED);
   end;//case HandleType
 end;

begin//CopyTo
 if SUCCEEDED(AReturn) then begin
  if ((AExcludeCount <> 0) or (AExcludeArray <> nil) or (AExcludeSNB <> nil)) then
   AReturn:=STG_E_INVALIDPARAMETER
  else begin
   {$IfDef m3MultiThreadStorage}
   EnterCriticalSection(FRTLCriticalSection);
   try
   {$EndIf m3MultiThreadStorage}
    IterateF(m3L2SEA(@_CopyElement));
   {$IfDef m3MultiThreadStorage}
   finally
    LeaveCriticalSection(FRTLCriticalSection);
   end;//try..finally
   {$EndIf m3MultiThreadStorage}
  end;
 end;//SUCCEEDED(AReturn)
end;//CopyTo

procedure Tm3Storage.MoveElementTo(const ASrcName : Tl3PCharLen;
                                   const AStorage : IStorage;
                                   const ADstName : PWideChar;
                                   const AFlags   : LongInt;
                                   var   AReturn  : HRESULT);
var
 LIndex : LongInt;
begin
 if SUCCEEDED(AReturn) then begin
  if (IsValidName(ASrcName) and IsValidName(ADstName)) then begin
   {$IfDef m3MultiThreadStorage}
   EnterCriticalSection(FRTLCriticalSection);
   try
   {$EndIf m3MultiThreadStorage}
    with FTOCHandleList do begin
     if FindTOCItem(aSrcName,LIndex) then begin
      with Tm3TOCHandle(Items[LIndex]), Data do begin
       case HandleType of
        m3_stStorage:
         __CopyStorage(Self, HandleName.AsPCharLen, TOCItemDataPosition, AStorage, ADstName);
        m3_stStream:
         __CopyStream(Self, HandleName.AsPCharLen, TOCItemDataPosition, AStorage, ADstName);
        else
         OleError(E_UNEXPECTED);
       end;//case HandleType
      end;//with Tm3TOCHandle(Items[LIndex]), Data
      if (AFlags = STGMOVE_MOVE) then
       RemoveElement(LIndex);
     end else
      AReturn:=STG_E_FILENOTFOUND;
    end;//with FTOCHandleList
   {$IfDef m3MultiThreadStorage}
   finally
    LeaveCriticalSection(FRTLCriticalSection);
   end;//try..finally
   {$EndIf m3MultiThreadStorage}
  end else
   AReturn:=STG_E_INVALIDNAME;
 end;//SUCCEEDED(AReturn)
end;

procedure Tm3Storage.EnumElements(var AEnumStatStg : IEnumStatStg;
                                  var AReturn      : HRESULT);

 function    __SaveToStream(const ATOCHandleList: Tm3TOCHandleList;
                            const AStream: IStream;
                            var   AItemsCount: LongInt
                           ): IStream;

  type
    TStatStgInfo = packed record
      RSize      : Int64;
      RStateBits : LongInt;
    end;//TStatStgInfo

     function    __StorageStatStgInfo(const AStorage: IStorage
                                     ): TStatStgInfo; overload;
     var
         LStatStg:                 TStatStg;
     begin

      OleCheck(AStorage.Stat(LStatStg,STATFLAG_NONAME));

      with LStatStg do
       begin

        with Result do
         begin

          RSize:=cbSize;
          RStateBits:=grfStateBits;

         end;

       end;

     end;

     function __StorageStatStgInfo(const AEntryName           : Tl3String;
                                   const ATOCItemDataPosition : Int64): TStatStgInfo;
       overload;
     begin
      Result:=__StorageStatStgInfo(GetSubStorageClass.MakeInterface(_Access,
                                                                    AEntryName,
                                                                    f_StorageHeader,
                                                                    ATOCItemDataPosition));
     end;

     function __StreamStatStgInfo(const AStream: IStream): TStatStgInfo;
       overload;
     var
         LStatStg:                 TStatStg;
     begin

      OleCheck(AStream.Stat(LStatStg,STATFLAG_NONAME));

      with LStatStg do
       begin

        with Result do
         begin

          RSize:=cbSize;
          RStateBits:=grfStateBits;

         end;

       end;

     end;

     function __StreamStatStgInfo(const AEntryName           : Tl3String;
                                  const ATOCItemDataPosition : Int64): TStatStgInfo;
       overload;
     begin
      Result:=__StreamStatStgInfo(Tm3StorageStream.MakeInterface(_Access,
                                                                 AEntryName,
                                                                 f_StorageHeader,
                                                                 ATOCItemDataPosition));
     end;

     procedure   __SaveBuff(const AStream: IStream;
                            const ABuff: Pointer;
                            const ASize: LongInt
                           );
     begin

      m2COMWriteBuffer(AStream,ABuff^,ASize);

     end;

     procedure   __SaveName(const AStream: IStream;
                            const AString: WideString
                           );
     var
         LSize:                    LongInt;
     begin

      LSize:=Length(AString)*SizeOf(WideChar);

      __SaveBuff(AStream,@LSize,SizeOf(LSize));
      __SaveBuff(AStream,PWideChar(AString),LSize);

     end;

     procedure   __SaveStatStgInfo(const AStream: IStream;
                                   const AStatStgInfo: TStatStgInfo
                                  );
     begin

      __SaveBuff(AStream,@AStatStgInfo,SizeOf(AStatStgInfo));

     end;

     procedure   __SaveType(const AStream: IStream;
                            const AType: LongInt
                           );
     begin

      __SaveBuff(AStream,@AType,SizeOf(AType));

     end;

  function    __Forward(const AItemPtr: PPointer;
                        const AIndex: LongInt
                       ): Boolean;

  begin

   Result:=True;

   with Tm3TOCHandle(AItemPtr^), Data do
    begin

     case HandleType of

      m3_stStorage: begin

                      __SaveName(AStream,HandleName.AsWideString);
                      __SaveType(AStream,HandleType);

                      __SaveStatStgInfo(AStream,__StorageStatStgInfo(HandleName, TOCItemDataPosition));

                     end;

      m3_stStream:  begin

                      __SaveName(AStream,HandleName.AsWideString);
                      __SaveType(AStream,HandleType);

                      __SaveStatStgInfo(AStream,__StreamStatStgInfo(HandleName, TOCItemDataPosition));

                     end;

      else           begin

                      OleError(E_UNEXPECTED);

                     end;

     end;

    end;

   Inc(AItemsCount);

  end;

 var
  l_Name : Tl3String;
    
  function _IndexElement(const aStoreInfo: Tm3StoreInfo; anIndex: Long): Boolean; far;
  const
   cFormatString = m3IndexPrefix+'%.10d';
  begin//_IndexElement
   Result := true;
   l_Name.AsWideString := Format(cFormatString,[anIndex]);
   with aStoreInfo do
    case rStoreType of
     m3_stStorage: begin
      __SaveName(AStream, l_Name.AsWideString);
      __SaveType(AStream, rStoreType);
      __SaveStatStgInfo(AStream, __StorageStatStgInfo(l_Name, rPosition));
     end;//m3_stStorage
     m3_stStream: begin
      __SaveName(AStream, l_Name.AsWideString);
      __SaveType(AStream, rStoreType);
      __SaveStatStgInfo(AStream, __StreamStatStgInfo(l_Name, rPosition));
     end;//m3_stStream
     else
      OleError(E_UNEXPECTED);
    end;//case rStoreType
   Inc(aItemsCount);
  end;//_IndexElement

 begin//__SaveToStream
  ATOCHandleList.IterateAllF(l3L2IA(@__Forward));
  l_Name := Tl3String.Create;
  try
   IterateF(m3L2SA(@_IndexElement));
  finally
   l3Free(l_Name);
  end;//try..finally
  Result:=AStream;
 end;//__SaveToStream

var
       LItemsCount:              LongInt;
begin

 if SUCCEEDED(AReturn)
  then
   begin

    {$IfDef m3MultiThreadStorage}
    EnterCriticalSection(FRTLCriticalSection);
     try
    {$EndIf m3MultiThreadStorage} 

      LItemsCount:=0;

      AEnumStatStg:=Tm3TempEnumStatStg.MakeInterface(
                     m2COMSetPosition(0,__SaveToStream(
                                         FTOCHandleList,
                                         Tm3BuffStream.MakeInterface(
                                          Tm3TempStream.MakeInterface()),
                                         LItemsCount)),
                     LItemsCount);

     {$IfDef m3MultiThreadStorage}
     finally

      LeaveCriticalSection(FRTLCriticalSection);

     end;
     {$EndIf m3MultiThreadStorage}

   end;

end;

function Tm3Storage.DeleteStore(anIndex: Long): hResult;
  {* - удаляет элемент хранилища. }
var
 l_Position  : Int64;
 l_StoreType : Tm3StoreType;
begin
 Result := S_Ok;
 {$IfDef m3MultiThreadStorage}
 EnterCriticalSection(FRTLCriticalSection);
 try
 {$EndIf m3MultiThreadStorage}
  if FindItem(anIndex, m3_stNone, m3_soDelete, l_Position, @l_StoreType) then
   RemoveElement(nil, l_StoreType, l_Position)
  else
   Result := STG_E_FILENOTFOUND;
 {$IfDef m3MultiThreadStorage}
 finally
  LeaveCriticalSection(FRTLCriticalSection);
 end;//try..finally
 {$EndIf m3MultiThreadStorage}
end;

procedure Tm3Storage.DestroyElement(const aName   : Tl3PCharLen;
                                    var   aReturn : HRESULT);
var
 l_Index     : LongInt;
 l_Position  : Int64;
 l_StoreType : Tm3StoreType;
begin
 if SUCCEEDED(aReturn) then
 begin
  if IsValidName(aName) then
  begin
   {$IfDef m3MultiThreadStorage}
   EnterCriticalSection(FRTLCriticalSection);
   try
   {$EndIf m3MultiThreadStorage}
    if FTOCHandleList.FindTOCItem(aName, l_Index) then
     RemoveElement(l_Index)
    else
    if FindItem(aName, m3_stNone, m3_soDelete, l_Position, @l_StoreType) then
     RemoveElement(nil, l_StoreType, l_Position)
    else
     AReturn := STG_E_FILENOTFOUND;
   {$IfDef m3MultiThreadStorage}
   finally
    LeaveCriticalSection(FRTLCriticalSection);
   end;//try..finally
   {$EndIf m3MultiThreadStorage}
  end//IsValidName(aName)
  else
   aReturn := STG_E_INVALIDNAME;
 end;//SUCCEEDED(AReturn)
end;

function Tm3Storage.RenameElementA(const aOldName: Tl3WString;
 const aNewName: Tl3WString): hResult;
  {* Переименовывает элемент хранилища }
begin
 Result := S_Ok;
 RenameElement(Tl3PCharLen(aOldName), Tl3PCharLen(aNewName), Result);
end;

function Tm3Storage.ElementExists(const aName: Tl3WString): Boolean;
var
 l_Index : Integer;
begin
 Result := FTOCHandleList.FindTOCItem(Tl3PCharLen(aName), l_Index);
end;

procedure Tm3Storage.RenameElement(const AOldName : Tl3PCharLen;
                                   const ANewName : Tl3PCharLen;
                                   var   AReturn  : HRESULT);
var
 LNewIndex : LongInt;
 LOldIndex : LongInt;
begin
 if SUCCEEDED(AReturn) then
 begin
  if (IsValidName(AOldName) and IsValidName(ANewName)) then
  begin
   {$IfDef m3MultiThreadStorage}
   EnterCriticalSection(FRTLCriticalSection);
   try
   {$EndIf m3MultiThreadStorage}
    if not l3Same(aOldName, aNewName) then
    begin
     with FTOCHandleList do
     begin
      if FindTOCItem(aOldName,LOldIndex) then
      begin
       if FindTOCItem(aNewName,LNewIndex) then
        AReturn:=STG_E_FILEALREADYEXISTS
       else
       begin
        Tm3TOCHandle(Items[LOldIndex]).HandleName.AsPCharLen := aNewName;
        if ((LNewIndex <> LOldIndex) AND (LNewIndex <> Succ(LOldIndex))) then
         Move(LOldIndex, LNewIndex);
        FTOCHandleListModifed:=True;
       end;//FindTOCItem(aNewName,LNewIndex)
      end//FindTOCItem(aOldName,LOldIndex)
      else
       AReturn := STG_E_FILENOTFOUND;
     end;//with FTOCHandleList
    end;//aOldName <> aNewName
   {$IfDef m3MultiThreadStorage}
   finally
    LeaveCriticalSection(FRTLCriticalSection);
   end;//try..finally
   {$EndIf m3MultiThreadStorage}
  end else
   AReturn:=STG_E_INVALIDNAME;
 end;//SUCCEEDED(AReturn)
end;

procedure Tm3Storage.SetClass(const ACLSID  : TCLSID;
                              var   AReturn : HRESULT);
begin
 if SUCCEEDED(AReturn) then begin
  {$IfDef m3MultiThreadStorage}
  EnterCriticalSection(FRTLCriticalSection);
  try
  {$EndIf m3MultiThreadStorage}
   {$IfDef m3StoreHasGUID}
   f_StorageHeader.TOCItemDataPtr^.RBody.RCLSID:=ACLSID;
   {$EndIf m3StoreHasGUID}
  {$IfDef m3MultiThreadStorage}
  finally
   LeaveCriticalSection(FRTLCriticalSection);
  end;//try..finally
  {$EndIf m3MultiThreadStorage}
 end;//SUCCEEDED(AReturn)
end;

procedure Tm3Storage.SetStateBits(const AStateBits : LongInt;
                                  const AMask      : LongInt;
                                  var   AReturn    : HRESULT);
begin
 if SUCCEEDED(AReturn) then begin
  {$IfDef m3MultiThreadStorage}
  EnterCriticalSection(FRTLCriticalSection);
  try
  {$EndIf m3MultiThreadStorage}
   {$IfDef m3StoreHasStateBits}
   if (AMask <> 0) then
    with f_StorageHeader.TOCItemDataPtr^.RBody do
     RStateBits:=((RStateBits or (AStateBits and AMask)) and not(AStateBits xor AMask));
   {$EndIf m3StoreHasStateBits}
  {$IfDef m3MultiThreadStorage}
  finally
   LeaveCriticalSection(FRTLCriticalSection);
  end;//try..finally
  {$EndIf m3MultiThreadStorage}
 end;//SUCCEEDED(AReturn)
end;

 procedure   Tm3Storage.StatStgName(var   AResult: PWideChar;
                                    var   AReturn: HRESULT
                                   );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     {$IfDef m3MultiThreadStorage}
     EnterCriticalSection(FRTLCriticalSection);
      try
     {$EndIf m3MultiThreadStorage} 

       m2COMAllocWideBuff(AResult, f_StorageHeader.f_Name.AsWideString);

     {$IfDef m3MultiThreadStorage}
      finally

       LeaveCriticalSection(FRTLCriticalSection);

      end;
     {$EndIf m3MultiThreadStorage} 

    end;

 end;

function Tm3Storage.pm_GetSize: Int64;
  //override;
  {-}
begin
 {$IfDef m3MultiThreadStorage}
 EnterCriticalSection(FRTLCriticalSection);
 try
 {$EndIf m3MultiThreadStorage}
  Result:=Int64(FTOCHandleList.Count);
 {$IfDef m3MultiThreadStorage}
 finally
  LeaveCriticalSection(FRTLCriticalSection);
 end;
 {$EndIf m3MultiThreadStorage}
end;

procedure Tm3Storage.StatStgCLSID(var AResult : TCLSID;
                                  var AReturn : HRESULT);
begin
 if SUCCEEDED(AReturn) then
  {$IfDef m3StoreHasGUID}
  AResult := f_StorageHeader.TOCItemDataPtr^.RBody.RCLSID;
  {$Else  m3StoreHasGUID}
  AResult := TCLSID(GUID_NULL);
  {$EndIf m3StoreHasGUID}
end;

procedure Tm3Storage.StatStgStateBits(var AResult: LongInt;
                                      var AReturn: HRESULT);
begin
 if SUCCEEDED(AReturn) then begin
  {$IfDef m3MultiThreadStorage}
  EnterCriticalSection(FRTLCriticalSection);
  try
  {$EndIf m3MultiThreadStorage}
   {$IfDef m3StoreHasStateBits}
   AResult := f_StorageHeader.TOCItemDataPtr^.RBody.RStateBits;
   {$EndIf m3StoreHasStateBits}
  {$IfDef m3MultiThreadStorage}
  finally
   LeaveCriticalSection(FRTLCriticalSection);
  end;
  {$EndIf m3MultiThreadStorage}
 end;//SUCCEEDED(AReturn)
end;

// Tm3Storage.public

 class
 function    Tm3Storage.HeaderID(
                                ): TCLSID;
 begin

  Result:=Tm3RootStream.HeaderID();

 end;

 class
 function    Tm3Storage.MakeInterface(const AAccess: LongInt;
                                      const AStream: IStream
                                     ): Im3IndexedStorage;
 begin
  with Create(AAccess,AStream) do
   try
    Result:=Tm3Storage(Instance);
   finally
    Free;
   end;
 end;

 class
 function    Tm3Storage.MakeSafeInterface(out   AResult: Im3IndexedStorage;
                                          const AAccess: LongInt;
                                          const AStream: IStream
                                         ): HRESULT;
 begin

  Result:=S_OK;
   try

    AResult:=MakeInterface(AAccess,AStream);

   except

    on E: EOutOfMemory do Result:=STG_E_INSUFFICIENTMEMORY;
    on E: EOleSysError do Result:=E.ErrorCode;

   else

    Result:=E_UNEXPECTED;

   end;

 end;

class function Tm3Storage.MakeInterface(const AAccess              : LongInt;
                                        const AEntryName           : Tl3String;
                                        aParentStorageHeader       : Tm3StoreHeader;
                                        const ATOCItemDataPosition : Int64): Im3IndexedStorage;
begin
 with Create(AAccess, AEntryName, aParentStorageHeader, ATOCItemDataPosition) do
  try
   Result:=Tm3Storage(Instance);
  finally
   Free;
  end;
end;

class function Tm3Storage.MakeSafeInterface(out   AResult              : Im3IndexedStorage;
                                            const AAccess              : LongInt;
                                            const AEntryName           : Tl3String;
                                            aParentStorageHeader       : Tm3StoreHeader;
                                            const ATOCItemDataPosition : Int64): HRESULT;
begin
 Result:=S_OK;
 try
  AResult:=MakeInterface(AAccess, AEntryName, aParentStorageHeader, ATOCItemDataPosition);
 except
  on E: EOutOfMemory do Result:=STG_E_INSUFFICIENTMEMORY;
  on E: EOleSysError do Result:=E.ErrorCode;
  else Result:=E_UNEXPECTED;
 end;//try..except
end;

class function Tm3Storage.MakeInterface(const AAccess      : LongInt;
                                        const ATOCItemData : Tm3StoreHeader): Im3IndexedStorage;
begin
 with Create(AAccess, ATOCItemData) do
  try
   Result:=Tm3Storage(Instance);
  finally
   Free;
  end;
end;

class function Tm3Storage.MakeSafeInterface(out   AResult      : Im3IndexedStorage;
                                            const AAccess      : LongInt;
                                            const ATOCItemData : Tm3StoreHeader): HRESULT;
begin
 Result:=S_OK;
 try
  AResult:=MakeInterface(AAccess, ATOCItemData);
 except
  on E: EOutOfMemory do Result:=STG_E_INSUFFICIENTMEMORY;
  on E: EOleSysError do Result:=E.ErrorCode;
 else
  Result:=E_UNEXPECTED;
 end;
end;

constructor Tm3Storage.Create(const AAccess : LongInt;
                              const AStream : IStream);
  {-}
var
 l_Name : Tl3String;
begin
 with Tm3RootStreamManager.Create(AStream) do
  try
   l_Name := Tl3String.Make(l3PCharLen(GetPseudoRootName));
   try
    Self.Create(AAccess,l_Name,Tm3RootStreamManager(Instance),Int64(-1));
   finally
    l3Free(l_Name);
   end;//try..finally
  finally
   Free;
  end;//try..finally
end;

// start class Tm3StorageStream

procedure Tm3StorageStream.MoveStreamPointer(aOffset: LongInt);
  {-}
begin
 Inc(FTOCBuffBodyOffset, aOffset);
 Inc(FPosition, Int64(aOffset));
 if (FTOCBuffBodyOffset = TOCBuffBodySize) then
 begin
  with f_StreamHeader, FRootStreamManager do
  begin
   SaveTOCBuffData(TOCItemDataPtr^.RBody.RTOCBuffRootPosition,
                   f_CurFilePos,
                   FTOCBuffData^,
                   FTOCBuffDataCompare^,
                   FTOCBuffDataModifed,
                   ReadOnly);
   LoadTOCBuffData(f_CurFilePos,
                   FTOCBuffData^.RNextPosition,
                   f_CurFilePos,
                   FTOCBuffData^,
                   FTOCBuffDataCompare^,
                   FTOCBuffDataModifed,
                   true);
  end;//with f_TOCItemData.FRootStreamManager
  FTOCBuffBodyOffset:=0;
 end;//FTOCBuffBodyOffset = TOCBuffBodySize
end;

procedure Tm3StorageStream.Read(ABuff : Pointer;
                                ASize : LongInt;
                                var AResult : LongInt;
                                var AReturn : HRESULT);
var
 LSize : LongInt;
begin
 if SUCCEEDED(AReturn) then
 begin
  with f_StreamHeader.TOCItemDataPtr^.RBody do
  begin
   while (aResult <> aSize) do begin
    LSize:=LongInt(m2S64Min(Int64(m2S32Min((TOCBuffBodySize-FTOCBuffBodyOffset),(ASize-AResult))),(RRealSize-FPosition)));
    if (LSize = 0) then
     Break;
    m2MEMCopy(Pointer(LongInt(ABuff)+AResult),@FTOCBuffData^.RBody[FTOCBuffBodyOffset],LSize);
    Inc(AResult,LSize);
    MoveStreamPointer(LSize);
   end;//while (aResult <> aSize)
  end;//FTOCItemData.TOCItemDataPtr^.RBody
 end;//SUCCEEDED(AReturn)
end;

procedure Tm3StorageStream.Write(ABuff : Pointer;
                                 ASize : LongInt;
                                 var AResult : LongInt;
                                 var AReturn : HRESULT);
var
 LSize : LongInt;
begin
 if SUCCEEDED(AReturn) then
 begin
  while (aResult <> aSize) do
  begin
   LSize:=m2S32Min((TOCBuffBodySize-FTOCBuffBodyOffset),(ASize-AResult));
   m2MEMCopy(@FTOCBuffData^.RBody[FTOCBuffBodyOffset],Pointer(LongInt(ABuff)+AResult),LSize);
   Inc(AResult,LSize);
   FTOCBuffDataModifed := true;
   MoveStreamPointer(LSize);
   with f_StreamHeader.TOCItemDataPtr^.RBody do
    RRealSize := m2S64Max(RRealSize,FPosition);
  end;//while (aResult <> aSize)
 end;//SUCCEEDED(AReturn)
end;

 procedure   Tm3StorageStream.Seek(AOffset     : Int64;
                                   AOrigin     : TSeekOrigin;
                                   var AResult : Int64;
                                   var AReturn : HRESULT
                                  );

  procedure    __Seek(const APosition: Int64;
                      var   AResult: Int64
                     );
  var
        LCount:                   Int64;
        LPosition1:               Int64;
        LPosition2:               Int64;
        LPosition3:               Int64;
  begin

   with f_StreamHeader.TOCItemDataPtr^.RBody do
    begin

     if ((APosition >= 0) and (APosition <= RRealSize))
      then
       begin

        if (APosition = FPosition)
         then
         else
          begin

           LPosition1:=FPosition-FTOCBuffBodyOffset;

           if ((APosition >= LPosition1) and (APosition < (LPosition1+TOCBuffBodySize)))
            then
             begin

              FTOCBuffBodyOffset:=APosition-LPosition1;

             end
            else
             begin

              with f_StreamHeader.FRootStreamManager do
               begin

                SaveTOCBuffData(RTOCBuffRootPosition, f_CurFilePos,
                                FTOCBuffData^, FTOCBuffDataCompare^,
                                FTOCBuffDataModifed, ReadOnly);

                LPosition2:=Int64(-1);
                LPosition3:=RTOCBuffRootPosition;

                LCount:=APosition div FTOCBuffBodySize;

                while (LCount <> 0) do
                 begin

                  LoadTOCBuffData(LPosition2,LPosition3,LPosition2,
                                  FTOCBuffData^,FTOCBuffDataCompare^,
                                  FTOCBuffDataModifed,False);

                  LPosition3:=FTOCBuffData^.RNextPosition;

                  Dec(LCount);

                 end;

                LoadTOCBuffData(LPosition2,LPosition3, f_CurFilePos,
                                FTOCBuffData^,FTOCBuffDataCompare^,
                                FTOCBuffDataModifed,True);

                FTOCBuffBodyOffset:=APosition mod FTOCBuffBodySize;

               end;

             end;

           FPosition:=APosition;

          end;

       end
      else
       begin

        Exit;

       end;

    end;

   AResult:=APosition;

  end;

 begin

  if SUCCEEDED(AReturn)
   then
    begin

     case AOrigin of

      soBeginning: begin

                        __Seek(AOffset,AResult);

                       end;

      soCurrent: begin

                        __Seek(AOffset+FPosition,AResult);

                       end;

      soEnd: begin

                        __Seek(AOffset + f_StreamHeader.TOCItemDataPtr^.RBody.RRealSize, aResult);

                       end;

      else             begin

                        OleError(E_UNEXPECTED);

                       end;

     end;
     
    end;

 end;

 procedure   Tm3StorageStream.SetSize(ASize: Int64;
                                      var   AReturn: HRESULT
                                     );

  procedure   __GrowSize(const ASize: Int64
                        );
  const
        CMaxBuffSize=             1024*1024;
  var
        LBuff:                    Pointer;
        LBuffSize:                LongInt;
        LSize:                    Int64;

  begin

   LSize:=ASize;
   LBuffSize:=LongInt(m2S64Min(LSize,CMaxBuffSize));

   m2MEMAlloc(LBuff,LBuffSize,0);
    try

     while (LSize <> 0) do
      begin

       LBuffSize:=LongInt(m2S64Min(LSize,Int64(LBuffSize)));

       m2COMWriteBuffer(Self,LBuff^,LBuffSize);

       Dec(LSize,LBuffSize);

      end;

    finally

     m2MEMFree(LBuff);

    end;

  end;

  procedure   __ReduceSize(const ASize: Int64
                          );
  begin

   m2COMSeek(Self,ASize,STREAM_SEEK_SET);

   with f_StreamHeader.TOCItemDataPtr^.RBody do
    begin

     with f_StreamHeader.FRootStreamManager do
      begin

       if (FPosition = 0)
        then
         begin

          RemoveTOCBuffData(RTOCBuffRootPosition);

          LoadTOCBuffData(Int64(-1),RTOCBuffRootPosition, f_CurFilePos,
                          FTOCBuffData^,FTOCBuffDataCompare^,
                          FTOCBuffDataModifed,True);

         end
        else
         begin

          RemoveTOCBuffData(FTOCBuffData^.RNextPosition);

         end;

      end;

     RRealSize:=FPosition;

    end;

  end;

 var
        LSize:                    Int64;
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     LSize:=m2COMSeek(Self,0,STREAM_SEEK_END);

     if (LSize < ASize)
      then
       begin

        __GrowSize(ASize-LSize);

       end
      else
       begin

        if (LSize > ASize)
         then
          begin

           __ReduceSize(ASize);

          end;

       end;

    end;

 end;

procedure Tm3StorageStream.StatStgName(var AResult : PWideChar;
                                       var AReturn : HRESULT);
begin
 if SUCCEEDED(AReturn) then
  m2COMAllocWideBuff(AResult, f_StreamHeader.f_Name.AsWideString);
end;

function Tm3StorageStream.pm_GetSize: Int64;
  ///override;
  {-}
begin
 Result := f_StreamHeader.TOCItemDataPtr^.RBody.RRealSize;
end;

function Tm3StorageStream.pm_GetTOCBuffBodySize: LongInt;
  {-}
begin
 Result := f_StreamHeader.FRootStreamManager.FTOCBuffBodySize;
end;

// Tm3StorageStream.public

class function Tm3StorageStream.MakeInterface(const AAccess              : LongInt;
                                              const AEntryName           : Tl3String;
                                              aStorageHeader             : Tm3StoreHeader;
                                              const ATOCItemDataPosition : Int64;
                                              aNeedLock                  : Boolean = true): IStream;
begin
 with Create(AAccess, AEntryName, aStorageHeader, ATOCItemDataPosition, aNeedLock) do
  try
   Result:=Tm3StorageStream(Instance);
  finally
   Free;
  end;
end;

class function Tm3StorageStream.MakeSafeInterface(out   AResult: IStream;
                                                  const AAccess: LongInt;
                                                  const AEntryName: Tl3String;
                                                  aStorageHeader             : Tm3StoreHeader;
                                                  const ATOCItemDataPosition: Int64): HRESULT;
 begin

  Result:=S_OK;
   try

    AResult:=MakeInterface(AAccess, AEntryName, aStorageHeader, ATOCItemDataPosition);

   except

    on E: EOutOfMemory do Result:=STG_E_INSUFFICIENTMEMORY;
    on E: EOleSysError do Result:=E.ErrorCode;

   else

    Result:=E_UNEXPECTED;

   end;

 end;

class function Tm3StorageStream.MakeInterface(const AAccess      : LongInt;
                                              const ATOCItemData : Tm3StoreHeader): IStream;
begin
 with Create(AAccess, ATOCItemData) do
  try
   Result:=Tm3StorageStream(Instance);
  finally
   Free;
  end;
end;

class function Tm3StorageStream.MakeSafeInterface(out   AResult      : IStream;
                                                  const AAccess      : LongInt;
                                                  const ATOCItemData : Tm3StoreHeader): HRESULT;
begin
 Result:=S_OK;
 try
  AResult:=MakeInterface(AAccess, ATOCItemData);
 except
  on E: EOutOfMemory do Result:=STG_E_INSUFFICIENTMEMORY;
  on E: EOleSysError do Result:=E.ErrorCode;
  else Result:=E_UNEXPECTED;
 end;//try..except
end;

constructor Tm3StorageStream.Create(const AAccess              : LongInt;
                                    const AEntryName           : Tl3String;
                                    aStorageHeader             : Tm3StoreHeader;
                                    const ATOCItemDataPosition : Int64;
                                    aNeedLock                  : Boolean
                                   );
begin
 with Tm3StoreHeader.Create((AAccess AND (STGM_WRITE OR STGM_READWRITE) = 0),
                            aEntryName,
                            aStorageHeader.FRootStreamManager,
                            ATOCItemDataPosition,
                            aNeedLock) do
  try
   Self.Create(AAccess, Tm3StoreHeader(Instance));
  finally
   Free;
  end;
end;

constructor Tm3StorageStream.Create(const AAccess : LongInt;
                                    ATOCItemData  : Tm3StoreHeader
                                   );
//var
// l_Pos : Int64;
begin
 inherited Create(AAccess);
 l3Set(f_StreamHeader, aTOCItemData);
 with f_StreamHeader, FRootStreamManager do
 begin
  m3TOCBuffers^.AllocItem(Pointer(FTOCBuffData), FTOCBuffFullSize);
  if not ReadOnly then
   try
    m3TOCBuffers^.AllocItem(Pointer(FTOCBuffDataCompare), FTOCBuffFullSize);
   except
    m3TOCBuffers^.FreeItem(Pointer(FTOCBuffData));
    raise;
   end;
  LoadTOCBuffData(Int64(-1),
                  TOCItemDataPtr^.RBody.RTOCBuffRootPosition,
                  f_CurFilePos,
                  FTOCBuffData^,
                  FTOCBuffDataCompare^,
                  FTOCBuffDataModifed,
                  true);
 end;//with f_TOCItemData
end;

procedure Tm3StorageStream.Cleanup;
begin
 try
  if (f_StreamHeader <> nil) then
   with f_StreamHeader, FRootStreamManager do
    SaveTOCBuffData(TOCItemDataPtr^.RBody.RTOCBuffRootPosition,
                    f_CurFilePos,
                    FTOCBuffData^,
                    FTOCBuffDataCompare^,
                    FTOCBuffDataModifed,
                    ReadOnly);
  try
   m3TOCBuffers^.FreeItem(Pointer(FTOCBuffDataCompare));
  finally
   m3TOCBuffers^.FreeItem(Pointer(FTOCBuffData));
  end;//try..finally
 finally
  l3Free(f_StreamHeader);
  inherited;
 end;//try..finally 
end;

procedure Tm3StorageStream.BeforeAddToCache;
  //override;
  {-}
begin
 inherited;
 FPosition := 0;
 f_CurFilePos := 0;
 FTOCBuffDataModifed := false;
 FTOCBuffBodyOffset := 0;
end;

class function Tm3StorageStream.IsCacheable: Boolean;
  //override;
  {-}
begin
 //Result := false;
 Result := true;
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\m3\m3stgcla.pas initialization enter'); {$EndIf}
 m3TOCBuffers := l3NewMemoryChain(m3ClusterSize);
 m3StoreHeaderBuffers := l3NewMemoryChain(SizeOf(Tm3StoreHeaderData));

{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\m3\m3stgcla.pas initialization leave'); {$EndIf}
end.

