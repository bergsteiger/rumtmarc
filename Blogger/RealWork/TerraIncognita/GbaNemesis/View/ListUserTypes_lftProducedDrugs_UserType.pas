unit ListUserTypes_lftProducedDrugs_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftProducedDrugs_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftProducedDrugs
//
// Выпускаемые препараты
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
  ListUserTypes_lftDrugInternationalNameSynonyms_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы lftProducedDrugs }
  lftProducedDrugsName = 'lftProducedDrugs';
   { Строковый идентификатор пользовательского типа "Выпускаемые препараты" }
  lftProducedDrugs = TvcmUserType(lftDrugInternationalNameSynonyms + 1);
   { Выпускаемые препараты }

type
  Tkw_FormUserType_lftProducedDrugs = class(TtfwInteger)
   {* Слово словаря для типа формы lftProducedDrugs }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftProducedDrugs
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftProducedDrugs

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftProducedDrugs.GetInteger: Integer;
 {-}
begin
 Result := lftProducedDrugs;
end;//Tkw_FormUserType_lftProducedDrugs.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_lftProducedDrugs
 Tkw_FormUserType_lftProducedDrugs.Register('тип_формы::lftProducedDrugs');
{$IfEnd} //not Admin AND not Monitorings

end.