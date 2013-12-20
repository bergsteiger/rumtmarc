unit l3NCObjectRefList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/l3NCObjectRefList.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::l3CoreObjects::Tl3NCObjectRefList
//
// Некешируемый список ссылок на объекты.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3ObjectRefList1
  ;

type
 Tl3NCObjectRefList = class(Tl3ObjectRefList1)
  {* Некешируемый список ссылок на объекты. }
 protected
 // overridden protected methods
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; override;
     {* функция класса, определяющая могут ли объекты данного класса попадать в кэш повторного использования. }
   {$IfEnd} //not DesignTimeLibrary
 end;//Tl3NCObjectRefList

implementation

// start class Tl3NCObjectRefList

{$If not defined(DesignTimeLibrary)}
class function Tl3NCObjectRefList.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_4773DB08020B_var*
//#UC END# *47A6FEE600FC_4773DB08020B_var*
begin
//#UC START# *47A6FEE600FC_4773DB08020B_impl*
 Result := false;
//#UC END# *47A6FEE600FC_4773DB08020B_impl*
end;//Tl3NCObjectRefList.IsCacheable
{$IfEnd} //not DesignTimeLibrary

end.