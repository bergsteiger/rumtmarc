unit    m3SorCla;
(*
//
//
// .Author: Mickael P. Golovin.
// .Copyright: 1997-2001 by Archivarius Team, _free for non commercial use.
//
//
*)
// $Id: m3sorcla.pas,v 1.5 2011/12/28 09:29:10 lulin Exp $

// $Log: m3sorcla.pas,v $
// Revision 1.5  2011/12/28 09:29:10  lulin
// {RequestLink:325257155}
// - чистим код.
//
// Revision 1.4  2009/03/19 16:28:30  lulin
// [$139443095].
//
// Revision 1.3  2005/02/14 15:12:01  lulin
// - изменены сигнатуры методов.
//
// Revision 1.2  2004/09/21 11:22:27  lulin
// - Release заменил на Cleanup.
//
// Revision 1.1  2004/09/02 08:09:49  law
// - cleanup.
//
// Revision 1.10  2004/06/25 16:47:33  migel
// - change/fix: для совместимости с win9x перешли на собственную реализацию `Interlocked*` функций.
//
// Revision 1.9  2002/03/18 16:48:04  law
// - cleanup.
//
// Revision 1.8  2002/03/11 14:53:49  law
// - try to bug fix: Integer Overflow.
//
// Revision 1.7  2002/03/11 12:47:52  law
// - try to bug fix: Integer Overflow.
//
// Revision 1.6  2002/02/28 14:23:46  law
// - bug fix: неправильно работала функция сравнения.
//
// Revision 1.5  2002/02/26 15:48:10  law
// - optimization: попытка оптимизации путем уменьшения фрагментации выделяемой памяти.
//
// Revision 1.4  2002/02/21 15:58:16  law
// - optimization.
//
// Revision 1.3  2002/02/20 15:46:03  law
// - вставлены директивы CVS.
//

{$I m3Define.inc}

 interface


