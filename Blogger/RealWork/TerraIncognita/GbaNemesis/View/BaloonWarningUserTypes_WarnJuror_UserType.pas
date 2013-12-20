unit BaloonWarningUserTypes_WarnJuror_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_WarnJuror_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::WarnJuror
//
// Юридическое предупреждение
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
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { Константы для типа формы WarnJuror }
  WarnJurorName = 'WarnJuror';
   { Строковый идентификатор пользовательского типа "Юридическое предупреждение" }
  WarnJuror = TvcmUserType(Fake + 1);
   { Юридическое предупреждение }

type
  Tkw_FormUserType_WarnJuror = class(TtfwInteger)
   {* Слово словаря для типа формы WarnJuror }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_WarnJuror
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_WarnJuror

{$If not defined(NoScripts)}
function Tkw_FormUserType_WarnJuror.GetInteger: Integer;
 {-}
begin
 Result := WarnJuror;
end;//Tkw_FormUserType_WarnJuror.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_WarnJuror
 Tkw_FormUserType_WarnJuror.Register('тип_формы::WarnJuror');
{$IfEnd} //not Admin AND not Monitorings

end.