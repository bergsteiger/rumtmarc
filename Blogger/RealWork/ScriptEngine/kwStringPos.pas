unit kwStringPos;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwStringPos.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::string_Pos
//
// '���� ���� ���' '��' string:Pos .
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
 TkwStringPos = {final} class(_tfwDualStrWord_)
  {* '���� ���� ���' '��' string:Pos . }
 protected
 // realized methods
   procedure DoStrings(const aCtx: TtfwContext;
     const aStr1: Il3CString;
     const aStr2: Il3CString); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwStringPos
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

type _Instance_R_ = TkwStringPos;

{$Include ..\ScriptEngine\tfwDualStrWord.imp.pas}

// start class TkwStringPos

procedure TkwStringPos.DoStrings(const aCtx: TtfwContext;
  const aStr1: Il3CString;
  const aStr2: Il3CString);
//#UC START# *4DD0D021034C_514955AC00E8_var*
//#UC END# *4DD0D021034C_514955AC00E8_var*
begin
//#UC START# *4DD0D021034C_514955AC00E8_impl*
 aCtx.rEngine.PushInt(l3Pos(aStr1, aStr2));
//#UC END# *4DD0D021034C_514955AC00E8_impl*
end;//TkwStringPos.DoStrings

class function TkwStringPos.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'string:Pos';
end;//TkwStringPos.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwDualStrWord.imp.pas}
{$IfEnd} //not NoScripts

end.