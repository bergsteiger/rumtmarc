unit BaloonWarningUserTypes_remListFiltered_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_remListFiltered_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::remListFiltered
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
  BaloonWarningUserTypes_remListModified_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { Константы для типа формы remListFiltered }
  remListFilteredName = 'remListFiltered';
   { Строковый идентификатор пользовательского типа "" }
  remListFiltered = TvcmUserType(remListModified + 1);

type
  Tkw_FormUserType_remListFiltered = class(TtfwInteger)
   {* Слово словаря для типа формы remListFiltered }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_remListFiltered
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_remListFiltered

{$If not defined(NoScripts)}
function Tkw_FormUserType_remListFiltered.GetInteger: Integer;
 {-}
begin
 Result := remListFiltered;
end;//Tkw_FormUserType_remListFiltered.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_remListFiltered
 Tkw_FormUserType_remListFiltered.Register('тип_формы::remListFiltered');
{$IfEnd} //not Admin AND not Monitorings

end.