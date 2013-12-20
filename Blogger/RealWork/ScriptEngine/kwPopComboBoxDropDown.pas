unit kwPopComboBoxDropDown;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopComboBoxDropDown.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::pop_ComboBox_DropDown
//
// *������:*
// {code}
// aDown aControlObj pop:ComboBox:DropDown
// {code}
// *��������:* ����������/������ ���������� ������ � ComboBox'� � ����������� �� �������� ���������
// aDown.
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
 TkwPopComboBoxDropDown = {final} class(_kwComboBoxFromStack_)
  {* *������:* 
[code]
aDown aControlObj pop:ComboBox:DropDown
[code] 
*��������:* ����������/������ ���������� ������ � ComboBox'� � ����������� �� �������� ��������� aDown. }
 protected
 // realized methods
   procedure DoWithComboBox(const aCombobox: TCustomCombo;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopComboBoxDropDown
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

type _Instance_R_ = TkwPopComboBoxDropDown;

{$Include ..\ScriptEngine\kwComboBoxFromStack.imp.pas}

// start class TkwPopComboBoxDropDown

procedure TkwPopComboBoxDropDown.DoWithComboBox(const aCombobox: TCustomCombo;
  const aCtx: TtfwContext);
//#UC START# *5049C8740203_504D87D30327_var*
//#UC END# *5049C8740203_504D87D30327_var*
begin
//#UC START# *5049C8740203_504D87D30327_impl*
 if aCtx.rEngine.IsTopBool then
  aCombobox.DroppedDown := aCtx.rEngine.PopBool
 else
  Assert(False, '�� ����� ���� ��� ����������� ������.');
//#UC END# *5049C8740203_504D87D30327_impl*
end;//TkwPopComboBoxDropDown.DoWithComboBox

class function TkwPopComboBoxDropDown.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:ComboBox:DropDown';
end;//TkwPopComboBoxDropDown.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwComboBoxFromStack.imp.pas}
{$IfEnd} //not NoScripts

end.