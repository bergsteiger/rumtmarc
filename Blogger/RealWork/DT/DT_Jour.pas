Unit DT_Jour;

{ $Id: DT_Jour.pas,v 1.45 2010/04/05 06:31:04 voba Exp $ }

// $Log: DT_Jour.pas,v $
// Revision 1.45  2010/04/05 06:31:04  voba
// - remove debug checks
//
// Revision 1.44  2010/03/30 11:12:37  voba
// - заменил trunk файла на прописывание метки
//
// Revision 1.42  2010/03/25 09:44:49  voba
// K:197496324
//
// Revision 1.41  2010/03/25 09:43:49  voba
// K:197496324
//
// Revision 1.40  2010/03/22 18:12:52  voba
// no message
//
// Revision 1.39  2010/03/22 17:48:03  voba
// K:197496324
//
// Revision 1.38  2010/03/22 17:47:02  voba
// K:197496324
//
// Revision 1.37  2010/03/17 15:42:31  voba
// K:197496324
//
// Revision 1.35  2010/01/22 12:17:59  voba
// - enh : вываливаем exeption если не удается захватить журнал
//
// Revision 1.34  2009/12/11 11:55:37  voba
// no message
//
// Revision 1.33  2009/12/10 15:59:05  voba
// - bug fiх забыл залочить файл перед обработкой
//
// Revision 1.32  2009/11/20 13:51:56  voba
// - bug fix
//
// Revision 1.31  2009/11/20 13:43:21  voba
// - bug fix: Tl3BuuferedFilter не корректно работает в режиме почитали, пописали, почитали. Пришлось сделать в DT_Jour собственную буфферизацию
//
// Revision 1.30  2009/11/18 10:14:12  voba
// - opt.
//
// Revision 1.29  2009/11/17 16:15:16  voba
// - ернул кеширование чтения журнала из-за скорости
//
// Revision 1.28  2009/10/14 11:07:27  voba
// - избавляемся от библиотеки mg
//
// Revision 1.27  2008/02/20 11:41:02  lulin
// - bug fix: не собирался Архивариус.
//
// Revision 1.26  2008/02/04 15:22:57  lulin
// - bug fix: не запускался парень.
//
// Revision 1.25  2008/02/01 16:41:34  lulin
// - используем кошерные потоки.
//
// Revision 1.24  2007/11/22 14:38:58  fireton
// - приводим информацию о всех пользователей, захвативших документ
//
// Revision 1.23  2007/08/14 20:25:14  lulin
// - bug fix: не собиралася Архивариус.
//
// Revision 1.22  2007/08/14 14:30:07  lulin
// - оптимизируем перемещение блоков памяти.
//
// Revision 1.21  2007/03/26 09:34:03  fireton
// - изменился формат l3System.FreeLocalMem
//
// Revision 1.20  2005/10/17 11:30:35  voba
// no message
//
// Revision 1.19  2004/09/21 12:04:20  lulin
// - Release заменил на Cleanup.
//
// Revision 1.18  2004/08/03 08:52:50  step
// замена dt_def.pas на DtDefine.inc
//
// Revision 1.17  2004/03/05 16:54:43  step
// чистка кода
//
// Revision 1.16  2004/02/16 10:54:54  step
// add: TAbstractJournal.ClearDeadRecs
//
// Revision 1.15  2003/10/31 17:20:43  voba
// - bug fix
//
// Revision 1.14  2003/10/18 12:43:39  voba
// -bug fix
//
// Revision 1.13  2003/10/02 13:53:37  voba
// -enhance: введено понятие типа залочек, добавлен новый тип dtlPrevent - предотвращает захват с другой станции, но прозраченый для захвата со своей
//
// Revision 1.12  2003/03/31 13:48:59  demon
// - new: увеличен размер буферов, выделяемых по умолчанию с 64кб до 8Мб
//
// Revision 1.11  2002/12/24 13:02:00  law
// - change: объединил Int64_Seek c основной веткой.
//
// Revision 1.10.4.1  2002/12/24 11:56:43  law
// - new behavior: используем 64-битный Seek вместо 32-битного.
//
// Revision 1.10  2002/02/11 14:30:49  voba
// -lib sincro : change some m0 modules to m2
//
// Revision 1.9  2000/12/15 15:36:16  law
// - вставлены директивы Log.
//

