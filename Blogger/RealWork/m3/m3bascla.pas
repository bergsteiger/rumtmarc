unit m3BasCla;
{* Базовые классы библиотеки m3. }

(*
//
//
// .Author: Mickael P. Golovin.
// .Copyright: 1997-2001 by Archivarius Team, _free for non commercial use.
//
//
*)
// $Id: m3bascla.pas,v 1.40 2013/04/04 11:33:51 lulin Exp $

// $Log: m3bascla.pas,v $
// Revision 1.40  2013/04/04 11:33:51  lulin
// - портируем.
//
// Revision 1.39  2012/11/01 09:43:31  lulin
// - забыл точку с запятой.
//
// Revision 1.38  2012/11/01 07:45:58  lulin
// - делаем возможность логирования процесса загрузки модулей.
//
// Revision 1.37  2012/10/10 09:00:20  lulin
// - чистим код.
//
// Revision 1.36  2012/10/10 08:49:17  lulin
// - чистим код.
//
// Revision 1.35  2012/09/12 14:15:26  lulin
// {RequestLink:392696007}
//
// Revision 1.34  2012/05/05 11:26:42  lulin
// {RequestLink:361038156}
//
// Revision 1.33  2012/05/04 19:42:49  lulin
// {RequestLink:361038156}
//
// Revision 1.32  2012/05/04 10:04:36  lulin
// {RequestLink:361038156}
//
// Revision 1.31  2012/05/04 08:31:15  lulin
// {RequestLink:361038156}
//
// Revision 1.30  2012/01/19 11:17:19  lulin
// {RequestLink:327821495}
//
// Revision 1.29  2011/12/28 16:02:00  lulin
// {RequestLink:325257155}
// - делаем базовый класс абстрактным.
//
// Revision 1.28  2011/12/28 15:53:06  lulin
// {RequestLink:325257155}
// - переходим от указателей к переменным.
//
// Revision 1.27  2011/12/28 15:15:28  lulin
// {RequestLink:325257155}
// - переходим от указателей к переменным.
//
// Revision 1.26  2011/12/28 11:13:06  lulin
// {RequestLink:325256237}
//
// Revision 1.25  2011/12/28 09:29:10  lulin
// {RequestLink:325257155}
// - чистим код.
//
// Revision 1.24  2011/12/27 15:35:53  lulin
// {RequestLink:324571064}
// - аккуратнее чистим данные перед положением объекта в кеш.
//
// Revision 1.23  2011/10/05 11:14:50  voba
// - k : 281525254 Борьба с утечками
//
// Revision 1.22  2011/09/27 10:00:19  voba
// -bug fix
//
// Revision 1.21  2011/09/26 11:20:36  lulin
// {RequestLink:287220465}.
//
// Revision 1.20  2011/05/18 12:10:06  lulin
// {RequestLink:266409354}.
//
// Revision 1.19  2009/09/07 10:28:47  voba
// - opt. Tl3BufferStreamMemoryPool - Стандартный буфер для буферизованных потоков
//
// Revision 1.18  2009/03/12 19:08:25  lulin
// - <K>: 138969458. Чистка устаревшего кода.
//
// Revision 1.17  2009/03/12 12:28:45  lulin
// - <K>: 138969458. Удаляем ненужные файлы, методы и классы.
//
// Revision 1.16  2009/03/12 12:08:19  lulin
// - <K>: 138969458. Удаляем ненужные методы и классы.
//
// Revision 1.15  2009/03/12 09:58:06  lulin
// - <K>: 138969458. Наследуемся от более простых объектов.
//
// Revision 1.14  2009/03/11 19:27:28  lulin
// - <K>: 138969458. Удалены ненужные классы.
//
// Revision 1.13  2008/05/05 10:37:08  voba
// - избавлялся от Hint
//
// Revision 1.12  2008/03/21 14:09:34  lulin
// - cleanup.
//
// Revision 1.11  2008/03/03 20:06:10  lulin
// - <K>: 85721135.
//
// Revision 1.10  2008/02/05 09:58:14  lulin
// - выделяем базовые объекты в отдельные файлы и переносим их на модель.
//
// Revision 1.9  2007/08/28 10:28:12  oman
// - fix: Сбрасывали буфера не в тот момент (cq26510)
//
// Revision 1.8  2007/08/14 19:32:06  lulin
// - оптимизируем очистку памяти.
//
// Revision 1.7  2006/10/04 08:42:28  voba
// - refactoring
//
// Revision 1.6  2006/09/27 07:28:34  voba
// - new beh. _Tm3BuffStream теперь кешируется
//
// Revision 1.5  2005/02/14 15:12:01  lulin
// - изменены сигнатуры методов.
//
// Revision 1.4  2004/09/24 09:40:35  lulin
// - выводим в лог сообщения об ошибках.
//
// Revision 1.3  2004/09/24 09:36:58  lulin
// - выводим в лог сообщения об ошибках.
//
// Revision 1.2  2004/09/21 11:22:27  lulin
// - Release заменил на Cleanup.
//
// Revision 1.1  2004/09/02 08:09:49  law
// - cleanup.
//
// Revision 1.40  2004/08/19 16:49:37  law
// - более корректно обращаемся с индикатором общего процесса.
//
// Revision 1.39  2004/08/19 16:39:10  law
// - bug fix: вместо %1 в сообщении об ошибке STG_E_PATHNOTFOUND теперь тоже пишется имя файла.
//
// Revision 1.38  2004/06/01 16:51:34  law
// - удален конструктор Tl3VList.MakePersistent - пользуйтесь _Tl3ObjectRefList.
//
// Revision 1.37  2004/05/20 09:55:13  law
// - bug fix: вместо %1 в сообщении об ошибке теперь пишется имя файла.
//
// Revision 1.36  2004/05/11 12:48:40  law
// - сделан более вразумительный тип входных параметров.
//
// Revision 1.35  2002/10/16 14:13:31  narry
// - change: добавлена возможность открытия/создания потока без сжатия.
//
// Revision 1.34  2002/09/13 15:20:53  law
// - new proc: l3CompareStreams - пока без реализации.
//
// Revision 1.33  2002/06/17 14:24:15  law
// - new method: OpenStore.
//
// Revision 1.32  2002/04/05 14:13:24  law
// - optimization.
//
// Revision 1.31  2002/03/12 14:07:39  law
// - new behavior: в списках убран контроль CRC.
//
// Revision 1.30  2002/02/28 14:22:22  law
// - change behavior: изменен алгоритм поиска.
//
// Revision 1.29  2002/02/26 15:48:10  law
// - optimization: попытка оптимизации путем уменьшения фрагментации выделяемой памяти.
//
// Revision 1.28  2002/02/22 10:30:53  law
// - optimization: используем интерфейс Im3IndexedStorage.
//
// Revision 1.27  2002/01/24 16:30:25  law
// - new behavior: сделан доступ по индексу к элементам хранилища.
//
// Revision 1.26  2002/01/21 13:22:59  law
// - cleanup.
//
// Revision 1.25  2002/01/18 17:32:41  law
// - cleanup.
//
// Revision 1.24  2002/01/18 14:54:16  law
// - change: процедуры *Storage и *Stream объединены в *Store.
//
// Revision 1.23  2002/01/17 18:41:33  law
// - new behavior: сделал логику _Tm3BaseHandleList более похожей на Tl3VList.
//
// Revision 1.22  2002/01/10 16:29:18  law
// - try to optimize: получение размера потока без _Seek.
//
// Revision 1.21  2002/01/10 15:23:13  law
// - cleanup.
//
// Revision 1.20  2002/01/10 13:18:26  law
// - change data struct: PWideChar -> Tl3PCharLen.
//
// Revision 1.19  2002/01/10 08:55:39  law
// - change data struct: WideString -> Tl3String.
//
// Revision 1.18  2002/01/09 13:16:07  law
// - new behavior: для зачитывания имени элемента каталога используем Tl3String, а не WideString.
//
// Revision 1.17  2001/12/27 13:36:40  law
// - reformatting.
//
// Revision 1.16  2001/12/26 15:34:52  law
// - reformatting.
//
// Revision 1.15  2001/12/03 08:39:35  law
// - bug fix: не читался индекс из пакованного файла.
//
// Revision 1.14  2001/11/29 17:02:43  law
// - new directive: _m3NeedStorageFixer.
//
// Revision 1.13  2001/11/29 16:41:02  law
// - new behavior: Tl3MemoryChain теперь используется в _Tm3CustomHeaderStream.
//
// Revision 1.12  2001/11/29 15:46:16  law
// - bug fix: исправляем некорректное поведение индексатора после прикручивания архивирования потоков. Временная копия. Пока не работает.
//
// Revision 1.11  2001/11/02 15:11:19  law
// - change.
//
// Revision 1.10  2001/11/01 14:57:45  law
// - new directive: m3UseL3StreamAdapter.
//
// Revision 1.9  2001/11/01 14:48:28  law
// - comments: xHelpGen.
//
// Revision 1.8  2001/11/01 13:19:47  law
// - optimize.
//
// Revision 1.7  2001/10/31 10:00:33  law
// - new unit: m2InternalInterfaces.
// - new interface: _Im2StoreStat.
//
// Revision 1.6  2001/10/30 11:14:45  law
// - new class: Tm3BaseStore.
//
// Revision 1.5  2001/10/30 10:51:29  law
// - optimize : введена директива m3UseL3Memory и сделана возможность использования Tl3MemoryPool в _Tm3BuffStream. За счет этого ускорено чтение из хранилища.
// - comments: xHelpGen.
//
// Revision 1.4  2001/10/26 18:43:26  law
// - new behavior: сделал возможность для наследников от Tm3BaseHandle попадать в стек.
//
// Revision 1.3  2001/10/26 11:16:13  law
// - comments: xHelpGen.
//

{$I m3Define.inc}

interface


uses
  Windows,
  SysUtils,

  ActiveX,
  COMObj,

  Classes,

  l3Types,
  l3Base,
  {$IfDef m3UseL3Memory}
  l3Memory,
  {$EndIf m3UseL3Memory}
  l3ProtoObject,
  l3ProtoObjectRefList,

  m2InternalInterfaces,
  m2AddDbg,
  m2AddRdr,
  m2AddPrc,
  m2S32Lib,
  m2S64Lib,
  m2MEMLib,
  m2RESLib,
  m2TMPLib,
  m2COMLib,

  m3StorageInterfaces
  ;


const
  Cm3BasClaBuffSize = 32 * 1024;

  Cm3BasClaDefaultTimeOut = 300000;

  Cm3BasClaDefHeaderSize = 128-(8+Length(AnsiString('{00000000-0000-0000-0000-000000000000}')));

