unit kwStyleTableChanged;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwStyleTableChanged.pas"
// �����: 08.09.2011 18:08
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::CommonWords::StyleTable_Changed
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
 TkwStyleTableChanged = class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwStyleTableChanged
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

type _Instance_R_ = TkwStyleTableChanged;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwStyleTableChanged

procedure TkwStyleTableChanged.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4E68CC460163_var*
//#UC END# *4DAEEDE10285_4E68CC460163_var*
begin
//#UC START# *4DAEEDE10285_4E68CC460163_impl*
 EvNotifyStyleTableChanged;
//#UC END# *4DAEEDE10285_4E68CC460163_impl*
end;//TkwStyleTableChanged.DoDoIt

class function TkwStyleTableChanged.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'StyleTable:Changed';
end;//TkwStyleTableChanged.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.