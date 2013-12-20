unit PrimQueryCard_utqcSendConsultation_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimQueryCard_utqcSendConsultation_UserType.pas"
// Начат: 27.01.2009 10:40
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimQueryCard::utqcSendConsultation
//
// Правовая поддержка онлайн
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
  PrimQueryCard_utqcLegislationReview_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы utqcSendConsultation }
  utqcSendConsultationName = 'utqcSendConsultation';
   { Строковый идентификатор пользовательского типа "Правовая поддержка онлайн" }
  utqcSendConsultation = TvcmUserType(utqcLegislationReview + 1);
   { Правовая поддержка онлайн }

type
  Tkw_FormUserType_utqcSendConsultation = class(TtfwInteger)
   {* Слово словаря для типа формы utqcSendConsultation }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utqcSendConsultation
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_utqcSendConsultation

{$If not defined(NoScripts)}
function Tkw_FormUserType_utqcSendConsultation.GetInteger: Integer;
 {-}
begin
 Result := utqcSendConsultation;
end;//Tkw_FormUserType_utqcSendConsultation.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// Регистрация Tkw_FormUserType_utqcSendConsultation
 Tkw_FormUserType_utqcSendConsultation.Register('тип_формы::utqcSendConsultation');
{$IfEnd} //not Admin

end.