{$I DtDefine.inc}
{.$Define LockDebug}
Interface
Uses
 Dt_Types,
 //MGExFStr,MGBufStr,mgLckStr,
 l3Base,
 l3Stream,
 l3DatLst,
 l3RecList;
Const
 cHeaderSize = 12;
 cHeader  : Array[1..cHeaderSize] of Char = 'Lock Journal';
 cVersion : Char = #03;

type
 TIDType      = Longint;
 TSysData     = Longint;
 TdtLockType = (dtlUsual,dtlExclusive,dtlPrevent);
 {* - dtlUsual - обычная,
      dtlExclusive - полная(не допускает наличия других захватов документа),
      dtlPrevent - предотвращает захват с другой станции, для текущей станции прозрачна}

 PJourRec = ^TJourRec;
 TJourRec = packed record
  rStationName : Int64; //TStationID;
  rDocID       : TIDType;
  rLockType    : TdtLockType;
  rSysData     : TSysData;
 end;

 TdtJIAccessFunc = function(var aRec : TJourRec; aPos : Longint) : Boolean; register;

 TCompareSysDataFunc = function(Var OldSysData, NewSysData) : Boolean of object;

 TAbstractJournal = Class(Tl3Base)
  private
   fJourFl       : Tl3FileStream;
   fJourName     : TPathStr;

   fStName       : Int64;

   fHeaderSize   : LongInt;

   fCompareSysData  : TCompareSysDataFunc;

  protected 
   procedure ClearBadJourRec;
   procedure BeforeRelease; override;
   procedure Cleanup; override;

   procedure IterateRecF(aFunc : TdtJIAccessFunc);

   procedure JFLock;
   procedure JFUnlock;

  public
   Constructor Create(aStationName  : TStationID;
                      aJourFullName : TPathStr); Reintroduce;

   function    Lock(aID : TIDType; var aSysData : TSysData; aLockType : TdtLockType = dtlUsual) : TJLHandle;
   procedure   SetNewSysData(aLH : TJLHandle; var aSysData : TSysData);
   procedure   UnLock(aLH : TJLHandle);

   function    CheckLock(aID : TIDType; LockInfoList : Tl3RecList; aIgnoredLockHandle : TJLHandle = -1): Boolean;
   procedure   ClearDeadRecs(aActiveStations: Tl3StringDataList);
    // удаление записей, оставшихся от мертвых станций (тех, которые не входят в aActiveStations)

   property    CompareSysData : TCompareSysDataFunc read fCompareSysData write fCompareSysData;
 end;

Implementation

Uses
 SysUtils, Classes,
 l3Types, l3MinMax,
 m0Const,
 m2xltlib,
 Dt_Const;

const
 sJourFileBroken = 'Возможно нарушена структура файла залочек!'#13+'Свяжитесь с разработчиками.';
 sJourFileBrokenP = 'Нарушена структура файла залочек'#13+'Свяжитесь с разработчиками. P=%d';

 cStopLockType : TdtLockType = TdtLockType($ff); // специальное значение, показывает что за данной записью "живых" (непустых) нет.

{$IFDEF LOCKDEBUG}
procedure Check(aHandle : TJLHandle);
begin
 Assert(((aHandle - 13) mod 17) = 0, Format(sJourFileBrokenP, [aHandle]));
end;
{$ENDIF LOCKDEBUG}

function L2JIAccessFunc(Action: Pointer): TdtJIAccessFunc; register;
asm
 jmp  l3LocalStub
end;{asm}

procedure FreeJIAccessFunc(var Stub: TdtJIAccessFunc); register;
asm
 jmp  l3FreeLocalStub
end;{asm}

Constructor TAbstractJournal.Create(aStationName  : TStationID;
                                    aJourFullName : TPathStr);
Var
 TmpVer : Char;
