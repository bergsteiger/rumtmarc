unit NOT_FINISHED_m3BasCla;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "m3"
// Модуль: "w:/common/components/rtl/Garant/m3/NOT_FINISHED_m3BasCla.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::m3::m3CoreObjects::m3BasCla
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include ..\m3\m3Define.inc}

interface

uses
  l3Interfaces,
  ActiveX,
  m3StorageInterfaces,
  Classes,
  l3ProtoObject
  ;

type
 Tm3BaseClass = class(Tl3ProtoObject)
 end;//Tm3BaseClass

 Tm3BaseStore = class(Tm3BaseClass)
 protected
 // protected methods
   function Pm_GetPosition: Int64; virtual;
   function Pm_GetSize: Int64; virtual;
   function Pm_GetLocksSupported: Integer; virtual;
   function Pm_GetAccess: Integer; virtual;
 end;//Tm3BaseStore

 Tm3BaseStorage = class(Tm3BaseStore)
 end;//Tm3BaseStorage

 Tm3BaseStream = class(Tm3BaseStore, IStream)
 protected
 // protected methods
   procedure Read(aBuff: Pointer;
     aSize: Integer;
     var theResult: Integer;
     var theReturn: hResult); virtual;
   procedure Write(aBuff: Pointer;
     aSize: Integer;
     var theResult: Integer;
     var theReturn: hResult); virtual;
   procedure Seek(anOffset: Int64;
     anOrigin: TSeekOrigin;
     var theResult: Int64;
     var theReturn: hResult); virtual;
   procedure SetSize(aSize: Int64;
     var theReturn: hResult); virtual;
   procedure LockRegion(anOffset: Int64;
     aSize: Int64;
     aLockType: Integer;
     var theReturn: hResult); virtual;
   procedure UnlockRegion(anOffset: Int64;
     aSize: Int64;
     aLockType: Integer;
     var theReturn: hResult); virtual;
   procedure Stat(var theStatStg: TStatStg;
     aStatFlag: Integer;
     var theReturn: hResult); virtual;
   procedure StatStgName(var theResult: PWideChar;
     var theReturn: hResult); virtual;
   procedure StatStgType(var theResult: Integer;
     var theReturn: hResult); virtual;
   procedure Commit(aFlags: Integer;
     var theReturn: hResult); virtual;
   procedure Revert(var theReturn: hResult); virtual;
   procedure Clone(var theStream: IStream;
     var theReturn: hResult); virtual;
   procedure CopyTo(const aStream: IStream;
     aSize: Int64;
     var theRead: Int64;
     var theWritten: Int64;
     var theReturn: hResult); virtual;
 end;//Tm3BaseStream

 Tm3FileStream = class(Tm3BaseStream)
 end;//Tm3FileStream

implementation

// start class Tm3BaseStore

function Tm3BaseStore.Pm_GetPosition: Int64;
//#UC START# *4FA280090314_4FA276650046_var*
//#UC END# *4FA280090314_4FA276650046_var*
begin
//#UC START# *4FA280090314_4FA276650046_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA280090314_4FA276650046_impl*
end;//Tm3BaseStore.Pm_GetPosition

function Tm3BaseStore.Pm_GetSize: Int64;
//#UC START# *4FA2802E0231_4FA276650046_var*
//#UC END# *4FA2802E0231_4FA276650046_var*
begin
//#UC START# *4FA2802E0231_4FA276650046_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA2802E0231_4FA276650046_impl*
end;//Tm3BaseStore.Pm_GetSize

function Tm3BaseStore.Pm_GetLocksSupported: Integer;
//#UC START# *4FA2805002E3_4FA276650046_var*
//#UC END# *4FA2805002E3_4FA276650046_var*
begin
//#UC START# *4FA2805002E3_4FA276650046_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA2805002E3_4FA276650046_impl*
end;//Tm3BaseStore.Pm_GetLocksSupported

function Tm3BaseStore.Pm_GetAccess: Integer;
//#UC START# *4FA28066013B_4FA276650046_var*
//#UC END# *4FA28066013B_4FA276650046_var*
begin
//#UC START# *4FA28066013B_4FA276650046_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA28066013B_4FA276650046_impl*
end;//Tm3BaseStore.Pm_GetAccess
// start class Tm3BaseStream

procedure Tm3BaseStream.Read(aBuff: Pointer;
  aSize: Integer;
  var theResult: Integer;
  var theReturn: hResult);
//#UC START# *4FA27CF501C4_4FA276800294_var*
//#UC END# *4FA27CF501C4_4FA276800294_var*
begin
//#UC START# *4FA27CF501C4_4FA276800294_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA27CF501C4_4FA276800294_impl*
end;//Tm3BaseStream.Read

procedure Tm3BaseStream.Write(aBuff: Pointer;
  aSize: Integer;
  var theResult: Integer;
  var theReturn: hResult);
