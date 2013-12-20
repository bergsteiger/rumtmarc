unit PrimSaveLoadUserTypes_slqtFilters_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimSaveLoadUserTypes_slqtFilters_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimSaveLoadUserTypes::slqtFilters
//
// Карточка Фильтров
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimSaveLoadUserTypes_slqtPublishSource_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы slqtFilters }
  slqtFiltersName = 'slqtFilters';
   { Строковый идентификатор пользовательского типа "Карточка Фильтров" }
  slqtFilters = TvcmUserType(slqtPublishSource + 1);
   { Карточка Фильтров }

type
  Tkw_FormUserType_slqtFilters = class(TtfwInteger)
   {* Слово словаря для типа формы slqtFilters }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_slqtFilters
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_slqtFilters

{$If not defined(NoScripts)}
function Tkw_FormUserType_slqtFilters.GetInteger: Integer;
 {-}
begin
 Result := slqtFilters;
end;//Tkw_FormUserType_slqtFilters.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// Регистрация Tkw_FormUserType_slqtFilters
 Tkw_FormUserType_slqtFilters.Register('тип_формы::slqtFilters');
{$IfEnd} //not Admin

end.