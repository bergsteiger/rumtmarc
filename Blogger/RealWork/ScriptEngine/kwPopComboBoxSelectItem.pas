unit kwPopComboBoxSelectItem;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopComboBoxSelectItem.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::pop_ComboBox_SelectItem
//
// *������:*
// {code}
// aStr aControlObj pop:ComboBox:SelectItem
// {code}
// *��������:* �������� �������� aStr � ������ TComboBox, ���� ����� �����������. ���������� ������
// ������������ (���������� �����������, ��������� � ���������� �����������).
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

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
 TkwPopComboBoxSelectItem = {final} class(_kwComboBoxFromStack_)
  {* *������:* 
[code]
aStr aControlObj pop:ComboBox:SelectItem
[code] 
*��������:* �������� �������� aStr � ������ TComboBox, ���� ����� �����������. ���������� ������ ������������ (���������� �����������, ��������� � ���������� �����������). }
 protected
 // realized methods
   procedure DoWithComboBox(const aCombobox: TCustomCombo;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopComboBoxSelectItem
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

type _Instance_R_ = TkwPopComboBoxSelectItem;

{$Include ..\ScriptEngine\kwComboBoxFromStack.imp.pas}

type
  THackCustomComboBox = class(TCustomComboBox)
  end;//THackCustomComboBox

// start class TkwPopComboBoxSelectItem

procedure TkwPopComboBoxSelectItem.DoWithComboBox(const aCombobox: TCustomCombo;
  const aCtx: TtfwContext);
//#UC START# *5049C8740203_504D9BE9028F_var*
var
 l_Item: AnsiString;
//#UC END# *5049C8740203_504D9BE9028F_var*
begin
//#UC START# *5049C8740203_504D9BE9028F_impl*
 if aCtx.rEngine.IsTopString then
  l_Item := aCtx.rEngine.PopDelphiString
 else
  Assert(False, '�� ����� ����� ��� ���������.');
 THackCustomComboBox(aCombobox).SelectItem(l_Item);
//#UC END# *5049C8740203_504D9BE9028F_impl*
end;//TkwPopComboBoxSelectItem.DoWithComboBox

class function TkwPopComboBoxSelectItem.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:ComboBox:SelectItem';
end;//TkwPopComboBoxSelectItem.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwComboBoxFromStack.imp.pas}
{$IfEnd} //not NoScripts

end.