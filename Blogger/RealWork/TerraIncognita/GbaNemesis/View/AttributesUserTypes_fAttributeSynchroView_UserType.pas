unit AttributesUserTypes_fAttributeSynchroView_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/AttributesUserTypes_fAttributeSynchroView_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::AttributesUserTypes::fAttributeSynchroView
//
// Информация о документе (синхронный просмотр)
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
  AttributesUserTypes_fDocAttribute_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы fAttributeSynchroView }
  fAttributeSynchroViewName = 'fAttributeSynchroView';
   { Строковый идентификатор пользовательского типа "Информация о документе (синхронный просмотр)" }
  fAttributeSynchroView = TvcmUserType(fDocAttribute + 1);
   { Информация о документе (синхронный просмотр) }

type
  Tkw_FormUserType_fAttributeSynchroView = class(TtfwInteger)
   {* Слово словаря для типа формы fAttributeSynchroView }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_fAttributeSynchroView
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_fAttributeSynchroView

{$If not defined(NoScripts)}
function Tkw_FormUserType_fAttributeSynchroView.GetInteger: Integer;
 {-}
begin
 Result := fAttributeSynchroView;
end;//Tkw_FormUserType_fAttributeSynchroView.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_fAttributeSynchroView
 Tkw_FormUserType_fAttributeSynchroView.Register('тип_формы::fAttributeSynchroView');
{$IfEnd} //not Admin AND not Monitorings

end.