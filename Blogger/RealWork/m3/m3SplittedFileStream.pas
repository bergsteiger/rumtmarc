unit m3SplittedFileStream;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "m3"
// Модуль: "w:/common/components/rtl/Garant/m3/m3SplittedFileStream.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::m3::m3CoreObjects::Tm3SplittedFileStream
//
// Файловый поток порезанный на куски
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\m3\m3Define.inc}

interface

uses
  l3Interfaces,
  l3Stream,
  l3ProtoDataContainer,
  m3BasCla,
  l3Types,
  l3Memory,
  l3Core,
  l3Except,
  Classes,
  m3StorageInterfaces
  ;

type
 Tm3InnerFileStream = class(Tm3FileStream)
 end;//Tm3InnerFileStream

 _ItemType_ = Tm3InnerFileStream;
 _l3UncomparabeObjectRefList_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
{$Include w:\common\components\rtl\Garant\L3\l3UncomparabeObjectRefList.imp.pas}
 _l3OpenArray_Parent_ = _l3UncomparabeObjectRefList_;
{$Include w:\common\components\rtl\Garant\L3\l3OpenArray.imp.pas}
 Tm3InnerFileStreamList = class(_l3OpenArray_)
 end;//Tm3InnerFileStreamList

const
  { Constants }
 m3_cInfoFileNameExt = '.cnt';

type
 Tm3SplittedFileStream = class(Tm3BaseStream)
  {* Файловый поток порезанный на куски }
 private
 // private fields
   f_SharedMode : Cardinal;
   f_Distribution : Cardinal;
   f_Flags : Cardinal;
   f_Name : WideString;
   f_OpenedStreams : Tm3InnerFileStreamList;
   f_Position : Int64;
   f_Access : Cardinal;
   f_SizeLimit : Int64;
   f_Ext : AnsiString;
   f_AnsiName : AnsiString;
   f_InfoStream : Tl3FileStream;
 private
 // private methods
   function FileByPos(aPos: Int64;
     var theFileOffset: Int64): Tm3InnerFileStream;
   function FileNameByIndex(anIndex: Integer): AnsiString;
   function FileIndexByPos(aPos: Int64): Integer;
   function NormalizePartSize(aPos: Int64;
     aSize: Integer): Integer;
   function CheckInfoStream(aNeedCreate: Boolean): Boolean;
 protected
 // property methods
   function pm_GetFilesCount: Integer;
   procedure pm_SetFilesCount(aValue: Integer);
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure Read(aBuff: Pointer;
     aSize: Integer;
     var theResult: Integer;
     var theReturn: hResult); override;
   procedure Write(aBuff: Pointer;
     aSize: Integer;
     var theResult: Integer;
     var theReturn: hResult); override;
   procedure Seek(anOffset: Int64;
     anOrigin: TSeekOrigin;
     var theResult: Int64;
     var theReturn: hResult); override;
   procedure SetSize(aSize: Int64;
     var theReturn: hResult); override;
   procedure LockRegion(anOffset: Int64;
     aSize: Int64;
     aLockType: Integer;
     var theReturn: hResult); override;
   procedure UnlockRegion(anOffset: Int64;
     aSize: Int64;
     aLockType: Integer;
     var theReturn: hResult); override;
   procedure Stat(var theStatStg: TStatStg;
     aStatFlag: Integer;
     var theReturn: hResult); override;
   procedure StatStgName(var theResult: PWideChar;
     var theReturn: hResult); override;
   procedure StatStgType(var theResult: Integer;
     var theReturn: hResult); override;
   function Pm_GetPosition: Int64; override;
   function Pm_GetSize: Int64; override;
   function Pm_GetLocksSupported: Integer; override;
   function Pm_GetAccess: Integer; override;
   procedure Commit(aFlags: Integer;
     var theReturn: hResult); override;
   procedure Revert(var theReturn: hResult); override;
   procedure Clone(var theStream: IStream;
     var theReturn: hResult); override;
   procedure CopyTo(const aStream: IStream;
     aSize: Int64;
     var theRead: Int64;
     var theWritten: Int64;
     var theReturn: hResult); override;
 public
 // public methods
   constructor Create(const aName: WideString;
     anAccess: Cardinal;
     aSharedMode: Cardinal;
     aDistribution: Cardinal;
     aFlags: Cardinal); reintroduce;
   class function Make(const aName: WideString;
     anAccess: Cardinal;
     aSharedMode: Cardinal;
     aDistribution: Cardinal;
     aFlags: Cardinal): IStream; reintroduce;
     {* Сигнатура фабрики Tm3SplittedFileStream.Make }
   class function NormalizeFileName(const aFileName: AnsiString): AnsiString;
 protected
 // protected properties
   property FilesCount: Integer
     read pm_GetFilesCount
     write pm_SetFilesCount;
 end;//Tm3SplittedFileStream

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils,
  Windows,
  ActiveX,
  l3String,
  l3FileUtils,
  m2COMLib
  ;

