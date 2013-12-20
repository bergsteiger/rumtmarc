unit m0MEMLib;

(*
//
// module:  m0memlib.pas
// author:  Mickael P. Golovin
//
// Copyright (c) 1997-2000 by Archivarius Team, free for non commercial use.
//
// $Id: m0memlib.pas,v 1.5 2013/07/08 16:43:16 lulin Exp $
//
*)

// $Log: m0memlib.pas,v $
// Revision 1.5  2013/07/08 16:43:16  lulin
// - выделяем работу с размером куска памяти.
//
// Revision 1.4  2013/04/12 16:25:07  lulin
// - отлаживаем под XE3.
//
// Revision 1.3  2013/04/08 14:50:45  lulin
// - портируем.
//
// Revision 1.2  2012/01/11 17:29:57  lulin
// {RequestLink:326769483}
//
// Revision 1.1  2008/02/07 09:54:24  lulin
// - библиотека m0 переехала внутрь библиотеки L3.
//
// Revision 1.15  2006/05/18 12:10:14  lulin
// - cleanup.
//

{$Include m0Define.inc}

interface

uses
  Windows,
  Messages,
  SysUtils,
  Consts,
  Classes,

  m0Const,
  m0AddTyp,
  m0S32Lib
  ;

type
  Tm0MEMLibFlag = (Cm0MEMLibDefault, Cm0MEMLibNoCache);

{$IfDef m0AllocSize}
        Pm0MEMLibAllocInfo = ^Tm0MEMLibAllocInfo;
        Tm0MEMLibAllocInfo = packed record

{$IFDEF _m0USEEXTGETMEM1}
                                     RFlag: Tm0MEMLibFlag;
{$ENDIF}


                                     RSize: LongInt;

                                    end;
{$EndIf m0AllocSize}

(*function m0MEMPhusTotal: LongInt;*)

(*function m0MEMHeapAvail: LongInt;*)

(*function m0MEMLocalSize: LongInt;*)

procedure m0MEMAlloc(var ADest: Pointer; ASize: LongInt; AChar: AnsiChar;
  AFlag: Tm0MEMLibFlag = Cm0MEMLibDefault);

procedure m0MEMFree(var ADest: Pointer);

procedure m0MEMAllocBuff(var ADest: Pointer; ASour: Pointer;
  ASize: LongInt; AFlag: Tm0MEMLibFlag = Cm0MEMLibDefault);

procedure m0MEMReAlloc(var ADest: Pointer; ASize: LongInt; AChar: AnsiChar;
  AFlag: Tm0MEMLibFlag = Cm0MEMLibDefault);

function m0MEMSize(ADest: Pointer): LongInt;

function m0MEMCompareEx(ADest : Pointer; ADLen : LongInt;
                        ASour : Pointer; ASLen : LongInt): Integer;

implementation

uses
  {$IfNDef m0AllocSize}
  l3Base,
  l3MemorySizeUtils,
  l3Memory,
  {$EndIf m0AllocSize}

  m2MemLib
  ;

{ -- unit.private -- }

{$IfDef m0AllocSize}
resourcestring
{$IFDEF _m0LANGUAGE_ENG}
 SWLocUseFree = 'Local Heap has not free,'^J'size: %.10d(0x%.8x)';
{$ENDIF}
{$IFDEF _m0LANGUAGE_RUS}
 SWLocUseFree = 'Локальная память не освобождена,'^J'размер: %.10d(0x%.8x)';
{$ENDIF}
{$EndIf m0AllocSize}

{$IfDef m0AllocSize}
var
 GLocalSize  : LongInt;
 GThreadSafe : TRTLCriticalSection;
{$EndIf m0AllocSize}

{$IfDef m0AllocSize}
 procedure   _Initialization;
{$IFDEF _m0USEEXTGETMEM1}
 var
        LMaxSize:                 LongWord;
        LMinSize:                 LongWord;
        LPhusTotal:               LongWord;
{$ENDIF}

 begin

{$IFDEF _m0USEEXTGETMEM1}
  if (Win32Platform = VER_PLATFORM_WIN32_NT)
   then
    begin

     LPhusTotal:=LongWord(m0MEMPhusTotal);

     Win32Check(GetProcessWorkingSetSize(GetCurrentProcess,LMinSize,LMaxSize));

     repeat

      if SetProcessWorkingSetSize(GetCurrentProcess,LMinSize+LPhusTotal,LMaxSize+LPhusTotal)
       then
        begin

         Break;

        end
       else
        begin

         LPhusTotal:=LPhusTotal shr 1;
         Continue;

        end;

     until False;

    end;
{$ENDIF}

  GLocalSize:=0;

  InitializeCriticalSection(GThreadSafe);

 end;