type
  Tm3BaseClass = class(Tl3ProtoObject)
   {* Базовый класс библиотеки m3. }
   private
     function pm_GetInstance: Pointer;
   protected
     procedure CreateContext;
       virtual;
   public
     class function IsCacheable: Bool; override;
     property Instance: Pointer
       read pm_GetInstance;
     constructor Create;
       reintroduce;
  end;//Tm3BaseClass

  Tm3BaseStore = class(Tm3BaseClass, Im2StoreStat)
   {* Базовый класс для объектов-хранилищ. }
    private
    // property fields
      FAccess : LongInt;
    protected
    // property methods
      function pm_GetAccess: Longint;
        virtual;
        {* - режим доступа. Для перекрытия в потомках. }
      function pm_GetLocksSupported: Longint;
        virtual;
        {* - какие замки поддерживаются? Для перекрытия в потомках. }
   function pm_GetPosition: Int64;
        virtual;
     {-}
      function pm_GetSize: Int64;
        virtual;
        {* - размер. Для перекрытия в потомках. }
    protected
    // internal methods
      procedure StatStgMode(out   AResult: LongInt;
                            var   AReturn: HRESULT
                            );
        {* - режим доступа. }
      procedure StatStgLocks(out   AResult: LongInt;
                             var   AReturn: HRESULT);
        {* - какие замки поддерживаются? }
      procedure StatStgSize(var AResult: Int64;
                            var AReturn: HRESULT);
        {* - размер. }                    
    protected
    // internal properties
      property _Access: LongInt
        read FAccess;
        {* - режим доступа. }
    public
    // public methods
     constructor Create(const anAccess: LongInt);
       reintroduce;
       {-}
    public
    // public methods
      function ReadOnly: Boolean;
        {* - только для чтения? }
  end;//Tm3BaseStore

  Tm3BaseStorage = class(Tm3BaseStore, IStorage)
   {* Базовый класс для реализации IStorage. }
    private
    // IStorage
      function IStorage.CreateStream=COMCreateStream;
      function IStorage.OpenStream=COMOpenStream;
      function IStorage.CreateStorage=COMCreateStorage;
      function IStorage.OpenStorage=COMOpenStorage;
      function IStorage.CopyTo=COMCopyTo;
      function IStorage.MoveElementTo=COMMoveElementTo;
      function IStorage.Commit=COMCommit;
      function IStorage.Revert=COMRevert;
      function IStorage.EnumElements=COMEnumElements;
      function IStorage.DestroyElement=COMDestroyElement;
      function IStorage.RenameElement=COMRenameElement;
      function IStorage.SetElementTimes=COMSetElementTimes;
      function IStorage.SetClass=COMSetClass;
      function IStorage.SetStateBits=COMSetStateBits;
      function IStorage.Stat=COMStat;
    protected
      function  GetPseudoRootName: PWideChar;
        {-}
      procedure CreateStore(const AName   : Tl3PCharLen;
                            anAccess      : Tm3StoreAccess;
                            aStoreType    : Tm3StoreType;
                            var   AStream : IUnknown;
                            var   AReturn : HRESULT;
                            aUseCompression : Bool = true);
        overload;
        virtual;
        {-}
      procedure OpenStore(const AName   : Tl3PCharLen;
                          anAccess      : Tm3StoreAccess;
                          aStoreType    : Tm3StoreType;
                          var   AStream : IUnknown;
                          var   AReturn : HRESULT;
                          aUseCompression : Bool = true);
        overload;                  
        virtual;
        {-}
      procedure CopyTo(const AExcludeCount: LongInt;
                       const AExcludeArray: PIID;
                       const AExcludeSNB: TSNB;
                       const AStorage: IStorage;
                       var   AReturn: HRESULT);
        virtual;
        {-}
      procedure MoveElementTo(const ASrcName : Tl3PCharLen;
                              const AStorage : IStorage;
                              const ADstName : PWideChar;
                              const AFlags   : LongInt;
                              var   AReturn  : HRESULT);
        virtual;
        {-}
          procedure         Commit              (const AFlags: LongInt;
                                                 var   AReturn: HRESULT
                                                ); virtual;

          procedure         Revert              (var   AReturn: HRESULT
                                                ); virtual;


          procedure         EnumElements        (var   AEnumStatStg: IEnumStatStg;
                                                 var   AReturn: HRESULT
                                                ); virtual;


      procedure DestroyElement(const AName   : Tl3PCharLen;
                               var   AReturn : HRESULT);
        virtual;
        {-}
      procedure RenameElement(const AOldName : Tl3PCharLen;
                              const ANewName : Tl3PCharLen;
                              var   AReturn  : HRESULT);
        virtual;
        {-}
          procedure         SetElementTimes     (const AName: PWideChar;
                                                 const ACTime: TFileTime;
                                                 const AATime: TFileTime;
                                                 const AMTime: TFileTime;
                                                 var   AReturn: HRESULT
                                                ); virtual;


          procedure         SetClass            (const ACLSID: TCLSID;
                                                 var   AReturn: HRESULT
                                                ); virtual;


          procedure         SetStateBits        (const AStateBits: LongInt;
                                                 const AMask: LongInt;
                                                 var   AReturn: HRESULT
                                                ); virtual;


          procedure         Stat                (var   AStatStg: TStatStg;
                                                 const AStatFlag: LongInt;
                                                 var   AReturn: HRESULT
                                                ); virtual;

          procedure         StatStgName         (var   AResult: PWideChar;
                                                 var   AReturn: HRESULT
                                                ); virtual;

          procedure         StatStgType         (var   AResult: LongInt;
                                                 var   AReturn: HRESULT
                                                ); virtual;

          procedure         StatStgCLSID        (var   AResult: TCLSID;
                                                 var   AReturn: HRESULT
                                                ); virtual;

          procedure         StatStgStateBits    (var   AResult: LongInt;
                                                 var   AReturn: HRESULT
                                                ); virtual;


    public


    class function          HeaderID            (
                                                ): TCLSID; virtual;


          function          COMCreateStream     (      AName: PWideChar;
                                                       AStatStgMode: LongInt;
                                                       _unused1: LongInt;
                                                       _unused2: LongInt;
                                                 out   AStream: IStream
                                                ): HRESULT; stdcall;

          function          COMOpenStream       (      AName: PWideChar;
                                                       _unused1: Pointer;
                                                       AStatStgMode: LongInt;
                                                       _unused2: LongInt;
                                                 out   AStream: IStream
                                                ): HRESULT; stdcall;


          function          COMCreateStorage    (      AName: PWideChar;
                                                       AStatStgMode: LongInt;
                                                       _unused1: LongInt;
                                                       _unused2: LongInt;
                                                 out   AStorage: IStorage
                                                ): HRESULT; stdcall;

          function          COMOpenStorage      (      AName: PWideChar;
                                                 const _unused1: IStorage;
                                                       AStatStgMode: LongInt;
                                                       _unused2: TSNB;
                                                       _unused3: LongInt;
                                                 out   AStorage: IStorage
                                                ): HRESULT; stdcall;


          function          COMCopyTo           (      AExcludeCount: LongInt;
                                                       AExcludeArray: PIID;
                                                       AExcludeSNB: TSNB;
                                                 const AStorage: IStorage
                                                ): HRESULT; stdcall;

          function          COMMoveElementTo    (      ASrcName: PWideChar;
                                                 const AStorage: IStorage;
                                                       ADstName: PWideChar;
                                                       AFlags: LongInt
                                                ): HRESULT; stdcall;


          function          COMCommit           (      AFlags: LongInt
                                                ): HRESULT; stdcall;

          function          COMRevert           (
                                                ): HRESULT; stdcall;


          function          COMEnumElements     (      _unused1: LongInt;
                                                       _unused2: Pointer;
                                                       _unused3: LongInt;
                                                 out   AEnumStatStg: IEnumStatStg
                                                ): HRESULT; stdcall;


          function          COMDestroyElement   (      AName: PWideChar
                                                ): HRESULT; stdcall;

          function          COMRenameElement    (      AOldName: PWideChar;
                                                       ANewName: PWideChar
                                                ): HRESULT; stdcall;


          function          COMSetElementTimes  (      AName: PWideChar;
                                                 const ACTime: TFileTime;
                                                 const AATime: TFileTime;
                                                 const AMTime: TFileTime
                                                ): HRESULT; stdcall;


          function          COMSetClass         (const ACLSID: TCLSID
                                                ): HRESULT; stdcall;


          function          COMSetStateBits     (      AStateBits: LongInt;
                                                       AMask: LongInt
                                                ): HRESULT; stdcall;

          function          COMStat             (out   AStatStg: TStatStg;
                                                       AStatFlag: LongInt
                                                ): HRESULT; stdcall;


  end;//Tm3BaseStorage


        Tm3BaseEnumStatStg=       class(Tm3BaseClass,IEnumStatStg)
         {* Базовый класс для реализации IEnumStatStg. }
         private


                function          IEnumStatStg.Next=COMNext;
                function          IEnumStatStg.Skip=COMSkip;
                function          IEnumStatStg.Reset=COMReset;
                function          IEnumStatStg.Clone=COMClone;


         protected


                procedure         Next                (const ACount: LongInt;
                                                       const ABuff: PStatStg;
                                                       const AResult: PLongInt;
                                                       var   AReturn: HRESULT
                                                      ); virtual;

                procedure         Skip                (const ACount: LongInt;
                                                       var   AReturn: HRESULT
                                                      ); virtual;


                procedure         Reset               (var   AReturn: HRESULT
                                                      ); virtual;


                procedure         Clone               (var   AEnumStatStg: IEnumStatStg;
                                                       var   AReturn: HRESULT
                                                      ); reintroduce; virtual;


         public


                function          COMNext             (      ACount: LongInt;
                                                       out   ABuff;
                                                             AResult: PLongInt
                                                      ): HRESULT; stdcall;

                function          COMSkip             (      ACount: LongInt
                                                      ): HRESULT; stdcall;


                function          COMReset            (
                                                      ): HRESULT; stdcall;


                function          COMClone            (out   AEnumStatStg: IEnumStatStg
                                                      ): HRESULT; stdcall;


         end;


        Tm3TempEnumStatStg=       class(Tm3BaseEnumStatStg)
         private


          _Status:                LongWord;


                function          InitProc00000001    (const ABitMask: LongWord;
                                                       const AStream: IStream
                                                      ): LongWord;

                procedure         DoneProc00000001    (
                                                      );


                function          InitProc00000002    (const ABitMask: LongWord;
                                                       const AItemsCount: LongInt
                                                      ): LongWord;

                procedure         DoneProc00000002    (
                                                      );


         private


          FStream:                IStream;

          FItemsCount:            LongInt;
          FItemsIndex:            LongInt;


         protected


                procedure         Next                (const ACount: LongInt;
                                                       const ABuff: PStatStg;
                                                       const AResult: PLongInt;
                                                       var   AReturn: HRESULT
                                                      ); override;

                procedure         Skip                (const ACount: LongInt;
                                                       var   AReturn: HRESULT
                                                      ); override;


                procedure         Reset               (var   AReturn: HRESULT
                                                      ); override;


         public


          class function          MakeInterface       (const AStream: IStream;
                                                       const AItemsCount: LongInt
                                                      ): IEnumStatStg;

          class function          MakeSafeInterface   (out   AResult: IEnumStatStg;
                                                       const AStream: IStream;
                                                       const AItemsCount: LongInt
                                                      ): HRESULT;


                constructor       Create              (const AStream: IStream;
                                                       const AItemsCount: LongInt
                                                      );

                procedure Cleanup;
                  override;
                  {-}
         end;


  Tm3BaseStream=            class(Tm3BaseStore, IStream)
   {* Базовый класс для реализации IStream. }
     private
       function          IStream.Read=COMRead;
       function          IStream.Write=COMWrite;
       function          IStream.Seek=COMSeek;
       function          IStream.SetSize=COMSetSize;
       function          IStream.LockRegion=COMLockRegion;
       function          IStream.UnlockRegion=COMUnlockRegion;
       function          IStream.Stat=COMStat;
       function          IStream.Commit=COMCommit;
       function          IStream.Revert=COMRevert;
       function          IStream.Clone=COMClone;
       function          IStream.CopyTo=COMCopyTo;
   protected

          procedure         Read                (ABuff: Pointer;
                                                 ASize: LongInt;
                                                 var   AResult: LongInt;
                                                 var   AReturn: HRESULT
                                                ); virtual;

          procedure         Write               (ABuff: Pointer;
                                                 ASize: LongInt;
                                                 var   AResult: LongInt;
                                                 var   AReturn: HRESULT
                                                ); virtual;


          procedure         Seek                (AOffset     : Int64;
                                                 AOrigin     : TSeekOrigin;
                                                 var AResult : Int64;
                                                 var AReturn : HRESULT
                                                ); virtual;


          procedure         SetSize             (ASize: Int64;
                                                 var   AReturn: HRESULT
                                                ); virtual;


          procedure         LockRegion          (AOffset: Int64;
                                                 ASize: Int64;
                                                 ALockType: LongInt;
                                                 var   AReturn: HRESULT
                                                ); virtual;

          procedure         UnlockRegion        (AOffset: Int64;
                                                 ASize: Int64;
                                                 ALockType: LongInt;
                                                 var   AReturn: HRESULT
                                                ); virtual;


          procedure         Stat                (var   AStatStg: TStatStg;
                                                 AStatFlag: LongInt;
                                                 var   AReturn: HRESULT
                                                ); virtual;

          procedure         StatStgName         (var   AResult: PWideChar;
                                                 var   AReturn: HRESULT
                                                ); virtual;

          procedure         StatStgType         (var   AResult: LongInt;
                                                 var   AReturn: HRESULT
                                                ); virtual;

   function pm_GetPosition: Int64;
        override;
          function pm_GetSize: Int64;
            override;
            {-}
          procedure         Commit              (AFlags: LongInt;
                                                 var   AReturn: HRESULT
                                                ); virtual;

          procedure         Revert              (var   AReturn: HRESULT
                                                ); virtual;


          procedure         Clone               (var   AStream: IStream;
                                                 var   AReturn: HRESULT
                                                ); reintroduce; virtual;


          procedure         CopyTo              (const AStream: IStream;
                                                 ASize: Int64;
                                                 var   ARead: Int64;
                                                 var   AWritten: Int64;
                                                 var   AReturn: HRESULT
                                                ); virtual;


   public
   // public methods

          function          COMRead             (      ABuff: Pointer;
                                                       ASize: LongInt;
                                                       AResult: PLongInt
                                                ): HRESULT; stdcall;

          function          COMWrite            (      ABuff: Pointer;
                                                       ASize: LongInt;
                                                       AResult: PLongInt
                                                ): HRESULT; stdcall;


          function          COMSeek             (      AOffset: Int64;
                                                       AOrigin: LongInt;
                                                 out   AResult: Int64
                                                ): HRESULT; stdcall;


          function          COMSetSize          (      ASize: Int64
                                                ): HRESULT; stdcall;


          function          COMLockRegion       (      AOffset: Int64;
                                                       ASize: Int64;
                                                       ALockType: LongInt
                                                ): HRESULT; stdcall;

          function          COMUnlockRegion     (      AOffset: Int64;
                                                       ASize: Int64;
                                                       ALockType: LongInt
                                                ): HRESULT; stdcall;


          function          COMStat             (out   AStatStg: TStatStg;
                                                       AStatFlag: LongInt
                                                ): HRESULT; stdcall;


          function          COMCommit           (      AFlags: LongInt
                                                ): HRESULT; stdcall;

          function          COMRevert           (
                                                ): HRESULT; stdcall;


          function          COMClone            (out   AStream: IStream
                                                ): HRESULT; stdcall;


          function          COMCopyTo           (      AStream: IStream;
                                                       ASize: Int64;
                                                 out   ARead: Int64;
                                                 out   AWritten: Int64
                                                ): HRESULT; stdcall;
  end;//Tm3BaseStream

        Tm3FileStreamMapView = class;

        Tm3FileStream = class(Tm3BaseStream)
         {* Файловый поток. }
         private
          FHandle:                THandle;

          procedure SysCheck(const AResult: LongBool);
         protected
          property _Handle: THandle read FHandle;


          procedure Read        (ABuff: Pointer;
                                 ASize: LongInt;
                                 var   AResult: LongInt;
                                 var   AReturn: HRESULT
                                ); override;

          procedure Write       (ABuff: Pointer;
                                 ASize: LongInt;
                                 var   AResult: LongInt;
                                 var   AReturn: HRESULT
                                ); override;


          procedure Seek        (AOffset       : Int64;
                                 AOrigin       : TSeekOrigin;
                                 var   AResult : Int64;
                                 var   AReturn : HRESULT
                                ); override;


          procedure SetSize     (ASize: Int64;
                                 var   AReturn: HRESULT
                                ); override;


          procedure LockRegion  (AOffset: Int64;
                                 ASize: Int64;
                                 ALockType: LongInt;
                                 var   AReturn: HRESULT
                                ); override;

          procedure UnlockRegion(AOffset: Int64;
                                 ASize: Int64;
                                 ALockType: LongInt;
                                 var   AReturn: HRESULT
                                ); override;

          function pm_GetSize: Int64;
            override;
            {-}

          function pm_GetLocksSupported: Longint;
            override;
            {-}

          procedure Commit(AFlags: LongInt; var  AReturn: HRESULT); override;

         public
          class function MakeInterface       (const AName: WideString;
                                              const AAccess: LongWord;
                                              const ASharedMode: LongWord;
                                              const ADistribution: LongWord;
                                              const AFlags: LongWord
                                             ): IStream;

          class function MakeSafeInterface   (out   AResult: IStream;
                                              const AName: WideString;
                                              const AAccess: LongWord;
                                              const ASharedMode: LongWord;
                                              const ADistribution: LongWord;
                                              const AFlags: LongWord
                                             ): HRESULT;


          constructor Create(const AName: WideString;
                             const AAccess: LongWord;
                             const ASharedMode: LongWord;
                             const ADistribution: LongWord;
                             const AFlags: LongWord
                             );

          procedure Cleanup;
           override;
           {-}
          function  CreateMapView(const AProtect : LongWord;
                                  const AAccess  : LongWord): Tm3FileStreamMapView;
           {-}
         end;


        Tm3TempStream=            class(Tm3FileStream)
         {* Поток во временном файле. }
         private


         protected


         public


          class function          MakeInterface       (const APath: WideString = '';
                                                       const AExt: WideString = ''
                                                      ): IStream;

          class function          MakeSafeInterface   (out   AResult: IStream;
                                                       const APath: WideString = '';
                                                       const AExt: WideString = ''
                                                      ): HRESULT;


                constructor       Create              (const APath: WideString = '';
                                                       const AExt: WideString = ''
                                                      );


         end;


        Tm3CustomStream=          class(Tm3BaseStream)
         {* Поток со ссылкой на другой. }
         private


          _Status:                LongWord;


                function          InitProc00000001    (const ABitMask: LongWord;
                                                       const AStream: IStream
                                                      ): LongWord;

                procedure         DoneProc00000001    (
                                                      );


         private


          FStream:                IStream;


         protected


                property          _Stream: IStream read FStream;


         public


                constructor       Create              (const AStream: IStream;
                                                       const AAccess: LongInt
                                                      );

                procedure Cleanup;
                  override;
                  {-}
         end;


        Tm3CustomHeaderStream=    class(Tm3CustomStream)
         {* Поток с заголовком-идентификатором. }
         private


          _Status:                LongWord;


                function          InitProc00000001    (const ABitMask: LongWord
                                                      ): LongWord;

                procedure         DoneProc00000001    (
                                                      );


                function          InitProc00000002    (const ABitMask: LongWord
                                                      ): LongWord;

                procedure         DoneProc00000002    (
                                                      );


                function          InitProc00000004    (const ABitMask: LongWord
                                                      ): LongWord;

                procedure         DoneProc00000004    (
                                                      );


                function          InitProc00000008    (const ABitMask: LongWord
                                                      ): LongWord;

                procedure         DoneProc00000008    (
                                                      );


                function          InitProc00000010    (const ABitMask: LongWord
                                                      ): LongWord;

                procedure         DoneProc00000010    (
                                                      );


         protected


                procedure         CreateContext       (
                                                      ); override;


         private
          FHeaderData:            Pointer;
          FHeaderDataCompare:     Pointer;
          FHeaderDataSize:        LongInt;

          FHeaderFullSize:        LongInt;

          FHeaderSize:            LongInt;

          FHeaderLoaded:          LongInt;
          FHeaderLocked:          LongInt;


         protected
           procedure Cleanup;
                  override;
                  {-}


                property          _HeaderData: Pointer read FHeaderData;


                function          InitHeaderData      (
                                                      ): Pointer; virtual; abstract;

                function          InitHeaderDataSize  (
                                                      ): LongInt; virtual; abstract;

                function          InitHeaderFullSize  (
                                                      ): LongInt; virtual; abstract;


                procedure         DefaultInitAction   (
                                                      ); virtual;

                procedure         DefaultDoneAction   (
                                                      ); virtual;


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


                procedure         Seek                (AOffset       : Int64;
                                                       AOrigin       : TSeekOrigin;
                                                       var   AResult : Int64;
                                                       var   AReturn : HRESULT
                                                      ); override;


                procedure         SetSize             (ASize: Int64;
                                                       var   AReturn: HRESULT
                                                      ); override;


                procedure         LockRegion          (AOffset: Int64;
                                                       ASize: Int64;
                                                       ALockType: LongInt;
                                                       var   AReturn: HRESULT
                                                      ); override;

                procedure         UnlockRegion        (AOffset: Int64;
                                                       ASize: Int64;
                                                       ALockType: LongInt;
                                                       var   AReturn: HRESULT
                                                      ); override;


          function pm_GetSize: Int64;
            override;
            {-}

      function pm_GetLocksSupported: Longint;
        override;
        {-}
      procedure StatStgName(var   AResult : PWideChar;
                            var   AReturn : HRESULT);
        override;
        {-}

         public


          class function          HeaderID            (
                                                      ): TCLSID; virtual; abstract;


                constructor       Create              (const AStream: IStream;
                                                       const AAccess: LongInt
                                                      );
                  {* - создает поток c заголовком вокруг потока aStream. }                                    

                procedure         LoadHeader          (
                                                      );
                  {* - загружает заголовок в память. }                                    

                procedure         SaveHeader          (const AForcedSave: LongBool = False
                                                      );
                  {* - сохраняет заголовок. }


                procedure         LockHeader          (
                                                      );
                  {* - закрывает заголовок. }                                    

                procedure         UnlockHeader        (
                                                      );
                  {* - открывает заголовок. }                                    


         end;//Tm3CustomHeaderStream

        Tm3BuffStream = class(Tm3CustomStream)
         {* Буферизованный поток. }
         private
          FRealSize:              Int64;

          {$IfDef m3UseL3Memory}
          f_Buff                : Tl3BufferStreamMemoryPool;
          {$Else  m3UseL3Memory}
          FBuff:                  Pointer;
          {$EndIf m3UseL3Memory}
          FBuffSize:              LongInt;

          FBuffCurPos:            Int64;
          FBuffEndPos:            Int64;
          FBuffOffset:            LongInt;

          FBuffModifed:           LongBool;


          procedure LoadBuff;
          procedure SaveBuff;

         protected


          procedure Read    (ABuff: Pointer;
                             ASize: LongInt;
                             var   AResult: LongInt;
                             var   AReturn: HRESULT
                            ); override;

          procedure Write   (ABuff: Pointer;
                             ASize: LongInt;
                             var   AResult: LongInt;
                             var   AReturn: HRESULT
                            ); override;

          procedure Seek    (AOffset       : Int64;
                             AOrigin       : TSeekOrigin;
                             var   AResult : Int64;
                             var   AReturn : HRESULT
                            ); override;

          procedure SetSize (ASize: Int64;
                             var   AReturn: HRESULT
                            ); override;

          function pm_GetSize: Int64;
            override;
            {-}

         public
          class function MakeInterface(const AStream: IStream): IStream;

