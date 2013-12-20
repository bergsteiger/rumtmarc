unit l3_CBaseRefCacheableList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Модуль: "w:/common/components/rtl/Garant/L3/l3_CBaseRefCacheableList.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::l3CoreObjects::Tl3_CBaseRefCacheableList
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3_CBaseRefList
  ;

type
 Tl3_CBaseRefCacheableList = class(Tl3_CBaseRefList)
 protected
 // overridden protected methods
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; override;
     {* функция класса, определяющая могут ли объекты данного класса попадать в кэш повторного использования. }
   {$IfEnd} //not DesignTimeLibrary
 end;//Tl3_CBaseRefCacheableList

implementation

// start class Tl3_CBaseRefCacheableList

{$If not defined(DesignTimeLibrary)}
class function Tl3_CBaseRefCacheableList.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_47BD9E7E0188_var*
//#UC END# *47A6FEE600FC_47BD9E7E0188_var*
begin
//#UC START# *47A6FEE600FC_47BD9E7E0188_impl*
 Result := true;
//#UC END# *47A6FEE600FC_47BD9E7E0188_impl*
end;//Tl3_CBaseRefCacheableList.IsCacheable
{$IfEnd} //not DesignTimeLibrary

end.