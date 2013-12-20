unit kwStyleTableChanging;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwStyleTableChanging.pas"
// �����: 08.09.2011 18:07
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::CommonWords::StyleTable_Changing
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
 TkwStyleTableChanging = class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwStyleTableChanging
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  Classes
  {$If not defined(DesignTimeLibrary)}
  ,
  evStyleTableSpy
  {$IfEnd} //not DesignTimeLibrary
  ,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwStyleTableChanging;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwStyleTableChanging

procedure TkwStyleTableChanging.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4E68CC1B01C9_var*
//#UC END# *4DAEEDE10285_4E68CC1B01C9_var*
begin
//#UC START# *4DAEEDE10285_4E68CC1B01C9_impl*
 EvNotifyStyleTableChanging;
//#UC END# *4DAEEDE10285_4E68CC1B01C9_impl*
end;//TkwStyleTableChanging.DoDoIt

class function TkwStyleTableChanging.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'StyleTable:Changing';
end;//TkwStyleTableChanging.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.