// start class Tm3SplittedFileStream

function Tm3SplittedFileStream.FileByPos(aPos: Int64;
  var theFileOffset: Int64): Tm3InnerFileStream;
//#UC START# *4FA3AF4E0094_4FA278B00247_var*
var
 l_Index : Integer;
 l_Count : Integer;
//#UC END# *4FA3AF4E0094_4FA278B00247_var*
begin
//#UC START# *4FA3AF4E0094_4FA278B00247_impl*
 l_Index := FileIndexByPos(aPos);
 theFileOffset := l_Index * f_SizeLimit;
 Result := f_OpenedStreams[l_Index].Use;
 if (Result = nil) then
 begin
  Result := Tm3InnerFileStream.Create(FileNameByIndex(l_Index),
                                      f_Access,
                                      f_SharedMode,
                                      f_Distribution,
                                      f_Flags);
  l_Count := f_OpenedStreams.Count;
  f_OpenedStreams[l_Index] := Result;
  if (f_OpenedStreams.Count <> l_Count) then
   FilesCount := f_OpenedStreams.Count;
 end;//Result = nil
//#UC END# *4FA3AF4E0094_4FA278B00247_impl*
end;//Tm3SplittedFileStream.FileByPos

function Tm3SplittedFileStream.FileNameByIndex(anIndex: Integer): AnsiString;
//#UC START# *4FA3B62102E6_4FA278B00247_var*
//#UC END# *4FA3B62102E6_4FA278B00247_var*
begin
//#UC START# *4FA3B62102E6_4FA278B00247_impl*
 Result := NormalizeFileName(f_AnsiName) + '.' + Format('%.4x', [anIndex]){IntToStr(anIndex)} + f_Ext;
//#UC END# *4FA3B62102E6_4FA278B00247_impl*
end;//Tm3SplittedFileStream.FileNameByIndex

function Tm3SplittedFileStream.FileIndexByPos(aPos: Int64): Integer;
//#UC START# *4FA3BFAE01B0_4FA278B00247_var*
//#UC END# *4FA3BFAE01B0_4FA278B00247_var*
begin
//#UC START# *4FA3BFAE01B0_4FA278B00247_impl*
 Result := aPos div f_SizeLimit;
//#UC END# *4FA3BFAE01B0_4FA278B00247_impl*
end;//Tm3SplittedFileStream.FileIndexByPos

function Tm3SplittedFileStream.NormalizePartSize(aPos: Int64;
  aSize: Integer): Integer;
//#UC START# *4FA4EF94004A_4FA278B00247_var*
//#UC END# *4FA4EF94004A_4FA278B00247_var*
begin
//#UC START# *4FA4EF94004A_4FA278B00247_impl*
 if (aPos + aSize > f_SizeLimit) then
  Result := (f_SizeLimit - aPos)
 else
  Result := aSize;
//#UC END# *4FA4EF94004A_4FA278B00247_impl*
end;//Tm3SplittedFileStream.NormalizePartSize