begin
 Inherited Create(Nil);
 fHeaderSize := cHeaderSize + 1;

 m2XLTConvertBuff(@aStationName, SizeOf(TStationID), Cm2XLTANSI2UPPER);
 fStName := PInt64(@aStationName)^;

 fJourName:=aJourFullName;

 if not FileExists(fJourName) then
 begin
  fJourFl := Tl3FileStream.Create(fJourName, l3_fmFullShareCreateReadWrite);
  fJourFl.Write(cVersion, 1);
  fJourFl.Write(cHeader, cHeaderSize);
 end
 else
 begin
  fJourFl := Tl3FileStream.Create(fJourName, l3_fmFullShareReadWrite);
  fJourFl.ReadBuffer(TmpVer, 1);

  if TmpVer <> cVersion then
  begin
   l3Free(fJourFl);
   fJourFl := Tl3FileStream.Create(fJourName, l3_fmFullShareCreateReadWrite);
   fJourFl.Write(cVersion, 1);
   fJourFl.Write(cHeader, cHeaderSize);
  end;
 end;

 //fJourFl := Tl3FileStream.Create(fJourName,l3_fmFullShareReadWrite);
 ClearBadJourRec;
end;

procedure TAbstractJournal.BeforeRelease;
begin
 try
  ClearBadJourRec;
 finally
  Inherited;
 end;
end;

procedure TAbstractJournal.Cleanup;
begin
 l3Free(fJourFl);
 Inherited;
end;

procedure TAbstractJournal.JFLock;
begin
 if not fJourFl.Lock(1, cHeaderSize, 3*60*1000 {3 мин}) then
  raise Exception.Create('Журнал захватов недоступен.');
end;

procedure TAbstractJournal.JFUnlock;
begin
 fJourFl.UnLock(1, cHeaderSize);
end;

procedure TAbstractJournal.IterateRecF(aFunc : TdtJIAccessFunc);
var
 lBuff : array[0..1000] of TJourRec;
 lBuffCnt : Integer;
 lStreamPos : Int64;
 lRSize : Integer;
 I : Integer;

begin
 try
  fJourFl.Seek(fHeaderSize, soBeginning);

  while true do
  begin
   lStreamPos := fJourFl.Position;
   lRSize := fJourFl.Read(lBuff, SizeOf(lBuff));

   if lRSize = 0 then // файл кончился
    Exit;

   if (lRSize mod SizeOf(TJourRec)) <> 0 then
    raise Exception.Create(sJourFileBroken);

   lBuffCnt := lRSize div SizeOf(TJourRec);

   for I := 0 to pred(lBuffCnt) do
    if not aFunc(lBuff[I], lStreamPos + I * SizeOf(TJourRec)) then
      exit;

   // восстановим позицию, которую могли попортить в подитеративной функции
   fJourFl.Seek(lStreamPos + lRSize, soBeginning);
  end;

 finally
  FreeJIAccessFunc(aFunc);
 end;
end;

procedure TAbstractJournal.ClearBadJourRec;

 function lJIAccessProc(var aRec : TJourRec; aPos : Longint) : Boolean;
 begin
  Result := not ((aRec.rStationName = cDelStationID) and (aRec.rLockType = cStopLockType)); // метка окончания полезной части файла
  if not Result then Exit;

  if aRec.rStationName = fStName then
   begin
    aRec.rStationName := cDelStationID;
    fJourFl.Seek(aPos, soBeginning);
    try
     fJourFl.Write(aRec, SizeOf(TJourRec));
    except
     raise Exception.Create(sJourFileBroken);
    end;
   end;
 end;

begin
 JFLock;
 try
  {$IFDEF LOCKDEBUG}
   check(fJourFl.Size);
  {$ENDIF LOCKDEBUG}
  IterateRecF(L2JIAccessFunc(@lJIAccessProc));
  {$IFDEF LOCKDEBUG}
   check(fJourFl.Size);
  {$ENDIF LOCKDEBUG}
 finally
  JFUnlock;
 end;
end;

procedure TAbstractJournal.ClearDeadRecs(aActiveStations: Tl3StringDataList);

 function lJIAccessProc(var aRec : TJourRec; aPos : Longint) : Boolean;
 var
  l_Tmp: Longint;
 begin
  Result := not ((aRec.rStationName = cDelStationID) and (aRec.rLockType = cStopLockType)); // метка окончания полезной части файла
  if not Result then Exit;

  if not aActiveStations.FindStr(@(aRec.rStationName), l_Tmp) then
  begin
   aRec.rStationName := cDelStationID;
   fJourFl.Seek(aPos, soBeginning);
   try
    fJourFl.Write(aRec, SizeOf(TJourRec));
   except
    raise Exception.Create(sJourFileBroken);
   end;
  end;
 end;

