Unit Dt_Lock;

{ $Id: DT_LOCK.PAS,v 1.41 2013/06/11 08:04:01 fireton Exp $ }

// $Log: DT_LOCK.PAS,v $
// Revision 1.41  2013/06/11 08:04:01  fireton
// - function GetLockJournalName
//
// Revision 1.40  2011/07/20 08:02:37  voba
// - k : 236721575
//
// Revision 1.39  2009/12/23 08:33:43  voba
// - bug fix : проблемы с захватом семейства (таблица ctrl)
//
// Revision 1.38  2009/11/20 13:43:21  voba
// - bug fix: Tl3BuuferedFilter не корректно работает в режиме почитали, пописали, почитали. Пришлось сделать в DT_Jour собственную буфферизацию
//
// Revision 1.37  2009/11/18 10:17:25  voba
// - opt.
//
// Revision 1.36  2009/06/23 07:32:59  voba
// - стандартизация доступа к атрибутам
//
// Revision 1.35  2009/03/02 08:24:50  voba
// - заменил function FamTblName и  MainTblName на одну TblName с указанием Family
// - заменил  две verload function TablePassword на одну с указанием Family
//
// Revision 1.34  2008/12/17 11:10:39  voba
// - bug fix откручена проверка прав на удаления при залочке
//
// Revision 1.33  2008/03/20 09:48:36  lulin
// - cleanup.
//
// Revision 1.32  2008/02/22 16:57:41  lulin
// - упорядочиваем примеси.
//
// Revision 1.31  2008/02/07 14:44:41  lulin
// - класс _Tl3LongintList переехал в собственный модуль.
//
// Revision 1.30  2007/12/18 08:42:54  fireton
// - пакетный захват (и отпускание) документов
//
// Revision 1.29  2007/11/22 14:38:58  fireton
// - приводим информацию о всех пользователей, захвативших документ
//
// Revision 1.28  2007/08/28 14:42:02  narry
// - range check error
//
// Revision 1.27  2007/08/14 20:25:14  lulin
// - bug fix: не собиралася Архивариус.
//
// Revision 1.26  2007/07/25 11:07:47  narry
// - возврат номера пользователя, захватившего документ
//
// Revision 1.25  2007/07/24 12:32:33  narry
// - рефакторинг системы сообщений
//
// Revision 1.24  2007/04/25 07:52:37  fireton
// - Рефакторинг. Уходим от прямых упоминаний имен таблиц в пользу перечислимых типов в DT_Types
//
// Revision 1.23  2007/03/26 09:34:03  fireton
// - изменился формат l3System.FreeLocalMem
//
// Revision 1.22  2006/11/16 10:48:31  fireton
// - подготовка к большому UserID
//
// Revision 1.21  2006/06/23 11:20:59  narry
// -merge
//
// Revision 1.20.22.1  2006/06/19 09:09:54  voba
// - add func LinkServer.GetSelfMask
//
// Revision 1.20  2005/10/17 11:29:54  voba
// no message
//
// Revision 1.19  2004/09/21 12:04:20  lulin
// - Release заменил на Cleanup.
//
// Revision 1.18  2004/09/14 15:58:14  lulin
// - удален модуль Str_Man - используйте вместо него - l3String.
//
// Revision 1.17  2004/08/03 08:52:51  step
// замена dt_def.pas на DtDefine.inc
//
// Revision 1.16  2004/06/22 13:55:39  step
// изменен тип выбрасываемого исключения в TLockServer.FullLockDoc
//
// Revision 1.15  2004/05/18 09:51:46  step
// change: GlobalHTServer.MaxFamilyID --> GlobalHTServer.FamilyTbl.MaxFamilyID;
//
// Revision 1.14  2004/05/18 09:12:46  step
// change: GlobalFamPaths[] --> GlobalHtServer.FamilyTbl.FamilyPath()
//
// Revision 1.13  2003/10/02 13:54:42  voba
// - new method:    PreventLockDoc
//
// Revision 1.12  2003/06/23 14:26:59  voba
// - переписал TLockServer.LockDoc, некорректно работала из-за раделения прав на гиперссылки, метки и блоки
//
// Revision 1.11  2003/04/16 09:17:03  voba
// - bug fix: неправильно тестировался флаг acfDelete.
//
// Revision 1.10  2003/01/21 11:27:13  demon
// - new behavior: процедура LockDoc теперь не позволяет захватить документ
// при получении 0 эффективной (LockMask) или разрешенной (MaxMask) маски прав.
//
// Revision 1.9  2001/09/17 06:52:17  demon
// - byg fix: before unlock family all other tbls now closed, and after unlock all opened
//
// Revision 1.8  2000/12/15 15:36:16  law
// - вставлены директивы Log.
//

{$I DtDefine.inc}

Interface

