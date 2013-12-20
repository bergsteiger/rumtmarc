unit ListUserTypes_lftSynchroView_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftSynchroView_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftSynchroView
//
// Синхронный просмотр (ссылки из документа, ссылки на документ)
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
  ListUserTypes_lftCorrespondent_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы lftSynchroView }
  lftSynchroViewName = 'lftSynchroView';
   { Строковый идентификатор пользовательского типа "Синхронный просмотр (ссылки из документа, ссылки на документ)" }
  lftSynchroView = TvcmUserType(lftCorrespondent + 1);
   { Синхронный просмотр (ссылки из документа, ссылки на документ) }

type
  Tkw_FormUserType_lftSynchroView = class(TtfwInteger)
   {* Слово словаря для типа формы lftSynchroView }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftSynchroView
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftSynchroView

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftSynchroView.GetInteger: Integer;
 {-}
begin
 Result := lftSynchroView;
end;//Tkw_FormUserType_lftSynchroView.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_lftSynchroView
 Tkw_FormUserType_lftSynchroView.Register('тип_формы::lftSynchroView');
{$IfEnd} //not Admin AND not Monitorings

end.