unit PrimUserProperty_admUseProperties_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimUserProperty_admUseProperties_UserType.pas"
// Начат: 27.01.2009 15:50
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Администратор::Admin::View::Admin::PrimUserProperty::admUseProperties
//
// Свойства пользователя
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
   { Константы для типа формы admUseProperties }
  admUsePropertiesName = 'admUseProperties';
   { Строковый идентификатор пользовательского типа "Свойства пользователя" }
  admUseProperties = TvcmUserType(0);
   { Свойства пользователя }

type
  Tkw_FormUserType_admUseProperties = class(TtfwInteger)
   {* Слово словаря для типа формы admUseProperties }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_admUseProperties
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
// start class Tkw_FormUserType_admUseProperties

{$If not defined(NoScripts)}
function Tkw_FormUserType_admUseProperties.GetInteger: Integer;
 {-}
begin
 Result := admUseProperties;
end;//Tkw_FormUserType_admUseProperties.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// Регистрация Tkw_FormUserType_admUseProperties
 Tkw_FormUserType_admUseProperties.Register('тип_формы::admUseProperties');
{$IfEnd} //Admin

end.