unit ListUserTypes_lftDrugInternationalNameSynonymsSynchroForm_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftDrugInternationalNameSynonymsSynchroForm_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftDrugInternationalNameSynonymsSynchroForm
//
// Синхронный просмотр (синонимы по международному названию)
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
  ListUserTypes_lftProducedDrugsSynchroForm_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы lftDrugInternationalNameSynonymsSynchroForm }
  lftDrugInternationalNameSynonymsSynchroFormName = 'lftDrugInternationalNameSynonymsSynchroForm';
   { Строковый идентификатор пользовательского типа "Синхронный просмотр (синонимы по международному названию)" }
  lftDrugInternationalNameSynonymsSynchroForm = TvcmUserType(lftProducedDrugsSynchroForm + 1);
   { Синхронный просмотр (синонимы по международному названию) }

type
  Tkw_FormUserType_lftDrugInternationalNameSynonymsSynchroForm = class(TtfwInteger)
   {* Слово словаря для типа формы lftDrugInternationalNameSynonymsSynchroForm }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftDrugInternationalNameSynonymsSynchroForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftDrugInternationalNameSynonymsSynchroForm

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftDrugInternationalNameSynonymsSynchroForm.GetInteger: Integer;
 {-}
begin
 Result := lftDrugInternationalNameSynonymsSynchroForm;
end;//Tkw_FormUserType_lftDrugInternationalNameSynonymsSynchroForm.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_lftDrugInternationalNameSynonymsSynchroForm
 Tkw_FormUserType_lftDrugInternationalNameSynonymsSynchroForm.Register('тип_формы::lftDrugInternationalNameSynonymsSynchroForm');
{$IfEnd} //not Admin AND not Monitorings

end.