{$EndIf m0AllocSize}

{$IfDef m0AllocSize}
 procedure   _Finalization;
 begin

  DeleteCriticalSection(GThreadSafe);

  if (GLocalSize <> 0)
   then
    begin

     Gm0EXCLibDefSrv.ShowSaveMessage(Cm0EXCLibWRG,Format(SWLocUseFree,[GLocalSize,GLocalSize]));

    end;

 end;
{$EndIf m0AllocSize}

{ -- unit.public -- }

(*function m0MEMPhusTotal: LongInt;
var
  LMemoryStatus: TMemoryStatus;
begin

  LMemoryStatus.dwLength := SizeOf(LMemoryStatus);
  GlobalMemoryStatus(LMemoryStatus);

  Result := LMemoryStatus.dwTotalPhys;

end;*)

(*function m0MEMHeapAvail: LongInt;
var
 LMemoryStatus: TMemoryStatus;
begin
 LMemoryStatus.dwLength := SizeOf(LMemoryStatus);
 GlobalMemoryStatus(LMemoryStatus);
 with LMemoryStatus do
   Result := dwAvailPhys + dwAvailPageFile;
end;*)

(*function m0MEMLocalSize: LongInt;
begin
{$IfDef m0AllocSize}
 Result:=GLocalSize;
{$Else  m0AllocSize}
  Result := l3System.LocalMemUsed;
{$EndIf m0AllocSize}
end;*)

procedure m0MEMAlloc(var ADest: Pointer; ASize: LongInt; AChar: AnsiChar;
  AFlag: Tm0MEMLibFlag);

{$IfDef m0AllocSize}
{$IFDEF _m0USEEXTGETMEM1}
  procedure   __NoCacheGetMem(var   ADest: Pointer;
                                    ASize: LongInt);
  begin
   ADest:=VirtualAlloc(nil,ASize,MEM_COMMIT,PAGE_READWRITE+PAGE_NOCACHE);
   if (ADest = nil) then
    OutOfMemoryError;
   try
    Win32Check(VirtualLock(ADest,ASize));
   except
    Win32Check(VirtualFree(ADest,0,MEM_RELEASE));
    raise;
   end;
  end;
{$ENDIF}

 begin

  if (ASize <> 0) then
    begin

     if IsMultiThread then
      EnterCriticalSection(GThreadSafe);
     try

      Inc(ASize,SizeOf(Tm0MEMLibAllocInfo));

{$IFDEF _m0USEEXTGETMEM1}
      case AFlag of

       Cm0MEMLibDefault: begin
{$ENDIF}



                          GetMem(ADest,ASize);

{$IFDEF _m0USEEXTGETMEM1}
                         end;

       Cm0MEMLibNoCache: begin

                          if (Win32Platform = VER_PLATFORM_WIN32_NT)
                           then
                            begin

                             __NoCacheGetMem(ADest,ASize);

                            end
                           else
                            begin

                             GetMem(ADest,ASize);

                            end;

                         end;
      end;
{$ENDIF}



      Inc(GLocalSize,ASize);

      Dec(ASize,SizeOf(Tm0MEMLibAllocInfo));

      with Pm0MEMLibAllocInfo(ADest)^ do
       begin

{$IFDEF _m0USEEXTGETMEM1}
        RFlag:=AFlag;
{$ENDIF}


        RSize:=ASize;

       end;

      Inc(LongInt(ADest),SizeOf(Tm0MEMLibAllocInfo));

      m2MEMFill(ADest,ASize,AChar);

     finally
      if IsMultiThread then
       LeaveCriticalSection(GThreadSafe);
     end;

    end
   else
    begin

     ADest:=nil;

    end;

 end;
{$Else  m0AllocSize}
begin
  l3System.GetLocalMem(aDest, aSize);
  if (aDest <> nil) then
    m2MEMFill(ADest, ASize, Byte(AChar));
end;

{$EndIf m0AllocSize}

procedure m0MEMFree(var ADest: Pointer);

