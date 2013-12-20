unit DocumentUserTypes_dftMedicFirm_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftMedicFirm_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftMedicFirm
//
// Описание фирмы
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
  DocumentUserTypes_dftDrug_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы dftMedicFirm }
  dftMedicFirmName = 'dftMedicFirm';
   { Строковый идентификатор пользовательского типа "Описание фирмы" }
  dftMedicFirm = TvcmUserType(dftDrug + 1);
   { Описание фирмы }

type
  Tkw_FormUserType_dftMedicFirm = class(TtfwInteger)
   {* Слово словаря для типа формы dftMedicFirm }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftMedicFirm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftMedicFirm

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftMedicFirm.GetInteger: Integer;
 {-}
begin
 Result := dftMedicFirm;
end;//Tkw_FormUserType_dftMedicFirm.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_dftMedicFirm
 Tkw_FormUserType_dftMedicFirm.Register('тип_формы::dftMedicFirm');
{$IfEnd} //not Admin AND not Monitorings

end.