(*          class function MakeSafeInterface(out   AResult: IStream;
                                           const AStream: IStream): HRESULT;*)

          constructor Create (const AStream: IStream);

          procedure Release;
           override;
           {-}

          procedure BeforeRelease;
            override;
            {-}

          class function IsCacheable: Bool; override;
         end;//Tm3BuffStream

        Tm3FileStreamMapView=     class(Tm3BaseClass)
         private


          _Status:                LongWord;


                function          InitProc00000001    (const ABitMask: LongWord;
                                                       const AStream: Tm3FileStream
                                                      ): LongWord;

                procedure         DoneProc00000001    (
                                                      );


                function          InitProc00000002    (const ABitMask: LongWord;
                                                       const AProtect: LongWord
                                                      ): LongWord;

                procedure         DoneProc00000002    (
                                                      );


                function          InitProc00000004    (const ABitMask: LongWord;
                                                       const AAccess: LongWord
                                                      ): LongWord;

                procedure         DoneProc00000004    (
                                                      );


         protected


                procedure         CreateContext       (
                                                      ); override;


         private


          FHandle:                THandle;
          FStream:                Tm3FileStream;

          FMemBase:               Pointer;
          FMemSize:               LongInt;


                function          pm_GetMemSize       (
                                                      ): LongInt;


         protected


         public


                property          MemBase: Pointer read FMemBase;
                property          MemSize: LongInt read pm_GetMemSize;


                constructor       Create              (const AStream: Tm3FileStream;
                                                       const AProtect: LongWord;
                                                       const AAccess: LongWord
                                                      );

                procedure Cleanup;
                  override;
                  {-}
         end;//Tm3FileStreamMapView


        Tm3BaseList=              class(Tl3ProtoObjectRefList)
         {* Базовый список. }
         protected


                procedure         pm_SetCount         (      ACount: LongInt
                                                      ); override;


                procedure         AllocItem           (var   AItem: Pointer
                                                      ); virtual; abstract;

                procedure         AssignItem          (const AItem1: Pointer;
                                                       const AItem2: Pointer
                                                      ); virtual; abstract;


                procedure         LoadItem            (const AStream: IStream;
                                                       const AItem: Pointer
                                                      ); virtual;

                procedure         SaveItem            (const AStream: IStream;
                                                       const AItem: Pointer
                                                      ); virtual;


                function          CompareKeyByItem    (const AKey: Pointer;
                                                       const AItem: Pointer
                                                      ): Integer; virtual;

                function          FindItemByKey       (const AKey     : Pointer;
                                                       var   theIndex : LongInt
                                                      ): LongBool;


         public
                constructor Create; reintroduce;
                procedure Assign(const ASource: Tm3BaseList); reintroduce;
                procedure LoadFromStream(const AStream: IStream; const APosition: Int64);

                function SaveToStream(const AStream: IStream): Int64;
                  {-}

                class function IsCacheable: Bool; override;

         end;


        Tm3BaseListHandle=        class(Tm3BaseClass)
         private


         protected


                procedure         LoadBuff            (const AStream: IStream;
                                                       const ABuff: Pointer;
                                                       const ASize: LongInt
                                                      );

                procedure         SaveBuff            (const AStream: IStream;
                                                       const ABuff: Pointer;
                                                       const ASize: LongInt
                                                      );


                procedure         LoadAnsiString      (const AStream: IStream;
                                                       var   AString: AnsiString
                                                      );

                procedure         SaveAnsiString      (const AStream: IStream;
                                                       const AString: AnsiString
                                                      );


                procedure         LoadWideString      (const AStream: IStream;
                                                       var   AString: WideString
                                                      );
                  overload;
                procedure         LoadWideString      (const AStream : IStream;
                                                       aString       : Tl3String
                                                      );
                  overload;

                procedure         SaveWideString      (const AStream: IStream;
                                                       const AString: WideString
                                                      );
                  overload;
                procedure         SaveWideString      (const AStream : IStream;
                                                       aString       : Tl3String);
                  overload;
                function  GetInnerData: Pointer;
                  virtual;
                  {-}
                function  GetInnerDataSize: Longint;
                  virtual;
                  {-}
                procedure BeforeAddToCache;
                  override;
                  {-}

         public


                procedure         AssignHandle        (const AItem: Tm3BaseListHandle
                                                      ); virtual; abstract;


                procedure         LoadHandle          (const AStream: IStream);
                  virtual;

                procedure         SaveHandle          (const AStream: IStream);
                  virtual;


         end;


        Tm3BaseHandleList=        class(Tm3BaseList)
         private


         protected


                procedure         AssignItem          (const AItem1: Pointer;
                                                       const AItem2: Pointer
                                                      ); override;


                procedure         LoadItem            (const AStream: IStream;
                                                       const AItem: Pointer
                                                      ); override;

                procedure         SaveItem            (const AStream: IStream;
                                                       const AItem: Pointer
                                                      ); override;

         end;

implementation

uses
  StrUtils,
  
  l3Chars,
  l3String
  ; 

const
  CBuffSize = 65536;
  
{$IfDef m3UseL3Memory}
var
  m3HeaderBuffers : Pl3MemoryChain = nil;
  m3CopyBuffers   : Pl3MemoryChain = nil;
{$EndIf m3UseL3Memory}

 const
        CAnyGUIDLength=           Length(AnsiString('{00000000-0000-0000-0000-000000000000}'));


 type
        PI32Key=                  ^TI32Key;
        TI32Key=                  packed record

                                   RValue: LongInt;

                                  end;


        PI64Key=                  ^TI64Key;
        TI64Key=                  packed record

                                   RValue: Int64;

                                  end;


        PASTKey=                  ^TASTKey;
        TASTKey=                  packed record

                                   RValue: AnsiString;

                                  end;


        PWSTKey=                  ^TWSTKey;
        TWSTKey=                  packed record

                                   RValue: WideString;

                                  end;

// start class Tm3BaseClass

function Tm3BaseClass.pm_GetInstance: Pointer;
begin
 Result:=Self;
end;

procedure Tm3BaseClass.CreateContext;
begin
end;

class function Tm3BaseClass.IsCacheable: Bool;
begin
 //Result := false;
 Result := true;
end;

constructor Tm3BaseClass.Create;
begin
 try
  inherited Create;
  CreateContext;
 except
  on E : Exception do
  begin
   l3System.Exception2Log(E);
   raise;
  end;//on E : Exception
 end;//try..except
end;

// start class Tm3BaseStorage

function Tm3BaseStorage.GetPseudoRootName: PWideChar;
begin
 Result := ':ROOT:';
end;

procedure Tm3BaseStorage.CreateStore(const AName   : Tl3PCharLen;
                                     anAccess      : Tm3StoreAccess;
                                     aStoreType    : Tm3StoreType;
                                     var   AStream : IUnknown;
                                     var   AReturn : HRESULT;
                                     aUseCompression : Bool = true);
  //virtual;
  {-}
begin
 if SUCCEEDED(AReturn) then
  AReturn:=E_NOTIMPL;
end;

procedure Tm3BaseStorage.OpenStore(const AName   : Tl3PCharLen;
                                   anAccess      : Tm3StoreAccess;
                                   aStoreType    : Tm3StoreType;
                                   var   AStream : IUnknown;
                                   var   AReturn : HRESULT;
                                   aUseCompression : Bool = true);
  //virtual;
  {-}
begin
 if SUCCEEDED(AReturn) then
  AReturn:=E_NOTIMPL;
end;

 procedure   Tm3BaseStorage.CopyTo(const AExcludeCount: LongInt;
                                   const AExcludeArray: PIID;
                                   const AExcludeSNB: TSNB;
                                   const AStorage: IStorage;
                                   var   AReturn: HRESULT
                                  );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

procedure Tm3BaseStorage.MoveElementTo(const ASrcName : Tl3PCharLen;
                                       const AStorage : IStorage;
                                       const ADstName : PWideChar;
                                       const AFlags   : LongInt;
                                       var   AReturn  : HRESULT);
begin
 if SUCCEEDED(AReturn) then
  AReturn:=E_NOTIMPL;
end;

 procedure   Tm3BaseStorage.Commit(const AFlags: LongInt;
                                   var   AReturn: HRESULT
                                  );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

 procedure   Tm3BaseStorage.Revert(var   AReturn: HRESULT
                                  );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

 procedure   Tm3BaseStorage.EnumElements(var   AEnumStatStg: IEnumStatStg;
                                         var   AReturn: HRESULT
                                        );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

procedure Tm3BaseStorage.DestroyElement(const AName   : Tl3PCharLen;
                                        var   AReturn : HRESULT);
begin
 if SUCCEEDED(AReturn) then
  AReturn:=E_NOTIMPL;
end;

procedure Tm3BaseStorage.RenameElement(const AOldName : Tl3PCharLen;
                                       const ANewName : Tl3PCharLen;
                                       var   AReturn  : HRESULT);
begin
 if SUCCEEDED(AReturn) then
  AReturn:=E_NOTIMPL;
end;

 procedure   Tm3BaseStorage.SetElementTimes(const AName: PWideChar;
                                            const ACTime: TFileTime;
                                            const AATime: TFileTime;
                                            const AMTime: TFileTime;
                                            var   AReturn: HRESULT
                                           );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

 procedure   Tm3BaseStorage.SetClass(const ACLSID: TCLSID;
                                     var   AReturn: HRESULT
                                    );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

 procedure   Tm3BaseStorage.SetStateBits(const AStateBits: LongInt;
                                         const AMask: LongInt;
                                         var   AReturn: HRESULT
                                        );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

 procedure   Tm3BaseStorage.Stat(var   AStatStg: TStatStg;
                                 const AStatFlag: LongInt;
                                 var   AReturn: HRESULT
                                );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     with AStatStg do
      begin

       if (AStatFlag = STATFLAG_NONAME)
        then
        else
         begin

          StatStgName(pwcsName,AReturn);

         end;

       StatStgType(dwType,AReturn);
       StatStgSize(cbSize,AReturn);
       StatStgMode(grfMode,AReturn);

       StatStgCLSID(clsid,AReturn);
       StatStgStateBits(grfStateBits,AReturn);

      end;

    end;

 end;

 procedure   Tm3BaseStorage.StatStgName(var   AResult: PWideChar;
                                        var   AReturn: HRESULT
                                       );
 begin
 end;

 procedure   Tm3BaseStorage.StatStgType(var   AResult: LongInt;
                                        var   AReturn: HRESULT
                                       );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AResult:=STGTY_STORAGE;

    end;

 end;

 procedure   Tm3BaseStorage.StatStgCLSID(var   AResult: TCLSID;
                                         var   AReturn: HRESULT
                                        );
 begin
 end;

 procedure   Tm3BaseStorage.StatStgStateBits(var   AResult: LongInt;
                                             var   AReturn: HRESULT
                                            );
 begin
 end;

 class
 function    Tm3BaseStorage.HeaderID(
                                    ): TCLSID;
 begin

  Result:=TCLSID(GUID_NULL);

 end;
                                     
 function    Tm3BaseStorage.COMCreateStream(      AName: PWideChar;
                                                  AStatStgMode: LongInt;
                                                  _unused1: LongInt;
                                                  _unused2: LongInt;
                                            out   AStream: IStream
                                           ): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    STG_E_INVALIDFUNCTION,
    STG_E_TOOMANYOPENFILES,
    STG_E_ACCESSDENIED,
    STG_E_INSUFFICIENTMEMORY,
    STG_E_INVALIDPOINTER,
    STG_E_FILEALREADYEXISTS,
    STG_E_INVALIDPARAMETER,
    STG_E_INVALIDNAME,
    STG_E_INVALIDFLAG,
    STG_E_REVERTED:           begin

                               Result:=AErrorCode;

                              end;

    else                      begin

                               Result:=E_UNEXPECTED;

                              end;

   end;

  end;

 var
        LStream:                  IStream;
 begin

  Result:=S_OK;
   try

    LStream:=nil;
     try

      if ((_unused1 <> 0) or (_unused2 <> 0))
       then
        begin

         Result:=STG_E_INVALIDPARAMETER;

        end
       else
        begin
         if m2COMCheckAccess(_Access,m2COMModeAccess(AStatStgMode))
          then
           CreateStore(l3PCharLen(AName), AStatStgMode, STGTY_STREAM, IUnknown(LStream), Result)
          else
           Result:=STG_E_ACCESSDENIED;
        end;

     finally

      if (@AStream <> nil)
       then
        begin

         AStream:=LStream;

        end;

     end;

   except

    on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
    on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);

   else

    Result:=E_UNEXPECTED;

   end;

 end;

function    Tm3BaseStorage.COMOpenStream(AName        : PWideChar;
                                         _unused1     : Pointer;
                                         AStatStgMode : LongInt;
                                         _unused2     : LongInt;
                                         out AStream  : IStream): HRESULT;

 function    __ValidErrorCode(const AErrorCode: HRESULT
                             ): HRESULT;
 begin

  case AErrorCode of

   STG_E_INVALIDFUNCTION,
   STG_E_FILENOTFOUND,
   STG_E_TOOMANYOPENFILES,
   STG_E_ACCESSDENIED,
   STG_E_INSUFFICIENTMEMORY,
   STG_E_INVALIDPOINTER,
   STG_E_INVALIDPARAMETER,
   STG_E_INVALIDNAME,
   STG_E_INVALIDFLAG,
   STG_E_REVERTED:           begin

                              Result:=AErrorCode;

                             end;

   else                      begin

                              Result:=E_UNEXPECTED;

                             end;

  end;

 end;

var
 l_Stream : IStream;
begin//COMOpenStream
 Result:=S_OK;
 try
  l_Stream:=nil;
  try
   if ((_unused1 <> nil) or (_unused2 <> 0)) then
    Result:=STG_E_INVALIDPARAMETER
   else if m2COMCheckAccess(_Access,m2COMModeAccess(AStatStgMode)) then
    OpenStore(l3PCharLen(AName), AStatStgMode, STGTY_STREAM, IUnknown(l_Stream), Result)
   else
    Result:=STG_E_ACCESSDENIED;
  finally
   if (@AStream <> nil) then
    AStream := l_Stream;
  end;//try..finally
 except
  on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
  on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);
  else
   Result:=E_UNEXPECTED;
 end;//try..except
end;//COMOpenStream

function    Tm3BaseStorage.COMCreateStorage(      AName: PWideChar;
                                                  AStatStgMode: LongInt;
                                                  _unused1: LongInt;
                                                  _unused2: LongInt;
                                            out   AStorage: IStorage
                                           ): HRESULT;

 function    __ValidErrorCode(const AErrorCode: HRESULT
                             ): HRESULT;
 begin

  case AErrorCode of

   STG_E_INVALIDFUNCTION,
   STG_E_TOOMANYOPENFILES,
   STG_E_ACCESSDENIED,
   STG_E_INSUFFICIENTMEMORY,
   STG_E_INVALIDPOINTER,
   STG_E_FILEALREADYEXISTS,
   STG_E_INVALIDPARAMETER,
   STG_E_INVALIDNAME,
   STG_E_INVALIDFLAG,
   STG_E_REVERTED:           begin

                              Result:=AErrorCode;

                             end;

   else                      begin

                              Result:=E_UNEXPECTED;

                             end;

  end;

 end;