function Tm3SplittedFileStream.CheckInfoStream(aNeedCreate: Boolean): Boolean;
//#UC START# *4FA52DFA0143_4FA278B00247_var*
var
 l_Name : AnsiString;
//#UC END# *4FA52DFA0143_4FA278B00247_var*
begin
//#UC START# *4FA52DFA0143_4FA278B00247_impl*
 Result := true;
 if (f_InfoStream = nil) then
 begin
  l_Name := NormalizeFileName(f_AnsiName) + m3_cInfoFileNameExt + f_Ext;
  if not aNeedCreate then
   if not FileExists(l_Name) then
   begin
    Result := false;
    Exit;
   end;//not FileExists(l_Name)
  f_InfoStream := Tl3FileStream.Create(l_Name, l3_fmFullShareReadWrite);
 end;//f_InfoStream = nil
//#UC END# *4FA52DFA0143_4FA278B00247_impl*
end;//Tm3SplittedFileStream.CheckInfoStream

constructor Tm3SplittedFileStream.Create(const aName: WideString;
  anAccess: Cardinal;
  aSharedMode: Cardinal;
  aDistribution: Cardinal;
  aFlags: Cardinal);
//#UC START# *4FA27BC90091_4FA278B00247_var*

 function lGetAccess(const AAccess: Cardinal): Integer;
 begin//lGetAccess
  if ((AAccess and (GENERIC_READ or GENERIC_WRITE)) =
       (GENERIC_READ or GENERIC_WRITE)) then
   Result := STGM_READWRITE
  else
  begin
   if ((AAccess and GENERIC_WRITE) <> 0) then
    Result := STGM_WRITE
   else
    Result := STGM_READ;
  end;//((AAccess and (GENERIC_READ or GENERIC_WRITE)) =..
 end;//lGetAccess

//#UC END# *4FA27BC90091_4FA278B00247_var*
begin
//#UC START# *4FA27BC90091_4FA278B00247_impl*
 inherited Create(lGetAccess(anAccess));
 f_SizeLimit := 2 * 1024 * 1024;
 {$IfDef nsTest}
 //f_SizeLimit := f_SizeLimit * 1024;
 {$Else  nsTest}
 f_SizeLimit := f_SizeLimit * 1024;
 {$EndIf nsTest}
 f_Position := 0;
 f_Name := aName;
 f_Access := anAccess;
 f_SharedMode := aSharedMode;
 f_Distribution := aDistribution;
 f_Flags := aFlags;
 f_AnsiName := l3Str(f_Name);
 f_Ext := ExtractFileExt(f_AnsiName);
 f_OpenedStreams := Tm3InnerFileStreamList.Create;
 f_OpenedStreams.Count := FilesCount;
(* f_RealStream := Tm3InnerFileStream.Create(aName,
                                           anAccess,
                                           aSharedMode,
                                           aDistribution,
                                           aFlags);*)
//#UC END# *4FA27BC90091_4FA278B00247_impl*
end;//Tm3SplittedFileStream.Create

class function Tm3SplittedFileStream.Make(const aName: WideString;
  anAccess: Cardinal;
  aSharedMode: Cardinal;
  aDistribution: Cardinal;
  aFlags: Cardinal): IStream;
var
 l_Inst : Tm3SplittedFileStream;
begin
 l_Inst := Create(aName, anAccess, aSharedMode, aDistribution, aFlags);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

class function Tm3SplittedFileStream.NormalizeFileName(const aFileName: AnsiString): AnsiString;
//#UC START# *4FBB8E7F0101_4FA278B00247_var*
//#UC END# *4FBB8E7F0101_4FA278B00247_var*
begin
//#UC START# *4FBB8E7F0101_4FA278B00247_impl*
 Result := ChangeFileExt(aFileName, '');
//#UC END# *4FBB8E7F0101_4FA278B00247_impl*
end;//Tm3SplittedFileStream.NormalizeFileName{$If not Declared(_FindDataType_)}type _FindDataType_ = _ItemType_;{$IfEnd}
{$If not Declared(_DataType_)}type _DataType_ = Tl3Ptr;{$IfEnd}

