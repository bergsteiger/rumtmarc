unit kwStringPosEx;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwStringPosEx.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::string_PosEx
//
// 6 '���� ���� ����' '��' string:PosEx .
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
  l3Interfaces,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwDualStrWord.imp.pas}
 TkwStringPosEx = {final} class(_tfwDualStrWord_)
  {* 6 '���� ���� ����' '��' string:PosEx . }
 protected
 // realized methods
   procedure DoStrings(const aCtx: TtfwContext;
     const aStr1: Il3CString;
     const aStr2: Il3CString); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwStringPosEx
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  l3String,
  l3Base,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwStringPosEx;

{$Include ..\ScriptEngine\tfwDualStrWord.imp.pas}

// start class TkwStringPosEx

procedure TkwStringPosEx.DoStrings(const aCtx: TtfwContext;
  const aStr1: Il3CString;
  const aStr2: Il3CString);
//#UC START# *4DD0D021034C_51496FCF03B5_var*
//#UC END# *4DD0D021034C_51496FCF03B5_var*
begin
//#UC START# *4DD0D021034C_51496FCF03B5_impl*
 RunnerAssert(aCtx.rEngine.IsTopInt, '�� ������� ����� �������, � �������� ����������� �����', aCtx);
 aCtx.rEngine.PushInt(l3PosEx(aStr1, aStr2, aCtx.rEngine.PopInt));
//#UC END# *4DD0D021034C_51496FCF03B5_impl*
end;//TkwStringPosEx.DoStrings

class function TkwStringPosEx.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'string:PosEx';
end;//TkwStringPosEx.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwDualStrWord.imp.pas}
{$IfEnd} //not NoScripts

end.