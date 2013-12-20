unit ListUserTypes_lftProducedDrugsSynchroForm_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftProducedDrugsSynchroForm_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftProducedDrugsSynchroForm
//
// Синхронный просмотр (выпускаемые препараты)
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
  ListUserTypes_lftProducedDrugs_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы lftProducedDrugsSynchroForm }
  lftProducedDrugsSynchroFormName = 'lftProducedDrugsSynchroForm';
   { Строковый идентификатор пользовательского типа "Синхронный просмотр (выпускаемые препараты)" }
  lftProducedDrugsSynchroForm = TvcmUserType(lftProducedDrugs + 1);
   { Синхронный просмотр (выпускаемые препараты) }

type
  Tkw_FormUserType_lftProducedDrugsSynchroForm = class(TtfwInteger)
   {* Слово словаря для типа формы lftProducedDrugsSynchroForm }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftProducedDrugsSynchroForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftProducedDrugsSynchroForm

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftProducedDrugsSynchroForm.GetInteger: Integer;
 {-}
begin
 Result := lftProducedDrugsSynchroForm;
end;//Tkw_FormUserType_lftProducedDrugsSynchroForm.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_lftProducedDrugsSynchroForm
 Tkw_FormUserType_lftProducedDrugsSynchroForm.Register('тип_формы::lftProducedDrugsSynchroForm');
{$IfEnd} //not Admin AND not Monitorings

end.