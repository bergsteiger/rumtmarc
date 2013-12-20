unit RegistrationForm_ut_RegistrationForm_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/RegistrationForm_ut_RegistrationForm_UserType.pas"
// Начат: 24.08.2009 20:35
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Common::View::Common::PrimF1Common::RegistrationForm::ut_RegistrationForm
//
// RegistrationForm
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
    { Константы для типа формы ut_RegistrationForm }
   ut_RegistrationFormName = 'ut_RegistrationForm';
    { Строковый идентификатор пользовательского типа "RegistrationForm" }
   ut_RegistrationForm = TvcmUserType(0);
    { RegistrationForm }

type
   Tkw_FormUserType_ut_RegistrationForm = class(TtfwInteger)
    {* Слово словаря для типа формы ut_RegistrationForm }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_RegistrationForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_RegistrationForm

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_RegistrationForm.GetInteger: Integer;
 {-}
begin
 Result := ut_RegistrationForm;
end;//Tkw_FormUserType_ut_RegistrationForm.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_ut_RegistrationForm
 Tkw_FormUserType_ut_RegistrationForm.Register('тип_формы::ut_RegistrationForm');
{$IfEnd} //not Admin AND not Monitorings

end.