var
 LStorage : IStorage;
begin
 Result:=S_OK;
 try
  LStorage:=nil;
  try
   if ((_unused1 <> 0) or (_unused2 <> 0)) then
    Result:=STG_E_INVALIDPARAMETER
   else if m2COMCheckAccess(_Access,m2COMModeAccess(AStatStgMode)) then
    CreateStore(l3PCharLen(AName), AStatStgMode, STGTY_STORAGE, IUnknown(LStorage), Result)
   else
    Result:=STG_E_ACCESSDENIED;
  finally
   if (@AStorage <> nil) then
    AStorage:=LStorage;
  end;//try..finally
 except
  on E: EOutOfMemory do
   Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
  on E: EOleSysError do
   Result:=__ValidErrorCode(E.ErrorCode);
  else
   Result:=E_UNEXPECTED;
 end;//try..except
end;

function Tm3BaseStorage.COMOpenStorage(AName          : PWideChar;
                                       const _unused1 : IStorage;
                                       AStatStgMode   : LongInt;
                                       _unused2       : TSNB;
                                       _unused3       : LongInt;
                                       out   AStorage : IStorage): HRESULT;

 function __ValidErrorCode(const AErrorCode: HRESULT): HRESULT;
 begin
  case AErrorCode of
   STG_E_INVALIDFUNCTION,
   STG_E_FILENOTFOUND,
   STG_E_TOOMANYOPENFILES,
   STG_E_ACCESSDENIED,
   STG_E_INSUFFICIENTMEMORY,
   STG_E_INVALIDPOINTER,
   STG_E_INVALIDPARAMETER,
   STG_E_INVALIDNAME,
   STG_E_INVALIDFLAG,
   STG_E_REVERTED:
    Result:=AErrorCode;
   else
    Result:=E_UNEXPECTED;
  end;//case AErrorCode
 end;

var
 LStorage : IStorage;
begin//COMOpenStorage
 Result:=S_OK;
 try
  LStorage:=nil;
  try
   if ((_unused1 <> nil) or (_unused2 <> nil) or (_unused3 <> 0)) then
    Result:=STG_E_INVALIDPARAMETER
   else if m2COMCheckAccess(_Access,m2COMModeAccess(AStatStgMode)) then
    OpenStore(l3PCharLen(AName), AStatStgMode, STGTY_STORAGE, IUnknown(LStorage), Result)
   else
    Result:=STG_E_ACCESSDENIED;
  finally
   if (@AStorage <> nil) then
    AStorage:=LStorage;
  end;//try..finally
 except
  on E: EOutOfMemory do
   Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
  on E: EOleSysError do
   Result:=__ValidErrorCode(E.ErrorCode);
  else
   Result:=E_UNEXPECTED;
 end;//try..except
end;//COMOpenStorage

 function    Tm3BaseStorage.COMCopyTo(      AExcludeCount: LongInt;
                                            AExcludeArray: PIID;
                                            AExcludeSNB: TSNB;
                                      const AStorage: IStorage
                                     ): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    STG_E_TOOMANYOPENFILES,
    STG_E_ACCESSDENIED,
    STG_E_INSUFFICIENTMEMORY,
    STG_E_INVALIDPOINTER,
    STG_E_INVALIDPARAMETER,
    STG_E_MEDIUMFULL,
    STG_E_REVERTED:           begin

                               Result:=AErrorCode;

                              end;

    else                      begin

                               Result:=E_UNEXPECTED;

                              end;

   end;

  end;

 begin

  Result:=S_OK;
   try

    CopyTo(AExcludeCount,AExcludeArray,AExcludeSNB,AStorage,Result);

   except

    on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
    on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);

   else

    Result:=E_UNEXPECTED;

   end;

 end;

function Tm3BaseStorage.COMMoveElementTo(ASrcName       : PWideChar;
                                         const AStorage : IStorage;
                                         ADstName       : PWideChar;
                                         AFlags         : LongInt): HRESULT;

 function __ValidErrorCode(const AErrorCode: HRESULT): HRESULT;
 begin
  case AErrorCode of
   STG_E_FILENOTFOUND,
   STG_E_TOOMANYOPENFILES,
   STG_E_ACCESSDENIED,
   STG_E_INSUFFICIENTMEMORY,
   STG_E_INVALIDPOINTER,
   STG_E_FILEALREADYEXISTS,
   STG_E_INVALIDPARAMETER,
   STG_E_INVALIDNAME,
   STG_E_INVALIDFLAG,
   STG_E_REVERTED:
    Result:=AErrorCode;
   else
    Result:=E_UNEXPECTED;
  end;//case AErrorCode
 end;

begin//COMMoveElementTo
 Result:=S_OK;
 try
  if ((AFlags < STGMOVE_MOVE) or (AFlags > STGMOVE_COPY)) then
   Result:=STG_E_INVALIDFLAG
  else if ((AFlags = STGMOVE_COPY) or ((AFlags = STGMOVE_MOVE) and m2COMCheckAccess(_Access,STGM_WRITE))) then
   MoveElementTo(l3PCharLen(ASrcName),AStorage,ADstName,AFlags,Result)
  else
   Result:=STG_E_ACCESSDENIED;
 except
  on E: EOutOfMemory do
   Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
  on E: EOleSysError do
   Result:=__ValidErrorCode(E.ErrorCode);
  else
   Result:=E_UNEXPECTED;
 end;//try..except
end;//COMMoveElementTo

 function    Tm3BaseStorage.COMCommit(      AFlags: LongInt
                                     ): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    STG_E_TOOMANYOPENFILES,  
    STG_E_INVALIDPARAMETER,  
    STG_E_MEDIUMFULL,        
    STG_E_INVALIDFLAG,       
    STG_E_NOTCURRENT,        
    STG_E_REVERTED:         begin

                             Result:=AErrorCode;

                            end;

    else                    begin

                             Result:=E_UNEXPECTED;

                            end;

   end;

  end;

 begin

  Result:=S_OK;
   try

    if m2COMCheckAccess(_Access,STGM_WRITE)
     then
      begin

       Commit(AFlags,Result);

      end;

   except

    on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
    on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 function    Tm3BaseStorage.COMRevert(
                                     ): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    STG_E_TOOMANYOPENFILES,
    STG_E_INSUFFICIENTMEMORY,
    STG_E_REVERTED:           begin

                               Result:=AErrorCode;

                              end;

    else                      begin

                               Result:=E_UNEXPECTED;

                              end;

   end;

  end;

 begin

  Result:=S_OK;
   try

    Revert(Result);

   except

    on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
    on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 function    Tm3BaseStorage.COMEnumElements(      _unused1: LongInt;
                                                  _unused2: Pointer;
                                                  _unused3: LongInt;
                                            out   AEnumStatStg: IEnumStatStg
                                           ): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    STG_E_INSUFFICIENTMEMORY,
    STG_E_INVALIDPARAMETER,
    STG_E_REVERTED:           begin

                               Result:=AErrorCode;

                              end;

    else                      begin

                               Result:=E_UNEXPECTED;

                              end;

   end;

  end;

 var
        LEnumStatStg:             IEnumStatStg;
 begin

  Result:=S_OK;
   try

    LEnumStatStg:=nil;
     try

      if ((_unused1 <> 0) or (_unused2 <> nil) or (_unused3 <> 0))
       then
        begin

         Result:=STG_E_INVALIDPARAMETER;

        end
       else
        begin

         EnumElements(LEnumStatStg,Result);

        end;

     finally

      if (@AEnumStatStg <> nil)
       then
        begin

         AEnumStatStg:=LEnumStatStg;

        end;

     end;

   except

    on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
    on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);

   else

    Result:=E_UNEXPECTED;

   end;

 end;

function Tm3BaseStorage.COMDestroyElement(AName: PWideChar): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    STG_E_FILENOTFOUND,
    STG_E_TOOMANYOPENFILES,     
    STG_E_ACCESSDENIED,
    STG_E_INSUFFICIENTMEMORY,
    STG_E_INVALIDPOINTER,
    STG_E_INVALIDPARAMETER,
    STG_E_INVALIDNAME,
    STG_E_REVERTED:           begin

                               Result:=AErrorCode;

                              end;

    else                      begin

                               Result:=E_UNEXPECTED;

                              end;

   end;

  end;

begin
 Result:=S_OK;
 try
  if m2COMCheckAccess(_Access,STGM_WRITE) then
   DestroyElement(l3PCharLen(aName), Result)
  else
   Result:=STG_E_ACCESSDENIED;
 except
  on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
  on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);
  else Result:=E_UNEXPECTED;
 end;//try..except
end;

function Tm3BaseStorage.COMRenameElement(AOldName : PWideChar;
                                         ANewName : PWideChar): HRESULT;

 function    __ValidErrorCode(const AErrorCode: HRESULT
                             ): HRESULT;
 begin

  case AErrorCode of

   STG_E_FILENOTFOUND,
   STG_E_TOOMANYOPENFILES,
   STG_E_ACCESSDENIED,
   STG_E_INSUFFICIENTMEMORY,
   STG_E_INVALIDPOINTER,
   STG_E_FILEALREADYEXISTS,
   STG_E_INVALIDPARAMETER,
   STG_E_INVALIDNAME,
   STG_E_REVERTED:           begin

                              Result:=AErrorCode;

                             end;

   else                      begin

                              Result:=E_UNEXPECTED;

                             end;

  end;

 end;

begin
 Result:=S_OK;
 try
  if m2COMCheckAccess(_Access,STGM_WRITE) then
   RenameElement(l3PCharLen(AOldName), l3PCharLen(ANewName), Result)
  else
   Result:=STG_E_ACCESSDENIED;
 except
  on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
  on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);
  else Result:=E_UNEXPECTED;
 end;//try..except
end;

 function    Tm3BaseStorage.COMSetElementTimes(      AName: PWideChar;
                                               const ACTime: TFileTime;
                                               const AATime: TFileTime;
                                               const AMTime: TFileTime
                                              ): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    STG_E_FILENOTFOUND,         
    STG_E_TOOMANYOPENFILES,     
    STG_E_ACCESSDENIED,         
    STG_E_INSUFFICIENTMEMORY,
    STG_E_INVALIDPOINTER,
    STG_E_INVALIDPARAMETER,     
    STG_E_INVALIDNAME,          
    STG_E_REVERTED:           begin

                               Result:=AErrorCode;

                              end;

    else                      begin

                               Result:=E_UNEXPECTED;

                              end;

   end;

  end;

 begin

  Result:=S_OK;
   try

    if m2COMCheckAccess(_Access,STGM_WRITE)
     then
      begin

       SetElementTimes(AName,ACTime,AATime,AMTime,Result);

      end
     else
      begin

       Result:=STG_E_ACCESSDENIED;

      end;

   except

    on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
    on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 function    Tm3BaseStorage.COMSetClass(const ACLSID: TCLSID
                                       ): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    STG_E_ACCESSDENIED,
    STG_E_MEDIUMFULL,
    STG_E_REVERTED:     begin

                         Result:=AErrorCode;

                        end;

    else                begin

                         Result:=E_UNEXPECTED;

                        end;

   end;

  end;

 begin

  Result:=S_OK;
   try

    if m2COMCheckAccess(_Access,STGM_WRITE)
     then
      begin

       SetClass(ACLSID,Result);

      end
     else
      begin

       Result:=STG_E_ACCESSDENIED;

      end;

   except

    on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
    on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 function    Tm3BaseStorage.COMSetStateBits(      AStateBits: LongInt;
                                                  AMask: LongInt
                                           ): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    STG_E_ACCESSDENIED,
    STG_E_INVALIDPARAMETER,
    STG_E_INVALIDFLAG:      begin

                             Result:=AErrorCode;

                            end;

    else                    begin

                             Result:=E_UNEXPECTED;

                            end;

   end;

  end;

 begin

  Result:=S_OK;
   try

    if m2COMCheckAccess(_Access,STGM_WRITE)
     then
      begin

       SetStateBits(AStateBits,AMask,Result);

      end
     else
      begin

       Result:=STG_E_ACCESSDENIED;

      end;

   except

    on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
    on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 function    Tm3BaseStorage.COMStat(out   AStatStg: TStatStg;
                                          AStatFlag: LongInt
                                   ): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    STG_E_ACCESSDENIED,
    STG_E_INSUFFICIENTMEMORY,
    STG_E_INVALIDPARAMETER,
    STG_E_INVALIDFLAG:        begin

                               Result:=AErrorCode;

                              end;

    else                      begin

                               Result:=E_UNEXPECTED;

                              end;

   end;

  end;

 var
        LStatStg:                 TStatStg;
 begin

  Result:=S_OK;
   try

    m2MEMFill(@LStatStg,SizeOf(LStatStg),0);
     try

      Stat(LStatStg,AStatFlag,Result);

     finally

      m2MEMCopy(@AStatStg,@LStatStg,SizeOf(LStatStg));

     end;

   except

    on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
    on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);

   else

    Result:=E_UNEXPECTED;

   end;

 end;

// start class Tm3BaseEnumStatStg

 procedure   Tm3BaseEnumStatStg.Next(const ACount: LongInt;
                                     const ABuff: PStatStg;
                                     const AResult: PLongInt;
                                     var   AReturn: HRESULT
                                    );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

 procedure   Tm3BaseEnumStatStg.Skip(const ACount: LongInt;
                                     var   AReturn: HRESULT
                                    );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

 procedure   Tm3BaseEnumStatStg.Reset(var   AReturn: HRESULT
                                     );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

 procedure   Tm3BaseEnumStatStg.Clone(var   AEnumStatStg: IEnumStatStg;
                                      var   AReturn: HRESULT
                                     );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

 function    Tm3BaseEnumStatStg.COMNext(      ACount: LongInt;
                                        out   ABuff;
                                              AResult: PLongInt
                                       ): HRESULT;
 var
        LResult:                  LongInt;
        LStatStg:                 TStatStg;
        LStatStgPtr:              PStatStg;
 begin

  Result:=S_OK;
   try

    LResult:=0;
     try

      if (ACount = 1)
       then
        begin

         m2MEMFill(@LStatStg,SizeOf(LStatStg),0);
          try

           Next(ACount,@LStatStg,@LResult,Result);

           if ((Result = S_OK) and (LResult <> ACount))
            then
             begin

              Result:=S_FALSE;

             end;

          finally

           m2MEMCopy(@ABuff,@LStatStg,SizeOf(LStatStg));

          end;

        end
       else
        begin

         m2MEMAlloc(Pointer(LStatStgPtr),ACount*SizeOf(LStatStgPtr^),0);
          try

           try

            Next(ACount,LStatStgPtr,@LResult,Result);

            if ((Result = S_OK) and (LResult <> ACount))
             then
              begin

               Result:=S_FALSE;

              end;

           finally

            m2MEMCopy(@ABuff,LStatStgPtr,LResult*SizeOf(LStatStgPtr^));

           end;

          finally

           m2MEMFree(Pointer(LStatStgPtr));

          end;

        end;

     finally

      if (AResult <> nil)
       then
        begin

         AResult^:=LResult;

        end;

     end;

   except

    Result:=E_UNEXPECTED;

   end;

 end;

 function    Tm3BaseEnumStatStg.COMSkip(      ACount: LongInt
                                       ): HRESULT;
 begin

  Result:=S_OK;
   try

    Skip(ACount,Result);

   except

    Result:=E_UNEXPECTED;

   end;

 end;

 function    Tm3BaseEnumStatStg.COMReset(
                                        ): HRESULT;
 begin

  Result:=S_OK;
   try

    Reset(Result);

   except

    Result:=E_UNEXPECTED;

   end;

 end;

 function    Tm3BaseEnumStatStg.COMClone(out   AEnumStatStg: IEnumStatStg
                                        ): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    E_OUTOFMEMORY,
    E_INVALIDARG:  begin

                    Result:=AErrorCode;

                   end;

    else           begin

                    Result:=E_UNEXPECTED;

                   end;

   end;

  end;

 var
        LEnumStatStg:             IEnumStatStg;
 begin

  Result:=S_OK;
   try

    LEnumStatStg:=nil;
     try

      Clone(LEnumStatStg,Result);

     finally

      if (@AEnumStatStg <> nil)
       then
        begin

         AEnumStatStg:=LEnumStatStg;

        end;

     end;

   except

    on E: EOutOfMemory do Result:=__ValidErrorCode(E_OUTOFMEMORY);
    on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);

   else

    Result:=E_UNEXPECTED;

   end;

 end;

