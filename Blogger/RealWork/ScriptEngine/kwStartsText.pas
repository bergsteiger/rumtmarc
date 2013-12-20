unit kwStartsText;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwStartsText.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::TkwStartsText
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
 TkwStartsText = class(_tfwDualStrWord_)
 protected
 // realized methods
   procedure DoStrings(const aCtx: TtfwContext;
     const aStr1: Il3CString;
     const aStr2: Il3CString); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwStartsText
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

type _Instance_R_ = TkwStartsText;

{$Include ..\ScriptEngine\tfwDualStrWord.imp.pas}

// start class TkwStartsText

procedure TkwStartsText.DoStrings(const aCtx: TtfwContext;
  const aStr1: Il3CString;
  const aStr2: Il3CString);
//#UC START# *4DD0D021034C_4EB2AF5F02ED_var*
//#UC END# *4DD0D021034C_4EB2AF5F02ED_var*
begin
//#UC START# *4DD0D021034C_4EB2AF5F02ED_impl*
 aCtx.rEngine.PushBool(l3Starts(aStr1, aStr2, true));
//#UC END# *4DD0D021034C_4EB2AF5F02ED_impl*
end;//TkwStartsText.DoStrings

class function TkwStartsText.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4EB2AF5F02ED_var*
//#UC END# *4DB0614603C8_4EB2AF5F02ED_var*
begin
//#UC START# *4DB0614603C8_4EB2AF5F02ED_impl*
 Result := 'StartsText';
//#UC END# *4DB0614603C8_4EB2AF5F02ED_impl*
end;//TkwStartsText.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwDualStrWord.imp.pas}
{$IfEnd} //not NoScripts

end.