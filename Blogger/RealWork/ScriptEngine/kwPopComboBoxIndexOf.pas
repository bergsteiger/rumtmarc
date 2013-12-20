unit kwPopComboBoxIndexOf;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopComboBoxIndexOf.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::pop_ComboBox_IndexOf
//
// *������:*
// {code}
// aStr aControlObj pop:ComboBox:IndexOf
// {code}
// *��������:* ���������� ����� ������ � ���������� ������ TComboBox. ���� ����� ���, ��
// ������������ -1
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
 TkwPopComboBoxIndexOf = {final} class(_kwComboBoxFromStack_)
  {* *������:* 
[code]
aStr aControlObj pop:ComboBox:IndexOf
[code] 
*��������:* ���������� ����� ������ � ���������� ������ TComboBox. ���� ����� ���, �� ������������ -1 }
 protected
 // realized methods
   procedure DoWithComboBox(const aCombobox: TCustomCombo;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopComboBoxIndexOf
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

type _Instance_R_ = TkwPopComboBoxIndexOf;

{$Include ..\ScriptEngine\kwComboBoxFromStack.imp.pas}

// start class TkwPopComboBoxIndexOf

procedure TkwPopComboBoxIndexOf.DoWithComboBox(const aCombobox: TCustomCombo;
  const aCtx: TtfwContext);
//#UC START# *5049C8740203_5049D3E90186_var*
var
 l_String: AnsiString;
//#UC END# *5049C8740203_5049D3E90186_var*
begin
//#UC START# *5049C8740203_5049D3E90186_impl*
 if aCtx.rEngine.IsTopString then
 begin
  l_String := aCtx.rEngine.PopDelphiString;
  aCtx.rEngine.PushInt(aCombobox.Items.IndexOf(l_String))
 end
 else
  Assert(False, '�� ������ ������ ��� ������ � Combobox');
//#UC END# *5049C8740203_5049D3E90186_impl*
end;//TkwPopComboBoxIndexOf.DoWithComboBox

class function TkwPopComboBoxIndexOf.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:ComboBox:IndexOf';
end;//TkwPopComboBoxIndexOf.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwComboBoxFromStack.imp.pas}
{$IfEnd} //not NoScripts

end.