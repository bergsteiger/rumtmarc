unit MemoryUsage_ut_MemoryUsage_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/MemoryUsage_ut_MemoryUsage_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Оболочка Без Прецедентов::F1 Without Usecases::View::Main::MemoryUsage::ut_MemoryUsage
//
// MemoryUsage
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
   { Константы для типа формы ut_MemoryUsage }
  ut_MemoryUsageName = 'ut_MemoryUsage';
   { Строковый идентификатор пользовательского типа "MemoryUsage" }
  ut_MemoryUsage = TvcmUserType(0);
   { MemoryUsage }

type
  Tkw_FormUserType_ut_MemoryUsage = class(TtfwInteger)
   {* Слово словаря для типа формы ut_MemoryUsage }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_ut_MemoryUsage
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_MemoryUsage

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_MemoryUsage.GetInteger: Integer;
 {-}
begin
 Result := ut_MemoryUsage;
end;//Tkw_FormUserType_ut_MemoryUsage.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_ut_MemoryUsage
 Tkw_FormUserType_ut_MemoryUsage.Register('тип_формы::ut_MemoryUsage');
{$IfEnd} //not Admin AND not Monitorings

end.