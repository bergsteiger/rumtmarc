unit BaloonWarningUserTypes_WarnInactualDocument_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_WarnInactualDocument_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::WarnInactualDocument
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
  BaloonWarningUserTypes_WarnOnControl_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { Константы для типа формы WarnInactualDocument }
  WarnInactualDocumentName = 'WarnInactualDocument';
   { Строковый идентификатор пользовательского типа "" }
  WarnInactualDocument = TvcmUserType(WarnOnControl + 1);

type
  Tkw_FormUserType_WarnInactualDocument = class(TtfwInteger)
   {* Слово словаря для типа формы WarnInactualDocument }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_WarnInactualDocument
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_WarnInactualDocument

{$If not defined(NoScripts)}
function Tkw_FormUserType_WarnInactualDocument.GetInteger: Integer;
 {-}
begin
 Result := WarnInactualDocument;
end;//Tkw_FormUserType_WarnInactualDocument.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_WarnInactualDocument
 Tkw_FormUserType_WarnInactualDocument.Register('тип_формы::WarnInactualDocument');
{$IfEnd} //not Admin AND not Monitorings

end.