unit kwPopComboBoxSaveItems;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwPopComboBoxSaveItems.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::pop_ComboBox_SaveItems
//
// *Формат:* имя_файла  контрол pop:ComboBox:SaveItems
// *Описание:* Сохраняет все пункты выпадающего списка (задается параметром контрол) в файл
// (задается параметром имя_файла)  и сравнивает с эталоном.
// *Пример:*
// {code}
// 'MyList.cmbx' 'StyleComboBox' byname:control:push pop:ComboBox:SaveItems
// {code}
// *Результат:* Сохраняет содержимое комбобокса 'StyleComboBox' в  файл  'MyList.cmbx' и сравнивает
// с эталоном.
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
 TkwPopComboBoxSaveItems = {final} class(_kwComboBoxFromStack_)
  {* *Формат:* имя_файла  контрол pop:ComboBox:SaveItems 
*Описание:* Сохраняет все пункты выпадающего списка (задается параметром контрол) в файл (задается параметром имя_файла)  и сравнивает с эталоном.
*Пример:*
[code]
'MyList.cmbx' 'StyleComboBox' byname:control:push pop:ComboBox:SaveItems
[code] 
*Результат:* Сохраняет содержимое комбобокса 'StyleComboBox' в  файл  'MyList.cmbx' и сравнивает с эталоном. }
 protected
 // realized methods
   procedure DoWithComboBox(const aCombobox: TCustomCombo;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopComboBoxSaveItems
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Filer,
  SysUtils,
  l3Types,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopComboBoxSaveItems;

{$Include ..\ScriptEngine\kwComboBoxFromStack.imp.pas}

// start class TkwPopComboBoxSaveItems

procedure TkwPopComboBoxSaveItems.DoWithComboBox(const aCombobox: TCustomCombo;
  const aCtx: TtfwContext);
//#UC START# *5049C8740203_5135B94E0354_var*
var
 i       : Integer;
 l_S     : AnsiString;
 l_F     : Tl3CustomDosFiler;
 l_Count : Integer;
//#UC END# *5049C8740203_5135B94E0354_var*
begin
//#UC START# *5049C8740203_5135B94E0354_impl*
 l_S := aCtx.rCaller.ResolveOutputFilePath(aCtx.rEngine.PopDelphiString);
 l_S := ChangeFileExt(l_S, '.cmbx');
 l_F := Tl3CustomDosFiler.Make(l_S, l3_fmWrite, false);
 try
  l_F.Open;
  l_Count := aCombobox.Items.Count - 1;
  for i := 0 to l_Count do
   l_F.WriteLn(aCombobox.Items[i]);
  l_F.Close;
 finally
  FreeAndNil(l_F);
 end;//try..finally
//#UC END# *5049C8740203_5135B94E0354_impl*
end;//TkwPopComboBoxSaveItems.DoWithComboBox

class function TkwPopComboBoxSaveItems.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:ComboBox:SaveItems';
end;//TkwPopComboBoxSaveItems.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwComboBoxFromStack.imp.pas}
{$IfEnd} //not NoScripts

end.