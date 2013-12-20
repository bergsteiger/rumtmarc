unit kwIntToStr;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwIntToStr.pas"
// �����: 16.05.2011 11:10
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::SysUtils::IntToStr
//
// �������������� ����� � ������.
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
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwSysUtilsWord.imp.pas}
 TkwIntToStr = class(_tfwSysUtilsWord_)
  {* �������������� ����� � ������. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwIntToStr
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base,
  SysUtils,
  l3String,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwIntToStr;

{$Include ..\ScriptEngine\tfwSysUtilsWord.imp.pas}

// start class TkwIntToStr

procedure TkwIntToStr.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DD0CDD00178_var*
//#UC END# *4DAEEDE10285_4DD0CDD00178_var*
begin
//#UC START# *4DAEEDE10285_4DD0CDD00178_impl*
 aCtx.rEngine.PushString(IntToStr(aCtx.rEngine.PopInt));
//#UC END# *4DAEEDE10285_4DD0CDD00178_impl*
end;//TkwIntToStr.DoDoIt

class function TkwIntToStr.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'IntToStr';
end;//TkwIntToStr.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwSysUtilsWord.imp.pas}
{$IfEnd} //not NoScripts

end.