uses
  l3Base,
  l3String,
  l3LongintList,
  
  Dt_Types,
  Dt_Jour,
  Dt_Sab;

Type
 TLockRec = Record
             Journal: TAbstractJournal;
             Count  : LongInt;
            end;
 PFamilyLocks = ^TFamilyLocks;
 TFamilyLocks = Array[0..$fff] of TLockRec;

 TLockServer = Class(Tl3Base)
  protected
   Locks    : PFamilyLocks;

   Function  CompareSysData(Var OldSysData,NewSysData) : Boolean;
   Procedure OpenJournal(aFamily : TFamilyID);
   Procedure Cleanup; override;
  public
   Constructor Create; {$IfDef Win32} Reintroduce; {$endIf Win32}

   procedure BatchLockDoc(aFamily: TFamilyID; aDocList: ISab; aRightsNeeded: Longint; var theLockHandles: Tl3LongintList;
                          var theAcceptedDocs, theRejectedDocs: ISab);
   procedure BatchUnlockDoc(aFamily: TFamilyID; aLockHandles: Tl3LongintList);
   Procedure OptimizeMem;
   Procedure ReallocLocks(NewMaxFamId : TFamilyID);
   Procedure DelFamilyLocks(aFamily : TFamilyID);
   Procedure InitFamilyLocks(aFamily : TFamilyID);

   Function  LockDoc(aFamily : TFamilyID;
                     aDocID  : TDocID;
                     Var MaxMask,LockMask : LongInt) : TJLHandle;
   function  LockDocByMask(aFamily : TFamilyID; aDocID : TDocID; aMaxMask : LongInt; var aLockMask : LongInt) : TJLHandle;
   Function  FullLockDoc(aFamily : TFamilyID;
                         aDocID  : TDocID) : TJLHandle;

   function  PreventLockDoc(aFamily : TFamilyID; aDocID  : TDocID) : TJLHandle;
   {* - Залочка для предотвращения захвата документа с другого компьютера.
    В случае если документ был захвачен с другого компьютера возвращает -1.
    Для повторного захвата с текущей станции прозрачна.}


   Procedure UnLockDoc(aFamily : TFamilyID;
                       aLockHandle : TJLHandle);
   Function  LockFamily(aFamily : TFamilyID) : boolean;
   Procedure UnLockFamily(aFamily : TFamilyID);

   procedure WhoLockDoc(aFamily : TFamilyID;
                        aDocID : TDocID;
                        var Stations : TStationNameArray;
                        var UserIDs : TUserIDArray;
                        aIgnoredLockHandle : TJLHandle = -1);
 end;

const
 LockServer : TLockServer = Nil;

function GetLockJournalName(const aFamily: TFamilyID): string;

Implementation

uses
  HT_Dll,
  HT_Const,
  l3Bits,
  l3RecList,
  Dt_Const,
  Dt_Doc,
  Dt_Serv,
  Dt_err,
  SysUtils,
  Dt_LinkServ
  ;

const
 JourPrefix = 'LOCK';

Constructor TLockServer.Create;
Begin
 Inherited Create(Nil);
 l3System.GetLocalMem(Locks,(GlobalHtServer.FamilyTbl.MaxFamilyID+1)*SizeOf(TLockRec));
 l3FillChar(Locks^,(GlobalHtServer.FamilyTbl.MaxFamilyID+1)*SizeOf(TLockRec));
end;



procedure TLockServer.BatchLockDoc(aFamily: TFamilyID; aDocList: ISab; aRightsNeeded: Longint; var theLockHandles:
    Tl3LongintList; var theAcceptedDocs, theRejectedDocs: ISab);

 var
  l_RejCursor: ISabCursor;
  l_AccCursor: ISabCursor;

 procedure AddToRejected(aID: TDocID);
 var
  l_ID : TDocID;
 begin
  l_ID := aID;
  if theRejectedDocs <> nil then
   l_RejCursor.AddItem(@l_ID)
  else
  begin
   theRejectedDocs := MakeValueSet(aDocList.Table, fId_Fld, @l_ID, 1);
   l_RejCursor := theRejectedDocs.MakeSabCursor([fID_Fld], cmForward);
  end;
 end;

 procedure AddToAccepted(aID: TDocID);
 var
  l_ID : TDocID;
 begin
  l_ID := aID;
  if theAcceptedDocs <> nil then
   l_AccCursor.AddItem(@l_ID)
  else
  begin
   theAcceptedDocs := MakeValueSet(aDocList.Table, fId_Fld, @l_ID, 1);
   l_AccCursor := theAcceptedDocs.MakeSabCursor([fID_Fld], cmForward);
  end;
 end;

 function l_Iterator(aRec : Pointer): Boolean; register;
 var
  l_DocID     : TDocID;
  l_LockHandle: TJLHandle;
  l_MaxMask, l_LockMask : LongInt;
 begin
  Result := True;
  l_DocID := TDocID(aRec^);
  l_LockHandle := LockDoc(aFamily, l_DocID, l_MaxMask, l_LockMask);

  if l_LockHandle < 0 then
  begin
   AddToRejected(l_DocID);
   Exit;
  end;

  if not l3TestMask(l_LockMask, aRightsNeeded) then
  begin
   UnLockDoc(aFamily, l_LockHandle);
   AddToRejected(l_DocID);
   Exit;
  end;

  theLockHandles.Add(l_LockHandle);
  AddToAccepted(l_DocID);
 end;