// start class Tm3TempEnumStatStg

 function    Tm3TempEnumStatStg.InitProc00000001(const ABitMask: LongWord;
                                                 const AStream: IStream
                                                ): LongWord;
 begin

  with Self do
   begin

    FStream:=AStream;

   end;

  Result:=ABitMask;

 end;

 procedure   Tm3TempEnumStatStg.DoneProc00000001(
                                                );
 begin

  with Self do
   begin

    FStream:=nil;

   end;

 end;

 function    Tm3TempEnumStatStg.InitProc00000002(const ABitMask: LongWord;
                                                 const AItemsCount: LongInt
                                                ): LongWord;
 begin

  with Self do
   begin

    FItemsCount:=AItemsCount;

   end;

  Result:=ABitMask;

 end;

 procedure   Tm3TempEnumStatStg.DoneProc00000002(
                                                );
 begin

  with Self do
   begin
   end;

 end;

 procedure   Tm3TempEnumStatStg.Next(const ACount: LongInt;
                                     const ABuff: PStatStg;
                                     const AResult: PLongInt;
                                     var   AReturn: HRESULT
                                    );

  procedure   __LoadBuff(const AStream: IStream;
                         const ABuff: Pointer;
                         const ASize: LongInt
                        );
  begin

   m2COMReadBuffer(AStream,ABuff^,ASize);

  end;

  procedure   __LoadWideBuff(const AStream: IStream;
                             var   ABuff: PWideChar
                            );
  var
        LSize:                    LongInt;
  begin

   __LoadBuff(AStream,@LSize,SizeOf(LSize));

   m2MEMCoTaskAlloc(Pointer(ABuff),LSize+SizeOf(WideChar));
    try

     __LoadBuff(AStream,ABuff,LSize);
     PWideChar(LongInt(ABuff)+LSize)^:=WideChar($0000);

    except

     m2MEMCoTaskFree(Pointer(ABuff));

     raise;

    end;

  end;

 var
        LBuff:                    PStatStg;
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     LBuff:=ABuff;

     while ((FItemsIndex < FItemsCount) and (AResult^ < ACount)) do
      begin

       with LBuff^ do
        begin

         __LoadWideBuff(FStream,pwcsName);

         __LoadBuff(FStream,@dwType,SizeOf(dwType));
         __LoadBuff(FStream,@cbSize,SizeOf(cbSize));

         __LoadBuff(FStream,@grfStateBits,SizeOf(grfStateBits));

        end;

       Inc(LongInt(LBuff),SizeOf(LBuff^));

       Inc(FItemsIndex);
       Inc(AResult^);

      end;

    end;

 end;

 procedure   Tm3TempEnumStatStg.Skip(const ACount: LongInt;
                                     var   AReturn: HRESULT
                                    );
 var
        LItemsCount:              LongInt;
        LItemsIndex:              LongInt;
        LStatStgPtr:              PStatStg;
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     LItemsCount:=ACount;
     LItemsIndex:=FItemsIndex+LItemsCount;

     if (LItemsIndex > FItemsCount)
      then
       begin

        AReturn:=S_FALSE;

       end
      else
       begin

        m2MEMAlloc(Pointer(LStatStgPtr),LItemsCount*SizeOf(LStatStgPtr^));
         try

          OleCheck(COMNext(LItemsCount,LStatStgPtr,nil));

         finally

          m2MEMFree(Pointer(LStatStgPtr));

         end;

       end;

    end;

 end;

 procedure   Tm3TempEnumStatStg.Reset(var   AReturn: HRESULT
                                     );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     if (FItemsCount <> 0)
      then
       begin

        m2COMSetPosition(0,FStream);

        FItemsIndex:=0;

       end;

    end;

 end;

 class
 function    Tm3TempEnumStatStg.MakeInterface(const AStream: IStream;
                                              const AItemsCount: LongInt
                                             ): IEnumStatStg;
 begin

  with Create(AStream,AItemsCount) do
   try

    Result:=Tm3TempEnumStatStg(Instance);

   finally

    Free;

   end;
   
 end;

 class
 function    Tm3TempEnumStatStg.MakeSafeInterface(out   AResult: IEnumStatStg;
                                                  const AStream: IStream;
                                                  const AItemsCount: LongInt
                                                 ): HRESULT;
 begin

  Result:=S_OK;
   try

    AResult:=MakeInterface(AStream,AItemsCount);

   except

    on E: EOutOfMemory do Result:=STG_E_INSUFFICIENTMEMORY;
    on E: EOleSysError do Result:=E.ErrorCode;

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 constructor Tm3TempEnumStatStg.Create(const AStream: IStream; const AItemsCount: LongInt);
 begin
  inherited Create;
  m2InitOperation(_Status,InitProc00000001($00000001,AStream));
  m2InitOperation(_Status,InitProc00000002($00000002,AItemsCount));
 end;

procedure Tm3TempEnumStatStg.Cleanup;
begin
 m2DoneOperation(_Status,$00000002,DoneProc00000002);
 m2DoneOperation(_Status,$00000001,DoneProc00000001);
 inherited;
 _Status := 0;
end;

// start class Tm3BaseStream

 procedure   Tm3BaseStream.Read(ABuff: Pointer;
                                ASize: LongInt;
                                var   AResult: LongInt;
                                var   AReturn: HRESULT
                               );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

 procedure   Tm3BaseStream.Write(ABuff: Pointer;
                                 ASize: LongInt;
                                 var   AResult: LongInt;
                                 var   AReturn: HRESULT
                                );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

 procedure   Tm3BaseStream.Seek(AOffset     : Int64;
                                AOrigin     : TSeekOrigin;
                                var AResult : Int64;
                                var AReturn : HRESULT
                               );
 begin
  if SUCCEEDED(aReturn) then
   aReturn:=E_NOTIMPL;
 end;

 procedure   Tm3BaseStream.SetSize(ASize: Int64;
                                   var   AReturn: HRESULT
                                  );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

 procedure   Tm3BaseStream.LockRegion(AOffset: Int64;
                                      ASize: Int64;
                                      ALockType: LongInt;
                                      var   AReturn: HRESULT
                                     );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

 procedure   Tm3BaseStream.UnlockRegion(AOffset: Int64;
                                        ASize: Int64;
                                        ALockType: LongInt;
                                        var   AReturn: HRESULT
                                       );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

procedure   Tm3BaseStream.Stat(var   AStatStg: TStatStg;
                               AStatFlag: LongInt;
                               var   AReturn: HRESULT
                              );
begin
 if SUCCEEDED(AReturn) then
 begin
  with AStatStg do
  begin
   if (AStatFlag <> STATFLAG_NONAME) then
    StatStgName(pwcsName,AReturn);
   StatStgType(dwType,AReturn);
   StatStgSize(cbSize,AReturn);
   StatStgMode(grfMode,AReturn);
   StatStgLocks(grfLocksSupported,AReturn);
  end;//with AStatStg
 end;SUCCEEDED(AReturn)
end;

 procedure   Tm3BaseStream.StatStgName(var   AResult: PWideChar;
                                       var   AReturn: HRESULT
                                      );
 begin
 end;

 procedure   Tm3BaseStream.StatStgType(var   AResult: LongInt;
                                       var   AReturn: HRESULT
                                      );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AResult:=STGTY_STREAM;

    end;

 end;

function Tm3BaseStream.pm_GetPosition: Int64;
     //override;
begin
 OleCheck(COMSeek(0,STREAM_SEEK_CUR,Result));
end;
     
function Tm3BaseStream.pm_GetSize: Int64;
  //override;
  {-}
var
 LPosition : Int64;
begin
 OleCheck(COMSeek(0,STREAM_SEEK_CUR,LPosition));
 try
  OleCheck(COMSeek(0,STREAM_SEEK_END,Result));
 finally
  OleCheck(COMSeek(LPosition,STREAM_SEEK_SET,PInt64(nil)^));
 end;//try..finally
end;

 procedure   Tm3BaseStream.Commit(AFlags: LongInt;
                                  var   AReturn: HRESULT
                                 );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

 procedure   Tm3BaseStream.Revert(var   AReturn: HRESULT
                                 );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

 procedure   Tm3BaseStream.Clone(var   AStream: IStream;
                                 var   AReturn: HRESULT
                                );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     AReturn:=E_NOTIMPL;

    end;

 end;

 procedure   Tm3BaseStream.CopyTo(const AStream: IStream;
                                  ASize: Int64;
                                  var   ARead: Int64;
                                  var   AWritten: Int64;
                                  var   AReturn: HRESULT
                                 );
 var
        LBuff:                    Pointer;
        LBuffSize:                LongInt;
        LResult:                  LongInt;
        LSize:                    Int64;
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     LBuffSize:=LongInt(m2S64Min(ASize,CBuffSize));

     {$IfDef m3UseL3Memory}
     m3CopyBuffers.AllocItem(lBuff, lBuffSize);
     {$Else  m3UseL3Memory}
     m2MEMAlloc(LBuff,LBuffSize);
     {$EndIf m3UseL3Memory}
     try

      LSize:=ASize;

      while (LSize <> 0) do
       begin

        LBuffSize:=LongInt(m2S64Min(Int64(LBuffSize),LSize));

        try

         OleCheck(COMRead(LBuff,LBuffSize,@LResult));

        finally

         Inc(ARead,LResult);

        end;

        if (LResult = 0)
         then
          begin

           Break;

          end;

        try

         OleCheck(AStream.Write(LBuff,LResult,@LResult));

        finally

         Inc(AWritten,LResult);

        end;

        Dec(LSize,LResult);

       end;

     finally
      {$IfDef m3UseL3Memory}
      m3CopyBuffers.FreeItem(lBuff);
      {$Else  m3UseL3Memory}
      m2MEMFree(LBuff);
      {$EndIf m3UseL3Memory}
     end;//try..finally

    end;

 end;

function Tm3BaseStream.COMRead(ABuff   : Pointer;
                               ASize   : LongInt;
                               AResult : PLongInt): HRESULT;

 function __ValidErrorCode(const AErrorCode: HRESULT): HRESULT;
 begin//__ValidErrorCode
  case AErrorCode of
   STG_E_ACCESSDENIED,
   STG_E_INVALIDPOINTER,
   STG_E_REVERTED:
    Result:=AErrorCode;
   else
    Result:=E_UNEXPECTED;
  end;//case AErrorCode
 end;//__ValidErrorCode

var
 LResult : LongInt;
begin//COMRead
 Result:=S_OK;
 try
  LResult:=0;
  try
   if m2COMCheckAccess(_Access,STGM_READ) then begin
    Read(ABuff,ASize,LResult,Result);
    if ((Result = S_OK) and (LResult <> ASize)) then
     Result:=S_FALSE;
   end else
    Result:=STG_E_ACCESSDENIED;
  finally
   if (AResult <> nil) then
    AResult^:=LResult;
  end;//try..finally
 except
  on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
  on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);
  else Result:=E_UNEXPECTED;
 end;//try..except
end;//COMRead

function Tm3BaseStream.COMWrite(ABuff   : Pointer;
                                ASize   : LongInt;
                                AResult : PLongInt): HRESULT;

 function __ValidErrorCode(const AErrorCode: HRESULT): HRESULT;
 begin
  case aErrorCode of
   STG_E_ACCESSDENIED,
   STG_E_INVALIDPOINTER,
   STG_E_WRITEFAULT,
   STG_E_MEDIUMFULL,
   STG_E_REVERTED:
    Result:=AErrorCode;
   else
    Result:=E_UNEXPECTED;
  end;//case aErrorCode
 end;

var
 LResult : LongInt;
begin//COMWrite
 Result:=S_OK;
 try
  LResult:=0;
  try
   if m2COMCheckAccess(_Access,STGM_WRITE) then begin
    Write(ABuff,ASize,LResult,Result);
    if ((Result = S_OK) and (LResult <> ASize)) then
     Result:=STG_E_CANTSAVE;
   end else
    Result:=STG_E_ACCESSDENIED;
  finally
   if (AResult <> nil) then
    AResult^:=LResult;
  end;//try..finally
 except
  on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
  on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);
  else Result:=E_UNEXPECTED;
 end;//try..except
end;//COMWrite

function Tm3BaseStream.COMSeek(AOffset : Int64;
                               AOrigin : LongInt;
                               out AResult : Int64): HRESULT;

 function __ValidErrorCode(AErrorCode: HRESULT): HRESULT;
 begin//__ValidErrorCode
  case AErrorCode of
   STG_E_INVALIDFUNCTION,
   STG_E_INVALIDPOINTER,
   STG_E_REVERTED:
    Result := AErrorCode;
   else
    Result := E_UNEXPECTED;
  end;//case AErrorCode
 end;//__ValidErrorCode

var
 LResult : Int64;
begin
 Result := S_OK;
 try
  LResult:=Int64(-1);
  try
   Seek(AOffset, TSeekOrigin(AOrigin), LResult, Result);
   if ((Result = S_OK) and (LResult = Int64(-1))) then
    Result := STG_E_INVALIDFUNCTION;
  finally
   if (@AResult <> nil) then
    AResult:=LResult;
  end;//try..finally
 except
  on E: EOutOfMemory do
   Result := __ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
  on E: EOleSysError do
   Result := __ValidErrorCode(E.ErrorCode);
  else
   Result:=E_UNEXPECTED;
 end;//try..except
end;

 function    Tm3BaseStream.COMSetSize(      ASize: Int64
                                     ): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    STG_E_INVALIDFUNCTION,
    STG_E_MEDIUMFULL,
    STG_E_REVERTED:        begin

                            Result:=AErrorCode;

                           end;

    else                   begin

                            Result:=E_UNEXPECTED;

                           end;

   end;

  end;

 begin

  Result:=S_OK;
   try

    SetSize(ASize,Result);

   except

    on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
    on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 function    Tm3BaseStream.COMLockRegion(      AOffset: Int64;
                                               ASize: Int64;
                                               ALockType: LongInt
                                        ): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    STG_E_INVALIDFUNCTION,
    STG_E_LOCKVIOLATION,
    STG_E_REVERTED:        begin

                            Result:=AErrorCode;

                           end;

    else                   begin

                            Result:=E_UNEXPECTED;

                           end;

   end;

  end;

 begin

  Result:=S_OK;
   try

    LockRegion(AOffset,ASize,ALockType,Result);

   except

    on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
    on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 function    Tm3BaseStream.COMUnlockRegion(      AOffset: Int64;
                                                 ASize: Int64;
                                                 ALockType: LongInt
                                          ): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    STG_E_INVALIDFUNCTION,
    STG_E_LOCKVIOLATION,
    STG_E_REVERTED:        begin

                            Result:=AErrorCode;

                           end;

    else                   begin

                            Result:=E_UNEXPECTED;

                           end;

   end;

  end;

 begin

  Result:=S_OK;
   try

    UnlockRegion(AOffset,ASize,ALockType,Result);

   except

    on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
    on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 function    Tm3BaseStream.COMStat(out   AStatStg: TStatStg;
                                         AStatFlag: LongInt
                                  ): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    STG_E_ACCESSDENIED,
    STG_E_INSUFFICIENTMEMORY,
    STG_E_INVALIDPOINTER,
    STG_E_INVALIDFLAG,
    STG_E_REVERTED:           begin

                               Result:=AErrorCode;

                              end;

    else                      begin

                               Result:=E_UNEXPECTED;

                              end;

   end;

  end;

 var
        LStatStg:                 TStatStg;
 begin

  Result:=S_OK;
   try

    m2MEMFill(@LStatStg,SizeOf(LStatStg),0);
     try

      Stat(LStatStg,AStatFlag,Result);

     finally

      m2MEMCopy(@AStatStg,@LStatStg,SizeOf(LStatStg));

     end;

   except

    on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
    on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 function    Tm3BaseStream.COMCommit(      AFlags: LongInt
                                    ): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    STG_E_MEDIUMFULL,
    STG_E_REVERTED:   begin

                       Result:=AErrorCode;

                      end;

    else              begin

                       Result:=E_UNEXPECTED;

                      end;

   end;

  end;

 begin

  Result:=S_OK;
   try

    if m2COMCheckAccess(_Access,STGM_WRITE)
     then
      begin

       Commit(AFlags,Result);

      end;

   except

    on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
    on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 function    Tm3BaseStream.COMRevert(
                                    ): HRESULT;

 begin

  Result:=S_OK;
   try

    Revert(Result);

   except

    Result:=E_UNEXPECTED;

   end;

 end;

 function    Tm3BaseStream.COMClone(out   AStream: IStream
                                   ): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    STG_E_INSUFFICIENTMEMORY,
    STG_E_INVALIDPOINTER,
    STG_E_REVERTED:           begin

                               Result:=AErrorCode;

                              end;

    else                      begin

                               Result:=E_UNEXPECTED;

                              end;

   end;

  end;

 var
        LStream:                  IStream;
 begin

  Result:=S_OK;
   try

    LStream:=nil;
     try

      Clone(LStream,Result);

     finally

      if (@AStream <> nil)
       then
        begin

         AStream:=LStream;

        end;

     end;

   except

    on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
    on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 function    Tm3BaseStream.COMCopyTo(      AStream: IStream;
                                           ASize: Int64;
                                     out   ARead: Int64;
                                     out   AWritten: Int64
                                    ): HRESULT;

  function    __ValidErrorCode(const AErrorCode: HRESULT
                              ): HRESULT;
  begin

   case AErrorCode of

    STG_E_INVALIDPOINTER,
    STG_E_MEDIUMFULL,
    STG_E_REVERTED:       begin

                           Result:=AErrorCode;

                          end;

    else                  begin

                           Result:=E_UNEXPECTED;

                          end;

   end;

  end;

 var
        LRead:                    Int64;
        LWritten:                 Int64;
 begin

  Result:=S_OK;
   try

    if (AStream = nil)
     then
      begin

       Result:=STG_E_INVALIDPOINTER;

      end
     else
      begin

       LRead:=0;
        try

         LWritten:=0;
          try

           CopyTo(AStream,ASize,LRead,LWritten,Result);

          finally

           if (@AWritten <> nil)
            then
             begin

              AWritten:=LWritten;

             end;

          end;

        finally

         if (@ARead <> nil)
          then
           begin

            ARead:=LRead;

           end;

        end;

      end;

   except

    on E: EOutOfMemory do Result:=__ValidErrorCode(STG_E_INSUFFICIENTMEMORY);
    on E: EOleSysError do Result:=__ValidErrorCode(E.ErrorCode);

   else

    Result:=E_UNEXPECTED;

   end;

 end;

