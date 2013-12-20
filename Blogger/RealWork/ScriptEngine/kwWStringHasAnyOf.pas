unit kwWStringHasAnyOf;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwWStringHasAnyOf.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::WString_HasAnyOf
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
 {$Include ..\ScriptEngine\tfwDualWStrWord.imp.pas}
 TkwWStringHasAnyOf = {final} class(_tfwDualWStrWord_)
 protected
 // realized methods
   procedure DoStrings(const aCtx: TtfwContext;
     const aStr1: Tl3WString;
     const aStr2: Tl3WString); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwWStringHasAnyOf
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Chars,
  SysUtils,
  l3String,
  l3Base,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwWStringHasAnyOf;

{$Include ..\ScriptEngine\tfwDualWStrWord.imp.pas}

// start class TkwWStringHasAnyOf

procedure TkwWStringHasAnyOf.DoStrings(const aCtx: TtfwContext;
  const aStr1: Tl3WString;
  const aStr2: Tl3WString);
//#UC START# *4F4FE58702AD_4F55D96A01B1_var*
var
 l_C : TChars;
 l_Index : Integer;
//#UC END# *4F4FE58702AD_4F55D96A01B1_var*
begin
//#UC START# *4F4FE58702AD_4F55D96A01B1_impl*
 if l3IsNil(aStr1) then
  aCtx.rEngine.PushBool(true)
  // - ����� ������ �������� ������� �� ������� ���������, ������� ���
 else
 if (aStr1.SLen = 1) then
  aCtx.rEngine.PushBool(l3CharSetPresent(aStr2, [aStr1.S[0]]))
 else
 begin
  l_C := [];
  for l_Index := 0 to Pred(aStr1.SLen) do
   l_C := l_C + [aStr1.S[l_Index]];
  aCtx.rEngine.PushBool(l3CharSetPresent(aStr2, l_C))
 end;//aStr1.SLen = 1
//#UC END# *4F4FE58702AD_4F55D96A01B1_impl*
end;//TkwWStringHasAnyOf.DoStrings

class function TkwWStringHasAnyOf.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'WString:HasAnyOf';
end;//TkwWStringHasAnyOf.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwDualWStrWord.imp.pas}
{$IfEnd} //not NoScripts

end.