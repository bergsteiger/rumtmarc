unit SynchroViewUserTypes_svSynchroView_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/SynchroViewUserTypes_svSynchroView_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::SynchroViewUserTypes::svSynchroView
//
// Синхронный просмотр
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
   { Константы для типа формы svSynchroView }
  svSynchroViewName = 'svSynchroView';
   { Строковый идентификатор пользовательского типа "Синхронный просмотр" }
  svSynchroView = TvcmUserType(0);
   { Синхронный просмотр }

type
  Tkw_FormUserType_svSynchroView = class(TtfwInteger)
   {* Слово словаря для типа формы svSynchroView }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_svSynchroView
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_svSynchroView

{$If not defined(NoScripts)}
function Tkw_FormUserType_svSynchroView.GetInteger: Integer;
 {-}
begin
 Result := svSynchroView;
end;//Tkw_FormUserType_svSynchroView.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_svSynchroView
 Tkw_FormUserType_svSynchroView.Register('тип_формы::svSynchroView');
{$IfEnd} //not Admin AND not Monitorings

end.