uses
         Windows,
        SysUtils,

         ActiveX,
          COMObj,

  l3Types,        
  l3Base,
  l3Memory,

        m2AddDbg,
        m2AddRdr,
        m2AddPrc,
        m2S32Lib,
        m2MEMLib,
        m2TMPLib,
        m2COMLib,

        m3BasCla,
        m3ArcMgr,
        m3SorInt;


 const
        Cm3SorClaMaxMergedItems=  10;
        Cm3SorClaMaxSharedItems=  01;


 type
        Tm3Sorter=                class;
        Tm3SorterSharedPool=      class;


        Tm3SorClaSharedArray=     packed array[0..Pred(Cm3SorClaMaxSharedItems)] of LongInt;


        Pm3SorClaMergeInfo=       ^Tm3SorClaMergeInfo;
        Tm3SorClaMergeInfo=       packed record

                                   RStream: IStream;

                                   RIndex: Cardinal;
                                   RCount: Cardinal;

                                   RBegPtr: Pointer;
                                   RCurPtr: Pointer;
                                   REndPtr: Pointer;

                                  end;


        Pm3SorClaMergeInfoArray=  ^Tm3SorClaMergeInfoArray;
        Tm3SorClaMergeInfoArray=  packed array [0..Pred(Cm3SorClaMaxMergedItems)] of Tm3SorClaMergeInfo;


        Tm3Sorter=                class(Tm3BaseClass,Im3Sorter)
         private


          _Status:                LongWord;


                function          InitProc00000001    (const ABitMask: LongWord;
                                                       const AItemSize: LongInt
                                                      ): LongWord;

                procedure         DoneProc00000001    (
                                                      );


                function          InitProc00000002    (const ABitMask: LongWord;
                                                       const ASorterComparer: Im3SorterComparer
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


                function          InitProc00000020    (const ABitMask: LongWord
                                                      ): LongWord;

                procedure         DoneProc00000020    (
                                                      );


         protected


                procedure         CreateContext       (
                                                      ); override;


         private


          FRTLCriticalSection:    TRTLCriticalSection;

          FCount:                 Int64;
          
          FMemBuff:               Pointer;
          FMemSize:               LongInt;

          FMemBegPtr:             Pointer;
          FMemCurPtr:             Pointer;
          FMemEndPtr:             Pointer;

          FItemSize:              LongInt;

          FMrgCount:              LongInt;
          FMrgIndex:              LongInt;
          FMrgTaild:              LongInt;

          FSorStatus:             LongBool;

          FMergeInfoArray:        Tm3SorClaMergeInfoArray;

          FTempPathNameFormat:    WideString;

          FSorterComparer:        Im3SorterComparer;
          FSorterSharedPool:      Im3SorterSharedPool;
          f_ItemBuffers : Pl3MemoryChain;


                function          InitGetStream       (const ANumber: LongInt
                                                      ): IStream;

                function          InitPutStream       (const ANumber: LongInt
                                                      ): IStream;


                procedure         SortBuff            (const ABuff: Pointer;
                                                       const ASize: LongInt
                                                      );


                procedure         SaveBuff            (const AMrgIndex: LongInt;
                                                       const ABuff: Pointer;
                                                       const ASize: LongInt
                                                      );


                procedure         InitMemBuff         (const ACount: Int64 = 0
                                                      );

                procedure         DoneMemBuff         (const ACount: Int64 = 0
                                                      );


                function          GetItemPtr          (const AMrgCount: LongInt
                                                      ): Pointer;


                procedure         OpenGroupStreams    (const AMrgCount: LongInt
                                                      );

                procedure         CloseGroupStreams   (const AMrgCount: LongInt
                                                      );

                procedure         MergeGroupStreams   (const AMrgCount: LongInt
                                                      );


                procedure         JoinStreams         (
                                                      );


         protected


         public


          class function          MakeInterface       (const AItemSize: LongInt;
                                                       const ASorterComparer: Im3SorterComparer
                                                      ): Im3Sorter;

          class function          MakeSafeInterface   (out   AResult: Im3Sorter;
                                                       const AItemSize: LongInt;
                                                       const ASorterComparer: Im3SorterComparer
                                                      ): HRESULT;


                constructor       Create              (const AItemSize: LongInt;
                                                       const ASorterComparer: Im3SorterComparer
                                                      );

                procedure         Cleanup             (
                                                      ); override;


                procedure         AfterConstruction   (
                                                      ); override;


                procedure         Reset               (
                                                      );


                function          GetCount            (
                                                      ): Int64;


                function          GetItemSize         (
                                                      ): LongInt;


                function          Get                 (const AItem     : Pointer;
                                                       const AItemSize : LongInt;
                                                       aCount          : PLarge = nil
                                                      ): LongBool;

                procedure         Put                 (const AItem: Pointer;
                                                       const AItemSize: LongInt
                                                      );


                function          Sort                (
                                                      ): Int64;


         end;


        Tm3SorterSharedPool=      class(Tm3BaseClass,Im3SorterSharedPool)
         private


          _Status:                LongWord;


                function          InitProc00000001    (const ABitMask: LongWord
                                                      ): LongWord;

                procedure         DoneProc00000001    (
                                                      );


         private


          FMemBuff:               Pointer;
          FMemSize:               LongInt;
          FMaxSize:               LongInt;

          FUseCount:              LongInt;

          FSharedArray:           Tm3SorClaSharedArray;


         protected


         public


          class function          MakeInterface       (
                                                      ): Im3SorterSharedPool;

          class function          MakeSafeInterface   (out   AResult: Im3SorterSharedPool
                                                      ): HRESULT;


          class procedure         ShareInterface      (var   ASorterSharedPool: Im3SorterSharedPool
                                                      );

          class procedure         UnshareInterface    (var   ASorterSharedPool: Im3SorterSharedPool
                                                      );


                constructor       Create              (
                                                      );

                procedure         Cleanup             (
                                                      ); override;


                procedure         AfterConstruction   (
                                                      ); override;


                function          GetMemBuff          (
                                                      ): Pointer;

                function          GetMemSize          (
                                                      ): LongInt;


                function          GetMaxCount         (
                                                      ): LongInt;

                function          GetUseCount         (
                                                      ): LongInt;


                function          GetMaxSize          (const ARndSize: LongInt
                                                      ): LongInt;


                procedure         LockBuff            (var   ABuff: Pointer
                                                      );

                procedure         UnlockBuff          (var   ABuff: Pointer
                                                      );


         end;


implementation

uses
  m2S64Lib
  ;

 var
        GRTLCriticalSection:      TRTLCriticalSection;

        GSorterSharedPool:        Tm3SorterSharedPool = nil;


// Tm3Sorter.private

 function    Tm3Sorter.InitProc00000001(const ABitMask: LongWord;
                                        const AItemSize: LongInt
                                       ): LongWord;
 begin

  with Self do
   begin

    FItemSize:=AItemSize;

   end;

  Result:=ABitMask;

 end;

 procedure   Tm3Sorter.DoneProc00000001(
                                       );
 begin

  with Self do
   begin
   end;

 end;

 function    Tm3Sorter.InitProc00000002(const ABitMask: LongWord;
                                        const ASorterComparer: Im3SorterComparer
                                       ): LongWord;
 begin

  with Self do
   begin

    FSorterComparer:=ASorterComparer;

   end;

  Result:=ABitMask;

 end;

 procedure   Tm3Sorter.DoneProc00000002(
                                       );
 begin

  with Self do
   begin

    FSorterComparer:=nil;

   end;

 end;

 function    Tm3Sorter.InitProc00000004(const ABitMask: LongWord
                                       ): LongWord;
 begin

  with Self do
   begin

    Tm3SorterSharedPool.ShareInterface(FSorterSharedPool);

   end;

  Result:=ABitMask;

 end;

 procedure   Tm3Sorter.DoneProc00000004(
                                       );
 begin

  with Self do
   begin

    Tm3SorterSharedPool.UnshareInterface(FSorterSharedPool);

   end;

 end;

 function    Tm3Sorter.InitProc00000008(const ABitMask: LongWord
                                       ): LongWord;
 begin

  with Self do
   begin

    InitializeCriticalSection(FRTLCriticalSection);

   end;

  Result:=ABitMask;

 end;

 procedure   Tm3Sorter.DoneProc00000008(
                                       );
 begin

  with Self do
   begin

    DeleteCriticalSection(FRTLCriticalSection);

   end;

 end;

 function    Tm3Sorter.InitProc00000010(const ABitMask: LongWord
                                       ): LongWord;
 begin

  with Self do
   begin

    Reset();

   end;

  Result:=ABitMask;

 end;

 procedure   Tm3Sorter.DoneProc00000010(
                                       );
 begin

  with Self do
   begin

    Reset();

   end;

 end;

 function    Tm3Sorter.InitProc00000020(const ABitMask: LongWord
                                       ): LongWord;
 begin

  with Self do
   begin

    FMemSize:=FSorterSharedPool.GetMaxSize(FItemSize);

   end;

  Result:=ABitMask;

 end;

 procedure   Tm3Sorter.DoneProc00000020(
                                       );
 begin

  with Self do
   begin
   end;

 end;

 function    Tm3Sorter.InitGetStream(const ANumber: LongInt
                                    ): IStream;
 const
        CAccess=                  GENERIC_READ;

        CSharedMode=              0;

        CDistribution=            OPEN_EXISTING;

        CFlags=                   FILE_ATTRIBUTE_HIDDEN or
                                  FILE_ATTRIBUTE_TEMPORARY or
                                  FILE_FLAG_DELETE_ON_CLOSE;
 begin

  Result:=Tm3InflateStreamManager.MakeInterface(Tm3FileStream.MakeInterface(Format(FTempPathNameFormat,[ANumber]),CAccess,CSharedMode,CDistribution,CFlags));

 end;

 function    Tm3Sorter.InitPutStream(const ANumber: LongInt
                                    ): IStream;
 const
        CAccess=                  GENERIC_READ or
                                  GENERIC_WRITE;

        CSharedMode=              0;

        CDistribution=            CREATE_NEW;

        CFlags=                   FILE_ATTRIBUTE_HIDDEN or
                                  FILE_ATTRIBUTE_TEMPORARY;
 begin

  Result:=Tm3DeflateStreamManager.MakeInterface(Tm3FileStream.MakeInterface(Format(FTempPathNameFormat,[ANumber]),CAccess,CSharedMode,CDistribution,CFlags));

 end;

procedure   Tm3Sorter.SortBuff(const ABuff: Pointer;
                               const ASize: LongInt
                              );

 function    __BuffItemPtr(const ABuff: Pointer;
                           const AIndex: LongInt
                          ): Pointer;
 begin

  Result:=Pointer(LongInt(ABuff)+AIndex*FItemSize);

 end;

 procedure   __SwapItems(const AItemPtr1: Pointer;
                         const AItemPtr2: Pointer;
                         const AItemPtr3: Pointer
                        );
 begin

  m2MEMCopy(AItemPtr3,AItemPtr1,FItemSize);
  m2MEMCopy(AItemPtr1,AItemPtr2,FItemSize);
  m2MEMCopy(AItemPtr2,AItemPtr3,FItemSize);

 end;

const
       CItemStackSize=           32;
type
       TItemStack=               packed array [1..CItemStackSize] of LongInt;
var
 LInterval:                LongInt;
 LItem1:                   LongInt;
 LItem2:                   LongInt;
 LItemPtr1:                Pointer;
 LItemPtr2:                Pointer;
 LItemPtr3:                Pointer;
 LItemStack1:              TItemStack;
 LItemStack2:              TItemStack;
 LItemStackPtr:            LongInt;
 LPivItem1:                LongInt;
 LPivItem2:                LongInt;
 LPivItem3:                LongInt;
 LPivItemPtr:              Pointer;
 LSwpItemPtr:              Pointer;
begin
 f_ItemBuffers.AllocItem(LPivItemPtr);
 try
  f_ItemBuffers.AllocItem(LSwpItemPtr);
  try

   // инициализируем стек:
   LItemStackPtr := 1;
   LItemStack1[LItemStackPtr] := 0;
   LItemStack2[LItemStackPtr] := Pred(ASize div FItemSize);

   // последовательно выбираем верхние части массива из стека:
   repeat

    // выбираем из стека:
    LItem1:=LItemStack1[LItemStackPtr];
    LItem2:=LItemStack2[LItemStackPtr];
    Dec(LItemStackPtr);

    // сортируем текущую часть массива
    repeat
     LPivItem1:=LItem1;
     LPivItem2:=LItem2;
     LInterval:=Succ(LPivItem2-LPivItem1);

     // выбираем середину интервала:
     LPivItem3:=LPivItem1+(LInterval shr 1);

     if (LInterval >= (CItemStackSize shr 1)) then begin

      LItemPtr1 := __BuffItemPtr(ABuff,LPivItem1);
      LItemPtr2 := __BuffItemPtr(ABuff,LPivItem2);
      LItemPtr3 := __BuffItemPtr(ABuff,LPivItem3);

      if (FSorterComparer.Compare(LItemPtr3,LItemPtr1,FItemSize) < 0) then
       __SwapItems(LItemPtr3,LItemPtr1,LSwpItemPtr);
      if (FSorterComparer.Compare(LItemPtr2,LItemPtr1,FItemSize) < 0) then
       __SwapItems(LItemPtr2,LItemPtr1,LSwpItemPtr);
      if (FSorterComparer.Compare(LItemPtr2,LItemPtr3,FItemSize) < 0) then
       __SwapItems(LItemPtr2,LItemPtr3,LSwpItemPtr);

      __SwapItems(LItemPtr3,__BuffItemPtr(ABuff,Pred(LPivItem2)),LSwpItemPtr);

      LPivItem3:=Pred(LPivItem2);

      Inc(LPivItem1);
      Dec(LPivItem2,2);

     end;//LInterval >= (CItemStackSize shr 1)

     m2MEMCopy(LPivItemPtr,__BuffItemPtr(ABuff,LPivItem3),FItemSize);

     repeat
      while (FSorterComparer.Compare(__BuffItemPtr(ABuff,LPivItem1),LPivItemPtr,FItemSize) < 0) do
       Inc(LPivItem1);
      while (FSorterComparer.Compare(LPivItemPtr,__BuffItemPtr(ABuff,LPivItem2),FItemSize) < 0) do
       Dec(LPivItem2);

      if (LPivItem1 = LPivItem2) then begin
       Inc(LPivItem1);
       Dec(LPivItem2);
      end else if (LPivItem1 < LPivItem2) then begin
       __SwapItems(__BuffItemPtr(ABuff,LPivItem1),__BuffItemPtr(ABuff,LPivItem2),LSwpItemPtr);
       Inc(LPivItem1);
       Dec(LPivItem2);
      end;
     until (LPivItem1 > LPivItem2);

     // решаем какую часть массива сортировать дальше:
     if ((LPivItem2-LItem1) < (LItem2-LPivItem1)) then begin
      // - левая часть больше
        if (LPivItem1 < LItem2) then begin
         // запоминаем необходимость сортировать правую часть:
           Inc(LItemStackPtr);
           LItemStack1[LItemStackPtr] := LPivItem1;
           LItemStack2[LItemStackPtr] := LItem2;
        end;
        LItem2:=LPivItem2;
        // - продолжаем сортировать левую часть
     end else begin
      // - правая часть больше
        if (LItem1 < LPivItem2) then begin
         // запоминаем необходимость сортировать левую часть:
           Inc(LItemStackPtr);
           LItemStack1[LItemStackPtr] := LItem1;
           LItemStack2[LItemStackPtr] := LPivItem2;
        end;
        LItem1:=LPivItem1;
        // - продолжаем сортировать правую часть
     end;
    until (LItem1 >= LItem2);
   until (LItemStackPtr = 0);
  finally
   f_ItemBuffers.FreeItem(LSwpItemPtr);
  end;//try..finally
 finally
  f_ItemBuffers.FreeItem(LPivItemPtr);
 end;//try..finally
end;

 procedure   Tm3Sorter.SaveBuff(const AMrgIndex: LongInt;
                                const ABuff: Pointer;
                                const ASize: LongInt
                               );
 begin

  m2COMWriteBuffer(InitPutStream(AMrgIndex),ABuff^,ASize);

 end;

 procedure   Tm3Sorter.InitMemBuff(const ACount: Int64
                                  );
 begin

  if (ACount = 0)
   then
    begin

     FSorterSharedPool.LockBuff(FMemBuff);
      try

       FMemBegPtr:=FMemBuff;
       FMemCurPtr:=FMemBuff;
       FMemEndPtr:=Pointer(LongInt(FMemBuff)+FMemSize);

      except

       FSorterSharedPool.UnlockBuff(FMemBuff);

       raise;

      end;

    end;

 end;

 procedure   Tm3Sorter.DoneMemBuff(const ACount: Int64
                                  );
 begin

  if (ACount = 0)
   then
    begin

     FSorterSharedPool.UnlockBuff(FMemBuff);

    end;

 end;

function Tm3Sorter.GetItemPtr(const AMrgCount: LongInt): Pointer;

 function __Compare(const AItem1 : Pointer;
                    const AItem2 : Pointer): Integer;
 begin//__Compare
  if (aItem1 = nil) then begin
   if (aItem2 = nil) then
    Result := 0
   else
    Result := 1;
  end else begin
   if (aItem2 = nil) then
    Result := -1
   else
    Result:=FSorterComparer.Compare(AItem1,AItem2,FItemSize);
  end;//aItem1 = nil
 end;//__Compare

var
 l_FoundIndex : LongInt;
 l_Index      : LongInt;
begin
 Result := nil;
 l_FoundIndex := -1;
 for l_Index :=0 to Pred(AMrgCount) do begin
  with FMergeInfoArray[l_Index] do begin
   if (RCurPtr = REndPtr) then begin
    // - достигли конца буфера
    m2COMReadBuffer(RStream,
                    RBegPtr^,
                    m2S64Min(Cardinal(REndPtr)-Cardinal(RBegPtr),
                             Int64(RCount-RIndex)*Int64(FItemSize)));
    // - надо считать следующую порцию
    RCurPtr:=RBegPtr;
   end;//RCurPtr = REndPtr
   if ((RIndex <> RCount) and (__Compare(RCurPtr,Result) < 0)) then begin
    // - не кончились элементы и наш элемент минимальный
    Result := RCurPtr;
    l_FoundIndex := l_Index;
   end;
  end;//with FMergeInfoArray[l_Index]
 end;//for l_Index
 if (Result <> nil) then begin
  // - найден какой-то элемент
  with FMergeInfoArray[l_FoundIndex] do begin
   // - сдвигаем указатель
   Inc(RIndex);
   Inc(LongInt(RCurPtr),FItemSize);
  end;//with FMergeInfoArray[l_FoundIndex]
 end;//Result <> nil
end;

 procedure   Tm3Sorter.OpenGroupStreams(const AMrgCount: LongInt
                                       );
 var
        LIndex:                   LongInt;
        LMemSize:                 LongInt;
        LSorSize:                 LongInt;
 begin

  LMemSize:=FMemSize shr 1;
  LSorSize:=FItemSize*((LMemSize div AMrgCount) div FItemSize);

  FMemBegPtr:=FMemBuff;
  FMemCurPtr:=FMemBegPtr;
  FMemEndPtr:=Pointer(LongInt(FMemBegPtr)+FItemSize*(LMemSize div FItemSize));

  for LIndex:=0 to Pred(AMrgCount) do
   begin

    with FMergeInfoArray[LIndex] do
     begin

      RStream:=InitGetStream(FMrgIndex);
       try

        RIndex := 0;
        RCount := Cardinal(m2COMGetSize(RStream) div Int64(FItemSize));

        RBegPtr:=Pointer(LongInt(FMemEndPtr)+LIndex*LSorSize);
        REndPtr:=Pointer(LongInt(RBegPtr)+LSorSize);

        RCurPtr:=REndPtr;

        Inc(FMrgIndex);

       except

        CloseGroupStreams(Succ(LIndex));

        raise;

       end;

     end;

   end;

 end;

 procedure   Tm3Sorter.CloseGroupStreams(const AMrgCount: LongInt
                                        );
 var
        LIndex:                   LongInt;
 begin

  for LIndex:=Pred(AMrgCount) downto 0 do
   begin

    try

     with FMergeInfoArray[LIndex] do
      begin

       RStream:=nil;

      end;

    except

     m2ExcErrHandler();

    end;

   end;

 end;

 procedure   Tm3Sorter.MergeGroupStreams(const AMrgCount: LongInt
                                        );
 var
        LItemPtr:                 Pointer;
        LStream:                  IStream;
 begin

  LStream:=InitPutStream(FMrgCount);

  Inc(FMrgCount);

  repeat

   LItemPtr:=GetItemPtr(AMrgCount);

   if (LItemPtr = nil)
    then
     begin

      m2COMWriteBuffer(LStream,FMemBegPtr^,LongInt(LongInt(FMemCurPtr)-LongInt(FMemBegPtr)));

      Break;

     end
    else
     begin

      m2MEMCopy(FMemCurPtr,LItemPtr,FItemSize);
      Inc(LongInt(FMemCurPtr),FItemSize);

      if (FMemCurPtr = FMemEndPtr)
       then
        begin

         m2COMWriteBuffer(LStream,FMemBegPtr^,LongInt(LongInt(FMemEndPtr)-LongInt(FMemBegPtr)));

         FMemCurPtr:=FMemBegPtr;

        end;

     end;

  until False;

 end;

 procedure   Tm3Sorter.JoinStreams(
                                  );

  function    __GetCount(var   AMrgTaild: LongInt
                        ): LongInt;
  var
        LDelta:                   LongInt;
        LMrgCount:                LongInt;
        LMrgIndex:                LongInt;
  begin

   Result:=0;

   LMrgCount:=FMrgCount;
   LMrgIndex:=FMrgIndex;

   repeat

    LDelta:=LMrgCount-LMrgIndex;

    if (LDelta > Length(FMergeInfoArray))
     then
      begin

       LDelta:=m2S32Min(LDelta,Length(FMergeInfoArray));

       Inc(LMrgIndex,LDelta);
       Inc(LMrgCount);

       Inc(Result);

      end
     else
      begin

       Break;

      end;

   until False;

   AMrgTaild:=LDelta;

  end;

 var
        LDelta:                   LongInt;
        LIndex:                   LongInt;
 begin

  for LIndex:=0 to Pred(__GetCount(FMrgTaild)) do
   begin

    LDelta:=m2S32Min((FMrgCount-FMrgIndex),Length(FMergeInfoArray));

    OpenGroupStreams(LDelta);
     try

      MergeGroupStreams(LDelta);

     finally

      CloseGroupStreams(LDelta);

     end;

   end;

 end;

// Tm3Sorter.protected

 procedure   Tm3Sorter.CreateContext(
                                    );
 begin

  inherited CreateContext();

  FTempPathNameFormat:=m2TMPGetFilePath()+Format('%s.%s',[GUIDToString(m2COMCreateGUID()),'$%.8x']);

 end;

// Tm3Sorter.public

 class
 function    Tm3Sorter.MakeInterface(const AItemSize: LongInt;
                                     const ASorterComparer: Im3SorterComparer
                                    ): Im3Sorter;
 begin

  with Create(AItemSize,ASorterComparer) do
   try

    Result:=Tm3Sorter(Instance);

   finally

    Free;

   end;
   
 end;

 class
 function    Tm3Sorter.MakeSafeInterface(out   AResult: Im3Sorter;
                                         const AItemSize: LongInt;
                                         const ASorterComparer: Im3SorterComparer
                                        ): HRESULT;
 begin

  Result:=S_OK;
   try

    AResult:=MakeInterface(AItemSize,ASorterComparer);

   except

    on E: EOutOfMemory do Result:=STG_E_INSUFFICIENTMEMORY;
    on E: EOleSysError do Result:=E.ErrorCode;

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 constructor Tm3Sorter.Create(const AItemSize: LongInt;
                              const ASorterComparer: Im3SorterComparer
                             );
 begin

  inherited Create();

  m2InitOperation(_Status,InitProc00000001($00000001,AItemSize));
  m2InitOperation(_Status,InitProc00000002($00000002,ASorterComparer));
  m2InitOperation(_Status,InitProc00000004($00000004));
  m2InitOperation(_Status,InitProc00000008($00000008));
  m2InitOperation(_Status,InitProc00000010($00000010));
  m2InitOperation(_Status,InitProc00000020($00000020));
  f_ItemBuffers := l3NewMemoryChain(FItemSize);

 end;

procedure Tm3Sorter.Cleanup;
begin
 m2DoneOperation(_Status,$00000020,DoneProc00000020);
 m2DoneOperation(_Status,$00000010,DoneProc00000010);
 m2DoneOperation(_Status,$00000008,DoneProc00000008);
 m2DoneOperation(_Status,$00000004,DoneProc00000004);
 m2DoneOperation(_Status,$00000002,DoneProc00000002);
 m2DoneOperation(_Status,$00000001,DoneProc00000001);
 inherited;
end;

 procedure   Tm3Sorter.AfterConstruction(
                                        );
 begin

  inherited AfterConstruction();

  if ((FMemSize div FItemSize) < (Length(FMergeInfoArray) shl 1))
   then
    begin

     OutOfMemoryError();

    end;

 end;

 procedure   Tm3Sorter.Reset(
                            );
 begin

  if (FMrgTaild <> 0)
   then
    begin

     CloseGroupStreams(FMrgTaild);

    end
   else
    begin

     while (FMrgIndex <> FMrgCount) do
      begin

       try

        InitGetStream(FMrgIndex);

       except

        m2ExcErrHandler();

       end;

       Inc(FMrgIndex);

      end;

    end;

  DoneMemBuff();

  FCount:=0;

  FMrgCount:=0;
  FMrgIndex:=0;
  FMrgTaild:=0;

  FSorStatus:=False;

 end;

 function    Tm3Sorter.GetCount(
                               ): Int64;
 begin

  Result:=FCount;

 end;

 function    Tm3Sorter.GetItemSize(
                                  ): LongInt;
 begin

  Result:=FItemSize;

 end;

 function    Tm3Sorter.Get(const AItem     : Pointer;
                           const AItemSize : LongInt;
                           aCount          : PLarge = nil
                          ): LongBool;
 begin

  Result:=(FCount <> 0);

  if Result
   then
    begin

     Assert(FItemSize = AItemSize);
     
     m2CheckValue(FSorStatus);

     Dec(FCount);
     if (aCount <> nil) then aCount^ := FCount;

     if (FMrgCount <> 0)
      then
       begin

        m2MEMCopy(AItem,GetItemPtr(FMrgTaild),FItemSize);

        if (FCount = 0)
         then
          begin

           CloseGroupStreams(FMrgTaild);

          end;

       end
      else
       begin

        m2MEMCopy(AItem,FMemCurPtr,FItemSize);
        Inc(LongInt(FMemCurPtr),FItemSize);

       end;

     DoneMemBuff(FCount);

    end;

 end;

 procedure   Tm3Sorter.Put(const AItem: Pointer;
                           const AItemSize: LongInt
                          );

  procedure   __BuffWork(const AMrgCount: LongInt;
                         const ABuff: Pointer;
                         const ASize: LongInt
                        );
  begin

   SortBuff(ABuff,ASize);
   SaveBuff(AMrgCount,ABuff,ASize);

  end;

  procedure   __BuffSwap(
                        );
  begin

   DoneMemBuff();
   InitMemBuff();

  end;

 begin

  Assert(FItemSize = AItemSize);

  m2CheckValue(not(FSorStatus));

  InitMemBuff(FCount);

  if (FMemCurPtr = FMemEndPtr)
   then
    begin

     __BuffWork(FMrgCount,FMemBegPtr,LongInt(LongInt(FMemCurPtr)-LongInt(FMemBegPtr)));
     __BuffSwap();

     Inc(FMrgCount);

    end;

  m2MEMCopy(FMemCurPtr,AItem,FItemSize);
  Inc(LongInt(FMemCurPtr),FItemSize);

  Inc(FCount);

 end;

 function    Tm3Sorter.Sort(
                           ): Int64;
 begin

  Result:=FCount;

  if (Result <> 0)
   then
    begin

     m2CheckValue(not(FSorStatus));

     if (FMemCurPtr <> FMemBegPtr)
      then
       begin

        SortBuff(FMemBegPtr,LongInt(LongInt(FMemCurPtr)-LongInt(FMemBegPtr)));

       end;

     if (FMrgCount <> 0)
      then
       begin

        if (FMemCurPtr <> FMemBegPtr)
         then
          begin

           SaveBuff(FMrgCount,FMemBegPtr,LongInt(LongInt(FMemCurPtr)-LongInt(FMemBegPtr)));

           Inc(FMrgCount);

          end;

        JoinStreams();
        OpenGroupStreams(FMrgTaild);

       end
      else
       begin

        FMemCurPtr:=FMemBegPtr;

       end;

     FSorStatus:=True;

    end;

 end;

// Tm3Sorter.end


// Tm3SorterSharedPool.private

 function    Tm3SorterSharedPool.InitProc00000001(const ABitMask: LongWord
                                                 ): LongWord;
 begin

  with Self do
   begin

//    FMemSize:=m2MEMPhusAvail();
    FMemSize:=m2MEMPhusAvail div 3;

    repeat

     try

      m2MEMAlloc(FMemBuff,FMemSize);

     except

      on EOutOfMemory do
       begin

        FMemSize:=FMemSize shr 1;
        Continue;

       end;

     end;

     Break;

    until False;

    FMaxSize:=FMemSize div Length(FSharedArray);

   end;

  Result:=ABitMask;

 end;

 procedure   Tm3SorterSharedPool.DoneProc00000001(
                                                 );
 begin

  with Self do
   begin

    m2MEMFree(FMemBuff);
    
   end;

 end;

// Tm3SorterSharedPool.protected

// Tm3SorterSharedPool.public

 class
 function    Tm3SorterSharedPool.MakeInterface(
                                              ): Im3SorterSharedPool;
 begin

  with Create() do
   try

    Result:=Tm3SorterSharedPool(Instance);

   finally

    Free;

   end;
   
 end;

 class
 function    Tm3SorterSharedPool.MakeSafeInterface(out   AResult: Im3SorterSharedPool
                                                  ): HRESULT;
 begin

  Result:=S_OK;
   try

    AResult:=MakeInterface();

   except

    on E: EOutOfMemory do Result:=STG_E_INSUFFICIENTMEMORY;
    on E: EOleSysError do Result:=E.ErrorCode;

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 class
 procedure   Tm3SorterSharedPool.ShareInterface(var   ASorterSharedPool: Im3SorterSharedPool
                                               );
 begin

  EnterCriticalSection(GRTLCriticalSection);
   try

    if (GSorterSharedPool = nil)
     then
      begin

       GSorterSharedPool:=Create();

      end;

    ASorterSharedPool:=GSorterSharedPool;

   finally

    LeaveCriticalSection(GRTLCriticalSection);

   end;

 end;

 class
 procedure   Tm3SorterSharedPool.UnshareInterface(var   ASorterSharedPool: Im3SorterSharedPool
                                                 );
 begin

  EnterCriticalSection(GRTLCriticalSection);
   try

    ASorterSharedPool:=nil;

    if (GSorterSharedPool.RefCount = 1)
     then
      begin

       FreeAndNil(GSorterSharedPool);
       GSorterSharedPool:=nil;

      end;

   finally

    LeaveCriticalSection(GRTLCriticalSection);

   end;

 end;

 constructor Tm3SorterSharedPool.Create(
                                       );
 begin

  inherited Create();

  m2InitOperation(_Status,InitProc00000001($00000001));

 end;

procedure Tm3SorterSharedPool.Cleanup;
begin
 m2DoneOperation(_Status,$00000001,DoneProc00000001);
 inherited;
end;

 procedure   Tm3SorterSharedPool.AfterConstruction(
                                                  );
 begin

  inherited AfterConstruction();

  if ((FMemSize = 0) or (FMaxSize = 0))
   then
    begin

     OutOfMemoryError();

    end;

 end;

 function    Tm3SorterSharedPool.GetMemBuff(
                                           ): Pointer;
 begin

  Result:=FMemBuff;

 end;

 function    Tm3SorterSharedPool.GetMemSize(
                                           ): LongInt;
 begin

  Result:=FMemSize;

 end;

 function    Tm3SorterSharedPool.GetMaxCount(
                                            ): LongInt;
 begin

  Result:=Length(FSharedArray);

 end;

 function    Tm3SorterSharedPool.GetUseCount(
                                            ): LongInt;
 begin

  Result:=l3InterlockedExchangeAdd(@FUseCount,0);

 end;

 function    Tm3SorterSharedPool.GetMaxSize(const ARndSize: LongInt
                                           ): LongInt;
 begin

  Result:=ARndSize*(FMaxSize div ARndSize);

 end;

 procedure   Tm3SorterSharedPool.LockBuff(var   ABuff: Pointer
                                         );
 var
        LIndex:                   Integer;
 begin

  repeat

   for LIndex:=Low(FSharedArray) to High(FSharedArray) do
    begin

     if (l3InterlockedCompareExchange(Pointer(FSharedArray[LIndex]),Pointer(-1),Pointer(0)) = Pointer(0))
      then
       begin

        l3InterlockedIncrement(Integer(FUseCount));

        ABuff:=Pointer(LongInt(FMemBuff)+LIndex*FMaxSize);
        Exit;

       end;

    end;

   Sleep(0);

  until False;

 end;

 procedure   Tm3SorterSharedPool.UnlockBuff(var   ABuff: Pointer
                                           );
 begin

  if (ABuff <> nil)
   then
    begin

     l3InterlockedCompareExchange(Pointer(FSharedArray[(LongInt(ABuff)-LongInt(FMemBuff)) div FMaxSize]),Pointer(0),Pointer(-1));
     l3InterlockedDecrement(Integer(FUseCount));

     ABuff:=nil;

    end;

 end;

// Tm3SorterSharedPool.end


 {$I *.inc}


end.
