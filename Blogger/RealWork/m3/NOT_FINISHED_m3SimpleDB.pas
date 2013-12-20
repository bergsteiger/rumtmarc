unit NOT_FINISHED_m3SimpleDB;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "m3"
// Модуль: "w:/common/components/rtl/Garant/m3/NOT_FINISHED_m3SimpleDB.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::m3::m3DB::Tm3SimpleDB
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include ..\m3\m3Define.inc}

interface

uses
  m3DB,
  m3StorageInterfaces
  ;

type
 Tm3SimpleDB = class(Tm3CustomDB)
 protected
 // realized methods
   function MainStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage; override;
     {* Возвращает корень постоянной части }
   function GetVersionsStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage; override;
     {* Возвращает корень переменной части }
   function GetBackupStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage; override;
     {* Возвращает корень резервной копии }
   procedure Start(aOpenMode: Tm3StoreAccess); override;
     {* начинает процесс с базой }
   procedure Finish; override;
     {* заканчивает процесс с базой }
   procedure StartEx(aVersionsMode: Tm3StoreAccess;
    aConstMode: Tm3StoreAccess); override;
     {* начинает процесс с базой }
   procedure CloseBase; override;
     {* закрывает открытые файлы }
 end;//Tm3SimpleDB

implementation

// start class Tm3SimpleDB

function Tm3SimpleDB.MainStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
//#UC START# *49BFD4CE0235_4742CA7E00BE_var*
//#UC END# *49BFD4CE0235_4742CA7E00BE_var*
begin
//#UC START# *49BFD4CE0235_4742CA7E00BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *49BFD4CE0235_4742CA7E00BE_impl*
end;//Tm3SimpleDB.MainStorage

function Tm3SimpleDB.GetVersionsStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
//#UC START# *49BFD4F3013E_4742CA7E00BE_var*
//#UC END# *49BFD4F3013E_4742CA7E00BE_var*
begin
//#UC START# *49BFD4F3013E_4742CA7E00BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *49BFD4F3013E_4742CA7E00BE_impl*
end;//Tm3SimpleDB.GetVersionsStorage

function Tm3SimpleDB.GetBackupStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
//#UC START# *49BFD52D0076_4742CA7E00BE_var*
//#UC END# *49BFD52D0076_4742CA7E00BE_var*
begin
//#UC START# *49BFD52D0076_4742CA7E00BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *49BFD52D0076_4742CA7E00BE_impl*
end;//Tm3SimpleDB.GetBackupStorage

procedure Tm3SimpleDB.Start(aOpenMode: Tm3StoreAccess);
//#UC START# *49C2496903D4_4742CA7E00BE_var*
//#UC END# *49C2496903D4_4742CA7E00BE_var*
begin
//#UC START# *49C2496903D4_4742CA7E00BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *49C2496903D4_4742CA7E00BE_impl*
end;//Tm3SimpleDB.Start

procedure Tm3SimpleDB.Finish;
//#UC START# *49C249810227_4742CA7E00BE_var*
//#UC END# *49C249810227_4742CA7E00BE_var*
begin
//#UC START# *49C249810227_4742CA7E00BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *49C249810227_4742CA7E00BE_impl*
end;//Tm3SimpleDB.Finish

procedure Tm3SimpleDB.StartEx(aVersionsMode: Tm3StoreAccess;
  aConstMode: Tm3StoreAccess);
//#UC START# *49C75F73038A_4742CA7E00BE_var*
//#UC END# *49C75F73038A_4742CA7E00BE_var*
begin
//#UC START# *49C75F73038A_4742CA7E00BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *49C75F73038A_4742CA7E00BE_impl*
end;//Tm3SimpleDB.StartEx

procedure Tm3SimpleDB.CloseBase;
//#UC START# *49C75F8C02B9_4742CA7E00BE_var*
//#UC END# *49C75F8C02B9_4742CA7E00BE_var*
begin
//#UC START# *49C75F8C02B9_4742CA7E00BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *49C75F8C02B9_4742CA7E00BE_impl*
end;//Tm3SimpleDB.CloseBase

end.