begin
 // это не работает потому что у rStationName нет нуля на конце, FindStr не найдет.
 // нужно aActiveStations переделать на Reclist
 Assert(false, 'TAbstractJournal.ClearDeadRecs');

 JFLock;
 try
  {$IFDEF LOCKDEBUG}
   check(fJourFl.Size);
  {$ENDIF LOCKDEBUG}
  IterateRecF(L2JIAccessFunc(@lJIAccessProc));
  {$IFDEF LOCKDEBUG}
   check(fJourFl.Size);
  {$ENDIF LOCKDEBUG}
 finally
  JFUnlock;
 end;
end;

function  TAbstractJournal.Lock(aID : TIDType; var aSysData : TSysData; aLockType : TdtLockType = dtlUsual) : TJLHandle;
var
 lCurFreePos : Longint;
 lLastFreeChunkPos : Longint;  // указатель на хвост из пустых
 lLockFailure : boolean;

 function lJIAccessProc(var aRec : TJourRec; aPos : Longint) : Boolean;
 begin
  Result := True;

  if aRec.rStationName <> cDelStationID then
  begin
   lLastFreeChunkPos := -1;
   if aRec.rDocID = aID then
   begin
    if (aRec.rLockType = dtlPrevent) and (aRec.rStationName = fStName) then
     Exit;  //своя Prevent залочка нам не мешает

    if (aRec.rLockType = dtlPrevent) //чужая Prevent залочка, т к свою мы уже проверили выше
       or
       (aLockType = dtlExclusive) //залочка не Prevent (иначе бы раньше выпали), а мы хотели в эксклюзиве
       or
       (aRec.rLockType = dtlExclusive) //Exclusive залочка
       or
       ((aLockType = dtlUsual) and
         //(aRec.LockType = dtlUsual) and //это и так понятно, т. к. остальные виды залочек обработаны выше
         (not Assigned(fCompareSysData) or fCompareSysData(aRec.rSysData, aSysData))) then //все права уже захвачены
     begin
      Result := False;
      lLockFailure := True;
     end;
   end; //if aRec.rDocID = aID then
  end
  else //aRec.rStationName <> cDelStationID
   if lCurFreePos = -1 then
   begin
    lCurFreePos := aPos;
    if (aRec.rLockType = cStopLockType) then // метка окончания полезной части файла
    begin
     lLastFreeChunkPos := aPos + SizeOf(TJourRec); // переставим метку на след. запись
     if lLastFreeChunkPos >= fJourFl.Size then  //если она есть
      lLastFreeChunkPos := -1;
     Result := False; // конец итерирования
    end
   end
   else
   begin
    if (aRec.rLockType = cStopLockType) then // метка окончания полезной части файла
     Result := False // конец итерирования
    else
     if lLastFreeChunkPos = -1 then
      lLastFreeChunkPos := aPos;
   end;
 end;

var
 lRec : TJourRec;
 {$IFDEF LOCKDEBUG}
 lSaveSize : Integer;
 {$ENDIF LOCKDEBUG}

