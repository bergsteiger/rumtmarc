unit kwOVER2;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwOVER2.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StandartWords::TkwOVER2
//
// �������� ����-����� x1 x2 �� ������� �����. ( x1 x2 x3 x4 -- x1 x2 x3 x4 x1 x2 )
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
 TkwOVER2 = class(_tfwAutoregisteringWord_)
  {* �������� ����-����� x1 x2 �� ������� �����. ( x1 x2 x3 x4 -- x1 x2 x3 x4 x1 x2 ) }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwOVER2
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwOVER2;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwOVER2

procedure TkwOVER2.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DEF607B01F1_var*
//#UC END# *4DAEEDE10285_4DEF607B01F1_var*
begin
//#UC START# *4DAEEDE10285_4DEF607B01F1_impl*
 aCtx.rEngine.Over2;
//#UC END# *4DAEEDE10285_4DEF607B01F1_impl*
end;//TkwOVER2.DoDoIt

class function TkwOVER2.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DEF607B01F1_var*
//#UC END# *4DB0614603C8_4DEF607B01F1_var*
begin
//#UC START# *4DB0614603C8_4DEF607B01F1_impl*
 Result := '2OVER';
//#UC END# *4DB0614603C8_4DEF607B01F1_impl*
end;//TkwOVER2.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.