unit PrimContactList_chatAddContact_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Chat/Forms/PrimContactList_chatAddContact_UserType.pas"
// Начат: 01.10.2009 2:05
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Встроенные продукты::Chat::View::Chat::PrimContactList::chatAddContact
//
// Добавить контакт
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
  PrimContactList_chatContacts_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы chatAddContact }
  chatAddContactName = 'chatAddContact';
   { Строковый идентификатор пользовательского типа "Добавить контакт" }
  chatAddContact = TvcmUserType(chatContacts + 1);
   { Добавить контакт }

type
  Tkw_FormUserType_chatAddContact = class(TtfwInteger)
   {* Слово словаря для типа формы chatAddContact }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_chatAddContact
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_chatAddContact

{$If not defined(NoScripts)}
function Tkw_FormUserType_chatAddContact.GetInteger: Integer;
 {-}
begin
 Result := chatAddContact;
end;//Tkw_FormUserType_chatAddContact.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_chatAddContact
 Tkw_FormUserType_chatAddContact.Register('тип_формы::chatAddContact');
{$IfEnd} //not Admin AND not Monitorings

end.