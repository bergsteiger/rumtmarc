unit ListUserTypes_lftRespondentsSynchroForm_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftRespondentsSynchroForm_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftRespondentsSynchroForm
//
// Синхронный просмотр (ссылка из документа)
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
  ListUserTypes_lftCorrespondentsSynchroForm_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы lftRespondentsSynchroForm }
  lftRespondentsSynchroFormName = 'lftRespondentsSynchroForm';
   { Строковый идентификатор пользовательского типа "Синхронный просмотр (ссылка из документа)" }
  lftRespondentsSynchroForm = TvcmUserType(lftCorrespondentsSynchroForm + 1);
   { Синхронный просмотр (ссылка из документа) }

type
  Tkw_FormUserType_lftRespondentsSynchroForm = class(TtfwInteger)
   {* Слово словаря для типа формы lftRespondentsSynchroForm }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftRespondentsSynchroForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftRespondentsSynchroForm

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftRespondentsSynchroForm.GetInteger: Integer;
 {-}
begin
 Result := lftRespondentsSynchroForm;
end;//Tkw_FormUserType_lftRespondentsSynchroForm.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_lftRespondentsSynchroForm
 Tkw_FormUserType_lftRespondentsSynchroForm.Register('тип_формы::lftRespondentsSynchroForm');
{$IfEnd} //not Admin AND not Monitorings

end.