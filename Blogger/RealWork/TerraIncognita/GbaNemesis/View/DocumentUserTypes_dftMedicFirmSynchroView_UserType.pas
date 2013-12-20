unit DocumentUserTypes_dftMedicFirmSynchroView_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftMedicFirmSynchroView_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftMedicFirmSynchroView
//
// Описание фирмы (синхронный просмотр)
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
  DocumentUserTypes_dftMedicFirm_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы dftMedicFirmSynchroView }
  dftMedicFirmSynchroViewName = 'dftMedicFirmSynchroView';
   { Строковый идентификатор пользовательского типа "Описание фирмы (синхронный просмотр)" }
  dftMedicFirmSynchroView = TvcmUserType(dftMedicFirm + 1);
   { Описание фирмы (синхронный просмотр) }

type
  Tkw_FormUserType_dftMedicFirmSynchroView = class(TtfwInteger)
   {* Слово словаря для типа формы dftMedicFirmSynchroView }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftMedicFirmSynchroView
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftMedicFirmSynchroView

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftMedicFirmSynchroView.GetInteger: Integer;
 {-}
begin
 Result := dftMedicFirmSynchroView;
end;//Tkw_FormUserType_dftMedicFirmSynchroView.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_dftMedicFirmSynchroView
 Tkw_FormUserType_dftMedicFirmSynchroView.Register('тип_формы::dftMedicFirmSynchroView');
{$IfEnd} //not Admin AND not Monitorings

end.