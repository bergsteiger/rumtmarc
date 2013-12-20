unit kwTrue;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwTrue.pas"
// �����: 21.04.2011 15:24
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Basics::True
//
// ����������������� ����� true
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
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 TkwTrue = class(_tfwAutoregisteringWord_)
  {* ����������������� ����� true }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwTrue
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwTrue;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwTrue

procedure TkwTrue.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB013F0010B_var*
//#UC END# *4DAEEDE10285_4DB013F0010B_var*
begin
//#UC START# *4DAEEDE10285_4DB013F0010B_impl*
 aCtx.rEngine.PushBool(true);
//#UC END# *4DAEEDE10285_4DB013F0010B_impl*
end;//TkwTrue.DoDoIt

class function TkwTrue.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'true';
end;//TkwTrue.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.