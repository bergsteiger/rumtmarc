unit DocumentUserTypes_dftRelatedSynchroView_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftRelatedSynchroView_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftRelatedSynchroView
//
// Справка к документу (синхронный просмотр)
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
  DocumentUserTypes_dftDocSynchroView_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы dftRelatedSynchroView }
  dftRelatedSynchroViewName = 'dftRelatedSynchroView';
   { Строковый идентификатор пользовательского типа "Справка к документу (синхронный просмотр)" }
  dftRelatedSynchroView = TvcmUserType(dftDocSynchroView + 1);
   { Справка к документу (синхронный просмотр) }

type
  Tkw_FormUserType_dftRelatedSynchroView = class(TtfwInteger)
   {* Слово словаря для типа формы dftRelatedSynchroView }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftRelatedSynchroView
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftRelatedSynchroView

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftRelatedSynchroView.GetInteger: Integer;
 {-}
begin
 Result := dftRelatedSynchroView;
end;//Tkw_FormUserType_dftRelatedSynchroView.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_dftRelatedSynchroView
 Tkw_FormUserType_dftRelatedSynchroView.Register('тип_формы::dftRelatedSynchroView');
{$IfEnd} //not Admin AND not Monitorings

end.