// start class Tm3InnerFileStreamList

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_4FA3D66401BD_var*
//#UC END# *47B2C42A0163_4FA3D66401BD_var*
begin
//#UC START# *47B2C42A0163_4FA3D66401BD_impl*
 Assert(false);
//#UC END# *47B2C42A0163_4FA3D66401BD_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_4FA3D66401BD_var*
//#UC END# *47B99D4503A2_4FA3D66401BD_var*
begin
//#UC START# *47B99D4503A2_4FA3D66401BD_impl*
 Result := -1;
 Assert(false);
//#UC END# *47B99D4503A2_4FA3D66401BD_impl*
end;//CompareExistingItems

type _Instance_R_ = Tm3InnerFileStreamList;

{$Include w:\common\components\rtl\Garant\L3\l3UncomparabeObjectRefList.imp.pas}


{$Include w:\common\components\rtl\Garant\L3\l3OpenArray.imp.pas}

// start class Tm3SplittedFileStream

function Tm3SplittedFileStream.pm_GetFilesCount: Integer;
//#UC START# *4FA3CE4C03CB_4FA278B00247get_var*
//#UC END# *4FA3CE4C03CB_4FA278B00247get_var*
begin
//#UC START# *4FA3CE4C03CB_4FA278B00247get_impl*
 if CheckInfoStream(false) then
 begin
  f_InfoStream.Seek(0, soBeginning);
  if (f_InfoStream.Read(Result, SizeOf(Result)) <> SizeOf(Result)) then
   raise Exception.CreateFmt('Ошибка при чтении числа файлов из %s', [NormalizeFileName(f_AnsiName) + m3_cInfoFileNameExt + f_Ext]);
 end//CheckInfoStream(false)
 else
  Result := 0;
//#UC END# *4FA3CE4C03CB_4FA278B00247get_impl*
end;//Tm3SplittedFileStream.pm_GetFilesCount

procedure Tm3SplittedFileStream.pm_SetFilesCount(aValue: Integer);
//#UC START# *4FA3CE4C03CB_4FA278B00247set_var*
//#UC END# *4FA3CE4C03CB_4FA278B00247set_var*
begin
//#UC START# *4FA3CE4C03CB_4FA278B00247set_impl*
 if (aValue <= FilesCount) then
  // - по идее - размер файла уменьшаться не может, а значит и количество кусков - тоже
  //   ну и заодним пытаемся защититься от конфликта при многопользовательском доступе
  Exit;
 CheckInfoStream(true);
 f_InfoStream.Seek(0, soBeginning); 
 if (f_InfoStream.Write(aValue, SizeOf(aValue)) <> SizeOf(aValue)) then
  raise Exception.CreateFmt('Ошибка при записи числа файлов в %s', [NormalizeFileName(f_AnsiName) + m3_cInfoFileNameExt + f_Ext]);
//#UC END# *4FA3CE4C03CB_4FA278B00247set_impl*
end;//Tm3SplittedFileStream.pm_SetFilesCount

procedure Tm3SplittedFileStream.Cleanup;
//#UC START# *479731C50290_4FA278B00247_var*
//#UC END# *479731C50290_4FA278B00247_var*
begin
//#UC START# *479731C50290_4FA278B00247_impl*
 FreeAndNil(f_OpenedStreams);
 FreeAndNil(f_InfoStream);
 inherited;
//#UC END# *479731C50290_4FA278B00247_impl*
end;//Tm3SplittedFileStream.Cleanup

procedure Tm3SplittedFileStream.Read(aBuff: Pointer;
  aSize: Integer;
  var theResult: Integer;
  var theReturn: hResult);
//#UC START# *4FA27CF501C4_4FA278B00247_var*
var
 l_Pos : Int64;
 l_OldPos : Int64;
 l_S   : Tm3InnerFileStream;
 l_Ofs : Int64;
 l_Read : Integer;
