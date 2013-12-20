unit kwFilterAutolinkFilter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwFilterAutolinkFilter.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::FiltersAndGenerators::filter_AutolinkFilter
//
// ������ �� ����� ������ TddAutolinkFilter (� ���� Ik2TagGenerator).
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
 TkwFilterAutolinkFilter = {final} class(_tfwAutoregisteringWord_)
  {* ������ �� ����� ������ TddAutolinkFilter (� ���� Ik2TagGenerator). }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwFilterAutolinkFilter
{$IfEnd} //Archi AND not NoScripts

implementation

{$If defined(Archi) AND not defined(NoScripts)}
uses
  k2Prim,
  ddAutoLinkFilter,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //Archi AND not NoScripts

{$If defined(Archi) AND not defined(NoScripts)}

type _Instance_R_ = TkwFilterAutolinkFilter;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwFilterAutolinkFilter

procedure TkwFilterAutolinkFilter.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_505AE6880096_var*
var
 l_Filt: Ik2TagGenerator;
//#UC END# *4DAEEDE10285_505AE6880096_var*
begin
//#UC START# *4DAEEDE10285_505AE6880096_impl*
 l_Filt := GetAutolinkFilter;
 aCtx.rEngine.PushIntf(l_Filt);
//#UC END# *4DAEEDE10285_505AE6880096_impl*
end;//TkwFilterAutolinkFilter.DoDoIt

class function TkwFilterAutolinkFilter.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'filter:AutolinkFilter';
end;//TkwFilterAutolinkFilter.GetWordNameForRegister

{$IfEnd} //Archi AND not NoScripts

initialization
{$If defined(Archi) AND not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //Archi AND not NoScripts

end.