unit PrimTreeAttributeSelect_astTaxesPublishSearch_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/PrimTreeAttributeSelect_astTaxesPublishSearch_UserType.pas"
// Начат: 27.01.2009 11:56
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Базовые определения предметной области::SearchLite::View::LiteSearch::PrimTreeAttributeSelect::astTaxesPublishSearch
//
// СМИ по налогам и бухучету
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimTreeAttributeSelect_astNone_UserType,
  PrimTreeAttributeSelect_astFirstLevel_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы astTaxesPublishSearch }
  astTaxesPublishSearchName = 'astTaxesPublishSearch';
   { Строковый идентификатор пользовательского типа "СМИ по налогам и бухучету" }
  astTaxesPublishSearch = TvcmUserType(astFirstLevel + 1);
   { СМИ по налогам и бухучету }

type
  Tkw_FormUserType_astTaxesPublishSearch = class(TtfwInteger)
   {* Слово словаря для типа формы astTaxesPublishSearch }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_astTaxesPublishSearch

implementation

// start class Tkw_FormUserType_astTaxesPublishSearch

{$If not defined(NoScripts)}
function Tkw_FormUserType_astTaxesPublishSearch.GetInteger: Integer;
 {-}
begin
 Result := astTaxesPublishSearch;
end;//Tkw_FormUserType_astTaxesPublishSearch.GetInteger
{$IfEnd} //not NoScripts

initialization
// Регистрация Tkw_FormUserType_astTaxesPublishSearch
 Tkw_FormUserType_astTaxesPublishSearch.Register('тип_формы::astTaxesPublishSearch');

end.