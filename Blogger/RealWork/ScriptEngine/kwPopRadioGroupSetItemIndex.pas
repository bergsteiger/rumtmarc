unit kwPopRadioGroupSetItemIndex;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopRadioGroupSetItemIndex.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::pop_RadioGroup_SetItemIndex
//
// *������:*
// {code}
// anItemIndex aControlObj pop:RadioGroup:SetItemIdex
// {code}
// *��������:* ������������� �������� �������� ItemIndex � �������� TRadioGroup, �������� �
// ��������� anItemIndex
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
  ExtCtrls,
  tfwScriptingInterfaces,
  Controls,
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwRadioGroupFromStack.imp.pas}
 TkwPopRadioGroupSetItemIndex = {final} class(_kwRadioGroupFromStack_)
  {* *������:* 
[code]
anItemIndex aControlObj pop:RadioGroup:SetItemIdex
[code] 
*��������:* ������������� �������� �������� ItemIndex � �������� TRadioGroup, �������� � ��������� anItemIndex }
 protected
 // realized methods
   procedure DoWithRadioGroup(const aRadioGroup: TRadioGroup;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopRadioGroupSetItemIndex
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

type _Instance_R_ = TkwPopRadioGroupSetItemIndex;

{$Include ..\ScriptEngine\kwRadioGroupFromStack.imp.pas}

// start class TkwPopRadioGroupSetItemIndex

procedure TkwPopRadioGroupSetItemIndex.DoWithRadioGroup(const aRadioGroup: TRadioGroup;
  const aCtx: TtfwContext);
//#UC START# *5034B42D0210_5034B4BA012B_var*
//#UC END# *5034B42D0210_5034B4BA012B_var*
begin
//#UC START# *5034B42D0210_5034B4BA012B_impl*
 if aCtx.rEngine.IsTopInt then
  aRadioGroup.ItemIndex := aCtx.rEngine.PopInt
 else
  Assert(False, '�� ����� ItemIndex ��� RadioGroups');
//#UC END# *5034B42D0210_5034B4BA012B_impl*
end;//TkwPopRadioGroupSetItemIndex.DoWithRadioGroup

class function TkwPopRadioGroupSetItemIndex.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:RadioGroup:SetItemIndex';
end;//TkwPopRadioGroupSetItemIndex.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwRadioGroupFromStack.imp.pas}
{$IfEnd} //not NoScripts

end.