// start class Tm3FileStream

procedure Tm3FileStream.SysCheck(const AResult: LongBool);
var
 LError      : Integer;
 l_ErrorPrim : Integer;
begin
 if not(AResult) then
 begin
  l_ErrorPrim := GetLastError;
  LError:=Integer(l_ErrorPrim and $0000ffff);
  case LError of
   ERROR_SUCCESS: ;
   ERROR_INVALID_FUNCTION,
   ERROR_FILE_NOT_FOUND,
   ERROR_PATH_NOT_FOUND,
   ERROR_TOO_MANY_OPEN_FILES,
   ERROR_ACCESS_DENIED,
   ERROR_NOT_ENOUGH_MEMORY,
   ERROR_WRITE_FAULT,
   ERROR_READ_FAULT,
   ERROR_SHARING_VIOLATION,
   ERROR_LOCK_VIOLATION,
   ERROR_DISK_FULL:
    OleError(MakeResult(SEVERITY_ERROR,FACILITY_STORAGE,LError));
   else
   begin
    l3System.Msg2Log(Format('! Системная ошибка %d %d', [l_ErrorPrim,LError]));
    OleError(MakeResult(SEVERITY_ERROR,FACILITY_WIN32,LError));
   end;//else
  end;//case LError
 end;//not(AResult)
end;

 procedure   Tm3FileStream.Read(ABuff: Pointer;
                                ASize: LongInt;
                                var   AResult: LongInt;
                                var   AReturn: HRESULT
                               );

 begin
  if SUCCEEDED(AReturn) then
   SysCheck(ReadFile(FHandle,ABuff^,LongWord(ASize),LongWord(AResult), nil));
 end;

 procedure   Tm3FileStream.Write(ABuff: Pointer;
                                 ASize: LongInt;
                                 var   AResult: LongInt;
                                 var   AReturn: HRESULT
                                );

 begin
  if SUCCEEDED(AReturn) then
   SysCheck(WriteFile(FHandle,ABuff^,LongWord(ASize),LongWord(AResult),nil));
 end;

procedure Tm3FileStream.Seek(AOffset     : Int64;
                             AOrigin     : TSeekOrigin;
                             var AResult : Int64;
                             var AReturn : HRESULT);

  function __SetFilePointer(AHandle : THandle;
                            AOrigin : TSeekOrigin;
                            AOffset : Int64;
                            var AResult: Int64): LongBool;
  type
   T64to32 = packed record
    RLoLongWord: LongWord;
    RHiLongWord: LongWord;
   end;//T64to32
  var
   LOffset : Int64;
  begin//__SetFilePointer
   LOffset := AOffset;
   with T64to32(LOffset) do
   begin
    RLoLongWord := SetFilePointer(AHandle,
                                  LongInt(RLoLongWord),
                                  @RHiLongWord,
                                  Ord(AOrigin));
    Result := (RLoLongWord <> LongWord(-1));
   end;//with T64to32(LOffset)
   AResult:=LOffset;
  end;//__SetFilePointer

begin
 if SUCCEEDED(AReturn) then
  SysCheck(__SetFilePointer(FHandle, AOrigin, AOffset, AResult));
end;

 procedure   Tm3FileStream.SetSize(ASize: Int64;
                                   var   AReturn: HRESULT
                                  );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     OleCheck(COMSeek(ASize,STREAM_SEEK_SET,PInt64(nil)^));
     SysCheck(SetEndOfFile(FHandle));

    end;

 end;

 procedure   Tm3FileStream.LockRegion(AOffset: Int64;
                                      ASize: Int64;
                                      ALockType: LongInt;
                                      var   AReturn: HRESULT
                                     );

  function    __LockFile(const AHandle: THandle;
                         const AOffset: Int64;
                         const ASize: Int64
                        ): LongBool;

  type
   T64to32 = packed record
    RLoLongWord: LongWord;
    RHiLongWord: LongWord;
   end;//T64to32
  begin
   Result:=LockFile(AHandle,T64to32(AOffset).RLoLongWord,T64to32(AOffset).RHiLongWord,T64to32(ASize).RLoLongWord,T64to32(ASize).RHiLongWord);
  end;

begin
 if SUCCEEDED(AReturn) then
  if (ALockType = LOCK_EXCLUSIVE)
   then
    SysCheck(__LockFile(FHandle,AOffset,ASize))
   else
    AReturn:=STG_E_INVALIDFUNCTION;
end;

 procedure   Tm3FileStream.UnlockRegion(AOffset: Int64;
                                        ASize: Int64;
                                        ALockType: LongInt;
                                        var   AReturn: HRESULT
                                       );

  function    __UnlockFile(const AHandle: THandle;
                           const AOffset: Int64;
                           const ASize: Int64
                          ): LongBool;

  type
   T64to32 = packed record
    RLoLongWord : LongWord;
    RHiLongWord : LongWord;
   end;//T64to32
  begin
   Result:=UnlockFile(AHandle,T64to32(AOffset).RLoLongWord,T64to32(AOffset).RHiLongWord,T64to32(ASize).RLoLongWord,T64to32(ASize).RHiLongWord);
  end;

 begin

  if SUCCEEDED(AReturn)
   then
    begin

     if (ALockType = LOCK_EXCLUSIVE)
      then
       begin

        SysCheck(__UnlockFile(FHandle,AOffset,ASize));

       end
      else
       begin

        AReturn:=STG_E_INVALIDFUNCTION;

       end;

    end;

 end;

function Tm3FileStream.pm_GetSize: Int64;
  //override;
  {-}

 function    __GetFileSize(const AHandle: THandle;
                           var   AResult: Int64
                          ): LongBool;
 type
  T64to32 = packed record
   RLoLongWord: LongWord;
   RHiLongWord: LongWord;
  end;//T64to32
 var
       LSize:                    Int64;
       LResult:                  T64to32 absolute LSize;
 begin
  LResult.RLoLongWord := Windows.GetFileSize(AHandle, @LResult.RHiLongWord);
  Result:= (LResult.RLoLongWord <> LongWord(-1));

  AResult:=LSize;
 end;

begin
 SysCheck(__GetFileSize(FHandle,Result));
end;

function Tm3FileStream.pm_GetLocksSupported: Longint;
  //override;
  {-}
begin
 Result:=LOCK_EXCLUSIVE;
end;

 procedure   Tm3FileStream.Commit(AFlags: LongInt;
                                  var   AReturn: HRESULT
                                 );
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     if (AFlags = STGC_DEFAULT)
      then
       begin

        SysCheck(FlushFileBuffers(FHandle));

       end
      else
       begin

        AReturn:=STG_E_INVALIDFLAG;

       end;

    end;

 end;

 class
 function    Tm3FileStream.MakeInterface(const AName: WideString;
                                         const AAccess: LongWord;
                                         const ASharedMode: LongWord;
                                         const ADistribution: LongWord;
                                         const AFlags: LongWord
                                        ): IStream;
 begin

  with Create(AName,AAccess,ASharedMode,ADistribution,AFlags) do
   try

    Result:=Tm3FileStream(Instance);

   finally

    Free;

   end;

 end;

 class
 function    Tm3FileStream.MakeSafeInterface(out   AResult: IStream;
                                             const AName: WideString;
                                             const AAccess: LongWord;
                                             const ASharedMode: LongWord;
                                             const ADistribution: LongWord;
                                             const AFlags: LongWord
                                            ): HRESULT;
 begin

  Result:=S_OK;
   try

    AResult:=MakeInterface(AName,AAccess,ASharedMode,ADistribution,AFlags);

   except

    on E: EOutOfMemory do Result:=STG_E_INSUFFICIENTMEMORY;
    on E: EOleSysError do Result:=E.ErrorCode;

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 constructor Tm3FileStream.Create(const AName: WideString;
                                  const AAccess: LongWord;
                                  const ASharedMode: LongWord;
                                  const ADistribution: LongWord;
                                  const AFlags: LongWord
                                 );

  function  lGetAccess(const AAccess: LongWord): LongInt;
  begin
   if ((AAccess and (GENERIC_READ or GENERIC_WRITE)) = (GENERIC_READ or GENERIC_WRITE)) then
    Result := STGM_READWRITE
   else
   begin
    if ((AAccess and GENERIC_WRITE) <> 0) then
     Result := STGM_WRITE
    else
     Result := STGM_READ;
   end;
  end;

  function    __CreateFile(const AName: WideString;
                           const AAccess: DWORD;
                           const ASharedMode: DWORD;
                           const ADistribution: DWORD;
                           const AFlags: DWORD;
                           var   AHandle: THandle): BOOL;

   function    __CheckLastError : LongWord;
   begin
    Result := GetLastError;
    SetLastError(Result);
   end;

  resourcestring
   SInfValue = 'File operation';

  const
   CSharedMask = $ffffffff;
  var
   LString    : AnsiString;
   LTickCount : LongWord;
   LTimeOut   : LongInt;
  begin
   LTickCount := GetTickCount;
   repeat
    if (Win32Platform = VER_PLATFORM_WIN32_NT) then
     AHandle := CreateFileW(PWideChar(AName),AAccess,(ASharedMode and CSharedMask),nil,ADistribution,AFlags,0)
    else
     AHandle := CreateFileA(m2MakeAnsiString(LString,AName),AAccess,(ASharedMode and CSharedMask),nil,ADistribution,AFlags,0);

    Result := (AHandle <> INVALID_HANDLE_VALUE);

    if (Result or (__CheckLastError <> ERROR_SHARING_VIOLATION)) then
     Exit;

    LTimeOut := LongInt(GetTickCount - LTickCount);

    if (LTimeOut > Cm3BasClaDefaultTimeOut) then
     Break;

    Sleep(0);

   until False;
  end;

 begin

  inherited Create(lGetAccess(AAccess));

  try
   SysCheck(__CreateFile(AName,AAccess,ASharedMode,ADistribution,AFlags,FHandle));
  except
   on E: EOleSysError do
   begin
    if (E.ErrorCode = STG_E_FILENOTFOUND) OR (E.ErrorCode = STG_E_PATHNOTFOUND) then
     raise EOleSysError.Create(ANSIReplaceStr(E.Message, '%1', '"' + AName + '"'), E.ErrorCode, E.HelpContext)
    else
     raise;
   end;//on E: EOleSysError
  end;//try..except

 end;

procedure Tm3FileStream.Cleanup;
begin
 if (FHandle <> 0) and (FHandle <> INVALID_HANDLE_VALUE) then
 begin
  SysCheck(CloseHandle(FHandle));
  FHandle := 0;
 end;

 inherited;
end;

 function    Tm3FileStream.CreateMapView(const AProtect: LongWord;
                                         const AAccess: LongWord
                                        ): Tm3FileStreamMapView;
 begin

  Win32Check(FlushFileBuffers(FHandle));

  if (LongInt(GetFileSize(FHandle,nil)) <> 0)
   then
    begin

     Result:=Tm3FileStreamMapView.Create(Self,AProtect,AAccess);

    end
   else
    begin

     Result:=nil;

    end;

 end;

// start class Tm3TempStream 

 class
 function    Tm3TempStream.MakeInterface(const APath: WideString;
                                         const AExt: WideString
                                        ): IStream;
 begin

  with Create(APath,AExt) do
   try

    Result:=Tm3TempStream(Instance);

   finally

    Free;

   end;

 end;

 class
 function    Tm3TempStream.MakeSafeInterface(out   AResult: IStream;
                                             const APath: WideString;
                                             const AExt: WideString
                                            ): HRESULT;
 begin

  Result:=S_OK;
   try

    AResult:=MakeInterface(APath,AExt);

   except

    on E: EOutOfMemory do Result:=STG_E_INSUFFICIENTMEMORY;
    on E: EOleSysError do Result:=E.ErrorCode;

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 constructor Tm3TempStream.Create(const APath: WideString;
                                  const AExt: WideString
                                 );
 const
        CAccess=                  GENERIC_READ or
                                  GENERIC_WRITE;

        CSharedMode=              0;

        CDistribution=            OPEN_EXISTING;

        CFlags=                   FILE_ATTRIBUTE_HIDDEN or
                                  FILE_ATTRIBUTE_TEMPORARY or
                                  FILE_FLAG_DELETE_ON_CLOSE;
 begin

  inherited Create(m2TMPGetFileName(APath,AExt),CAccess,CSharedMode,CDistribution,CFlags);

 end;

// start class Tm3CustomStream

function Tm3CustomStream.InitProc00000001(const ABitMask: LongWord;
                                          const AStream: IStream): LongWord;
begin
 FStream:=AStream;
 Result:=ABitMask;
end;

procedure Tm3CustomStream.DoneProc00000001;
begin
 FStream:=nil;
end;

constructor Tm3CustomStream.Create(const AStream: IStream;
                                   const AAccess: LongInt
                                  );
begin
 inherited Create(AAccess);
 m2InitOperation(_Status,InitProc00000001($00000001,AStream));
end;

procedure Tm3CustomStream.Cleanup;
begin
 m2DoneOperation(_Status,$00000001,DoneProc00000001);
 inherited;
 _Status := 0;
end;

// start class Tm3CustomHeaderStream

function Tm3CustomHeaderStream.InitProc00000001(const ABitMask: LongWord): LongWord;
begin
 {$IfDef m3UseL3Memory}
 m3HeaderBuffers^.AllocItem(FHeaderData, FHeaderFullSize, InitHeaderData, FHeaderDataSize);
 {$Else  m3UseL3Memory}
 m2MEMAllocBuff(FHeaderData,FHeaderFullSize,InitHeaderData,FHeaderDataSize);
 {$EndIf m3UseL3Memory}
 Result:=ABitMask;
end;

procedure Tm3CustomHeaderStream.DoneProc00000001;
begin
 {$IfDef m3UseL3Memory}
 m3HeaderBuffers^.FreeItem(FHeaderData);
 {$Else  m3UseL3Memory}
 m2MEMFree(FHeaderData);
 {$EndIf m3UseL3Memory}
end;

function Tm3CustomHeaderStream.InitProc00000002(const ABitMask: LongWord): LongWord;
begin
 if not ReadOnly then
 {$IfDef m3UseL3Memory}
  m3HeaderBuffers^.AllocItem(FHeaderDataCompare, FHeaderFullSize, InitHeaderData, FHeaderDataSize);
 {$Else  m3UseL3Memory}
  m2MEMAllocBuff(FHeaderDataCompare,FHeaderFullSize,InitHeaderData,FHeaderDataSize);
 {$EndIf m3UseL3Memory}
 Result:=ABitMask;
