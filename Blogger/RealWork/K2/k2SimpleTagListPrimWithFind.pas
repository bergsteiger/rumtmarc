unit k2SimpleTagListPrimWithFind;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2SimpleTagListPrimWithFind.pas"
// Начат: 16.07.2009 17:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2CoreObjects::Tk2SimpleTagListPrimWithFind
//
// Списог тегов с заранее определённым типом, имеющий ссылку на родителя и могущий иметь не более
// 32 (включительно) атрибутов
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2SimpleTagListPrim,
  l3Types
  ;

type
 _k2TagByIntegerSearcher_Parent_ = Tk2SimpleTagListPrim;
 {$Include ..\K2\k2TagByIntegerSearcher.imp.pas}
 Tk2SimpleTagListPrimWithFind = class(_k2TagByIntegerSearcher_)
  {* Списог тегов с заранее определённым типом, имеющий ссылку на родителя и могущий иметь не более 32 (включительно) атрибутов }
 end;//Tk2SimpleTagListPrimWithFind

implementation

type _Instance_R_ = Tk2SimpleTagListPrimWithFind;

{$Include ..\K2\k2TagByIntegerSearcher.imp.pas}

end.