//#UC END# *4FA27CF501C4_4FA278B00247_var*
begin
//#UC START# *4FA27CF501C4_4FA278B00247_impl*
 if not SUCCEEDED(theReturn) then
 begin
  Assert(false);
  Exit;
 end;//not SUCCEEDED(theReturn)
 theResult := 0;
 while (aSize > 0) do
 begin
  l_S := FileByPos(f_Position, l_Ofs);
  try
   l_Read := 0;
   l_Pos := f_Position - l_Ofs;
   l_S.Seek(l_Pos, soBeginning, l_OldPos, theReturn);
   if not SUCCEEDED(theReturn) then
   begin
    Assert(false);
    Exit;
   end;//not SUCCEEDED(theReturn)
   //m2ComSetPosition(l_Pos, l_S);
   l_S.Read(aBuff, NormalizePartSize(l_Pos, aSize), l_Read, theReturn);
   if (theReturn <> S_Ok) then
   begin
    Assert(false);
    break;
   end;//theReturn <> S_Ok
   if (l_Read = 0) then
    break; 
   Inc(PAnsiChar(aBuff), l_Read);
   Dec(aSize, l_Read);
   Inc(theResult, l_Read);
   Inc(f_Position, l_Read);
  finally
   FreeAndNil(l_S);
  end;//try..finally
 end;//while (aSize > 0)
 //f_RealStream.Read(aBuff, aSize, theResult, theReturn);
//#UC END# *4FA27CF501C4_4FA278B00247_impl*
end;//Tm3SplittedFileStream.Read

procedure Tm3SplittedFileStream.Write(aBuff: Pointer;
  aSize: Integer;
  var theResult: Integer;
  var theReturn: hResult);
//#UC START# *4FA27D310344_4FA278B00247_var*
var
 l_Pos : Int64;
 l_OldPos : Int64;
 l_S   : Tm3InnerFileStream;
 l_Ofs : Int64;
 l_Written : Integer;
 l_Size : Int64;
 l_NewSize : Int64;
 l_Res : hResult;
//#UC END# *4FA27D310344_4FA278B00247_var*
begin
//#UC START# *4FA27D310344_4FA278B00247_impl*
 if not SUCCEEDED(theReturn) then
 begin
  Assert(false);
  Exit;
 end;//not SUCCEEDED(theReturn)
 theResult := 0;
 while (aSize > 0) do
 begin
  l_S := FileByPos(f_Position, l_Ofs);
  try
   l_Written := 0;
   l_Pos := f_Position - l_Ofs;
   l_S.Seek(l_Pos, soBeginning, l_OldPos, theReturn);
   if not SUCCEEDED(theReturn) then
   begin
    Assert(false);
    Exit;
   end;//not SUCCEEDED(theReturn)
   //m2ComSetPosition(l_Pos, l_S);
   l_Size := l_S.pm_GetSize;
   l_S.Write(aBuff, NormalizePartSize(l_Pos, aSize), l_Written, theReturn);
   if (theReturn <> S_Ok) then
   begin
    Assert(false);
    break;
   end;//theReturn <> S_Ok
   if (l_Written = 0) then
   begin
    Assert(false);
    break;
   end;//l_Written = 0
   l_NewSize := l_S.pm_GetSize;
   if (l_Size < l_NewSize) then
   begin
    if (l_Size mod 1000 = 0) OR (l_NewSize mod 1000 = 0) then
    begin
     l_Res := 0;
     l_S.Commit(STGC_DEFAULT, l_Res);
     if (l_Res <> S_Ok) then
      raise Exception.CreateFmt('Не смогли сбросить содержимое файла %s на диск', [FileNameByIndex(FileIndexByPos(f_Position))]);
    end;//l_Size mod 1000 = 0
   end;//l_Size <> l_S.Size
   Inc(PAnsiChar(aBuff), l_Written);
   Dec(aSize, l_Written);
   Inc(theResult, l_Written);
   Inc(f_Position, l_Written);
  finally
   FreeAndNil(l_S);
  end;//try..finally
 end;//while (aSize > 0)
 //f_RealStream.Write(aBuff, aSize, theResult, theReturn);
