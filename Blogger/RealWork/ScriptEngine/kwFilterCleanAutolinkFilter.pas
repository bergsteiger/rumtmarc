unit kwFilterCleanAutolinkFilter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwFilterCleanAutolinkFilter.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::FiltersAndGenerators::filter_CleanAutolinkFilter
//
// ��������� TddAutolinkFilter �������� ���� �� �� ����������, �� ���� ����� �������� Generator
// ����� �������������. � ����� ������� ���������� � ����� ������ ������ ������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If defined(Archi) AND not defined(NoScripts)}
uses
  tfwScriptingInterfaces
  ;
{$IfEnd} //Archi AND not NoScripts

{$If defined(Archi) AND not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 TkwFilterCleanAutolinkFilter = {final} class(_tfwAutoregisteringWord_)
  {* ��������� TddAutolinkFilter �������� ���� �� �� ����������, �� ���� ����� �������� Generator ����� �������������. � ����� ������� ���������� � ����� ������ ������ ������. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwFilterCleanAutolinkFilter
{$IfEnd} //Archi AND not NoScripts

implementation

{$If defined(Archi) AND not defined(NoScripts)}
uses
  ddAutoLinkFilter,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //Archi AND not NoScripts

{$If defined(Archi) AND not defined(NoScripts)}

type _Instance_R_ = TkwFilterCleanAutolinkFilter;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwFilterCleanAutolinkFilter

procedure TkwFilterCleanAutolinkFilter.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_505C0AD5032A_var*
//#UC END# *4DAEEDE10285_505C0AD5032A_var*
begin
//#UC START# *4DAEEDE10285_505C0AD5032A_impl*
 CleanAutolinkFilter;
//#UC END# *4DAEEDE10285_505C0AD5032A_impl*
end;//TkwFilterCleanAutolinkFilter.DoDoIt

class function TkwFilterCleanAutolinkFilter.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'filter:CleanAutolinkFilter';
end;//TkwFilterCleanAutolinkFilter.GetWordNameForRegister

{$IfEnd} //Archi AND not NoScripts

initialization
{$If defined(Archi) AND not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //Archi AND not NoScripts

end.