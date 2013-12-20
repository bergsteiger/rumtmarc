unit PrimQueryCard_utqcInpharmSearch_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimQueryCard_utqcInpharmSearch_UserType.pas"
// Начат: 27.01.2009 10:40
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimQueryCard::utqcInpharmSearch
//
// Поиск лекарственного средства
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
  PrimQueryCard_utqcSendConsultation_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы utqcInpharmSearch }
  utqcInpharmSearchName = 'utqcInpharmSearch';
   { Строковый идентификатор пользовательского типа "Поиск лекарственного средства" }
  utqcInpharmSearch = TvcmUserType(utqcSendConsultation + 1);
   { Поиск лекарственного средства }

type
  Tkw_FormUserType_utqcInpharmSearch = class(TtfwInteger)
   {* Слово словаря для типа формы utqcInpharmSearch }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utqcInpharmSearch
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_utqcInpharmSearch

{$If not defined(NoScripts)}
function Tkw_FormUserType_utqcInpharmSearch.GetInteger: Integer;
 {-}
begin
 Result := utqcInpharmSearch;
end;//Tkw_FormUserType_utqcInpharmSearch.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// Регистрация Tkw_FormUserType_utqcInpharmSearch
 Tkw_FormUserType_utqcInpharmSearch.Register('тип_формы::utqcInpharmSearch');
{$IfEnd} //not Admin

end.