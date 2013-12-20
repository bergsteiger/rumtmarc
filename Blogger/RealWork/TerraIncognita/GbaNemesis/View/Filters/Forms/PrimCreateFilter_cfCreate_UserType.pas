unit PrimCreateFilter_cfCreate_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Filters/Forms/PrimCreateFilter_cfCreate_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Основные прецеденты::Filters::View::Filters::PrimCreateFilter::cfCreate
//
// Создать фильтр
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
   { Константы для типа формы cfCreate }
  cfCreateName = 'cfCreate';
   { Строковый идентификатор пользовательского типа "Создать фильтр" }
  cfCreate = TvcmUserType(0);
   { Создать фильтр }

type
  Tkw_FormUserType_cfCreate = class(TtfwInteger)
   {* Слово словаря для типа формы cfCreate }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_cfCreate
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_cfCreate

{$If not defined(NoScripts)}
function Tkw_FormUserType_cfCreate.GetInteger: Integer;
 {-}
begin
 Result := cfCreate;
end;//Tkw_FormUserType_cfCreate.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_cfCreate
 Tkw_FormUserType_cfCreate.Register('тип_формы::cfCreate');
{$IfEnd} //not Admin AND not Monitorings

end.