{$IfDef m0AllocSize}
{$IFDEF _m0USEEXTGETMEM1}
  procedure   __NoCacheFreeMem(      ADest: Pointer;
                                     ASize: LongInt
                              );
  begin

   Win32Check(VirtualUnlock(ADest,ASize));
   Win32Check(VirtualFree(ADest,0,MEM_RELEASE));

  end;
{$ENDIF}

 var
{$IFDEF _m0USEEXTGETMEM1}
        LFlag:                    Tm0MEMLibFlag;


{$ENDIF}


        LSize:                    LongInt;
 begin

  if (ADest <> nil)
   then
    begin

     if IsMultiThread
      then
       begin

        EnterCriticalSection(GThreadSafe);

       end;
     try

      Dec(LongInt(ADest),SizeOf(Tm0MEMLibAllocInfo));

      with Pm0MEMLibAllocInfo(ADest)^ do
       begin

{$IFDEF _m0USEEXTGETMEM1}
        LFlag:=RFlag;
{$ENDIF}


        LSize:=RSize;

       end;

      Inc(LSize,SizeOf(Tm0MEMLibAllocInfo));

{$IFDEF _m0USEEXTGETMEM1}
      case LFlag of

       Cm0MEMLibDefault: begin
{$ENDIF}



                          FreeMem(ADest,LSize);

{$IFDEF _m0USEEXTGETMEM1}
                         end;

       Cm0MEMLibNoCache: begin

                          if (Win32Platform = VER_PLATFORM_WIN32_NT)
                           then
                            begin

                             __NoCacheFreeMem(ADest,LSize);

                            end
                           else
                            begin

                             FreeMem(ADest,LSize);

                            end;

                         end;

      end;
{$ENDIF}



      Dec(GLocalSize,LSize);

      ADest:=nil;

     finally

      if IsMultiThread
       then
        begin

         LeaveCriticalSection(GThreadSafe);

        end;

     end;

    end;

 end;
{$Else  m0AllocSize}
begin
  l3System.FreeLocalMem(aDest);
end;

{$EndIf m0AllocSize}

procedure m0MEMAllocBuff(var ADest : Pointer;
                         ASour     : Pointer;
                         ASize     : LongInt;
                         AFlag     : Tm0MEMLibFlag);
begin
 m0MEMAlloc(ADest, ASize, #000, AFlag);
 try
  m2MEMCopy(ADest, ASour, ASize);
 except
  m0MEMFree(ADest);
  raise;
 end;//try..except
end;

procedure m0MEMReAlloc(var ADest: Pointer; ASize: LongInt; AChar: AnsiChar;
  AFlag: Tm0MEMLibFlag);
{$IfDef m0AllocSize}
 var
        LBuff:                    Pointer;
        LSize:                    LongInt;
 begin

  LSize:=m0MEMSize(ADest);

  if (LSize <> ASize)
   then
    begin

     m0MEMAlloc(LBuff,ASize,AChar,AFlag);
      try

       m2MEMCopy(LBuff,ADest,m0S32Min(LSize,ASize));
       m0MEMFree(ADest);

      except

       m0MEMFree(LBuff);

      raise;
      end;

     ADest:=LBuff;

    end;

 end;
{$Else  m0AllocSize}
var
 l_OldSize: LongInt;
begin
 //l_OldSize := l3MemorySize(aDest);
 l_OldSize := m0MEMSize(aDest);
 if (l_OldSize <> aSize) then
 begin
  l3System.ReallocLocalMem(aDest, aSize);
  if (l_OldSize < aSize) then
   m2MemFill(PAnsiChar(aDest) + l_OldSize, aSize - l_OldSize, Byte(aChar));
 end;//l_OldSize <> aSize
end;
{$EndIf m0AllocSize}

function m0MEMSize(ADest: Pointer): LongInt;
{$IfDef m0AllocSize}
begin
 if (ADest <> nil) then
  Result:=Pm0MEMLibAllocInfo(LongInt(ADest)-SizeOf(Tm0MEMLibAllocInfo))^.RSize
 else
  Result:=0;
end;
{$Else  m0AllocSize}
begin
 Result := l3MemorySize(aDest);
end;
{$EndIf m0AllocSize}

function m0MEMCompareEx(ADest : Pointer; ADLen : LongInt;
                        ASour : Pointer; ASLen : LongInt): Integer;
begin
 Result := m0S32Compare(ADLen, ASLen);
 if (Result = 0) then
  Result := m2MEMCompare(ADest, ASour, ADLen);
end;

{$IfDef m0AllocSize}
 initialization _Initialization;
 finalization   _Finalization;
{$EndIf m0AllocSize}

end.
