unit RememberPassword_ut_RememberPassword_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/RememberPassword_ut_RememberPassword_UserType.pas"
// Начат: 24.08.2009 20:35
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Common::View::Common::PrimF1Common::RememberPassword::ut_RememberPassword
//
// RememberPassword
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
    { Константы для типа формы ut_RememberPassword }
   ut_RememberPasswordName = 'ut_RememberPassword';
    { Строковый идентификатор пользовательского типа "RememberPassword" }
   ut_RememberPassword = TvcmUserType(0);
    { RememberPassword }

type
   Tkw_FormUserType_ut_RememberPassword = class(TtfwInteger)
    {* Слово словаря для типа формы ut_RememberPassword }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_RememberPassword
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_RememberPassword

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_RememberPassword.GetInteger: Integer;
 {-}
begin
 Result := ut_RememberPassword;
end;//Tkw_FormUserType_ut_RememberPassword.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_ut_RememberPassword
 Tkw_FormUserType_ut_RememberPassword.Register('тип_формы::ut_RememberPassword');
{$IfEnd} //not Admin AND not Monitorings

end.