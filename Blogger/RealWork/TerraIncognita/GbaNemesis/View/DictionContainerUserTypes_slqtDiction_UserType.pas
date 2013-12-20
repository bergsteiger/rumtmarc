unit DictionContainerUserTypes_slqtDiction_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DictionContainerUserTypes_slqtDiction_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Встроенные продукты::DictionLike::View::DictionLikeForms::DictionContainerUserTypes::slqtDiction
//
// Толковый словарь
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
   { Константы для типа формы slqtDiction }
  slqtDictionName = 'slqtDiction';
   { Строковый идентификатор пользовательского типа "Толковый словарь" }
  slqtDiction = TvcmUserType(0);
   { Толковый словарь }

type
  Tkw_FormUserType_slqtDiction = class(TtfwInteger)
   {* Слово словаря для типа формы slqtDiction }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_slqtDiction
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_slqtDiction

{$If not defined(NoScripts)}
function Tkw_FormUserType_slqtDiction.GetInteger: Integer;
 {-}
begin
 Result := slqtDiction;
end;//Tkw_FormUserType_slqtDiction.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_slqtDiction
 Tkw_FormUserType_slqtDiction.Register('тип_формы::slqtDiction');
{$IfEnd} //not Admin AND not Monitorings

end.