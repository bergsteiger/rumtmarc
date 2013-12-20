unit DocumentUserTypes_dftDocSynchroView_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftDocSynchroView_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftDocSynchroView
//
// Текст документа (синхронный просмотр)
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
  DocumentUserTypes_dftRelatedDoc_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы dftDocSynchroView }
  dftDocSynchroViewName = 'dftDocSynchroView';
   { Строковый идентификатор пользовательского типа "Текст документа (синхронный просмотр)" }
  dftDocSynchroView = TvcmUserType(dftRelatedDoc + 1);
   { Текст документа (синхронный просмотр) }

type
  Tkw_FormUserType_dftDocSynchroView = class(TtfwInteger)
   {* Слово словаря для типа формы dftDocSynchroView }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftDocSynchroView
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftDocSynchroView

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftDocSynchroView.GetInteger: Integer;
 {-}
begin
 Result := dftDocSynchroView;
end;//Tkw_FormUserType_dftDocSynchroView.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_dftDocSynchroView
 Tkw_FormUserType_dftDocSynchroView.Register('тип_формы::dftDocSynchroView');
{$IfEnd} //not Admin AND not Monitorings

end.