//#UC END# *4FA27D310344_4FA278B00247_impl*
end;//Tm3SplittedFileStream.Write

procedure Tm3SplittedFileStream.Seek(anOffset: Int64;
  anOrigin: TSeekOrigin;
  var theResult: Int64;
  var theReturn: hResult);
//#UC START# *4FA27D5302C5_4FA278B00247_var*
//#UC END# *4FA27D5302C5_4FA278B00247_var*
begin
//#UC START# *4FA27D5302C5_4FA278B00247_impl*
 if not SUCCEEDED(theReturn) then
 begin
  Assert(false);
  Exit;
 end;//not SUCCEEDED(theReturn)
 theResult := f_Position;
 Case anOrigin of
  soBeginning:
   f_Position := anOffset;
  soCurrent:
   f_Position := f_Position + anOffset;
  soEnd:
   f_Position := {f_Position + }Pm_GetSize + anOffset;
  else
   raise Exception.Create('Неверный Origin для Seek');
 end;//Case anOrigin
 Assert(f_Position >= 0);
 //Assert(f_Position <= Pm_GetSize);
 //f_RealStream.Seek(anOffset, anOrigin, theResult, theReturn);
//#UC END# *4FA27D5302C5_4FA278B00247_impl*
end;//Tm3SplittedFileStream.Seek

procedure Tm3SplittedFileStream.SetSize(aSize: Int64;
  var theReturn: hResult);
//#UC START# *4FA27DCD02B4_4FA278B00247_var*
//#UC END# *4FA27DCD02B4_4FA278B00247_var*
begin
//#UC START# *4FA27DCD02B4_4FA278B00247_impl*
 if not SUCCEEDED(theReturn) then
 begin
  Assert(false);
  Exit;
 end;//not SUCCEEDED(theReturn)
 Assert(false, 'По идее - не надо изменять напрямую размер такого потока. Всплывёт - будем разбираться');
 //f_RealStream.SetSize(aSize, theReturn);
//#UC END# *4FA27DCD02B4_4FA278B00247_impl*
end;//Tm3SplittedFileStream.SetSize

procedure Tm3SplittedFileStream.LockRegion(anOffset: Int64;
  aSize: Int64;
  aLockType: Integer;
  var theReturn: hResult);
//#UC START# *4FA27E100218_4FA278B00247_var*
var
 l_Pos : Int64;
 l_S   : Tm3InnerFileStream;
 l_Ofs : Int64;
//#UC END# *4FA27E100218_4FA278B00247_var*
begin
//#UC START# *4FA27E100218_4FA278B00247_impl*
 if not SUCCEEDED(theReturn) then
 begin
  Assert(false);
  Exit;
 end;//not SUCCEEDED(theReturn)
 //Exit;
 l_Pos := {f_Position + }anOffset;
 Assert(FileIndexByPos(l_Pos) = FileIndexByPos(l_Pos + aSize), 'Залочка попала на границу файлов');
 l_S := FileByPos(l_Pos, l_Ofs);
 try
  l_S.LockRegion(anOffset - l_Ofs, aSize, aLockType, theReturn);
 finally
  FreeAndNil(l_S);
 end;//try..finally
 //f_RealStream.LockRegion(anOffset, aSize, aLockType, theReturn);
//#UC END# *4FA27E100218_4FA278B00247_impl*
end;//Tm3SplittedFileStream.LockRegion

procedure Tm3SplittedFileStream.UnlockRegion(anOffset: Int64;
  aSize: Int64;
  aLockType: Integer;
  var theReturn: hResult);
//#UC START# *4FA27E4C0342_4FA278B00247_var*
var
 l_Pos : Int64;
 l_S   : Tm3InnerFileStream;
 l_Ofs : Int64;
