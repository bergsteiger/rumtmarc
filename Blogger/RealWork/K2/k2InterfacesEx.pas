unit k2InterfacesEx;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2InterfacesEx.pas"
// Начат: 21.03.2008 12:26
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi::K2::k2InterfacesEx
//
// Дополнительные интерфейсы.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Interfaces,
  l3PureMixIns
  ;

type
 Ik2TagListPrim = interface(IUnknown)
  {* Список тегов. }
   ['{D87DEF16-D91F-4EAB-B5B0-36BFDA811F51}']
  // Ml3List
   function pm_GetEmpty: Boolean;
   function pm_GetFirst: Ik2Tag;
   function pm_GetLast: Ik2Tag;
   function pm_GetItems(anIndex: Integer): Ik2Tag;
   property Empty: Boolean
     read pm_GetEmpty;
   property First: Ik2Tag
     read pm_GetFirst;
     {* Первый элемент. }
   property Last: Ik2Tag
     read pm_GetLast;
     {* Последний элемент. }
   property Items[anIndex: Integer]: Ik2Tag
     read pm_GetItems;
     default;
  // Ml3CountHolder
   function pm_GetCount: Integer;
   property Count: Integer
     read pm_GetCount;
     {* Число элементов. }
 end;//Ik2TagListPrim

  Ik2TagList_ForEach_Action = function (const anItem: Ik2Tag;
  anIndex: Integer): Boolean;
   {* Тип подитеративной функции для Ik2TagList.ForEach }

 Ik2TagList = interface(Ik2TagListPrim)
   ['{7AC54659-1B8C-4ADA-800F-F62CB90E5A64}']
   {iterator} function ForEach(anAction: Ik2TagList_ForEach_Action): Integer;
     {* Перебирает элементы списка.

<!> Временно. Надо будет перенести на Ml3List. }
   {iterator} function ForEachF(anAction: Ik2TagList_ForEach_Action): Integer;
     {* Перебирает элементы списка.

<!> Временно. Надо будет перенести на Ml3List. }
 end;//Ik2TagList

function L2Ik2TagListForEachAction(anAction: pointer): Ik2TagList_ForEach_Action;
   {* Функция формирования заглушки для ЛОКАЛЬНОЙ подитеративной функции для Ik2TagList.ForEach }

implementation

uses
  l3Base
  ;

// start class Ik2TagList

function L2Ik2TagListForEachAction(anAction: pointer): Ik2TagList_ForEach_Action;
 {-}
asm
 jmp l3LocalStub
end;//L2Ik2TagListForEachAction

end.