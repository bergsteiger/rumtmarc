unit PrimMedicListSynchroView_mlsfMedicFirm_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Inpharm/Forms/PrimMedicListSynchroView_mlsfMedicFirm_UserType.pas"
// Начат: 27.01.2009 13:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Встроенные продукты::Inpharm::View::Inpharm::PrimMedicListSynchroView::mlsfMedicFirm
//
// Описание
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
  PrimMedicListSynchroView_mlsfDrugList_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы mlsfMedicFirm }
  mlsfMedicFirmName = 'mlsfMedicFirm';
   { Строковый идентификатор пользовательского типа "Описание" }
  mlsfMedicFirm = TvcmUserType(mlsfDrugList + 1);
   { Описание }

type
  Tkw_FormUserType_mlsfMedicFirm = class(TtfwInteger)
   {* Слово словаря для типа формы mlsfMedicFirm }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_mlsfMedicFirm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_mlsfMedicFirm

{$If not defined(NoScripts)}
function Tkw_FormUserType_mlsfMedicFirm.GetInteger: Integer;
 {-}
begin
 Result := mlsfMedicFirm;
end;//Tkw_FormUserType_mlsfMedicFirm.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_mlsfMedicFirm
 Tkw_FormUserType_mlsfMedicFirm.Register('тип_формы::mlsfMedicFirm');
{$IfEnd} //not Admin AND not Monitorings

end.