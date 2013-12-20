unit ForbidAutoregistration_ut_ForbidAutoregistration_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/ForbidAutoregistration_ut_ForbidAutoregistration_UserType.pas"
// Начат: 07.09.2009 18:00
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Администратор::Admin::View::Admin::Admin::ForbidAutoregistration::ut_ForbidAutoregistration
//
// Запретить авторегистрацию
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Admin)}
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
    { Константы для типа формы ut_ForbidAutoregistration }
   ut_ForbidAutoregistrationName = 'ut_ForbidAutoregistration';
    { Строковый идентификатор пользовательского типа "Запретить авторегистрацию" }
   ut_ForbidAutoregistration = TvcmUserType(0);
    { Запретить авторегистрацию }

type
   Tkw_FormUserType_ut_ForbidAutoregistration = class(TtfwInteger)
    {* Слово словаря для типа формы ut_ForbidAutoregistration }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_ForbidAutoregistration
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
// start class Tkw_FormUserType_ut_ForbidAutoregistration

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_ForbidAutoregistration.GetInteger: Integer;
 {-}
begin
 Result := ut_ForbidAutoregistration;
end;//Tkw_FormUserType_ut_ForbidAutoregistration.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// Регистрация Tkw_FormUserType_ut_ForbidAutoregistration
 Tkw_FormUserType_ut_ForbidAutoregistration.Register('тип_формы::ut_ForbidAutoregistration');
{$IfEnd} //Admin

end.