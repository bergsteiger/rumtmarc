unit FiltersUserTypes_utFilters_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/FiltersUserTypes_utFilters_UserType.pas"
// Начат: 16.03.2011 18:08
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Common::View::Common::FiltersUserTypes::utFilters
//
// Фильтры
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы utFilters }
  utFiltersName = 'utFilters';
   { Строковый идентификатор пользовательского типа "Фильтры" }
  utFilters = TvcmUserType(0);
   { Фильтры }

type
  Tkw_FormUserType_utFilters = class(TtfwInteger)
   {* Слово словаря для типа формы utFilters }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utFilters
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utFilters

{$If not defined(NoScripts)}
function Tkw_FormUserType_utFilters.GetInteger: Integer;
 {-}
begin
 Result := utFilters;
end;//Tkw_FormUserType_utFilters.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utFilters
 Tkw_FormUserType_utFilters.Register('тип_формы::utFilters');
{$IfEnd} //not Admin AND not Monitorings

end.