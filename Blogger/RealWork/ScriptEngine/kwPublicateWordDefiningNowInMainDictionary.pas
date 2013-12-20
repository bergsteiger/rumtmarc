unit kwPublicateWordDefiningNowInMainDictionary;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPublicateWordDefiningNowInMainDictionary.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Compilation::PublicateWordDefiningNowInMainDictionary
//
// ������������ ����� ������������ ������ � ������� ������� (��. [EXPORTED])
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
 TkwPublicateWordDefiningNowInMainDictionary = {final} class(_tfwAutoregisteringWord_)
  {* ������������ ����� ������������ ������ � ������� ������� (��. [EXPORTED]) }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
   function IsImmediate: Boolean; override;
 end;//TkwPublicateWordDefiningNowInMainDictionary
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPublicateWordDefiningNowInMainDictionary;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwPublicateWordDefiningNowInMainDictionary

procedure TkwPublicateWordDefiningNowInMainDictionary.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F49715F0375_var*
//#UC END# *4DAEEDE10285_4F49715F0375_var*
begin
//#UC START# *4DAEEDE10285_4F49715F0375_impl*
 Assert(false, '�� �����������');
//#UC END# *4DAEEDE10285_4F49715F0375_impl*
end;//TkwPublicateWordDefiningNowInMainDictionary.DoDoIt

class function TkwPublicateWordDefiningNowInMainDictionary.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := '[EXPORTED]';
end;//TkwPublicateWordDefiningNowInMainDictionary.GetWordNameForRegister

function TkwPublicateWordDefiningNowInMainDictionary.IsImmediate: Boolean;
//#UC START# *4DB6D7F70155_4F49715F0375_var*
//#UC END# *4DB6D7F70155_4F49715F0375_var*
begin
//#UC START# *4DB6D7F70155_4F49715F0375_impl*
 Result := true;
//#UC END# *4DB6D7F70155_4F49715F0375_impl*
end;//TkwPublicateWordDefiningNowInMainDictionary.IsImmediate

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.