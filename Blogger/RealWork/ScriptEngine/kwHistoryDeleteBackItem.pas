unit kwHistoryDeleteBackItem;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwHistoryDeleteBackItem.pas"
// Начат: 28.09.2011 11:37
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::CommonWords::history_DeleteBackItem
//
// Удаляет один элемент истории из списка Back.
// *Пример:*
// {code}
// моп::Поиск_Поиск_лекарственного_средства
// 'AT_PHARM_NAME' 'Аргинин' Search:SetAttribute
// 'AT_PHARM_ATC' 'A. Пищеварительный тракт и обмен веществ' Search:SetAttribute
// 'AT_PHARM_ATC' 'B. Препараты влияющие на кроветворение и кровь' Search:SetAttribute
// Ok
// OnTest
// history:DeleteBackItem
// {code}
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts) AND not defined(NoVCM)}
uses
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts AND not NoVCM

{$If not defined(NoScripts) AND not defined(NoVCM)}
type
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 _VCMWord_Parent_ = _tfwAutoregisteringWord_;
 {$Include ..\ScriptEngine\VCMWord.imp.pas}
 TkwHistoryDeleteBackItem = class(_VCMWord_)
  {* Удаляет один элемент истории из списка Back.
 *Пример:*
[code]
 моп::Поиск_Поиск_лекарственного_средства
 'AT_PHARM_NAME' 'Аргинин' Search:SetAttribute
 'AT_PHARM_ATC' 'A. Пищеварительный тракт и обмен веществ' Search:SetAttribute
 'AT_PHARM_ATC' 'B. Препараты влияющие на кроветворение и кровь' Search:SetAttribute
 Ok
 OnTest
 history:DeleteBackItem
[code] }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwHistoryDeleteBackItem
{$IfEnd} //not NoScripts AND not NoVCM

implementation

{$If not defined(NoScripts) AND not defined(NoVCM)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  vcmForm,
  Controls,
  StdResPrim,
  vcmBase
  {$If defined(nsTest)}
  ,
  afwAnswer
  {$IfEnd} //nsTest
  
  ;
{$IfEnd} //not NoScripts AND not NoVCM

{$If not defined(NoScripts) AND not defined(NoVCM)}

type _Instance_R_ = TkwHistoryDeleteBackItem;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

{$Include ..\ScriptEngine\VCMWord.imp.pas}

// start class TkwHistoryDeleteBackItem

procedure TkwHistoryDeleteBackItem.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4E82CEBA0299_var*
//#UC END# *4DAEEDE10285_4E82CEBA0299_var*
begin
//#UC START# *4DAEEDE10285_4E82CEBA0299_impl*
 if (vcmDispatcher.History <> nil) then
  vcmDispatcher.History.DeleteBackItem;
//#UC END# *4DAEEDE10285_4E82CEBA0299_impl*
end;//TkwHistoryDeleteBackItem.DoDoIt

class function TkwHistoryDeleteBackItem.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'history:DeleteBackItem';
end;//TkwHistoryDeleteBackItem.GetWordNameForRegister

{$IfEnd} //not NoScripts AND not NoVCM

initialization
{$If not defined(NoScripts) AND not defined(NoVCM)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts AND not NoVCM

end.