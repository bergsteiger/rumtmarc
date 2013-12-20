unit PrimRightEdition_utRightEdition_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Editions/Forms/PrimRightEdition_utRightEdition_UserType.pas"
// Начат: 27.07.2009 11:44
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Пользовательские сервисы::CompareEditions::View::Editions::PrimRightEdition::utRightEdition
//
// Текущая редакция
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
   { Константы для типа формы utRightEdition }
  utRightEditionName = 'utRightEdition';
   { Строковый идентификатор пользовательского типа "Текущая редакция" }
  utRightEdition = TvcmUserType(0);
   { Текущая редакция }

type
  Tkw_FormUserType_utRightEdition = class(TtfwInteger)
   {* Слово словаря для типа формы utRightEdition }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utRightEdition
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utRightEdition

{$If not defined(NoScripts)}
function Tkw_FormUserType_utRightEdition.GetInteger: Integer;
 {-}
begin
 Result := utRightEdition;
end;//Tkw_FormUserType_utRightEdition.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utRightEdition
 Tkw_FormUserType_utRightEdition.Register('тип_формы::utRightEdition');
{$IfEnd} //not Admin AND not Monitorings

end.