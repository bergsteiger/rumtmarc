unit PrimSaveLoadUserTypes_slqtLegislationReview_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimSaveLoadUserTypes_slqtLegislationReview_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimSaveLoadUserTypes::slqtLegislationReview
//
// Поиск: ПРАЙМ. Обзор изменений законодательства
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
  PrimSaveLoadUserTypes_slqtFilters_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы slqtLegislationReview }
  slqtLegislationReviewName = 'slqtLegislationReview';
   { Строковый идентификатор пользовательского типа "Поиск: ПРАЙМ. Обзор изменений законодательства" }
  slqtLegislationReview = TvcmUserType(slqtFilters + 1);
   { Поиск: ПРАЙМ. Обзор изменений законодательства }

type
  Tkw_FormUserType_slqtLegislationReview = class(TtfwInteger)
   {* Слово словаря для типа формы slqtLegislationReview }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_slqtLegislationReview
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_slqtLegislationReview

{$If not defined(NoScripts)}
function Tkw_FormUserType_slqtLegislationReview.GetInteger: Integer;
 {-}
begin
 Result := slqtLegislationReview;
end;//Tkw_FormUserType_slqtLegislationReview.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// Регистрация Tkw_FormUserType_slqtLegislationReview
 Tkw_FormUserType_slqtLegislationReview.Register('тип_формы::slqtLegislationReview');
{$IfEnd} //not Admin

end.