begin
 Result := -1;
 lLockFailure := False;
 lCurFreePos := -1;
 lLastFreeChunkPos := -1;
 JFLock;
 {$IFDEF LOCKDEBUG}
 check(fJourFl.Size);
 //l3System.Msg2Log('Lock Size = %d', [fJourFl.Size  - 13 div 17]);
 lSaveSize := fJourFl.Size;
 {$ENDIF LOCKDEBUG}

 try
  try
   IterateRecF(L2JIAccessFunc(@lJIAccessProc));

   if lLockFailure then
    Exit;

   With lRec do
   begin
    rStationName := fStName;
    rDocID := aID;
    rLockType := aLockType;
    rSysData := aSysData;
   end;

   if lCurFreePos <> -1 then
   begin
    fJourfl.Seek(lCurFreePos, soBeginning);
    {$IFDEF LOCKDEBUG}
     Check(fJourFl.Position);
    {$ENDIF LOCKDEBUG}
   end
   else
   begin
    fJourFl.Seek(0, soEnd);
    {$IFDEF LOCKDEBUG}
     Check(fJourFl.Position);
    {$ENDIF LOCKDEBUG}
   end;

   Result := fJourFl.Position;
   fJourFl.Write(lRec, SizeOf(TJourRec));

   if lLastFreeChunkPos <> -1 then
   begin
   {$IFDEF LOCKDEBUG}
    Check(lLastFreeChunkPos);
   {$ENDIF LOCKDEBUG}

    with lRec do
    begin
     rStationName := cDelStationID;
     rDocID := 0;
     rLockType := cStopLockType;
    end;

    fJourfl.Seek(lLastFreeChunkPos, soBeginning);
    fJourFl.Write(lRec, SizeOf(TJourRec));

    //fJourFl.Size := lLastFreeChunkPos;
   {$IFDEF LOCKDEBUG}
    l3System.Msg2Log('Lock Trunc');
   {$ENDIF LOCKDEBUG}
   end;

  finally
   If Result = -1 then
   {$IFDEF LOCKDEBUG}
    try
   {$ENDIF LOCKDEBUG}
    l3FillChar(aSysData, SizeOf(aSysData));
   {$IFDEF LOCKDEBUG}
    except
     l3System.Msg2Log('Lock проблемы с l3FillChar');
     Raise;
    end;
   {$ENDIF LOCKDEBUG}
  end;

  {$IFDEF LOCKDEBUG}
  check(fJourFl.Size);
  try
   if lSaveSize = fJourFl.Size then
    l3System.Msg2Log('Lock Size = %d, LH = %d', [(fJourFl.Size - 13) div 17, (Result - 13) div 17])
   else
    l3System.Msg2Log('Lock Size = %d > %d, LH = %d', [(lSaveSize - 13) div 17, (fJourFl.Size - 13) div 17, (Result - 13) div 17]);
  except
   l3System.Msg2Log('Lock проблемы с l3System.Msg2Log');
   l3System.Msg2Log('Lock ss = %d', [lSaveSize]);
   l3System.Msg2Log('Lock lh = %d', [Result]);
   l3System.Msg2Log('Lock s = %d',  [fJourFl.Size]);
   Raise;
  end;
  {$ENDIF LOCKDEBUG}
 finally
  JFUnlock;
 end;
end;

procedure TAbstractJournal.SetNewSysData(aLH : TJLHandle; var aSysData : TSysData);
begin
 {$IFDEF LOCKDEBUG}
 check(aLH);
 check(fJourFl.Size);
 Assert(fJourFl.Size > aLH, 'NewSysData: aLH outside Size');
 {$ENDIF LOCKDEBUG}

 JFLock;
 try
  fJourFl.Seek(aLH + Longint(@(PJourRec(nil)^.rSysData)) {SysDataOffset} ,soBeginning);
  fJourFl.Write(aSysData, SizeOf(TSysData));
  {$IFDEF LOCKDEBUG}
   Check(fJourFl.Size);
  {$ENDIF LOCKDEBUG}
 finally
  JFUnlock;
 end;
end;

procedure TAbstractJournal.UnLock(aLH : TJLHandle);
begin
 {$IFDEF LOCKDEBUG}
  check(aLH);
  check(fJourFl.Size);
  Assert(fJourFl.Size > aLH, 'UnLock: aLH outside Size');
  l3System.Msg2Log('UnLock Size = %d, LH = %d', [(fJourFl.Size - 13) div 17, (aLH - 13) div 17]);
 {$ENDIF LOCKDEBUG}
 JFLock;
 try
  fJourFl.Seek(aLH, soBeginning);
  fJourFl.Write(cDelStationID, SizeOf(cDelStationID));
  {$IFDEF LOCKDEBUG}
   Check(fJourFl.Size);
  {$ENDIF LOCKDEBUG}
 finally
  JFUnlock;
 end;
end;

function TAbstractJournal.CheckLock(aID : TIDType; LockInfoList : Tl3RecList; aIgnoredLockHandle : TJLHandle = -1) : Boolean;

 function lJIAccessProc(var aRec : TJourRec; aPos : Longint) : Boolean;
 begin
  Result := not ((aRec.rStationName = cDelStationID) and (aRec.rLockType = cStopLockType)); // метка окончания полезной части файла
  if not Result then Exit;

  if (aRec.rStationName <> cDelStationID) and
     (aPos <> aIgnoredLockHandle) and
     (aRec.rDocID = aID) then
    LockInfoList.Add(aRec);
 end;

begin
 LockInfoList.Count := 0;
 JFLock;
 try
  IterateRecF(L2JIAccessFunc(@lJIAccessProc));
 finally
  JFUnlock;
 end;

 Result := LockInfoList.Count > 0;
end;

end.
