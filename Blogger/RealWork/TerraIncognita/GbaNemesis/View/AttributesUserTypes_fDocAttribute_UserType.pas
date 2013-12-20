unit AttributesUserTypes_fDocAttribute_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/AttributesUserTypes_fDocAttribute_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::AttributesUserTypes::fDocAttribute
//
// Информация о документе
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
   { Константы для типа формы fDocAttribute }
  fDocAttributeName = 'fDocAttribute';
   { Строковый идентификатор пользовательского типа "Информация о документе" }
  fDocAttribute = TvcmUserType(0);
   { Информация о документе }

type
  Tkw_FormUserType_fDocAttribute = class(TtfwInteger)
   {* Слово словаря для типа формы fDocAttribute }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_fDocAttribute
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_fDocAttribute

{$If not defined(NoScripts)}
function Tkw_FormUserType_fDocAttribute.GetInteger: Integer;
 {-}
begin
 Result := fDocAttribute;
end;//Tkw_FormUserType_fDocAttribute.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_fDocAttribute
 Tkw_FormUserType_fDocAttribute.Register('тип_формы::fDocAttribute');
{$IfEnd} //not Admin AND not Monitorings

end.