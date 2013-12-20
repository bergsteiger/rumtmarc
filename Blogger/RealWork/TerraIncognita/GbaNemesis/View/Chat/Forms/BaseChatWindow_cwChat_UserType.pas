unit BaseChatWindow_cwChat_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Лукьянец Р.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Chat/Forms/BaseChatWindow_cwChat_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Встроенные продукты::Chat::View::Chat::BaseChatWindow::cwChat
//
// Переписка
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
   { Константы для типа формы cwChat }
  cwChatName = 'cwChat';
   { Строковый идентификатор пользовательского типа "Переписка" }
  cwChat = TvcmUserType(0);
   { Переписка }

type
  Tkw_FormUserType_cwChat = class(TtfwInteger)
   {* Слово словаря для типа формы cwChat }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_cwChat
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_cwChat

{$If not defined(NoScripts)}
function Tkw_FormUserType_cwChat.GetInteger: Integer;
 {-}
begin
 Result := cwChat;
end;//Tkw_FormUserType_cwChat.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_cwChat
 Tkw_FormUserType_cwChat.Register('тип_формы::cwChat');
{$IfEnd} //not Admin AND not Monitorings

end.