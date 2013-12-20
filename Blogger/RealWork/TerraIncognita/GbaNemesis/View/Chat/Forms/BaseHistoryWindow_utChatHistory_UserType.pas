unit BaseHistoryWindow_utChatHistory_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Лукьянец Р.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Chat/Forms/BaseHistoryWindow_utChatHistory_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Встроенные продукты::Chat::View::Chat::BaseHistoryWindow::utChatHistory
//
// История переписки
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
   { Константы для типа формы utChatHistory }
  utChatHistoryName = 'utChatHistory';
   { Строковый идентификатор пользовательского типа "История переписки" }
  utChatHistory = TvcmUserType(0);
   { История переписки }

type
  Tkw_FormUserType_utChatHistory = class(TtfwInteger)
   {* Слово словаря для типа формы utChatHistory }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utChatHistory
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utChatHistory

{$If not defined(NoScripts)}
function Tkw_FormUserType_utChatHistory.GetInteger: Integer;
 {-}
begin
 Result := utChatHistory;
end;//Tkw_FormUserType_utChatHistory.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utChatHistory
 Tkw_FormUserType_utChatHistory.Register('тип_формы::utChatHistory');
{$IfEnd} //not Admin AND not Monitorings

end.