end;

procedure Tm3CustomHeaderStream.DoneProc00000002;
begin
 {$IfDef m3UseL3Memory}
 m3HeaderBuffers^.FreeItem(FHeaderDataCompare);
 {$Else  m3UseL3Memory}
 m2MEMFree(FHeaderDataCompare);
 {$EndIf m3UseL3Memory}
end;

function Tm3CustomHeaderStream.InitProc00000004(const ABitMask: LongWord): LongWord;
begin
 {$IFDEF _m3AUTOCREATEHEADER1}
 if (_Stream <> nil) then begin
  LockHeader;
  try
   if (m2COMGetSize(_Stream) = 0) then begin
    Assert(m2COMCheckAccess(m2COMModeAccess(m2COMGetStatStgMode(_Stream)),STGM_WRITE));
    FHeaderLoaded:=1;
    SaveHeader(True);
   end;//m2COMGetSize(_Stream) = 0
  finally
   UnlockHeader;
  end;
 end;//_Stream <> nil
 {$ENDIF}
 Result:=ABitMask;
end;

procedure Tm3CustomHeaderStream.DoneProc00000004;
begin
end;

function Tm3CustomHeaderStream.InitProc00000008(const ABitMask: LongWord): LongWord;
begin
 DefaultInitAction;
 Result:=ABitMask;
end;

procedure Tm3CustomHeaderStream.DoneProc00000008(
                                                  );
begin
 DefaultDoneAction;
end;

function Tm3CustomHeaderStream.InitProc00000010(const ABitMask: LongWord): LongWord;
begin
 if (_Stream <> nil) AND (m2COMGetStatStgMode(_Stream) AND STGM_WRITE = 0) then
  m2COMSetPosition(Int64(FHeaderSize),_Stream);
 Result:=ABitMask;
end;

procedure Tm3CustomHeaderStream.DoneProc00000010;
begin
end;

procedure Tm3CustomHeaderStream.CreateContext;
begin
 inherited;
 FHeaderDataSize:=InitHeaderDataSize;
 FHeaderFullSize:=InitHeaderFullSize;
 FHeaderSize:=CAnyGUIDLength+SizeOf(LongInt)+SizeOf(FHeaderFullSize)+FHeaderFullSize;
end;

procedure Tm3CustomHeaderStream.DefaultInitAction;
begin
 LoadHeader;
end;

procedure   Tm3CustomHeaderStream.DefaultDoneAction;
begin
 SaveHeader;
end;

procedure   Tm3CustomHeaderStream.Read(ABuff: Pointer;
                                       ASize: LongInt;
                                       var   AResult: LongInt;
                                       var   AReturn: HRESULT
                                      );
begin
 if SUCCEEDED(AReturn) then
  AReturn:=_Stream.Read(ABuff,ASize,@AResult);
end;

procedure   Tm3CustomHeaderStream.Write(ABuff: Pointer;
                                        ASize: LongInt;
                                        var   AResult: LongInt;
                                        var   AReturn: HRESULT
                                       );
begin
 if SUCCEEDED(AReturn) then
  AReturn:=_Stream.Write(ABuff,ASize,@AResult);
end;

procedure Tm3CustomHeaderStream.Seek(AOffset     : Int64;
                                     AOrigin     : TSeekOrigin;
                                     var AResult : Int64;
                                     var AReturn : HRESULT);
var
 LOffset : Int64;
begin
 if SUCCEEDED(AReturn) then
 begin
  if (AOrigin = soBeginning) then
   LOffset:=AOffset+Int64(FHeaderSize)
  else
  if (AOrigin = soEnd) then
  begin
   Assert(false, 'Если это всплывёт, то можно этот Assert временно закомментирровать');
   LOffset := AOffset;
  end//AOrigin = soEnd
  else
   LOffset := AOffset;
  AResult:=m2COMSeek(_Stream,LOffset,Ord(AOrigin))-Int64(FHeaderSize);
 end;//SUCCEEDED(AReturn)
end;

procedure Tm3CustomHeaderStream.SetSize(ASize: Int64;
                                        var   AReturn: HRESULT);
begin
 if SUCCEEDED(AReturn) then
  AReturn:=_Stream.SetSize(ASize+Int64(FHeaderSize));
end;

procedure Tm3CustomHeaderStream.LockRegion(AOffset: Int64;
                                           ASize: Int64;
                                           ALockType: LongInt;
                                           var   AReturn: HRESULT);
begin
 if SUCCEEDED(AReturn) then
  AReturn:=_Stream.LockRegion(Int64(FHeaderSize)+AOffset,ASize,ALockType);
end;

procedure Tm3CustomHeaderStream.UnlockRegion(AOffset: Int64;
                                             ASize: Int64;
                                             ALockType: LongInt;
                                             var   AReturn: HRESULT);
begin
 if SUCCEEDED(AReturn) then
  AReturn:=_Stream.UnlockRegion(Int64(FHeaderSize)+AOffset,ASize,ALockType);
end;

function Tm3CustomHeaderStream.pm_GetSize: Int64;
  //override;
  {-}
begin
 Result:=m2COMGetStatStgSize(_Stream)-Int64(FHeaderSize);
end;

function Tm3CustomHeaderStream.pm_GetLocksSupported: Longint;
  //override;
  {-}
begin
 Result:=m2COMGetStatStgLocks(_Stream);
end;

procedure Tm3CustomHeaderStream.StatStgName(var   AResult : PWideChar;
                                            var   AReturn : HRESULT);
  //override;
  {-}
begin
 if SUCCEEDED(AReturn) then
  try
   aResult := m2COMGetStatStgName(_Stream);
  except
   on E: EOleSysError do aReturn := E.ErrorCode;
  end;//try..except
end;

constructor Tm3CustomHeaderStream.Create(const AStream: IStream;
                                         const AAccess: LongInt);
begin
 inherited;
 m2InitOperation(_Status,InitProc00000001($00000001));
 m2InitOperation(_Status,InitProc00000002($00000002));
 m2InitOperation(_Status,InitProc00000004($00000004));
 m2InitOperation(_Status,InitProc00000008($00000008));
 m2InitOperation(_Status,InitProc00000010($00000010));
end;

procedure Tm3CustomHeaderStream.Cleanup;
begin
 m2DoneOperation(_Status,$00000010,DoneProc00000010);
 m2DoneOperation(_Status,$00000008,DoneProc00000008);
 m2DoneOperation(_Status,$00000004,DoneProc00000004);
 m2DoneOperation(_Status,$00000002,DoneProc00000002);
 m2DoneOperation(_Status,$00000001,DoneProc00000001);
 inherited;
 FHeaderData := nil;//            Pointer;
 FHeaderDataCompare := nil;//     Pointer;
 FHeaderDataSize := 0;//        LongInt;

 FHeaderFullSize := 0;//        LongInt;

 FHeaderSize := 0;//            LongInt;

 FHeaderLoaded := 0;//          LongInt;
 FHeaderLocked := 0;//         LongInt;
 _Status := 0;
end;

procedure Tm3CustomHeaderStream.LoadHeader(
                                            );
var
 LBodyCRC        : LongInt;
 LHeaderID       : AnsiString;
 LHeaderFullSize : LongInt;
 LPosition       : Int64;
begin
 if (FHeaderLoaded = 0) then
 begin
  if (_Stream <> nil) AND (m2COMGetStatStgMode(_Stream) AND STGM_WRITE = 0) then
  begin
   // - мы не можем считать Header - значит он уже должен быть у нас
   LPosition:=m2COMGetPosition(_Stream);
   try
    m2COMSetPosition(0,_Stream);

    m2COMCLSIDFromStream(_Stream,LHeaderID);
    m2COMReadBuffer(_Stream,LBodyCRC,SizeOf(LBodyCRC));

    m2COMReadBuffer(_Stream,LHeaderFullSize,SizeOf(LHeaderFullSize));
    m2CheckValue((LHeaderID = GUIDToString(HeaderID)) and
                 (LHeaderFullSize = FHeaderFullSize));

    m2COMReadBuffer(_Stream,FHeaderData^,FHeaderFullSize);
   finally
    m2COMSetPosition(LPosition,_Stream);
   end;//try..finally
   m2MEMCopy(FHeaderDataCompare,FHeaderData,FHeaderDataSize);
  end;//_Stream <> nil..
 end;//FHeaderLoaded = 0
 Inc(FHeaderLoaded);
end;

procedure Tm3CustomHeaderStream.SaveHeader(const AForcedSave: LongBool);
var
 LBodyCRC  : LongInt;
 LPosition : Int64;
 l_Fake    : Int64;
begin
 Dec(FHeaderLoaded);
 if (FHeaderLoaded = 0) AND (_Stream <> nil) AND not ReadOnly then
 begin
  if AForcedSave or
     (m2MEMCompare(FHeaderData,FHeaderDataCompare,FHeaderDataSize) <> 0) then
  begin
     m2MEMCopy(FHeaderDataCompare,FHeaderData,FHeaderDataSize);
   LPosition:=m2COMGetPosition(_Stream);
   try
    LBodyCRC := 0;
    if AForcedSave then
    begin
     if l3IFail(_Stream.Seek(0, STREAM_SEEK_SET, l_Fake)) then
      Exit;
     m2COMCLSIDToStream(_Stream,GUIDToString(HeaderID));
    end//AForcedSave
    else
    if l3IFail(_Stream.Seek(CAnyGUIDLength, STREAM_SEEK_SET, l_Fake)) then
     Exit;
    m2COMWriteBuffer(_Stream,LBodyCRC,SizeOf(LBodyCRC));
    m2COMWriteBuffer(_Stream,FHeaderFullSize,SizeOf(FHeaderFullSize));
    m2COMWriteBuffer(_Stream,FHeaderData^,FHeaderFullSize);
   finally
    _Stream.Seek(lPosition, STREAM_SEEK_SET, l_Fake);
   end;//try..finally
  end;//AForcedSave..
 end;//FHeaderLoaded = 0..
end;

procedure Tm3CustomHeaderStream.LockHeader;
begin
 if ((FHeaderLocked = 0) and m2COMIsLocksSupported(_Stream)) then
  m2COMTimeLock(_Stream,CAnyGUIDLength,Int64(FHeaderSize)-CAnyGUIDLength);
 Inc(FHeaderLocked);
end;

procedure Tm3CustomHeaderStream.UnlockHeader;
begin
 Dec(FHeaderLocked);
 if ((FHeaderLocked = 0) and m2COMIsLocksSupported(_Stream)) then
  m2COMTimeUnlock(_Stream,CAnyGUIDLength,Int64(FHeaderSize)-CAnyGUIDLength);
end;

// start class Tm3BuffStream

 procedure   Tm3BuffStream.LoadBuff(
                                   );
 var
        LResult:                  LongInt;
 begin

  if (FBuffCurPos = FBuffEndPos)
   then
    begin

     m2COMSetPosition(FBuffCurPos,_Stream);

     {$IfDef m3UseL3Memory}
     OleCheck(_Stream.Read(f_Buff.AsPointer,FBuffSize,@LResult));
     {$Else  m3UseL3Memory}
     OleCheck(_Stream.Read(FBuff,FBuffSize,@LResult));
     {$EndIf m3UseL3Memory}

     FBuffEndPos:=FBuffCurPos+Int64(LResult);
     FBuffOffset:=0;

     FBuffModifed:=False;

    end;

 end;

 procedure   Tm3BuffStream.SaveBuff(
                                   );
 var
        LResult:                  LongInt;
 begin

  if FBuffModifed
   then
    begin

     m2COMSetPosition(FBuffCurPos,_Stream);

     {$IfDef m3UseL3Memory}
     OleCheck(_Stream.Write(f_Buff.AsPointer,LongInt(FBuffEndPos-FBuffCurPos),@LResult));
     {$Else  m3UseL3Memory}
     OleCheck(_Stream.Write(FBuff,LongInt(FBuffEndPos-FBuffCurPos),@LResult));
     {$EndIf m3UseL3Memory}

     FBuffCurPos:=FBuffCurPos+Int64(LResult);
     FBuffOffset:=0;

     FBuffModifed:=False;

    end
   else
    begin

     FBuffCurPos:=FBuffEndPos;
     FBuffOffset:=0;

    end;

 end;

 procedure   Tm3BuffStream.Read(ABuff: Pointer;
                                ASize: LongInt;
                                var   AResult: LongInt;
                                var   AReturn: HRESULT
                               );
 var
  lSize : LongInt;
 begin
  if SUCCEEDED(AReturn) then
  begin
   while (AResult <> ASize) do
    begin
     LoadBuff;
     LSize:=LongInt(FBuffEndPos-(FBuffCurPos+Int64(FBuffOffset)));

     if (lSize = 0) then
      Break
     else
      LSize:=LongInt(m2S32Min(LSize,(ASize-AResult)));

     {$IfDef m3UseL3Memory}
     f_Buff.Read(FBuffOffset, PAnsiChar(aBuff) + aResult, LSize);
     {$Else  m3UseL3Memory}
     m2MEMCopy(Pointer(LongInt(ABuff)+AResult),Pointer(LongInt(FBuff)+FBuffOffset),LSize);
     {$EndIf m3UseL3Memory}

     Inc(FBuffOffset,LSize);
     Inc(AResult,LSize);

     if ((FBuffCurPos+Int64(FBuffOffset)) = FBuffEndPos) then
      SaveBuff;
    end;
  end;
 end;

 procedure   Tm3BuffStream.Write(ABuff: Pointer;
                                 ASize: LongInt;
                                 var   AResult: LongInt;
                                 var   AReturn: HRESULT);
 var
  LSize : LongInt;
 begin
  if SUCCEEDED(AReturn) then
  begin
   while (AResult <> ASize) do
    begin
     LoadBuff;

     lSize := FBuffSize - FBuffOffset;

     if (lSize = 0) then
      Break
     else
      LSize:=LongInt(m2S32Min(LSize,(ASize-AResult)));

     {$IfDef m3UseL3Memory}
     f_Buff.Write(FBuffOffset, PAnsiChar(aBuff) + aResult, LSize);
     {$Else  m3UseL3Memory}
     m2MEMCopy(Pointer(LongInt(FBuff)+FBuffOffset),Pointer(LongInt(ABuff)+AResult),LSize);
     {$EndIf m3UseL3Memory}

     Inc(FBuffOffset,LSize);
     Inc(AResult,LSize);

     FBuffModifed:=True;

     FBuffEndPos:=m2S64Max(FBuffEndPos,(FBuffCurPos+Int64(FBuffOffset)));

     FRealSize:=m2S64Max(FBuffEndPos,FRealSize);

     if (FBuffOffset = FBuffSize) then
      SaveBuff;
    end;
  end;
 end;

procedure Tm3BuffStream.Seek(AOffset     : Int64;
                             AOrigin     : TSeekOrigin;
                             var AResult : Int64;
                             var AReturn : HRESULT);

 procedure __Seek(APosition: Int64;
                  var   AResult: Int64);
 begin//__Seek
  if ((APosition >= 0) and (APosition <= FRealSize)) then
  begin
   if (APosition <> (FBuffCurPos+Int64(FBuffOffset))) then
   begin
    if ((APosition >= FBuffCurPos) and (APosition < FBuffEndPos)) then
       FBuffOffset:=LongInt(APosition-FBuffCurPos)
    else
    begin
     SaveBuff;
     FBuffCurPos:=APosition;
     FBuffEndPos:=FBuffCurPos;
    end;//((APosition >= FBuffCurPos) and (APosition < FBuffEndPos))
   end;//APosition <> (FBuffCurPos+Int64(FBuffOffset))
  end//((APosition >= 0) and (APosition <= FRealSize))
  else
   Exit;
  AResult:=APosition;
 end;//__Seek

begin
 if SUCCEEDED(AReturn) then
  case AOrigin of
   soBeginning:
    __Seek(AOffset,AResult);
   soCurrent:
    __Seek(AOffset+FBuffCurPos+Int64(FBuffOffset),AResult);
   soEnd:
    __Seek(AOffset+FRealSize,AResult);
   else
    OleError(E_UNEXPECTED);
  end;//case AOrigin
end;

 procedure   Tm3BuffStream.SetSize(ASize: Int64;
                                   var   AReturn: HRESULT);
 begin

  if SUCCEEDED(AReturn)
   then
    begin

     SaveBuff;

     m2COMSetSize(ASize,_Stream);

     FBuffCurPos := ASize;
     FBuffEndPos := FBuffCurPos;

     FRealSize := FBuffEndPos;

    end;

 end;

