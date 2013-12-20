unit m4DBInterfaces;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "m4"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/m4/m4DBInterfaces.pas"
// Начат: 18.08.2004 21:48
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi For Archi::m4::m4DBInterfaces
//
// Интерфейсы индексируемого хранилища.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\m4\m4Define.inc}

interface

uses
  l3Interfaces,
  l3Types,
  m3DBInterfaces,
  m4Interfaces
  ;

type
 Tm4WordAction = procedure (aHandle: Integer;
  const aStr: Tl3PCharLen);

 Im4DB = interface(Im3DB)
   ['{6C9973E5-00A7-46C0-BA8F-E28FFB54D94D}']
   procedure DeleteIndex;
     {* Удаляет текстовый индекс }
   function pm_GetPackedIndex: Boolean;
   procedure pm_SetPackedIndex(aValue: Boolean);
   function pm_GetFakeIndex: Boolean;
   procedure pm_SetFakeIndex(aValue: Boolean);
   function BuildIndex(aDelta: Boolean = false;
    aExitIfExists: Boolean = false;
    anIndexID: Integer = 1): Integer;
     {* строит контекстный индкс. Возвращает число проиндексированных файлов. }
   procedure UpdateIndex(anIndexID: Integer = 1);
     {* обновляет или перестраивает индекс (в зависимости от его состояния). }
   property PackedIndex: Boolean
     read pm_GetPackedIndex
     write pm_SetPackedIndex;
     {* паковать ли индекс? }
   property FakeIndex: Boolean
     read pm_GetFakeIndex
     write pm_SetFakeIndex;
     {* индексировать в пустоту? }
 end;//Im4DB

implementation

end.