//#UC END# *4FA27E4C0342_4FA278B00247_var*
begin
//#UC START# *4FA27E4C0342_4FA278B00247_impl*
 if not SUCCEEDED(theReturn) then
 begin
  Assert(false);
  Exit;
 end;//not SUCCEEDED(theReturn)
 //Exit;
 l_Pos := {f_Position + }anOffset;
 Assert(FileIndexByPos(l_Pos) = FileIndexByPos(l_Pos + aSize), 'Залочка попала на границу файлов');
 l_S := FileByPos(l_Pos, l_Ofs);
 try
  l_S.UnlockRegion(anOffset - l_Ofs, aSize, aLockType, theReturn);
 finally
  FreeAndNil(l_S);
 end;//try..finally
 //f_RealStream.UnlockRegion(anOffset, aSize, aLockType, theReturn);
//#UC END# *4FA27E4C0342_4FA278B00247_impl*
end;//Tm3SplittedFileStream.UnlockRegion

procedure Tm3SplittedFileStream.Stat(var theStatStg: TStatStg;
  aStatFlag: Integer;
  var theReturn: hResult);
//#UC START# *4FA27E6A001B_4FA278B00247_var*
//#UC END# *4FA27E6A001B_4FA278B00247_var*
begin
//#UC START# *4FA27E6A001B_4FA278B00247_impl*
 inherited;
 //f_RealStream.Stat(theStatStg, aStatFlag, theReturn);
//#UC END# *4FA27E6A001B_4FA278B00247_impl*
end;//Tm3SplittedFileStream.Stat

procedure Tm3SplittedFileStream.StatStgName(var theResult: PWideChar;
  var theReturn: hResult);
//#UC START# *4FA27EA203A5_4FA278B00247_var*
//#UC END# *4FA27EA203A5_4FA278B00247_var*
begin
//#UC START# *4FA27EA203A5_4FA278B00247_impl*
 if not SUCCEEDED(theReturn) then
 begin
  Assert(false);
  Exit;
 end;//not SUCCEEDED(theReturn)
 m2COMAllocWideBuff(theResult, f_Name);
 //f_RealStream.StatStgName(theResult, theReturn);
//#UC END# *4FA27EA203A5_4FA278B00247_impl*
end;//Tm3SplittedFileStream.StatStgName

procedure Tm3SplittedFileStream.StatStgType(var theResult: Integer;
  var theReturn: hResult);
//#UC START# *4FA27ECE0379_4FA278B00247_var*
//#UC END# *4FA27ECE0379_4FA278B00247_var*
begin
//#UC START# *4FA27ECE0379_4FA278B00247_impl*
 inherited;
 //f_RealStream.StatStgType(theResult, theReturn);
//#UC END# *4FA27ECE0379_4FA278B00247_impl*
end;//Tm3SplittedFileStream.StatStgType

function Tm3SplittedFileStream.Pm_GetPosition: Int64;
//#UC START# *4FA280090314_4FA278B00247_var*
//#UC END# *4FA280090314_4FA278B00247_var*
begin
//#UC START# *4FA280090314_4FA278B00247_impl*
 Result := f_Position;
 //Result := f_RealStream.Pm_GetPosition;
//#UC END# *4FA280090314_4FA278B00247_impl*
end;//Tm3SplittedFileStream.Pm_GetPosition

function Tm3SplittedFileStream.Pm_GetSize: Int64;
//#UC START# *4FA2802E0231_4FA278B00247_var*
var
 l_C : Integer;
 l_Res : hResult;
 l_S : Tm3InnerFileStream;
//#UC END# *4FA2802E0231_4FA278B00247_var*
begin
//#UC START# *4FA2802E0231_4FA278B00247_impl*
 l_C := Max(f_OpenedStreams.Count, FilesCount) - 1;
 if (l_C < 0) then
  Result := 0
 else
 begin
  l_S := f_OpenedStreams[l_C];
  if (l_S <> nil) then
  begin
   l_Res := 0;
   //l_S.Commit(STGC_DEFAULT, l_Res);
   if (l_Res <> S_Ok) then
    raise Exception.CreateFmt('Не смогли сбросить содержимое файла %s на диск', [FileNameByIndex(l_C)]);
   Result := l_S.pm_GetSize;
   //Result := Max(Result, l3FileUtils.GetFileSize(FileNameByIndex(l_C)));
  end//f_OpenedStreams[l_C] <> nil
  else
   Result := l3FileUtils.GetFileSize(FileNameByIndex(l_C));
