unit DocumentUserTypes_dftDrugSynchroView_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftDrugSynchroView_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftDrugSynchroView
//
// Описание препарата (синхронный просмотр)
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
  DocumentUserTypes_dftMedicFirmSynchroView_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы dftDrugSynchroView }
  dftDrugSynchroViewName = 'dftDrugSynchroView';
   { Строковый идентификатор пользовательского типа "Описание препарата (синхронный просмотр)" }
  dftDrugSynchroView = TvcmUserType(dftMedicFirmSynchroView + 1);
   { Описание препарата (синхронный просмотр) }

type
  Tkw_FormUserType_dftDrugSynchroView = class(TtfwInteger)
   {* Слово словаря для типа формы dftDrugSynchroView }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftDrugSynchroView
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftDrugSynchroView

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftDrugSynchroView.GetInteger: Integer;
 {-}
begin
 Result := dftDrugSynchroView;
end;//Tkw_FormUserType_dftDrugSynchroView.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_dftDrugSynchroView
 Tkw_FormUserType_dftDrugSynchroView.Register('тип_формы::dftDrugSynchroView');
{$IfEnd} //not Admin AND not Monitorings

end.