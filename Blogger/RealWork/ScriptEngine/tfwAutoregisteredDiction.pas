unit tfwAutoregisteredDiction;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/tfwAutoregisteredDiction.pas"
// Начат: 21.04.2011 20:49
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::ScriptingKeywordsCore::TtfwAutoregisteredDiction
//
// Словарь автозарегистрированных слов. Служит как временный кеш при инициализации. Теоретически
// могут быть проблемы с идентификаторами слов, при использовании более, чем одной скриптовой
// машиной
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TtfwAutoregisteredDiction = class(TtfwDictionary)
  {* Словарь автозарегистрированных слов. Служит как временный кеш при инициализации. Теоретически могут быть проблемы с идентификаторами слов, при использовании более, чем одной скриптовой машиной }
 public
 // singleton factory method
   class function Instance: TtfwAutoregisteredDiction;
    {- возвращает экземпляр синглетона. }
 end;//TtfwAutoregisteredDiction
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base {a}
  ;
{$IfEnd} //not NoScripts


// start class TtfwAutoregisteredDiction

var g_TtfwAutoregisteredDiction : TtfwAutoregisteredDiction = nil;

procedure TtfwAutoregisteredDictionFree;
begin
 l3Free(g_TtfwAutoregisteredDiction);
end;

class function TtfwAutoregisteredDiction.Instance: TtfwAutoregisteredDiction;
begin
 if (g_TtfwAutoregisteredDiction = nil) then
 begin
  l3System.AddExitProc(TtfwAutoregisteredDictionFree);
  g_TtfwAutoregisteredDiction := Create;
 end;
 Result := g_TtfwAutoregisteredDiction;
end;


end.