unit PrimQueryCard_utqcAttributeSearch_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimQueryCard_utqcAttributeSearch_UserType.pas"
// Начат: 27.01.2009 10:40
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimQueryCard::utqcAttributeSearch
//
// Поиск по реквизитам
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
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы utqcAttributeSearch }
  utqcAttributeSearchName = 'utqcAttributeSearch';
   { Строковый идентификатор пользовательского типа "Поиск по реквизитам" }
  utqcAttributeSearch = TvcmUserType(0);
   { Поиск по реквизитам }

type
  Tkw_FormUserType_utqcAttributeSearch = class(TtfwInteger)
   {* Слово словаря для типа формы utqcAttributeSearch }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utqcAttributeSearch
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_utqcAttributeSearch

{$If not defined(NoScripts)}
function Tkw_FormUserType_utqcAttributeSearch.GetInteger: Integer;
 {-}
begin
 Result := utqcAttributeSearch;
end;//Tkw_FormUserType_utqcAttributeSearch.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// Регистрация Tkw_FormUserType_utqcAttributeSearch
 Tkw_FormUserType_utqcAttributeSearch.Register('тип_формы::utqcAttributeSearch');
{$IfEnd} //not Admin

end.