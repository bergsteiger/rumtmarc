unit PrimMedicFirmList_mflMain_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Inpharm/Forms/PrimMedicFirmList_mflMain_UserType.pas"
// Начат: 27.01.2009 13:42
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Встроенные продукты::Inpharm::View::Inpharm::PrimMedicFirmList::mflMain
//
// Фармацевтические фирмы (полный список)
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
   { Константы для типа формы mflMain }
  mflMainName = 'mflMain';
   { Строковый идентификатор пользовательского типа "Фармацевтические фирмы (полный список)" }
  mflMain = TvcmUserType(0);
   { Фармацевтические фирмы (полный список) }

type
  Tkw_FormUserType_mflMain = class(TtfwInteger)
   {* Слово словаря для типа формы mflMain }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_mflMain
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_mflMain

{$If not defined(NoScripts)}
function Tkw_FormUserType_mflMain.GetInteger: Integer;
 {-}
begin
 Result := mflMain;
end;//Tkw_FormUserType_mflMain.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_mflMain
 Tkw_FormUserType_mflMain.Register('тип_формы::mflMain');
{$IfEnd} //not Admin AND not Monitorings

end.