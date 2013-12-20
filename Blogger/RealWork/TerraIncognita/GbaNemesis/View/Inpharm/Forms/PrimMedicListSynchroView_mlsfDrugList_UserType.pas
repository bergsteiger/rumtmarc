unit PrimMedicListSynchroView_mlsfDrugList_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Inpharm/Forms/PrimMedicListSynchroView_mlsfDrugList_UserType.pas"
// Начат: 27.01.2009 13:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Встроенные продукты::Inpharm::View::Inpharm::PrimMedicListSynchroView::mlsfDrugList
//
// Синхронный просмотр
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
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы mlsfDrugList }
  mlsfDrugListName = 'mlsfDrugList';
   { Строковый идентификатор пользовательского типа "Синхронный просмотр" }
  mlsfDrugList = TvcmUserType(0);
   { Синхронный просмотр }

type
  Tkw_FormUserType_mlsfDrugList = class(TtfwInteger)
   {* Слово словаря для типа формы mlsfDrugList }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_mlsfDrugList
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_mlsfDrugList

{$If not defined(NoScripts)}
function Tkw_FormUserType_mlsfDrugList.GetInteger: Integer;
 {-}
begin
 Result := mlsfDrugList;
end;//Tkw_FormUserType_mlsfDrugList.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_mlsfDrugList
 Tkw_FormUserType_mlsfDrugList.Register('тип_формы::mlsfDrugList');
{$IfEnd} //not Admin AND not Monitorings

end.