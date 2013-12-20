unit PrimQueryCard_utqcLegislationReview_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimQueryCard_utqcLegislationReview_UserType.pas"
// Начат: 27.01.2009 10:40
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimQueryCard::utqcLegislationReview
//
// Обзор изменений законодательства
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
  PrimQueryCard_utqcPostingOrder_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы utqcLegislationReview }
  utqcLegislationReviewName = 'utqcLegislationReview';
   { Строковый идентификатор пользовательского типа "Обзор изменений законодательства" }
  utqcLegislationReview = TvcmUserType(utqcPostingOrder + 1);
   { Обзор изменений законодательства }

type
  Tkw_FormUserType_utqcLegislationReview = class(TtfwInteger)
   {* Слово словаря для типа формы utqcLegislationReview }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utqcLegislationReview
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_utqcLegislationReview

{$If not defined(NoScripts)}
function Tkw_FormUserType_utqcLegislationReview.GetInteger: Integer;
 {-}
begin
 Result := utqcLegislationReview;
end;//Tkw_FormUserType_utqcLegislationReview.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// Регистрация Tkw_FormUserType_utqcLegislationReview
 Tkw_FormUserType_utqcLegislationReview.Register('тип_формы::utqcLegislationReview');
{$IfEnd} //not Admin

end.