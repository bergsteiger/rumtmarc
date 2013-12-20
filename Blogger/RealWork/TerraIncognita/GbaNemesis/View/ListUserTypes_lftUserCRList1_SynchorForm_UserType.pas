unit ListUserTypes_lftUserCRList1_SynchorForm_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftUserCRList1_SynchorForm_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftUserCRList1_SynchorForm
//
// Синхронный просмотр (настраиваемая вкладка связанных документов 1)
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
  ListUserTypes_lftRespondentsSynchroForm_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы lftUserCRList1_SynchorForm }
  lftUserCRList1_SynchorFormName = 'lftUserCRList1_SynchorForm';
   { Строковый идентификатор пользовательского типа "Синхронный просмотр (настраиваемая вкладка связанных документов 1)" }
  lftUserCRList1_SynchorForm = TvcmUserType(lftRespondentsSynchroForm + 1);
   { Синхронный просмотр (настраиваемая вкладка связанных документов 1) }

type
  Tkw_FormUserType_lftUserCRList1_SynchorForm = class(TtfwInteger)
   {* Слово словаря для типа формы lftUserCRList1_SynchorForm }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftUserCRList1_SynchorForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftUserCRList1_SynchorForm

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftUserCRList1_SynchorForm.GetInteger: Integer;
 {-}
begin
 Result := lftUserCRList1_SynchorForm;
end;//Tkw_FormUserType_lftUserCRList1_SynchorForm.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_lftUserCRList1_SynchorForm
 Tkw_FormUserType_lftUserCRList1_SynchorForm.Register('тип_формы::lftUserCRList1_SynchorForm');
{$IfEnd} //not Admin AND not Monitorings

end.