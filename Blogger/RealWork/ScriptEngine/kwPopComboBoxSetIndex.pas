unit kwPopComboBoxSetIndex;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwPopComboBoxSetIndex.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::pop_ComboBox_SetIndex
//
// *Формат:*
// {code}
// anItemIndex aControlObj pop:ComboBox:SetItemIdex
// {code}
// *Описание:* Устанавливает значение свойства ItemIndex у контрола TComboBox, заданное в параметре
// anItemIndex
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
  StdCtrls,
  tfwScriptingInterfaces,
  Controls,
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwComboBoxFromStack.imp.pas}
 TkwPopComboBoxSetIndex = {final} class(_kwComboBoxFromStack_)
  {* *Формат:* 
[code]
anItemIndex aControlObj pop:ComboBox:SetItemIdex
[code] 
*Описание:* Устанавливает значение свойства ItemIndex у контрола TComboBox, заданное в параметре anItemIndex }
 protected
 // realized methods
   procedure DoWithComboBox(const aCombobox: TCustomCombo;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopComboBoxSetIndex
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopComboBoxSetIndex;

{$Include ..\ScriptEngine\kwComboBoxFromStack.imp.pas}

// start class TkwPopComboBoxSetIndex

procedure TkwPopComboBoxSetIndex.DoWithComboBox(const aCombobox: TCustomCombo;
  const aCtx: TtfwContext);
//#UC START# *5049C8740203_5049C71F002B_var*
//#UC END# *5049C8740203_5049C71F002B_var*
begin
//#UC START# *5049C8740203_5049C71F002B_impl*
 if aCtx.rEngine.IsTopInt then
  aCombobox.ItemIndex := aCtx.rEngine.PopInt
 else
  Assert(False, 'Не задано значение ItemIndex у CombobBox');
//#UC END# *5049C8740203_5049C71F002B_impl*
end;//TkwPopComboBoxSetIndex.DoWithComboBox

class function TkwPopComboBoxSetIndex.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:ComboBox:SetIndex';
end;//TkwPopComboBoxSetIndex.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwComboBoxFromStack.imp.pas}
{$IfEnd} //not NoScripts

end.