var
 l_Proc : TdtRecAccessProc;

begin
 theLockHandles.Clear;
 theRejectedDocs := nil;
 theAcceptedDocs := nil;
 l_Proc := L2RecAccessProc(@l_Iterator);
 try
  aDocList.IterateRecords(l_Proc, [fId_Fld]);
 finally
  FreeRecAccessProc(l_Proc);
 end;
end;

procedure TLockServer.BatchUnlockDoc(aFamily: TFamilyID; aLockHandles: Tl3LongintList);

 function l_Iterator(Data: Pointer; Index: Longint): Boolean; register;
 begin
  UnLockDoc(aFamily, TJLHandle(Data^));
  Result := True;
 end;

begin
 aLockHandles.IterateAllF(l3L2IA(@l_Iterator));
end;

Procedure TLockServer.Cleanup;
Var
 I : TFamilyID;
Begin
 For I:=0 to GlobalHtServer.FamilyTbl.MaxFamilyID do
  If Locks^[I].Journal<>Nil
   then
    l3Free(Locks^[I].Journal);
 l3System.FreeLocalMem(Locks);
 Inherited;
end;

Function TLockServer.CompareSysData(Var OldSysData,NewSysData) : Boolean;
Begin
 If LongInt(OldSysData) = acFullBlock
  then
   Begin
    Result:=True;
    LongInt(NewSysData):=0;
    exit;
   end;
 LongInt(NewSysData):=Not LongInt(OldSysData) and LongInt(NewSysData);
 Result:=(LongInt(NewSysData)=0);
end;

Procedure TLockServer.OptimizeMem;
Var
 I : TFamilyID;
Begin
 For I:=0 to GlobalHtServer.FamilyTbl.MaxFamilyID do
  If (Locks^[I].Count=0) and
     (Locks^[I].Journal<>Nil)
   then
    l3Free(Locks^[I].Journal);
end;

Procedure TLockServer.ReallocLocks(NewMaxFamId : TFamilyID);
Begin
 l3System.ReAllocLocalMem(Locks,(NewMaxFAmID+1)*SizeOf(TLockRec));
end;

Procedure TLockServer.DelFamilyLocks(aFamily : TFamilyID);
Begin
 If Assigned(Locks^[aFamily].Journal)
  then
   l3Free(Locks^[aFamily].Journal);
 Locks^[aFamily].Count:=0
end;

function GetLockJournalName(const aFamily: TFamilyID): string;
begin
 if aFamily = MainTblsFamily then
  Result := GlobalHtServer.FamilyTbl.FamilyPath(aFamily)+JourPrefix+'.jor'
 else
  Result := GlobalHtServer.FamilyTbl.FamilyPath(aFamily)+JourPrefix+IntToHex(aFamily,3)+'.jor';
end;

Procedure TLockServer.OpenJournal(aFamily : TFamilyID);
Var
 CurName : ShortString;
Begin
 CurName := GetLockJournalName(aFamily);
 Locks^[aFamily].Journal:=TAbstractJournal.Create(GlobalHtServer.CurStationName, CurName);
 Locks^[aFamily].Journal.CompareSysData:=CompareSysData;
end;

procedure TLockServer.InitFamilyLocks(aFamily : TFamilyID);
begin
 if Locks^[aFamily].Journal = nil then
  OpenJournal(aFamily);
end;

function TLockServer.LockDoc(aFamily : TFamilyID;aDocID : TDocID;
                             var MaxMask,LockMask : LongInt) : TJLHandle;
begin
 (* Получение максимальной маски прав для данного aDocID *)
 MaxMask := LinkServer(aFamily).GetMask(aDocID);
 Result := LockDocByMask(aFamily, aDocID, MaxMask, LockMask);
end;

function TLockServer.LockDocByMask(aFamily : TFamilyID; aDocID : TDocID; aMaxMask : LongInt; var aLockMask : LongInt) : TJLHandle;
var
 lSaveLockMask : Longint;