//#UC START# *4FA27D310344_4FA276800294_var*
//#UC END# *4FA27D310344_4FA276800294_var*
begin
//#UC START# *4FA27D310344_4FA276800294_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA27D310344_4FA276800294_impl*
end;//Tm3BaseStream.Write

procedure Tm3BaseStream.Seek(anOffset: Int64;
  anOrigin: TSeekOrigin;
  var theResult: Int64;
  var theReturn: hResult);
//#UC START# *4FA27D5302C5_4FA276800294_var*
//#UC END# *4FA27D5302C5_4FA276800294_var*
begin
//#UC START# *4FA27D5302C5_4FA276800294_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA27D5302C5_4FA276800294_impl*
end;//Tm3BaseStream.Seek

procedure Tm3BaseStream.SetSize(aSize: Int64;
  var theReturn: hResult);
//#UC START# *4FA27DCD02B4_4FA276800294_var*
//#UC END# *4FA27DCD02B4_4FA276800294_var*
begin
//#UC START# *4FA27DCD02B4_4FA276800294_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA27DCD02B4_4FA276800294_impl*
end;//Tm3BaseStream.SetSize

procedure Tm3BaseStream.LockRegion(anOffset: Int64;
  aSize: Int64;
  aLockType: Integer;
  var theReturn: hResult);
//#UC START# *4FA27E100218_4FA276800294_var*
//#UC END# *4FA27E100218_4FA276800294_var*
begin
//#UC START# *4FA27E100218_4FA276800294_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA27E100218_4FA276800294_impl*
end;//Tm3BaseStream.LockRegion

procedure Tm3BaseStream.UnlockRegion(anOffset: Int64;
  aSize: Int64;
  aLockType: Integer;
  var theReturn: hResult);
//#UC START# *4FA27E4C0342_4FA276800294_var*
//#UC END# *4FA27E4C0342_4FA276800294_var*
begin
//#UC START# *4FA27E4C0342_4FA276800294_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA27E4C0342_4FA276800294_impl*
end;//Tm3BaseStream.UnlockRegion

procedure Tm3BaseStream.Stat(var theStatStg: TStatStg;
  aStatFlag: Integer;
  var theReturn: hResult);
//#UC START# *4FA27E6A001B_4FA276800294_var*
//#UC END# *4FA27E6A001B_4FA276800294_var*
begin
//#UC START# *4FA27E6A001B_4FA276800294_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA27E6A001B_4FA276800294_impl*
end;//Tm3BaseStream.Stat

procedure Tm3BaseStream.StatStgName(var theResult: PWideChar;
  var theReturn: hResult);
//#UC START# *4FA27EA203A5_4FA276800294_var*
//#UC END# *4FA27EA203A5_4FA276800294_var*
begin
//#UC START# *4FA27EA203A5_4FA276800294_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA27EA203A5_4FA276800294_impl*
end;//Tm3BaseStream.StatStgName

procedure Tm3BaseStream.StatStgType(var theResult: Integer;
  var theReturn: hResult);
//#UC START# *4FA27ECE0379_4FA276800294_var*
//#UC END# *4FA27ECE0379_4FA276800294_var*
begin
//#UC START# *4FA27ECE0379_4FA276800294_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA27ECE0379_4FA276800294_impl*
end;//Tm3BaseStream.StatStgType

procedure Tm3BaseStream.Commit(aFlags: Integer;
  var theReturn: hResult);
//#UC START# *4FA280DB0288_4FA276800294_var*
//#UC END# *4FA280DB0288_4FA276800294_var*
begin
//#UC START# *4FA280DB0288_4FA276800294_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA280DB0288_4FA276800294_impl*
end;//Tm3BaseStream.Commit

procedure Tm3BaseStream.Revert(var theReturn: hResult);
//#UC START# *4FA2812803CF_4FA276800294_var*
//#UC END# *4FA2812803CF_4FA276800294_var*
begin
//#UC START# *4FA2812803CF_4FA276800294_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA2812803CF_4FA276800294_impl*
end;//Tm3BaseStream.Revert

procedure Tm3BaseStream.Clone(var theStream: IStream;
  var theReturn: hResult);
//#UC START# *4FA2814A0215_4FA276800294_var*
//#UC END# *4FA2814A0215_4FA276800294_var*
begin
//#UC START# *4FA2814A0215_4FA276800294_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA2814A0215_4FA276800294_impl*
end;//Tm3BaseStream.Clone

procedure Tm3BaseStream.CopyTo(const aStream: IStream;
  aSize: Int64;
  var theRead: Int64;
  var theWritten: Int64;
  var theReturn: hResult);
//#UC START# *4FA28171017C_4FA276800294_var*
//#UC END# *4FA28171017C_4FA276800294_var*
begin
//#UC START# *4FA28171017C_4FA276800294_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA28171017C_4FA276800294_impl*
end;//Tm3BaseStream.CopyTo
end.