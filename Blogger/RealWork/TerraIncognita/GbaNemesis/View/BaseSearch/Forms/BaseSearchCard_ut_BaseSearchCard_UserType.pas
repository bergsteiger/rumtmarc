unit BaseSearchCard_ut_BaseSearchCard_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaseSearch/Forms/BaseSearchCard_ut_BaseSearchCard_UserType.pas"
// Начат: 21.09.2009 20:01
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Основные прецеденты::BaseSearch::View::BaseSearch$Module::BaseSearch::BaseSearchCard::ut_BaseSearchCard
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
    { Константы для типа формы ut_BaseSearchCard }
   ut_BaseSearchCardName = 'ut_BaseSearchCard';
    { Строковый идентификатор пользовательского типа "Базовый поиск" }
   ut_BaseSearchCard = TvcmUserType(0);
    { Базовый поиск }

type
   Tkw_FormUserType_ut_BaseSearchCard = class(TtfwInteger)
    {* Слово словаря для типа формы ut_BaseSearchCard }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_BaseSearchCard
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_BaseSearchCard

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_BaseSearchCard.GetInteger: Integer;
 {-}
begin
 Result := ut_BaseSearchCard;
end;//Tkw_FormUserType_ut_BaseSearchCard.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_ut_BaseSearchCard
 Tkw_FormUserType_ut_BaseSearchCard.Register('тип_формы::ut_BaseSearchCard');
{$IfEnd} //not Admin AND not Monitorings

end.