begin
 Result := -1;

 if Locks^[aFamily].Journal = nil then
  OpenJournal(aFamily);

 (* Дополнение маски прав до непротиворечивого состояния *)
 if (aMaxMask and acgTextDependMask <> 0) then
  aLockMask := aMaxMask or acgTextDependMask
 else
  aLockMask := aMaxMask;

 if aLockMask = 0 then Exit;

 (* Попытка захвата документа с заданной маской прав *)
 Result := Locks^[aFamily].Journal.Lock(aDocID, aLockMask);

 lSaveLockMask := aLockMask;

 if (Result = -1) then Exit;

 (* если не удалось захватить все права, связанные с редактированием текста, то срезаем остальные*)
 if (aLockMask and acgTextDependMask <> acgTextDependMask) then
  aLockMask := aLockMask and not acgTextDependMask;

 (* восстанавливаем разрешенный объем прав *)
 aLockMask := aLockMask and aMaxMask;

 (* Освобождение захваченного документа, если маска после захвата получилась равной 0 *)
 if (aLockMask = 0) then
 begin
  Locks^[aFamily].Journal.UnLock(Result);
  Result := -1;
 end
 else
  if lSaveLockMask <> aLockMask then
  (*корректируем объем захваченных прав*)
   Locks^[aFamily].Journal.SetNewSysData(Result, aLockMask);
end;

Function TLockServer.FullLockDoc(aFamily : TFamilyID;
                                 aDocID  : TDocID) : TJLHandle;
var
 CurMask : LongInt;
begin
 Result:=-1;

 if Locks^[aFamily].Journal=nil then
  OpenJournal(aFamily);

 CurMask:=LinkServer(aFamily).GetSelfMask;

 CurMask:=acFullBlock;
 try
  Result:=Locks^[aFamily].Journal.Lock(aDocID,CurMask,dtlExclusive);
  if Result<>-1 then Inc(Locks^[aFamily].Count);
 except
  Result:=-1;
 end;
end;

function  TLockServer.PreventLockDoc(aFamily : TFamilyID; aDocID  : TDocID) : TJLHandle;
var
 lCurMask : longint;
begin
 Result := -1;
 if Locks^[aFamily].Journal=nil then
  OpenJournal(aFamily);

 lCurMask := acFullBlock;
 try
  Result := Locks^[aFamily].Journal.Lock(aDocID, lCurMask, dtlPrevent);
  if Result <> -1 then Inc(Locks^[aFamily].Count);
 except
  Result := -1;
 end;
end;

Procedure TLockServer.UnLockDoc(aFamily : TFamilyID;aLockHandle : TJLHandle);
Begin
 If aLockHandle > 0 then
  begin
   Locks^[aFamily].Journal.UnLock(aLockHandle);
   If Locks^[aFamily].Count<>0 then
    Dec(Locks^[aFamily].Count);
  end;
end;

Function TLockServer.LockFamily(aFamily : TFamilyID) : boolean;
begin
 if aFamily = MainTblsFamily then
  Result := GlobalHtServer.LockAll
 else
 begin
  GlobalHtServer.CloseAllTbls(aFamily);
  try
   try
    GlobalHtServer.Family[aFamily].Lock(TAB_PRIVATE);
    Result := True;
   except
    Result := false;
   end;
  finally
   GlobalHtServer.OpenClosedTbls;
  end;
 end;
end;

procedure TLockServer.UnLockFamily(aFamily : TFamilyID);
begin
 if aFamily = MainTblsFamily then
  GlobalHtServer.UnLockAll
 else
 begin
  GlobalHtServer.CloseAllTbls(aFamily);
  try
   GlobalHtServer.Family[aFamily].Unlock;
  finally
   GlobalHtServer.OpenClosedTbls;
  end;
 end;
end;

procedure TLockServer.WhoLockDoc(aFamily : TFamilyID;aDocID  : TDocID;
                                 var Stations : TStationNameArray;
                                 var UserIDs  : TUserIDArray;
                                 aIgnoredLockHandle : TJLHandle = -1);
var
 l_LockList : Tl3RecList;//of TJourRec
 I: Integer;
begin
 Stations := nil;
 UserIDs  := nil;
 if Locks^[aFamily].Journal = nil then
  OpenJournal(aFamily);

 l_LockList := Tl3RecList.Create(SizeOf(TJourRec));
 try
  if Locks^[aFamily].Journal.CheckLock(aDocID, l_LockList,aIgnoredLockHandle) then
   begin
    SetLength(Stations, l_LockList.Count);
    SetLength(UserIDs, l_LockList.Count);
    for I := 0 to Pred(l_LockList.Count) do
    begin
     Stations[I]:=l3ArrayToString(PJourRec(l_LockList.ItemSlot(I)).rStationName, SizeOf(TStationID));
     // Придется пока считать, что все пользователи без исключения в качестве имени станции используют свой номер в Hex
     UserIDs[I]:= StrToIntDef('$'+Stations[I], 0);
    end;
   end;
 finally
  l3Free(l_LockList);
 end;
end;
end.
