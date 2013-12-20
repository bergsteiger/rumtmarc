unit WarningUserTypes_Warning_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/WarningUserTypes_Warning_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::WarningUserTypes::Warning
//
// Предупреждение
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
   { Константы для типа формы Warning }
  WarningName = 'Warning';
   { Строковый идентификатор пользовательского типа "Предупреждение" }
  Warning = TvcmUserType(0);
   { Предупреждение }

type
  Tkw_FormUserType_Warning = class(TtfwInteger)
   {* Слово словаря для типа формы Warning }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_Warning
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_Warning

{$If not defined(NoScripts)}
function Tkw_FormUserType_Warning.GetInteger: Integer;
 {-}
begin
 Result := Warning;
end;//Tkw_FormUserType_Warning.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_Warning
 Tkw_FormUserType_Warning.Register('тип_формы::Warning');
{$IfEnd} //not Admin AND not Monitorings

end.