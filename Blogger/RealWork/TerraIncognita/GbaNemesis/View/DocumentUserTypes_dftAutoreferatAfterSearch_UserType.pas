unit DocumentUserTypes_dftAutoreferatAfterSearch_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftAutoreferatAfterSearch_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftAutoreferatAfterSearch
//
// ПРАЙМ. Обзор изменений законодательства
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
  ,
  DocumentUserTypes_dftAnnotation_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы dftAutoreferatAfterSearch }
  dftAutoreferatAfterSearchName = 'dftAutoreferatAfterSearch';
   { Строковый идентификатор пользовательского типа "ПРАЙМ. Обзор изменений законодательства" }
  dftAutoreferatAfterSearch = TvcmUserType(dftAnnotation + 1);
   { ПРАЙМ. Обзор изменений законодательства }

type
  Tkw_FormUserType_dftAutoreferatAfterSearch = class(TtfwInteger)
   {* Слово словаря для типа формы dftAutoreferatAfterSearch }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftAutoreferatAfterSearch
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftAutoreferatAfterSearch

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftAutoreferatAfterSearch.GetInteger: Integer;
 {-}
begin
 Result := dftAutoreferatAfterSearch;
end;//Tkw_FormUserType_dftAutoreferatAfterSearch.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_dftAutoreferatAfterSearch
 Tkw_FormUserType_dftAutoreferatAfterSearch.Register('тип_формы::dftAutoreferatAfterSearch');
{$IfEnd} //not Admin AND not Monitorings

end.