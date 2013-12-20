unit kwSysutilsExtractFilePath;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwSysutilsExtractFilePath.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::SysUtils::sysutils_ExtractFilePath
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
 TkwSysutilsExtractFilePath = {final} class(_tfwStrWord_)
 protected
 // realized methods
   procedure DoString(const aCtx: TtfwContext;
     const aStr: Il3CString); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwSysutilsExtractFilePath
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

type _Instance_R_ = TkwSysutilsExtractFilePath;

{$Include ..\ScriptEngine\tfwStrWord.imp.pas}

// start class TkwSysutilsExtractFilePath

procedure TkwSysutilsExtractFilePath.DoString(const aCtx: TtfwContext;
  const aStr: Il3CString);
//#UC START# *4DD0CF6F0197_4F5EFA7400BE_var*
var
 l_N : AnsiString;
//#UC END# *4DD0CF6F0197_4F5EFA7400BE_var*
begin
//#UC START# *4DD0CF6F0197_4F5EFA7400BE_impl*
 l_N := l3Str(aStr);
 aCtx.rEngine.PushString(ExtractFilePath(l_N));
//#UC END# *4DD0CF6F0197_4F5EFA7400BE_impl*
end;//TkwSysutilsExtractFilePath.DoString

class function TkwSysutilsExtractFilePath.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'sysutils:ExtractFilePath';
end;//TkwSysutilsExtractFilePath.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwStrWord.imp.pas}
{$IfEnd} //not NoScripts

end.