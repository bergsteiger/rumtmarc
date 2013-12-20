unit ListUserTypes_lftRCToPart_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftRCToPart_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftRCToPart
//
// Ссылки из фрагмента/Ссылки на фрагмент
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
  ListUserTypes_lftRespondent_UserType,
  ListUserTypes_lftSynchroView_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы lftRCToPart }
  lftRCToPartName = 'lftRCToPart';
   { Строковый идентификатор пользовательского типа "Ссылки из фрагмента/Ссылки на фрагмент" }
  lftRCToPart = TvcmUserType(lftSynchroView + 1);
   { Ссылки из фрагмента/Ссылки на фрагмент }

type
  Tkw_FormUserType_lftRCToPart = class(TtfwInteger)
   {* Слово словаря для типа формы lftRCToPart }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftRCToPart
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftRCToPart

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftRCToPart.GetInteger: Integer;
 {-}
begin
 Result := lftRCToPart;
end;//Tkw_FormUserType_lftRCToPart.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_lftRCToPart
 Tkw_FormUserType_lftRCToPart.Register('тип_формы::lftRCToPart');
{$IfEnd} //not Admin AND not Monitorings

end.