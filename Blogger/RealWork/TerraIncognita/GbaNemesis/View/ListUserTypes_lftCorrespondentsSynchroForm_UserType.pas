unit ListUserTypes_lftCorrespondentsSynchroForm_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftCorrespondentsSynchroForm_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftCorrespondentsSynchroForm
//
// Синхронный просмотр (ссылки на документ)
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
  ListUserTypes_lftSimilarDocumentsSynchroView_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы lftCorrespondentsSynchroForm }
  lftCorrespondentsSynchroFormName = 'lftCorrespondentsSynchroForm';
   { Строковый идентификатор пользовательского типа "Синхронный просмотр (ссылки на документ)" }
  lftCorrespondentsSynchroForm = TvcmUserType(lftSimilarDocumentsSynchroView + 1);
   { Синхронный просмотр (ссылки на документ) }

type
  Tkw_FormUserType_lftCorrespondentsSynchroForm = class(TtfwInteger)
   {* Слово словаря для типа формы lftCorrespondentsSynchroForm }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftCorrespondentsSynchroForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftCorrespondentsSynchroForm

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftCorrespondentsSynchroForm.GetInteger: Integer;
 {-}
begin
 Result := lftCorrespondentsSynchroForm;
end;//Tkw_FormUserType_lftCorrespondentsSynchroForm.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_lftCorrespondentsSynchroForm
 Tkw_FormUserType_lftCorrespondentsSynchroForm.Register('тип_формы::lftCorrespondentsSynchroForm');
{$IfEnd} //not Admin AND not Monitorings

end.