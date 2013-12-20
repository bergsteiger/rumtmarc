unit kwStringToChar;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwStringToChar.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::string_ToChar
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
 {$Include ..\ScriptEngine\tfwStrWord.imp.pas}
 TkwStringToChar = {final} class(_tfwStrWord_)
 protected
 // realized methods
   procedure DoString(const aCtx: TtfwContext;
     const aStr: Il3CString); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwStringToChar
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

type _Instance_R_ = TkwStringToChar;

{$Include ..\ScriptEngine\tfwStrWord.imp.pas}

// start class TkwStringToChar

procedure TkwStringToChar.DoString(const aCtx: TtfwContext;
  const aStr: Il3CString);
//#UC START# *4DD0CF6F0197_4F4FDDA700C6_var*
//#UC END# *4DD0CF6F0197_4F4FDDA700C6_var*
begin
//#UC START# *4DD0CF6F0197_4F4FDDA700C6_impl*
 RunnerAssert(aStr.AsWStr.SLen = 0, '����� ������ ������ ��������� 1', aCtx);
 aCtx.rEngine.PushChar(aStr.AsWStr.S[0]);
//#UC END# *4DD0CF6F0197_4F4FDDA700C6_impl*
end;//TkwStringToChar.DoString

class function TkwStringToChar.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'string:ToChar';
end;//TkwStringToChar.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwStrWord.imp.pas}
{$IfEnd} //not NoScripts

end.