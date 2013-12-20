unit ListUserTypes_lftSimilarDocumentsSynchroView_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftSimilarDocumentsSynchroView_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftSimilarDocumentsSynchroView
//
// Синхронный просмотр (похожие документы)
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
  ListUserTypes_lftSimilarDocuments_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы lftSimilarDocumentsSynchroView }
  lftSimilarDocumentsSynchroViewName = 'lftSimilarDocumentsSynchroView';
   { Строковый идентификатор пользовательского типа "Синхронный просмотр (похожие документы)" }
  lftSimilarDocumentsSynchroView = TvcmUserType(lftSimilarDocuments + 1);
   { Синхронный просмотр (похожие документы) }

type
  Tkw_FormUserType_lftSimilarDocumentsSynchroView = class(TtfwInteger)
   {* Слово словаря для типа формы lftSimilarDocumentsSynchroView }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftSimilarDocumentsSynchroView
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftSimilarDocumentsSynchroView

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftSimilarDocumentsSynchroView.GetInteger: Integer;
 {-}
begin
 Result := lftSimilarDocumentsSynchroView;
end;//Tkw_FormUserType_lftSimilarDocumentsSynchroView.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_lftSimilarDocumentsSynchroView
 Tkw_FormUserType_lftSimilarDocumentsSynchroView.Register('тип_формы::lftSimilarDocumentsSynchroView');
{$IfEnd} //not Admin AND not Monitorings

end.