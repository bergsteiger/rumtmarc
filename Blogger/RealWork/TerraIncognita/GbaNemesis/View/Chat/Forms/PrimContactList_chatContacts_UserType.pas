unit PrimContactList_chatContacts_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Chat/Forms/PrimContactList_chatContacts_UserType.pas"
// Начат: 01.10.2009 2:05
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Встроенные продукты::Chat::View::Chat::PrimContactList::chatContacts
//
// Совещание онлайн
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
   { Константы для типа формы chatContacts }
  chatContactsName = 'chatContacts';
   { Строковый идентификатор пользовательского типа "Совещание онлайн" }
  chatContacts = TvcmUserType(0);
   { Совещание онлайн }

type
  Tkw_FormUserType_chatContacts = class(TtfwInteger)
   {* Слово словаря для типа формы chatContacts }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_chatContacts
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_chatContacts

{$If not defined(NoScripts)}
function Tkw_FormUserType_chatContacts.GetInteger: Integer;
 {-}
begin
 Result := chatContacts;
end;//Tkw_FormUserType_chatContacts.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_chatContacts
 Tkw_FormUserType_chatContacts.Register('тип_формы::chatContacts');
{$IfEnd} //not Admin AND not Monitorings

end.