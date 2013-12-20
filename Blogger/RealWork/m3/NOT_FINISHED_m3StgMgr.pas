unit NOT_FINISHED_m3StgMgr;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "m3"
// Модуль: "w:/common/components/rtl/Garant/m3/NOT_FINISHED_m3StgMgr.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::m3::m3DB::m3StgMgr
//
// Классы-менеджеры для работы с IStorage
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include ..\m3\m3Define.inc}

interface

uses
  m3BasCla
  ;

type
 Tm3StorageManager = class(Tm3BaseClass)
 end;//Tm3StorageManager

 Tm3FullModeStorageManager = class(Tm3StorageManager)
 end;//Tm3FullModeStorageManager

 Tm3ReadModeStorageManager = class(Tm3StorageManager)
 end;//Tm3ReadModeStorageManager

implementation

uses
  m3SplittedFileStream
  ;

end.