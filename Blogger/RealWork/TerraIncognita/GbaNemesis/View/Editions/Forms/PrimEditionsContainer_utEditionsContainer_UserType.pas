unit PrimEditionsContainer_utEditionsContainer_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Editions/Forms/PrimEditionsContainer_utEditionsContainer_UserType.pas"
// Начат: 28.07.2009 13:12
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Пользовательские сервисы::CompareEditions::View::Editions::PrimEditionsContainer::utEditionsContainer
//
// Сравнение редакций документа
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
   { Константы для типа формы utEditionsContainer }
  utEditionsContainerName = 'utEditionsContainer';
   { Строковый идентификатор пользовательского типа "Сравнение редакций документа" }
  utEditionsContainer = TvcmUserType(0);
   { Сравнение редакций документа }

type
  Tkw_FormUserType_utEditionsContainer = class(TtfwInteger)
   {* Слово словаря для типа формы utEditionsContainer }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utEditionsContainer
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utEditionsContainer

{$If not defined(NoScripts)}
function Tkw_FormUserType_utEditionsContainer.GetInteger: Integer;
 {-}
begin
 Result := utEditionsContainer;
end;//Tkw_FormUserType_utEditionsContainer.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utEditionsContainer
 Tkw_FormUserType_utEditionsContainer.Register('тип_формы::utEditionsContainer');
{$IfEnd} //not Admin AND not Monitorings

end.