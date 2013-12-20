unit PrimBaseSearch_BaseSearch_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaseSearch/Forms/PrimBaseSearch_BaseSearch_UserType.pas"
// Начат: 21.09.2009 18:43
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Основные прецеденты::BaseSearch::View::BaseSearch$Module::PrimBaseSearch::BaseSearch
//
// Базовый поиск
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
   { Константы для типа формы BaseSearch }
  BaseSearchName = 'BaseSearch';
   { Строковый идентификатор пользовательского типа "Базовый поиск" }
  BaseSearch = TvcmUserType(0);
   { Базовый поиск }

type
  Tkw_FormUserType_BaseSearch = class(TtfwInteger)
   {* Слово словаря для типа формы BaseSearch }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_BaseSearch
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_BaseSearch

{$If not defined(NoScripts)}
function Tkw_FormUserType_BaseSearch.GetInteger: Integer;
 {-}
begin
 Result := BaseSearch;
end;//Tkw_FormUserType_BaseSearch.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_BaseSearch
 Tkw_FormUserType_BaseSearch.Register('тип_формы::BaseSearch');
{$IfEnd} //not Admin AND not Monitorings

end.