function Tm3BuffStream.pm_GetSize: Int64;
  //override;
  {-}
begin
 Result := FRealSize;
end;

// Tm3BuffStream.public

 class function Tm3BuffStream.MakeInterface(const AStream: IStream): IStream;
 begin
  with Create(AStream) do
   try
    Result := Tm3BuffStream(Instance);
   finally
    Free;
   end;
 end;

(* class function Tm3BuffStream.MakeSafeInterface(out AResult: IStream; const AStream: IStream): HRESULT;
 begin
  Result := S_OK;
   try
    AResult := MakeInterface(AStream);
   except
    on E: EOutOfMemory do Result:=STG_E_INSUFFICIENTMEMORY;
    on E: EOleSysError do Result:=E.ErrorCode;
   else
    Result:=E_UNEXPECTED;
   end;
 end;*)

 constructor Tm3BuffStream.Create(const AStream: IStream);
 begin
  inherited Create(AStream,m2COMModeAccess(m2COMGetStatStgMode(AStream)));
  FRealSize:=m2COMGetSize(_Stream);
  FBuffCurPos:=m2COMGetPosition(_Stream);
  FBuffEndPos:=FBuffCurPos;

  {$IfDef m3UseL3Memory}
  if (f_Buff = nil) then
   f_Buff := Tl3BufferStreamMemoryPool.Create;
  FBuffSize := f_Buff.Size;
  {$Else  m3UseL3Memory}
  FBuffSize := Cm3BasClaBuffSize;
  m2MEMAlloc(FBuff,FBuffSize);
  {$EndIf m3UseL3Memory}
  LoadBuff;
 end;

procedure Tm3BuffStream.BeforeRelease;
begin
 SaveBuff;
 inherited;
end;

procedure Tm3BuffStream.Release;
begin
 // не станем этого делать в Cleanup,
 //пускай кеширует с буфером, съэкономим на распределении памяти
 {$IfDef m3UseL3Memory}
 l3Free(f_Buff);
 {$Else  m3UseL3Memory}
 m2MEMFree(FBuff);
 {$EndIf m3UseL3Memory}

 inherited;
end;

class function Tm3BuffStream.IsCacheable: Bool;
begin
 //Result := false;
 Result := True;
end;

// start class Tm3FileStreamMapView

 function    Tm3FileStreamMapView.InitProc00000001(const ABitMask: LongWord;
                                                   const AStream: Tm3FileStream
                                                  ): LongWord;
 begin

  with Self do
   begin

    FStream:=AStream.Use;

   end;

  Result:=ABitMask;

 end;

 procedure   Tm3FileStreamMapView.DoneProc00000001(
                                                  );
 begin
  FreeAndNil(FStream);
 end;

 function    Tm3FileStreamMapView.InitProc00000002(const ABitMask: LongWord;
                                                   const AProtect: LongWord
                                                  ): LongWord;

  function    __CreateFileMapping(const AHandle: THandle;
                                  const AProtect: LongWord;
                                  var   AResult: THandle
                                 ): LongBool;
  begin

   if (Win32Platform = VER_PLATFORM_WIN32_NT)
    then
     begin

      AResult:=CreateFileMappingW(AHandle,nil,AProtect,0,0,nil);

     end
    else
     begin

      AResult:=CreateFileMappingA(AHandle,nil,AProtect,0,0,nil);

     end;

   Result:=(AResult <> THandle(0));

  end;

 begin

  with Self do
   begin

    Win32Check(__CreateFileMapping(FStream._Handle,AProtect,FHandle));

   end;

  Result:=ABitMask;

 end;

 procedure   Tm3FileStreamMapView.DoneProc00000002(
                                                  );
 begin

  with Self do
   begin

    Win32Check(CloseHandle(FHandle));

   end;

 end;

 function    Tm3FileStreamMapView.InitProc00000004(const ABitMask: LongWord;
                                                   const AAccess: LongWord
                                                  ): LongWord;

  function    __MapViewOfFile(const AHandle: THandle;
                              const AAccess: LongWord;
                              var   AResult: Pointer
                             ): LongBool;
  begin

   AResult:=MapViewOfFile(AHandle,AAccess,0,0,0);
   Result:=(AResult <> nil);

  end;

 begin

  with Self do
   begin

    Win32Check(__MapViewOfFile(FHandle,AAccess,FMemBase));

   end;

  Result:=ABitMask;

 end;

 procedure   Tm3FileStreamMapView.DoneProc00000004(
                                                  );
 begin

  with Self do
   begin

    Win32Check(UnmapViewOfFile(FMemBase));

   end;

 end;

 function    Tm3FileStreamMapView.pm_GetMemSize(
                                               ): LongInt;

  function    __GetFileSize(const AHandle: THandle;
                            var   AResult: LongInt
                           ): LongBool;
  begin

   AResult:=LongInt(GetFileSize(AHandle,nil));
   Result:=(AResult <> LongInt(-1));

  end;

 begin

  if (FMemSize = LongInt(-1))
   then
    begin

     Win32Check(__GetFileSize(FStream._Handle,FMemSize));

    end;

  Result:=FMemSize;

 end;

 procedure Tm3FileStreamMapView.CreateContext;
 begin
  inherited CreateContext;
  FMemSize:=LongInt(-1);
 end;

constructor Tm3FileStreamMapView.Create(const AStream: Tm3FileStream;
                                        const AProtect: LongWord;
                                        const AAccess: LongWord);
begin
 inherited Create;
 m2InitOperation(_Status,InitProc00000001($00000001,AStream));
 m2InitOperation(_Status,InitProc00000002($00000002,AProtect));
 m2InitOperation(_Status,InitProc00000004($00000004,AAccess));
end;

procedure Tm3FileStreamMapView.Cleanup;
begin
 m2DoneOperation(_Status,$00000004,DoneProc00000004);
 m2DoneOperation(_Status,$00000002,DoneProc00000002);
 m2DoneOperation(_Status,$00000001,DoneProc00000001);
 inherited;
 _Status := 0;
end;

// start class Tm3BaseList

procedure Tm3BaseList.pm_SetCount(ACount: LongInt);

  function __Forward(anItemPtr: PPointer; anIndex: LongInt): Boolean; far;
  begin
   Result := true;
   AllocItem(anItemPtr^);
  end;

  function __Backward(anItemPtr: PPointer; anIndex: LongInt): Boolean;
  begin
   Result := true;
   l3Free(anItemPtr^);
  end;

var
 LCount : LongInt;
begin
 LCount := Count;
 inherited;
 if (m2S32Compare(LCount,ACount) = -1) then
  IterateF(LCount,Pred(ACount),l3L2IA(@__Forward));
end;

 procedure   Tm3BaseList.LoadItem(const AStream: IStream;
                                  const AItem: Pointer
                                 );
 begin
 end;

 procedure   Tm3BaseList.SaveItem(const AStream: IStream;
                                  const AItem: Pointer
                                 );
 begin
 end;

 function    Tm3BaseList.CompareKeyByItem(const AKey: Pointer;
                                          const AItem: Pointer
                                         ): Integer;
 begin

  Result:=0;

 end;

function Tm3BaseList.FindItemByKey(const AKey     : Pointer;
                                   var   theIndex : LongInt): LongBool;
var
  L, H, i, C: Longint;
begin
 theIndex := 0;
 Result := false;
 if not Empty then begin
   L := 0;
   H := Pred(Count);
   while (L <= H) do begin
    i := (L + H) shr 1;
    C := CompareKeyByItem(aKey, Items[i]);
    if (C > 0) then L := Succ(i) else begin
     H := Pred(i);
     if (C = 0) then begin
      Result := true;
      L := i;
     end;//C = 0
    end;//C < 0
   end;{while (L..}
   theIndex := L;
 end;{not Empty}
end;

constructor Tm3BaseList.Create;
begin
 Make;
end;

procedure Tm3BaseList.Assign(const ASource: Tm3BaseList);

 function __Forward(AItemPtr: PPointer; AIndex: LongInt): Boolean; far;
 begin
  Result := true;
  AssignItem(AItemPtr^,ASource.GetItem(AIndex));
 end;

begin
 Clear;
 Count := ASource.Count;
 IterateAllF(l3L2IA(@__Forward));
end;

 procedure   Tm3BaseList.LoadFromStream(const AStream: IStream; const APosition: Int64);

  procedure   __LoadFromStream(const AStream: IStream);

   function    __Forward(const AItemPtr: PPointer;
                         const AIndex: LongInt
                        ): Boolean;
   begin

    Result:=True;

    LoadItem(AStream,AItemPtr^);

   end;

  var
   LCount    : LongInt;
   LItemsCRC : LongInt;
  begin
   if (AStream.Read(@LCount, SizeOf(LCount), nil) = S_False) then
    Exit;
   Count:=LCount;

   IterateAllF(l3L2IA(@__Forward));

   m2COMReadBuffer(AStream,LItemsCRC,SizeOf(LItemsCRC));

  end;

 begin

  Clear;

  if (APosition = Int64(-1))
   then
   else
    begin

     m2COMSetPosition(APosition,AStream);

     __LoadFromStream(Tm3BuffStream.MakeInterface(AStream));

    end;

 end;

function Tm3BaseList.SaveToStream(const AStream: IStream): Int64;

 procedure __SaveToStream(const aStream: IStream);

  function __Forward(aItemPtr: PPointer; aIndex: LongInt): Boolean; far;
  begin
   Result := true;
   SaveItem(aStream, aItemPtr^);
  end;

 var
  LCount    : LongInt;
  LItemsCRC : LongInt;
 begin//__SaveToStream
  LCount := Count;
  m2COMWriteBuffer(AStream,LCount,SizeOf(LCount));
  IterateAllF(l3L2IA(@__Forward));
  LItemsCRC:=0;
  m2COMWriteBuffer(AStream,LItemsCRC,SizeOf(LItemsCRC));
 end;//__SaveToStream

begin
 if (Count = 0) then
  Result := Int64(-1)
 else begin
  Result := m2COMGetPosition(AStream);
  __SaveToStream(Tm3BuffStream.MakeInterface(AStream));
 end;//Count = 0
 m2COMTruncate(AStream);
end;

class function Tm3BaseList.IsCacheable: Bool;
begin
 Result := true;
 //Result := false;
end;

// start class Tm3BaseListHandle

procedure Tm3BaseListHandle.LoadBuff(const AStream: IStream;
                                     const ABuff: Pointer;
                                     const ASize: LongInt);
begin
 m2COMReadBuffer(AStream,ABuff^,ASize);
end;

procedure Tm3BaseListHandle.SaveBuff(const AStream: IStream;
                                     const ABuff: Pointer;
                                     const ASize: LongInt);
begin
 m2COMWriteBuffer(AStream,ABuff^,ASize);
end;

procedure Tm3BaseListHandle.LoadAnsiString(const AStream : IStream;
                                           var   AString : AnsiString);
var
 LSize : LongInt;
begin
 LoadBuff(AStream,@LSize,SizeOf(LSize));
 SetLength(AString,(LSize div SizeOf(AnsiChar)));
 LoadBuff(AStream,PAnsiChar(AString),LSize);
end;

procedure Tm3BaseListHandle.SaveAnsiString(const AStream : IStream;
                                           const AString : AnsiString);
var
 LSize : LongInt;
begin
 LSize:=Length(AString)*SizeOf(AnsiChar);
 SaveBuff(AStream,@LSize,SizeOf(LSize));
 SaveBuff(AStream,PAnsiChar(AString),LSize);
end;

procedure Tm3BaseListHandle.LoadWideString(const AStream : IStream;
                                           var   AString : WideString);
var
 LSize : LongInt;
begin
 LoadBuff(aStream, @LSize, SizeOf(LSize));
 SetLength(aString, (LSize div SizeOf(WideChar)));
 LoadBuff(aStream, PWideChar(aString), LSize);
end;

procedure Tm3BaseListHandle.LoadWideString(const AStream : IStream;
                                           aString       : Tl3String);
  //overload;
var
 l_Size : LongInt;
begin
 LoadBuff(aStream, @l_Size, SizeOf(l_Size));
 aString.CodePage := CP_Unicode;
 aString.Len := l_Size div SizeOf(WideChar);
 LoadBuff(aStream, PWideChar(aString.St), l_Size);
end;

procedure Tm3BaseListHandle.SaveWideString(const AStream : IStream;
                                           const AString : WideString);
var
 LSize : LongInt;
begin
 LSize:=Length(AString)*SizeOf(WideChar);
 SaveBuff(AStream,@LSize,SizeOf(LSize));
 SaveBuff(AStream,PWideChar(AString),LSize);
end;

procedure Tm3BaseListHandle.SaveWideString(const AStream : IStream;
                                           aString       : Tl3String);
  //overload;
var
 l_Size : LongInt;
begin
 aString.CodePage := CP_Unicode;
 l_Size := aString.Len * SizeOf(WideChar);
 SaveBuff(AStream, @l_Size, SizeOf(l_Size));
 SaveBuff(AStream, PWideChar(aString.St), l_Size);
end;

function Tm3BaseListHandle.GetInnerData: Pointer;
  //virtual;
  {-}
begin
 Result := nil;
end;

function Tm3BaseListHandle.GetInnerDataSize: Longint;
  //virtual;
  {-}
begin
 Result := 0;
end;

procedure Tm3BaseListHandle.BeforeAddToCache;
  //override;
  {-}
var
 l_Data : Pointer;
begin
 l_Data := GetInnerData;
 if (l_Data <> nil) then
  l3FillChar(l_Data^, GetInnerDataSize, 0);
 inherited;
end;

 procedure   Tm3BaseListHandle.LoadHandle(const AStream: IStream);
 begin
 end;

 procedure   Tm3BaseListHandle.SaveHandle(const AStream: IStream);
 begin
 end;

// start class Tm3BaseHandleList

procedure Tm3BaseHandleList.AssignItem(const AItem1: Pointer;
                                       const AItem2: Pointer);
begin
 Tm3BaseListHandle(aItem1).AssignHandle(Tm3BaseListHandle(aItem2));
end;

procedure Tm3BaseHandleList.LoadItem(const AStream: IStream;
                                     const AItem: Pointer);
begin
 Tm3BaseListHandle(aItem).LoadHandle(AStream);
end;

procedure Tm3BaseHandleList.SaveItem(const AStream: IStream;
                                     const AItem: Pointer);
begin
 Tm3BaseListHandle(aItem).SaveHandle(AStream);
end;

// start class Tm3BaseStore

constructor Tm3BaseStore.Create(const anAccess: LongInt);
  //reintroduce;
  {-}
begin
 inherited Create;
 FAccess := anAccess;
end;

function Tm3BaseStore.ReadOnly: Boolean;
  {-}
begin
 Result := (_Access AND (STGM_WRITE OR STGM_READWRITE) = 0);
end;

procedure Tm3BaseStore.StatStgMode(out AResult: LongInt;
                                   var AReturn: HRESULT);
begin
 if SUCCEEDED(AReturn) then
  AResult := pm_GetAccess;
end;

procedure Tm3BaseStore.StatStgLocks(out AResult: LongInt;
                                    var AReturn: HRESULT);
  {-}
begin
 if SUCCEEDED(AReturn) then
  AResult := pm_GetLocksSupported;
end;

function Tm3BaseStore.pm_GetAccess: Longint;
  {-}
begin
 Result := _Access;
end;

function Tm3BaseStore.pm_GetLocksSupported: Longint;
  //virtual;
  {-}
begin
 Result := 0;
end;

function Tm3BaseStore.pm_GetSize: Int64;
  //virtual;
  {* - размер. Для перекрытия в потомках. }
begin
 Result := 0;
end;

function Tm3BaseStore.pm_GetPosition: Int64;
 //virtual;
 {-}
begin
 Result := 0;
 Assert(false);
end;

procedure Tm3BaseStore.StatStgSize(var AResult: Int64;
                                   var AReturn: HRESULT);
  {* - размер. }
begin
 if SUCCEEDED(AReturn) then
  aResult := pm_GetSize;
end;

{$IfDef m3UseL3Memory}
initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\m3\m3bascla.pas initialization enter'); {$EndIf}
 m3HeaderBuffers := l3NewMemoryChain(Cm3BasClaDefHeaderSize);
 m3CopyBuffers := l3NewMemoryChain(CBuffSize);
{$EndIf m3UseL3Memory}

{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\m3\m3bascla.pas initialization leave'); {$EndIf}
end.

