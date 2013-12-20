unit PrimQueryCard_utqcPostingOrder_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimQueryCard_utqcPostingOrder_UserType.pas"
// Начат: 27.01.2009 10:40
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimQueryCard::utqcPostingOrder
//
// Создание индивидуальной ленты
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
  PrimQueryCard_utqcAttributeSearch_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы utqcPostingOrder }
  utqcPostingOrderName = 'utqcPostingOrder';
   { Строковый идентификатор пользовательского типа "Создание индивидуальной ленты" }
  utqcPostingOrder = TvcmUserType(utqcAttributeSearch + 1);
   { Создание индивидуальной ленты }

type
  Tkw_FormUserType_utqcPostingOrder = class(TtfwInteger)
   {* Слово словаря для типа формы utqcPostingOrder }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utqcPostingOrder
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_utqcPostingOrder

{$If not defined(NoScripts)}
function Tkw_FormUserType_utqcPostingOrder.GetInteger: Integer;
 {-}
begin
 Result := utqcPostingOrder;
end;//Tkw_FormUserType_utqcPostingOrder.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// Регистрация Tkw_FormUserType_utqcPostingOrder
 Tkw_FormUserType_utqcPostingOrder.Register('тип_формы::utqcPostingOrder');
{$IfEnd} //not Admin

end.