(*  if (f_OpenedStreams[l_C] <> nil) then
   Assert(Result = f_OpenedStreams[l_C].pm_GetSize);*)
  if (l_C > 0) then
   Result := Result + (l_C{ - 1}) * f_SizeLimit;
 end;//l_C < 0
 //Result := f_RealStream.Pm_GetSize;
//#UC END# *4FA2802E0231_4FA278B00247_impl*
end;//Tm3SplittedFileStream.Pm_GetSize

function Tm3SplittedFileStream.Pm_GetLocksSupported: Integer;
//#UC START# *4FA2805002E3_4FA278B00247_var*
//#UC END# *4FA2805002E3_4FA278B00247_var*
begin
//#UC START# *4FA2805002E3_4FA278B00247_impl*
 Result := LOCK_EXCLUSIVE;
 //Result := f_RealStream.Pm_GetLocksSupported;
//#UC END# *4FA2805002E3_4FA278B00247_impl*
end;//Tm3SplittedFileStream.Pm_GetLocksSupported

function Tm3SplittedFileStream.Pm_GetAccess: Integer;
//#UC START# *4FA28066013B_4FA278B00247_var*
//#UC END# *4FA28066013B_4FA278B00247_var*
begin
//#UC START# *4FA28066013B_4FA278B00247_impl*
 Result := _Access;
 //Result := f_RealStream.Pm_GetAccess;
//#UC END# *4FA28066013B_4FA278B00247_impl*
end;//Tm3SplittedFileStream.Pm_GetAccess

procedure Tm3SplittedFileStream.Commit(aFlags: Integer;
  var theReturn: hResult);
//#UC START# *4FA280DB0288_4FA278B00247_var*
//#UC END# *4FA280DB0288_4FA278B00247_var*
begin
//#UC START# *4FA280DB0288_4FA278B00247_impl*
 if not SUCCEEDED(theReturn) then
 begin
  Assert(false);
  Exit;
 end;//not SUCCEEDED(theReturn)
 Assert(false);
 //f_RealStream.Commit(aFlags, theReturn);
//#UC END# *4FA280DB0288_4FA278B00247_impl*
end;//Tm3SplittedFileStream.Commit

procedure Tm3SplittedFileStream.Revert(var theReturn: hResult);
//#UC START# *4FA2812803CF_4FA278B00247_var*
//#UC END# *4FA2812803CF_4FA278B00247_var*
begin
//#UC START# *4FA2812803CF_4FA278B00247_impl*
 if not SUCCEEDED(theReturn) then
 begin
  Assert(false);
  Exit;
 end;//not SUCCEEDED(theReturn)
 Assert(false);
 //f_RealStream.Revert(theReturn);
//#UC END# *4FA2812803CF_4FA278B00247_impl*
end;//Tm3SplittedFileStream.Revert

procedure Tm3SplittedFileStream.Clone(var theStream: IStream;
  var theReturn: hResult);
//#UC START# *4FA2814A0215_4FA278B00247_var*
//#UC END# *4FA2814A0215_4FA278B00247_var*
begin
//#UC START# *4FA2814A0215_4FA278B00247_impl*
 inherited;
 //f_RealStream.Clone(theStream, theReturn);
//#UC END# *4FA2814A0215_4FA278B00247_impl*
end;//Tm3SplittedFileStream.Clone

procedure Tm3SplittedFileStream.CopyTo(const aStream: IStream;
  aSize: Int64;
  var theRead: Int64;
  var theWritten: Int64;
  var theReturn: hResult);
//#UC START# *4FA28171017C_4FA278B00247_var*
//#UC END# *4FA28171017C_4FA278B00247_var*
begin
//#UC START# *4FA28171017C_4FA278B00247_impl*
 inherited;
//#UC END# *4FA28171017C_4FA278B00247_impl*
end;//Tm3SplittedFileStream.CopyTo

end.