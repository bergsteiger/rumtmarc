unit ListUserTypes_lftDrugInternationalNameSynonyms_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftDrugInternationalNameSynonyms_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftDrugInternationalNameSynonyms
//
// Синонимы по международному названию
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
  ListUserTypes_lftDrugList_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы lftDrugInternationalNameSynonyms }
  lftDrugInternationalNameSynonymsName = 'lftDrugInternationalNameSynonyms';
   { Строковый идентификатор пользовательского типа "Синонимы по международному названию" }
  lftDrugInternationalNameSynonyms = TvcmUserType(lftDrugList + 1);
   { Синонимы по международному названию }

type
  Tkw_FormUserType_lftDrugInternationalNameSynonyms = class(TtfwInteger)
   {* Слово словаря для типа формы lftDrugInternationalNameSynonyms }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftDrugInternationalNameSynonyms
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftDrugInternationalNameSynonyms

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftDrugInternationalNameSynonyms.GetInteger: Integer;
 {-}
begin
 Result := lftDrugInternationalNameSynonyms;
end;//Tkw_FormUserType_lftDrugInternationalNameSynonyms.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_lftDrugInternationalNameSynonyms
 Tkw_FormUserType_lftDrugInternationalNameSynonyms.Register('тип_формы::lftDrugInternationalNameSynonyms');
{$IfEnd} //not Admin AND not Monitorings

end.